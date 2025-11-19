Swift::String __swiftcall REMCDReminder.recordType()()
{
  v0 = 0x7265646E696D6552;
  v1 = 0xE800000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDReminder.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = [v2 parentReminder];
  if (v4 && (v5 = v4, v6 = [v4 list], v5, v6))
  {

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = String._bridgeToObjectiveC()();
  v24.receiver = v2;
  v24.super_class = REMCDReminder;
  objc_msgSendSuper2(&v24, "mergeDataFromRecord:accountID:", from.super.isa, v8);

  v9 = [(objc_class *)from.super.isa recordID];
  v10 = [v9 recordName];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = [v2 ckIdentifierFromRecordName:v10];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v2 setCkIdentifier:v11];

  v12 = [v2 parentReminder];
  if (v12 && (v13 = v12, v14 = [v12 list], v13, v14))
  {

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v23 = v7 & v15;
  v22 = 0;
  v16 = [v2 mergeDataRevertedLocallyMarkedForDeletion];
  v17 = [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v18 = v2;
  v19 = from.super.isa;
  sub_1004E5918(v19, v16, v17, v18, v18, v19, &v22, &v23);

  if (v23 == 1)
  {
    v20 = [v18 list];
    if (v20)
    {
      v21 = v20;
      if (([v20 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        sub_100357E44();
      }
    }
  }

  if ([v18 isPlaceholder])
  {
    sub_100396C30();
  }
}

void sub_100397ED0(unsigned __int8 *a1, void *a2, void *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), _BYTE *a5)
{
  v268 = a5;
  v273 = a4;
  v279 = a3;
  v280 = a2;
  v6 = type metadata accessor for UUID();
  v277 = *(v6 - 8);
  v278 = v6;
  v7 = *(v277 + 64);
  __chkstk_darwin(v6);
  v263 = &v253 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v9 = *(*(v274 - 8) + 64);
  __chkstk_darwin(v274);
  v267 = &v253 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v270 = &v253 - v12;
  __chkstk_darwin(v13);
  v265 = (&v253 - v14);
  v15 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v254 = &v253 - v17;
  v18 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v259 = &v253 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v256 = &v253 - v22;
  __chkstk_darwin(v23);
  v272 = &v253 - v24;
  __chkstk_darwin(v25);
  v255 = &v253 - v26;
  __chkstk_darwin(v27);
  v276 = &v253 - v28;
  __chkstk_darwin(v29);
  v258 = &v253 - v30;
  __chkstk_darwin(v31);
  v262 = &v253 - v32;
  __chkstk_darwin(v33);
  v271 = &v253 - v34;
  __chkstk_darwin(v35);
  v266 = &v253 - v36;
  __chkstk_darwin(v37);
  v269 = &v253 - v38;
  __chkstk_darwin(v39);
  v257 = &v253 - v40;
  __chkstk_darwin(v41);
  v261 = &v253 - v42;
  __chkstk_darwin(v43);
  v264 = &v253 - v44;
  __chkstk_darwin(v45);
  v260 = &v253 - v46;
  __chkstk_darwin(v47);
  v275 = &v253 - v48;
  __chkstk_darwin(v49);
  v253 = &v253 - v50;
  v51 = type metadata accessor for REMFeatureFlags();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  __chkstk_darwin(v51);
  v55 = &v253 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v57 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56 - 8);
  v59 = &v253 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v253 - v61;
  __chkstk_darwin(v63);
  v65 = &v253 - v64;
  __chkstk_darwin(v66);
  v68 = &v253 - v67;
  __chkstk_darwin(v69);
  v71 = &v253 - v70;
  __chkstk_darwin(v72);
  v74 = &v253 - v73;
  v75 = *a1;
  sub_10039611C(v75);
  switch(v75)
  {
    case 2:
      v109 = [v279 encryptedValues];
      swift_getObjectType();
      v110 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();

      swift_unknownObjectRelease();
      v111 = *(v110 - 8);
      isa = 0;
      if ((*(v111 + 48))(v62, 1, v110) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v111 + 8))(v62, v110);
      }

      [v280 setAlternativeDisplayDateDate_forCalendar:isa];
      goto LABEL_64;
    case 5:
      v136 = [v279 encryptedValues];
      v137 = String._bridgeToObjectiveC()();

      v138 = [v136 objectForKeyedSubscript:v137];
      swift_unknownObjectRelease();

      v139 = v280;
      if (!v138 || (v281 = v138, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) == 0))
      {
        [v139 setBatchCreationID:0];
        return;
      }

      v140 = v253;
      UUID.init(uuidString:)();

      v142 = v277;
      v141 = v278;
      if ((*(v277 + 48))(v140, 1, v278) == 1)
      {
        v97 = 0;
      }

      else
      {
        v97 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v142 + 8))(v140, v141);
      }

      [v139 setBatchCreationID:v97];
      goto LABEL_158;
    case 6:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();

      [v280 setCompleted:v282 & 1];
      return;
    case 7:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v107 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();

      v108 = *(v107 - 8);
      isa = 0;
      if ((*(v108 + 48))(v74, 1, v107) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v108 + 8))(v74, v107);
      }

      [v280 setCompletionDate:isa];
      goto LABEL_64;
    case 8:
      v119 = [v279 encryptedValues];
      v120 = String._bridgeToObjectiveC()();

      v121 = [v119 objectForKeyedSubscript:v120];
      swift_unknownObjectRelease();

      v122 = v280;
      if (v121 && (v281 = v121, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        v97 = sub_10013E5E4(v282, *(&v282 + 1));

        if (v97)
        {
          v123 = [v97 archivedData];

          v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v126 = v125;

          v97 = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v124, v126);
        }

        [v122 setContactHandles:v97];
LABEL_158:
      }

      else
      {
        [v122 setContactHandles:0];
      }

      return;
    case 9:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v98 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();

      v99 = *(v98 - 8);
      isa = 0;
      if ((*(v99 + 48))(v71, 1, v98) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v99 + 8))(v71, v98);
      }

      [v280 setCreationDate:isa];
      goto LABEL_64;
    case 10:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v112 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();

      v113 = *(v112 - 8);
      v114 = 0;
      if ((*(v113 + 48))(v68, 1, v112) != 1)
      {
        v114 = Date._bridgeToObjectiveC()().super.isa;
        (*(v113 + 8))(v68, v112);
      }

      v115 = v280;
      [v280 setDueDate:v114];

      CKRecordKeyValueSetting.subscript.getter();
      [v115 setAllDay:v282 & 1];
      CKRecordKeyValueSetting.subscript.getter();
      if (*(&v282 + 1))
      {
        v97 = String._bridgeToObjectiveC()();
      }

      else
      {
        v97 = 0;
      }

      [v115 setTimeZone:v97];
      goto LABEL_158;
    case 11:
      v95 = [v279 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();

      swift_unknownObjectRelease();
      v96 = *(&v282 + 1);
      if (*(&v282 + 1) >> 60 == 15)
      {
        v97 = 0;
      }

      else
      {
        v155 = v282;
        v97 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v155, v96);
      }

      [v280 setDueDateDeltaAlertsData:v97];
      goto LABEL_158;
    case 12:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();

      if (BYTE8(v282))
      {
        v116 = 0;
      }

      else
      {
        v116 = v282;
      }

      [v280 setFlagged:v116];
      return;
    case 14:
      v127 = [v279 encryptedValues];
      v128 = String._bridgeToObjectiveC()();

      v129 = [v127 objectForKeyedSubscript:v128];
      swift_unknownObjectRelease();

      v130 = v280;
      if (v129 && (v281 = v129, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        v131 = v254;
        URL.init(string:)();

        v132 = type metadata accessor for URL();
        v133 = *(v132 - 8);
        isa = 0;
        if ((*(v133 + 48))(v131, 1, v132) != 1)
        {
          URL._bridgeToObjectiveC()(v134);
          isa = v135;
          (*(v133 + 8))(v131, v132);
        }

        [v130 setIcsUrl:isa];
LABEL_64:
      }

      else
      {
        [v130 setIcsUrl:0];
      }

      return;
    case 15:
      v151 = [v279 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();

      swift_unknownObjectRelease();
      v152 = *(&v282 + 1);
      if (*(&v282 + 1) >> 60 == 15)
      {
        v97 = 0;
      }

      else
      {
        v157 = v282;
        v97 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v157, v152);
      }

      [v280 setImportedICSData:v97];
      goto LABEL_158;
    case 16:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v117 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();

      v118 = *(v117 - 8);
      isa = 0;
      if ((*(v118 + 48))(v65, 1, v117) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v118 + 8))(v65, v117);
      }

      [v280 setLastModifiedDate:isa];
      goto LABEL_64;
    case 17:
    case 20:

      if (*v273)
      {
        return;
      }

      *v273 = 1;
      v76 = v280;
      v77 = [v280 list];
      if (v77)
      {
        v78 = v77;
        v79 = [v77 identifier];

        v80 = v277;
        v81 = v278;
        v82 = v264;
        if (v79)
        {
          v83 = v260;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v84 = *(v80 + 56);
          v85 = v83;
          v86 = 0;
        }

        else
        {
          v84 = *(v277 + 56);
          v83 = v260;
          v85 = v260;
          v86 = 1;
        }

        v273 = v84;
        v84(v85, v86, 1, v81);
        sub_100031B58(v83, v275, &unk_100939D90, "8\n\r");
      }

      else
      {
        v80 = v277;
        v81 = v278;
        v273 = *(v277 + 56);
        v273(v275, 1, 1, v278);
        v82 = v264;
      }

      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v172 = swift_dynamicCastObjCClass();
        if (!v172)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v172 = 0;
      }

      v173 = sub_1004D6EF0(v172, v76);

      [v76 setList:v173];
      v174 = [v76 list];
      if (v174)
      {
        v175 = v174;
        v176 = [v174 identifier];

        v177 = v265;
        if (v176)
        {
          v178 = v261;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v179 = 0;
        }

        else
        {
          v179 = 1;
          v178 = v261;
        }

        v273(v178, v179, 1, v81);
        sub_100031B58(v178, v82, &unk_100939D90, "8\n\r");
      }

      else
      {
        v273(v82, 1, 1, v81);
        v177 = v265;
      }

      v180 = *(v274 + 48);
      sub_100010364(v82, v177, &unk_100939D90, "8\n\r");
      sub_100010364(v275, v177 + v180, &unk_100939D90, "8\n\r");
      v181 = *(v80 + 48);
      v182 = v181(v177, 1, v81);
      v265 = v181;
      if (v182 == 1)
      {
        sub_1000050A4(v82, &unk_100939D90, "8\n\r");
        if (v181(v177 + v180, 1, v81) == 1)
        {
          sub_1000050A4(v177, &unk_100939D90, "8\n\r");
          LODWORD(v264) = 1;
          goto LABEL_124;
        }

        goto LABEL_122;
      }

      v183 = v257;
      sub_100010364(v177, v257, &unk_100939D90, "8\n\r");
      if (v181(v177 + v180, 1, v81) == 1)
      {
        sub_1000050A4(v82, &unk_100939D90, "8\n\r");
        (*(v80 + 8))(v183, v81);
LABEL_122:
        sub_1000050A4(v177, &unk_10093A3D0, &qword_100795770);
        LODWORD(v264) = 0;
        goto LABEL_124;
      }

      v184 = v263;
      (*(v80 + 32))(v263, v177 + v180, v81);
      sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID);
      LODWORD(v264) = dispatch thunk of static Equatable.== infix(_:_:)();
      v185 = *(v80 + 8);
      v185(v184, v81);
      sub_1000050A4(v82, &unk_100939D90, "8\n\r");
      v185(v183, v81);
      sub_1000050A4(v177, &unk_100939D90, "8\n\r");
LABEL_124:
      v186 = v269;
      v187 = v270;
      v188 = [v76 parentReminder];
      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v189 = swift_dynamicCastObjCClass();
        if (!v189)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v189 = 0;
      }

      v190 = sub_1001287DC(v189);

      if (v190)
      {
        objc_opt_self();
        v191 = swift_dynamicCastObjCClass();
        v192 = v266;
        if (!v191)
        {
        }
      }

      else
      {
        v191 = 0;
        v192 = v266;
      }

      [v76 setParentReminder:v191];

      v193 = [v76 parentReminder];
      if (v193)
      {
        v194 = v193;
        v195 = [v193 identifier];

        if (v195)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v196 = 0;
        }

        else
        {
          v196 = 1;
        }

        v197 = v271;
        v273(v192, v196, 1, v278);
        sub_100031B58(v192, v186, &unk_100939D90, "8\n\r");
      }

      else
      {
        v273(v186, 1, 1, v278);
        v197 = v271;
      }

      v270 = v188;
      if (v188)
      {
        v198 = [v188 identifier];
        if (v198)
        {
          v199 = v262;
          v200 = v198;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v201 = 0;
        }

        else
        {
          v201 = 1;
          v199 = v262;
        }

        v202 = (v80 + 48);
        v203 = v278;
        v273(v199, v201, 1, v278);
        sub_100031B58(v199, v197, &unk_100939D90, "8\n\r");
      }

      else
      {
        v202 = (v80 + 48);
        v203 = v278;
        v273(v197, 1, 1, v278);
      }

      v204 = *(v274 + 48);
      sub_100010364(v186, v187, &unk_100939D90, "8\n\r");
      sub_100010364(v197, &v187[v204], &unk_100939D90, "8\n\r");
      v205 = v265;
      v206 = v265(v187, 1, v203);
      v261 = v202;
      if (v206 == 1)
      {
        sub_1000050A4(v197, &unk_100939D90, "8\n\r");
        sub_1000050A4(v186, &unk_100939D90, "8\n\r");
        v207 = v205(&v187[v204], 1, v203);
        v208 = v264;
        if (v207 == 1)
        {
          sub_1000050A4(v187, &unk_100939D90, "8\n\r");
          v209 = 0;
          goto LABEL_151;
        }

        goto LABEL_149;
      }

      v210 = v258;
      sub_100010364(v187, v258, &unk_100939D90, "8\n\r");
      if (v205(&v187[v204], 1, v203) == 1)
      {
        sub_1000050A4(v271, &unk_100939D90, "8\n\r");
        sub_1000050A4(v186, &unk_100939D90, "8\n\r");
        (*(v277 + 8))(v210, v203);
        v208 = v264;
LABEL_149:
        sub_1000050A4(v187, &unk_10093A3D0, &qword_100795770);
        v209 = 1;
        goto LABEL_151;
      }

      v211 = v187;
      v212 = v277;
      v213 = v211 + v204;
      v214 = v263;
      (*(v277 + 32))(v263, v213, v203);
      sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID);
      v215 = dispatch thunk of static Equatable.== infix(_:_:)();
      v216 = *(v212 + 8);
      v216(v214, v203);
      sub_1000050A4(v271, &unk_100939D90, "8\n\r");
      sub_1000050A4(v186, &unk_100939D90, "8\n\r");
      v216(v210, v203);
      v76 = v280;
      sub_1000050A4(v211, &unk_100939D90, "8\n\r");
      v209 = v215 ^ 1;
      v208 = v264;
LABEL_151:
      v217 = [v76 parentReminder];
      if (v217 && (v218 = v217, v219 = [v217 list], v218, v219))
      {
        v220 = [v219 identifier];

        if (v220)
        {
          v221 = v255;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v222 = 0;
        }

        else
        {
          v222 = 1;
          v221 = v255;
        }

        v273(v221, v222, 1, v278);
        sub_100031B58(v221, v276, &unk_100939D90, "8\n\r");
      }

      else
      {
        v273(v276, 1, 1, v278);
      }

      if (v208)
      {
        goto LABEL_169;
      }

      v223 = [v76 parentReminder];
      if (!v223)
      {
        goto LABEL_169;
      }

      v224 = v223;
      v225 = v224;
      if ([v224 ckNeedsInitialFetchFromCloud])
      {
        goto LABEL_167;
      }

      v226 = [v224 markedForDeletion];

      if ((v226 & 1) == 0)
      {
        v225 = [v76 list];
        [v224 setList:v225];
LABEL_167:
      }

LABEL_169:
      v227 = [v76 parentReminder];
      LODWORD(v271) = v209;
      if (v227 && (v228 = v227, v229 = [v227 list], v228, v229))
      {
        v230 = [v229 identifier];

        v231 = v278;
        v232 = v268;
        if (v230)
        {
          v233 = v256;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v234 = 0;
          v235 = v272;
        }

        else
        {
          v234 = 1;
          v235 = v272;
          v233 = v256;
        }

        v273(v233, v234, 1, v231);
        sub_100031B58(v233, v235, &unk_100939D90, "8\n\r");
      }

      else
      {
        v235 = v272;
        v231 = v278;
        v273(v272, 1, 1, v278);
        v232 = v268;
      }

      v236 = v208 ^ 1;
      v237 = *(v274 + 48);
      v238 = v235;
      v239 = v235;
      v240 = v267;
      sub_100010364(v238, v267, &unk_100939D90, "8\n\r");
      sub_100010364(v276, v240 + v237, &unk_100939D90, "8\n\r");
      v241 = v265;
      if (v265(v240, 1, v231) == 1)
      {
        sub_1000050A4(v239, &unk_100939D90, "8\n\r");
        v242 = v241(v240 + v237, 1, v231);
        v243 = v271;
        if (v242 == 1)
        {
          sub_1000050A4(v240, &unk_100939D90, "8\n\r");
          v244 = 0;
          goto LABEL_183;
        }

        goto LABEL_181;
      }

      v245 = v259;
      sub_100010364(v240, v259, &unk_100939D90, "8\n\r");
      if (v241(v240 + v237, 1, v231) == 1)
      {
        sub_1000050A4(v272, &unk_100939D90, "8\n\r");
        (*(v277 + 8))(v245, v231);
        v243 = v271;
LABEL_181:
        sub_1000050A4(v240, &unk_10093A3D0, &qword_100795770);
        v244 = 1;
        goto LABEL_183;
      }

      v246 = v277;
      v247 = v240 + v237;
      v248 = v263;
      (*(v277 + 32))(v263, v247, v231);
      sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID);
      v249 = v240;
      v250 = dispatch thunk of static Equatable.== infix(_:_:)();
      v251 = *(v246 + 8);
      v251(v248, v231);
      sub_1000050A4(v272, &unk_100939D90, "8\n\r");
      v251(v245, v231);
      sub_1000050A4(v249, &unk_100939D90, "8\n\r");
      v244 = v250 ^ 1;
      v243 = v271;
LABEL_183:
      v252 = v270;
      sub_10039A638(v279, v270, v236 & 1, v244 & 1);

      sub_1000050A4(v276, &unk_100939D90, "8\n\r");
      sub_1000050A4(v275, &unk_100939D90, "8\n\r");
      *v232 = (*v232 | v236 | v243) & 1;
      return;
    case 18:
      v143 = v280;
      sub_1004DD52C(v279, 0xD000000000000012, 1, &v282);

      v89 = *(&v282 + 1);
      v88 = v282;
      v144 = [v143 notesDocument];
      if (v144)
      {
        v145 = v144;
        v146 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v148 = v147;
      }

      else
      {
        v146 = 0;
        v148 = 0xF000000000000000;
      }

      v167 = sub_1004EB6C8(&v282, v146, v148, v88, v89, 0x636F447365746F6ELL, 0xED0000746E656D75, v143);
      v160 = v167;
      v161 = v168;
      v162 = v282;
      if (v282)
      {
        v169 = v282;

        sub_100031A14(v146, v148);
      }

      else
      {
        v162 = sub_1003A44B8(v167, v168, 0x636F447365746F6ELL, 0xED0000746E656D75);

        sub_100031A14(v146, v148);
      }

      if (v161 >> 60 == 15)
      {
        v170 = 0;
      }

      else
      {
        sub_100029344(v160, v161);
        v170 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v160, v161);
      }

      [v280 setNotesDocument:v170];

      if (v162)
      {
        v171 = [v162 attributedString];
        v166 = [v171 string];

        if (!v166)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v166 = String._bridgeToObjectiveC()();
        }
      }

      else
      {
        v166 = 0;
      }

      [v280 setNotes:v166];
      goto LABEL_102;
    case 21:
      v102 = v52;
      v103 = *(v52 + 104);
      v103(v55, enum case for REMFeatureFlags.urgentAlert(_:), v51);
      v104 = REMFeatureFlags.isEnabled.getter();
      v105 = *(v102 + 8);
      v105(v55, v51);
      if ((v104 & 1) == 0)
      {
        goto LABEL_4;
      }

      v103(v55, enum case for REMFeatureFlags.urgentAlertCloudKit(_:), v51);
      v106 = REMFeatureFlags.isEnabled.getter();
      v105(v55, v51);
      if ((v106 & 1) == 0)
      {
        goto LABEL_4;
      }

      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();

      [v280 setPrefersUrgentPresentationStyleForDateAlarms:v282 & 1];
      return;
    case 22:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();

      if (BYTE8(v282))
      {
        v101 = 0;
      }

      else
      {
        v101 = v282;
      }

      [v280 setPriority:v101];
      return;
    case 24:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v153 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();

      v154 = *(v153 - 8);
      isa = 0;
      if ((*(v154 + 48))(v59, 1, v153) != 1)
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v154 + 8))(v59, v153);
      }

      [v280 setStartDate:isa];
      goto LABEL_64;
    case 26:
      v87 = v280;
      sub_1004DD52C(v279, 0xD000000000000012, 1, &v282);

      v89 = *(&v282 + 1);
      v88 = v282;
      v90 = [v87 titleDocument];
      if (v90)
      {
        v91 = v90;
        v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;
      }

      else
      {
        v92 = 0;
        v94 = 0xF000000000000000;
      }

      v158 = sub_1004EB6C8(&v282, v92, v94, v88, v89, 0x636F44656C746974, 0xED0000746E656D75, v87);
      v160 = v158;
      v161 = v159;
      v162 = v282;
      if (v282)
      {
        v163 = v282;

        sub_100031A14(v92, v94);
      }

      else
      {
        v162 = sub_1003A44B8(v158, v159, 0x636F44656C746974, 0xED0000746E656D75);

        sub_100031A14(v92, v94);
      }

      if (v161 >> 60 == 15)
      {
        v164 = 0;
      }

      else
      {
        sub_100029344(v160, v161);
        v164 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v160, v161);
      }

      [v280 setTitleDocument:v164];

      if (v162)
      {
        v165 = [v162 attributedString];
        v166 = [v165 string];

        if (!v166)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v166 = String._bridgeToObjectiveC()();
        }
      }

      else
      {
        v166 = 0;
      }

      [v280 setTitle:v166];
LABEL_102:

      sub_100031A14(v160, v161);

      sub_100031A14(v88, v89);
      return;
    case 28:
      v149 = [v279 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();

      swift_unknownObjectRelease();
      v150 = *(&v282 + 1);
      if (*(&v282 + 1) >> 60 == 15)
      {
        v97 = 0;
      }

      else
      {
        v156 = v282;
        v97 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v156, v150);
      }

      [v280 setUserActivity:v97];
      goto LABEL_158;
    default:

LABEL_4:

      return;
  }
}

void sub_10039A638(void *a1, void *a2, int a3, int a4)
{
  LODWORD(v423) = a4;
  LODWORD(v425) = a3;
  v430 = a2;
  v420 = a1;
  v419 = type metadata accessor for URL();
  v422 = *(v419 - 8);
  v5 = *(v422 + 64);
  __chkstk_darwin(v419);
  v415 = &v401 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v416 = &v401 - v8;
  __chkstk_darwin(v9);
  v410 = &v401 - v10;
  v417 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  v11 = *(*(v417 - 8) + 64);
  __chkstk_darwin(v417);
  v405 = &v401 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v412 = &v401 - v14;
  v15 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v409 = &v401 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v413 = &v401 - v19;
  __chkstk_darwin(v20);
  v404 = &v401 - v21;
  __chkstk_darwin(v22);
  v406 = &v401 - v23;
  __chkstk_darwin(v24);
  v407 = &v401 - v25;
  __chkstk_darwin(v26);
  v408 = &v401 - v27;
  __chkstk_darwin(v28);
  v30 = &v401 - v29;
  __chkstk_darwin(v31);
  v418 = (&v401 - v32);
  v33 = type metadata accessor for UUID();
  v431 = *(v33 - 1);
  v34 = v431[8];
  __chkstk_darwin(v33);
  v414 = (&v401 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v427 = &v401 - v38;
  v39 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = &v401 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v421 = &v401 - v44;
  __chkstk_darwin(v45);
  v426 = &v401 - v46;
  __chkstk_darwin(v47);
  v428 = &v401 - v48;
  __chkstk_darwin(v49);
  v51 = &v401 - v50;
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v53 = sub_100006654(v52, qword_1009441D0);
  v54 = v4;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  v433 = v54;

  v57 = os_log_type_enabled(v55, v56);
  v58 = &selRef_hack_willSaveHandled;
  v432 = v53;
  v429 = v33;
  v411 = v30;
  v424 = v36;
  if (v57)
  {
    v402 = v51;
    v403 = v42;
    v59 = swift_slowAlloc();
    v401 = swift_slowAlloc();
    v438 = v401;
    *v59 = 136315650;
    v60 = v433;
    v434 = [v433 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v61 = String.init<A>(describing:)();
    v63 = sub_10000668C(v61, v62, &v438);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = [v60 parentReminder];
    if (v64)
    {
      v65 = v64;
      v66 = [v64 remObjectID];
    }

    else
    {
      v66 = 0;
    }

    v58 = &selRef_hack_willSaveHandled;
    v434 = v66;
    v68 = String.init<A>(describing:)();
    v70 = sub_10000668C(v68, v69, &v438);

    *(v59 + 14) = v70;
    *(v59 + 22) = 2080;
    v71 = [v433 list];
    v42 = v403;
    if (v71)
    {
      v72 = v71;
      v73 = [v71 remObjectID];
    }

    else
    {
      v73 = 0;
    }

    v67 = v426;
    v434 = v73;
    v74 = String.init<A>(describing:)();
    v76 = sub_10000668C(v74, v75, &v438);

    *(v59 + 24) = v76;
    _os_log_impl(&_mh_execute_header, v55, v56, "validateAndFixupReminderTree BEGIN {objectID: %s, parentID: %s, listID: %s}", v59, 0x20u);
    swift_arrayDestroy();

    v33 = v429;
    v51 = v402;
  }

  else
  {

    v67 = v426;
  }

  v77 = [v433 parentReminder];
  v78 = v428;
  if (!v77)
  {
    v77 = [v433 v58[291]];
    if (!v77)
    {
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        v108 = "validateAndFixupReminderTree: Reminder is detached from lists. Nothing needs to be done.";
        goto LABEL_50;
      }

      goto LABEL_51;
    }
  }

  v79 = [v433 v58[291]];
  if (!v79)
  {
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "validateAndFixupReminderTree: Reminder has parent but no list. Assuming self.list = parent.list.", v82, 2u);
    }

    v83 = v433;
    v84 = [v433 parentReminder];
    v85 = [v84 v58[291]];

    [v83 setList:v85];
    v79 = v85;
    v78 = v428;
    v33 = v429;
  }

  v86 = v67;
  v87 = v42;

  v88 = [v433 parentReminder];
  if (v88)
  {
    v89 = v88;
    v90 = [v88 identifier];

    v91 = v430;
    v92 = v427;
    if (v90)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v33 = v429;
    v94 = v431[7];
    v94(v78, v93, 1, v429);
    sub_100031B58(v78, v51, &unk_100939D90, "8\n\r");
    if (v91)
    {
      goto LABEL_25;
    }

LABEL_22:
    v95 = v431;
    v94(v86, 1, 1, v33);
    v96 = v87;
    goto LABEL_29;
  }

  v94 = v431[7];
  v94(v51, 1, 1, v33);
  v91 = v430;
  v92 = v427;
  if (!v430)
  {
    goto LABEL_22;
  }

LABEL_25:
  v97 = [v91 identifier];
  if (v97)
  {
    v98 = v421;
    v99 = v97;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = v429;
    v100 = 0;
  }

  else
  {
    v100 = 1;
    v98 = v421;
  }

  v96 = v87;
  v95 = v431;
  v94(v98, v100, 1, v33);
  sub_100031B58(v98, v86, &unk_100939D90, "8\n\r");
LABEL_29:
  v101 = *(v424 + 48);
  sub_100010364(v51, v92, &unk_100939D90, "8\n\r");
  sub_100010364(v86, &v92[v101], &unk_100939D90, "8\n\r");
  v102 = v95[6];
  if (v102(v92, 1, v33) == 1)
  {
    sub_1000050A4(v86, &unk_100939D90, "8\n\r");
    v92 = v427;
    sub_1000050A4(v51, &unk_100939D90, "8\n\r");
    if (v102(&v92[v101], 1, v33) == 1)
    {
      sub_1000050A4(v92, &unk_100939D90, "8\n\r");
      v103 = &selRef_hack_willSaveHandled;
      v104 = v425;
      if ((v425 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_36;
    }

LABEL_35:
    sub_1000050A4(v92, &unk_10093A3D0, &qword_100795770);
    v103 = &selRef_hack_willSaveHandled;
    v104 = v425;
    goto LABEL_36;
  }

  sub_100010364(v92, v96, &unk_100939D90, "8\n\r");
  if (v102(&v92[v101], 1, v33) == 1)
  {
    sub_1000050A4(v86, &unk_100939D90, "8\n\r");
    sub_1000050A4(v51, &unk_100939D90, "8\n\r");
    (v431[1])(v96, v33);
    goto LABEL_35;
  }

  v118 = v86;
  v119 = v51;
  v120 = v96;
  v121 = v431;
  v122 = &v92[v101];
  v123 = v414;
  (v431[4])(v414, v122, v33);
  sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID);
  v124 = v33;
  v125 = dispatch thunk of static Equatable.== infix(_:_:)();
  v126 = v121[1];
  v126(v123, v124);
  sub_1000050A4(v118, &unk_100939D90, "8\n\r");
  sub_1000050A4(v119, &unk_100939D90, "8\n\r");
  v126(v120, v124);
  sub_1000050A4(v92, &unk_100939D90, "8\n\r");
  v103 = &selRef_hack_willSaveHandled;
  v104 = v425;
  if ((v125 & 1) != 0 && (v425 & 1) == 0)
  {
LABEL_46:
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = "validateAndFixupReminderTree: Neither parent nor list is changed. Nothing needs to be done.";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

LABEL_36:
  if (sub_1003A54EC(v430, v104 & 1, v423 & 1))
  {
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = "validateAndFixupReminderTree: Current reminder tree looks good. Skipping the fixup.";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v105, v106, v108, v107, 2u);
    }

LABEL_51:

LABEL_52:
    sub_1003A63E4(v433);
    return;
  }

  v109 = [v433 v103[489]];
  v110 = [v109 v103[489]];

  if (!v110)
  {
    v110 = [v433 v103[489]];
  }

  v111 = [v110 v103[489]];
  v431 = v110;
  if (v111)
  {
    v112 = v419;

    if (v110)
    {
      v113 = v110;
      v114 = [v113 objectID];
      v115 = [v114 URIRepresentation];

      v116 = v418;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v117 = 0;
    }

    else
    {
      v117 = 1;
      v116 = v418;
    }

    v127 = v422;
    v128 = *(v422 + 56);
    v128(v116, v117, 1, v112);
    v129 = [v433 objectID];
    v130 = [v129 URIRepresentation];

    v131 = v411;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v128(v131, 0, 1, v112);
    v132 = *(v417 + 48);
    v133 = v412;
    sub_100010364(v116, v412, &unk_1009441F0, &qword_100795760);
    sub_100010364(v131, v133 + v132, &unk_1009441F0, &qword_100795760);
    v134 = *(v127 + 48);
    if (v134(v133, 1, v112) == 1)
    {
      sub_1000050A4(v131, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v116, &unk_1009441F0, &qword_100795760);
      v135 = v134(v133 + v132, 1, v112);
      v136 = v431;
      if (v135 == 1)
      {
        sub_1000050A4(v133, &unk_1009441F0, &qword_100795760);
        goto LABEL_64;
      }
    }

    else
    {
      v137 = v408;
      sub_100010364(v133, v408, &unk_1009441F0, &qword_100795760);
      if (v134(v133 + v132, 1, v112) != 1)
      {
        v144 = v422;
        v145 = v133 + v132;
        v146 = v410;
        (*(v422 + 32))(v410, v145, v112);
        sub_1003A99EC(&unk_100944080, &type metadata accessor for URL);
        v147 = dispatch thunk of static Equatable.== infix(_:_:)();
        v148 = *(v144 + 8);
        v148(v146, v112);
        sub_1000050A4(v131, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v418, &unk_1009441F0, &qword_100795760);
        v148(v137, v112);
        sub_1000050A4(v133, &unk_1009441F0, &qword_100795760);
        v136 = v431;
        if (v147)
        {
LABEL_64:
          v139 = Logger.logObject.getter();
          v149 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v139, v149))
          {
            v150 = swift_slowAlloc();
            *v150 = 0;
            _os_log_impl(&_mh_execute_header, v139, v149, "validateAndFixupReminderTree: Detected a loop in the new reminder tree. Multiple client may have raced. Going to fix the tree locally.", v150, 2u);
LABEL_68:

            goto LABEL_69;
          }

          goto LABEL_69;
        }

LABEL_60:
        v138 = v136;
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v438 = v142;
          *v141 = 136315138;
          if (v136)
          {
            v143 = [v138 remObjectID];
          }

          else
          {
            v143 = 0;
          }

          v434 = v143;
          sub_1000F5104(&unk_10093AF40, &unk_100795790);
          v151 = Optional.descriptionOrNil.getter();
          v153 = v152;

          v154 = sub_10000668C(v151, v153, &v438);

          *(v141 + 4) = v154;
          _os_log_impl(&_mh_execute_header, v139, v140, "validateAndFixupReminderTree: There seems to be a multi-layer subtask tree in the database because the new root had both parent and children. Totally unexpected because the save request should have been rejected. {rootID: %s}", v141, 0xCu);
          sub_10000607C(v142);

          goto LABEL_68;
        }

LABEL_69:

        goto LABEL_70;
      }

      sub_1000050A4(v131, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v418, &unk_1009441F0, &qword_100795760);
      (*(v422 + 8))(v137, v112);
      v136 = v431;
    }

    sub_1000050A4(v133, &unk_100944250, &qword_1007957B0);
    goto LABEL_60;
  }

LABEL_70:
  if (!v430)
  {
    v439 = _swiftEmptyDictionarySingleton;
    v159 = v431;
    if (!v431)
    {
      goto LABEL_87;
    }

    goto LABEL_84;
  }

  v155 = [v433 children];
  if (v155)
  {
    v156 = v155;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0);
    v157 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v158 = (v157 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v157 + 16);

    if (v158)
    {
      v160 = v433;
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v438 = v164;
        *v163 = 136315138;
        v434 = [v160 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v165 = String.init<A>(describing:)();
        v167 = sub_10000668C(v165, v166, &v438);

        *(v163 + 4) = v167;
        _os_log_impl(&_mh_execute_header, v161, v162, "validateAndFixupReminderTree: There seems to be a multi-layer subtask tree in the database because the current reminder had both parent and children. Totally unexpected because the save request should have been rejected. {objectID: %s}", v163, 0xCu);
        sub_10000607C(v164);
      }
    }
  }

  v439 = _swiftEmptyDictionarySingleton;
  v168 = v430;
  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    *v171 = 0;
    _os_log_impl(&_mh_execute_header, v169, v170, "validateAndFixupReminderTree: Reminder has old root.", v171, 2u);
  }

  sub_100395CB0(v168);
  v159 = v431;
  if (v431)
  {
LABEL_84:
    v172 = v159;
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&_mh_execute_header, v173, v174, "validateAndFixupReminderTree: Reminder has new root.", v175, 2u);
    }

    sub_100395CB0(v172);
  }

LABEL_87:
  sub_100395CB0(v433);
  v176 = Logger.logObject.getter();
  v177 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v438 = v179;
    *v178 = 136446210;
    swift_beginAccess();

    sub_1005303BC(v180);
    v181 = Array.description.getter();
    v183 = v182;

    v184 = sub_10000668C(v181, v183, &v438);

    *(v178 + 4) = v184;
    _os_log_impl(&_mh_execute_header, v176, v177, "validateAndFixupReminderTree {potentiallyConnectedReminders: %{public}s}", v178, 0xCu);
    sub_10000607C(v179);
  }

  v185 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  swift_beginAccess();
  v186 = v439;

  v188 = sub_1003A66A8(v187, v420);
  v430 = v186;

  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v437[0] = v192;
    *v191 = 136446210;
    v193 = Dictionary.description.getter();
    v195 = sub_10000668C(v193, v194, v437);

    *(v191 + 4) = v195;
    _os_log_impl(&_mh_execute_header, v189, v190, "validateAndFixupReminderTree {rootMap: %{public}s}", v191, 0xCu);
    sub_10000607C(v192);
  }

  v196 = v431;
  v197 = [v433 ckIdentifier];
  if (!v197)
  {
    goto LABEL_99;
  }

  v198 = v197;
  v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v201 = v200;

  v202 = sub_1003535B0(v199, v201, v188);
  if (!v203)
  {
LABEL_98:

LABEL_99:

    v219 = v433;
    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v437[0] = v223;
      *v222 = 136446210;
      v224 = [v219 ckIdentifier];
      if (v224)
      {
        v225 = v224;
        v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v228 = v227;
      }

      else
      {
        v226 = 7104878;
        v228 = 0xE300000000000000;
      }

      v229 = sub_10000668C(v226, v228, v437);

      *(v222 + 4) = v229;
      _os_log_impl(&_mh_execute_header, v220, v221, "validateAndFixupReminderTree: Can't resolve the root of the reminder tree. {ckIdentifier: %{public}s}", v222, 0xCu);
      sub_10000607C(v223);
    }

    else
    {
    }

    goto LABEL_52;
  }

  v204 = v202;
  v428 = v185;
  v205 = v203;
  v206 = v430;
  v425 = sub_100353594(v202, v203, v430);
  if (!v425)
  {

    goto LABEL_98;
  }

  v207 = sub_1003A96EC(v206, v188, v204, v205);

  v414 = v188;

  v426 = v205;

  v208 = Logger.logObject.getter();
  v209 = static os_log_type_t.default.getter();

  v210 = os_log_type_enabled(v208, v209);
  v421 = v201;
  v424 = v207;
  if (v210)
  {
    v211 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    v437[0] = v212;
    *v211 = 136446210;

    sub_1005303BC(v213);
    v214 = Array.description.getter();
    v216 = v215;

    v217 = sub_10000668C(v214, v216, v437);
    v218 = v416;

    *(v211 + 4) = v217;
    _os_log_impl(&_mh_execute_header, v208, v209, "validateAndFixupReminderTree: {allConnectedReminders: %{public}s}", v211, 0xCu);
    sub_10000607C(v212);

    v201 = v421;
  }

  else
  {

    v218 = v416;
  }

  if ((v199 != v204 || v426 != v201) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v231 = [v425 ckParentReminderIdentifier];
    if (v231)
    {

      goto LABEL_113;
    }

LABEL_117:
    v238 = v425;
    v232 = v424;
    goto LABEL_119;
  }

  sub_10039646C();
  if (!v230)
  {
    goto LABEL_117;
  }

LABEL_113:
  v232 = v424;
  v233 = Logger.logObject.getter();
  v234 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v233, v234))
  {
    v235 = swift_slowAlloc();
    *v235 = 0;
    _os_log_impl(&_mh_execute_header, v233, v234, "validateAndFixupReminderTree: Detected a loop in reminder tree in CK server data. Selecting a stable root.", v235, 2u);
  }

  sub_100395658(v232);
  if (v237)
  {
    v238 = v236;
  }

  else
  {
    v238 = v433;
  }

LABEL_119:
  v239 = v238;
  v240 = [v239 objectID];
  v241 = [v240 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  __chkstk_darwin(v242);
  *(&v401 - 2) = v218;

  sub_1002E1AFC(sub_1003A9A34, (&v401 - 4), v232);
  v244 = v243;
  v245 = v239;

  v246 = Logger.logObject.getter();
  v247 = static os_log_type_t.default.getter();

  v248 = os_log_type_enabled(v246, v247);
  v423 = v244;
  if (v248)
  {
    v249 = swift_slowAlloc();
    v429 = swift_slowAlloc();
    v437[0] = v429;
    *v249 = 136315394;
    v250 = [v245 remObjectID];
    v435 = v250;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v251 = Optional.descriptionOrNil.getter();
    v253 = v252;

    v254 = sub_10000668C(v251, v253, v437);

    *(v249 + 4) = v254;
    *(v249 + 12) = 2082;
    sub_100393C7C(v244);
    v412 = 0;
    v255 = Array.description.getter();
    v257 = v256;

    v258 = sub_10000668C(v255, v257, v437);

    *(v249 + 14) = v258;
    _os_log_impl(&_mh_execute_header, v246, v247, "validateAndFixupReminderTree {resolvedRoot: %s, childReminders: %{public}s}", v249, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v412 = 0;
  }

  v259 = v419;
  v260 = v245;
  v261 = Logger.logObject.getter();
  v262 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v261, v262))
  {
    v263 = swift_slowAlloc();
    v264 = swift_slowAlloc();
    v437[0] = v264;
    *v263 = 136315138;
    v265 = [v260 remObjectID];
    v435 = v265;
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v266 = Optional.descriptionOrNil.getter();
    v268 = v267;

    v269 = sub_10000668C(v266, v268, v437);

    *(v263 + 4) = v269;
    _os_log_impl(&_mh_execute_header, v261, v262, "validateAndFixupReminderTree: Going to update root. {objectID: %s}", v263, 0xCu);
    sub_10000607C(v264);
  }

  v270 = v416;
  v271 = v409;
  v272 = [v260 parentReminder];

  if (v272)
  {

    v273 = Logger.logObject.getter();
    v274 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v273, v274))
    {
      v275 = swift_slowAlloc();
      *v275 = 0;
      _os_log_impl(&_mh_execute_header, v273, v274, "validateAndFixupReminderTree: ...Updated {root.parent: nil}", v275, 2u);
    }

    [v260 setParentReminder:0];
  }

  v276 = [v433 list];
  if (!v276)
  {
    v276 = [v260 list];
  }

  v277 = [v433 objectID];
  v278 = [v277 URIRepresentation];

  v429 = v260;
  v279 = v410;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v277) = static URL.== infix(_:_:)();
  v280 = *(v422 + 8);
  v281 = v279;
  v282 = v429;
  v420 = (v422 + 8);
  v418 = v280;
  (v280)(v281, v259);
  v427 = v276;
  if ((v277 & 1) != 0 || ([v282 ckNeedsInitialFetchFromCloud] & 1) == 0)
  {
    if ([v282 markedForDeletion])
    {
      v283 = 0;
    }

    else
    {
      v284 = v276;
      v283 = v276;
    }

    v285 = v407;
    v286 = [v429 list];
    if (v286)
    {
      v287 = v286;
      v288 = [v286 objectID];
      v289 = [v288 URIRepresentation];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v290 = 0;
    }

    else
    {
      v290 = 1;
    }

    v291 = *(v422 + 56);
    v292 = 1;
    v291(v285, v290, 1, v259);
    if (v283)
    {
      v293 = v283;
      v294 = v283;
      v295 = [v294 objectID];
      v296 = [v295 URIRepresentation];

      v297 = v406;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v292 = 0;
    }

    else
    {
      v293 = 0;
      v297 = v406;
    }

    v291(v297, v292, 1, v259);
    v298 = *(v417 + 48);
    v299 = v285;
    v300 = v285;
    v301 = v405;
    sub_100010364(v299, v405, &unk_1009441F0, &qword_100795760);
    sub_100010364(v297, v301 + v298, &unk_1009441F0, &qword_100795760);
    v302 = *(v422 + 48);
    if (v302(v301, 1, v259) == 1)
    {
      sub_1000050A4(v297, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v300, &unk_1009441F0, &qword_100795760);
      if (v302(v301 + v298, 1, v259) == 1)
      {
        sub_1000050A4(v301, &unk_1009441F0, &qword_100795760);
        v282 = v429;
LABEL_156:
        v304 = v293;
LABEL_185:

        v270 = v416;
        v271 = v409;
        v276 = v427;
        goto LABEL_186;
      }
    }

    else
    {
      v303 = v404;
      sub_100010364(v301, v404, &unk_1009441F0, &qword_100795760);
      if (v302(v301 + v298, 1, v259) != 1)
      {
        v319 = v301 + v298;
        v320 = v410;
        (*(v422 + 32))(v410, v319, v259);
        sub_1003A99EC(&unk_100944080, &type metadata accessor for URL);
        v321 = dispatch thunk of static Equatable.== infix(_:_:)();
        v322 = v418;
        (v418)(v320, v259);
        sub_1000050A4(v406, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v407, &unk_1009441F0, &qword_100795760);
        v322(v303, v259);
        sub_1000050A4(v301, &unk_1009441F0, &qword_100795760);
        v282 = v429;
        if (v321)
        {
          goto LABEL_156;
        }

LABEL_147:
        v304 = v293;
        v305 = Logger.logObject.getter();
        v306 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v305, v306))
        {
          v307 = swift_slowAlloc();
          v308 = swift_slowAlloc();
          v437[0] = v308;
          *v307 = 136315138;
          v417 = v293;
          if (v293)
          {
            v293 = [v304 remObjectID];
          }

          v435 = v293;
          sub_1000F5104(&unk_10093AF40, &unk_100795790);
          v309 = Optional.descriptionOrNil.getter();
          v311 = v310;

          v312 = sub_10000668C(v309, v311, v437);

          *(v307 + 4) = v312;
          _os_log_impl(&_mh_execute_header, v305, v306, "validateAndFixupReminderTree: ...Updated {root.list: %s}", v307, 0xCu);
          sub_10000607C(v308);

          v259 = v419;
          v282 = v429;
          v293 = v417;
        }

        else
        {
        }

        if (!v293)
        {
          goto LABEL_184;
        }

        v313 = v304;
        v314 = [v282 ckZoneOwnerName];
        if (v314)
        {
          v315 = v314;
          v316 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v318 = v317;
        }

        else
        {
          v316 = 0;
          v318 = 0;
        }

        v323 = v313;
        v324 = [v323 ckZoneOwnerName];
        if (v324)
        {
          v325 = v324;
          v326 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v328 = v327;

          if (v318)
          {
            if (v328)
            {
              if (v316 == v326 && v318 == v328)
              {

LABEL_183:
                v259 = v419;
LABEL_184:
                [v282 setList:v304];
                goto LABEL_185;
              }

              v362 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v362)
              {
LABEL_182:

                goto LABEL_183;
              }

LABEL_168:
              v329 = 7104878;
              v437[0] = 0;
              v437[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(109);
              v330._countAndFlagsBits = 0xD000000000000039;
              v330._object = 0x80000001007F6160;
              String.append(_:)(v330);
              v331 = [v282 remObjectID];
              if (v331)
              {
                v332 = v331;
                v333 = [v331 description];

                v334 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v336 = v335;
              }

              else
              {
                v336 = 0xE300000000000000;
                v334 = 7104878;
              }

              v337._countAndFlagsBits = v334;
              v337._object = v336;
              String.append(_:)(v337);

              v338._countAndFlagsBits = 0x4E72656E776F205DLL;
              v338._object = 0xEE00203D20656D61;
              String.append(_:)(v338);
              v339 = [v429 ckZoneOwnerName];
              if (v339)
              {
                v340 = v339;
                v341 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v343 = v342;
              }

              else
              {
                v341 = 0;
                v343 = 0;
              }

              v435 = v341;
              v436 = v343;
              sub_1000F5104(&unk_100939E40, &qword_100791BD0);
              v344._countAndFlagsBits = String.init<A>(describing:)();
              String.append(_:)(v344);

              v345._countAndFlagsBits = 0x467473696C202C29;
              v345._object = 0xEF5B746F6F52726FLL;
              String.append(_:)(v345);
              v346 = [v323 remObjectID];
              if (v346)
              {
                v347 = v346;
                v348 = [v346 description];

                v329 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v350 = v349;
              }

              else
              {
                v350 = 0xE300000000000000;
              }

              v351._countAndFlagsBits = v329;
              v351._object = v350;
              String.append(_:)(v351);

              v352._countAndFlagsBits = 0x72656E6E776F205DLL;
              v352._object = 0xEF203D20656D614ELL;
              String.append(_:)(v352);
              v353 = [v323 ckZoneOwnerName];

              if (v353)
              {
                v354 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v356 = v355;
              }

              else
              {
                v354 = 0;
                v356 = 0;
              }

              v282 = v429;
              v435 = v354;
              v436 = v356;
              v357._countAndFlagsBits = String.init<A>(describing:)();
              String.append(_:)(v357);

              v358 = objc_opt_self();
              v359 = String._bridgeToObjectiveC()();
              v360 = String._bridgeToObjectiveC()();
              v361 = String._bridgeToObjectiveC()();

              [v358 faultAndPromptToFileRadarWithICTap2RadarType:4 title:v359 description:v360 logMessage:v361];

              goto LABEL_183;
            }
          }

          else if (!v328)
          {
            goto LABEL_182;
          }
        }

        else if (!v318)
        {
          goto LABEL_182;
        }

        goto LABEL_168;
      }

      sub_1000050A4(v406, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v407, &unk_1009441F0, &qword_100795760);
      (v418)(v303, v259);
    }

    sub_1000050A4(v301, &unk_100944250, &qword_1007957B0);
    v282 = v429;
    goto LABEL_147;
  }

LABEL_186:
  if (v276)
  {
    v363 = v276;
    v364 = [v363 objectID];
    v365 = [v364 URIRepresentation];

    v366 = v413;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v367 = 0;
  }

  else
  {
    v367 = 1;
    v366 = v413;
  }

  v368 = v422;
  (*(v422 + 56))(v366, v367, 1, v259);
  v437[0] = _swiftEmptySetSingleton;
  v369 = v415;
  (*(v368 + 16))(v415, v270, v259);
  sub_100010364(v366, v271, &unk_1009441F0, &qword_100795760);
  v370 = Logger.logObject.getter();
  v371 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v370, v371))
  {
    v372 = swift_slowAlloc();
    *v372 = 0;
    _os_log_impl(&_mh_execute_header, v370, v371, "validateAndFixupReminderTree: Going to update newly computed children.", v372, 2u);
    v369 = v415;
  }

  v373 = v369;
  v374 = v427;
  sub_1003A6A50(v423, v437, v373, v282, v271, v427);
  v375 = [v433 parentReminder];
  if (v375)
  {

    v376 = [v433 children];
    if (v376)
    {
      v377 = v376;
      sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0);
      v378 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v378 & 0xC000000000000001) != 0)
      {
        v379 = __CocoaSet.count.getter();
      }

      else
      {
        v379 = *(v378 + 16);
      }

      if (v379)
      {
        v380 = Logger.logObject.getter();
        v381 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v380, v381))
        {
          v382 = swift_slowAlloc();
          *v382 = 0;
          _os_log_impl(&_mh_execute_header, v380, v381, "validateAndFixupReminderTree: Going to update old children.", v382, 2u);
        }

        v383 = sub_10027888C(v378);

        v374 = v427;
        sub_1003A6A50(v383, v437, v415, v282, v271, v427);
      }

      else
      {
      }
    }
  }

  v384 = [v282 children];
  if (!v384)
  {

    goto LABEL_212;
  }

  v385 = v384;
  sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0);
  v386 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  __chkstk_darwin(v387);
  *(&v401 - 4) = v437;
  *(&v401 - 3) = v270;
  *(&v401 - 2) = v413;

  v388 = v412;
  sub_1002E1C94(sub_1003A9A54, (&v401 - 6), v386);
  if (!v388)
  {
    v390 = v389;
    if (v389 >> 62)
    {
      v398 = _CocoaArrayWrapper.endIndex.getter();
      v391 = v429;
      if (v398)
      {
        goto LABEL_205;
      }
    }

    else
    {
      v391 = v429;
      if (*((v389 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_205:
        v392 = Logger.logObject.getter();
        v393 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v392, v393))
        {
          v394 = swift_slowAlloc();
          *v394 = 0;

          _os_log_impl(&_mh_execute_header, v392, v393, "validateAndFixupReminderTree: Going to update mismatched lists of remaining children attached to root.", v394, 2u);
        }

        else
        {
        }

        v395 = v415;
        v396 = v429;
        v397 = v427;
        sub_1003A6A50(v390, v437, v415, v429, v271, v427);

        goto LABEL_213;
      }
    }

LABEL_212:

    v395 = v415;
LABEL_213:

    sub_1000050A4(v271, &unk_1009441F0, &qword_100795760);
    v399 = v395;
    v400 = v418;
    (v418)(v399, v259);

    sub_1000050A4(v413, &unk_1009441F0, &qword_100795760);
    v400(v270, v259);

    goto LABEL_52;
  }

  sub_1000050A4(v271, &unk_1009441F0, &qword_100795760);
  (v418)(v415, v259);
  __break(1u);
}

id REMCDReminder.ckServerRecord.getter()
{
  v2.super_class = REMCDReminder;
  v0 = objc_msgSendSuper2(&v2, "ckServerRecord");

  return v0;
}

void REMCDReminder.ckServerRecord.setter(void *a1)
{
  v2.super_class = REMCDReminder;
  objc_msgSendSuper2(&v2, "setCkServerRecord:", a1);
  sub_10039DAE4();
}

void sub_10039DAE4()
{
  v1 = v0;
  v2 = [v0 ckServerRecord];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10039646C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 ckParentReminderIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (!v6)
    {
      v14 = 0;
      goto LABEL_15;
    }

    if (v9 == v4 && v6 == v11)
    {

LABEL_19:

      return;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_19;
    }
  }

  else if (!v6)
  {
    return;
  }

  v14 = String._bridgeToObjectiveC()();
LABEL_15:

  [v1 setCkParentReminderIdentifier:v14];
}

CKRecord_optional __swiftcall REMCDReminder.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v292 = &v281 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v322 = &v281 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v321 = &v281 - v10;
  v320 = type metadata accessor for URL();
  v11 = *(v320 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v320);
  v291 = &v281 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v319 = &v281 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v318 = &v281 - v18;
  v324 = type metadata accessor for REMFeatureFlags();
  v19 = *(v324 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v324);
  v323 = &v281 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v281 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v317 = &v281 - v27;
  __chkstk_darwin(v28);
  v316 = &v281 - v29;
  __chkstk_darwin(v30);
  v315 = &v281 - v31;
  __chkstk_darwin(v32);
  v314 = &v281 - v33;
  __chkstk_darwin(v34);
  v313 = &v281 - v35;
  __chkstk_darwin(v36);
  v312 = &v281 - v37;
  __chkstk_darwin(v38);
  v311 = &v281 - v39;
  __chkstk_darwin(v40);
  v310 = &v281 - v41;
  __chkstk_darwin(v42);
  v309 = &v281 - v43;
  __chkstk_darwin(v44);
  v308 = &v281 - v45;
  *&v47 = __chkstk_darwin(v46).n128_u64[0];
  v307 = &v281 - v48;
  v330.receiver = v1;
  v330.super_class = REMCDReminder;
  v49 = objc_msgSendSuper2(&v330, "newlyCreatedRecord", v47);
  v51 = v49;
  if (!v49)
  {
LABEL_219:
    isUniquelyReferenced_nonNull_native = v51;
    goto LABEL_229;
  }

  v304 = v2;
  v52 = 0;
  v295 = "markedForDeletion";
  v293 = "TitleDocumentAsset";
  v283 = "notesDocumentAsset";
  v303 = enum case for REMFeatureFlags.urgentAlert(_:);
  v306 = (v19 + 104);
  v305 = (v19 + 8);
  v289 = enum case for REMFeatureFlags.urgentAlertCloudKit(_:);
  v294 = "RecurrenceRuleIDs";
  v302 = "LinkUpdateRequestDate";
  v301 = (v11 + 56);
  v300 = (v11 + 48);
  v288 = (v11 + 16);
  v287 = (v11 + 8);
  v299 = "NotesDocumentAsset";
  v298 = (v3 + 56);
  v297 = (v3 + 48);
  v286 = (v3 + 16);
  v285 = (v3 + 8);
  v296 = "DueDateDeltaAlertsData";
  v325 = v25;
  v326 = v49;
  v290 = v1;
  while (2)
  {
    v54 = &off_1008DE238 + v52++;
    switch(v54[32])
    {
      case 1:
        v152 = [v1 allDay];
        *(&v328 + 1) = &type metadata for Bool;
        v329 = &protocol witness table for Bool;
        LOBYTE(v327) = v152;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 2:
        v157 = [v51 encryptedValues];
        v158 = [v1 alternativeDisplayDateDate_forCalendar];
        if (v158)
        {
          v159 = v308;
          v160 = v158;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v161 = 0;
        }

        else
        {
          v161 = 1;
          v159 = v308;
        }

        v237 = type metadata accessor for Date();
        v238 = *(v237 - 8);
        (*(v238 + 56))(v159, v161, 1, v237);
        v239 = v307;
        sub_100031B58(v159, v307, &unk_100938850, qword_100795AE0);
        if ((*(v238 + 48))(v239, 1, v237) == 1)
        {
          sub_1000050A4(v239, &unk_100938850, qword_100795AE0);
          v327 = 0u;
          v328 = 0u;
          v329 = 0;
        }

        else
        {
          *(&v328 + 1) = v237;
          v329 = &protocol witness table for Date;
          v240 = sub_1000103CC(&v327);
          (*(v238 + 32))(v240, v239, v237);
        }

        swift_getObjectType();
        v216 = &v327 + 1;
        goto LABEL_157;
      case 3:
        v101 = [v1 attachments];
        if (!v101)
        {
          v107 = _swiftEmptyArrayStorage;
          goto LABEL_215;
        }

        *&v327 = v101;
        v102 = v101;
        sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
        v284 = v102;
        isUniquelyReferenced_nonNull_native = Sequence.elements<A>(ofType:)();
        v103 = isUniquelyReferenced_nonNull_native;
        v104 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        if (isUniquelyReferenced_nonNull_native >> 62)
        {
          isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
          v105 = isUniquelyReferenced_nonNull_native;
          if (!isUniquelyReferenced_nonNull_native)
          {
LABEL_213:
            v107 = _swiftEmptyArrayStorage;
            goto LABEL_214;
          }
        }

        else
        {
          v105 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v105)
          {
            goto LABEL_213;
          }
        }

        v106 = 0;
        v107 = _swiftEmptyArrayStorage;
        do
        {
          v108 = v106;
          while (1)
          {
            if ((v103 & 0xC000000000000001) != 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v108 >= *(v104 + 16))
              {
                goto LABEL_222;
              }

              isUniquelyReferenced_nonNull_native = *(v103 + 8 * v108 + 32);
            }

            v109 = isUniquelyReferenced_nonNull_native;
            v106 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              goto LABEL_221;
            }

            v110 = [isUniquelyReferenced_nonNull_native ckIdentifier];
            if (v110)
            {
              break;
            }

            ++v108;
            if (v106 == v105)
            {
              goto LABEL_214;
            }
          }

          v111 = v110;
          v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v282 = v113;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100365788(0, *(v107 + 2) + 1, 1, v107);
            v107 = isUniquelyReferenced_nonNull_native;
          }

          v115 = *(v107 + 2);
          v114 = *(v107 + 3);
          if (v115 >= v114 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100365788((v114 > 1), v115 + 1, 1, v107);
            v107 = isUniquelyReferenced_nonNull_native;
          }

          *(v107 + 2) = v115 + 1;
          v116 = &v107[16 * v115];
          v117 = v282;
          *(v116 + 4) = v112;
          *(v116 + 5) = v117;
          v1 = v290;
        }

        while (v106 != v105);
LABEL_214:

        v278 = v284;

        v25 = v325;
        v51 = v326;
LABEL_215:
        *(&v328 + 1) = sub_1000F5104(&unk_10093B300, &unk_100797780);
        v329 = sub_1003A9970();
        *&v327 = v107;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 4:
        v118 = [v1 assignments];
        if (v118)
        {
          v119 = v118;
          sub_1000060C8(0, &unk_10093F790, off_1008D4158);
          sub_10000CDE4(&qword_10093CC38, &unk_10093F790, off_1008D4158);
          v120 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v120 = _swiftEmptySetSingleton;
        }

        sub_1003950EC(v120, &unk_10093F790, off_1008D4158, &qword_10093CC38);

        v210 = objc_allocWithZone(NSOrderedSet);
        isa = Set._bridgeToObjectiveC()().super.isa;

        v212 = [v210 initWithSet:isa];

        v213 = sub_1004EB4B0(v212);
        if (v213)
        {
          goto LABEL_126;
        }

        v329 = 0;
        v327 = 0u;
        v328 = 0u;
        goto LABEL_128;
      case 5:
        [v51 encryptedValues];
        v74 = [v1 batchCreationID];
        if (v74)
        {
          v75 = v322;
          v76 = v74;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v77 = 0;
        }

        else
        {
          v77 = 1;
          v75 = v322;
        }

        v204 = v304;
        (*v298)(v75, v77, 1, v304);
        v205 = v321;
        sub_100031B58(v75, v321, &unk_100939D90, "8\n\r");
        if ((*v297)(v205, 1, v204))
        {
          sub_1000050A4(v205, &unk_100939D90, "8\n\r");
          v327 = 0u;
          v328 = 0u;
          v329 = 0;
        }

        else
        {
          v206 = v292;
          (*v286)(v292, v205, v204);
          sub_1000050A4(v205, &unk_100939D90, "8\n\r");
          v207 = UUID.uuidString.getter();
          v209 = v208;
          (*v285)(v206, v204);
          *(&v328 + 1) = &type metadata for String;
          v329 = &protocol witness table for String;
          *&v327 = v207;
          *(&v327 + 1) = v209;
        }

        goto LABEL_166;
      case 6:
        v131 = [v1 completed];
        *(&v328 + 1) = &type metadata for Bool;
        v329 = &protocol witness table for Bool;
        LOBYTE(v327) = v131;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 7:
        v66 = [v1 completionDate];
        if (v66)
        {
          v67 = v310;
          v68 = v66;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v69 = 0;
        }

        else
        {
          v69 = 1;
          v67 = v310;
        }

        v196 = type metadata accessor for Date();
        v197 = *(v196 - 8);
        (*(v197 + 56))(v67, v69, 1, v196);
        v198 = v309;
        sub_100031B58(v67, v309, &unk_100938850, qword_100795AE0);
        if ((*(v197 + 48))(v198, 1, v196) != 1)
        {
          goto LABEL_107;
        }

        goto LABEL_120;
      case 8:
        v121 = [v1 contactHandles];
        if (v121)
        {
          v122 = v121;
          v123 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v125 = v124;

          [v51 encryptedValues];
          sub_100029344(v123, v125);
          v126 = Data._bridgeToObjectiveC()().super.isa;
          v127 = [objc_opt_self() representationFromData:v126];

          sub_10001BBA0(v123, v125);
          if (v127 && (v128 = sub_1001E1880(), v130 = v129, v127, v130))
          {
            *(&v328 + 1) = &type metadata for String;
            v329 = &protocol witness table for String;
            *&v327 = v128;
            *(&v327 + 1) = v130;
          }

          else
          {
            v329 = 0;
            v327 = 0u;
            v328 = 0u;
          }

          v25 = v325;
          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          sub_10001BBA0(v123, v125);
          swift_unknownObjectRelease();
          v51 = v326;
        }

        else
        {
          v214 = [v51 encryptedValues];
          v215 = String._bridgeToObjectiveC()();
          [v214 setObject:0 forKeyedSubscript:v215];
          swift_unknownObjectRelease();
        }

        goto LABEL_5;
      case 9:
        v162 = [v1 creationDate];
        if (v162)
        {
          v163 = v312;
          v164 = v162;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v165 = 0;
        }

        else
        {
          v165 = 1;
          v163 = v312;
        }

        v196 = type metadata accessor for Date();
        v197 = *(v196 - 8);
        (*(v197 + 56))(v163, v165, 1, v196);
        v198 = v311;
        sub_100031B58(v163, v311, &unk_100938850, qword_100795AE0);
        if ((*(v197 + 48))(v198, 1, v196) == 1)
        {
          goto LABEL_120;
        }

        goto LABEL_107;
      case 10:
        v70 = [v1 dueDate];
        if (v70)
        {
          v71 = v314;
          v72 = v70;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v73 = 0;
        }

        else
        {
          v73 = 1;
          v71 = v314;
        }

        v200 = type metadata accessor for Date();
        v201 = *(v200 - 8);
        (*(v201 + 56))(v71, v73, 1, v200);
        v202 = v313;
        sub_100031B58(v71, v313, &unk_100938850, qword_100795AE0);
        if ((*(v201 + 48))(v202, 1, v200) == 1)
        {
          sub_1000050A4(v202, &unk_100938850, qword_100795AE0);
          v327 = 0u;
          v328 = 0u;
          v329 = 0;
        }

        else
        {
          *(&v328 + 1) = v200;
          v329 = &protocol witness table for Date;
          v203 = sub_1000103CC(&v327);
          (*(v201 + 32))(v203, v202, v200);
        }

        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 11:
        v132 = [v51 encryptedValues];
        v133 = [v1 dueDateDeltaAlertsData];
        if (v133)
        {
          v134 = v133;
          v135 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v137 = v136;

          *(&v328 + 1) = &type metadata for Data;
          v329 = &protocol witness table for Data;
          *&v327 = v135;
          *(&v327 + 1) = v137;
        }

        else
        {
          v329 = 0;
          v327 = 0u;
          v328 = 0u;
        }

        swift_getObjectType();
        v216 = &v329;
LABEL_157:
        v241 = *(v216 - 32) | 0x8000000000000000;
        goto LABEL_167;
      case 12:
        v176 = [v1 flagged];
        *(&v328 + 1) = &type metadata for Int64;
        v329 = &protocol witness table for Int64;
        *&v327 = v176;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 13:
        if (([v1 isOwnedByCurrentUser] & 1) == 0)
        {
          goto LABEL_5;
        }

        v81 = [v1 hashtags];
        if (v81)
        {
          v82 = v81;
          sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
          v83 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v83 = _swiftEmptySetSingleton;
        }

        sub_1003950EC(v83, &qword_10093CFE0, off_1008D4190, &qword_10093B280);

        v253 = objc_allocWithZone(NSOrderedSet);
        v254 = Set._bridgeToObjectiveC()().super.isa;

        v255 = [v253 initWithSet:v254];

        v213 = sub_1004EB4B0(v255);
        if (v213)
        {
LABEL_126:
          *(&v328 + 1) = sub_1000F5104(&unk_10093B300, &unk_100797780);
          v329 = sub_1003A9970();
          *&v327 = v213;
        }

        else
        {
          v329 = 0;
          v327 = 0u;
          v328 = 0u;
        }

LABEL_128:
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 14:
        [v51 encryptedValues];
        v186 = [v1 icsUrl];
        if (v186)
        {
          v187 = v319;
          v188 = v186;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v189 = 0;
        }

        else
        {
          v189 = 1;
          v187 = v319;
        }

        v242 = v320;
        (*v301)(v187, v189, 1, v320);
        v243 = v187;
        v244 = v318;
        sub_100031B58(v243, v318, &unk_1009441F0, &qword_100795760);
        if ((*v300)(v244, 1, v242))
        {
          sub_1000050A4(v244, &unk_1009441F0, &qword_100795760);
          v327 = 0u;
          v328 = 0u;
          v329 = 0;
        }

        else
        {
          v245 = v291;
          (*v288)(v291, v244, v242);
          sub_1000050A4(v244, &unk_1009441F0, &qword_100795760);
          v246 = URL.absoluteString.getter();
          v248 = v247;
          (*v287)(v245, v242);
          *(&v328 + 1) = &type metadata for String;
          v329 = &protocol witness table for String;
          *&v327 = v246;
          *(&v327 + 1) = v248;
        }

        goto LABEL_166;
      case 15:
        v138 = [v51 encryptedValues];
        v139 = [v1 importedICSData];
        if (v139)
        {
          goto LABEL_72;
        }

        v329 = 0;
        v327 = 0u;
        v328 = 0u;
        goto LABEL_166;
      case 16:
        v153 = [v1 lastModifiedDate];
        if (v153)
        {
          v154 = v316;
          v155 = v153;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v156 = 0;
        }

        else
        {
          v156 = 1;
          v154 = v316;
        }

        v218 = type metadata accessor for Date();
        v219 = *(v218 - 8);
        (*(v219 + 56))(v154, v156, 1, v218);
        v220 = v315;
        sub_100031B58(v154, v315, &unk_100938850, qword_100795AE0);
        if ((*(v219 + 48))(v220, 1, v218) == 1)
        {
          sub_1000050A4(v220, &unk_100938850, qword_100795AE0);
          v327 = 0u;
          v328 = 0u;
          v329 = 0;
        }

        else
        {
          *(&v328 + 1) = v218;
          v329 = &protocol witness table for Date;
          v221 = sub_1000103CC(&v327);
          (*(v219 + 32))(v221, v220, v218);
        }

        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        v175 = &v331;
        goto LABEL_211;
      case 17:
        v177 = [v1 list];
        if (v177 && (v178 = v177, v179 = [v177 recordID], v178, v179))
        {
          v180 = [v51 recordID];
          v181 = [v180 zoneID];

          v182 = [v179 zoneID];
          v183 = [v181 isEqual:v182];

          if (v183)
          {
            v184 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v179];

            if (v184)
            {
              v185 = v184;
            }
          }

          else
          {

            v184 = 0;
          }
        }

        else
        {
          v184 = 0;
        }

        CKRecord.subscript.setter();

        goto LABEL_5;
      case 18:
        v144 = [v1 notesDocument];
        if (!v144)
        {
          v60 = 0;
          v62 = 0xF000000000000000;
LABEL_197:
          v267 = v326;
          CKRecord.subscript.setter();
          v268 = [v267 encryptedValues];
          if (v62 >> 60 == 15)
          {
            v329 = 0;
            v327 = 0u;
            v328 = 0u;
          }

          else
          {
            *(&v328 + 1) = &type metadata for Data;
            v329 = &protocol witness table for Data;
            *&v327 = v60;
            *(&v327 + 1) = v62;
          }

LABEL_200:
          swift_getObjectType();
          sub_1001CB4B8(v60, v62);
          CKRecordKeyValueSetting.subscript.setter();
          sub_100031A14(v60, v62);
          swift_unknownObjectRelease();
          v51 = v326;
          goto LABEL_5;
        }

        v145 = v144;
        v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v146;

        v147 = v62 >> 62;
        if ((v62 >> 62) > 1)
        {
          if (v147 == 2)
          {
            v252 = *(v60 + 16);
            v251 = *(v60 + 24);
            v148 = v251 - v252;
            if (__OFSUB__(v251, v252))
            {
              goto LABEL_225;
            }
          }

          else
          {
            v148 = 0;
          }
        }

        else if (v147)
        {
          if (__OFSUB__(HIDWORD(v60), v60))
          {
            goto LABEL_227;
          }

          v148 = HIDWORD(v60) - v60;
        }

        else
        {
          v148 = BYTE6(v62);
        }

        v260 = [objc_opt_self() sharedConfiguration];
        v261 = [v260 maxInlineAssetSizeBytes];

        if (v148 < 1 || v261 >> 1 >= v148)
        {
          goto LABEL_197;
        }

LABEL_196:
        v262 = objc_opt_self();
        v263 = Data._bridgeToObjectiveC()().super.isa;
        v264 = [v262 assetForData:v263];

        v265 = v326;
        CKRecord.subscript.setter();
        CKRecord.subscript.setter();
        v266 = v62;
        v51 = v265;
        sub_10001BBA0(v60, v266);
        goto LABEL_5;
      case 19:
      case 27:
        goto LABEL_5;
      case 20:
        v149 = [v1 parentReminder];
        if (v149)
        {
          v150 = v149;
          v151 = [v149 recordID];
        }

        else
        {
          v151 = 0;
        }

        v217 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v151];

        CKRecord.subscript.setter();
        goto LABEL_5;
      case 21:
        v166 = *v306;
        v168 = v323;
        v167 = v324;
        (*v306)(v323, v303, v324);
        v169 = REMFeatureFlags.isEnabled.getter();
        v170 = *v305;
        (*v305)(v168, v167);
        if ((v169 & 1) == 0)
        {
          goto LABEL_5;
        }

        v172 = v323;
        v171 = v324;
        v166(v323, v289, v324);
        v173 = REMFeatureFlags.isEnabled.getter();
        v170(v172, v171);
        if ((v173 & 1) == 0)
        {
          goto LABEL_5;
        }

        v174 = [v1 prefersUrgentPresentationStyleForDateAlarms];
        *(&v328 + 1) = &type metadata for Bool;
        v329 = &protocol witness table for Bool;
        LOBYTE(v327) = v174;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        v175 = &v315;
        goto LABEL_211;
      case 22:
        v53 = [v1 priority];
        *(&v328 + 1) = &type metadata for Int64;
        v329 = &protocol witness table for Int64;
        *&v327 = v53;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
      case 23:
        v84 = [v1 recurrenceRules];
        if (!v84)
        {
          v90 = _swiftEmptyArrayStorage;
LABEL_210:
          *(&v328 + 1) = sub_1000F5104(&unk_10093B300, &unk_100797780);
          v329 = sub_1003A9970();
          *&v327 = v90;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          v175 = &v325;
LABEL_211:
          v277 = *(v175 - 32) | 0x8000000000000000;
LABEL_4:
          CKRecordKeyValueSetting.subscript.setter();
LABEL_5:
          if (v52 == 29)
          {
            goto LABEL_219;
          }

          continue;
        }

        *&v327 = v84;
        v85 = v84;
        sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
        v284 = v85;
        isUniquelyReferenced_nonNull_native = Sequence.elements<A>(ofType:)();
        v86 = isUniquelyReferenced_nonNull_native;
        v87 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        if (!(isUniquelyReferenced_nonNull_native >> 62))
        {
          v88 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v88)
          {
            goto LABEL_27;
          }

LABEL_208:
          v90 = _swiftEmptyArrayStorage;
          goto LABEL_209;
        }

        isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
        v88 = isUniquelyReferenced_nonNull_native;
        if (!isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_208;
        }

LABEL_27:
        v89 = 0;
        v90 = _swiftEmptyArrayStorage;
LABEL_28:
        v91 = v89;
        while (1)
        {
          if ((v86 & 0xC000000000000001) != 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v91 >= *(v87 + 16))
            {
              goto LABEL_223;
            }

            isUniquelyReferenced_nonNull_native = *(v86 + 8 * v91 + 32);
          }

          v92 = isUniquelyReferenced_nonNull_native;
          v89 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            break;
          }

          v93 = [isUniquelyReferenced_nonNull_native ckIdentifier];
          if (v93)
          {
            v94 = v93;
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v282 = v96;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_100365788(0, *(v90 + 2) + 1, 1, v90);
              v90 = isUniquelyReferenced_nonNull_native;
            }

            v98 = *(v90 + 2);
            v97 = *(v90 + 3);
            if (v98 >= v97 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_100365788((v97 > 1), v98 + 1, 1, v90);
              v90 = isUniquelyReferenced_nonNull_native;
            }

            *(v90 + 2) = v98 + 1;
            v99 = &v90[16 * v98];
            v100 = v282;
            *(v99 + 4) = v95;
            *(v99 + 5) = v100;
            v1 = v290;
            if (v89 == v88)
            {
LABEL_209:

              v276 = v284;

              v25 = v325;
              v51 = v326;
              goto LABEL_210;
            }

            goto LABEL_28;
          }

          ++v91;
          if (v89 == v88)
          {
            goto LABEL_209;
          }
        }

        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        result.value.super.isa = isUniquelyReferenced_nonNull_native;
        result.is_nil = v50;
        return result;
      case 24:
        v78 = [v1 startDate];
        if (v78)
        {
          v79 = v78;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = 0;
        }

        else
        {
          v80 = 1;
        }

        v196 = type metadata accessor for Date();
        v197 = *(v196 - 8);
        (*(v197 + 56))(v25, v80, 1, v196);
        v198 = v317;
        sub_100031B58(v25, v317, &unk_100938850, qword_100795AE0);
        if ((*(v197 + 48))(v198, 1, v196) == 1)
        {
LABEL_120:
          sub_1000050A4(v198, &unk_100938850, qword_100795AE0);
          v327 = 0u;
          v328 = 0u;
          v329 = 0;
        }

        else
        {
LABEL_107:
          *(&v328 + 1) = v196;
          v329 = &protocol witness table for Date;
          v199 = sub_1000103CC(&v327);
          (*(v197 + 32))(v199, v198, v196);
        }

        goto LABEL_128;
      case 25:
        v191 = [v1 timeZone];
        if (v191)
        {
          v192 = v191;
          v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v195 = v194;

          *(&v328 + 1) = &type metadata for String;
          v329 = &protocol witness table for String;
          *&v327 = v193;
          *(&v327 + 1) = v195;
        }

        else
        {
          v329 = 0;
          v327 = 0u;
          v328 = 0u;
        }

        goto LABEL_128;
      case 26:
        v58 = [v1 titleDocument];
        if (!v58)
        {
          v60 = 0;
          v62 = 0xF000000000000000;
LABEL_188:
          v258 = v326;
          CKRecord.subscript.setter();
          v259 = [v258 encryptedValues];
          if (v62 >> 60 == 15)
          {
            v329 = 0;
            v327 = 0u;
            v328 = 0u;
          }

          else
          {
            *(&v328 + 1) = &type metadata for Data;
            v329 = &protocol witness table for Data;
            *&v327 = v60;
            *(&v327 + 1) = v62;
          }

          goto LABEL_200;
        }

        v59 = v58;
        v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        v64 = v62 >> 62;
        if ((v62 >> 62) > 1)
        {
          if (v64 == 2)
          {
            v250 = *(v60 + 16);
            v249 = *(v60 + 24);
            v65 = v249 - v250;
            if (__OFSUB__(v249, v250))
            {
              goto LABEL_226;
            }
          }

          else
          {
            v65 = 0;
          }
        }

        else if (v64)
        {
          if (__OFSUB__(HIDWORD(v60), v60))
          {
            goto LABEL_228;
          }

          v65 = HIDWORD(v60) - v60;
        }

        else
        {
          v65 = BYTE6(v62);
        }

        v256 = [objc_opt_self() sharedConfiguration];
        v257 = [v256 maxInlineAssetSizeBytes];

        if (v65 < 1 || v257 >> 1 >= v65)
        {
          goto LABEL_188;
        }

        goto LABEL_196;
      case 28:
        v190 = [v51 encryptedValues];
        v139 = [v1 userActivity];
        if (v139)
        {
LABEL_72:
          v140 = v139;
          v141 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v143 = v142;

          *(&v328 + 1) = &type metadata for Data;
          v329 = &protocol witness table for Data;
          *&v327 = v141;
          *(&v327 + 1) = v143;
        }

        else
        {
          v329 = 0;
          v327 = 0u;
          v328 = 0u;
        }

LABEL_166:
        swift_getObjectType();
LABEL_167:
        CKRecordKeyValueSetting.subscript.setter();
        swift_unknownObjectRelease();
        goto LABEL_5;
      default:
        v55 = [objc_opt_self() daemonUserDefaults];
        v56 = [v55 cloudKitMaxNumAlarmIDsInReminderCKRecordDebugOverride];

        if (v56)
        {
          v57 = [v56 integerValue];
        }

        else
        {
          v56 = [objc_opt_self() sharedConfiguration];
          v57 = [v56 alarmIDsLimitPerReminder];
        }

        v222 = v57;

        if (v222 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v223 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v223 = v222;
        }

        v224 = [v1 alarmStorage];
        v225 = sub_1004EB4B0(v224);

        if (!v225)
        {
          goto LABEL_217;
        }

        if (v222 >= *(v225 + 2))
        {
          goto LABEL_206;
        }

        if (qword_100935F38 != -1)
        {
          swift_once();
        }

        v226 = type metadata accessor for Logger();
        sub_100006654(v226, qword_1009441D0);
        swift_bridgeObjectRetain_n();
        v227 = v1;
        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v228, v229))
        {
          LODWORD(v282) = v229;
          v230 = swift_slowAlloc();
          v281 = swift_slowAlloc();
          *&v327 = v281;
          *v230 = 136446978;
          v231 = [v227 remObjectID];
          v284 = v223;
          if (v231)
          {
            v232 = v231;
            v233 = [v231 description];

            v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v236 = v235;
          }

          else
          {
            v236 = 0xE300000000000000;
            v234 = 7104878;
          }

          v269 = sub_10000668C(v234, v236, &v327);

          *(v230 + 4) = v269;
          *(v230 + 12) = 2082;
          v271 = sub_1004D7318(v270);
          v273 = sub_10000668C(v271, v272, &v327);

          *(v230 + 14) = v273;
          *(v230 + 22) = 2048;
          v274 = *(v225 + 2);

          *(v230 + 24) = v274;

          *(v230 + 32) = 2048;
          v223 = v284;
          *(v230 + 34) = v284;
          _os_log_impl(&_mh_execute_header, v228, v282, "Create Reminder CK record {self: %{public}s %{public}s} has %ld alarms exceeding limit %ld", v230, 0x2Au);
          swift_arrayDestroy();

          v1 = v290;
        }

        else
        {

          isUniquelyReferenced_nonNull_native = swift_bridgeObjectRelease_n();
        }

        v275 = *(v225 + 2);
        v25 = v325;
        if (v222 > v275)
        {
          goto LABEL_224;
        }

        swift_unknownObjectRetain();

        if (v222 == v275 || (sub_1002781A0(v225, (v225 + 32), 0, (2 * v223) | 1), v280 = v279, , (v225 = v280) != 0))
        {
LABEL_206:
          *(&v328 + 1) = sub_1000F5104(&unk_10093B300, &unk_100797780);
          v329 = sub_1003A9970();
          *&v327 = v225;
        }

        else
        {
LABEL_217:
          v329 = 0;
          v327 = 0u;
          v328 = 0u;
        }

        v51 = v326;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        goto LABEL_4;
    }
  }
}

void __swiftcall REMCDReminder.parentCloud()(REMCDObject_optional *__return_ptr retstr)
{
  v2 = [v1 list];

  v3 = v2;
}

void __swiftcall REMCDReminder.existingLocalObjectToMerge(with:)(REMCDObject_optional *__return_ptr retstr, NSPredicate_optional *with)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v99 - v7;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v99 - v15;
  v17 = [v3 managedObjectContext];
  if (!v17)
  {
    return;
  }

  v18 = v17;
  if ([v3 isConcealed])
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_1009441D0);
    v20 = v3;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v23 = 136446466;
      v24 = [v20 remObjectID];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 description];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v27 = 7104878;
        v29 = 0xE300000000000000;
      }

      v43 = sub_10000668C(v27, v29, &v102);

      *(v23 + 4) = v43;
      *(v23 + 12) = 2082;
      v45 = sub_1004D7318(v44);
      v47 = sub_10000668C(v45, v46, &v102);

      *(v23 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v21, v22, "MERGE.LOCAL: ...Should not attempt to find existing local object for this concealed reminder, race condition? {self: %{public}s %{public}s}", v23, 0x16u);
      swift_arrayDestroy();
    }

LABEL_17:
    return;
  }

  v30 = [v3 parentReminder];
  if (v30)
  {
    v31 = v30;

    return;
  }

  v32 = [v3 title];
  if (!v32)
  {
    goto LABEL_17;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v102 = _swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  v38 = [v3 account];
  if (v38)
  {
    v39 = v38;
    v99 = v36;
    v40 = v34;
    v41 = [v38 identifier];

    if (v41)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = type metadata accessor for UUID();
      (*(*(v42 - 8) + 56))(v12, 0, 1, v42);
    }

    else
    {
      v49 = type metadata accessor for UUID();
      (*(*(v49 - 8) + 56))(v12, 1, 1, v49);
    }

    sub_100031B58(v12, v16, &unk_100939D90, "8\n\r");
    v34 = v40;
    v36 = v99;
  }

  else
  {
    v48 = type metadata accessor for UUID();
    (*(*(v48 - 8) + 56))(v16, 1, 1, v48);
  }

  sub_100390EB8(KeyPath, v16);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v102[2] >= v102[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v50 = swift_getKeyPath();
  sub_1003910F4(v50, v34, v36);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v102[2] >= v102[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v51 = swift_getKeyPath();
  v52 = [v3 dueDate];
  if (v52)
  {
    v53 = v52;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = type metadata accessor for Date();
  (*(*(v55 - 8) + 56))(v8, v54, 1, v55);
  sub_100390EF0(v51, v8);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v102[2] >= v102[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v56 = swift_getKeyPath();
  sub_1003910E0(v56, [v3 allDay]);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v102[2] >= v102[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v57 = swift_getKeyPath();
  v58 = [v3 timeZone];
  if (v58)
  {
    v59 = v58;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  sub_1003910F4(v57, v60, v62);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v102[2] >= v102[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v102[2] >= v102[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v63 = v102;
  v101 = _swiftEmptyArrayStorage;
  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  v64 = NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v96 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v65 = sub_10000C2B0(v63);
  if (v65)
  {
    v66 = v65;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v97 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (with)
  {
    v67 = with;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v98 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v68 = objc_allocWithZone(NSCompoundPredicate);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v70 = [v68 initWithType:1 subpredicates:isa];

  swift_getObjectType();
  v71 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v70 context:v18];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v72 >> 62))
  {
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

LABEL_68:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_68;
  }

LABEL_52:
  if ((v72 & 0xC000000000000001) != 0)
  {
    v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
    v71 = v73;

    objc_opt_self();
    v74 = swift_dynamicCastObjCClass();
    if (!v74)
    {

      return;
    }

    v99 = v74;
    if (qword_100935F38 == -1)
    {
      goto LABEL_57;
    }

    goto LABEL_71;
  }

  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v73 = *(v72 + 32);
    goto LABEL_55;
  }

  __break(1u);
LABEL_71:
  swift_once();
LABEL_57:
  v75 = type metadata accessor for Logger();
  sub_100006654(v75, qword_1009441D0);
  v76 = v3;
  v77 = v71;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v80 = 136446466;
    v81 = &selRef_persistentStoreForIdentifier_;
    v82 = [v76 remObjectID];
    if (v82)
    {
      v83 = v82;
      v84 = [v82 description];

      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      v81 = &selRef_persistentStoreForIdentifier_;
    }

    else
    {
      v87 = 0xE300000000000000;
      v85 = 7104878;
    }

    v88 = sub_10000668C(v85, v87, &v100);

    *(v80 + 4) = v88;
    *(v80 + 12) = 2082;
    v89 = [v99 v81[106]];
    if (v89)
    {
      v90 = v89;
      v91 = [v89 description];

      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;
    }

    else
    {
      v94 = 0xE300000000000000;
      v92 = 7104878;
    }

    v95 = sub_10000668C(v92, v94, &v100);

    *(v80 + 14) = v95;
    _os_log_impl(&_mh_execute_header, v78, v79, "MERGE.LOCAL: ......REMCDReminder.existingLocalObjectToMerge found a matching local REMCDReminder! {self: %{public}s, matched: %{public}s}", v80, 0x16u);
    swift_arrayDestroy();
  }
}

Swift::Bool __swiftcall REMCDReminder.merge(withLocalObject:)(REMCDObject *withLocalObject)
{
  v2 = v1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v353 = *(v4 - 8);
  v354 = v4;
  v5 = *(v353 + 64);
  __chkstk_darwin(v4);
  v360 = v332 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v358 = v332 - v8;
  v348 = type metadata accessor for URL();
  v351 = *(v348 - 8);
  v9 = *(v351 + 64);
  __chkstk_darwin(v348);
  v347 = v332 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for REMFeatureFlags();
  v350 = *(v357 - 8);
  v11 = *(v350 + 64);
  __chkstk_darwin(v357);
  v356 = v332 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v355 = *(v13 - 8);
  v14 = *(v355 + 64);
  __chkstk_darwin(v13);
  v346 = v332 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v345 = v332 - v17;
  __chkstk_darwin(v18);
  v344 = v332 - v19;
  __chkstk_darwin(v20);
  v343 = v332 - v21;
  __chkstk_darwin(v22);
  v342 = v332 - v23;
  __chkstk_darwin(v24);
  v339 = v332 - v25;
  __chkstk_darwin(v26);
  v338 = (v332 - v27);
  __chkstk_darwin(v28);
  v349 = v332 - v29;
  __chkstk_darwin(v30);
  v352 = v332 - v31;
  v359 = type metadata accessor for UUID();
  v361 = *(v359 - 8);
  isa = v361[8].isa;
  __chkstk_darwin(v359);
  v341 = v332 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = v332 - v35;
  v37 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = v332 - v39;
  v41 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = v332 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = v332 - v46;
  *&v49 = __chkstk_darwin(v48).n128_u64[0];
  v51 = v332 - v50;
  v52 = [(REMCDObject *)v2 managedObjectContext];
  if (!v52)
  {
    return v52;
  }

  v53 = v52;
  v340 = v13;
  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  if (!v54)
  {

LABEL_142:
    LOBYTE(v52) = 0;
    return v52;
  }

  v55 = v54;
  v336 = withLocalObject;
  v56 = [v55 isConcealed];
  v337 = v53;
  if (v56)
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100006654(v57, qword_1009441D0);
    v58 = v336;
    v59 = v2;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = 7104878;
      v63 = swift_slowAlloc();
      *&v365 = swift_slowAlloc();
      *v63 = 136446722;
      v64 = [(REMCDObject *)v59 remObjectID];
      if (v64)
      {
        v65 = v64;
        v66 = [(REMObjectID *)v64 description];

        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;
      }

      else
      {
        v69 = 0xE300000000000000;
        v67 = 7104878;
      }

      v108 = sub_10000668C(v67, v69, &v365);

      *(v63 + 4) = v108;
      *(v63 + 12) = 2082;
      v109 = [(REMCDObject *)v58 remObjectID];
      if (v109)
      {
        v110 = v109;
        v111 = [(REMObjectID *)v109 description];

        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;
      }

      else
      {
        v113 = 0xE300000000000000;
      }

      v114 = sub_10000668C(v62, v113, &v365);

      *(v63 + 14) = v114;
      *(v63 + 22) = 2082;
      v116 = sub_1004D7318(v115);
      v118 = sub_10000668C(v116, v117, &v365);

      *(v63 + 24) = v118;
      _os_log_impl(&_mh_execute_header, v60, v61, "MERGE.LOCAL: ...Should not attempt to merge with a concealed local reminder, race condition or corrupted database? {self: %{public}s, local: %{public}s %{public}s}", v63, 0x20u);
      swift_arrayDestroy();
    }

LABEL_141:
    goto LABEL_142;
  }

  v362 = v2;
  v335 = v55;
  v70 = [v55 identifier];
  if (v70)
  {
    v71 = v70;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = v361[7].isa;
    (v72)(v51, 0, 1, v359);
  }

  else
  {
    v72 = v361[7].isa;
    (v72)(v51, 1, 1, v359);
  }

  v73 = [(REMCDObject *)v362 identifier];
  if (v73)
  {
    v74 = v73;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  v76 = v361;
  v77 = v359;
  (v72)(v47, v75, 1, v359);
  v78 = *(v37 + 48);
  sub_100010364(v51, v40, &unk_100939D90, "8\n\r");
  sub_100010364(v47, &v40[v78], &unk_100939D90, "8\n\r");
  v79 = v76[6].isa;
  if (v79(v40, 1, v77) == 1)
  {
    sub_1000050A4(v47, &unk_100939D90, "8\n\r");
    sub_1000050A4(v51, &unk_100939D90, "8\n\r");
    v80 = v79(&v40[v78], 1, v77);
    v81 = v362;
    if (v80 == 1)
    {
      sub_1000050A4(v40, &unk_100939D90, "8\n\r");
LABEL_27:
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_100006654(v95, qword_1009441D0);
      v96 = v336;
      v97 = v81;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = 7104878;
        v101 = swift_slowAlloc();
        *&v365 = swift_slowAlloc();
        *v101 = 136446466;
        v102 = [(REMCDObject *)v97 remObjectID];
        if (v102)
        {
          v103 = v102;
          v104 = [(REMObjectID *)v102 description];

          v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v106;
        }

        else
        {
          v107 = 0xE300000000000000;
          v105 = 7104878;
        }

        v248 = sub_10000668C(v105, v107, &v365);

        *(v101 + 4) = v248;
        *(v101 + 12) = 2082;
        v249 = [(REMCDObject *)v96 remObjectID];
        if (v249)
        {
          v250 = v249;
          v251 = [(REMObjectID *)v249 description];

          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v253 = v252;
        }

        else
        {
          v253 = 0xE300000000000000;
        }

        v254 = sub_10000668C(v100, v253, &v365);

        *(v101 + 14) = v254;
        _os_log_impl(&_mh_execute_header, v98, v99, "MERGE.LOCAL: ......should not try to merge with itself! {self: %{public}s, local: %{public}s}", v101, 0x16u);
        swift_arrayDestroy();
      }

      goto LABEL_141;
    }
  }

  else
  {
    sub_100010364(v40, v44, &unk_100939D90, "8\n\r");
    if (v79(&v40[v78], 1, v77) != 1)
    {
      v92 = v361;
      (v361[4].isa)(v36, &v40[v78], v77);
      sub_1003A99EC(&qword_10093A3E0, &type metadata accessor for UUID);
      v93 = dispatch thunk of static Equatable.== infix(_:_:)();
      v94 = v92[1].isa;
      v94(v36, v77);
      sub_1000050A4(v47, &unk_100939D90, "8\n\r");
      sub_1000050A4(v51, &unk_100939D90, "8\n\r");
      v94(v44, v77);
      sub_1000050A4(v40, &unk_100939D90, "8\n\r");
      v81 = v362;
      if (v93)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    sub_1000050A4(v47, &unk_100939D90, "8\n\r");
    sub_1000050A4(v51, &unk_100939D90, "8\n\r");
    (v361[1].isa)(v44, v77);
    v81 = v362;
  }

  sub_1000050A4(v40, &unk_10093A3D0, &qword_100795770);
LABEL_22:
  v82 = [(REMCDObject *)v81 lastModifiedDate];
  v83 = v335;
  v84 = v355;
  if (v82)
  {
    v85 = v352;
    v86 = v82;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = [v83 lastModifiedDate];
    if (v87)
    {
      v88 = v349;
      v89 = v87;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003A99EC(&qword_1009464D0, &type metadata accessor for Date);
      v90 = v340;
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        if (qword_100935F38 != -1)
        {
          swift_once();
        }

        v231 = type metadata accessor for Logger();
        sub_100006654(v231, qword_1009441D0);
        v232 = *(v84 + 16);
        v233 = v338;
        v232(v338, v85, v90);
        v234 = v90;
        v235 = v339;
        v232(v339, v88, v234);
        v236 = v336;
        v237 = v81;
        v238 = Logger.logObject.getter();
        v239 = static os_log_type_t.info.getter();
        v362 = v236;

        if (os_log_type_enabled(v238, v239))
        {
          v361 = v238;
          v240 = 7104878;
          v241 = swift_slowAlloc();
          v360 = swift_slowAlloc();
          *&v365 = v360;
          *v241 = 136446978;
          v242 = [(REMCDObject *)v237 remObjectID];
          if (v242)
          {
            v243 = v242;
            v244 = [(REMObjectID *)v242 description];

            v245 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v247 = v246;

            v84 = v355;
          }

          else
          {
            v247 = 0xE300000000000000;
            v245 = 7104878;
          }

          v258 = v338;
          v259 = sub_10000668C(v245, v247, &v365);

          *(v241 + 4) = v259;
          *(v241 + 12) = 2082;
          v260 = [v335 remObjectID];
          if (v260)
          {
            v261 = v260;
            v262 = [v260 description];

            v240 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v264 = v263;
          }

          else
          {
            v264 = 0xE300000000000000;
          }

          v265 = sub_10000668C(v240, v264, &v365);

          *(v241 + 14) = v265;
          *(v241 + 22) = 2082;
          v266 = Date.debugDescription.getter();
          v268 = v267;
          v255 = *(v84 + 8);
          v257 = v340;
          v255(v258, v340);
          v269 = sub_10000668C(v266, v268, &v365);

          *(v241 + 24) = v269;
          *(v241 + 32) = 2082;
          v270 = v339;
          v271 = Date.debugDescription.getter();
          v273 = v272;
          v255(v270, v257);
          v274 = sub_10000668C(v271, v273, &v365);

          *(v241 + 34) = v274;
          v275 = v361;
          _os_log_impl(&_mh_execute_header, v361, v239, "MERGE.LOCAL: ......server copy is newer, keep server data and delete local. {cloud: %{public}s, local: %{public}s, cloud.lastmod: %{public}s, local.lastmod: %{public}s}", v241, 0x2Au);
          swift_arrayDestroy();

          v83 = v335;
        }

        else
        {

          v255 = *(v84 + 8);
          v256 = v235;
          v257 = v234;
          v255(v256, v234);
          v255(v233, v234);
        }

        v276 = [v83 list];
        [v276 removeRemindersObject:v83];

        v277 = v337;
        [v337 deleteObject:v83];

        v255(v349, v257);
        v255(v352, v257);
        LOBYTE(v52) = 1;
        return v52;
      }

      v91 = *(v84 + 8);
      v91(v88, v90);
      v91(v85, v90);
    }

    else
    {
      (*(v84 + 8))(v85, v340);
    }
  }

  v119 = [(REMCDObject *)v81 createResolutionTokenMapIfNecessary];
  v120 = 0;
  v338 = (v351 + 8);
  v334 = v361 + 1;
  v355 = v84 + 8;
  LODWORD(v349) = enum case for REMFeatureFlags.urgentAlert(_:);
  v351 = v350 + 8;
  v352 = (v350 + 104);
  v333 = enum case for REMFeatureFlags.urgentAlertCloudKit(_:);
  v332[1] = 0x80000001007E9050;
  v350 = 0x80000001007E8D70;
  v339 = 0x80000001007E8F70;
  v121 = &selRef_accountStatusWithCompletionHandler_;
  v361 = v119;
  while (2)
  {
    v125 = *(&off_1008DE238 + v120++ + 32);
    switch(v125)
    {
      case 2:
        v126 = [v83 alternativeDisplayDateDate_forCalendar];
        if (v126)
        {
          v127 = v344;
          v128 = v126;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v129.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v355)(v127, v340);
        }

        else
        {
          v129.super.isa = 0;
        }

        [(REMCDObject *)v362 setAlternativeDisplayDateDate_forCalendar:v129.super.isa];

        goto LABEL_41;
      case 5:
        v148 = [v83 batchCreationID];
        if (v148)
        {
          v149 = v341;
          v150 = v148;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v151.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (v334->isa)(v149, v359);
        }

        else
        {
          v151.super.isa = 0;
        }

        [(REMCDObject *)v362 setBatchCreationID:v151.super.isa];

        goto LABEL_41;
      case 6:
        v122 = [v83 completed];
        [(REMCDObject *)v362 setCompleted:v122];
        goto LABEL_41;
      case 7:
        v168 = [v83 completionDate];
        if (v168)
        {
          v169 = v342;
          v170 = v168;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v171.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v355)(v169, v340);
        }

        else
        {
          v171.super.isa = 0;
        }

        [(REMCDObject *)v362 setCompletionDate:v171.super.isa];

        goto LABEL_41;
      case 9:
        v152 = [v83 creationDate];
        if (v152)
        {
          v153 = v343;
          v154 = v152;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v155.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v355)(v153, v340);
        }

        else
        {
          v155.super.isa = 0;
        }

        [(REMCDObject *)v362 setCreationDate:v155.super.isa];

        goto LABEL_41;
      case 14:
        v156 = [v83 icsUrl];
        if (v156)
        {
          v157 = v347;
          v158 = v156;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          URL._bridgeToObjectiveC()(v159);
          v161 = v160;
          (*v338)(v157, v348);
        }

        else
        {
          v161 = 0;
        }

        [(REMCDObject *)v362 setIcsUrl:v161];

        goto LABEL_41;
      case 15:
        v162 = [v83 importedICSData];
        if (v162)
        {
          v163 = v162;
          v164 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v166 = v165;

          v167.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v164, v166);
        }

        else
        {
          v167.super.isa = 0;
        }

        [(REMCDObject *)v362 setImportedICSData:v167.super.isa];

        goto LABEL_41;
      case 16:
        v172 = [v83 lastModifiedDate];
        if (v172)
        {
          v173 = v345;
          v174 = v172;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v175.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v355)(v173, v340);
        }

        else
        {
          v175.super.isa = 0;
        }

        [(REMCDObject *)v362 setLastModifiedDate:v175.super.isa];

        goto LABEL_41;
      case 18:
        v142 = [v83 notes];
        if (!v142)
        {
          goto LABEL_43;
        }

        v124 = v142;
        v143 = [(REMCDObject *)v362 notesDocument];
        if (v143)
        {
          v144 = v143;
          v145 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v147 = v146;
        }

        else
        {
          v145 = 0;
          v147 = 0xF000000000000000;
        }

        v187 = sub_1003A44B8(v145, v147, 0x636F447365746F6ELL, 0xED0000746E656D75);

        sub_100031A14(v145, v147);

        if (v187)
        {
          v188 = [v187 mutableDocument];
          v189 = [objc_allocWithZone(NSAttributedString) initWithString:v124];

          v190 = [v188 wipeAndReplaceWithString:v189];
          v124 = v189;
        }

        else
        {
          v191 = sub_1004D6FC8();
          if (!v191)
          {
            v83 = v335;
            v119 = v361;
LABEL_42:

            goto LABEL_43;
          }

          v188 = v191;
          v190 = [objc_allocWithZone(REMCRMergeableStringDocument) initWithReplicaIDSource:v191 string:v124];
        }

        v83 = v335;
        v119 = v361;

        if (v190)
        {
          v192 = [v190 serializedData];
          v193 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v195 = v194;

          v196 = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v193, v195);
          v197 = v362;
          [(REMCDObject *)v362 setNotesDocument:v196];

          v198 = [v190 attributedString];
          v199 = [v198 string];

          if (!v199)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v199 = String._bridgeToObjectiveC()();
          }

          [(REMCDObject *)v197 setNotes:v199];

          v119 = v361;
LABEL_41:
          v123 = String._bridgeToObjectiveC()();

          v124 = [v119 v121[508]];

          [v124 update];
          goto LABEL_42;
        }

LABEL_43:
        if (v120 != 29)
        {
          continue;
        }

        v200 = v362;
        v201 = [(REMCDObject *)v362 alarmStorage];
        v202 = v360;
        if (v201)
        {
          v203 = v201;
          if (qword_100935F38 != -1)
          {
            swift_once();
          }

          v204 = type metadata accessor for Logger();
          v205 = sub_100006654(v204, qword_1009441D0);
          v206 = v203;
          v359 = v205;
          v207 = Logger.logObject.getter();
          v208 = static os_log_type_t.info.getter();
          v209 = os_log_type_enabled(v207, v208);
          v210 = v358;
          if (v209)
          {
            v211 = swift_slowAlloc();
            *v211 = 134217984;
            *(v211 + 4) = [v206 count];

            _os_log_impl(&_mh_execute_header, v207, v208, "MERGE.LOCAL: ......removing original alarms of the cloud reminder {cloud.alarms.count: %ld}.", v211, 0xCu);
          }

          else
          {

            v207 = v206;
          }

          v357 = v206;
          NSOrderedSet.makeIterator()();
          NSFastEnumerationIterator.next()();
          while (v366)
          {
            sub_100005EE0(&v365, &v364);
            sub_1000060C8(0, &unk_100938870, off_1008D4128);
            if (swift_dynamicCast())
            {
              v212 = v363;
              [v363 setReminder:0];
              if ([v212 shouldMarkAsDeletedInsteadOfDeletingImmediately])
              {
                v213 = [objc_allocWithZone(NSMutableSet) init];
                [v212 recursiveMarkForDeletion:1 usingVisitedMap:v213];
              }

              else
              {
                v214 = Logger.logObject.getter();
                v215 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v214, v215))
                {
                  v216 = swift_slowAlloc();
                  *v216 = 0;
                  _os_log_impl(&_mh_execute_header, v214, v215, "MERGE.LOCAL: ......merge(withLocalObject): We expect alarms to support markForDeletion.", v216, 2u);
                  v202 = v360;
                }

                v210 = v358;
              }
            }

            NSFastEnumerationIterator.next()();
          }

          (*(v353 + 8))(v210, v354);
          v217 = v357;
          [(REMCDObject *)v200 removeAlarmStorage:v357];

          v83 = v335;
          v119 = v361;
        }

        v218 = [v83 alarmStorage];
        v219 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        if (!v218)
        {
          goto LABEL_153;
        }

        *&v365 = v218;
        v220 = v218;
        sub_1000060C8(0, &unk_100938870, off_1008D4128);
        v221 = sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
        v222 = Sequence.elements<A>(ofType:)();

        if (qword_100935F38 != -1)
        {
          swift_once();
        }

        v223 = type metadata accessor for Logger();
        sub_100006654(v223, qword_1009441D0);

        v224 = Logger.logObject.getter();
        v225 = static os_log_type_t.info.getter();
        v226 = v222 >> 62;
        if (!os_log_type_enabled(v224, v225))
        {

          v200 = v362;
          goto LABEL_122;
        }

        v221 = swift_slowAlloc();
        *v221 = 134217984;
        if (v226)
        {
          goto LABEL_201;
        }

        v227 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
        break;
      case 21:
        v130 = *v352;
        v131 = v356;
        v132 = v121;
        v133 = v357;
        (*v352)(v356, v349, v357);
        v134 = REMFeatureFlags.isEnabled.getter();
        v135 = *v351;
        v136 = v133;
        v121 = v132;
        (*v351)(v131, v136);
        if ((v134 & 1) == 0)
        {
          goto LABEL_43;
        }

        v137 = v356;
        v138 = v357;
        v130(v356, v333, v357);
        v139 = REMFeatureFlags.isEnabled.getter();
        v140 = v138;
        v121 = v132;
        v135(v137, v140);
        if ((v139 & 1) == 0)
        {
          goto LABEL_43;
        }

        v141 = [v83 prefersUrgentPresentationStyleForDateAlarms];
        [(REMCDObject *)v362 setPrefersUrgentPresentationStyleForDateAlarms:v141];
        goto LABEL_41;
      case 22:
        v182 = [v83 priority];
        [(REMCDObject *)v362 setPriority:v182];
        goto LABEL_41;
      case 24:
        v183 = [v83 startDate];
        if (v183)
        {
          v184 = v346;
          v185 = v183;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v186.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v355)(v184, v340);
        }

        else
        {
          v186.super.isa = 0;
        }

        [(REMCDObject *)v362 setStartDate:v186.super.isa];

        goto LABEL_41;
      case 28:
        v176 = [v83 userActivity];
        if (v176)
        {
          v177 = v176;
          v178 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v180 = v179;

          v181.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v178, v180);
        }

        else
        {
          v181.super.isa = 0;
        }

        [(REMCDObject *)v362 setUserActivity:v181.super.isa];

        goto LABEL_41;
      default:
        goto LABEL_43;
    }

    break;
  }

  while (1)
  {
    v200 = v362;
    *(v221 + 4) = v227;

    _os_log_impl(&_mh_execute_header, v224, v225, "MERGE.LOCAL: ......adding local alarms to the cloud reminder {local.alarms.count: %ld}.", v221, 0xCu);

LABEL_122:
    if (v226)
    {
      v224 = _CocoaArrayWrapper.endIndex.getter();
      if (!v224)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v224 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v224)
      {
        goto LABEL_152;
      }
    }

    if (v224 < 1)
    {
      __break(1u);
      goto LABEL_200;
    }

    v228 = 0;
    do
    {
      if ((v222 & 0xC000000000000001) != 0)
      {
        v229 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v229 = *(v222 + 8 * v228 + 32);
      }

      v230 = v229;
      ++v228;
      [(REMCDObject *)v200 addAlarmStorageObject:v229];
      [v230 setReminder:v200];
      [v230 v219[293]];
    }

    while (v224 != v228);
LABEL_152:

    v83 = v335;
    v202 = v360;
    v119 = v361;
LABEL_153:
    v278 = [(REMCDObject *)v200 recurrenceRules];
    if (v278)
    {
      v279 = v278;
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v280 = type metadata accessor for Logger();
      v281 = sub_100006654(v280, qword_1009441D0);
      v282 = v279;
      v359 = v281;
      v283 = Logger.logObject.getter();
      v284 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v283, v284))
      {
        v285 = swift_slowAlloc();
        *v285 = 134217984;
        *(v285 + 4) = [v282 count];

        _os_log_impl(&_mh_execute_header, v283, v284, "MERGE.LOCAL: ......removing original recurrence rules of the cloud reminder {cloud.rrules.count: %ld}.", v285, 0xCu);
      }

      else
      {

        v283 = v282;
      }

      v358 = v282;
      NSOrderedSet.makeIterator()();
      NSFastEnumerationIterator.next()();
      if (v366)
      {
        v286 = &qword_100940C50;
        v287 = &type metadata for Any;
        v288 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        v289 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        do
        {
          sub_100005EE0(&v365, &v364);
          sub_1000060C8(0, v286, off_1008D41C8);
          if (swift_dynamicCast())
          {
            v290 = v363;
            [v363 v288[6]];
            if ([v290 v289[121]])
            {
              v291 = [objc_allocWithZone(NSMutableSet) init];
              [v290 recursiveMarkForDeletion:1 usingVisitedMap:v291];
            }

            else
            {
              v292 = v287;
              v293 = v286;
              v294 = v289;
              v295 = v288;
              v296 = v219;
              v297 = Logger.logObject.getter();
              v298 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v297, v298))
              {
                v299 = swift_slowAlloc();
                *v299 = 0;
                _os_log_impl(&_mh_execute_header, v297, v298, "merge(withLocalObject): We do actually expect recurrence-rules to support markForDeletion.", v299, 2u);
                v202 = v360;
              }

              v219 = v296;
              v288 = v295;
              v289 = v294;
              v286 = v293;
              v287 = v292;
              v200 = v362;
            }
          }

          NSFastEnumerationIterator.next()();
        }

        while (v366);
      }

      (*(v353 + 8))(v202, v354);
      v300 = v358;
      [(REMCDObject *)v200 removeRecurrenceRules:v358];

      v83 = v335;
      v119 = v361;
    }

    v301 = [v83 recurrenceRules];
    if (!v301)
    {
      goto LABEL_187;
    }

    *&v365 = v301;
    v302 = v301;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v221 = sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr);
    v222 = Sequence.elements<A>(ofType:)();

    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v303 = type metadata accessor for Logger();
    sub_100006654(v303, qword_1009441D0);

    v304 = Logger.logObject.getter();
    v225 = static os_log_type_t.info.getter();
    v226 = v222 >> 62;
    if (os_log_type_enabled(v304, v225))
    {
      v221 = swift_slowAlloc();
      *v221 = 134217984;
      v305 = v226 ? _CocoaArrayWrapper.endIndex.getter() : *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v200 = v362;
      *(v221 + 4) = v305;

      _os_log_impl(&_mh_execute_header, v304, v225, "MERGE.LOCAL: ......adding local recurrence rules to the cloud reminder {local.rrules.count: %ld}.", v221, 0xCu);
    }

    else
    {

      v200 = v362;
    }

    if (v226)
    {
      v224 = _CocoaArrayWrapper.endIndex.getter();
      if (!v224)
      {
        goto LABEL_186;
      }
    }

    else
    {
      v224 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v224)
      {
        goto LABEL_186;
      }
    }

    if (v224 >= 1)
    {
      break;
    }

LABEL_200:
    __break(1u);
LABEL_201:
    v227 = _CocoaArrayWrapper.endIndex.getter();
  }

  v306 = 0;
  do
  {
    if ((v222 & 0xC000000000000001) != 0)
    {
      v307 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v307 = *(v222 + 8 * v306 + 32);
    }

    v308 = v307;
    ++v306;
    [(REMCDObject *)v200 addRecurrenceRulesObject:v307];
    [v308 setReminder:v200];
    [v308 v219[293]];
  }

  while (v224 != v306);
LABEL_186:

  v83 = v335;
  v119 = v361;
LABEL_187:
  [v200 v219[293]];
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v309 = type metadata accessor for Logger();
  sub_100006654(v309, qword_1009441D0);
  v310 = v336;
  v311 = v200;
  v312 = Logger.logObject.getter();
  v313 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v312, v313))
  {
    v314 = swift_slowAlloc();
    *&v365 = swift_slowAlloc();
    *v314 = 136446466;
    v315 = [v83 remObjectID];
    if (v315)
    {
      v316 = v315;
      v317 = [v315 description];

      v318 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v320 = v319;
    }

    else
    {
      v320 = 0xE300000000000000;
      v318 = 7104878;
    }

    v321 = sub_10000668C(v318, v320, &v365);

    *(v314 + 4) = v321;
    *(v314 + 12) = 2082;
    v322 = [(REMCDObject *)v311 remObjectID];
    if (v322)
    {
      v323 = v322;
      v324 = [(REMObjectID *)v322 description];

      v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v327 = v326;
    }

    else
    {
      v327 = 0xE300000000000000;
      v325 = 7104878;
    }

    v328 = sub_10000668C(v325, v327, &v365);

    *(v314 + 14) = v328;
    _os_log_impl(&_mh_execute_header, v312, v313, "MERGE.LOCAL: ...done merging local reminder to the cloud reminder, now delete the local object {local.reminder: %{public}s, cloud.reminder: %{public}s}", v314, 0x16u);
    swift_arrayDestroy();

    v83 = v335;
    v119 = v361;
  }

  else
  {
  }

  v329 = [v83 list];
  [v329 removeRemindersObject:v83];

  v330 = v337;
  [v337 deleteObject:v83];

  LOBYTE(v52) = 1;
  return v52;
}

id sub_1003A4078(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_100029344(a1, a2);
    v10 = sub_1004D6FC8();
    if (v10)
    {
      v11 = v10;
      v12 = objc_allocWithZone(REMCRMergeableOrderedSet);
      sub_1001CB4B8(a1, a2);
      v21 = sub_1002F937C(v11);
      sub_100031A14(a1, a2);

      sub_100031A14(a1, a2);
      return v21;
    }

    else
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_10094A590);
      v14 = v4;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v22 = v19;
        *v17 = 136446466;
        *(v17 + 4) = sub_10000668C(a3, a4, &v22);
        *(v17 + 12) = 2112;
        *(v17 + 14) = v14;
        *v18 = v14;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "Unable to deserialize CR property from CKRecord because replicaIDSource isn't available {key: %{public}s, cdObject: %@}", v17, 0x16u);
        sub_1000050A4(v18, &unk_100938E70, &unk_100797230);

        sub_10000607C(v19);
      }

      sub_100031A14(a1, a2);

      return 0;
    }
  }

  return result;
}

id sub_1003A44B8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_100029344(a1, a2);
    v10 = sub_1004D6FC8();
    if (v10)
    {
      v11 = v10;
      v12 = objc_allocWithZone(REMCRMergeableStringDocument);
      sub_1001CB4B8(a1, a2);
      v21 = sub_1002F937C(v11);
      sub_100031A14(a1, a2);
      sub_100031A14(a1, a2);

      return v21;
    }

    else
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_10094A590);
      v14 = v4;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v22 = v19;
        *v17 = 136446466;
        *(v17 + 4) = sub_10000668C(a3, a4, &v22);
        *(v17 + 12) = 2112;
        *(v17 + 14) = v14;
        *v18 = v14;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "Unable to deserialize CR property from CKRecord because replicaIDSource isn't available {key: %{public}s, cdObject: %@}", v17, 0x16u);
        sub_1000050A4(v18, &unk_100938E70, &unk_100797230);

        sub_10000607C(v19);
      }

      sub_100031A14(a1, a2);

      return 0;
    }
  }

  return result;
}

void *REMCDReminder.objectsToBeDeletedBeforeThisObject()()
{
  v1 = v0;
  v2 = [v0 recurrenceRules];
  if (v2)
  {
    sub_100272574(v2);
  }

  v3 = [v0 attachments];
  if (v3)
  {
    sub_100272574(v3);
  }

  v4 = [v0 alarmStorage];
  if (v4)
  {
    sub_100272574(v4);
  }

  v5 = [v0 children];
  if (v5)
  {
    v6 = v5;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0);
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_10027888C(v7);

    v9 = sub_100271258(v8);

    sub_100271468(v9);
  }

  v10 = [v1 assignments];
  if (v10)
  {
    v11 = v10;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_10000CDE4(&qword_10093CC38, &unk_10093F790, off_1008D4158);
    v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = sub_100278A1C(v12);

    v14 = sub_10027126C(v13);

    sub_100271468(v14);
  }

  v15 = [v1 hashtags];
  if (v15)
  {
    v16 = v15;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190);
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = sub_100278954(v17);

    v19 = sub_100271280(v18);

    sub_100271468(v19);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall REMCDReminder.fixBrokenReferences()()
{
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009441D0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = &selRef_hack_willSaveHandled;
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_19;
  }

  v6 = swift_slowAlloc();
  v80 = swift_slowAlloc();
  *v6 = 136315650;
  v7 = [v2 remObjectID];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 description];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v5 = &selRef_hack_willSaveHandled;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  v13 = sub_10000668C(v10, v12, &v80);

  *(v6 + 4) = v13;
  *(v6 + 12) = 2082;
  v14 = [v2 list];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 remObjectID];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 description];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v5 = &selRef_hack_willSaveHandled;
      v22 = v19;
      goto LABEL_13;
    }
  }

  v21 = 0xE300000000000000;
  v22 = 7104878;
LABEL_13:
  v23 = sub_10000668C(v22, v21, &v80);

  *(v6 + 14) = v23;
  *(v6 + 22) = 2082;
  v24 = [v2 parentReminder];
  v25 = 7104878;
  if (!v24)
  {
LABEL_17:
    v31 = 0xE300000000000000;
    goto LABEL_18;
  }

  v26 = v24;
  v27 = [v24 remObjectID];
  if (!v27)
  {

    goto LABEL_17;
  }

  v28 = v27;
  v29 = [v27 description];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

LABEL_18:
  v32 = sub_10000668C(v25, v31, &v80);

  *(v6 + 24) = v32;
  _os_log_impl(&_mh_execute_header, v3, v4, "Fixing broken references for reminder {reminderID: %s, list: %{public}s, parentReminder: %{public}s}", v6, 0x20u);
  swift_arrayDestroy();

LABEL_19:
  v33 = [v2 list];
  p_attr = (&stru_100923FF8 + 8);
  if (v33)
  {
    v35 = v33;
    if ([v33 markedForDeletion] && (objc_msgSend(v2, "markedForDeletion") & 1) == 0)
    {
      v36 = v2;
      v37 = v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v77 = v39;
        v40 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v40 = 136446466;
        v41 = &selRef_persistentStoreForIdentifier_;
        v78 = v36;
        v42 = [v36 remObjectID];
        if (v42)
        {
          v43 = v42;
          v44 = [v42 description];

          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          v41 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v47 = 0xE300000000000000;
          v45 = 7104878;
        }

        log = v38;
        v48 = sub_10000668C(v45, v47, &v80);

        *(v40 + 4) = v48;
        *(v40 + 12) = 2082;
        v49 = [v37 v41[106]];
        if (v49)
        {
          v50 = v49;
          v51 = [v49 description];

          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          v36 = v78;
          v5 = &selRef_hack_willSaveHandled;
        }

        else
        {
          v54 = 0xE300000000000000;
          v36 = v78;
          v5 = &selRef_hack_willSaveHandled;
          v52 = 7104878;
        }

        v55 = sub_10000668C(v52, v54, &v80);

        *(v40 + 14) = v55;
        _os_log_impl(&_mh_execute_header, log, v77, "List is marked for deletion but this reminer is not {reminderID: %{public}s, list: %{public}s}", v40, 0x16u);
        swift_arrayDestroy();

        p_attr = &stru_100923FF8.attr;
      }

      else
      {

        v5 = &selRef_hack_willSaveHandled;
      }

      [v36 markForDeletion];
    }

    [v35 p_attr[493]];
  }

  v56 = [v2 v5[489]];
  if (v56)
  {
    v79 = v56;
    if ([v56 markedForDeletion] && (objc_msgSend(v2, "markedForDeletion") & 1) == 0)
    {
      v57 = v2;
      v58 = v79;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v61 = 136446466;
        v62 = [v57 remObjectID];
        if (v62)
        {
          v63 = v62;
          v64 = [v62 description];

          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;
        }

        else
        {
          v67 = 0xE300000000000000;
          v65 = 7104878;
        }

        v68 = sub_10000668C(v65, v67, &v80);

        *(v61 + 4) = v68;
        *(v61 + 12) = 2082;
        v69 = [v58 remObjectID];
        if (v69)
        {
          v70 = v69;
          v71 = [v69 description];

          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v73;
        }

        else
        {
          v74 = 0xE300000000000000;
          v72 = 7104878;
        }

        v75 = sub_10000668C(v72, v74, &v80);

        *(v61 + 14) = v75;
        _os_log_impl(&_mh_execute_header, v59, v60, "Parent reminder is marked for deletion but this reminer is not {reminderID: %{public}s, parentReminder: %{public}s}", v61, 0x16u);
        swift_arrayDestroy();

        p_attr = &stru_100923FF8.attr;
      }

      else
      {
      }

      [v57 markForDeletion];
    }

    [v79 p_attr[493]];
  }
}

uint64_t sub_1003A54EC(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v77 - v14;
  v16 = [v4 parentReminder];
  if (v16)
  {
    v17 = v16;
    v18 = &selRef_accountStatusWithCompletionHandler_;
    if ((a3 & 1) != 0 && ([v16 markedForDeletion] & 1) == 0)
    {
      v78 = v11;
      v79 = a1;
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006654(v19, qword_1009441D0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "canSkipFixupReminderTree: Parent changed list. Need to validate siblings.", v22, 2u);
        v18 = &selRef_accountStatusWithCompletionHandler_;
      }

      v23 = [v4 list];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 objectID];
        v26 = [v25 URIRepresentation];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = &selRef_accountStatusWithCompletionHandler_;

        v27 = type metadata accessor for URL();
        (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
      }

      else
      {
        v28 = type metadata accessor for URL();
        (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
      }

      a1 = v79;
      v29 = [v17 v18[155]];
      if (v29)
      {
        v30 = v29;
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0);
        v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        __chkstk_darwin(v32);
        *(&v77 - 2) = v15;
        sub_10032E104(sub_1003A9DA0, (&v77 - 4), v31);
        v34 = v33;

        if (v34)
        {
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v35, v36, "canSkipFixupReminderTree: Sibling list mismatch. Need to fixup.", v37, 2u);
          }

          v38 = v15;
LABEL_62:
          sub_1000050A4(v38, &unk_1009441F0, &qword_100795760);
          return 0;
        }

        a1 = v79;
        v18 = &selRef_accountStatusWithCompletionHandler_;
      }

      sub_1000050A4(v15, &unk_1009441F0, &qword_100795760);
      v11 = v78;
    }

    v39 = [v4 v18[155]];
    if (v39)
    {
      v40 = v39;
      v79 = 0;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0);
      v41 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = (v41 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v41 + 16);

      if (v42)
      {
        goto LABEL_25;
      }
    }

    v43 = [v17 parentReminder];
    if (v43)
    {

LABEL_25:
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100006654(v44, qword_1009441D0);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "canSkipFixupReminderTree: Multiple layers of subtasks. Need to flatten.", v47, 2u);
      }

      return 0;
    }
  }

  if ((a2 & 1) == 0 || ([v4 markedForDeletion] & 1) != 0 || (v49 = objc_msgSend(v4, "children")) == 0)
  {
LABEL_44:
    if (!a1)
    {
      return 1;
    }

    goto LABEL_45;
  }

  v50 = v49;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0);
  v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v51 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  if (!*(v51 + 16))
  {
LABEL_43:

    goto LABEL_44;
  }

LABEL_36:
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100006654(v52, qword_1009441D0);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "canSkipFixupReminderTree: List changed and has children. Need to validate children.", v55, 2u);
  }

  v56 = [v4 list];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
    v59 = [v58 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v70 = type metadata accessor for URL();
  v71 = (*(*(v70 - 8) + 56))(v11, v60, 1, v70);
  __chkstk_darwin(v71);
  *(&v77 - 2) = v11;
  sub_10032E104(sub_1003A9A78, (&v77 - 4), v51);
  v73 = v72;

  if (v73)
  {
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "canSkipFixupReminderTree: Child list mismatch. Need to fixup.", v76, 2u);
    }

    v38 = v11;
    goto LABEL_62;
  }

  sub_1000050A4(v11, &unk_1009441F0, &qword_100795760);
  if (!a1)
  {
    return 1;
  }

LABEL_45:
  v61 = a1;
  v62 = [v61 children];
  if (!v62 || ((v63 = v62, sub_1000060C8(0, &qword_100939EE0, off_1008D41D0), sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0), v64 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v63, (v64 & 0xC000000000000001) == 0) ? (v65 = *(v64 + 16)) : (v65 = __CocoaSet.count.getter()), , !v65))
  {

    return 1;
  }

  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100006654(v66, qword_1009441D0);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "canSkipFixupReminderTree: Moving across parent. We can't skip the validation because self's children may have been flattened to siblings in previous saves.", v69, 2u);
  }

  return 0;
}

uint64_t sub_1003A5F94(id *a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v30 - v17;
  v19 = [*a1 list];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 objectID];
    v22 = [v21 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v4 + 56))(v18, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v18, 1, 1, v3);
  }

  v23 = *(v7 + 48);
  sub_100010364(v18, v10, &unk_1009441F0, &qword_100795760);
  sub_100010364(v31, &v10[v23], &unk_1009441F0, &qword_100795760);
  v24 = *(v4 + 48);
  if (v24(v10, 1, v3) != 1)
  {
    sub_100010364(v10, v14, &unk_1009441F0, &qword_100795760);
    if (v24(&v10[v23], 1, v3) != 1)
    {
      v26 = v30;
      (*(v4 + 32))(v30, &v10[v23], v3);
      sub_1003A99EC(&unk_100944080, &type metadata accessor for URL);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v4 + 8);
      v28(v26, v3);
      sub_1000050A4(v18, &unk_1009441F0, &qword_100795760);
      v28(v14, v3);
      sub_1000050A4(v10, &unk_1009441F0, &qword_100795760);
      v25 = v27 ^ 1;
      return v25 & 1;
    }

    sub_1000050A4(v18, &unk_1009441F0, &qword_100795760);
    (*(v4 + 8))(v14, v3);
    goto LABEL_9;
  }

  sub_1000050A4(v18, &unk_1009441F0, &qword_100795760);
  if (v24(&v10[v23], 1, v3) != 1)
  {
LABEL_9:
    sub_1000050A4(v10, &unk_100944250, &qword_1007957B0);
    v25 = 1;
    return v25 & 1;
  }

  sub_1000050A4(v10, &unk_1009441F0, &qword_100795760);
  v25 = 0;
  return v25 & 1;
}

void sub_1003A63E4(void *a1)
{
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_1009441D0);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315650;
    [v3 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v20);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = [v3 parentReminder];
    if (v9)
    {
      v10 = v9;
      [v9 remObjectID];
    }

    v11 = String.init<A>(describing:)();
    v13 = sub_10000668C(v11, v12, &v20);

    *(v5 + 14) = v13;
    *(v5 + 22) = 2080;
    v14 = [v3 list];
    if (v14)
    {
      v15 = v14;
      [v14 remObjectID];
    }

    v16 = String.init<A>(describing:)();
    v18 = sub_10000668C(v16, v17, &v20);

    *(v5 + 24) = v18;
    _os_log_impl(&_mh_execute_header, oslog, v4, "validateAndFixupReminderTree END {objectID: %s, parentID: %s, listID: %s}", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t *sub_1003A66A8(uint64_t a1, void *a2)
{
  sub_1003A8724(a1);
  v28 = v4;
  v5 = [a2 recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [swift_getObjCClassFromMetadata() ckIdentifierFromRecordName:v6];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_10039646C();
  if (v12)
  {
    sub_10031D9C4(v11, v12, v8, v10);
  }

  else
  {
    sub_100368F18(v8, v10);
  }

  v13 = *(a1 + 64);
  v27 = _swiftEmptyDictionarySingleton;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v18 = v28;

  for (i = 0; v16; result = )
  {
    v21 = i;
LABEL_14:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = (*(a1 + 48) + ((v21 << 10) | (16 * v22)));
    v24 = *v23;
    v25 = v23[1];
    v26 = _swiftEmptySetSingleton;

    sub_1003A898C(v24, v25, v18, &v27, &v26);
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      return v27;
    }

    v16 = *(a1 + 64 + 8 * v21);
    ++i;
    if (v16)
    {
      i = v21;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1003A68DC(id *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = __chkstk_darwin(v2).n128_u64[0];
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 objectID];
  v9 = [v8 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003A99EC(&unk_100944080, &type metadata accessor for URL);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v7, v2);
  return (v10 & 1) == 0;
}

uint64_t sub_1003A6A50(unint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v173 = a5;
  v161 = a4;
  v172 = a3;
  v186 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  v9 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v171 = v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v170 = v157 - v12;
  v13 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v177 = v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v157 - v17;
  __chkstk_darwin(v19);
  v21 = v157 - v20;
  __chkstk_darwin(v22);
  v185 = v157 - v23;
  __chkstk_darwin(v24);
  v176 = v157 - v25;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v169 = v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v178 = v157 - v31;
  __chkstk_darwin(v32);
  v188 = v157 - v33;
  if (a1 >> 62)
  {
    goto LABEL_86;
  }

  v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = swift_beginAccess();
  if (v34)
  {
    v168 = a1 & 0xC000000000000001;
    v167 = a1 & 0xFFFFFFFFFFFFFF8;
    v190 = (v27 + 8);
    v183 = (v27 + 56);
    v184 = (v27 + 16);
    v37 = (v27 + 48);
    v159 = (v27 + 32);
    v27 = 0;
    v158 = "mismatches ckZoneOwnerName";
    v157[1] = "fferent in child[";
    *&v36 = 136315138;
    v174 = v36;
    v166 = a6;
    v165 = a2;
    v175 = v18;
    v160 = v21;
    v163 = v34;
    v164 = a1;
    v192 = v26;
    v179 = v37;
    while (1)
    {
      if (v168)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v39 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v27 >= *(v167 + 16))
        {
          goto LABEL_85;
        }

        v38 = *(a1 + 8 * v27 + 32);
        v39 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v34 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v181 = v39;
      v182 = v27;
      v40 = v38;
      v41 = [v40 objectID];
      v42 = [v41 URIRepresentation];

      v43 = v188;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = *a2;

      LOBYTE(v42) = sub_100241240(v43, v44);

      if (v42)
      {

        return (*v190)(v43, v192);
      }

      v45 = *v184;
      v46 = v169;
      v47 = v192;
      (*v184)(v169, v43, v192);
      swift_beginAccess();
      v48 = v178;
      sub_10037DD44(v178, v46);
      swift_endAccess();
      v189 = *v190;
      v189(v48, v47);
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      v50 = sub_100006654(v49, qword_1009441D0);
      v51 = v40;
      v187 = v50;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v185;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v195 = v57;
        *v56 = v174;
        v58 = [v51 remObjectID];
        v193 = v58;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v59 = Optional.descriptionOrNil.getter();
        v61 = v60;

        v62 = sub_10000668C(v59, v61, &v195);

        *(v56 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v52, v53, "validateAndFixupReminderTree: ...Going to update child. {objectID: %s}", v56, 0xCu);
        sub_10000607C(v57);

        v55 = v185;
      }

      v63 = v179;
      v64 = [v51 parentReminder];
      if (v64)
      {
        v65 = v64;
        v66 = [v64 objectID];
        v67 = [v66 URIRepresentation];

        v68 = v176;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = 0;
      }

      else
      {
        v69 = 1;
        v68 = v176;
      }

      v70 = *v183;
      v26 = v192;
      (*v183)(v68, v69, 1, v192);
      v45(v55, v172, v26);
      v180 = v70;
      v70(v55, 0, 1, v26);
      v71 = *(v186 + 48);
      v72 = v170;
      sub_100010364(v68, v170, &unk_1009441F0, &qword_100795760);
      sub_100010364(v55, v72 + v71, &unk_1009441F0, &qword_100795760);
      v73 = *v63;
      v74 = (*v63)(v72, 1, v26);
      v191 = v51;
      if (v74 == 1)
      {
        break;
      }

      v75 = v160;
      sub_100010364(v72, v160, &unk_1009441F0, &qword_100795760);
      v162 = v73;
      if (v73(v72 + v71, 1, v26) == 1)
      {
        sub_1000050A4(v185, &unk_1009441F0, &qword_100795760);
        sub_1000050A4(v68, &unk_1009441F0, &qword_100795760);
        v189(v75, v26);
        v73 = v162;
        goto LABEL_24;
      }

      v103 = v178;
      (*v159)(v178, v72 + v71, v26);
      sub_1003A99EC(&unk_100944080, &type metadata accessor for URL);
      v104 = dispatch thunk of static Equatable.== infix(_:_:)();
      v105 = v189;
      v189(v103, v26);
      sub_1000050A4(v185, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v176, &unk_1009441F0, &qword_100795760);
      v105(v75, v26);
      v51 = v191;
      sub_1000050A4(v72, &unk_1009441F0, &qword_100795760);
      v18 = v175;
      v73 = v162;
      if ((v104 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_29:
      v86 = [v51 list];
      if (v86)
      {
        v87 = v86;
        v88 = [v86 objectID];
        v89 = [v88 URIRepresentation];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v192;
        v90 = 0;
      }

      else
      {
        v90 = 1;
      }

      a6 = v177;
      v180(v18, v90, 1, v26);
      v91 = *(v186 + 48);
      v21 = v171;
      sub_100010364(v18, v171, &unk_1009441F0, &qword_100795760);
      sub_100010364(v173, &v21[v91], &unk_1009441F0, &qword_100795760);
      if (v73(v21, 1, v26) == 1)
      {
        sub_1000050A4(v18, &unk_1009441F0, &qword_100795760);
        v92 = v73(&v21[v91], 1, v26);
        v93 = v166;
        a1 = v164;
        if (v92 == 1)
        {
          v94 = v191;

          sub_1000050A4(v21, &unk_1009441F0, &qword_100795760);
LABEL_47:
          a2 = v165;
          v102 = v188;
          goto LABEL_7;
        }

        goto LABEL_37;
      }

      sub_100010364(v21, a6, &unk_1009441F0, &qword_100795760);
      v95 = v73(&v21[v91], 1, v26);
      v93 = v166;
      if (v95 == 1)
      {
        sub_1000050A4(v18, &unk_1009441F0, &qword_100795760);
        v189(a6, v26);
        a1 = v164;
LABEL_37:
        sub_1000050A4(v21, &unk_100944250, &qword_1007957B0);
        goto LABEL_38;
      }

      v106 = v178;
      (*v159)(v178, &v21[v91], v26);
      sub_1003A99EC(&unk_100944080, &type metadata accessor for URL);
      v107 = dispatch thunk of static Equatable.== infix(_:_:)();
      v108 = v106;
      v109 = v189;
      a6 = v190;
      v189(v108, v26);
      sub_1000050A4(v18, &unk_1009441F0, &qword_100795760);
      v109(v177, v26);
      sub_1000050A4(v21, &unk_1009441F0, &qword_100795760);
      a1 = v164;
      if (v107)
      {
        v110 = v191;

        goto LABEL_47;
      }

LABEL_38:
      v18 = v93;
      a6 = v187;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();

      v98 = os_log_type_enabled(v96, v97);
      v21 = v191;
      if (v98)
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v195 = v100;
        *v99 = v174;
        if (v93)
        {
          v101 = [v18 remObjectID];
        }

        else
        {
          v101 = 0;
        }

        v193 = v101;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v111 = Optional.descriptionOrNil.getter();
        v113 = v112;

        a6 = sub_10000668C(v111, v113, &v195);

        *(v99 + 4) = a6;
        _os_log_impl(&_mh_execute_header, v96, v97, "validateAndFixupReminderTree: ......Updated {child.list: %s}", v99, 0xCu);
        sub_10000607C(v100);

        v21 = v191;
        v26 = v192;
        v102 = v188;
        if (v93)
        {
LABEL_50:
          v114 = v18;
          v115 = [v21 ckZoneOwnerName];
          if (v115)
          {
            v116 = v115;
            a6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v118 = v117;

            v21 = v191;
          }

          else
          {
            a6 = 0;
            v118 = 0;
          }

          v119 = v114;
          v120 = [v119 ckZoneOwnerName];
          a2 = v165;
          if (v120)
          {
            v121 = v120;
            v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v124 = v123;

            if (v118)
            {
              v21 = v191;
              if (!v124)
              {
                goto LABEL_62;
              }

              if (a6 == v122 && v118 == v124)
              {

LABEL_78:
                v26 = v192;
                v102 = v188;
                goto LABEL_6;
              }

              a6 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((a6 & 1) == 0)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v21 = v191;
              if (v124)
              {
LABEL_62:

LABEL_63:
                v195 = 0;
                v196 = 0xE000000000000000;
                _StringGuts.grow(_:)(100);
                v125._countAndFlagsBits = 0xD000000000000031;
                v125._object = (v158 | 0x8000000000000000);
                String.append(_:)(v125);
                v126 = [v21 remObjectID];
                if (v126)
                {
                  v127 = v126;
                  v128 = [v126 description];

                  v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v131 = v130;
                }

                else
                {
                  v131 = 0xE300000000000000;
                  v129 = 7104878;
                }

                v132._countAndFlagsBits = v129;
                v132._object = v131;
                String.append(_:)(v132);

                v133._countAndFlagsBits = 0x4E72656E776F205DLL;
                v133._object = 0xEE00203D20656D61;
                String.append(_:)(v133);
                v134 = [v21 ckZoneOwnerName];

                if (v134)
                {
                  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v137 = v136;
                }

                else
                {
                  v135 = 0;
                  v137 = 0;
                }

                v193 = v135;
                v194 = v137;
                sub_1000F5104(&unk_100939E40, &qword_100791BD0);
                v138._countAndFlagsBits = String.init<A>(describing:)();
                String.append(_:)(v138);

                v139._countAndFlagsBits = 0x6E6572727563202CLL;
                v139._object = 0xEE005B7473694C74;
                String.append(_:)(v139);
                v140 = [v119 remObjectID];
                if (v140)
                {
                  v141 = v140;
                  v142 = [v140 description];

                  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v145 = v144;
                }

                else
                {
                  v145 = 0xE300000000000000;
                  v143 = 7104878;
                }

                v146._countAndFlagsBits = v143;
                v146._object = v145;
                String.append(_:)(v146);

                v147._countAndFlagsBits = 0x72656E6E776F205DLL;
                v147._object = 0xEF203D20656D614ELL;
                String.append(_:)(v147);
                v148 = [v119 ckZoneOwnerName];

                if (v148)
                {
                  v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v151 = v150;
                }

                else
                {
                  v149 = 0;
                  v151 = 0;
                }

                v193 = v149;
                v194 = v151;
                v152._countAndFlagsBits = String.init<A>(describing:)();
                String.append(_:)(v152);

                a6 = v196;
                v153 = objc_opt_self();
                v154 = String._bridgeToObjectiveC()();
                v155 = String._bridgeToObjectiveC()();
                v156 = String._bridgeToObjectiveC()();

                [v153 faultAndPromptToFileRadarWithICTap2RadarType:4 title:v154 description:v155 logMessage:v156];

                v21 = v191;
                v26 = v192;
                v102 = v188;
                goto LABEL_6;
              }
            }
          }

          else if (v118)
          {
            goto LABEL_62;
          }

          goto LABEL_78;
        }
      }

      else
      {

        v102 = v188;
        if (v93)
        {
          goto LABEL_50;
        }
      }

      a2 = v165;
LABEL_6:
      [v21 setList:v18];

LABEL_7:
      result = v189(v102, v26);
      v27 = v182 + 1;
      if (v181 == v163)
      {
        return result;
      }
    }

    sub_1000050A4(v55, &unk_1009441F0, &qword_100795760);
    sub_1000050A4(v68, &unk_1009441F0, &qword_100795760);
    if (v73(v72 + v71, 1, v26) == 1)
    {
      sub_1000050A4(v72, &unk_1009441F0, &qword_100795760);
    }

    else
    {
LABEL_24:
      sub_1000050A4(v72, &unk_100944250, &qword_1007957B0);
LABEL_25:
      v76 = v161;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v195 = v80;
        *v79 = v174;
        v81 = [v76 remObjectID];
        v193 = v81;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v82 = Optional.descriptionOrNil.getter();
        v84 = v83;

        v85 = sub_10000668C(v82, v84, &v195);
        v51 = v191;

        *(v79 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v77, v78, "validateAndFixupReminderTree: ......Updated {child.parent: %s}", v79, 0xCu);
        sub_10000607C(v80);
      }

      [v51 setParentReminder:v76];
      v26 = v192;
    }

    v18 = v175;
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1003A7E20(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v82 = a3;
  v85 = sub_1000F5104(&unk_100944250, &qword_1007957B0);
  v6 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v80 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v83 = &v70[-v9];
  v10 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v76 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v79 = &v70[-v14];
  __chkstk_darwin(v15);
  v81 = &v70[-v16];
  __chkstk_darwin(v17);
  v19 = &v70[-v18];
  __chkstk_darwin(v20);
  v86 = &v70[-v21];
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v70[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *a1;
  swift_beginAccess();
  v28 = *a2;

  v29 = [v27 objectID];
  v30 = [v29 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v30) = sub_100241240(v26, v28);

  v84 = v23;
  v33 = *(v23 + 8);
  v32 = v23 + 8;
  v31 = v33;
  v77 = v26;
  v33(v26, v22);
  if (v30)
  {
    goto LABEL_12;
  }

  v75 = v31;
  v34 = [v27 parentReminder];
  v74 = v27;
  if (v34)
  {
    v35 = v34;
    v36 = [v34 objectID];
    v37 = [v36 URIRepresentation];

    v38 = v86;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
    v40 = v83;
  }

  else
  {
    v39 = 1;
    v40 = v83;
    v38 = v86;
  }

  v41 = v84;
  v42 = v84 + 56;
  v43 = *(v84 + 56);
  v43(v38, v39, 1, v22);
  (*(v41 + 16))(v19, v82, v22);
  v82 = v42;
  v73 = v43;
  v43(v19, 0, 1, v22);
  v44 = *(v85 + 48);
  sub_100010364(v38, v40, &unk_1009441F0, &qword_100795760);
  sub_100010364(v19, v40 + v44, &unk_1009441F0, &qword_100795760);
  v45 = *(v41 + 48);
  if (v45(v40, 1, v22) == 1)
  {
    v83 = v45;
    sub_1000050A4(v19, &unk_1009441F0, &qword_100795760);
    sub_1000050A4(v38, &unk_1009441F0, &qword_100795760);
    if (v83(v40 + v44, 1, v22) == 1)
    {
      sub_1000050A4(v40, &unk_1009441F0, &qword_100795760);
      v46 = v74;
      goto LABEL_15;
    }
  }

  else
  {
    v47 = v81;
    sub_100010364(v40, v81, &unk_1009441F0, &qword_100795760);
    if (v45(v40 + v44, 1, v22) != 1)
    {
      v83 = v45;
      v53 = v77;
      (*(v84 + 32))(v77, v40 + v44, v22);
      sub_1003A99EC(&unk_100944080, &type metadata accessor for URL);
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = v53;
      v55 = v75;
      v75(v54, v22);
      sub_1000050A4(v19, &unk_1009441F0, &qword_100795760);
      sub_1000050A4(v86, &unk_1009441F0, &qword_100795760);
      v55(v47, v22);
      v46 = v74;
      sub_1000050A4(v40, &unk_1009441F0, &qword_100795760);
      if ((v71 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_15:
      v56 = [v46 list];
      v72 = v32;
      if (v56)
      {
        v57 = v56;
        v58 = [v56 objectID];
        v59 = [v58 URIRepresentation];

        v60 = v79;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v61 = 0;
      }

      else
      {
        v61 = 1;
        v60 = v79;
      }

      v62 = v80;
      v73(v60, v61, 1, v22);
      v63 = *(v85 + 48);
      sub_100010364(v60, v62, &unk_1009441F0, &qword_100795760);
      sub_100010364(v78, v62 + v63, &unk_1009441F0, &qword_100795760);
      v64 = v83;
      if (v83(v62, 1, v22) == 1)
      {
        sub_1000050A4(v60, &unk_1009441F0, &qword_100795760);
        if (v64(v62 + v63, 1, v22) == 1)
        {
          v48 = &unk_1009441F0;
          v49 = &qword_100795760;
          v50 = v62;
          goto LABEL_11;
        }
      }

      else
      {
        v65 = v76;
        sub_100010364(v62, v76, &unk_1009441F0, &qword_100795760);
        if (v64(v62 + v63, 1, v22) != 1)
        {
          v66 = v62 + v63;
          v67 = v77;
          (*(v84 + 32))(v77, v66, v22);
          sub_1003A99EC(&unk_100944080, &type metadata accessor for URL);
          v68 = dispatch thunk of static Equatable.== infix(_:_:)();
          v69 = v75;
          v75(v67, v22);
          sub_1000050A4(v60, &unk_1009441F0, &qword_100795760);
          v69(v65, v22);
          sub_1000050A4(v62, &unk_1009441F0, &qword_100795760);
          v51 = v68 ^ 1;
          return v51 & 1;
        }

        sub_1000050A4(v60, &unk_1009441F0, &qword_100795760);
        v75(v65, v22);
      }

      sub_1000050A4(v62, &unk_100944250, &qword_1007957B0);
      v51 = 1;
      return v51 & 1;
    }

    sub_1000050A4(v19, &unk_1009441F0, &qword_100795760);
    sub_1000050A4(v86, &unk_1009441F0, &qword_100795760);
    v75(v47, v22);
  }

  v48 = &unk_100944250;
  v49 = &qword_1007957B0;
  v50 = v40;
LABEL_11:
  sub_1000050A4(v50, v48, v49);
LABEL_12:
  v51 = 0;
  return v51 & 1;
}

void sub_1003A8724(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = [v15 ckParentReminderIdentifier];
    if (v16)
    {
      v36 = v16;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v18;
      v35 = v17;

      v19 = _swiftEmptyDictionarySingleton[2];
      if (_swiftEmptyDictionarySingleton[3] <= v19)
      {
        sub_10036A8F0(v19 + 1, 1);
      }

      v20 = _swiftEmptyDictionarySingleton[5];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = &_swiftEmptyDictionarySingleton[8];
      v23 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
      v24 = v21 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~_swiftEmptyDictionarySingleton[(v24 >> 6) + 8]) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = v22[v25];
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~_swiftEmptyDictionarySingleton[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = 16 * v26;
      v32 = (_swiftEmptyDictionarySingleton[6] + v31);
      *v32 = v13;
      v32[1] = v12;
      v33 = (_swiftEmptyDictionarySingleton[7] + v31);
      *v33 = v35;
      v33[1] = v34;
      ++_swiftEmptyDictionarySingleton[2];
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1003A898C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t **a4, uint64_t *a5)
{
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_1009441D0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v14 = v51;
    *v13 = 136446210;
    *(v13 + 4) = sub_10000668C(a1, a2, &v51);
    _os_log_impl(&_mh_execute_header, v11, v12, "findReminderRoot BEGIN {id: %{public}s}", v13, 0xCu);
    sub_10000607C(v14);
  }

  v15 = *a4;
  if ((*a4)[2])
  {
    v16 = sub_100005F4C(a1, a2);
    if (v17)
    {
      v18 = (v15[7] + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      swift_bridgeObjectRetain_n();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v23 = 136446466;
        *(v23 + 4) = sub_10000668C(a1, a2, &v51);
        *(v23 + 12) = 2082;
        *(v23 + 14) = sub_10000668C(v19, v20, &v51);
        _os_log_impl(&_mh_execute_header, v21, v22, "findReminderRoot: Root already computed. {%{public}s => %{public}s}", v23, 0x16u);
        swift_arrayDestroy();
      }

LABEL_18:

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v51 = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_10000668C(a1, a2, &v51);
        _os_log_impl(&_mh_execute_header, v40, v41, "findReminderRoot END {id: %{public}s}", v42, 0xCu);
        sub_10000607C(v43);
      }

      return v19;
    }
  }

  if (sub_100240BDC(a1, a2, *a5))
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v26 = 136446466;
      *(v26 + 4) = sub_10000668C(a1, a2, &v51);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_10000668C(a1, a2, &v51);
      v27 = "findReminderRoot: Already visited this reminder. There is a loop. Assuming root is self. {%{public}s => %{public}s}";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {

    sub_100378434(&v51, a1, a2);

    if (*(a3 + 16))
    {
      v28 = sub_100005F4C(a1, a2);
      if (v29)
      {
        v30 = (*(a3 + 56) + 16 * v28);
        v31 = *v30;
        v32 = v30[1];

        v19 = sub_1003A898C(v31, v32, a3, a4, a5);
        v34 = v33;

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v37 = 136446466;
          *(v37 + 4) = sub_10000668C(a1, a2, &v51);
          *(v37 + 12) = 2082;
          *(v37 + 14) = sub_10000668C(v19, v34, &v51);
          _os_log_impl(&_mh_execute_header, v35, v36, "findReminderRoot: Recursively found the root. {%{public}s => %{public}s}", v37, 0x16u);
          swift_arrayDestroy();
        }

        v38 = *a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = *a4;
        sub_1002C72CC(v19, v34, a1, a2, isUniquelyReferenced_nonNull_native);

        *a4 = v51;
        goto LABEL_18;
      }
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v26 = 136446466;
      *(v26 + 4) = sub_10000668C(a1, a2, &v51);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_10000668C(a1, a2, &v51);
      v27 = "findReminderRoot: This reminder has no parent. The root is self. {%{public}s => %{public}s}";
      goto LABEL_23;
    }
  }

  v44 = *a4;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *a4;
  sub_1002C72CC(a1, a2, a1, a2, v45);
  *a4 = v51;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_10000668C(a1, a2, &v51);
    _os_log_impl(&_mh_execute_header, v46, v47, "findReminderRoot END {id: %{public}s}", v48, 0xCu);
    sub_10000607C(v49);
  }

  return a1;
}

Swift::Int sub_1003A9190(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    v15 = *(v5 + 48);
    do
    {
      v16 = (v15 + 16 * v10);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          if (*v16 == a1 && v17 == a2)
          {
            goto LABEL_19;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            v19 = v16[1];
LABEL_19:
            *v16 = a1;
            v16[1] = a2;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_19;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
    }

    while ((v12 & (1 << v10)) != 0);
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 8 * v11) = v12 | v13;
    v20 = (*(v5 + 48) + 16 * v10);
    *v20 = a1;
    v20[1] = a2;
    v21 = *(v5 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      *(v5 + 16) = v23;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1003A932C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v7 = *v3;
  v8 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v9 = v7 + 56;
  v10 = -1 << *(v7 + 32);
  v11 = v8 & ~v10;
  v12 = v11 >> 6;
  v13 = *(v7 + 56 + 8 * (v11 >> 6));
  v14 = 1 << v11;
  if (((1 << v11) & v13) != 0)
  {
    v15 = ~v10;
    sub_1000060C8(0, a2, a3);
    while (1)
    {
      v16 = *(*(v7 + 48) + 8 * v11);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v15;
      v12 = v11 >> 6;
      v13 = *(v9 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_5;
      }
    }

    v19 = *(v7 + 48);
    v20 = *(v19 + 8 * v11);
    *(v19 + 8 * v11) = a1;
  }

  else
  {
LABEL_5:
    v18 = *(v7 + 16);
    if (v18 >= *(v7 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v9 + 8 * v12) = v14 | v13;
      *(*(v7 + 48) + 8 * v11) = a1;
      *(v7 + 16) = v18 + 1;
    }
  }
}

unint64_t *sub_1003A946C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1003A9534(v11, a2, a3, a4, a5, a6);
    v13 = v12;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v13;
  }

  return result;
}

void sub_1003A9534(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = v13 | (v7 << 6);
    if (*(a4 + 16))
    {
      v17 = (*(a3 + 48) + 16 * v16);
      v18 = *(*(a3 + 56) + 8 * v16);
      v20 = *v17;
      v19 = v17[1];

      v21 = v18;
      v22 = sub_100005F4C(v20, v19);
      if (v23)
      {
        v24 = (*(a4 + 56) + 16 * v22);
        if (*v24 == a5 && v24[1] == a6)
        {

LABEL_21:
          *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          if (__OFADD__(v30++, 1))
          {
            __break(1u);
LABEL_24:
            sub_10055B320(a1, a2, v30, a3);
            return;
          }
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
      }
    }
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
      goto LABEL_24;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_1003A96EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  swift_bridgeObjectRetain_n();
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v15 = sub_1003A946C(v17, v11, a1, a2, a3, a4);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v13);
  bzero(&v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  sub_1003A9534((&v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, a1, a2, a3, a4);
  v15 = v14;

  if (v4)
  {
    swift_willThrow();
  }

LABEL_6:

  return v15;
}

uint64_t sub_1003A991C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1003A9970()
{
  result = qword_100944200;
  if (!qword_100944200)
  {
    sub_1000F514C(&unk_10093B300, &unk_100797780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944200);
  }

  return result;
}

uint64_t sub_1003A99EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s6FieldsOwet_2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6FieldsOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003A9BE8(uint64_t a1)
{
  result = sub_1003A9C10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003A9C10()
{
  result = qword_100944268;
  if (!qword_100944268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944268);
  }

  return result;
}

unint64_t sub_1003A9C64(uint64_t a1)
{
  result = sub_1003A9C8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003A9C8C()
{
  result = qword_100944270;
  if (!qword_100944270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944270);
  }

  return result;
}

unint64_t sub_1003A9CE4()
{
  result = qword_100944278;
  if (!qword_100944278)
  {
    sub_1000F514C(&qword_100944280, &qword_1007A4B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944278);
  }

  return result;
}

unint64_t sub_1003A9D4C()
{
  result = qword_100944288;
  if (!qword_100944288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944288);
  }

  return result;
}

void sub_1003A9DBC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v50 - v11;
  v13 = sub_1000F5104(&qword_1009442A8, &unk_1007A4C80);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v17 = &v50 - v16;
  if (!a1)
  {
    goto LABEL_16;
  }

  v51 = a2;
  v18 = a1;
  if (![v18 inactive])
  {
    v52 = v4;

    v31 = v18;
    v32 = [v31 remObjectID];
    if (v32)
    {
      v33 = v32;
      v34 = [v31 objectID];
      if ([v34 isTemporaryID])
      {
        v35 = v33;
        if (qword_100935F40 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100006654(v36, qword_100944290);
        v37 = v33;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138543362;
          *(v40 + 4) = v37;
          *v41 = v35;
          v42 = v37;
          _os_log_impl(&_mh_execute_header, v38, v39, "primaryActiveCloudKitAccountOptimized: Unexpectedly the primaryActiveCloudKitAccount.objectID() isTemporary, current design is to defer setting the account NSManagedObjectID cache until after saved {remObjectID: %{public}@}", v40, 0xCu);
          sub_100039860(v41);
        }

        else
        {
        }
      }

      else
      {
        (*(v14 + 104))(v17, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v13);
        v45 = swift_allocObject();
        *(v45 + 16) = v34;
        *(v45 + 24) = v33;
        v46 = v34;
        v47 = v33;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        (*(v14 + 8))(v17, v13);
      }

      goto LABEL_27;
    }

    v4 = v52;
LABEL_16:
    v52 = v4;
    v43 = enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:);
    (*(v14 + 104))(v17, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v13);
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();
    (*(v14 + 8))(v17, v13);
    (*(v9 + 104))(v12, v43, v8);
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();
    (*(v9 + 8))(v12, v8);
    if (!a1)
    {
      v44 = 0;
LABEL_28:
      [v52 updateInMemoryPrimaryActiveCKAccountREMObjectIDIfNecessary:v44];

      return;
    }

    v31 = a1;
LABEL_27:
    v44 = [v31 remObjectID];
    goto LABEL_28;
  }

  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100944290);
  v50 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = a3;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v53 = v24;
    *v23 = 136446210;
    v25 = [v50 remObjectID];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 description];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v30 = 0xE300000000000000;
      v28 = 7104878;
    }

    v48 = sub_10000668C(v28, v30, &v53);

    *(v23 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v20, v21, "updatePrimaryActiveCloudKitAccount: ATTENTION Someone is trying to inactivate an existing CK account {remObjectID: %{public}s}", v23, 0xCu);
    sub_10000607C(v24);

    a3 = v22;
  }

  else
  {
  }

  sub_1003A9DBC(0, v51, a3);
  v49 = v50;
}

uint64_t sub_1003AA440()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944290);
  v1 = sub_100006654(v0, qword_100944290);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1003AA508(void *a1)
{
  v3 = [a1 accountTypeHost];
  v4 = [v3 isPrimaryCloudKit];

  if (v4)
  {
    if (([a1 markedForRemoval] & 1) != 0 || objc_msgSend(a1, "inactive"))
    {
      v41 = [a1 remObjectID];
      v5 = [v1 inMemoryPrimaryActiveCKAccountREMObjectID];
      if (v5)
      {
        v6 = v5;
        sub_10003980C();
        v7 = v41;
        v8 = v6;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          if (qword_100935F40 != -1)
          {
            swift_once();
          }

          v10 = type metadata accessor for Logger();
          sub_100006654(v10, qword_100944290);
          v41 = v7;
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            v14 = swift_slowAlloc();
            *v13 = 138543362;
            *(v13 + 4) = v41;
            *v14 = v41;
            v15 = v41;
            _os_log_impl(&_mh_execute_header, v11, v12, "primaryCloudKitAccountDidDisable: Primary CloudKit account removed or deactivated, unsetting both inMemoryPrimaryActiveCKAccountREMObjectID and clear its NSManagedObjectID cache {removing: %{public}@}", v13, 0xCu);
            sub_100039860(v14);
          }

          if (qword_1009367D8 != -1)
          {
            swift_once();
          }

          v16 = qword_1009752E8;
          if (qword_1009367E0 != -1)
          {
            v39 = qword_1009752E8;
            swift_once();
            v16 = v39;
          }

          sub_1003A9DBC(0, v16, qword_1009752F0);
        }

        else
        {
          if (qword_100935F40 != -1)
          {
            swift_once();
          }

          v29 = type metadata accessor for Logger();
          sub_100006654(v29, qword_100944290);
          v30 = v7;
          v8 = v8;
          v41 = Logger.logObject.getter();
          v31 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v41, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v42 = v34;
            *v32 = 136446466;
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            v35 = Optional.descriptionOrNil.getter();
            v37 = sub_10000668C(v35, v36, &v42);

            *(v32 + 4) = v37;
            *(v32 + 12) = 2114;
            *(v32 + 14) = v30;
            *v33 = v30;
            v38 = v30;
            _os_log_impl(&_mh_execute_header, v41, v31, "primaryCloudKitAccountDidDisable: A different primary active CloudKit account already exists (inMemoryPrimaryActiveCKAccountREMObjectID != nil) when we are removing or deactivating another different CloudKit account, not updating the in-memory value in this case {currentAccountID: %{public}s, removedAccountID: %{public}@}", v32, 0x16u);
            sub_100039860(v33);

            sub_10000607C(v34);

            return;
          }
        }
      }

      goto LABEL_31;
    }

    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100944290);
    v24 = a1;
    v41 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v41, v25))
    {
LABEL_31:
      v22 = v41;
      goto LABEL_32;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138543362;
    v28 = [v24 remObjectID];
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v41, v25, "primaryCloudKitAccountDidDisable: Passed in an account storage that is neither markedForRemoval nor inactive {remObjectID: %{public}@}", v26, 0xCu);
    sub_100039860(v27);

LABEL_19:

    goto LABEL_31;
  }

  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100944290);
  v40 = a1;
  v41 = Logger.logObject.getter();
  v18 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v41, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543618;
    v21 = [v40 remObjectID];
    *(v19 + 4) = v21;
    *v20 = v21;
    *(v19 + 12) = 2048;
    *(v19 + 14) = [v40 type];

    _os_log_impl(&_mh_execute_header, v41, v18, "primaryCloudKitAccountDidDisable: Passed in an account storage that is not .primaryCloudKit {remObjectID: %{public}@, type: %ld}", v19, 0x16u);
    sub_100039860(v20);

    goto LABEL_19;
  }

  v22 = v40;
LABEL_32:
}

void sub_1003AAB98(void *a1)
{
  v3 = [a1 accountTypeHost];
  v4 = [v3 isPrimaryCloudKit];

  if (!v4)
  {
    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100944290);
    v41 = a1;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(oslog, v12))
    {

      v16 = v41;
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543618;
    v15 = [v41 remObjectID];
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2048;
    *(v13 + 14) = [v41 type];

    _os_log_impl(&_mh_execute_header, oslog, v12, "primaryCloudKitAccountDidEnable: Passed in an account storage that is not .primaryCloudKit {remObjectID: %{public}@, type: %ld}", v13, 0x16u);
    sub_100039860(v14);

    goto LABEL_12;
  }

  if ([a1 markedForRemoval] & 1) != 0 || (objc_msgSend(a1, "inactive"))
  {
    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100944290);
    v6 = a1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = [v6 remObjectID];
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, oslog, v7, "primaryCloudKitAccountDidEnable: Passed in an account storage that is markedForRemoval or inactive {remObjectID: %{public}@}", v8, 0xCu);
    sub_100039860(v9);

LABEL_12:

LABEL_13:
    v16 = oslog;
LABEL_15:

    return;
  }

  v17 = [a1 remObjectID];
  osloga = v1;
  v18 = [v1 inMemoryPrimaryActiveCKAccountREMObjectID];
  if (v18)
  {
    sub_10003980C();
    v19 = v17;
    v20 = v18;
    v21 = static NSObject.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
      if (qword_100935F40 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_100944290);
      v23 = v19;
      v24 = v20;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v44 = v29;
        *v27 = 136446466;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v30 = Optional.descriptionOrNil.getter();
        v32 = sub_10000668C(v30, v31, &v44);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2114;
        *(v27 + 14) = v23;
        *v28 = v23;
        v33 = v23;
        _os_log_impl(&_mh_execute_header, v25, v26, "primaryCloudKitAccountDidEnable: A primary active CloudKit account already exists (inMemoryPrimaryActiveCKAccountREMObjectID != nil) when we are adding or activating another different CloudKit account, we will still update the in-memory value {currentAccountID: %{public}s, newAccountID: %{public}@}", v27, 0x16u);
        sub_100039860(v28);

        sub_10000607C(v29);
      }
    }
  }

  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_100944290);
  v35 = v17;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138543362;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "primaryCloudKitAccountDidEnable: Primary CloudKit account added or activated, setting inMemoryPrimaryActiveCKAccountREMObjectID {newAccountID: %{public}@}", v38, 0xCu);
    sub_100039860(v39);
  }

  [osloga updateInMemoryPrimaryActiveCKAccountREMObjectIDIfNecessary:v35];
}

void sub_1003AB1AC(uint64_t a1, void *a2, void *a3)
{
  REMCacheContext.setObject(_:forKey:)();
  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100944290);
  v6 = a3;
  v7 = a2;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v7;
    *v10 = v6;
    v10[1] = a2;
    v11 = v6;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v8, "updatePrimaryActiveCloudKitAccount: Writing RDPrimaryActiveCloudKitAccountManagedObjectIDCache with updated CD account {remObjectID: %{public}@, mid: %{public}@}", v9, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
  }
}

void sub_1003AB354(uint64_t a1, const char *a2)
{
  REMCacheContext.clearAll()();
  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100944290);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
  }
}

NSString sub_1003AB44C()
{
  result = String._bridgeToObjectiveC()();
  qword_100974D60 = result;
  return result;
}

void sub_1003AB484(char a1)
{
  v2 = v1;
  if (qword_100935F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100944290);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    if (a1)
    {
      v9 = 0x64656C62616E65;
    }

    else
    {
      v9 = 0x64656C6261736964;
    }

    if (a1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = sub_10000668C(v9, v10, &v22);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "cloudKitAccountsDidChange(cloudKitAccountsChange: %{public}s)", v7, 0xCu);
    sub_10000607C(v8);
  }

  v12 = [objc_opt_self() sharedInstance];
  [v12 invalidateICloudACAccounts];

  if ([objc_opt_self() clearAppleCloudKitTable])
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Released all cached CloudKit REMCD accounts", v15, 2u);
    }
  }

  v16 = [v2 cloudContext];
  v17 = v16;
  v18 = &selRef_accountsDidEnable;
  if ((a1 & 1) == 0)
  {
    v18 = &selRef_accountsDidDisable;
  }

  [v16 *v18];

  v19 = [objc_opt_self() defaultCenter];
  v20 = v19;
  if (qword_100935F48 != -1)
  {
    swift_once();
    v19 = v20;
  }

  [v19 postNotificationName:qword_100974D60 object:{0, v20, v22}];
}

void sub_1003AB788(void **a1, uint64_t a2)
{
  v3 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:a2];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 remObjectID];
  }

  else
  {
    v5 = 0;
  }

  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1003AB82C()
{
  v1 = *v0;
  result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v3)
  {
    _StringGuts.grow(_:)(46);
    v4._object = 0x80000001007EC120;
    v4._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v4);
    v5 = *(v1 + class metadata base offset for PartialKeyPath);
    type metadata accessor for PartialKeyPath();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003AB92C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009442B0);
  v1 = sub_100006654(v0, qword_1009442B0);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003AB9F4(char a1)
{
  if ((a1 & 2) != 0)
  {
    v2._countAndFlagsBits = 99;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
  }

  if ((a1 & 4) != 0)
  {
    v3._countAndFlagsBits = 100;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
  }

  return 0;
}

BOOL sub_1003ABAF4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1003ABB24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1003ABB50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1003ABC28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10072A708(a1);

  *a2 = v3;
  return result;
}

void **sub_1003ABC78(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

void **sub_1003ABCBC(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1003ABCF0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1003ABD4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1003ABDB8()
{
  result = qword_100944348;
  if (!qword_100944348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944348);
  }

  return result;
}

unint64_t sub_1003ABE10()
{
  result = qword_100944350;
  if (!qword_100944350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944350);
  }

  return result;
}

unint64_t sub_1003ABE68()
{
  result = qword_100944358;
  if (!qword_100944358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944358);
  }

  return result;
}

unint64_t sub_1003ABEC0()
{
  result = qword_100944360;
  if (!qword_100944360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944360);
  }

  return result;
}

uint64_t sub_1003ABF18()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100944368);
  v1 = sub_100006654(v0, qword_100944368);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_1003ABFEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003AC0A8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1003AC150()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003AC208@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003AC46C(*a1);
  *a2 = result;
  return result;
}

void sub_1003AC238(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x44497463656A626FLL;
  v4 = 1701667182;
  if (*v1 != 2)
  {
    v4 = 1701869940;
  }

  if (*v1)
  {
    v3 = 0x6E6F697461657263;
    v2 = 0xEC00000065746144;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_1003AC2C0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003AC46C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003AC2E8()
{
  v1 = 0x44497463656A626FLL;
  v2 = 1701667182;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461657263;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1003AC35C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DEE10, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1003AC3CC@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008DEE10, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_1003AC46C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DEE60, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

char *sub_1003AC4B8(void *a1, char a2)
{
  v4 = type metadata accessor for Date();
  v100 = *(v4 - 8);
  v101 = v4;
  v5 = *(v100 + 64);
  __chkstk_darwin(v4);
  v102 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v97 - v18;
  __chkstk_darwin(v17);
  v104 = &v97 - v20;
  v105 = 0;
  v103 = [a1 remObjectIDWithError:&v105];
  if (v103)
  {
    v21 = v105;
    v99 = v11;
    if ((a2 & 1) == 0 || ([a1 markedForDeletion] & 1) == 0)
    {
      v22 = [a1 sharedToMeReminderCKIdentifier];
      if (!v22)
      {
        v27 = [a1 reminder];
        if (v27 && (v28 = v27, v29 = [v27 remObjectID], v28, v29))
        {
          v30 = [v29 uuid];

          v31 = v104;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v32 = v8;
          (*(v8 + 56))(v31, 0, 1, v7);
        }

        else
        {
          v32 = v8;
          (*(v8 + 56))(v104, 1, 1, v7);
        }

        v34 = 0;
LABEL_16:
        v35 = [a1 account];
        if (!v35 || (v36 = v35, v37 = [v35 remObjectID], v36, !v37))
        {
LABEL_20:
          v39 = [a1 account];
          if (v39)
          {
            v16 = 0xE900000000000029;
            v40 = v103;

            if (v34)
            {
LABEL_22:

              if (qword_100935F58 != -1)
              {
                swift_once();
              }

              v41 = type metadata accessor for Logger();
              sub_100006654(v41, qword_100944368);
              v42 = v40;
              v43 = a1;
              v44 = Logger.logObject.getter();
              v45 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v44, v45))
              {
                v46 = swift_slowAlloc();
                v47 = swift_slowAlloc();
                v105 = swift_slowAlloc();
                *v46 = 138543874;
                *(v46 + 4) = v42;
                *v47 = v40;
                *(v46 + 12) = 2082;
                v48 = v42;
                [v43 markedForDeletion];
                v49 = Bool.yesno.getter();
                v51 = sub_10000668C(v49, v50, &v105);

                *(v46 + 14) = v51;
                *(v46 + 22) = 2082;
                v52 = [v43 sharedToMeReminderCKIdentifier];
                if (v52)
                {
                  v53 = v52;
                  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v56 = v55;
                }

                else
                {
                  v56 = 0xE300000000000000;
                  v54 = 7104878;
                }

                v88 = sub_10000668C(v54, v56, &v105);

                *(v46 + 24) = v88;
                _os_log_impl(&_mh_execute_header, v44, v45, "REMHashtagCDIngestor: cdHashtag.reminderIdentifier is nil {cdHashtag.remObjectID: %{public}@, markedForDeletion: %{public}s, cdHashtag.sharedToMeReminderCKIdentifier: %{public}s}", v46, 0x20u);
                sub_1000050A4(v47, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                v40 = v103;
              }

              else
              {
              }

              v16 = 0x80000001007EA710;
LABEL_46:
              v89 = objc_opt_self();
              sub_1003AD0D4();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v91 = String._bridgeToObjectiveC()();

              [v89 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v91];

              swift_willThrow();
LABEL_47:
              sub_1000050A4(v104, &unk_100939D90, "8\n\r");
              return v16;
            }
          }

          else
          {
            v40 = v103;
            if (qword_100935F58 != -1)
            {
              swift_once();
            }

            v57 = type metadata accessor for Logger();
            sub_100006654(v57, qword_100944368);
            v58 = v40;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *v61 = 138543362;
              *(v61 + 4) = v58;
              *v62 = v40;
              v63 = v58;
              _os_log_impl(&_mh_execute_header, v59, v60, "REMHashtagCDIngestor: cdHashtag.account is nil {cdHashtag.remObjectID: %{public}@}", v61, 0xCu);
              sub_1000050A4(v62, &unk_100938E70, &unk_100797230);
            }

            v16 = 0xE700000000000000;

            if (v34)
            {
              goto LABEL_22;
            }
          }

          v64 = [a1 reminder];
          if (v64)
          {
          }

          else
          {

            if (qword_100935F58 != -1)
            {
              swift_once();
            }

            v81 = type metadata accessor for Logger();
            sub_100006654(v81, qword_100944368);
            v82 = v40;
            v83 = Logger.logObject.getter();
            v84 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              *v85 = 138412290;
              *(v85 + 4) = v82;
              *v86 = v40;
              v87 = v82;
              _os_log_impl(&_mh_execute_header, v83, v84, "REMHashtagCDIngestor: cdHashtag.reminder is nil when nil reminder reference is not legit {cdHashtag.remObjectID: %@}", v85, 0xCu);
              sub_1000050A4(v86, &unk_100938E70, &unk_100797230);
            }

            v16 = 0xE800000000000000;
          }

          goto LABEL_46;
        }

        sub_10018E470(v104, v16);
        v38 = v32;
        if ((*(v32 + 48))(v16, 1, v7) == 1)
        {

          sub_1000050A4(v16, &unk_100939D90, "8\n\r");
          goto LABEL_20;
        }

        v65 = *(v32 + 32);
        v66 = v99;
        v65(v99, v16, v7);
        v67 = [a1 name];
        v68 = v38;
        if (v67)
        {
          v69 = v67;
          v70 = [a1 creationDate];
          if (v70)
          {
            v71 = v70;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v72 = objc_opt_self();
            v98 = v38;
            v73 = v72;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v75 = [v73 objectIDWithUUID:isa];

            v97 = [a1 type];
            v76 = objc_allocWithZone(REMHashtag);
            v77 = v102;
            v78 = Date._bridgeToObjectiveC()().super.isa;
            v79 = v76;
            v80 = v103;
            v16 = [v79 initWithObjectID:v103 accountID:v37 reminderID:v75 type:v97 name:v69 creationDate:v78];

            (*(v100 + 8))(v77, v101);
            (*(v98 + 8))(v99, v7);
            sub_1000050A4(v104, &unk_100939D90, "8\n\r");
            return v16;
          }

          v16 = objc_opt_self();
          sub_1003AD0D4();
          v96 = swift_getObjCClassFromMetadata();
          v94 = String._bridgeToObjectiveC()();
          v95 = [v16 unexpectedNilPropertyWithClass:v96 property:v94];
        }

        else
        {
          v16 = objc_opt_self();
          sub_1003AD0D4();
          v93 = swift_getObjCClassFromMetadata();
          v94 = String._bridgeToObjectiveC()();
          v95 = [v16 unexpectedNilPropertyWithClass:v93 property:v94];
        }

        v95;

        swift_willThrow();
        (*(v68 + 8))(v66, v7);
        goto LABEL_47;
      }
    }

    v23 = [a1 reminderIdentifier];
    if (v23)
    {
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v32 = v8;
    v33 = *(v8 + 56);
    v34 = 1;
    v33(v19, v25, 1, v7);
    sub_100100FB4(v19, v104);
    goto LABEL_16;
  }

  v26 = v105;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return v16;
}

unint64_t sub_1003AD0D4()
{
  result = qword_10093CFE0;
  if (!qword_10093CFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093CFE0);
  }

  return result;
}

unint64_t sub_1003AD174()
{
  result = qword_100944580;
  if (!qword_100944580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944580);
  }

  return result;
}

unint64_t sub_1003AD1FC()
{
  result = qword_100944598;
  if (!qword_100944598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944598);
  }

  return result;
}

uint64_t *RDSynchronizedKeyValueStore.default.unsafeMutableAddressor()
{
  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  return &static RDSynchronizedKeyValueStore.default;
}

uint64_t sub_1003AD2E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
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

    return 0;
  }

  return 1;
}

uint64_t sub_1003AD378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v50 = &v42 - v10;
  v11 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v49 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v15 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v42 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v48 = (v5 + 48);
  v42 = (v5 + 32);
  v43 = v17;
  v44 = (v5 + 8);
  v46 = *(v19 + 72);
  v51 = &v42 - v20;
  while (1)
  {
    sub_1003B0928(v24, v21, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
    sub_1003B0928(v25, v17, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
    v26 = *(v11 + 48);
    sub_10012F78C(v21, v14);
    sub_10012F78C(v17, &v14[v26]);
    v27 = *v48;
    if ((*v48)(v14, 1, v4) != 1)
    {
      break;
    }

    if (v27(&v14[v26], 1, v4) != 1)
    {
      goto LABEL_22;
    }

    sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
    v21 = v51;
LABEL_12:
    v34 = *(v49 + 20);
    v35 = &v21[v34];
    v36 = *&v21[v34 + 8];
    v37 = &v17[v34];
    v38 = *(v37 + 1);
    v39 = v38 == 0;
    if (!v36)
    {
      goto LABEL_5;
    }

    if (!v38)
    {
      goto LABEL_23;
    }

    if (*v35 != *v37 || v36 != v38)
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_5:
      sub_1003B0990(v17, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
      v21 = v51;
      sub_1003B0990(v51, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

    sub_1003B0990(v17, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
    sub_1003B0990(v21, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
LABEL_6:
    v25 += v46;
    v24 += v46;
    if (!--v22)
    {
      return 1;
    }
  }

  sub_10012F78C(v14, v50);
  if (v27(&v14[v26], 1, v4) != 1)
  {
    v28 = v11;
    v29 = v50;
    v30 = v47;
    (*v42)(v47, &v14[v26], v4);
    sub_1003B09F0(&qword_100938DB0, &type metadata accessor for Date);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *v44;
    v32 = v30;
    v33 = v29;
    v11 = v28;
    v17 = v43;
    (*v44)(v32, v4);
    v31(v33, v4);
    sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
    v21 = v51;
    if ((v45 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  (*v44)(v50, v4);
LABEL_22:
  sub_1000050A4(v14, &qword_100938C18, &qword_1007957A0);
  v21 = v51;
LABEL_23:
  sub_1003B0990(v17, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
  sub_1003B0990(v21, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
  return 0;
}

uint64_t sub_1003AD8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &i - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &i - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = a2 + 32;
  v35 = v11;
  v34 = v13;
  for (i = v14; ; v14 = i)
  {
    v15 = (v13 + (v12 << 6));
    v16 = v15[1];
    *v40 = *v15;
    *&v40[16] = v16;
    v17 = v15[3];
    v41 = v15[2];
    v42 = v17;
    v18 = (v14 + (v12 << 6));
    v19 = v18[1];
    *v43 = *v18;
    *&v43[16] = v19;
    v20 = v18[3];
    v44 = v18[2];
    v45 = v20;
    if (v40[0] == 2)
    {
      if (v43[0] != 2)
      {
        return 0;
      }
    }

    else if (v43[0] == 2 || ((v43[0] ^ v40[0]) & 1) != 0)
    {
      return 0;
    }

    if (v40[1] == 2)
    {
      if (v43[1] != 2)
      {
        return 0;
      }
    }

    else if (v43[1] == 2 || ((v43[1] ^ v40[1]) & 1) != 0)
    {
      return 0;
    }

    if (*&v40[16])
    {
      if (!*&v43[16] || *&v40[8] != *&v43[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v43[16])
    {
      return 0;
    }

    v37 = v12;
    v21 = *&v40[24];
    v22 = *&v43[24];
    if (*&v40[24])
    {
      if (!*&v43[24])
      {
        goto LABEL_40;
      }

      v36 = sub_100286700(*&v40[24], v41, *(&v41 + 1), v42, *&v43[24], v44, *(&v44 + 1), v45);
      sub_1002865B0(v40, v39);
      sub_1002865B0(v43, v39);
      sub_10028D090(v22);
      sub_10028D090(v21);

      result = sub_100286618(v21);
      if ((v36 & 1) == 0)
      {
LABEL_38:
        sub_1002865E8(v43);
        sub_1002865E8(v40);
        return 0;
      }
    }

    else
    {
      if (*&v43[24])
      {
LABEL_40:
        sub_10028D090(*&v43[24]);
        sub_10028D090(v21);
        sub_100286618(v21);
        sub_100286618(v22);
        return 0;
      }

      sub_1002865B0(v40, v39);
      result = sub_1002865B0(v43, v39);
    }

    v24 = *(&v42 + 1);
    v25 = *(&v45 + 1);
    v26 = *(*(&v42 + 1) + 16);
    if (v26 != *(*(&v45 + 1) + 16))
    {
      goto LABEL_38;
    }

    if (v26 && *(&v42 + 1) != *(&v45 + 1))
    {
      break;
    }

LABEL_35:
    v12 = v37 + 1;
    sub_1002865E8(v43);
    sub_1002865E8(v40);
    if (v12 == v35)
    {
      return 1;
    }

    v13 = v34;
  }

  v27 = 0;
  v28 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v29 = *(&v42 + 1) + v28;
  v30 = *(&v45 + 1) + v28;
  while (v27 < *(v24 + 16))
  {
    v31 = *(v38 + 72) * v27;
    result = sub_1003B0928(v29 + v31, v10, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
    if (v27 >= *(v25 + 16))
    {
      goto LABEL_42;
    }

    sub_1003B0928(v30 + v31, v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
    v32 = sub_1002844C4(v10, v7);
    sub_1003B0990(v7, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
    result = sub_1003B0990(v10, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
    if ((v32 & 1) == 0)
    {
      goto LABEL_38;
    }

    if (v26 == ++v27)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}