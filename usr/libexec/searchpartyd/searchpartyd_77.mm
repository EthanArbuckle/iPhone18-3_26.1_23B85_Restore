uint64_t sub_100818478(uint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v170 = a2;
  v186 = a1;
  v6 = type metadata accessor for DispatchTime();
  v182 = *(v6 - 8);
  v7 = *(v182 + 64);
  v8 = __chkstk_darwin(v6);
  v180 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v181 = &v154 - v10;
  v176 = type metadata accessor for BeaconObservation();
  v177 = *(v176 - 8);
  v11 = *(v177 + 64);
  __chkstk_darwin(v176);
  v178 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v175 = &v154 - v15;
  v174 = type metadata accessor for Date();
  v173 = *(v174 - 8);
  v16 = *(v173 + 64);
  __chkstk_darwin(v174);
  v172 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v169 = &v154 - v20;
  v168 = type metadata accessor for OwnedBeaconRecord();
  v167 = *(v168 - 8);
  v21 = *(v167 + 64);
  __chkstk_darwin(v168);
  v164 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v154 - v25;
  v166 = type metadata accessor for BeaconStatus(0);
  v27 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v165 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for UUID();
  v183 = *(v187 - 8);
  v29 = *(v183 + 64);
  v30 = __chkstk_darwin(v187);
  v171 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v163 = &v154 - v33;
  __chkstk_darwin(v32);
  v35 = &v154 - v34;
  v184 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v185 = *(v184 - 8);
  v36 = *(v185 + 64);
  v37 = __chkstk_darwin(v184);
  v39 = &v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v154 - v40;
  v42 = type metadata accessor for DispatchPredicate();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v46 = (&v154 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v46 = v47;
  (*(v43 + 104))(v46, enum case for DispatchPredicate.onQueue(_:), v42);
  v179 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  (*(v43 + 8))(v46, v42);
  if ((v47 & 1) == 0)
  {
    __break(1u);
LABEL_61:
    swift_once();
    goto LABEL_5;
  }

  v48 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  result = swift_beginAccess();
  v50 = *(v4 + v48);
  if (!*(v50 + 16))
  {
    return result;
  }

  v51 = *(v4 + v48);

  v46 = v186;
  v52 = sub_1000210EC(v186);
  if ((v53 & 1) == 0)
  {
  }

  v158 = v48;
  sub_100833680(*(v50 + 56) + *(v185 + 72) * v52, v39, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  sub_1008336E8(v39, v41, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v157 = v4;
  v156 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100025020(v46, v193);
  if (qword_101694960 != -1)
  {
    goto LABEL_61;
  }

LABEL_5:
  v159 = type metadata accessor for Logger();
  v54 = sub_1000076D4(v159, qword_10177B380);
  v55 = v183;
  v56 = *(v183 + 16);
  v57 = v187;
  v162 = v183 + 16;
  v161 = v56;
  v56(v35, v46, v187);
  v154 = v54;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  v60 = os_log_type_enabled(v58, v59);
  v160 = v6;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v190 = v62;
    *v61 = 141558531;
    *(v61 + 4) = 1752392040;
    *(v61 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v155 = *(v55 + 8);
    v155(v35, v187);
    v66 = sub_1000136BC(v63, v65, &v190);
    v57 = v187;

    *(v61 + 14) = v66;
    *(v61 + 22) = 2048;
    *(v61 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v58, v59, "Play sound running: for %{private,mask.hash}s, timeout: %f.", v61, 0x20u);
    sub_100007BAC(v62);

    v46 = v186;
  }

  else
  {

    v155 = *(v55 + 8);
    v155(v35, v57);
  }

  v67 = v184;
  sub_1000D2A70(v193, &v188, &qword_101696920, &unk_10138B200);
  v68 = v41;
  if (!v189)
  {
    sub_10000B3A8(&v188, &qword_101696920, &unk_10138B200);
LABEL_15:
    v41[v67[10]] = 0;
    goto LABEL_28;
  }

  sub_10000A748(&v188, &v190);
  v69 = v191;
  v70 = v192;
  sub_1000035D0(&v190, v191);
  if (((*(v70 + 120))(v69, v70) & 1) == 0)
  {
    sub_100007BAC(&v190);
    v57 = v187;
    goto LABEL_15;
  }

  sub_100AC6DA0(v46, v26);
  v71 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  v72 = (*(*(v71 - 8) + 48))(v26, 1, v71);
  v57 = v187;
  if (v72 == 1)
  {
    sub_10000B3A8(v26, &qword_10169DBD0, &unk_1013D6790);
  }

  else
  {
    v73 = v165;
    sub_1008336E8(v26, v165, type metadata accessor for BeaconStatus);
    v74 = *(v73 + *(v166 + 20));
    sub_1008333E4(v73, type metadata accessor for BeaconStatus);
    v75 = sub_10001993C(v74 & 0xB);
    sub_10001F280(&v190, &v188);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v76 = v169;
    v77 = v168;
    v78 = swift_dynamicCast();
    v79 = *(v167 + 56);
    if (v78)
    {
      v79(v76, 0, 1, v77);
      v80 = v164;
      sub_1008336E8(v76, v164, type metadata accessor for OwnedBeaconRecord);
      v81 = sub_100D608FC();
      if ((v81 & 0x100) != 0)
      {
        sub_1008333E4(v80, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v82 = v81;
        v83 = v191;
        v84 = v192;
        v85 = sub_1000035D0(&v190, v191);
        v86 = sub_100B167CC(v85, (v75 >> 8) & 1, HIWORD(v75) & 1, HIBYTE(v75) & 1, v83, v84);
        v87 = v86[2] == 2 && (sub_1011207C8(2u, v86) || v82 == 2);
        v46 = v186;
        v88 = v161;
        v89 = v163;
        v90 = v87;
        v41[*(v184 + 40)] = v87;
        v91 = v187;
        v88(v89, v46, v187);
        swift_bridgeObjectRetain_n();
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          *&v188 = v169;
          *v94 = 67110147;
          *(v94 + 4) = v90;
          *(v94 + 8) = 2160;
          *(v94 + 10) = 1752392040;
          *(v94 + 18) = 2081;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          v97 = v96;
          v155(v89, v91);
          v98 = sub_1000136BC(v95, v97, &v188);

          *(v94 + 20) = v98;
          *(v94 + 28) = 2048;
          v99 = v86[2];

          *(v94 + 30) = v99;

          *(v94 + 38) = 2082;
          v100 = Set.description.getter();
          v102 = v101;

          v103 = sub_1000136BC(v100, v102, &v188);

          *(v94 + 40) = v103;
          _os_log_impl(&_mh_execute_header, v92, v93, "Play sound running: airPodPlayingSoundWithBothBudsInCase %{BOOL}d for %{private,mask.hash}s. Nearby Count: %ld, nearby: %{public}s.", v94, 0x30u);
          swift_arrayDestroy();

          v46 = v186;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v155(v89, v91);
        }

        sub_1008333E4(v164, type metadata accessor for OwnedBeaconRecord);
        v67 = v184;
        v57 = v91;
      }
    }

    else
    {
      v79(v76, 1, 1, v77);
      sub_10000B3A8(v76, &unk_1016A9A20, &qword_10138B280);
    }
  }

  sub_100007BAC(&v190);
LABEL_28:
  swift_beginAccess();
  *(v68 + v67[6]) = 2;
  v104 = v172;
  static Date.trustedNow.getter(v172);
  (*(v173 + 40))(v68 + v67[8], v104, v174);
  swift_endAccess();
  v105 = v171;
  v106 = v161;
  v161(v171, v46, v57);
  v187 = v68;
  v107 = v175;
  sub_100833680(v68, v175, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  (*(v185 + 56))(v107, 0, 1, v67);
  swift_beginAccess();
  sub_1001DE600(v107, v105);
  swift_endAccess();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v108 = qword_10177B2E8;
  v109 = v178;
  v106(v178, v46, v57);
  v110 = v176;
  static Date.trustedNow.getter(v109 + *(v176 + 20));
  *(v109 + *(v110 + 24)) = 25;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v111 = *(v177 + 72);
  v112 = (*(v177 + 80) + 32) & ~*(v177 + 80);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_101385D80;
  sub_100833680(v109, v113 + v112, type metadata accessor for BeaconObservation);
  v114 = type metadata accessor for Transaction();
  __chkstk_darwin(v114);
  *(&v154 - 4) = v108;
  *(&v154 - 3) = v113;
  *(&v154 - 2) = 0;
  *(&v154 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v109, type metadata accessor for BeaconObservation);
  sub_10082145C(v46);
  v115 = sub_100810310(v46);
  My = type metadata accessor for Feature.FindMy();
  v191 = My;
  v192 = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v117 = sub_1000280DC(&v190);
  (*(*(My - 8) + 104))(v117, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v190);
  if ((My & 1) == 0)
  {
    v118 = v159;
    v119 = v187;
    v120 = v160;
    goto LABEL_54;
  }

  v118 = v159;
  v119 = v187;
  v120 = v160;
  if ((v115 & 1) == 0)
  {
    v121 = v170;
    if (v170 > 5)
    {
      if (qword_101694968 != -1)
      {
        v153 = v159;
        swift_once();
        v118 = v153;
      }

      v131 = v118;
      sub_1000076D4(v118, qword_1016AA7B0);
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v190 = v135;
        *v134 = 136315394;
        *(v134 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101360E90, &v190);
        *(v134 + 12) = 2048;
        *(v134 + 14) = v121;
        _os_log_impl(&_mh_execute_header, v132, v133, "%s Unexpected play sound context %ld!", v134, 0x16u);
        sub_100007BAC(v135);
      }

      sub_1000D2A70(v193, &v190, &qword_101696920, &unk_10138B200);
      v136 = v191;
      if (v191)
      {
        v137 = v192;
        sub_1000035D0(&v190, v191);
        v138 = (*(v137 + 184))(v136, v137);
        sub_100007BAC(&v190);
        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v141 = v140;
        if (v139 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v141 == v142)
        {

          a3 = 30.0;
          v118 = v131;
          goto LABEL_54;
        }

        v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a3 = 30.0;
        v118 = v131;
        if (v143)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_10000B3A8(&v190, &qword_101696920, &unk_10138B200);
        v118 = v131;
      }
    }

    else
    {
      if (((1 << v170) & 0x1D) == 0)
      {
        a3 = 2.0;
        goto LABEL_54;
      }

      v122 = v159;
      sub_1000D2A70(v193, &v190, &qword_101696920, &unk_10138B200);
      v123 = v191;
      if (v191)
      {
        v124 = v192;
        sub_1000035D0(&v190, v191);
        v125 = (*(v124 + 184))(v123, v124);
        sub_100007BAC(&v190);
        v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v128 = v127;
        if (v126 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v128 == v129)
        {

          a3 = 30.0;
          v118 = v122;
          goto LABEL_54;
        }

        v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a3 = 30.0;
        v118 = v122;
        if (v130)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_10000B3A8(&v190, &qword_101696920, &unk_10138B200);
        v118 = v122;
      }
    }

    a3 = 20.0;
  }

LABEL_54:
  if (qword_101694968 != -1)
  {
    v152 = v118;
    swift_once();
    v118 = v152;
  }

  sub_1000076D4(v118, qword_1016AA7B0);
  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v190 = v147;
    *v146 = 136315394;
    *(v146 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101360E90, &v190);
    *(v146 + 12) = 2048;
    *(v146 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v144, v145, "%s scheduling timeout block after %f seconds", v146, 0x16u);
    sub_100007BAC(v147);
  }

  v148 = v180;
  static DispatchTime.now()();
  v149 = v181;
  + infix(_:_:)();
  v150 = *(v182 + 8);
  v150(v148, v120);
  v151 = *(v119 + v67[7]);

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v150(v149, v120);
  sub_10000B3A8(v193, &qword_101696920, &unk_10138B200);
  return sub_1008333E4(v119, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
}

uint64_t sub_100819C70(uint64_t a1, int a2)
{
  v64 = a2;
  v63 = type metadata accessor for PlaySoundUserNotification();
  v4 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizationUtility.Table();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v59 - v20;
  v22 = type metadata accessor for WildModeAssociationRecord(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v2 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100023184(a1, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000B3A8(v21, &unk_1016C7C90, &qword_1013BB4B0);
    sub_100AC53EC(a1, v12);
    v28 = a1;
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_10000B3A8(v12, &unk_1016AF8B0, &unk_1013A0700);
      v29 = sub_100A8F20C(a1);
      v31 = v65;
      v32 = v63;
      if (v30)
      {
        v33 = v29;
        v34 = v30;
      }

      else
      {
        v39 = v61;
        v38 = v62;
        v40 = v60;
        (*(v61 + 104))(v60, enum case for LocalizationUtility.Table.default(_:), v62);
        v33 = static LocalizationUtility.localizedString(key:table:)();
        v34 = v41;
        (*(v39 + 8))(v40, v38);
      }

      v36 = 64;
    }

    else
    {
      sub_1008336E8(v12, v17, type metadata accessor for OwnedBeaconGroup);
      v37 = &v17[*(v13 + 36)];
      v33 = *v37;
      v34 = v37[1];

      sub_1008333E4(v17, type metadata accessor for OwnedBeaconGroup);
      v36 = 64;
      v31 = v65;
      v32 = v63;
    }
  }

  else
  {
    sub_1008336E8(v21, v26, type metadata accessor for WildModeAssociationRecord);
    v33 = sub_100306A98();
    v34 = v35;
    sub_1008333E4(v26, type metadata accessor for WildModeAssociationRecord);
    v36 = 65;
    v31 = v65;
    v28 = a1;
    v32 = v63;
  }

  v42 = v32[9];
  v43 = type metadata accessor for UUID();
  (*(*(v43 - 8) + 16))(&v31[v42], v28, v43);
  *v31 = 1;
  v31[1] = v36;
  v44 = &v31[v32[6]];
  UUID.init()();
  v45 = &v31[v32[7]];
  *v45 = v33;
  v45[1] = v34;
  v31[v32[8]] = v64 & 1;
  if (qword_101694EE0 != -1)
  {
    swift_once();
  }

  v68[3] = v32;
  v68[4] = &off_101636A50;
  v46 = sub_1000280DC(v68);
  sub_100833680(v31, v46, type metadata accessor for PlaySoundUserNotification);
  v47 = *v46;
  v48 = objc_allocWithZone(UNUserNotificationCenter);
  v49 = String._bridgeToObjectiveC()();

  v50 = [v48 initWithBundleIdentifier:v49];

  v51 = sub_10111B408(v46);
  v52 = v46 + v32[6];
  UUID.uuidString.getter();
  v53 = v51;
  v54 = String._bridgeToObjectiveC()();

  v55 = [objc_opt_self() requestWithIdentifier:v54 content:v53 trigger:0 destinations:7];

  sub_10001F280(v68, v67);
  v56 = swift_allocObject();
  sub_10000A748(v67, v56 + 16);
  *(v56 + 56) = 0;
  *(v56 + 64) = 0;
  aBlock[4] = sub_100358EC4;
  aBlock[5] = v56;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_1016358B0;
  v57 = _Block_copy(aBlock);

  [v50 addNotificationRequest:v55 withCompletionHandler:v57];

  _Block_release(v57);
  sub_100007BAC(v68);
  return sub_1008333E4(v31, type metadata accessor for PlaySoundUserNotification);
}

uint64_t sub_10081A3C8(int64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, double a6)
{
  v192 = a5;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v201 = &v174[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v200 = &v174[-v15];
  v197 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v16 = *(*(v197 - 8) + 64);
  __chkstk_darwin(v197);
  v196 = &v174[-v17];
  v213 = type metadata accessor for Date();
  v214 = *(v213 - 8);
  v18 = *(v214 + 64);
  __chkstk_darwin(v213);
  v202 = &v174[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = type metadata accessor for BeaconObservation();
  v208 = *(v209 - 8);
  v20 = *(v208 + 64);
  __chkstk_darwin(v209);
  v207 = &v174[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v190 = type metadata accessor for DispatchWorkItemFlags();
  v189 = *(v190 - 8);
  v22 = *(v189 + 64);
  __chkstk_darwin(v190);
  v187 = &v174[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v188 = type metadata accessor for DispatchQoS();
  v186 = *(v188 - 8);
  v24 = *(v186 + 64);
  __chkstk_darwin(v188);
  v185 = &v174[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v184 = type metadata accessor for DispatchQoS.QoSClass();
  v183 = *(v184 - 8);
  v26 = *(v183 + 64);
  __chkstk_darwin(v184);
  v182 = &v174[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v203 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v180 = *(v203 - 8);
  v28 = v180[8];
  v29 = __chkstk_darwin(v203);
  v179 = &v174[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v29);
  v195 = &v174[-v32];
  __chkstk_darwin(v31);
  *&v204 = &v174[-v33];
  v34 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v212 = &v174[-v36];
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v220 = &v174[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = __chkstk_darwin(v40);
  v216 = &v174[-v43];
  v44 = __chkstk_darwin(v42);
  v205 = &v174[-v45];
  v46 = __chkstk_darwin(v44);
  v219 = &v174[-v47];
  v48 = __chkstk_darwin(v46);
  v206 = &v174[-v49];
  v50 = __chkstk_darwin(v48);
  v52 = &v174[-v51];
  v53 = __chkstk_darwin(v50);
  v55 = &v174[-v54];
  __chkstk_darwin(v53);
  v57 = &v174[-v56];
  v221 = 0;
  v58 = *(type metadata accessor for OwnedBeaconGroup(0) + 24);
  v217 = v38;
  v61 = *(v38 + 16);
  v60 = (v38 + 16);
  v59 = v61;
  v61(v57, (a1 + v58), v37);
  v199 = a2;
  LODWORD(v215) = sub_10080AF18();
  if (qword_101694960 != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v62 = type metadata accessor for Logger();
    v63 = sub_1000076D4(v62, qword_10177B380);
    v194 = v57;
    v59(v55, v57, v37);
    v211 = v60;
    v210 = v59;
    v59(v52, a3, v37);
    v178 = v63;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    v66 = os_log_type_enabled(v64, v65);
    v198 = a1;
    v193 = a3;
    v191 = a4;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      aBlock = *&v177;
      *v67 = 136315650;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v176 = v64;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = v217;
      v175 = v65;
      v72 = *(v217 + 8);
      v72(v55, v37);
      v73 = sub_1000136BC(v68, v70, &aBlock);

      *(v67 + 4) = v73;
      *(v67 + 12) = 2048;
      *(v67 + 14) = a6;
      *(v67 + 22) = 2080;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v218 = v72;
      v72(v52, v37);
      v57 = v71;
      v77 = sub_1000136BC(v74, v76, &aBlock);

      *(v67 + 24) = v77;
      v78 = v176;
      _os_log_impl(&_mh_execute_header, v176, v175, "Stop sound %s timeout %f. CommandId %s", v67, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v57 = v217;
      v79 = *(v217 + 8);
      v79(v52, v37);
      v218 = v79;
      v79(v55, v37);
    }

    v80 = v202;
    v81 = v219;
    v181 = v37;
    if ((v215 & 1) == 0)
    {
      break;
    }

    v82 = sub_100519FB0();
    v83 = v212;
    sub_10112C648(v82, v212);

    if ((*(v57 + 6))(v83, 1, v37) == 1)
    {
      sub_10000B3A8(v83, &qword_1016980D0, &unk_10138F3B0);
      break;
    }

    v84 = v206;
    (*(v57 + 4))(v206, v83, v37);
    v85 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
    v86 = v199;
    swift_beginAccess();
    v87 = *(v86 + v85);
    if (!*(v87 + 16))
    {
      goto LABEL_17;
    }

    v88 = sub_1000210EC(v84);
    if ((v89 & 1) == 0)
    {

LABEL_17:
      v218(v84, v37);
      break;
    }

    v90 = v195;
    sub_100833680(*(v87 + 56) + v180[9] * v88, v195, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

    v91 = v204;
    sub_1008336E8(v90, v204, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    if (*(v91 + *(v203 + 24)) == 4)
    {
      v210(v81, v194, v37);
      v92 = v179;
      sub_100833680(v91, v179, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v93, v94))
      {

        sub_1008333E4(v92, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v113 = v218;
        v218(v81, v37);
        sub_1008333E4(v91, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v113(v206, v37);
        v57 = v217;
        break;
      }

      LODWORD(v215) = v94;
      v95 = v81;
      v96 = swift_slowAlloc();
      aBlock = COERCE_DOUBLE(swift_slowAlloc());
      *v96 = 136315394;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v218(v95, v37);
      v100 = sub_1000136BC(v97, v99, &aBlock);

      *(v96 + 4) = v100;
      *(v96 + 12) = 2080;
      v101 = *(v92 + *(v203 + 24));
      if (v101 <= 2)
      {
        if (*(v92 + *(v203 + 24)))
        {
          if (v101 == 1)
          {
            v114 = 0x4979616C702ELL;
            goto LABEL_43;
          }

          v117 = 0xEC000000676E696ELL;
          v115 = 0x6E755279616C702ELL;
        }

        else
        {
          v117 = 0xEB00000000646575;
          v115 = 0x65755179616C702ELL;
        }
      }

      else if (*(v92 + *(v203 + 24)) > 4u)
      {
        if (v101 == 5)
        {
          v102 = 0x43706F74732ELL;
LABEL_39:
          v115 = v102 & 0xFFFFFFFFFFFFLL | 0x6D6F000000000000;
          v116 = 1952803952;
          goto LABEL_44;
        }

LABEL_91:
        v117 = 0xE800000000000000;
        v115 = 0x74756F656D69742ELL;
      }

      else
      {
        if (v101 == 3)
        {
          v102 = 0x4379616C702ELL;
          goto LABEL_39;
        }

        v114 = 0x49706F74732ELL;
LABEL_43:
        v115 = v114 & 0xFFFFFFFFFFFFLL | 0x696E000000000000;
        v116 = 1952541044;
LABEL_44:
        v117 = v116 | 0xEE00646500000000;
      }

      sub_1008333E4(v92, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v118 = sub_1000136BC(v115, v117, &aBlock);

      *(v96 + 14) = v118;
      _os_log_impl(&_mh_execute_header, v93, v215, "Cannot stop sound for %s. Invalid state %s!", v96, 0x16u);
      swift_arrayDestroy();

      sub_1008333E4(v204, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v37 = v181;
      v218(v206, v181);
LABEL_46:
      v80 = v202;
      break;
    }

    v59 = v37;
    v103 = sub_100519FB0();
    v52 = v103;
    v55 = (v103 + 56);
    v104 = 1 << *(v103 + 32);
    v105 = -1;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    a4 = v105 & *(v103 + 56);
    v106 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;

    v219 = v106;
    swift_beginAccess();
    v37 = 0;
    a1 = (v104 + 63) >> 6;
    v60 = v57 + 8;
    a3 = v205;
    while (a4)
    {
LABEL_29:
      v210(a3, (*(v52 + 6) + *(v57 + 9) * (__clz(__rbit64(a4)) | (v37 << 6))), v59);
      v108 = *&v219[v199];
      if (*(v108 + 16))
      {
        v109 = *&v219[v199];

        v110 = sub_1000210EC(a3);
        if (v111)
        {
          v112 = *(*(v108 + 56) + 8 * v110);

          *&aBlock = 4;
          PassthroughSubject.send(completion:)();
        }

        else
        {
        }

        a3 = v205;
      }

      a4 &= a4 - 1;
      sub_100815748(a3, 0, 0);
      v218(a3, v59);
    }

    while (1)
    {
      v107 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v107 >= a1)
      {

        sub_1008333E4(v204, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v37 = v59;
        v218(v206, v59);

        goto LABEL_46;
      }

      a4 = *&v55[8 * v107];
      ++v37;
      if (a4)
      {
        v37 = v107;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_93:
    swift_once();
  }

  v119 = sub_100519FB0();
  v93 = (v119 + 56);
  v120 = 1 << *(v119 + 32);
  v121 = -1;
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  isa = v121 & *(v119 + 56);
  v123 = (v120 + 63) >> 6;
  v195 = (v214 + 48);
  v212 = (v214 + 32);
  LODWORD(v203) = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  v180 = NSSystemClockDidChangeNotification;
  v179 = &v229;
  v205 = v57 + 32;
  v215 = v57 + 8;
  v214 = v119;

  v96 = 0;
  v92 = &unk_101696900;
  v204 = xmmword_101385D80;
  v124 = v216;
  v206 = v123;
  while (isa)
  {
LABEL_57:
    v133 = *(v214 + 48) + *(v57 + 9) * (__clz(__rbit64(isa)) | (v96 << 6));
    v134 = v210;
    v210(v124, v133, v37);
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v219 = qword_10177B2E8;
    v134(v220, v124, v37);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    aBlock = 7.45683732e247;
    *&v228 = -5.98008217e197;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v135 = v221;
    if (v222 == 1)
    {
      v136 = [objc_opt_self() sharedInstance];
      v137 = [v136 isInternalBuild];

      if (v137)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v138 = sub_1000076D4(v197, qword_101696A00);
        swift_beginAccess();
        v139 = v138;
        v140 = v196;
        sub_1000D2A70(v139, v196, &unk_101696900, &unk_10138B1E0);
        v125 = v213;
        if ((*v195)(v140, 1, v213) != 1)
        {
          (*v212)(v80, v140, v125);
          goto LABEL_51;
        }

        sub_10000B3A8(v140, &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    v230 = My;
    v231 = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v142 = sub_1000280DC(&aBlock);
    (*(*(My - 8) + 104))(v142, v203, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&aBlock);
    if (My)
    {
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v143 = *&v228;
      if ((LOBYTE(aBlock) & 1) == 0)
      {
        v144 = [objc_opt_self() defaultCenter];
        v231 = sub_1000DFB44;
        v232 = 0;
        aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
        v228 = 1107296256;
        v229 = sub_100F0FA50;
        v230 = &unk_101635220;
        v145 = _Block_copy(&aBlock);

        v146 = [v144 addObserverForName:v180 object:0 queue:0 usingBlock:v145];
        _Block_release(v145);
        v80 = v202;
        swift_unknownObjectRelease();
      }

      if (qword_101694FE8 != -1)
      {
        swift_once();
      }

      if (*&qword_1016C0DA0 >= v143)
      {
        sub_100F10324(0);
      }

      Current = CFAbsoluteTimeGetCurrent();
      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - aBlock - *&v228 <= 86400.0)
      {
        v125 = v213;
      }

      else
      {
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v221 = v135;
        v148 = type metadata accessor for TaskPriority();
        v149 = *(v148 - 8);
        v150 = v200;
        (*(v149 + 56))(v200, 1, 1, v148);
        v151 = swift_allocObject();
        *(v151 + 16) = 0;
        *(v151 + 24) = 0;
        v152 = v201;
        sub_1000D2A70(v150, v201, &qword_101698C00, &qword_10138B570);
        LODWORD(v150) = (*(v149 + 48))(v152, 1, v148);

        if (v150 == 1)
        {
          sub_10000B3A8(v152, &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v149 + 8))(v201, v148);
        }

        v154 = *(v151 + 16);
        v153 = *(v151 + 24);
        swift_unknownObjectRetain();

        if (v154)
        {
          swift_getObjectType();
          v155 = dispatch thunk of Actor.unownedExecutor.getter();
          v157 = v156;
          swift_unknownObjectRelease();
        }

        else
        {
          v155 = 0;
          v157 = 0;
        }

        v37 = v181;
        sub_10000B3A8(v200, &qword_101698C00, &qword_10138B570);
        v158 = swift_allocObject();
        *(v158 + 16) = &unk_10138B610;
        *(v158 + 24) = v151;
        v135 = v221;
        if (v157 | v155)
        {
          v223 = 0;
          v224 = 0;
          v225 = v155;
          v226 = v157;
        }

        v125 = v213;
        swift_task_create();

        v80 = v202;
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
      v125 = v213;
    }

LABEL_51:
    isa &= isa - 1;
    v126 = v207;
    (*v205)(v207, v220, v37);
    v127 = v209;
    (*v212)(v126 + *(v209 + 20), v80, v125);
    *(v126 + *(v127 + 24)) = 26;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v128 = *(v208 + 72);
    v129 = (*(v208 + 80) + 32) & ~*(v208 + 80);
    v130 = swift_allocObject();
    *(v130 + 16) = v204;
    sub_100833680(v126, v130 + v129, type metadata accessor for BeaconObservation);
    v131 = type metadata accessor for Transaction();
    __chkstk_darwin(v131);
    *&v174[-32] = v219;
    *&v174[-24] = v130;
    *&v174[-16] = 0;
    *&v174[-8] = 0;
    static Transaction.named<A>(_:with:)();
    v221 = v135;

    sub_1008333E4(v126, type metadata accessor for BeaconObservation);
    v124 = v216;
    v218(v216, v37);
    v57 = v217;
    v123 = v206;
    v92 = &unk_101696900;
  }

  while (1)
  {
    v132 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v132 >= v123)
    {
      break;
    }

    isa = v93[v132].isa;
    ++v96;
    if (isa)
    {
      v96 = v132;
      goto LABEL_57;
    }
  }

  sub_1000BC488();
  v159 = v183;
  v160 = v182;
  v161 = v184;
  (*(v183 + 104))(v182, enum case for DispatchQoS.QoSClass.default(_:), v184);
  v162 = static OS_dispatch_queue.global(qos:)();
  (*(v159 + 8))(v160, v161);
  v163 = swift_allocObject();
  v164 = v192;
  *(v163 + 16) = v191;
  *(v163 + 24) = v164;
  v231 = sub_100470308;
  v232 = v163;
  aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
  v228 = 1107296256;
  v229 = sub_100006684;
  v230 = &unk_1016352C0;
  v165 = _Block_copy(&aBlock);

  v166 = v37;
  v167 = v185;
  static DispatchQoS.unspecified.getter();
  v222 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v168 = v187;
  v169 = v190;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v165);

  (*(v189 + 8))(v168, v169);
  (*(v186 + 8))(v167, v188);

  v170 = type metadata accessor for Transaction();
  __chkstk_darwin(v170);
  v171 = v199;
  *&v174[-48] = v198;
  *&v174[-40] = v171;
  *&v174[-32] = v193;
  *&v174[-24] = a6;
  v172 = v194;
  *&v174[-16] = v194;
  static Transaction.named<A>(_:with:)();
  return (v218)(v172, v166);
}

uint64_t sub_10081C254(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, double a6)
{
  v118 = a5;
  v127 = a4;
  v122 = a1;
  v10 = sub_1000BC4D4(&qword_1016AA8E8, &qword_1013BD6E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v88 - v13;
  v15 = sub_1000BC4D4(&qword_1016AA8F0, &unk_1013BD6E8);
  v125 = *(v15 - 1);
  v16 = *(v125 + 8);
  __chkstk_darwin(v15);
  v18 = &v88 - v17;
  v19 = type metadata accessor for OwnedBeaconGroup(0);
  v112 = *(v19 - 8);
  v20 = *(v112 + 64);
  __chkstk_darwin(v19 - 8);
  v113 = v21;
  v121 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for UUID();
  v114 = *(v117 - 8);
  v22 = *(v114 + 64);
  __chkstk_darwin(v117);
  v111 = v23;
  v116 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v107 = &v88 - v26;
  v100 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v98 = *(v100 - 8);
  v27 = *(v98 + 64);
  __chkstk_darwin(v100);
  v95 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1000BC4D4(&qword_1016AA8F8, &qword_1013BD6F8);
  v92 = *(v94 - 8);
  v29 = *(v92 + 64);
  __chkstk_darwin(v94);
  v91 = &v88 - v30;
  v97 = sub_1000BC4D4(&qword_1016AA900, &qword_1013BD700);
  v96 = *(v97 - 8);
  v31 = *(v96 + 64);
  __chkstk_darwin(v97);
  v93 = &v88 - v32;
  v102 = sub_1000BC4D4(&qword_1016AA908, &qword_1013BD708);
  v101 = *(v102 - 8);
  v33 = *(v101 + 64);
  __chkstk_darwin(v102);
  v99 = &v88 - v34;
  v105 = sub_1000BC4D4(&qword_1016AA910, &qword_1013BD710);
  v104 = *(v105 - 1);
  v35 = *(v104 + 64);
  __chkstk_darwin(v105);
  v103 = &v88 - v36;
  v110 = sub_1000BC4D4(&qword_1016AA918, &qword_1013BD718);
  v109 = *(v110 - 8);
  v37 = *(v109 + 64);
  __chkstk_darwin(v110);
  v115 = &v88 - v38;
  v39 = _swiftEmptyArrayStorage;
  v134 = _swiftEmptyArrayStorage;
  v119 = a2;
  v40 = sub_100519FB0();
  v129 = &v134;
  v130 = a3;
  v120 = a3;
  v131 = v127;
  sub_1005C6534(sub_100832438, v128, v40);
  v108 = v6;

  v41 = v134;
  v42 = v134[2];
  v106 = v134;
  if (v42)
  {
    v133 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v43 = v41 + 4;
    v44 = sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720);
    v126 = v11 + 8;
    v127 = v44;
    v124 = v10;
    v125 += 8;
    v45 = v18;
    v123 = v15;
    do
    {
      v46 = *v43++;
      v132 = v46;

      sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
      sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
      Publisher.map<A>(_:)();
      sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
      sub_1000041A4(&qword_1016AA940, &qword_1016AA8E8, &qword_1013BD6E0);
      sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730);
      v47 = v124;
      Publisher.catch<A>(_:)();
      (*v126)(v14, v47);
      sub_1000041A4(&qword_1016AA950, &qword_1016AA8F0, &unk_1013BD6E8);
      v48 = v123;
      Publisher.eraseToAnyPublisher()();

      (*v125)(v45, v48);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v49 = v133[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v42;
    }

    while (v42);
    v39 = v133;
  }

  v127 = Transaction.subscriptionCleaner.getter();
  v126 = swift_allocObject();
  *(v126 + 16) = 0;
  v133 = v39;
  sub_1000BC4D4(&qword_1016AA958, &qword_1013BD738);
  sub_1000041A4(&qword_1016AA960, &qword_1016AA958, &qword_1013BD738);
  sub_1000041A4(&qword_1016AA968, &qword_1016AA970, &qword_1013BD740);
  v50 = Sequence<>.merged()();

  v133 = v50;
  sub_1000BC4D4(&qword_1016AA970, &qword_1013BD740);
  sub_100832458();
  v51 = v91;
  Publisher<>.setFailureType<A>(to:)();

  v52 = v95;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v133 = *&v120[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v53 = v133;
  v54 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v55 = *(v54 - 8);
  v124 = *(v55 + 56);
  v125 = (v55 + 56);
  v56 = v107;
  v124(v107, 1, 1, v54);
  v90 = sub_1000BC488();
  sub_1000041A4(&qword_1016AA980, &qword_1016AA8F8, &qword_1013BD6F8);
  v123 = sub_1008345FC(&qword_1016AF9C0, sub_1000BC488);
  v89 = v53;
  v57 = v93;
  v58 = v94;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v56, &unk_1016B0FE0, &unk_101391980);
  (*(v98 + 8))(v52, v100);
  (*(v92 + 8))(v51, v58);
  sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);
  sub_1000041A4(&qword_1016AA990, &qword_1016AA900, &qword_1013BD700);
  v59 = v99;
  v60 = v97;
  Publisher.map<A>(_:)();
  (*(v96 + 8))(v57, v60);
  sub_1000BC4D4(&qword_1016AA998, &qword_1013BD750);
  sub_1000041A4(&qword_1016AA9A0, &qword_1016AA908, &qword_1013BD708);
  sub_1000041A4(&qword_1016AA9A8, &qword_1016AA998, &qword_1013BD750);
  v61 = v103;
  v62 = v102;
  Publisher.catch<A>(_:)();
  (*(v101 + 8))(v59, v62);
  v63 = v89;
  v133 = v89;
  v124(v56, 1, 1, v54);
  sub_1000041A4(&qword_1016AA9B0, &qword_1016AA910, &qword_1013BD710);
  v64 = v105;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v56, &unk_1016B0FE0, &unk_101391980);

  (*(v104 + 8))(v61, v64);
  v65 = v114;
  v66 = *(v114 + 16);
  v124 = (v114 + 16);
  v125 = v66;
  v68 = v116;
  v67 = v117;
  (v66)(v116, v118, v117);
  v123 = type metadata accessor for OwnedBeaconGroup;
  sub_100833680(v119, v121, type metadata accessor for OwnedBeaconGroup);
  v69 = *(v65 + 80);
  v70 = (v69 + 32) & ~v69;
  v111 += 7;
  v71 = (v111 + v70) & 0xFFFFFFFFFFFFFFF8;
  v72 = *(v112 + 80);
  v107 = (v72 + 8);
  v73 = (v72 + 8 + v71) & ~v72;
  v112 = v69 | v72;
  v113 += 7;
  v104 = (v113 + v73) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v75 = v127;
  *(v74 + 16) = v122;
  *(v74 + 24) = v75;
  v114 = *(v65 + 32);
  (v114)(v74 + v70, v68, v67);
  *(v74 + v71) = v126;
  v105 = type metadata accessor for OwnedBeaconGroup;
  v76 = v74 + v73;
  v77 = v121;
  sub_1008336E8(v121, v76, type metadata accessor for OwnedBeaconGroup);
  v78 = v120;
  *(v74 + v104) = v120;
  (v125)(v68, v118, v67);
  sub_100833680(v119, v77, v123);
  v79 = (v69 + 16) & ~v69;
  v80 = (v111 + v79) & 0xFFFFFFFFFFFFFFF8;
  v81 = &v107[v80] & ~v72;
  v82 = (v113 + v81) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (v114)(v83 + v79, v116, v117);
  *(v83 + v80) = v126;
  sub_1008336E8(v121, v83 + v81, v105);
  *(v83 + v82) = v78;
  *(v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8)) = a6;
  sub_1000041A4(&qword_1016AA9B8, &qword_1016AA918, &qword_1013BD718);
  swift_retain_n();
  v84 = v78;

  swift_unknownObjectRetain();
  v85 = v110;
  v86 = v115;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v109 + 8))(v86, v85);
  AnyCancellable.store(in:)();

  swift_unknownObjectRelease();
}

uint64_t sub_10081D388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v32 - v10;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v34 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v36 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v35 = a4;
  sub_10081D85C(a1, a4);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*a2 + 16) >= *(*a2 + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32[1] = a3;
  v32[0] = *(v15 + 16);
  v18 = v36;
  (v32[0])(v36, v37, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  *(v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_10083271C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016353D8;
  _Block_copy(aBlock);
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);

  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = type metadata accessor for DispatchWorkItem();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = DispatchWorkItem.init(flags:block:)();

  v25 = v36;
  v26 = v37;
  v27 = v32[0];
  (v32[0])(v36, v37, v14);
  v27(v11, v35, v14);
  v28 = v27;
  v29 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v28(&v11[v29[5]], v26, v14);
  v30 = v29[8];

  static Date.trustedNow.getter(&v11[v30]);
  v11[v29[6]] = 4;
  *&v11[v29[7]] = v24;
  *&v11[v29[9]] = 0;
  v11[v29[10]] = 0;
  (*(*(v29 - 1) + 56))(v11, 0, 1, v29);
  swift_beginAccess();
  sub_1001DE600(v11, v25);
  swift_endAccess();
}

uint64_t sub_10081D85C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v116 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v107 = &v101 - v7;
  v8 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v101 - v10;
  v112 = type metadata accessor for WildModeAssociationRecord(0);
  v114 = *(v112 - 8);
  v12 = *(v114 + 64);
  v13 = __chkstk_darwin(v112);
  v106 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v115 = (&v101 - v14);
  v119 = type metadata accessor for UUID();
  v117 = *(v119 - 8);
  v15 = *(v117 + 64);
  v16 = __chkstk_darwin(v119);
  v101 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v105 = &v101 - v18;
  v19 = __chkstk_darwin(v17);
  v104 = &v101 - v20;
  __chkstk_darwin(v19);
  v22 = &v101 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = v3;
  v28 = *&v3[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v110 = a2;
    if (qword_101694960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v109 = type metadata accessor for Logger();
  sub_1000076D4(v109, qword_10177B380);
  v31 = v116;
  v30 = v117;
  v32 = *(v117 + 16);
  v111 = v117 + 16;
  v113 = v32;
  v32(v22, v116, v119);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v103 = v12;
  v102 = v15;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = v119;
    v38 = v36;
    v39 = swift_slowAlloc();
    v120[0] = v39;
    *v38 = 141558275;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = v37;
    v44 = *(v30 + 8);
    (v44)(v22, v43);
    v45 = sub_1000136BC(v40, v42, v120);
    v31 = v116;

    *(v38 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v33, v34, "Calling stop sound on device %{private,mask.hash}s", v38, 0x16u);
    sub_100007BAC(v39);
  }

  else
  {

    v44 = *(v30 + 8);
    (v44)(v22, v119);
  }

  v46 = sub_1000BC4D4(&qword_1016AA9C0, &qword_1013BD758);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = PassthroughSubject.init()();
  v50 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_stopSoundSubjects;
  v51 = v118;
  swift_beginAccess();

  v52 = *&v51[v50];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = *&v51[v50];
  *&v51[v50] = 0x8000000000000000;
  sub_101000078(v49, v31, isUniquelyReferenced_nonNull_native);
  *&v51[v50] = v121;
  swift_endAccess();
  v54 = *&v51[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore];
  sub_100023184(v31, v11);
  if ((*(v114 + 48))(v11, 1, v112) == 1)
  {
    sub_10000B3A8(v11, &unk_1016C7C90, &qword_1013BB4B0);
    v55 = sub_100810310(v31);
    My = type metadata accessor for Feature.FindMy();
    v120[3] = My;
    v120[4] = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v57 = sub_1000280DC(v120);
    (*(*(My - 8) + 104))(v57, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(v120);
    if (My & 1) == 0 || (v55)
    {
      sub_100801B60();
      v84 = v83;
      v85 = swift_getObjectType();
      (*(v84 + 56))(v31, v85, v84);
      swift_unknownObjectRelease();
      v120[0] = v49;
      sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758);
      v86 = Publisher.eraseToAnyPublisher()();
    }

    else
    {
      v115 = v44;
      if (qword_101694968 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v109, qword_1016AA7B0);
      v58 = v101;
      v113(v101, v31, v119);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = v49;
        v64 = v119;
        v120[0] = v62;
        *v61 = 136315651;
        *(v61 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101360DB0, v120);
        *(v61 + 12) = 2160;
        *(v61 + 14) = 1752392040;
        *(v61 + 22) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v66;
        v68 = v64;
        v49 = v63;
        (v115)(v58, v68);
        v69 = sub_1000136BC(v65, v67, v120);
        v31 = v116;

        *(v61 + 24) = v69;
        _os_log_impl(&_mh_execute_header, v59, v60, "%s SPPlaySoundAll: %{private,mask.hash}s does NOT support ranging", v61, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (v115)(v58, v119);
      }

      v86 = sub_10082B674(v31, v110, v49);
    }

    v99 = v86;
  }

  else
  {
    v112 = v46;
    v116 = v49;
    sub_1008336E8(v11, v115, type metadata accessor for WildModeAssociationRecord);
    if (qword_101694968 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v109, qword_1016AA7B0);
    v70 = v104;
    v113(v104, v31, v119);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v119;
      v120[0] = v74;
      *v73 = 136315651;
      *(v73 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101360DB0, v120);
      *(v73 + 12) = 2160;
      *(v73 + 14) = 1752392040;
      *(v73 + 22) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      v79 = v44;
      v80 = v117;
      v79(v70, v75);
      v81 = sub_1000136BC(v76, v78, v120);

      *(v73 + 24) = v81;
      _os_log_impl(&_mh_execute_header, v71, v72, "%s Non-owner stop sound on device: %{private,mask.hash}s", v73, 0x20u);
      swift_arrayDestroy();

      v82 = v80;
    }

    else
    {

      v82 = v117;
      (v44)(v70, v119);
    }

    v87 = type metadata accessor for TaskPriority();
    v88 = v107;
    (*(*(v87 - 8) + 56))(v107, 1, 1, v87);
    v89 = v106;
    sub_100833680(v115, v106, type metadata accessor for WildModeAssociationRecord);
    v90 = v105;
    v91 = v119;
    v113(v105, v110, v119);
    v92 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v93 = (v103 + *(v82 + 80) + v92) & ~*(v82 + 80);
    v94 = v82;
    v95 = (v102 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = swift_allocObject();
    *(v96 + 16) = 0;
    *(v96 + 24) = 0;
    sub_1008336E8(v89, v96 + v92, type metadata accessor for WildModeAssociationRecord);
    (*(v94 + 32))(v96 + v93, v90, v91);
    v97 = v118;
    *(v96 + v95) = v118;
    *(v96 + ((v95 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    v98 = v97;
    sub_10025EDD4(0, 0, v88, &unk_1013BD768, v96);

    v120[0] = v116;
    sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758);
    v99 = Publisher.eraseToAnyPublisher()();
    sub_1008333E4(v115, type metadata accessor for WildModeAssociationRecord);
  }

  return v99;
}

void sub_10081E634(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B380);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v16 = sub_1000136BC(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Timed out stop sound waiting for CL. Beacon %s", v11, 0xCu);
    sub_100007BAC(v12);

    a1 = v19;
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_100815748(a1, 0, 0);
  }
}

uint64_t sub_10081E8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D2A70(a1, a2, &qword_1016AA928, &qword_1013BD728);
  sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10081E94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  Transaction.capture()();
  if (qword_101694960 != -1)
  {
LABEL_17:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177B380);
  v40 = *(v11 + 16);
  v41 = v11 + 16;
  v40(v17, a4, v10);
  swift_retain_n();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v42 = v11;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v39 = a6;
    v23 = v22;
    v38 = swift_slowAlloc();
    v44 = v38;
    *v23 = 136315394;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v37 = v20;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v19;
    v26 = v25;
    v27 = *(v11 + 8);
    v27(v17, v10);
    v28 = sub_1000136BC(v24, v26, &v44);

    *(v23 + 4) = v28;
    *(v23 + 12) = 1024;
    swift_beginAccess();
    LODWORD(v26) = *(a5 + 16);

    *(v23 + 14) = v26;

    v29 = v36;
    _os_log_impl(&_mh_execute_header, v36, v37, "Stop sound for group %s completion. Success? %{BOOL}d", v23, 0x12u);
    sub_100007BAC(v38);
  }

  else
  {

    v27 = *(v11 + 8);
    v27(v17, v10);
  }

  v30 = sub_100519FB0();
  a5 = v30;
  a4 = v30 + 56;
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v11 = v32 & *(v30 + 56);
  v17 = ((v31 + 63) >> 6);

  a6 = 0;
  if (v11)
  {
    while (1)
    {
      v33 = a6;
LABEL_13:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v40(v15, *(a5 + 48) + *(v42 + 72) * (v34 | (v33 << 6)), v10);
      sub_100815748(v15, 1, 0);
      v27(v15, v10);
      if (!v11)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v33 = a6 + 1;
    if (__OFADD__(a6, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v33 >= v17)
    {
      break;
    }

    v11 = *(a4 + 8 * v33);
    ++a6;
    if (v11)
    {
      a6 = v33;
      goto LABEL_13;
    }
  }
}

void sub_10081ED54(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v126 = a2;
  v127 = a5;
  v120 = a3;
  v121 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v128 = v8;
  v129 = v9;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v115[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v124 = &v115[-v15];
  v16 = __chkstk_darwin(v14);
  v122 = &v115[-v17];
  v18 = __chkstk_darwin(v16);
  v119 = &v115[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v115[-v21];
  __chkstk_darwin(v20);
  v125 = &v115[-v23];
  v24 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v115[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v30 = &v115[-v29];
  v31 = sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = &v115[-v33];
  sub_1000D2A70(a1, &v115[-v33], &qword_1016AA988, &qword_1013BD748);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v34;
    if (*v34 == 3)
    {
      if (qword_101694960 == -1)
      {
LABEL_4:
        v36 = type metadata accessor for Logger();
        sub_1000076D4(v36, qword_10177B380);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 134217984;
          *(v39 + 4) = a6;
          _os_log_impl(&_mh_execute_header, v37, v38, "Stop sound timed out after %f. CL should have completed by now", v39, 0xCu);
        }

        return;
      }

LABEL_39:
      swift_once();
      goto LABEL_4;
    }

    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177B380);
    v59 = v128;
    v60 = v129;
    (*(v129 + 16))(v13, v126, v128);
    sub_1008326DC(v35);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    sub_1008326EC(v35);
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v132[0] = swift_slowAlloc();
      *v63 = 136315394;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v59;
      v66 = v64;
      v68 = v67;
      (*(v60 + 8))(v13, v65);
      v69 = sub_1000136BC(v66, v68, v132);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2080;
      v131 = v35;
      sub_1008326DC(v35);
      v70 = String.init<A>(describing:)();
      v72 = sub_1000136BC(v70, v71, v132);

      *(v63 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v61, v62, "Stop sound failed for %s with unexpected error %s", v63, 0x16u);
      swift_arrayDestroy();

      sub_1008326EC(v35);
    }

    else
    {

      sub_1008326EC(v35);
      (*(v60 + 8))(v13, v59);
    }
  }

  else
  {
    sub_1000D2AD8(v34, v30, &qword_1016AA928, &qword_1013BD728);
    sub_1000D2A70(v30, v28, &qword_1016AA928, &qword_1013BD728);
    v40 = v30;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v118 = v30;
      v73 = v128;
      v74 = v129;
      v75 = v125;
      (*(v129 + 32))(v125, v28, v128);
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_1000076D4(v76, qword_10177B380);
      v77 = *(v74 + 16);
      v77(v22, v75, v73);
      v78 = v119;
      v123 = v77;
      v124 = (v74 + 16);
      v77(v119, v126, v73);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v132[0] = v117;
        *v81 = 136315394;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v82 = v78;
        v83 = v73;
        v116 = v80;
        v84 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v85;
        v87 = *(v74 + 8);
        v87(v22, v73);
        v88 = sub_1000136BC(v84, v86, v132);

        *(v81 + 4) = v88;
        *(v81 + 12) = 2080;
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        v126 = v87;
        v87(v82, v83);
        v75 = v125;
        v92 = sub_1000136BC(v89, v91, v132);

        *(v81 + 14) = v92;
        _os_log_impl(&_mh_execute_header, v79, v116, "Stop sound succeeded for %s. Group: %s", v81, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v93 = *(v74 + 8);
        v93(v78, v73);
        v126 = v93;
        v93(v22, v73);
      }

      v94 = v120;
      swift_beginAccess();
      *(v94 + 16) = 1;
      v95 = sub_100519FB0();
      __chkstk_darwin(v95);
      *&v115[-16] = v75;
      v97 = sub_100B00224(sub_1008326FC, &v115[-32], v96);
      v98 = v97;
      v99 = v97 + 56;
      v100 = 1 << *(v97 + 32);
      v101 = -1;
      if (v100 < 64)
      {
        v101 = ~(-1 << v100);
      }

      v102 = v101 & *(v97 + 56);
      v103 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_stopSoundSubjects;

      swift_beginAccess();
      v104 = 0;
      v105 = (v100 + 63) >> 6;
      v106 = v128;
      v107 = v122;
      while (v102)
      {
LABEL_34:
        v109 = __clz(__rbit64(v102));
        v102 &= v102 - 1;
        v123(v107, *(v98 + 48) + *(v129 + 72) * (v109 | (v104 << 6)), v106);
        v110 = *(v127 + v103);
        if (*(v110 + 16))
        {
          v111 = *(v127 + v103);

          v112 = sub_1000210EC(v107);
          if (v113)
          {
            v114 = *(*(v110 + 56) + 8 * v112);

            v130 = 4;
            PassthroughSubject.send(completion:)();
            v106 = v128;
          }

          else
          {
          }
        }

        v126(v107, v106);
      }

      while (1)
      {
        v108 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          break;
        }

        if (v108 >= v105)
        {
          sub_10000B3A8(v118, &qword_1016AA928, &qword_1013BD728);

          v126(v125, v106);
          return;
        }

        v102 = *(v99 + 8 * v108);
        ++v104;
        if (v102)
        {
          v104 = v108;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v41 = *v28;
    v42 = v128;
    v43 = v129;
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_10177B380);
    v45 = v124;
    (*(v43 + 16))(v124, v126, v42);
    sub_1008326DC(v41);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    sub_1008326EC(v41);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v132[0] = swift_slowAlloc();
      *v48 = 136315394;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v42;
      v51 = v49;
      v53 = v52;
      (*(v43 + 8))(v45, v50);
      v54 = sub_1000136BC(v51, v53, v132);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      v131 = v41;
      sub_1008326DC(v41);
      v55 = String.init<A>(describing:)();
      v57 = sub_1000136BC(v55, v56, v132);

      *(v48 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v46, v47, "Stop sound failed for %s with error %s", v48, 0x16u);
      swift_arrayDestroy();

      sub_1008326EC(v41);
    }

    else
    {

      sub_1008326EC(v41);
      (*(v43 + 8))(v45, v42);
    }

    sub_10000B3A8(v40, &qword_1016AA928, &qword_1013BD728);
  }
}

BOOL sub_10081F9E8()
{
  type metadata accessor for UUID();
  sub_1008345FC(&qword_1016984A0, &type metadata accessor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

void sub_10081FA7C(void (*a1)())
{
  type metadata accessor for CommandError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1008345FC(&qword_101696428, type metadata accessor for CommandError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_10081FB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v154 = a5;
  v153 = a4;
  v165 = a3;
  v161 = a2;
  v145 = type metadata accessor for BeaconObservation();
  v146 = *(v145 - 8);
  v10 = *(v146 + 64);
  __chkstk_darwin(v145);
  v147 = v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v144 = v138 - v14;
  v167 = type metadata accessor for DispatchWorkItemFlags();
  v158 = *(v167 - 8);
  v15 = *(v158 + 64);
  __chkstk_darwin(v167);
  v166 = v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for DispatchQoS();
  v156 = *(v157 - 8);
  v17 = *(v156 + 64);
  __chkstk_darwin(v157);
  v155 = v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for DispatchQoS.QoSClass();
  v151 = *(v152 - 8);
  v19 = *(v151 + 64);
  __chkstk_darwin(v152);
  v150 = v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v159 = *(v160 - 8);
  v21 = *(v159 + 64);
  v22 = __chkstk_darwin(v160);
  v140 = v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v141 = v138 - v25;
  __chkstk_darwin(v24);
  v142 = v138 - v26;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = __chkstk_darwin(v27);
  v143 = v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v30);
  v163 = v138 - v32;
  v33 = __chkstk_darwin(v31);
  v139 = v138 - v34;
  __chkstk_darwin(v33);
  v36 = v138 - v35;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_1000076D4(v37, qword_10177B380);
  v164 = v28[2];
  v164(v36, a1, v27);
  v138[1] = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v168 = a6;
  v162 = a1;
  v149 = v28 + 2;
  v148 = v28;
  if (!v41)
  {

    v46 = v28[1];
    v46(v36, v27);
    goto LABEL_21;
  }

  v42 = swift_slowAlloc();
  v138[0] = swift_slowAlloc();
  aBlock = v138[0];
  *v42 = 136446722;
  sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  v45 = v44;
  v46 = v28[1];
  v46(v36, v27);
  v47 = sub_1000136BC(v43, v45, &aBlock);

  *(v42 + 4) = v47;
  *(v42 + 12) = 2082;
  if (v161 > 2)
  {
    switch(v161)
    {
      case 3:
        v48 = 0x8000000101357040;
        v49 = 0xD000000000000010;
        goto LABEL_20;
      case 4:
        v48 = 0xEF64656D7269666ELL;
        v49 = 0x6F4365756575712ELL;
        goto LABEL_20;
      case 5:
        v48 = 0xEE0074726F685367;
        goto LABEL_14;
    }

LABEL_17:
    v48 = 0xE700000000000000;
    v49 = 0x6E776F6E6B6E75;
    goto LABEL_20;
  }

  if (!v161)
  {
    v48 = 0xE800000000000000;
    v49 = 0x746C75616665642ELL;
    goto LABEL_20;
  }

  if (v161 == 1)
  {
    v48 = 0xE800000000000000;
    v49 = 0x676E69676E61722ELL;
    goto LABEL_20;
  }

  if (v161 != 2)
  {
    goto LABEL_17;
  }

  v48 = 0xE900000000000067;
LABEL_14:
  v49 = 0x6E696B636172742ELL;
LABEL_20:
  v50 = sub_1000136BC(v49, v48, &aBlock);

  *(v42 + 14) = v50;
  *(v42 + 22) = 2048;
  *(v42 + 24) = a7;
  _os_log_impl(&_mh_execute_header, v39, v40, "playSoundOneShot %{public}s context %{public}s timeout %f", v42, 0x20u);
  swift_arrayDestroy();

  a6 = v168;
  a1 = v162;
LABEL_21:
  v51 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v52 = v165;
  swift_beginAccess();
  v53 = *(v52 + v51);
  if (!*(v53 + 16))
  {
LABEL_26:
    v139 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = v163;
    v59 = v164;
    v140 = v51;
    v164(v163, a1, v27);
    v61 = v143;
    v59(v143, a6, v27);
    v62 = v148;
    v63 = *(v148 + 80);
    v64 = (v63 + 16) & ~v63;
    v65 = (v29 + v63 + v64) & ~v63;
    v66 = swift_allocObject();
    v67 = v62[4];
    v67(v66 + v64, v60, v27);
    v67(v66 + v65, v61, v27);
    *(v66 + ((v29 + v65 + 7) & 0xFFFFFFFFFFFFFFF8)) = v139;
    v174 = sub_100833B94;
    v175 = v66;
    aBlock = _NSConcreteStackBlock;
    v171 = 1107296256;
    v172 = sub_100006684;
    v173 = &unk_101635D88;
    _Block_copy(&aBlock);
    v169 = _swiftEmptyArrayStorage;
    v68 = sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);

    v69 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v70 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v142 = v69;
    v141 = v70;
    v143 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v71 = type metadata accessor for DispatchWorkItem();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v74 = DispatchWorkItem.init(flags:block:)();

    v75 = v162;
    v76 = v163;
    v77 = v164;
    v164(v163, v162, v27);
    v78 = v144;
    v77(v144, v168, v27);
    v79 = v160;
    v80 = v77;
    v77((v78 + *(v160 + 20)), v75, v27);
    v81 = v79[8];

    static Date.trustedNow.getter(v78 + v81);
    *(v78 + v79[6]) = 1;
    v82 = v79[7];
    v148 = v74;
    *(v78 + v82) = v74;
    *(v78 + v79[9]) = 0;
    *(v78 + v79[10]) = 0;
    (*(v159 + 56))(v78, 0, 1, v79);
    v83 = v165;
    swift_beginAccess();
    v84 = v83;
    sub_1001DE600(v78, v76);
    swift_endAccess();
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v85 = qword_10177B2E8;
    v86 = v147;
    v80(v147, v75, v27);
    v87 = v145;
    static Date.trustedNow.getter(v86 + *(v145 + 20));
    *(v86 + *(v87 + 24)) = 24;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v88 = *(v146 + 72);
    v89 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_101385D80;
    sub_100833680(v86, v90 + v89, type metadata accessor for BeaconObservation);
    v91 = type metadata accessor for Transaction();
    __chkstk_darwin(v91);
    v138[-4] = v85;
    v138[-3] = v90;
    v138[-2] = 0;
    v138[-1] = 0;
    static Transaction.named<A>(_:with:)();

    sub_1008333E4(v86, type metadata accessor for BeaconObservation);
    sub_10082145C(v75);
    sub_1000BC488();
    v92 = v151;
    v93 = v150;
    v94 = v152;
    (*(v151 + 104))(v150, enum case for DispatchQoS.QoSClass.default(_:), v152);
    v95 = static OS_dispatch_queue.global(qos:)();
    (*(v92 + 8))(v93, v94);
    v96 = swift_allocObject();
    v97 = v154;
    *(v96 + 16) = v153;
    *(v96 + 24) = v97;
    v174 = sub_100470308;
    v175 = v96;
    aBlock = _NSConcreteStackBlock;
    v171 = 1107296256;
    v172 = sub_100006684;
    v173 = &unk_101635DD8;
    v98 = _Block_copy(&aBlock);

    v99 = v155;
    static DispatchQoS.unspecified.getter();
    v169 = _swiftEmptyArrayStorage;
    v101 = v166;
    v100 = v167;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v98);

    (*(v158 + 8))(v101, v100);
    (*(v156 + 8))(v99, v157);

    v102 = type metadata accessor for Transaction();
    __chkstk_darwin(v102);
    v138[-6] = v84;
    v138[-5] = v75;
    v103 = v161;
    v138[-4] = v168;
    v138[-3] = v103;
    *&v138[-2] = a7;
    static Transaction.named<A>(_:with:)();
  }

  v54 = *(v52 + v51);

  v55 = sub_1000210EC(a1);
  if ((v56 & 1) == 0)
  {

    goto LABEL_26;
  }

  v57 = v141;
  sub_100833680(*(v53 + 56) + *(v159 + 72) * v55, v141, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  v58 = v142;
  sub_1008336E8(v57, v142, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  if (sub_10062CFC0(*(v58 + *(v160 + 24)), &off_10160A220))
  {
    sub_1008333E4(v58, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    goto LABEL_26;
  }

  v105 = v46;
  v106 = v139;
  v164(v139, a1, v27);
  v107 = v140;
  sub_100833680(v58, v140, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v110 = 136315394;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = v112;
    v105(v106, v27);
    v114 = sub_1000136BC(v111, v113, &aBlock);
    v115 = v140;

    *(v110 + 4) = v114;
    *(v110 + 12) = 2080;
    v116 = *(v115 + *(v160 + 24));
    v117 = 0xEB00000000646575;
    v118 = 0x65755179616C702ELL;
    v119 = 0x6D6F43706F74732ELL;
    v120 = 0xEE00646574656C70;
    if (v116 != 5)
    {
      v119 = 0x74756F656D69742ELL;
      v120 = 0xE800000000000000;
    }

    v121 = 0x6D6F4379616C702ELL;
    v122 = 0xEE00646574656C70;
    if (v116 != 3)
    {
      v121 = 0x696E49706F74732ELL;
      v122 = 0xEE00646574616974;
    }

    if (*(v115 + *(v160 + 24)) <= 4u)
    {
      v119 = v121;
      v120 = v122;
    }

    v123 = 0x696E4979616C702ELL;
    v124 = 0xEE00646574616974;
    if (v116 != 1)
    {
      v123 = 0x6E755279616C702ELL;
      v124 = 0xEC000000676E696ELL;
    }

    if (*(v115 + *(v160 + 24)))
    {
      v118 = v123;
      v117 = v124;
    }

    if (*(v115 + *(v160 + 24)) <= 2u)
    {
      v125 = v118;
    }

    else
    {
      v125 = v119;
    }

    if (*(v115 + *(v160 + 24)) <= 2u)
    {
      v126 = v117;
    }

    else
    {
      v126 = v120;
    }

    v127 = v166;
    sub_1008333E4(v115, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v128 = sub_1000136BC(v125, v126, &aBlock);

    *(v110 + 14) = v128;
    _os_log_impl(&_mh_execute_header, v108, v109, "Cannot playSound for %s. Invalid state %s!", v110, 0x16u);
    swift_arrayDestroy();

    v129 = v167;
  }

  else
  {

    sub_1008333E4(v107, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v105(v106, v27);
    v127 = v166;
    v129 = v167;
  }

  sub_1000BC488();
  v130 = v151;
  v131 = v150;
  v132 = v152;
  (*(v151 + 104))(v150, enum case for DispatchQoS.QoSClass.default(_:), v152);
  v133 = static OS_dispatch_queue.global(qos:)();
  (*(v130 + 8))(v131, v132);
  v134 = swift_allocObject();
  v135 = v154;
  *(v134 + 16) = v153;
  *(v134 + 24) = v135;
  v174 = sub_100833BD8;
  v175 = v134;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100006684;
  v173 = &unk_101635E28;
  v136 = _Block_copy(&aBlock);

  v137 = v155;
  static DispatchQoS.unspecified.getter();
  v169 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v136);

  (*(v158 + 8))(v127, v129);
  (*(v156 + 8))(v137, v157);
  sub_1008333E4(v142, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
}

void sub_1008210C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), const char *a5)
{
  v37 = a5;
  v38 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v33[-v14];
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B380);
  v17 = v9[2];
  v17(v15, a1, v8);
  v17(v13, a2, v8);
  v18 = Logger.logObject.getter();
  v19 = a4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39[0] = v35;
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v34 = v19;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v36 = a1;
    v24 = v9[1];
    v24(v15, v8);
    v25 = sub_1000136BC(v21, v23, v39);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v24(v13, v8);
    a1 = v36;
    v29 = sub_1000136BC(v26, v28, v39);

    *(v20 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v18, v34, v37, v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v30 = v9[1];
    v30(v13, v8);
    v30(v15, v8);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    sub_100815748(a1, 0, 0);
  }
}

void sub_10082145C(uint64_t a1)
{
  v28[0] = type metadata accessor for UUID();
  v3 = *(v28[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v28[0]);
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v28 - v7;
  v9 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = a1;
  v14 = a1;
  v15 = *(v1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100023184(v14, v28 - v11);
  v16 = type metadata accessor for WildModeAssociationRecord(0);
  v17 = (*(*(v16 - 8) + 48))(v12, 1, v16);
  sub_10000B3A8(v12, &unk_1016C7C90, &qword_1013BB4B0);
  if (v17 == 1)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = v13;
    v20 = v28[0];
    (*(v3 + 16))(v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v28[0]);
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    (*(v3 + 32))(v22 + v21, v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    sub_10025EDD4(0, 0, v8, &unk_1013BD6D8, v22);
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177BA08);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v24, v25, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v26, 8u);
    }

    ThrottledDarwinPoster.post(bypassRateLimit:)(1);
    if (v27)
    {
    }
  }
}

uint64_t sub_1008217F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v74 = a1;
  v75 = a5;
  v69 = a3;
  v82 = type metadata accessor for UUID();
  v80 = *(v82 - 8);
  v81 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  __chkstk_darwin(v12);
  v63 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v57 - v17;
  v64 = sub_1000BC4D4(&qword_1016AA9D0, &qword_1013BD788);
  v65 = *(v64 - 8);
  v19 = *(v65 + 64);
  __chkstk_darwin(v64);
  v21 = v57 - v20;
  v22 = sub_1000BC4D4(&qword_1016AA9D8, &qword_1013BD790);
  v23 = *(v22 - 8);
  v67 = v22;
  v68 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v61 = v57 - v25;
  v26 = sub_1000BC4D4(&qword_1016AA9E0, &qword_1013BD798);
  v27 = *(v26 - 8);
  v70 = v26;
  v71 = v27;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v62 = v57 - v29;
  v30 = sub_1000BC4D4(&qword_1016AA9E8, &qword_1013BD7A0);
  v31 = *(v30 - 8);
  v77 = v30;
  v78 = v31;
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v83 = v57 - v33;
  v76 = Transaction.subscriptionCleaner.getter();
  v66 = a2;
  v34 = sub_100814D78(a3, a4, a5);
  v84 = *(a2 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  v35 = v84;
  v85 = v34;
  v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v37 = *(v36 - 8);
  v59 = *(v37 + 56);
  v60 = v37 + 56;
  v59(v18, 1, 1, v36);
  v58 = v35;
  sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
  v57[1] = sub_1000BC488();
  sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720);
  sub_1008345FC(&qword_1016AF9C0, sub_1000BC488);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v18, &unk_1016B0FE0, &unk_101391980);

  v38 = v63;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v39 = v58;
  v85 = v58;
  v59(v18, 1, 1, v36);
  sub_1000041A4(&qword_1016AA9F0, &qword_1016AA9D0, &qword_1013BD788);
  v40 = v61;
  v41 = v64;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v18, &unk_1016B0FE0, &unk_101391980);

  (*(v72 + 8))(v38, v73);
  (*(v65 + 8))(v21, v41);
  sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  sub_1000041A4(&qword_1016AA9F8, &qword_1016AA9D8, &qword_1013BD790);
  v42 = v62;
  v43 = v67;
  Publisher.map<A>(_:)();
  (*(v68 + 8))(v40, v43);
  sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
  sub_1000041A4(&qword_1016AAA00, &qword_1016AA9E0, &qword_1013BD798);
  sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730);
  v44 = v70;
  Publisher.catch<A>(_:)();
  (*(v71 + 8))(v42, v44);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = v79;
  v46 = v80;
  v48 = v82;
  (*(v80 + 16))(v79, v69, v82);
  v49 = v46;
  v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v51 = (v81 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v45;
  *(v53 + 24) = v74;
  (*(v49 + 32))(v53 + v50, v47, v48);
  *(v53 + v51) = a6;
  *(v53 + v52) = v75;
  *(v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  sub_1000041A4(&qword_1016AAA08, &qword_1016AA9E8, &qword_1013BD7A0);

  swift_unknownObjectRetain();
  v54 = v77;
  v55 = v83;
  Publisher<>.sink(receiveValue:)();

  (*(v78 + 8))(v55, v54);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}

unint64_t sub_100822150(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a6;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v49 - v19);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    Transaction.capture()();
    sub_1000D2A70(a1, v20, &qword_1016AA928, &qword_1013BD728);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v51 = a5;
      v23 = *v20;
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v50 = v22;
      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177B380);
      (*(v10 + 16))(v14, v51, v9);
      sub_1008326DC(v23);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      sub_1008326EC(v23);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v27 = 136315394;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v10 + 8))(v14, v9);
        v31 = sub_1000136BC(v28, v30, &v53);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        v52 = v23;
        sub_1008326DC(v23);
        v32 = String.init<A>(describing:)();
        v34 = sub_1000136BC(v32, v33, &v53);

        *(v27 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v25, v26, "Play sound oneShot failed for %s. Error %s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v10 + 8))(v14, v9);
      }

      sub_100832458();
      v44 = swift_allocError();
      *v45 = v23;
      v46 = swift_allocError();
      *v47 = v44;
      sub_1008326DC(v23);
      v48 = v50;
      sub_100815748(v51, 0, v46);

      return sub_1008326EC(v23);
    }

    else
    {
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177B380);
      (*(v10 + 16))(v16, a5, v9);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v53 = v49;
        *v38 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v22;
        v40 = a5;
        v42 = v41;
        (*(v10 + 8))(v16, v9);
        v43 = sub_1000136BC(v39, v42, &v53);
        a5 = v40;
        v22 = v50;

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "Play sound oneShot started successfully for %s", v38, 0xCu);
        sub_100007BAC(v49);
      }

      else
      {

        (*(v10 + 8))(v16, v9);
      }

      sub_100818478(a5, v51, a2);

      return sub_10000B3A8(v20, &qword_1016AA928, &qword_1013BD728);
    }
  }

  return result;
}

uint64_t sub_100822778(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  swift_beginAccess();
  sub_1001DE600(v6, v10);
  return swift_endAccess();
}

uint64_t sub_1008228FC(uint64_t a1, char *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a1;
  v38 = a6;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(v42);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v43);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v33 = &v33 - v17;
  v39 = *&a2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v35 = a2;
  v18 = *(v14 + 16);
  v18();
  (v18)(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
  v19 = *(v14 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = (v15 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v19 + v21 + 8) & ~v19;
  v23 = (v15 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  v25 = *(v14 + 32);
  v25(v24 + v20, v33, v13);
  *(v24 + v21) = a3;
  v25(v24 + v22, v34, v13);
  v26 = v37;
  *(v24 + v23) = v38;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  aBlock[4] = sub_100833CB0;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101635EA0;
  v27 = _Block_copy(aBlock);
  v28 = v35;

  v29 = v36;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v30 = v40;
  v31 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v44 + 8))(v30, v31);
  (*(v41 + 8))(v29, v43);
}

uint64_t sub_100822D6C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v238 = a5;
  v239 = a4;
  v248 = a3;
  v228 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v226 = *(v228 - 8);
  v9 = *(v226 + 64);
  __chkstk_darwin(v228);
  v224 = &v196[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v218 = &v196[-v13];
  v221 = sub_1000BC4D4(&qword_1016AA9D0, &qword_1013BD788);
  v219 = *(v221 - 8);
  v14 = *(v219 + 64);
  __chkstk_darwin(v221);
  v217 = &v196[-v15];
  v223 = sub_1000BC4D4(&qword_1016AA9D8, &qword_1013BD790);
  v222 = *(v223 - 8);
  v16 = *(v222 + 64);
  __chkstk_darwin(v223);
  v220 = &v196[-v17];
  v229 = sub_1000BC4D4(&qword_1016AA9E0, &qword_1013BD798);
  v227 = *(v229 - 8);
  v18 = *(v227 + 64);
  __chkstk_darwin(v229);
  v225 = &v196[-v19];
  v231 = sub_1000BC4D4(&qword_1016AA9E8, &qword_1013BD7A0);
  v230 = *(v231 - 8);
  v20 = *(v230 + 64);
  __chkstk_darwin(v231);
  v237 = &v196[-v21];
  v22 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v216 = &v196[-v24];
  v233 = type metadata accessor for DispatchWorkItemFlags();
  v204 = *(v233 - 1);
  v25 = *(v204 + 64);
  __chkstk_darwin(v233);
  v234 = &v196[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v203 = type metadata accessor for DispatchQoS();
  v202 = *(v203 - 8);
  v27 = *(v202 + 64);
  __chkstk_darwin(v203);
  v201 = &v196[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = type metadata accessor for DispatchTime();
  v210 = *(v209 - 8);
  v29 = *(v210 + 64);
  v30 = __chkstk_darwin(v209);
  v200 = &v196[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v208 = &v196[-v32];
  v207 = type metadata accessor for Date();
  v206 = *(v207 - 8);
  v33 = *(v206 + 64);
  __chkstk_darwin(v207);
  v205 = &v196[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v240 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v236 = *(v240 - 8);
  v35 = *(v236 + 64);
  v36 = __chkstk_darwin(v240);
  v211 = &v196[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = __chkstk_darwin(v36);
  v199 = &v196[-v39];
  v40 = __chkstk_darwin(v38);
  v213 = &v196[-v41];
  __chkstk_darwin(v40);
  v43 = &v196[-v42];
  v44 = type metadata accessor for UUID();
  v45 = *(v44 - 8);
  v46 = v45[8];
  v47 = __chkstk_darwin(v44);
  v235 = &v196[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = __chkstk_darwin(v47);
  v243 = &v196[-v50];
  v51 = __chkstk_darwin(v49);
  v244 = &v196[-v52];
  v53 = __chkstk_darwin(v51);
  v55 = &v196[-v54];
  v232 = v56;
  __chkstk_darwin(v53);
  v58 = &v196[-v57];
  v249 = a2;
  v247 = a1;
  v59 = sub_10081008C(a2);
  LODWORD(v241) = v59;
  v60 = 0x6575657551;
  if ((v59 & 1) == 0)
  {
    v60 = 0;
  }

  v215 = v60;
  if (v59)
  {
    v61 = 0xE500000000000000;
  }

  else
  {
    v61 = 0xE000000000000000;
  }

  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  v63 = sub_1000076D4(v62, qword_10177B380);
  v64 = v45[2];
  v64(v58, v249, v44);
  v245 = v64;
  v64(v55, v248, v44);

  v212 = v63;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  v67 = os_log_type_enabled(v65, v66);
  v246 = v45;
  v242 = v45 + 2;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v197 = v66;
    v69 = v68;
    v198 = swift_slowAlloc();
    aBlock = v198;
    *v69 = 136447235;
    v70 = sub_1000136BC(v215, v61, &aBlock);

    *(v69 + 4) = v70;
    *(v69 + 12) = 2160;
    *(v69 + 14) = 1752392040;
    *(v69 + 22) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v215 = v43;
    v73 = v72;
    v74 = v45[1];
    v74(v58, v44);
    v75 = sub_1000136BC(v71, v73, &aBlock);

    *(v69 + 24) = v75;
    *(v69 + 32) = 2048;
    *(v69 + 34) = a6;
    *(v69 + 42) = 2082;
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    v79 = v44;
    v74(v55, v44);
    v80 = v74;
    v81 = sub_1000136BC(v76, v78, &aBlock);
    v43 = v215;

    *(v69 + 44) = v81;
    _os_log_impl(&_mh_execute_header, v65, v197, "%{public}s playSoundSingle for %{private,mask.hash}s with timeout %f. CommandId %{public}s", v69, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v80 = v45[1];
    v80(v55, v44);
    v82 = v58;
    v79 = v44;
    v80(v82, v44);
  }

  v83 = v240;
  v84 = v235;
  if ((v241 & 1) == 0)
  {
    goto LABEL_21;
  }

  v85 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v86 = v247;
  swift_beginAccess();
  v87 = *&v86[v85];
  if (!*(v87 + 16))
  {
    goto LABEL_21;
  }

  v88 = sub_1000210EC(v249);
  if ((v89 & 1) == 0)
  {

    goto LABEL_21;
  }

  v90 = v213;
  sub_100833680(*(v87 + 56) + *(v236 + 72) * v88, v213, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  sub_1008336E8(v90, v43, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  if (!v43[*(v83 + 24)])
  {
    v156 = v205;
    static Date.trustedNow.getter(v205);
    v157 = *(v83 + 32);
    Date.timeIntervalSince(_:)();
    v159 = v158;
    (*(v206 + 8))(v156, v207);
    if (a6 * 0.5 >= v159)
    {
      v215 = v43;
      v161 = v43;
      v162 = v199;
      sub_100833680(v161, v199, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        aBlock = v166;
        *v165 = 136446466;
        v167 = &v162[*(v83 + 32)];
        v168 = Date.localISO8601.getter();
        v169 = v162;
        v171 = v170;
        sub_1008333E4(v169, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v172 = sub_1000136BC(v168, v171, &aBlock);

        *(v165 + 4) = v172;
        *(v165 + 12) = 2050;
        *(v165 + 14) = v159;
        _os_log_impl(&_mh_execute_header, v163, v164, "Last retry %{public}s.\nTime since: %{public}f. Defer retry", v165, 0x16u);
        sub_100007BAC(v166);
      }

      else
      {

        sub_1008333E4(v162, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      }

      v174 = v247;
      v240 = *&v247[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
      v175 = v200;
      static DispatchTime.now()();
      + infix(_:_:)();
      v176 = *(v210 + 8);
      v210 += 8;
      v241 = v176;
      v176(v175, v209);
      v177 = v245;
      v245(v244, v248, v79);
      v178 = v243;
      v177(v243, v249, v79);
      v179 = v246;
      v180 = *(v246 + 80);
      v181 = (v180 + 24) & ~v180;
      v182 = (v232 + v180 + v181) & ~v180;
      v183 = (v232 + v182 + 7) & 0xFFFFFFFFFFFFFFF8;
      v184 = swift_allocObject();
      *(v184 + 16) = v174;
      v185 = v179[4];
      v185(v184 + v181, v244, v79);
      v185(v184 + v182, v178, v79);
      *(v184 + v183) = v239;
      *(v184 + ((v183 + 15) & 0xFFFFFFFFFFFFFFF8)) = a6;
      v255 = sub_100833FB8;
      v256 = v184;
      aBlock = _NSConcreteStackBlock;
      v252 = 1107296256;
      v253 = sub_100006684;
      v254 = &unk_101635F68;
      v186 = _Block_copy(&aBlock);
      v187 = v174;
      v188 = v201;
      static DispatchQoS.unspecified.getter();
      v250 = _swiftEmptyArrayStorage;
      sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v189 = v234;
      v190 = v233;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v191 = v208;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v186);
      (*(v204 + 8))(v189, v190);
      (*(v202 + 8))(v188, v203);
      v241(v191, v209);
      sub_1008333E4(v215, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    }

    sub_1008333E4(v43, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
LABEL_21:
    v103 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v105 = v244;
    v104 = v245;
    v245(v244, v249, v79);
    v106 = v243;
    v104(v243, v248, v79);
    v107 = *(v246 + 80);
    v108 = v246;
    v109 = (v107 + 16) & ~v107;
    v110 = (v232 + v107 + v109) & ~v107;
    v215 = v107;
    v232 += 7;
    v111 = (v232 + v110) & 0xFFFFFFFFFFFFFFF8;
    v112 = swift_allocObject();
    v113 = v108[4];
    v246 = v108 + 4;
    v235 = v113;
    (v113)(v112 + v109, v105, v79);
    (v113)(v112 + v110, v106, v79);
    *(v112 + v111) = v103;
    v255 = sub_100834710;
    v256 = v112;
    aBlock = _NSConcreteStackBlock;
    v252 = 1107296256;
    v253 = sub_100006684;
    v254 = &unk_101635EF0;
    _Block_copy(&aBlock);
    v250 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);

    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v114 = type metadata accessor for DispatchWorkItem();
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();
    v117 = DispatchWorkItem.init(flags:block:)();

    v118 = v244;
    v119 = v249;
    v214 = v79;
    v120 = v245;
    v245(v244, v249, v79);
    v121 = v216;
    v122 = v248;
    v120(v216, v248, v79);
    v123 = v240;
    v120((v121 + *(v240 + 20)), v119, v79);
    v124 = v123[8];
    v234 = v117;

    static Date.trustedNow.getter(v121 + v124);
    *(v121 + v123[6]) = 0;
    *(v121 + v123[7]) = v117;
    *(v121 + v123[9]) = 0;
    *(v121 + v123[10]) = 0;
    (*(v236 + 56))(v121, 0, 1, v123);
    v125 = v247;
    swift_beginAccess();
    sub_1001DE600(v121, v118);
    swift_endAccess();
    v240 = Transaction.subscriptionCleaner.getter();
    v126 = sub_100814D78(v119, v122, v239);
    v250 = *&v125[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v127 = v250;
    aBlock = v126;
    v128 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v236 = *(*(v128 - 8) + 56);
    v129 = v218;
    (v236)(v218, 1, 1, v128);
    v233 = v127;
    sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
    sub_1000BC488();
    sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720);
    sub_1008345FC(&qword_1016AF9C0, sub_1000BC488);
    v130 = v217;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v129, &unk_1016B0FE0, &unk_101391980);

    v131 = v224;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v132 = v233;
    aBlock = v233;
    (v236)(v129, 1, 1, v128);
    sub_1000041A4(&qword_1016AA9F0, &qword_1016AA9D0, &qword_1013BD788);
    v133 = v220;
    v134 = v221;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v129, &unk_1016B0FE0, &unk_101391980);

    (*(v226 + 8))(v131, v228);
    (*(v219 + 8))(v130, v134);
    sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
    sub_1000041A4(&qword_1016AA9F8, &qword_1016AA9D8, &qword_1013BD790);
    v135 = v225;
    v136 = v223;
    Publisher.map<A>(_:)();
    (*(v222 + 8))(v133, v136);
    sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
    sub_1000041A4(&qword_1016AAA00, &qword_1016AA9E0, &qword_1013BD798);
    sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730);
    v137 = v229;
    Publisher.catch<A>(_:)();
    (*(v227 + 8))(v135, v137);
    v138 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v140 = v244;
    v139 = v245;
    v141 = v214;
    v245(v244, v249, v214);
    v139(v243, v248, v141);
    v142 = v215;
    v143 = (v142 + 32) & ~v142;
    v144 = (v232 + v143) & 0xFFFFFFFFFFFFFFF8;
    v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
    v146 = (v142 + v145 + 9) & ~v142;
    v147 = (v232 + v146) & 0xFFFFFFFFFFFFFFF8;
    v148 = swift_allocObject();
    v149 = v238;
    *(v148 + 16) = v138;
    *(v148 + 24) = v149;
    v150 = v148 + v143;
    v151 = v235;
    (v235)(v150, v140, v141);
    *(v148 + v144) = a6;
    v152 = v148 + v145;
    *v152 = v239;
    *(v152 + 8) = v241 & 1;
    v151(v148 + v146, v243, v141);
    *(v148 + v147) = v240;
    sub_1000041A4(&qword_1016AAA08, &qword_1016AA9E8, &qword_1013BD7A0);

    swift_unknownObjectRetain();
    v153 = v231;
    v154 = v237;
    Publisher<>.sink(receiveValue:)();

    (*(v230 + 8))(v154, v153);
    AnyCancellable.store(in:)();

    swift_unknownObjectRelease();
  }

  v91 = v79;
  v245(v84, v249, v79);
  v92 = v211;
  sub_100833680(v43, v211, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v215 = v43;
    v95 = v80;
    v96 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    aBlock = v249;
    *v96 = 136315394;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    v99 = v98;
    v95(v84, v91);
    v100 = sub_1000136BC(v97, v99, &aBlock);

    *(v96 + 4) = v100;
    *(v96 + 12) = 2080;
    v101 = v92[*(v83 + 24)];
    if (v101 > 2)
    {
      if (v92[*(v83 + 24)] > 4u)
      {
        if (v101 != 5)
        {
          v194 = 0xE800000000000000;
          v192 = 0x74756F656D69742ELL;
          goto LABEL_41;
        }

        v102 = 0x43706F74732ELL;
        goto LABEL_35;
      }

      if (v101 == 3)
      {
        v102 = 0x4379616C702ELL;
LABEL_35:
        v192 = v102 & 0xFFFFFFFFFFFFLL | 0x6D6F000000000000;
        v193 = 1952803952;
LABEL_40:
        v194 = v193 | 0xEE00646500000000;
        goto LABEL_41;
      }

      v173 = 0x49706F74732ELL;
LABEL_39:
      v192 = v173 & 0xFFFFFFFFFFFFLL | 0x696E000000000000;
      v193 = 1952541044;
      goto LABEL_40;
    }

    if (v92[*(v83 + 24)])
    {
      if (v101 == 1)
      {
        v173 = 0x4979616C702ELL;
        goto LABEL_39;
      }

      v194 = 0xEC000000676E696ELL;
      v192 = 0x6E755279616C702ELL;
    }

    else
    {
      v194 = 0xEB00000000646575;
      v192 = 0x65755179616C702ELL;
    }

LABEL_41:
    sub_1008333E4(v92, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v195 = sub_1000136BC(v192, v194, &aBlock);

    *(v96 + 14) = v195;
    _os_log_impl(&_mh_execute_header, v93, v94, "Cannot queue play sound for %s. Invalid state %s!", v96, 0x16u);
    swift_arrayDestroy();

    v160 = v215;
    return sub_1008333E4(v160, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  }

  sub_1008333E4(v92, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v80(v84, v91);
  v160 = v43;
  return sub_1008333E4(v160, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
}

void sub_100824C00(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(char *, uint64_t, uint64_t))
{
  v73 = a8;
  v75 = a7;
  v77 = a5;
  v11 = type metadata accessor for UUID();
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v69 - v17;
  __chkstk_darwin(v16);
  v20 = &v69 - v19;
  v21 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v69 - v23);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    Transaction.capture()();
    sub_1000D2A70(a1, v24, &qword_1016AA928, &qword_1013BD728);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v74 = v26;
    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v24;
      v29 = v76;
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000076D4(v30, qword_10177B380);
      (*(v29 + 16))(v15, v77, v11);
      sub_1008326DC(v28);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      sub_1008326EC(v28);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v72 = a6;
        v34 = v33;
        v79 = swift_slowAlloc();
        *v34 = 136315394;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        (*(v29 + 8))(v15, v11);
        v38 = sub_1000136BC(v35, v37, &v79);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v78 = v28;
        sub_1008326DC(v28);
        v39 = String.init<A>(describing:)();
        v41 = sub_1000136BC(v39, v40, &v79);

        *(v34 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v31, v32, "Play sound single failed for %s. Error %s", v34, 0x16u);
        swift_arrayDestroy();

        a6 = v72;

        if ((v75 & 1) == 0)
        {
LABEL_7:
          sub_100832458();
          v42 = swift_allocError();
          *v43 = v28;
          sub_1008326DC(v28);
          v44 = v74;
          sub_100815748(v77, 0, v42);
          sub_1008326EC(v28);

          return;
        }
      }

      else
      {

        (*(v29 + 8))(v15, v11);
        if ((v75 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v58 = v74;
      sub_100825410(v73, v77, a6, a2);
      sub_1008326EC(v28);
    }

    else
    {
      v72 = a6;
      v45 = v76;
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      v47 = sub_1000076D4(v46, qword_10177B380);
      v73 = *(v45 + 16);
      v73(v20, v77, v11);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v71 = v47;
        v51 = v50;
        v70 = swift_slowAlloc();
        v79 = v70;
        *v51 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v18;
        v54 = v53;
        v55 = *(v45 + 8);
        v55(v20, v11);
        v56 = sub_1000136BC(v52, v54, &v79);
        v18 = v69;

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v48, v49, "Play sound single started successfully for %s", v51, 0xCu);
        sub_100007BAC(v70);

        v57 = v55;
      }

      else
      {

        v57 = *(v45 + 8);
        v57(v20, v11);
      }

      v59 = v74;
      sub_100818478(v77, v72, a2);
      if (v75)
      {
        v73(v18, v77, v11);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v79 = v63;
          *v62 = 136315138;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
          v64 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = v18;
          v67 = v66;
          v57(v65, v11);
          v68 = sub_1000136BC(v64, v67, &v79);

          *(v62 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v60, v61, "Posting success alert for %s", v62, 0xCu);
          sub_100007BAC(v63);

          v59 = v74;
        }

        else
        {

          v57(v18, v11);
        }

        sub_100819C70(v77, 1);
      }

      sub_10000B3A8(v24, &qword_1016AA928, &qword_1013BD728);
    }
  }
}

void sub_100825410(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v65 = a1;
  v66 = a3;
  v74 = a2;
  v6 = type metadata accessor for UUID();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  __chkstk_darwin(v6);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  __chkstk_darwin(v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v65 - v15;
  v17 = type metadata accessor for BeaconObservation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v72 = &v65 - v23;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (&v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = v4;
  v29 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v28 = v29;
  (*(v25 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v24);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v28, v24);
  if (v29)
  {
    if (qword_101694920 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v31 = v74;
  v32 = sub_100035730(v74, sub_100526C48, 0);
  sub_1012BB138(v32, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000B3A8(v16, &qword_1016A42E0, &qword_1013B0010);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177B380);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "No playback observation found. Cannot retry", v36, 2u);
    }
  }

  else
  {
    v37 = v72;
    sub_1008336E8(v16, v72, type metadata accessor for BeaconObservation);
    static Date.trustedNow.getter(v12);
    v38 = *(v17 + 20);
    Date.timeIntervalSince(_:)();
    v40 = v39;
    (*(v67 + 8))(v12, v68);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177B380);
    sub_100833680(v37, v22, type metadata accessor for BeaconObservation);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v75 = v45;
      *v44 = 136446466;
      v46 = &v22[*(v17 + 20)];
      v47 = Date.localISO8601.getter();
      v49 = v48;
      sub_1008333E4(v22, type metadata accessor for BeaconObservation);
      v50 = sub_1000136BC(v47, v49, &v75);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2050;
      *(v44 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v42, v43, "Queued at %{public}s. Time since: %{public}f", v44, 0x16u);
      sub_100007BAC(v45);
    }

    else
    {

      sub_1008333E4(v22, type metadata accessor for BeaconObservation);
    }

    v52 = v70;
    v51 = v71;
    v53 = v69;
    if (v40 >= 180.0)
    {
      (*(v70 + 16))(v69, v31, v71);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v75 = v59;
        *v58 = 134218242;
        *(v58 + 4) = 0x4066800000000000;
        *(v58 + 12) = 2080;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v53;
        v63 = v62;
        (*(v52 + 8))(v61, v51);
        v64 = sub_1000136BC(v60, v63, &v75);

        *(v58 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v56, v57, "%f elapsed. Posting error alert for %s", v58, 0x16u);
        sub_100007BAC(v59);
      }

      else
      {

        (*(v52 + 8))(v53, v51);
      }

      sub_100819C70(v31, 0);
      sub_100815748(v31, 0, 0);
    }

    else
    {
      v54 = type metadata accessor for Transaction();
      __chkstk_darwin(v54);
      *(&v65 - 6) = v73;
      *(&v65 - 5) = v31;
      *(&v65 - 4) = a4;
      v55 = v66;
      *(&v65 - 3) = v65;
      *(&v65 - 2) = v55;
      static Transaction.named<A>(_:with:)();
    }

    sub_1008333E4(v37, type metadata accessor for BeaconObservation);
  }
}

uint64_t sub_100825CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v283 = a5;
  v272 = a4;
  v271 = a3;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v266 = &v244 - v11;
  v263 = type metadata accessor for BeaconObservation();
  v264 = *(v263 - 8);
  v12 = *(v264 + 64);
  __chkstk_darwin(v263);
  v265 = &v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v262 = &v244 - v16;
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v274 = *(v17 - 8);
  v18 = *(v274 + 64);
  __chkstk_darwin(v17);
  v281 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for DispatchQoS();
  v275 = *(v276 - 8);
  v20 = *(v275 + 64);
  __chkstk_darwin(v276);
  v273 = &v244 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for DispatchQoS.QoSClass();
  v269 = *(v270 - 8);
  v22 = *(v269 + 64);
  __chkstk_darwin(v270);
  v268 = &v244 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v279 = *(v277 - 8);
  v24 = *(v279 + 64);
  v25 = __chkstk_darwin(v277);
  v254 = &v244 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v258 = &v244 - v28;
  v29 = __chkstk_darwin(v27);
  v259 = &v244 - v30;
  v31 = __chkstk_darwin(v29);
  v248 = &v244 - v32;
  v33 = __chkstk_darwin(v31);
  v249 = &v244 - v34;
  v35 = __chkstk_darwin(v33);
  v250 = &v244 - v36;
  __chkstk_darwin(v35);
  v251 = &v244 - v37;
  v38 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v255 = &v244 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v257 = (&v244 - v42);
  v43 = type metadata accessor for UUID();
  v44 = *(v43 - 8);
  v45 = v44[8];
  v46 = __chkstk_darwin(v43);
  v282 = &v244 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v253 = &v244 - v49;
  v50 = __chkstk_darwin(v48);
  v267 = (&v244 - v51);
  v52 = __chkstk_darwin(v50);
  v247 = &v244 - v53;
  v54 = __chkstk_darwin(v52);
  v246 = &v244 - v55;
  v56 = __chkstk_darwin(v54);
  v252 = &v244 - v57;
  v58 = __chkstk_darwin(v56);
  v256 = &v244 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v244 - v61;
  v261 = v63;
  __chkstk_darwin(v60);
  v65 = &v244 - v64;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  v67 = sub_1000076D4(v66, qword_10177B380);
  v68 = v44[2];
  v286 = a1;
  v285 = v44 + 2;
  v290 = v68;
  v68(v65, a1, v43);
  v278 = v67;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  v71 = os_log_type_enabled(v69, v70);
  v289 = v44;
  v288 = v62;
  v287 = a2;
  if (v71)
  {
    v72 = v17;
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock = v74;
    *v73 = 141558531;
    *(v73 + 4) = 1752392040;
    *(v73 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v76;
    v280 = v289[1];
    v280(v65, v43);
    v78 = sub_1000136BC(v75, v77, &aBlock);
    v79 = v287;

    *(v73 + 14) = v78;
    v80 = v79;
    *(v73 + 22) = 2048;
    *(v73 + 24) = a6;
    _os_log_impl(&_mh_execute_header, v69, v70, "stopSoundSingle %{private,mask.hash}s timeout %f", v73, 0x20u);
    sub_100007BAC(v74);

    v17 = v72;
    v44 = v289;
    v62 = v288;
  }

  else
  {
    v80 = a2;

    v280 = v44[1];
    v280(v65, v43);
  }

  v81 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  swift_beginAccess();
  v260 = v81;
  v82 = *(v80 + v81);
  v83 = *(v80 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);

  v84 = v286;
  sub_100025020(v286, &v299);
  v284 = v17;
  if (!v300)
  {
    sub_10000B3A8(&v299, &qword_101696920, &unk_10138B200);
    goto LABEL_18;
  }

  sub_10000A748(&v299, &aBlock);
  v85 = v296;
  v86 = v297;
  sub_1000035D0(&aBlock, v296);
  if (((*(v86 + 15))(v85, v86) & 1) == 0)
  {
    sub_100007BAC(&aBlock);
    v62 = v288;
    goto LABEL_18;
  }

  v87 = v296;
  v88 = v297;
  sub_1000035D0(&aBlock, v296);
  v89 = v87;
  v90 = v257;
  (*(v88 + 25))(v89, v88);
  v91 = v44[6];
  if (v91(v90, 1, v43) == 1)
  {
    v92 = &qword_1016980D0;
    v93 = &unk_10138F3B0;
    v94 = v90;
LABEL_16:
    sub_10000B3A8(v94, v92, v93);
    goto LABEL_17;
  }

  v95 = v44[4];
  v96 = v256;
  v257 = (v44 + 4);
  v245 = v95;
  v95(v256, v90, v43);
  sub_100ACBC98(v96, &v291);
  if (!v292)
  {
    v280(v96, v43);
    v92 = &unk_1016AA480;
    v93 = &unk_1013BD050;
    v94 = &v291;
    goto LABEL_16;
  }

  sub_10000A748(&v291, &v299);
  v97 = v44;
  v98 = v300;
  v99 = v301;
  sub_1000035D0(&v299, v300);
  v100 = (*(v99 + 16))(v98, v99);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v101 = v97[9];
  v102 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_101385D80;
  v105 = v296;
  v104 = v297;
  sub_1000035D0(&aBlock, v296);
  (*(*(*(v104 + 1) + 8) + 32))(v105);
  v106 = sub_100615D6C(v103, v100);
  swift_setDeallocating();
  v107 = *(v103 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v108 = v255;
  sub_10112C648(v106, v255);

  if (v91(v108, 1, v43) == 1)
  {
    v280(v96, v43);
    sub_10000B3A8(v108, &qword_1016980D0, &unk_10138F3B0);
    sub_100007BAC(&v299);
LABEL_17:
    sub_100007BAC(&aBlock);
    v62 = v288;
    v84 = v286;
    goto LABEL_18;
  }

  v161 = v252;
  v245(v252, v108, v43);
  v162 = v280;
  v62 = v288;
  v84 = v286;
  if (*(v82 + 16))
  {
    v163 = sub_1000210EC(v161);
    if (v164)
    {
      v165 = *(v279 + 72);
      v166 = v250;
      sub_100833680(*(v82 + 56) + v165 * v163, v250, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v167 = v251;
      sub_1008336E8(v166, v251, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      if (*(v82 + 16) && (v168 = sub_1000210EC(v84), (v169 & 1) != 0))
      {
        v170 = *(v82 + 56) + v168 * v165;
        v171 = v248;
        sub_100833680(v170, v248, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v172 = v249;
        sub_1008336E8(v171, v249, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v167 + *(v277 + 40)) == 1)
        {
          v173 = v290;
          v290(v62, v161, v43);
          v174 = v246;
          v173(v246, v84, v43);
          v173(v247, v161, v43);
          v175 = Logger.logObject.getter();
          v176 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v175, v176))
          {
            v177 = swift_slowAlloc();
            v267 = v175;
            v178 = v174;
            v179 = v177;
            v286 = swift_slowAlloc();
            *&v291 = v286;
            *v179 = 141558787;
            *(v179 + 4) = 1752392040;
            *(v179 + 12) = 2081;
            v255 = sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
            LODWORD(v257) = v176;
            v180 = dispatch thunk of CustomStringConvertible.description.getter();
            v182 = v181;
            v183 = v247;
            v184 = v280;
            v280(v178, v43);
            v185 = sub_1000136BC(v180, v182, &v291);
            v62 = v288;

            *(v179 + 14) = v185;
            *(v179 + 22) = 2160;
            *(v179 + 24) = 1752392040;
            *(v179 + 32) = 2081;
            v186 = dispatch thunk of CustomStringConvertible.description.getter();
            v188 = v187;
            v184(v183, v43);
            v189 = sub_1000136BC(v186, v188, &v291);

            *(v179 + 34) = v189;
            v190 = v267;
            _os_log_impl(&_mh_execute_header, v267, v257, "Overriding stopSoundSingle %{private,mask.hash}s because %{private,mask.hash}s is indicating it was playing both in-case.", v179, 0x2Au);
            swift_arrayDestroy();

            sub_1008333E4(v249, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            sub_1008333E4(v251, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v184(v161, v43);
            v184(v256, v43);
          }

          else
          {

            v201 = v280;
            v280(v247, v43);
            v201(v174, v43);
            sub_1008333E4(v249, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            sub_1008333E4(v167, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v201(v161, v43);
            v201(v256, v43);
          }

          v119 = v283;
          v120 = v282;
          sub_100007BAC(&v299);
          sub_100007BAC(&aBlock);
          v121 = v277;
          if (!*(v82 + 16))
          {
            goto LABEL_64;
          }

          goto LABEL_22;
        }

        sub_1008333E4(v172, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v200 = v167;
      }

      else
      {
        v200 = v167;
      }

      sub_1008333E4(v200, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    }
  }

  v162(v161, v43);
  v162(v256, v43);
  sub_100007BAC(&v299);
  sub_100007BAC(&aBlock);
LABEL_18:
  v109 = v267;
  v290(v267, v84, v43);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = v82;
    v114 = swift_slowAlloc();
    aBlock = v114;
    *v112 = 141558275;
    *(v112 + 4) = 1752392040;
    *(v112 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    v280(v109, v43);
    v118 = sub_1000136BC(v115, v117, &aBlock);

    *(v112 + 14) = v118;
    _os_log_impl(&_mh_execute_header, v110, v111, "stopSoundSingle for %{private,mask.hash}s directly.", v112, 0x16u);
    sub_100007BAC(v114);
    v82 = v113;

    v62 = v288;
  }

  else
  {

    v280(v109, v43);
  }

  v119 = v283;
  v120 = v282;
  v290(v62, v286, v43);
  v121 = v277;
  if (!*(v82 + 16))
  {
    goto LABEL_64;
  }

LABEL_22:
  v122 = sub_1000210EC(v62);
  if ((v123 & 1) == 0)
  {
LABEL_64:

    goto LABEL_65;
  }

  v124 = v258;
  sub_100833680(*(v82 + 56) + *(v279 + 72) * v122, v258, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  v125 = v259;
  sub_1008336E8(v124, v259, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v126 = *(v125 + v121[6]);
  if ((v126 - 1) < 2)
  {
    v127 = *(v125 + v121[7]);
    dispatch thunk of DispatchWorkItem.cancel()();
    v128 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;
    v129 = v287;
    swift_beginAccess();
    v130 = *(v129 + v128);
    if (*(v130 + 16))
    {

      v131 = sub_1000210EC(v62);
      if (v132)
      {
        v133 = *(*(v130 + 56) + 8 * v131);

        aBlock = 4;
        PassthroughSubject.send(completion:)();
      }

      else
      {
      }
    }

    goto LABEL_55;
  }

  if (v126 != 4)
  {
LABEL_55:
    sub_1008333E4(v125, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
LABEL_65:
    v202 = v290;
    v290(v120, v62, v43);
    v203 = v262;
    v202(v262, v119, v43);
    v202((v203 + v121[5]), v62, v43);
    v297 = SharingCircleWildAdvertisementKey.init(key:);
    v298 = 0;
    aBlock = _NSConcreteStackBlock;
    v294 = 1107296256;
    v295 = sub_100006684;
    v296 = &unk_1016354F0;
    _Block_copy(&aBlock);
    *&v291 = _swiftEmptyArrayStorage;
    v204 = sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    v278 = v43;
    v205 = v204;
    v206 = v62;
    v207 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v208 = v282;
    v209 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v285 = v207;
    v280 = v209;
    v210 = v206;
    v286 = v205;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v211 = type metadata accessor for DispatchWorkItem();
    v212 = *(v211 + 48);
    v213 = *(v211 + 52);
    swift_allocObject();
    v214 = DispatchWorkItem.init(flags:block:)();
    static Date.trustedNow.getter(v203 + v121[8]);
    *(v203 + v121[6]) = 4;
    *(v203 + v121[7]) = v214;
    *(v203 + v121[9]) = 0;
    *(v203 + v121[10]) = 0;
    (*(v279 + 56))(v203, 0, 1, v121);
    swift_beginAccess();
    sub_1001DE600(v203, v208);
    swift_endAccess();
    v215 = v278;
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v216 = qword_10177B2E8;
    v217 = v265;
    v218 = v206;
    v219 = v290;
    v290(v265, v218, v215);
    v220 = v263;
    static Date.trustedNow.getter(v217 + *(v263 + 20));
    *(v217 + *(v220 + 24)) = 26;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v221 = *(v264 + 72);
    v222 = (*(v264 + 80) + 32) & ~*(v264 + 80);
    v223 = v210;
    v224 = swift_allocObject();
    *(v224 + 16) = xmmword_101385D80;
    sub_100833680(v217, v224 + v222, type metadata accessor for BeaconObservation);
    v225 = type metadata accessor for Transaction();
    __chkstk_darwin(v225);
    *(&v244 - 4) = v216;
    *(&v244 - 3) = v224;
    *(&v244 - 2) = 0;
    *(&v244 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    sub_1008333E4(v217, type metadata accessor for BeaconObservation);
    v226 = type metadata accessor for TaskPriority();
    v227 = v266;
    (*(*(v226 - 8) + 56))(v266, 1, 1, v226);
    v219(v208, v223, v215);
    v228 = v289;
    v229 = (*(v289 + 80) + 32) & ~*(v289 + 80);
    v230 = swift_allocObject();
    *(v230 + 16) = 0;
    *(v230 + 24) = 0;
    v231 = v228 + 4;
    (v228[4])(v230 + v229, v208, v215);
    sub_10025EDD4(0, 0, v227, &unk_1013BD778, v230);

    sub_1000BC488();
    v232 = v269;
    v233 = v268;
    v234 = v270;
    (*(v269 + 104))(v268, enum case for DispatchQoS.QoSClass.default(_:), v270);
    v235 = static OS_dispatch_queue.global(qos:)();
    (*(v232 + 8))(v233, v234);
    v236 = swift_allocObject();
    v237 = v272;
    *(v236 + 16) = v271;
    *(v236 + 24) = v237;
    v297 = sub_100470308;
    v298 = v236;
    aBlock = _NSConcreteStackBlock;
    v294 = 1107296256;
    v295 = sub_100006684;
    v296 = &unk_101635568;
    v238 = _Block_copy(&aBlock);

    v239 = v273;
    static DispatchQoS.unspecified.getter();
    *&v291 = _swiftEmptyArrayStorage;
    v240 = v281;
    v241 = v284;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v238);

    v242 = v288;
    (*(v274 + 8))(v240, v241);
    (*(v275 + 8))(v239, v276);

    v243 = type metadata accessor for Transaction();
    __chkstk_darwin(v243);
    *(&v244 - 4) = v287;
    *(&v244 - 3) = v242;
    *(&v244 - 2) = v283;
    *(&v244 - 1) = a6;
    static Transaction.named<A>(_:with:)();
    return (*(v231 - 3))(v242, v215);
  }

  v134 = v62;
  v135 = v281;
  v136 = v253;
  v290(v253, v134, v43);
  v137 = v254;
  sub_100833680(v125, v254, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v140 = 141558531;
    *(v140 + 4) = 1752392040;
    *(v140 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v141 = dispatch thunk of CustomStringConvertible.description.getter();
    v142 = v136;
    v144 = v143;
    v280(v142, v43);
    v145 = sub_1000136BC(v141, v144, &aBlock);

    *(v140 + 14) = v145;
    *(v140 + 22) = 2082;
    v146 = *(v137 + v121[6]);
    v147 = 0xEB00000000646575;
    v148 = 0x65755179616C702ELL;
    v149 = 0x6D6F43706F74732ELL;
    v150 = 0xEE00646574656C70;
    if (v146 != 5)
    {
      v149 = 0x74756F656D69742ELL;
      v150 = 0xE800000000000000;
    }

    v151 = 0x6D6F4379616C702ELL;
    v152 = 0xEE00646574656C70;
    if (v146 != 3)
    {
      v151 = 0x696E49706F74732ELL;
      v152 = 0xEE00646574616974;
    }

    if (*(v137 + v121[6]) <= 4u)
    {
      v149 = v151;
      v150 = v152;
    }

    v153 = 0x696E4979616C702ELL;
    v154 = 0xEE00646574616974;
    if (v146 != 1)
    {
      v153 = 0x6E755279616C702ELL;
      v154 = 0xEC000000676E696ELL;
    }

    if (*(v137 + v121[6]))
    {
      v148 = v153;
      v147 = v154;
    }

    if (*(v137 + v121[6]) <= 2u)
    {
      v155 = v148;
    }

    else
    {
      v155 = v149;
    }

    if (*(v137 + v121[6]) <= 2u)
    {
      v156 = v147;
    }

    else
    {
      v156 = v150;
    }

    v157 = v137;
    v158 = v284;
    v159 = v43;
    sub_1008333E4(v157, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v160 = sub_1000136BC(v155, v156, &aBlock);

    *(v140 + 24) = v160;
    _os_log_impl(&_mh_execute_header, v138, v139, "Cannot stopSound for %{private,mask.hash}s. Invalid state %{public}s!", v140, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1008333E4(v137, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v159 = v43;
    v280(v136, v43);
    v158 = v284;
  }

  sub_1000BC488();
  v191 = v269;
  v192 = v268;
  v193 = v270;
  (*(v269 + 104))(v268, enum case for DispatchQoS.QoSClass.default(_:), v270);
  v194 = static OS_dispatch_queue.global(qos:)();
  (*(v191 + 8))(v192, v193);
  v195 = swift_allocObject();
  v196 = v272;
  *(v195 + 16) = v271;
  *(v195 + 24) = v196;
  v297 = sub_100834734;
  v298 = v195;
  aBlock = _NSConcreteStackBlock;
  v294 = 1107296256;
  v295 = sub_100006684;
  v296 = &unk_1016355B8;
  v197 = _Block_copy(&aBlock);

  v198 = v273;
  static DispatchQoS.unspecified.getter();
  *&v299 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v197);

  (*(v274 + 8))(v135, v158);
  (*(v275 + 8))(v198, v276);

  sub_1008333E4(v259, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  return (v280)(v288, v159);
}

uint64_t sub_100827FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100828034;

  return daemon.getter();
}

uint64_t sub_100828034(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1008345FC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_1004D405C;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100828210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v68 = a1;
  v76 = type metadata accessor for UUID();
  v74 = *(v76 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v76);
  v73 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v67 = *(v69 - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin(v69);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v51 - v12;
  v58 = sub_1000BC4D4(&qword_1016AA9D0, &qword_1013BD788);
  v60 = *(v58 - 8);
  v14 = *(v60 + 64);
  __chkstk_darwin(v58);
  v16 = &v51 - v15;
  v17 = sub_1000BC4D4(&qword_1016AA9D8, &qword_1013BD790);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v55 = &v51 - v20;
  v21 = sub_1000BC4D4(&qword_1016AA9E0, &qword_1013BD798);
  v22 = *(v21 - 8);
  v65 = v21;
  v66 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v56 = &v51 - v24;
  v25 = sub_1000BC4D4(&qword_1016AA9E8, &qword_1013BD7A0);
  v26 = *(v25 - 8);
  v71 = v25;
  v72 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v59 = &v51 - v28;
  v70 = Transaction.subscriptionCleaner.getter();
  v61 = a2;
  v29 = sub_10081D85C(a3, a4);
  v77 = *(a2 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  v30 = v77;
  v78 = v29;
  v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = *(v31 - 8);
  v53 = *(v32 + 56);
  v54 = v32 + 56;
  v53(v13, 1, 1, v31);
  v52 = v30;
  sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
  v51 = sub_1000BC488();
  sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720);
  sub_1008345FC(&qword_1016AF9C0, sub_1000BC488);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

  v33 = v57;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v34 = v52;
  v78 = v52;
  v53(v13, 1, 1, v31);
  sub_1000041A4(&qword_1016AA9F0, &qword_1016AA9D0, &qword_1013BD788);
  v35 = v55;
  v36 = v58;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

  (*(v67 + 8))(v33, v69);
  (*(v60 + 8))(v16, v36);
  sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  sub_1000041A4(&qword_1016AA9F8, &qword_1016AA9D8, &qword_1013BD790);
  v37 = v56;
  v38 = v62;
  Publisher.map<A>(_:)();
  (*(v63 + 8))(v35, v38);
  sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
  sub_1000041A4(&qword_1016AAA00, &qword_1016AA9E0, &qword_1013BD798);
  sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730);
  v39 = v59;
  v40 = v65;
  Publisher.catch<A>(_:)();
  (*(v66 + 8))(v37, v40);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v73;
  v42 = v74;
  v44 = v76;
  (*(v74 + 16))(v73, v64, v76);
  v45 = v42;
  v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v47 = (v75 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v68;
  *(v48 + 24) = v41;
  (*(v45 + 32))(v48 + v46, v43, v44);
  *(v48 + v47) = v70;
  sub_1000041A4(&qword_1016AAA08, &qword_1016AA9E8, &qword_1013BD7A0);

  swift_unknownObjectRetain();
  v49 = v71;
  Publisher<>.sink(receiveValue:)();

  (*(v72 + 8))(v39, v49);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100828B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100828BD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000BC4D4(a2, a3);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = *a1;
  *(&v9 - v6) = v7;
  swift_storeEnumTagMultiPayload();
  sub_1008326DC(v7);
  return Just.init(_:)();
}

void sub_100828C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v61 = type metadata accessor for UUID();
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v61);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v58 - v14);
  v60 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v16 = *(v60 - 1);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v60);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v62 = &v58 - v21;
  Transaction.capture()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
    swift_beginAccess();
    v25 = *&v23[v24];
    if (*(v25 + 16))
    {

      v26 = sub_1000210EC(v63);
      if (v27)
      {
        sub_100833680(*(v25 + 56) + *(v16 + 72) * v26, v20, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

        v28 = v20;
        v29 = v62;
        sub_1008336E8(v28, v62, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        sub_1000D2A70(a1, v15, &qword_1016AA928, &qword_1013BD728);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v30 = *v15;
          v31 = v5;
          if (qword_101694960 != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          sub_1000076D4(v32, qword_10177B380);
          v33 = *(v5 + 16);
          v34 = v61;
          v33(v9, v63, v61);
          sub_1008326DC(v30);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();
          sub_1008326EC(v30);
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v65 = v59;
            *v37 = 141558531;
            *(v37 + 4) = 1752392040;
            *(v37 + 12) = 2081;
            sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
            v38 = dispatch thunk of CustomStringConvertible.description.getter();
            v40 = v39;
            (*(v31 + 8))(v9, v34);
            v41 = sub_1000136BC(v38, v40, &v65);

            *(v37 + 14) = v41;
            *(v37 + 22) = 2080;
            v64 = v30;
            sub_1008326DC(v30);
            v42 = String.init<A>(describing:)();
            v44 = sub_1000136BC(v42, v43, &v65);

            *(v37 + 24) = v44;
            v29 = v62;
            _os_log_impl(&_mh_execute_header, v35, v36, "Stop sound failed for %{private,mask.hash}s. Error %s", v37, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            (*(v31 + 8))(v9, v34);
          }

          sub_100832458();
          v54 = swift_allocError();
          *v55 = v30;
          v56 = *(v60 + 9);
          v57 = *(v29 + v56);

          *(v29 + v56) = v54;
        }

        else
        {
          if (qword_101694960 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          sub_1000076D4(v45, qword_10177B380);
          v46 = v61;
          (*(v5 + 16))(v11, v63, v61);
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v65 = v60;
            *v49 = 141558275;
            *(v49 + 4) = 1752392040;
            *(v49 + 12) = 2081;
            sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
            v50 = dispatch thunk of CustomStringConvertible.description.getter();
            v52 = v51;
            (*(v5 + 8))(v11, v46);
            v53 = sub_1000136BC(v50, v52, &v65);

            *(v49 + 14) = v53;
            _os_log_impl(&_mh_execute_header, v47, v48, "Stop sound completed successfully for %{private,mask.hash}s", v49, 0x16u);
            sub_100007BAC(v60);

            v29 = v62;
          }

          else
          {

            (*(v5 + 8))(v11, v46);
          }

          sub_10000B3A8(v15, &qword_1016AA928, &qword_1013BD728);
        }

        sub_100815748(v63, 1, 0);

        sub_1008333E4(v29, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1008293E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = a4;
  v115 = a3;
  v125 = a2;
  v126 = a1;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v113 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v103 - v9;
  v114 = type metadata accessor for AccessoryCommand();
  v116 = *(v114 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v114);
  v117 = v12;
  v118 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v103 - v13;
  v15 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v105 = &v103 - v17;
  v108 = type metadata accessor for UUID();
  v124 = *(v108 - 8);
  v18 = *(v124 + 64);
  v19 = __chkstk_darwin(v108);
  v111 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v123 = &v103 - v21;
  v22 = __chkstk_darwin(v20);
  v120 = &v103 - v23;
  v24 = __chkstk_darwin(v22);
  v109 = &v103 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v103 - v27;
  __chkstk_darwin(v26);
  v30 = &v103 - v29;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = (&v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = v4;
  v36 = *&v4[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  *v35 = v36;
  (*(v32 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v31);
  v37 = v36;
  v38 = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v35, v31);
  if (v38)
  {
    if (qword_101694960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177B380);
  v40 = v124;
  v41 = v124 + 16;
  v42 = *(v124 + 16);
  v43 = v126;
  v44 = v108;
  v42(v30, v126, v108);
  v121 = v42;
  v122 = v41;
  v42(v28, v125, v44);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v107 = v14;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v127[0] = v106;
    *v48 = 141558531;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v104 = v46;
    v103 = v45;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v40;
    v52 = v51;
    v53 = *(v50 + 8);
    v53(v30, v44);
    v54 = sub_1000136BC(v49, v52, v127);

    *(v48 + 14) = v54;
    *(v48 + 22) = 2082;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v53(v28, v44);
    v43 = v126;
    v58 = sub_1000136BC(v55, v57, v127);

    *(v48 + 24) = v58;
    v59 = v103;
    _os_log_impl(&_mh_execute_header, v103, v104, "SPPlaySound play sound on device %{private,mask.hash}s commandId: %{public}s.", v48, 0x20u);
    swift_arrayDestroy();

    v60 = v124;
  }

  else
  {

    v61 = *(v40 + 8);
    v61(v28, v44);
    v61(v30, v44);
    v60 = v40;
  }

  v62 = v110;
  v106 = sub_1000035D0(&v110[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager], *&v110[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24]);
  v63 = v109;
  v64 = v121;
  v121(v109, v43, v44);
  v65 = v120;
  v64(v120, v125, v44);
  v66 = *(v60 + 80);
  v67 = (v66 + 16) & ~v66;
  v68 = (v18 + v66 + v67) & ~v66;
  v69 = swift_allocObject();
  v70 = *(v60 + 32);
  v70(v69 + v67, v63, v44);
  v120 = v70;
  v70(v69 + v68, v65, v44);
  v71 = v62;
  *(v69 + ((v18 + v68 + 7) & 0xFFFFFFFFFFFFFFF8)) = v62;
  v72 = *v106;
  v73 = *(*v106 + 184);
  v74 = v44;
  if (v73)
  {
    v75 = v71;

    v76 = v105;
    sub_100AA33AC(v126, v105);

    v77 = type metadata accessor for OwnedBeaconRecord();
    if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
    {
      sub_10000B3A8(v76, &unk_1016A9A20, &qword_10138B280);
      LOBYTE(v73) = 0;
    }

    else
    {
      v79 = sub_100D60CD0();
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;
      if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
      {
        LOBYTE(v73) = 1;
      }

      else
      {
        LOBYTE(v73) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_1008333E4(v105, type metadata accessor for OwnedBeaconRecord);
    }
  }

  else
  {
    v78 = v71;
  }

  v84 = v112;
  v85 = v44;
  v86 = v121;
  v121(v112, v125, v85);
  v87 = v124;
  (*(v124 + 56))(v84, 0, 1, v74);
  v86(v123, v126, v74);
  v88 = v113;
  sub_1000D2A70(v84, v113, &qword_1016980D0, &unk_10138F3B0);
  v89 = *(v87 + 48);
  v90 = v89(v88, 1, v74);
  v91 = v111;
  if (v90 == 1)
  {
    UUID.init()();
    sub_10000B3A8(v84, &qword_1016980D0, &unk_10138F3B0);
    if (v89(v88, 1, v74) != 1)
    {
      sub_10000B3A8(v88, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    sub_10000B3A8(v84, &qword_1016980D0, &unk_10138F3B0);
    (v120)(v91, v88, v74);
  }

  v92 = v107;
  v93 = v120;
  (v120)(v107, v91, v74);
  v94 = v114;
  v93(v92 + *(v114 + 20), v123, v74);
  v95 = v92 + v94[6];
  *v95 = v115;
  *(v95 + 8) = 0x2000000000000000;
  *(v95 + 16) = 0u;
  *(v95 + 32) = 0u;
  *(v92 + v94[7]) = v73 & 1;
  *(v92 + v94[8]) = 1;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_100833590;
  *(v96 + 24) = v69;
  type metadata accessor for Transaction();
  v97 = v118;
  sub_100833680(v92, v118, type metadata accessor for AccessoryCommand);
  v98 = (*(v116 + 80) + 16) & ~*(v116 + 80);
  v99 = (v117 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  sub_1008336E8(v97, v100 + v98, type metadata accessor for AccessoryCommand);
  *(v100 + v99) = v72;
  v101 = (v100 + ((v99 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v101 = sub_10067B5A4;
  v101[1] = v96;

  static Transaction.asyncTask(name:block:)();

  sub_1008333E4(v92, type metadata accessor for AccessoryCommand);
  v127[0] = v119;
  sub_1000BC4D4(&qword_1016AA9C0, &qword_1013BD758);
  sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100829FCC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a4;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v25 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v25);
  v23 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v26);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v22[1] = *&a2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  (*(v13 + 16))(v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  (*(v13 + 32))(v16 + v15, v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22[0];
  aBlock[4] = sub_100833770;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016359C8;
  v17 = _Block_copy(aBlock);

  v18 = a2;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v19 = v23;
  v20 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v27 + 8))(v19, v20);
  (*(v24 + 8))(v11, v26);
}

void sub_10082A3B0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v152 = a2;
  v5 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v157 = &v145[-v7];
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v145[-v10];
  v158 = type metadata accessor for UUID();
  v12 = *(v158 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v158);
  v159 = &v145[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v154 = &v145[-v17];
  v18 = __chkstk_darwin(v16);
  v150 = &v145[-v19];
  v20 = __chkstk_darwin(v18);
  v151 = &v145[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v145[-v23];
  v25 = __chkstk_darwin(v22);
  v153 = &v145[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v145[-v28];
  __chkstk_darwin(v27);
  v155 = &v145[-v30];
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v145[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = *(v3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v35 = v36;
  (*(v32 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v31);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v39 = *(v32 + 8);
  v38 = v32 + 8;
  v39(v35, v31);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v156 = v3;
  v40 = *(v3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  v160 = a1;
  sub_100025020(a1, v165);
  v41 = v166;
  v161 = v12;
  if (!v166)
  {
    sub_10000B3A8(v165, &qword_101696920, &unk_10138B200);
    v38 = v158;
    (*(v12 + 56))(v11, 1, 1);
LABEL_9:
    sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694960 == -1)
    {
LABEL_10:
      v64 = type metadata accessor for Logger();
      sub_1000076D4(v64, qword_10177B380);
      v65 = v161;
      v47 = *(v161 + 16);
      v62 = v160;
      v47(v24);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v165[0] = v69;
        *v68 = 141558275;
        *(v68 + 4) = 1752392040;
        *(v68 + 12) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v47;
        v73 = v72;
        v74 = v24;
        v63 = *(v161 + 8);
        v63(v74, v38);
        v75 = sub_1000136BC(v70, v73, v165);
        v47 = v71;

        *(v68 + 14) = v75;
        _os_log_impl(&_mh_execute_header, v66, v67, "didStartPlayingSoundOnDevice %{private,mask.hash}s", v68, 0x16u);
        sub_100007BAC(v69);
      }

      else
      {

        v76 = v24;
        v63 = *(v65 + 8);
        v63(v76, v38);
      }

      v45 = v159;
      goto LABEL_14;
    }

LABEL_46:
    swift_once();
    goto LABEL_10;
  }

  v42 = v167;
  sub_1000035D0(v165, v166);
  (*(v42 + 200))(v41, v42);
  sub_100007BAC(v165);
  v38 = v158;
  if ((*(v12 + 48))(v11, 1) == 1)
  {
    goto LABEL_9;
  }

  v43 = v161;
  v44 = v155;
  (*(v161 + 32))(v155, v11, v38);
  v45 = v159;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000076D4(v46, qword_10177B380);
  v47 = *(v43 + 16);
  (v47)(v29, v160, v38);
  v48 = v153;
  (v47)(v153, v44, v38);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v165[0] = v148;
    *v51 = 141558531;
    *(v51 + 4) = 1752392040;
    *(v51 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v149 = v47;
    v147 = v49;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v146 = v50;
    v54 = v53;
    v55 = *(v161 + 8);
    v55(v29, v38);
    v56 = sub_1000136BC(v52, v54, v165);

    *(v51 + 14) = v56;
    *(v51 + 22) = 2082;
    v47 = v149;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    v55(v48, v38);
    v60 = sub_1000136BC(v57, v59, v165);

    *(v51 + 24) = v60;
    v61 = v147;
    _os_log_impl(&_mh_execute_header, v147, v146, "didStartPlayingSoundOnDevice %{private,mask.hash}s. groupId %{public}s", v51, 0x20u);
    swift_arrayDestroy();

    v62 = v160;

    v55(v155, v38);
    v63 = v55;
  }

  else
  {

    v63 = *(v43 + 8);
    v63(v48, v38);
    v63(v29, v38);
    v63(v44, v38);
    v62 = v160;
  }

LABEL_14:
  v77 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v78 = v156;
  swift_beginAccess();
  v79 = *(v78 + v77);
  if (!*(v79 + 16))
  {
LABEL_24:
    v111 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
    v112 = v157;
    (*(*(v111 - 8) + 56))(v157, 1, 1, v111);
    sub_10000B3A8(v112, &qword_1016998E0, &qword_101392030);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    sub_1000076D4(v113, qword_10177B380);
    (v47)(v45, v62, v38);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v164 = v117;
      *v116 = 136315138;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v118 = dispatch thunk of CustomStringConvertible.description.getter();
      v119 = v45;
      v121 = v120;
      v63(v119, v38);
      v122 = sub_1000136BC(v118, v121, &v164);

      *(v116 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v114, v115, "didStartPlayingSoundOnDevice called with unknown device %s", v116, 0xCu);
      sub_100007BAC(v117);

      return;
    }

    v123 = v45;
LABEL_36:
    v63(v123, v38);
    return;
  }

  v80 = sub_1000210EC(v62);
  if ((v81 & 1) == 0)
  {

    goto LABEL_24;
  }

  v82 = v80;
  v149 = v47;
  v83 = *(v79 + 56);
  v84 = v78;
  v85 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v86 = *(v85 - 8);
  v87 = v83 + *(v86 + 72) * v82;
  v88 = v149;
  v89 = v157;
  sub_100833680(v87, v157, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  (*(v86 + 56))(v89, 0, 1, v85);
  sub_10000B3A8(v89, &qword_1016998E0, &qword_101392030);
  v90 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;
  swift_beginAccess();
  v91 = *(v84 + v90);
  v92 = v154;
  if (!*(v91 + 16))
  {
LABEL_31:
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v124 = type metadata accessor for Logger();
    sub_1000076D4(v124, qword_10177B380);
    v88(v92, v62, v38);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = v63;
      v128 = v92;
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v163 = v130;
      *v129 = 141558275;
      *(v129 + 4) = 1752392040;
      *(v129 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v131 = dispatch thunk of CustomStringConvertible.description.getter();
      v133 = v132;
      v127(v128, v38);
      v134 = sub_1000136BC(v131, v133, &v163);

      *(v129 + 14) = v134;
      _os_log_impl(&_mh_execute_header, v125, v126, "Missing playSoundSubject for device %{private,mask.hash}s!", v129, 0x16u);
      sub_100007BAC(v130);

      return;
    }

    v123 = v92;
    goto LABEL_36;
  }

  v93 = sub_1000210EC(v62);
  if ((v94 & 1) == 0)
  {

    goto LABEL_31;
  }

  v95 = *(*(v91 + 56) + 8 * v93);

  v96 = v152;
  if (v152)
  {
    swift_errorRetain();
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_1000076D4(v97, qword_10177B380);
    v98 = v151;
    (v149)(v151, v62, v38);
    swift_errorRetain();
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = v98;
      v102 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *v102 = 141558531;
      *(v102 + 4) = 1752392040;
      *(v102 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v63;
      v106 = v105;
      v104(v101, v38);
      v107 = sub_1000136BC(v103, v106, &v163);

      *(v102 + 14) = v107;
      *(v102 + 22) = 2082;
      v162 = v152;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v108 = String.init<A>(describing:)();
      v110 = sub_1000136BC(v108, v109, &v163);

      *(v102 + 24) = v110;
      _os_log_impl(&_mh_execute_header, v99, v100, "didStartPlayingSoundOnDevice %{private,mask.hash}s failed due to %{public}s", v102, 0x20u);
      swift_arrayDestroy();
      v96 = v152;
    }

    else
    {

      v63(v98, v38);
    }

    v163 = v96;
    swift_errorRetain();
    PassthroughSubject.send(completion:)();
  }

  else
  {
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v135 = type metadata accessor for Logger();
    sub_1000076D4(v135, qword_10177B380);
    v136 = v150;
    (v149)(v150, v62, v38);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v163 = v160;
      *v139 = 141558275;
      *(v139 + 4) = 1752392040;
      *(v139 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v140 = dispatch thunk of CustomStringConvertible.description.getter();
      v141 = v63;
      v143 = v142;
      v141(v136, v38);
      v144 = sub_1000136BC(v140, v143, &v163);

      *(v139 + 14) = v144;
      _os_log_impl(&_mh_execute_header, v137, v138, "didStartPlayingSoundOnDevice %{private,mask.hash}s succeeded", v139, 0x16u);
      sub_100007BAC(v160);
    }

    else
    {

      v63(v136, v38);
    }

    PassthroughSubject.send(_:)();
    v163 = 4;
    PassthroughSubject.send(completion:)();
  }
}

uint64_t sub_10082B674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v69 = a1;
  v70 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v67 = &v58[-v11];
  v12 = __chkstk_darwin(v10);
  v14 = &v58[-v13];
  v66 = v15;
  __chkstk_darwin(v12);
  v17 = &v58[-v16];
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *&v3[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v65 = v3;
    if (qword_101694960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v64 = v9;
  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177B380);
  v26 = v5[2];
  (v26)(v17, v69, v4);
  (v26)(v14, v70, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v63 = v5;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = v14;
    v62 = v26;
    v32 = v30;
    v61 = swift_slowAlloc();
    v71 = v61;
    *v32 = 141558531;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v60 = v27;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v5;
    v36 = v35;
    v59 = v28;
    v37 = v34[1];
    v37(v17, v4);
    v38 = sub_1000136BC(v33, v36, &v71);

    *(v32 + 14) = v38;
    *(v32 + 22) = 2082;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v37(v31, v4);
    v42 = sub_1000136BC(v39, v41, &v71);

    *(v32 + 24) = v42;
    v43 = v60;
    _os_log_impl(&_mh_execute_header, v60, v59, "SPPlaySound stop sound on device %{private,mask.hash}s commandId: %{public}s.", v32, 0x20u);
    swift_arrayDestroy();

    v26 = v62;
  }

  else
  {

    v44 = v5[1];
    v44(v14, v4);
    v44(v17, v4);
  }

  v45 = v65;
  v62 = sub_1000035D0(&v65[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager], *&v65[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24]);
  v46 = v67;
  (v26)(v67, v69, v4);
  v47 = v64;
  (v26)(v64, v70, v4);
  v48 = v63;
  v49 = *(v63 + 80);
  v50 = (v49 + 16) & ~v49;
  v51 = (v66 + v49 + v50) & ~v49;
  v52 = (v66 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v48[4];
  v54(v53 + v50, v46, v4);
  v54(v53 + v51, v47, v4);
  *(v53 + v52) = v45;
  v55 = *v62;
  v56 = v45;
  sub_10067AF4C(v69, v70, sub_100832970, v53);

  v71 = v68;
  sub_1000BC4D4(&qword_1016AA9C0, &qword_1013BD758);
  sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_10082BC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v14 = type metadata accessor for AccessoryCommand();
  v6[26] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v6[28] = v16;
  v17 = *(v16 - 8);
  v6[29] = v17;
  v6[30] = *(v17 + 64);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return _swift_task_switch(sub_10082BED4, 0, 0);
}

uint64_t sub_10082BED4()
{
  v35 = v0;
  v1 = v0[40];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v5 = *(v3 + 16);
  v0[41] = v5;
  v0[42] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_101694968 != -1)
  {
    swift_once();
  }

  v6 = v0[39];
  v7 = v0[40];
  v8 = v0[38];
  v9 = v0[28];
  v10 = v0[16];
  v11 = type metadata accessor for Logger();
  v0[43] = sub_1000076D4(v11, qword_1016AA7B0);
  v5(v6, v7, v9);
  v5(v8, v10, v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[38];
  v15 = v0[39];
  v18 = v0[28];
  v17 = v0[29];
  if (v14)
  {
    v33 = v13;
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101360DD0, &v34);
    *(v19 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    log = v12;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_1000136BC(v20, v22, &v34);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2082;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_1000136BC(v25, v27, &v34);

    *(v19 + 24) = v28;
    _os_log_impl(&_mh_execute_header, log, v33, "%s on device %{public}s commandId: %{public}s.", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v17 + 8);
    v23(v16, v18);
    v23(v15, v18);
  }

  v0[44] = v23;
  v29 = async function pointer to daemon.getter[1];
  v30 = swift_task_alloc();
  v0[45] = v30;
  *v30 = v0;
  v30[1] = sub_10082C240;

  return daemon.getter();
}

uint64_t sub_10082C240(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 360);
  v12 = *v1;
  *(v3 + 368) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 376) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1008345FC(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_10082C41C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10082C41C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v8 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v5 = sub_10082CEF8;
  }

  else
  {
    v6 = v3[46];

    v5 = sub_10082C538;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10082C538()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[15];
  (*(v6 + 56))(v7, 1, 1, v5);
  v2(v4, v3, v5);
  v10 = *(v9 + *(type metadata accessor for WildModeAssociationRecord(0) + 52));
  sub_1000D2A70(v7, v8, &qword_1016980D0, &unk_10138F3B0);
  v11 = *(v6 + 48);
  v12 = v11(v8, 1, v5);
  v13 = v0[36];
  if (v12 == 1)
  {
    v14 = v0[28];
    v16 = v0[24];
    v15 = v0[25];
    v17 = v0[36];
    UUID.init()();
    sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    if (v11(v16, 1, v14) != 1)
    {
      sub_10000B3A8(v0[24], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v18 = v0[28];
    v19 = v0[29];
    v20 = v0[24];
    sub_10000B3A8(v0[25], &qword_1016980D0, &unk_10138F3B0);
    (*(v19 + 32))(v13, v20, v18);
  }

  v21 = v10 == 3;
  v22 = v0[37];
  v23 = v0[28];
  v25 = v0[26];
  v24 = v0[27];
  v26 = *(v0[29] + 32);
  v26(v24, v0[36], v23);
  v26(v24 + v25[5], v22, v23);
  v27 = v24 + v25[6];
  *v27 = xmmword_1013BD3F0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = xmmword_10139BF70;
  *(v24 + v25[7]) = v21;
  *(v24 + v25[8]) = 1;
  v28 = swift_task_alloc();
  v0[50] = v28;
  *v28 = v0;
  v28[1] = sub_10082C7B4;
  v29 = v0[48];
  v30 = v0[27];

  return sub_10121B780((v0 + 8), v30, 3);
}

uint64_t sub_10082C7B4()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_10082D52C;
  }

  else
  {
    v3 = sub_10082C8C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10082C8C8()
{
  v62 = v0;
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[34];
  v5 = v0[28];
  v6 = v0[16];
  v3(v0[35], v0[40], v5);
  v3(v4, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[27];
  if (v9)
  {
    v59 = v0[48];
    v55 = v8;
    v16 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101360DD0, &v61);
    *(v16 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v54 = v7;
    v56 = v15;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v10(v11, v14);
    v20 = sub_1000136BC(v17, v19, &v61);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v10(v12, v14);
    v24 = sub_1000136BC(v21, v23, &v61);

    *(v16 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v54, v55, "%s succeeded on device %{public}s commandId: %{public}s.", v16, 0x20u);
    swift_arrayDestroy();

    sub_10000B3A8((v0 + 8), &qword_1016A24A8, &unk_1013F60E0);
    v25 = v56;
  }

  else
  {
    v26 = v0[48];

    v10(v12, v14);
    v10(v11, v14);
    sub_10000B3A8((v0 + 8), &qword_1016A24A8, &unk_1013F60E0);
    v25 = v15;
  }

  sub_1008333E4(v25, type metadata accessor for AccessoryCommand);
  v27 = v0[42];
  v45 = v0[40];
  v48 = v0[44];
  v49 = v0[39];
  v50 = v0[38];
  v51 = v0[37];
  v52 = v0[36];
  v53 = v0[35];
  v28 = v0[33];
  v57 = v0[31];
  v29 = v0[29];
  v30 = v0[30];
  v31 = v0[28];
  v58 = v0[25];
  v60 = v0[24];
  v46 = v0[22];
  v47 = v0[21];
  v42 = v0[23];
  v43 = v0[20];
  v32 = v0[18];
  v33 = v0[17];
  v34 = *&v33[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v44 = v0[19];
  (v0[41])(v28);
  v35 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  (*(v29 + 32))(v36 + v35, v28, v31);
  *(v36 + ((v30 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v0[6] = sub_1008328E0;
  v0[7] = v36;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101635450;
  v37 = _Block_copy(v0 + 2);
  v38 = v33;
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);

  (*(v44 + 8))(v43, v32);
  (*(v46 + 8))(v42, v47);
  v48(v45, v31);
  v39 = v0[7];

  v40 = v0[1];

  return v40();
}

uint64_t sub_10082CEF8()
{
  v64 = v0;
  v1 = v0[46];

  v2 = v0[49];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[41];
  v6 = v0[31];
  v7 = v0[28];
  v8 = v0[16];
  v5(v0[32], v0[40], v7);
  v5(v6, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[44];
  v14 = v0[31];
  v13 = v0[32];
  v16 = v0[28];
  v15 = v0[29];
  if (v11)
  {
    v59 = v9;
    v17 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v17 = 136315906;
    *(v17 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101360DD0, v63);
    *(v17 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v10;
    v20 = v19;
    v12(v13, v16);
    v21 = sub_1000136BC(v18, v20, v63);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2082;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v12(v14, v16);
    v25 = sub_1000136BC(v22, v24, v63);

    *(v17 + 24) = v25;
    *(v17 + 32) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 34) = v26;
    *v57 = v26;
    _os_log_impl(&_mh_execute_header, v59, v55, "%s failed on device %{public}s commandId: %{public}s. Error: %{public}@", v17, 0x2Au);
    sub_10000B3A8(v57, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {

    v12(v14, v16);
    v12(v13, v16);
  }

  v62 = v2;
  swift_errorRetain();
  v27 = v0[42];
  v44 = v0[40];
  v47 = v0[44];
  v48 = v0[39];
  v49 = v0[38];
  v50 = v0[37];
  v51 = v0[36];
  v52 = v0[35];
  v28 = v0[33];
  v53 = v0[34];
  v54 = v0[32];
  v29 = v0[30];
  v31 = v0[28];
  v30 = v0[29];
  v56 = v0[27];
  v58 = v0[31];
  v60 = v0[25];
  v61 = v0[24];
  v32 = v0[23];
  v45 = v0[22];
  v46 = v0[21];
  v43 = v0[19];
  v33 = v0[17];
  v41 = v0[20];
  v42 = v0[18];
  (v0[41])(v28);
  v34 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  (*(v30 + 32))(v35 + v34, v28, v31);
  *(v35 + ((v29 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v62;
  v0[6] = sub_1008328E0;
  v0[7] = v35;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101635450;
  v36 = _Block_copy(v0 + 2);
  v37 = v33;
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v43 + 8))(v41, v42);
  (*(v45 + 8))(v32, v46);
  v47(v44, v31);
  v38 = v0[7];

  v39 = v0[1];

  return v39();
}

uint64_t sub_10082D52C()
{
  v65 = v0;
  v1 = v0[48];
  v2 = v0[27];

  sub_1008333E4(v2, type metadata accessor for AccessoryCommand);
  v3 = v0[51];
  v4 = v0[42];
  v5 = v0[43];
  v6 = v0[41];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[16];
  v6(v0[32], v0[40], v8);
  v6(v7, v9, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[44];
  v15 = v0[31];
  v14 = v0[32];
  v17 = v0[28];
  v16 = v0[29];
  if (v12)
  {
    v60 = v10;
    v18 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v18 = 136315906;
    *(v18 + 4) = sub_1000136BC(0xD00000000000002ALL, 0x8000000101360DD0, v64);
    *(v18 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v11;
    v21 = v20;
    v13(v14, v17);
    v22 = sub_1000136BC(v19, v21, v64);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2082;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v13(v15, v17);
    v26 = sub_1000136BC(v23, v25, v64);

    *(v18 + 24) = v26;
    *(v18 + 32) = 2114;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v27;
    *v58 = v27;
    _os_log_impl(&_mh_execute_header, v60, v56, "%s failed on device %{public}s commandId: %{public}s. Error: %{public}@", v18, 0x2Au);
    sub_10000B3A8(v58, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {

    v13(v15, v17);
    v13(v14, v17);
  }

  v63 = v3;
  swift_errorRetain();
  v28 = v0[42];
  v45 = v0[40];
  v48 = v0[44];
  v49 = v0[39];
  v50 = v0[38];
  v51 = v0[37];
  v52 = v0[36];
  v53 = v0[35];
  v29 = v0[33];
  v54 = v0[34];
  v55 = v0[32];
  v30 = v0[30];
  v32 = v0[28];
  v31 = v0[29];
  v57 = v0[27];
  v59 = v0[31];
  v61 = v0[25];
  v62 = v0[24];
  v33 = v0[23];
  v46 = v0[22];
  v47 = v0[21];
  v44 = v0[19];
  v34 = v0[17];
  v42 = v0[20];
  v43 = v0[18];
  (v0[41])(v29);
  v35 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  (*(v31 + 32))(v36 + v35, v29, v32);
  *(v36 + ((v30 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v63;
  v0[6] = sub_1008328E0;
  v0[7] = v36;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101635450;
  v37 = _Block_copy(v0 + 2);
  v38 = v34;
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);

  (*(v44 + 8))(v42, v43);
  (*(v46 + 8))(v33, v47);
  v48(v45, v32);
  v39 = v0[7];

  v40 = v0[1];

  return v40();
}

void sub_10082DB80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v152 = a2;
  v5 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v157 = &v144 - v7;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v144 - v10;
  v158 = type metadata accessor for UUID();
  v12 = *(v158 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v158);
  v159 = (&v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v154 = &v144 - v17;
  v18 = __chkstk_darwin(v16);
  v150 = &v144 - v19;
  v20 = __chkstk_darwin(v18);
  v151 = &v144 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v144 - v23;
  v25 = __chkstk_darwin(v22);
  v153 = &v144 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v144 - v28;
  __chkstk_darwin(v27);
  v155 = &v144 - v30;
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = (&v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v35 = v36;
  (*(v32 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v31);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v39 = *(v32 + 8);
  v38 = v32 + 8;
  v39(v35, v31);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  v156 = v3;
  v40 = *(v3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  v160 = a1;
  sub_100025020(a1, v164);
  v41 = v165;
  if (!v165)
  {
    sub_10000B3A8(v164, &qword_101696920, &unk_10138B200);
    v35 = v12;
    v38 = v158;
    (*(v12 + 56))(v11, 1, 1, v158);
LABEL_9:
    sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694960 == -1)
    {
LABEL_10:
      v66 = type metadata accessor for Logger();
      sub_1000076D4(v66, qword_10177B380);
      v47 = v35[2];
      v48 = v160;
      v47(v24, v160, v38);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = v35;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v164[0] = v71;
        *v70 = 141558275;
        *(v70 + 4) = 1752392040;
        *(v70 + 12) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v72 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v47;
        v75 = v74;
        v76 = v24;
        v65 = v69[1];
        v65(v76, v38);
        v77 = sub_1000136BC(v72, v75, v164);
        v47 = v73;

        *(v70 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v67, v68, "didStopPlayingSoundOnDevice %{private,mask.hash}s", v70, 0x16u);
        sub_100007BAC(v71);

        v48 = v160;
      }

      else
      {

        v78 = v24;
        v65 = v35[1];
        v65(v78, v38);
      }

      v44 = v159;
      goto LABEL_14;
    }

LABEL_47:
    swift_once();
    goto LABEL_10;
  }

  v42 = v166;
  sub_1000035D0(v164, v165);
  (*(v42 + 200))(v41, v42);
  sub_100007BAC(v164);
  v35 = v12;
  v38 = v158;
  if ((*(v12 + 48))(v11, 1, v158) == 1)
  {
    goto LABEL_9;
  }

  v43 = v155;
  (*(v12 + 32))(v155, v11, v38);
  v44 = v159;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_1000076D4(v45, qword_10177B380);
  v46 = v12;
  v47 = *(v12 + 16);
  v48 = v160;
  v47(v29, v160, v38);
  v49 = v153;
  v47(v153, v43, v38);
  v50 = Logger.logObject.getter();
  v148 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v148))
  {
    v51 = swift_slowAlloc();
    v52 = v46;
    v146 = v46;
    v53 = v51;
    v147 = swift_slowAlloc();
    v164[0] = v147;
    *v53 = 141558531;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v149 = v47;
    v145 = v50;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v57 = v49;
    v58 = *(v52 + 8);
    v58(v29, v38);
    v59 = sub_1000136BC(v54, v56, v164);

    *(v53 + 14) = v59;
    *(v53 + 22) = 2082;
    v47 = v149;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v58(v57, v38);
    v63 = sub_1000136BC(v60, v62, v164);

    *(v53 + 24) = v63;
    v64 = v145;
    _os_log_impl(&_mh_execute_header, v145, v148, "didStopPlayingSoundOnDevice %{private,mask.hash}s. groupId %{public}s", v53, 0x20u);
    swift_arrayDestroy();

    v48 = v160;

    v58(v155, v38);
    v65 = v58;
  }

  else
  {
    v126 = v43;

    v65 = *(v46 + 8);
    v65(v49, v38);
    v65(v29, v38);
    v65(v126, v38);
  }

LABEL_14:
  v79 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v80 = v156;
  swift_beginAccess();
  v81 = *(v80 + v79);
  if (!*(v81 + 16))
  {
LABEL_24:
    v112 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
    v113 = v157;
    (*(*(v112 - 8) + 56))(v157, 1, 1, v112);
    sub_10000B3A8(v113, &qword_1016998E0, &qword_101392030);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    sub_1000076D4(v114, qword_10177B380);
    v47(v44, v48, v38);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v163 = v118;
      *v117 = 141558275;
      *(v117 + 4) = 1752392040;
      *(v117 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v120 = v44;
      v122 = v121;
      v65(v120, v38);
      v123 = sub_1000136BC(v119, v122, &v163);

      *(v117 + 14) = v123;
      v124 = "didStopPlayingSoundOnDevice called with unknown device %{private,mask.hash}s";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v115, v116, v124, v117, 0x16u);
      sub_100007BAC(v118);

      return;
    }

    v125 = v44;
LABEL_37:
    v65(v125, v38);
    return;
  }

  v82 = sub_1000210EC(v48);
  if ((v83 & 1) == 0)
  {

    goto LABEL_24;
  }

  v84 = v82;
  v149 = v47;
  v85 = *(v81 + 56);
  v86 = v80;
  v87 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v88 = *(v87 - 8);
  v89 = v85 + *(v88 + 72) * v84;
  v90 = v149;
  v91 = v157;
  sub_100833680(v89, v157, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  (*(v88 + 56))(v91, 0, 1, v87);
  sub_10000B3A8(v91, &qword_1016998E0, &qword_101392030);
  v92 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_stopSoundSubjects;
  swift_beginAccess();
  v93 = *(v86 + v92);
  v94 = v154;
  if (!*(v93 + 16))
  {
LABEL_31:
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    sub_1000076D4(v127, qword_10177B380);
    v90(v94, v48, v38);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v128 = v65;
      v129 = v94;
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v162 = v118;
      *v117 = 141558275;
      *(v117 + 4) = 1752392040;
      *(v117 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v131;
      v128(v129, v38);
      v133 = sub_1000136BC(v130, v132, &v162);

      *(v117 + 14) = v133;
      v124 = "Missing stopSoundSubject for device %{private,mask.hash}s!";
      goto LABEL_35;
    }

    v125 = v94;
    goto LABEL_37;
  }

  v95 = sub_1000210EC(v48);
  if ((v96 & 1) == 0)
  {

    goto LABEL_31;
  }

  v97 = *(*(v93 + 56) + 8 * v95);

  v98 = v152;
  if (v152)
  {
    swift_errorRetain();
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_1000076D4(v99, qword_10177B380);
    v100 = v151;
    v149(v151, v48, v38);
    swift_errorRetain();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *v103 = 141558531;
      *(v103 + 4) = 1752392040;
      *(v103 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v65;
      v107 = v106;
      v105(v100, v38);
      v108 = sub_1000136BC(v104, v107, &v162);

      *(v103 + 14) = v108;
      *(v103 + 22) = 2082;
      v161 = v152;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v109 = String.init<A>(describing:)();
      v111 = sub_1000136BC(v109, v110, &v162);

      *(v103 + 24) = v111;
      _os_log_impl(&_mh_execute_header, v101, v102, "didStopPlayingSoundOnDevice %{private,mask.hash}s failed due to %{public}s", v103, 0x20u);
      swift_arrayDestroy();
      v98 = v152;
    }

    else
    {

      v65(v100, v38);
    }

    v162 = v98;
    swift_errorRetain();
    PassthroughSubject.send(completion:)();
  }

  else
  {
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v134 = type metadata accessor for Logger();
    sub_1000076D4(v134, qword_10177B380);
    v135 = v150;
    v149(v150, v48, v38);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v162 = v159;
      *v138 = 141558275;
      *(v138 + 4) = 1752392040;
      *(v138 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v140 = v65;
      v142 = v141;
      v140(v135, v38);
      v143 = sub_1000136BC(v139, v142, &v162);

      *(v138 + 14) = v143;
      _os_log_impl(&_mh_execute_header, v136, v137, "didStopPlayingSoundOnDevice %{private,mask.hash}s succeeded", v138, 0x16u);
      sub_100007BAC(v159);
    }

    else
    {

      v65(v135, v38);
    }

    PassthroughSubject.send(_:)();
    v162 = 4;
    PassthroughSubject.send(completion:)();
  }
}

void sub_10082EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, const char *a7)
{
  v66 = a5;
  v67 = a3;
  v68 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v60 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v60 - v21;
  __chkstk_darwin(v20);
  v24 = &v60 - v23;
  if (a1)
  {
    v64 = a4;
    v65 = a6;
    swift_errorRetain();
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177B380);
    v26 = v12[2];
    v26(v24, v68, v11);
    v26(v22, v67, v11);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70 = v67;
      *v29 = 141558787;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v62 = sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v63 = v28;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v61 = v12[1];
      v61(v24, v11);
      v33 = sub_1000136BC(v30, v32, &v70);

      *(v29 + 14) = v33;
      *(v29 + 22) = 2082;
      v69 = a1;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v34 = String.init<A>(describing:)();
      v36 = sub_1000136BC(v34, v35, &v70);

      *(v29 + 24) = v36;
      *(v29 + 32) = 2082;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v61(v22, v11);
      v40 = sub_1000136BC(v37, v39, &v70);

      *(v29 + 34) = v40;
      _os_log_impl(&_mh_execute_header, v27, v63, v66, v29, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v55 = v12[1];
      v55(v22, v11);
      v55(v24, v11);
    }

    v56 = v64;
    v57 = type metadata accessor for Transaction();
    __chkstk_darwin(v57);
    v58 = v68;
    *(&v60 - 4) = v56;
    *(&v60 - 3) = v58;
    *(&v60 - 2) = a1;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v66 = a7;
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177B380);
    v42 = v12[2];
    v42(v19, v68, v11);
    v42(v16, v67, v11);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70 = v68;
      *v45 = 141558531;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v67) = v44;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = v12[1];
      v49(v19, v11);
      v50 = sub_1000136BC(v46, v48, &v70);

      *(v45 + 14) = v50;
      *(v45 + 22) = 2082;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v49(v16, v11);
      v54 = sub_1000136BC(v51, v53, &v70);

      *(v45 + 24) = v54;
      _os_log_impl(&_mh_execute_header, v43, v67, v66, v45, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v59 = v12[1];
      v59(v16, v11);
      v59(v19, v11);
    }
  }
}

uint64_t sub_10082F528(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v27);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v28);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&a2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  (*(v13 + 16))(v15, a3, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v16, v15, v12);
  *(v18 + v17) = v24;
  aBlock[4] = sub_1008328E0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016354C8;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v29 + 8))(v8, v21);
  (*(v26 + 8))(v11, v28);
}

uint64_t sub_10082F8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_10082F98C;

  return daemon.getter();
}

uint64_t sub_10082F98C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1008345FC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_10082FB68;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_10082FB68(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;

  v8 = *(v4 + 32);
  if (v1)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {

    *(v5 + 48) = a1;

    return _swift_task_switch(sub_10082FCE8, 0, 0);
  }
}

uint64_t sub_10082FCE8()
{
  v1 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = sub_10000954C(v6);
  v0[7] = v7;
  swift_setDeallocating();
  (*(v3 + 8))(v6 + v5, v2);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_10082FE84;
  v9 = v0[6];

  return sub_10094DB94(v7);
}

uint64_t sub_10082FE84()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1008347FC, 0, 0);
}

void sub_10082FFD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v130 = a2;
  v5 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v134 = &v122 - v7;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v122 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v135 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v127 = &v122 - v18;
  v19 = __chkstk_darwin(v17);
  v128 = &v122 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v122 - v22;
  v24 = __chkstk_darwin(v21);
  v131 = &v122 - v25;
  v26 = __chkstk_darwin(v24);
  v129 = &v122 - v27;
  __chkstk_darwin(v26);
  v132 = (&v122 - v28);
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = (&v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v33 = v34;
  (*(v30 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v29);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v33, v29);
  if ((v34 & 1) == 0)
  {
    __break(1u);
LABEL_37:
    swift_once();
LABEL_10:
    v62 = type metadata accessor for Logger();
    sub_1000076D4(v62, qword_10177B380);
    v43 = *(a1 + 16);
    v63 = v12;
    v43(v23, v33, v12);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v126 = v43;
      v67 = v66;
      v68 = swift_slowAlloc();
      v138[0] = v68;
      *v67 = 141558275;
      *(v67 + 4) = 1752392040;
      *(v67 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v132 = *(a1 + 8);
      v132(v23, v63);
      v72 = sub_1000136BC(v69, v71, v138);

      *(v67 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "didCompletePlayingSoundOnDevice %{private,mask.hash}s", v67, 0x16u);
      sub_100007BAC(v68);

      v43 = v126;
    }

    else
    {

      v132 = *(a1 + 8);
      v132(v23, v63);
    }

    goto LABEL_15;
  }

  v133 = v3;
  v36 = *(v3 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  v37 = a1;
  sub_100025020(a1, v138);
  v38 = v139;
  if (!v139)
  {
    sub_10000B3A8(v138, &qword_101696920, &unk_10138B200);
    a1 = v13;
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_9:
    sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
    v33 = v37;
    if (qword_101694960 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

  v39 = v140;
  sub_1000035D0(v138, v139);
  (*(v39 + 200))(v38, v39);
  sub_100007BAC(v138);
  a1 = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_9;
  }

  v40 = *(v13 + 32);
  v41 = v132;
  v40(v132, v11, v12);
  v33 = v37;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000076D4(v42, qword_10177B380);
  v43 = *(a1 + 16);
  v44 = v129;
  v43(v129, v37, v12);
  v45 = v131;
  v43(v131, v41, v12);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v44;
    v49 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v138[0] = v125;
    *v49 = 141558531;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v124 = v47;
    v123 = v46;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v126 = v43;
    v53 = *(a1 + 8);
    v53(v48, v12);
    v54 = sub_1000136BC(v50, v52, v138);
    v33 = v37;

    *(v49 + 14) = v54;
    *(v49 + 22) = 2082;
    v55 = v131;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    v53(v55, v12);
    v59 = sub_1000136BC(v56, v58, v138);

    *(v49 + 24) = v59;
    v60 = v123;
    _os_log_impl(&_mh_execute_header, v123, v124, "didCompletePlayingSoundOnDevice %{private,mask.hash}s. groupId %{public}s", v49, 0x20u);
    swift_arrayDestroy();

    v61 = v132;
    v132 = v53;
    v53(v61, v12);
    v43 = v126;
  }

  else
  {

    v73 = *(a1 + 8);
    v73(v45, v12);
    v73(v44, v12);
    v132 = v73;
    v73(v41, v12);
  }

  v63 = v12;
LABEL_15:
  v74 = v135;
  v75 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v76 = v133;
  swift_beginAccess();
  v77 = *(v76 + v75);
  if (*(v77 + 16))
  {

    v78 = sub_1000210EC(v33);
    if (v79)
    {
      v80 = v78;
      v81 = v43;
      v82 = *(v77 + 56);
      v83 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
      v84 = *(v83 - 8);
      v85 = v82 + *(v84 + 72) * v80;
      v86 = v134;
      sub_100833680(v85, v134, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

      (*(v84 + 56))(v86, 0, 1, v83);
      sub_10000B3A8(v86, &qword_1016998E0, &qword_101392030);
      sub_100815748(v33, 0, 0);
      v87 = v130;
      if (v130)
      {
        swift_errorRetain();
        if (qword_101694960 != -1)
        {
          swift_once();
        }

        v88 = type metadata accessor for Logger();
        sub_1000076D4(v88, qword_10177B380);
        v89 = v128;
        v81(v128, v33, v63);
        swift_errorRetain();
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = v89;
          v93 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          *v93 = 141558531;
          *(v93 + 4) = 1752392040;
          *(v93 + 12) = 2081;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
          v94 = dispatch thunk of CustomStringConvertible.description.getter();
          v95 = v87;
          v97 = v96;
          v132(v92, v63);
          v98 = sub_1000136BC(v94, v97, &v137);

          *(v93 + 14) = v98;
          *(v93 + 22) = 2082;
          v136 = v95;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v99 = String.init<A>(describing:)();
          v101 = sub_1000136BC(v99, v100, &v137);

          *(v93 + 24) = v101;
          _os_log_impl(&_mh_execute_header, v90, v91, "didCompletePlayingSoundOnDevice %{private,mask.hash}s failed due to %{public}s", v93, 0x20u);
          swift_arrayDestroy();

          return;
        }

        v114 = v89;
        goto LABEL_35;
      }

      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      sub_1000076D4(v115, qword_10177B380);
      v116 = v127;
      v81(v127, v33, v63);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v137 = v108;
        *v107 = 141558275;
        *(v107 + 4) = 1752392040;
        *(v107 + 12) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v117 = dispatch thunk of CustomStringConvertible.description.getter();
        v118 = v116;
        v120 = v119;
        v132(v118, v63);
        v121 = sub_1000136BC(v117, v120, &v137);

        *(v107 + 14) = v121;
        v113 = "didCompletePlayingSoundOnDevice %{private,mask.hash}s succeeded";
        goto LABEL_27;
      }

      v114 = v116;
      goto LABEL_35;
    }
  }

  v102 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v103 = v134;
  (*(*(v102 - 8) + 56))(v134, 1, 1, v102);
  sub_10000B3A8(v103, &qword_1016998E0, &qword_101392030);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  sub_1000076D4(v104, qword_10177B380);
  v43(v74, v33, v63);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v137 = v108;
    *v107 = 141558275;
    *(v107 + 4) = 1752392040;
    *(v107 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    v132(v74, v63);
    v112 = sub_1000136BC(v109, v111, &v137);

    *(v107 + 14) = v112;
    v113 = "didCompletePlayingSoundOnDevice called with unknown device %{private,mask.hash}s";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v105, v106, v113, v107, 0x16u);
    sub_100007BAC(v108);

    return;
  }

  v114 = v74;
LABEL_35:
  v132(v114, v63);
}

uint64_t SPBeaconTaskState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 4)
    {
      return 0x6465756575712ELL;
    }

    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0x656C64692ELL;
      }

      return 0xD000000000000010;
    }

    return 0x726F7272652ELL;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 0x676E69646E65702ELL;
      }

      return 0xD000000000000010;
    }

    return 0x676E696E6E75722ELL;
  }
}

uint64_t type metadata accessor for SoundPlaybackManager.PlaybackCoordinator()
{
  result = qword_1016AA880;
  if (!qword_1016AA880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100831120()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DispatchWorkItem();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_1008311EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1008311EC()
{
  if (!qword_1016AA890)
  {
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016AA890);
    }
  }
}

uint64_t sub_100831260(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100831278(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008312CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100831338()
{
  result = qword_1016AA8D8;
  if (!qword_1016AA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA8D8);
  }

  return result;
}

uint64_t sub_10083138C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v6 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v45 - v8;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v45 - v14;
  v15 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v45 - v18;
  v20 = *(a1 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SharedBeaconRecord(0);
  v25 = *(v24 - 1);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v20 + 16);
  v47 = v3;
  v29(v23, v3, a1);
  v30 = swift_dynamicCast();
  v31 = *(v25 + 56);
  if ((v30 & 1) == 0)
  {
    v31(v19, 1, 1, v24);
    sub_10000B3A8(v19, &unk_101698C30, &unk_101392630);
    goto LABEL_6;
  }

  v31(v19, 0, 1, v24);
  sub_1008336E8(v19, v28, type metadata accessor for SharedBeaconRecord);
  if (*&v28[v24[11]] != -1 || *&v28[v24[12]] != -1)
  {
    sub_1008333E4(v28, type metadata accessor for SharedBeaconRecord);
LABEL_6:
    v32 = a2;
    goto LABEL_7;
  }

  v37 = v28[v24[16]];
  v38 = v37 == 4 || v37 == 1;
  v32 = a2;
  if (v38)
  {
    v39 = v45;
    sub_1000D2A70(&v28[v24[20]], v45, &unk_1016AF890, &qword_1013926D0);
    sub_1008333E4(v28, type metadata accessor for SharedBeaconRecord);
    v40 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {
      sub_10000B3A8(v39, &unk_1016AF890, &qword_1013926D0);
      v41 = type metadata accessor for UUID();
      v42 = v46;
      (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
    }

    else
    {
      v42 = v46;
      sub_1000D2A70(v39 + *(v40 + 20), v46, &qword_1016980D0, &unk_10138F3B0);
      sub_1008333E4(v39, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v43 = type metadata accessor for UUID();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        return (*(v44 + 32))(v48, v42, v43);
      }
    }

    sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    sub_1008333E4(v28, type metadata accessor for SharedBeaconRecord);
  }

LABEL_7:
  (*(v32 + 200))(a1, v32);
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v13, 1, v33) != 1)
  {
    return (*(v34 + 32))(v48, v13, v33);
  }

  (*(*(*(v32 + 8) + 8) + 32))(a1);
  result = (v35)(v13, 1, v33);
  if (result != 1)
  {
    return sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
  }

  return result;
}

void *sub_1008319C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v41 = a2;
  v42 = a3;
  v40 = type metadata accessor for UUID();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v40);
  v39 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v32[1] = v3;
    v45 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = a1 + 56;
    v11 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v14 = *(a1 + 36);
    v37 = v5 + 16;
    v38 = v5;
    v35 = v8;
    v36 = v5 + 8;
    v33 = a1 + 64;
    v34 = v14;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v43 = v13;
      v14 = v10;
      v17 = v38;
      v18 = *(a1 + 48) + *(v38 + 72) * v12;
      v19 = a1;
      v20 = v39;
      v21 = v40;
      (*(v38 + 16))(v39, v18, v40);
      v44 = v42(v20);
      v22 = v20;
      a1 = v19;
      (*(v17 + 8))(v22, v21);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = v45[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v15 = 1 << *(v19 + 32);
      if (v12 >= v15)
      {
        goto LABEL_23;
      }

      v24 = *(v14 + 8 * v16);
      v25 = v35;
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      v10 = v14;
      LODWORD(v14) = v34;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v24 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v15 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v16 << 6;
        v28 = v16 + 1;
        v29 = (v33 + 8 * v16);
        while (v28 < (v15 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_10040BA00(v12, v34, 0);
            v15 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_10040BA00(v12, v34, 0);
      }

LABEL_4:
      v13 = v43 + 1;
      v12 = v15;
      if (v43 + 1 == v25)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

BOOL sub_100831CC4(uint64_t a1)
{
  if (qword_101694920 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v1 = sub_100035730(a1, sub_10082FF9C, 0);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B380);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    type metadata accessor for BeaconObservation();
    v7 = Array.description.getter();
    v9 = sub_1000136BC(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Found queueObservations %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = v1[2];

  return v10 == 0;
}

uint64_t sub_100831EA0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconObservation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v7 = qword_10177B2E8;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v6, a1, v8);
  static Date.trustedNow.getter(&v6[*(v2 + 20)]);
  v6[*(v2 + 24)] = 22;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v9 = *(v3 + 72);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  sub_100833680(v6, v11 + v10, type metadata accessor for BeaconObservation);
  v12 = type metadata accessor for Transaction();
  __chkstk_darwin(v12);
  *&v14[-32] = v7;
  *&v14[-24] = v11;
  *&v14[-16] = 0;
  *&v14[-8] = 0;
  static Transaction.named<A>(_:with:)();

  return sub_1008333E4(v6, type metadata accessor for BeaconObservation);
}

unint64_t sub_1008320D4(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1008320E4()
{
  result = qword_1016AA8E0;
  if (!qword_1016AA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA8E0);
  }

  return result;
}

uint64_t sub_100832154()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + v6);
  v10 = *(v0 + v6 + 8);

  return sub_100825CC0(v0 + v3, v8, v9, v10, v0 + ((v2 + 16 + v6) & ~v2), v7);
}

uint64_t sub_100832208()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_10081A3C8(v0 + v2, v7, v0 + v6, v10, v11, v8);
}

uint64_t sub_100832348(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10082F8F8(a1, v6, v7, v1 + v5);
}

unint64_t sub_100832458()
{
  result = qword_1016AA978;
  if (!qword_1016AA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA978);
  }

  return result;
}

uint64_t sub_1008324AC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v5);
  v11 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10081E94C(a1, v8, v9, v1 + v4, v10, v1 + v7, v11);
}

void sub_1008325C0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10081ED54(a1, (v1 + v4), v9, v1 + v7, v10, v11);
}

unint64_t sub_1008326DC(unint64_t result)
{
  if (result >= 4)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1008326EC(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_100832748(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_10082BC70(a1, v11, v12, v1 + v6, v1 + v9, v13);
}

void sub_1008328E0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = v0 + v2;
  v5 = *(v0 + 16);
  sub_10082DB80(v4, v3);
}

uint64_t sub_1008329B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100832A90()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100832B54(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100827FA0(a1, v6, v7, v1 + v5);
}

void sub_100832C68(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_100828C80(a1, v6, v7, v1 + v4);
}

uint64_t sub_100832D08(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100810D24(a1, v6, v7, v1 + v5);
}

uint64_t sub_100832E24(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v5);
}

uint64_t sub_100832EF8()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v7);
  v11 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100811D24(v0 + v2, v8, v0 + v6, v10, v11, v9);
}

unint64_t sub_10083303C(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_1008326EC(result);
  }

  return result;
}

unint64_t sub_100833048(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v5 + v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v10 = (v6 + *(v9 + 80) + v8) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100816244(*(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), a1, *(v1 + 16), *(v1 + 24), v1 + v5, *(v1 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v7), (v1 + v8), (v1 + v10), *(v1 + v11));
}

void sub_10083319C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  sub_100817364(a1, *(v1 + v6), *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v7), v1 + v9, *(v1 + v9 + *(v8 + 64)));
}

uint64_t sub_1008332C8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v5 = (*(v4 + 64) + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_100824B58();
}

uint64_t sub_1008333E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100833444(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_1008326DC(result);
  }

  return result;
}

uint64_t sub_100833470(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = type metadata accessor for OwnedBeaconRecord();
  return sub_100037E20(v2 + *(v4 + 20), v3) & 1;
}

uint64_t sub_1008334C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8);
}

void sub_1008335B8(uint64_t a1, const char *a2, uint64_t a3, const char *a4)
{
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = *(v9 + 80);
  sub_10082EE44(a1, v4 + ((v10 + 16) & ~v10), v4 + ((*(v9 + 64) + v10 + ((v10 + 16) & ~v10)) & ~v10), *(v4 + ((*(v9 + 64) + ((*(v9 + 64) + v10 + ((v10 + 16) & ~v10)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4);
}

uint64_t sub_100833680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008336E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100833770()
{
  v1 = v0;
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  Transaction.capture()();
  sub_10082A3B0((v1 + v3), v6);
}

uint64_t sub_1008338B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (((((v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + 16 + v8) & ~v4;
  v3(v0 + v5, v1);

  v10 = *(v0 + v8 + 8);

  v3(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v6);
}

uint64_t sub_1008339AC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + v7);
  v12 = *(v0 + v7 + 8);

  return sub_10081FB38(v0 + v3, v8, v10, v11, v12, v0 + ((v2 + 16 + v7) & ~v2), v9);
}

uint64_t sub_100833A6C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100833B30()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100822778(v2, v3);
}

unint64_t sub_100833BF8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100822150(a1, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_100833CB0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v7 = (v4 + v6) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v5);
  v10 = *(v0 + v7);
  v11 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100822D6C(v8, v0 + v3, v0 + v6, v10, v11, v9);
}

uint64_t sub_100833D68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);
  v9 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8);
}

void sub_100833E38(uint64_t (*a1)(void), const char *a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  sub_1008210C8(v2 + ((v6 + 16) & ~v6), v2 + ((*(v5 + 64) + v6 + ((v6 + 16) & ~v6)) & ~v6), *(v2 + ((*(v5 + 64) + ((*(v5 + 64) + v6 + ((v6 + 16) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

void sub_100833EE8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 9) & ~v4;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = *(v1 + ((v6 + v9) & 0xFFFFFFFFFFFFFFF8));

  sub_100824C00(a1, v12, v10, v11, v1 + v5, v13, v14, (v1 + v9));
}

uint64_t sub_100833FB8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 64) + *(v1 + 80) + ((*(v1 + 80) + 24) & ~*(v1 + 80))) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + v2);
  v5 = *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_100824B58();
}

uint64_t sub_1008340A4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = (v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_100805A60(v6, v0 + v4, v0 + v5, v8, v9);
}

uint64_t sub_100834148()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v3 + v5 + 16) & ~v3;
  v7 = *(v0 + 16);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100662A80(v7, v0 + v4, v8, v9, v0 + v6);
}

uint64_t sub_100834270()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);
  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_100834374()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = *sub_1000035D0((*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager), *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24));
  return sub_10067A8F4(v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_100834448()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1008055B0(v6, v0 + v2, v0 + v5, v8, v9);
}

uint64_t sub_100834548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100803B1C(a1, v4, v5, v6);
}

uint64_t sub_1008345FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100834800(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 12645;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74617453636E7973;
      break;
    case 4:
      result = 1684628325;
      break;
    case 5:
      result = 0x644970696863;
      break;
    case 6:
      result = 0x754E6C6169726573;
      break;
    case 7:
      result = 0x644974726170;
      break;
    case 8:
      result = 0x6F636165426D756ELL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0x6E55646572616873;
      break;
    case 12:
      result = 0x314B64656573;
      break;
    case 13:
      result = 0x7374726563;
      break;
    case 14:
      result = 0x726F737365636361;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x69634572656E776FLL;
      break;
    case 18:
      result = 0x69684372656E776FLL;
      break;
    case 19:
      result = 0x7372655663657073;
      break;
    case 20:
      result = 0x657261776D726966;
      break;
    case 21:
      result = 0x49746375646F7270;
      break;
    case 22:
      result = 0x6449726F646E6576;
      break;
    case 23:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100834ABC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AAA30, &unk_1013BE000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100837634();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v47 = *v3;
  v37 = *v3;
  v36 = 0;
  sub_1001022C4(&v47, v35);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v37, *(&v37 + 1));
  if (!v2)
  {
    v46 = v3[1];
    v37 = v3[1];
    v36 = 1;
    sub_1001022C4(&v46, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v45 = v3[2];
    v37 = v3[2];
    v36 = 2;
    sub_1000D2A70(&v45, v35, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, *(&v37 + 1));
    v12 = *(v3 + 6);
    LOBYTE(v37) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = *(v3 + 56);
    v37 = *(v3 + 56);
    v36 = 4;
    sub_1001022C4(&v44, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v43 = *(v3 + 72);
    v37 = *(v3 + 72);
    v36 = 5;
    sub_1001022C4(&v43, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v42 = *(v3 + 88);
    v37 = *(v3 + 88);
    v36 = 6;
    sub_1001022C4(&v42, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v13 = *(v3 + 13);
    LOBYTE(v37) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 14);
    v15 = *(v3 + 120);
    LOBYTE(v37) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v37 = *(v3 + 16);
    v35[0] = 9;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v37 = *(v3 + 17);
    v35[0] = 10;
    sub_1000BC4D4(&qword_1016AAA40, &qword_1013D8B80);
    sub_100837688();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 18);
    v17 = *(v3 + 152);
    LOBYTE(v37) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = v3[10];
    v37 = v3[10];
    v36 = 12;
    sub_1001022C4(&v41, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v40 = v3[11];
    v37 = v3[11];
    v36 = 13;
    sub_1001022C4(&v40, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v39 = v3[12];
    v37 = v3[12];
    v36 = 14;
    sub_1001022C4(&v39, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v38 = v3[13];
    v37 = v3[13];
    v36 = 15;
    sub_1001022C4(&v38, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v18 = *(v3 + 28);
    v19 = *(v3 + 29);
    LOBYTE(v37) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 30);
    v21 = *(v3 + 31);
    LOBYTE(v37) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 32);
    v23 = *(v3 + 33);
    LOBYTE(v37) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + 34);
    v25 = *(v3 + 35);
    LOBYTE(v37) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 36);
    v27 = *(v3 + 37);
    LOBYTE(v37) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = *(v3 + 38);
    v29 = *(v3 + 39);
    LOBYTE(v37) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = *(v3 + 40);
    v31 = *(v3 + 41);
    LOBYTE(v37) = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = *(v3 + 42);
    v33 = *(v3 + 43);
    LOBYTE(v37) = 23;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100835330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008379C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100835364(uint64_t a1)
{
  v2 = sub_100837634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008353A0(uint64_t a1)
{
  v2 = sub_100837634();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100835430@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v117 = a2;
  v118 = a3;
  v116 = a4;
  v5 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v124 = *(v5 - 8);
  v6 = *(v124 + 64);
  __chkstk_darwin(v5 - 8);
  v129 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v8 = *(*(v132 - 8) + 64);
  v9 = __chkstk_darwin(v132);
  v123 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v131 = (&v113 - v12);
  __chkstk_darwin(v11);
  v133 = (&v113 - v13);
  v14 = a1[15];
  v15 = a1[14];
  v164 = a1[16];
  v165 = v14;
  v16 = a1[2];
  v148 = v164;
  v149 = v16;
  v162 = *(a1 + 104);
  v163 = v16;
  v146 = *(a1 + 104);
  v147 = v14;
  v17 = *(a1 + 120);
  v160 = *(a1 + 136);
  v161 = v17;
  v144 = *(a1 + 136);
  v145 = v17;
  v18 = *(a1 + 19);
  v143 = *(a1 + 160);
  v142 = v18;
  v157 = v15;
  sub_1001022C4(&v165, &v156);
  sub_1001022C4(&v164, &v156);
  sub_1000D2A70(&v163, &v156, &qword_1016A40E0, &unk_101396F30);
  sub_1001022C4(&v162, &v156);
  sub_1001022C4(&v161, &v156);
  sub_1001022C4(&v160, &v156);
  sub_1000E0A3C();
  v19 = DataProtocol.intValue.getter();
  v20 = *(a1 + 21);
  v21 = *(a1 + 22);
  v119 = a1;
  v114 = v20;
  v115 = v19;
  v158 = v21;
  v159 = v20;
  sub_1000D2A70(&v159, &v157, &qword_101699EB8, &qword_101398AA0);
  sub_1000D2A70(&v158, &v157, &qword_1016AAA28, &unk_1013BD990);
  v22 = sub_100908488(_swiftEmptyArrayStorage);
  v23 = v21 + 64;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v21 + 64);
  v27 = (v24 + 63) >> 6;
  v125 = v21;

  v28 = 0;
  v130 = 0;
  v121 = v27;
  v122 = v21 + 64;
  if (v26)
  {
    while (1)
    {
      v29 = v28;
LABEL_8:
      v30 = __clz(__rbit64(v26)) | (v29 << 6);
      v31 = (*(v125 + 48) + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v124 + 72);
      v35 = v133;
      sub_1000E180C(*(v125 + 56) + v34 * v30, v133 + *(v132 + 48));
      *v35 = v33;
      v35[1] = v32;
      v36 = v35;
      v37 = v131;
      sub_1000D2A70(v36, v131, &qword_101696E38, &qword_1013D8510);
      v38 = *v37;
      v39 = v37[1];
      *&v157 = v38;
      *(&v157 + 1) = v39;
      v40 = v39 >> 62;
      v128 = v38;
      if ((v39 >> 62) <= 1)
      {
        break;
      }

      v41 = v22;
      if (v40 == 2)
      {
        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        v42 = v43 - v44;
        if (__OFSUB__(v43, v44))
        {
          goto LABEL_62;
        }

LABEL_17:
        sub_100017D5C(v38, v39);
        goto LABEL_19;
      }

      v42 = 0;
LABEL_19:
      v45 = 20 - v42;
      if (__OFSUB__(20, v42))
      {
        goto LABEL_57;
      }

      v126 = v34;
      if (v45)
      {
        if (v45 <= 14)
        {
          if (v45 < 0)
          {
            goto LABEL_60;
          }

          v53 = v120 & 0xF00000000000000 | ((20 - v42) << 48);
          sub_100017D5C(v33, v32);
          v52 = v41;

          v50 = 0;
          v120 = v53;
          v51 = v53;
        }

        else
        {
          v46 = type metadata accessor for __DataStorage();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          swift_allocObject();
          sub_100017D5C(v33, v32);

          v49 = __DataStorage.init(length:)();
          if (v45 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v50 = swift_allocObject();
            *(v50 + 16) = 0;
            *(v50 + 24) = v45;
            v51 = v49 | 0x8000000000000000;
          }

          else
          {
            v50 = v45 << 32;
            v51 = v49 | 0x4000000000000000;
          }

          v52 = v41;
        }
      }

      else
      {
        sub_100017D5C(v33, v32);
        v52 = v41;

        v50 = 0;
        v51 = 0xC000000000000000;
      }

      v54 = v130;
      v55 = v132;
      v127 = *(v132 + 48);
      *&v156 = v50;
      *(&v156 + 1) = v51;
      sub_100776394(&v156, 0);
      v130 = v54;
      v56 = v156;
      Data.append(_:)();
      sub_100016590(v128, v39);
      sub_100016590(v56, *(&v56 + 1));
      v57 = v157;
      v58 = Data.base64EncodedString(options:)(0);
      sub_100016590(v57, *(&v57 + 1));
      sub_1000E1870(v131 + v127);
      v59 = v123;
      sub_1000D2A70(v133, v123, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v59, *(v59 + 8));
      sub_100837460(v59 + *(v55 + 48), v129);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v157 = v52;
      v61 = sub_100771D58(v58._countAndFlagsBits, v58._object);
      v63 = *(v52 + 16);
      v64 = (v62 & 1) == 0;
      v65 = __OFADD__(v63, v64);
      v66 = v63 + v64;
      if (v65)
      {
        goto LABEL_58;
      }

      v67 = v62;
      if (*(v52 + 24) >= v66)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v74 = v61;
          sub_1010064AC();
          v61 = v74;
        }
      }

      else
      {
        sub_100FE8E54(v66, isUniquelyReferenced_nonNull_native);
        v61 = sub_100771D58(v58._countAndFlagsBits, v58._object);
        if ((v67 & 1) != (v68 & 1))
        {
          goto LABEL_64;
        }
      }

      v23 = v122;
      v26 &= v26 - 1;
      if (v67)
      {
        v69 = v61;

        v70 = v157;
        sub_1008374C4(v129, *(v157 + 56) + v69 * v126);

        sub_10000B3A8(v133, &qword_101696E38, &qword_1013D8510);
        v28 = v29;
        v22 = v70;
        v27 = v121;
        if (!v26)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v71 = v157;
        *(v157 + 8 * (v61 >> 6) + 64) |= 1 << v61;
        *(v71[6] + 16 * v61) = v58;
        sub_100837460(v129, v71[7] + v61 * v126);

        sub_10000B3A8(v133, &qword_101696E38, &qword_1013D8510);
        v72 = v71[2];
        v65 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v65)
        {
          goto LABEL_59;
        }

        v71[2] = v73;
        v28 = v29;
        v22 = v71;
        v27 = v121;
        if (!v26)
        {
          goto LABEL_5;
        }
      }
    }

    if (!v40)
    {
      v41 = v22;
      v42 = BYTE6(v39);
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v38), v38))
    {
      goto LABEL_61;
    }

    v41 = v22;
    v42 = HIDWORD(v38) - v38;
    goto LABEL_17;
  }

  while (1)
  {
LABEL_5:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      goto LABEL_8;
    }
  }

  sub_10000B3A8(&v158, &qword_1016AAA28, &unk_1013BD990);
  v75 = v119;
  v76 = *(v119 + 23);
  v141 = 0;
  v77 = v119[13];
  *&v140[7] = v119[12];
  v156 = v77;
  v157 = *&v140[7];
  v78 = *v119;
  v138 = v119[1];
  v139 = v77;
  v154 = v78;
  v155 = v138;
  v136 = *(v119 + 88);
  v137 = v78;
  v152 = *(v119 + 56);
  v153 = v136;
  v135 = *(v119 + 56);
  v79 = *(v119 + 72);
  v80 = *(v119 + 39);
  v150 = v119[18];
  v151 = v79;
  if (v80 >> 60 == 15)
  {
    sub_1001022C4(&v157, v134);
    sub_1001022C4(&v156, v134);
    sub_1001022C4(&v155, v134);
    sub_1001022C4(&v154, v134);
    sub_1000D2A70(&v153, v134, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v152, v134, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v151, v134, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v150, v134, &qword_1016A0AC0, &unk_1013926A0);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
LABEL_55:
    v100 = v148;
    v101 = v149;
    v102 = v146;
    v104 = v115;
    v103 = v116;
    *v116 = v147;
    v103[1] = v100;
    v105 = v141;
    v103[2] = v101;
    *(v103 + 6) = 0;
    *(v103 + 56) = v102;
    v106 = v144;
    *(v103 + 72) = v145;
    *(v103 + 88) = v106;
    *(v103 + 120) = v143;
    v107 = v142;
    *(v103 + 13) = v104;
    *(v103 + 14) = v107;
    *(v103 + 16) = v114;
    *(v103 + 17) = v22;
    *(v103 + 18) = v76;
    *(v103 + 152) = v105;
    v108 = v139;
    *(v103 + 153) = *v140;
    *(v103 + 21) = *&v140[15];
    v109 = v138;
    v103[11] = v108;
    v103[12] = v109;
    v110 = v136;
    v103[13] = v137;
    v103[14] = v110;
    v111 = *(v75 + 72);
    v103[15] = v135;
    v103[16] = v111;
    *(v103 + 34) = 0x302E302E31;
    *(v103 + 35) = 0xE500000000000000;
    v103[18] = v75[18];
    *(v103 + 38) = v82;
    *(v103 + 39) = v83;
    *(v103 + 40) = v84;
    *(v103 + 41) = v85;
    v112 = v118;
    *(v103 + 42) = v117;
    *(v103 + 43) = v112;
    return result;
  }

  v86 = v22;
  v87 = *(v119 + 38);
  sub_1001022C4(&v157, v134);
  sub_1001022C4(&v156, v134);
  sub_1001022C4(&v155, v134);
  sub_1001022C4(&v154, v134);
  sub_1000D2A70(&v153, v134, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v152, v134, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v151, v134, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v150, v134, &qword_1016A0AC0, &unk_1013926A0);
  v88 = sub_100313B54(v87, v80);
  v90 = v89;
  v82 = Data.hexString.getter();
  v83 = v91;
  sub_100016590(v88, v90);
  v92 = v80 >> 62;
  if ((v80 >> 62) > 1)
  {
    if (v92 != 2)
    {
LABEL_54:
      v96 = Data.subdata(in:)();
      v98 = v97;
      v84 = Data.hexString.getter();
      v85 = v99;
      result = sub_100016590(v96, v98);
      v22 = v86;
      goto LABEL_55;
    }

    v94 = *(v87 + 16);
    v93 = *(v87 + 24);
    v65 = __OFSUB__(v93, v94);
    v95 = v93 - v94;
    if (v65)
    {
      __break(1u);
      goto LABEL_50;
    }

LABEL_52:
    if (v95 < -1)
    {
      __break(1u);
    }

    goto LABEL_54;
  }

  if (!v92)
  {
    goto LABEL_54;
  }

LABEL_50:
  LODWORD(v95) = HIDWORD(v87) - v87;
  if (!__OFSUB__(HIDWORD(v87), v87))
  {
    v95 = v95;
    goto LABEL_52;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100835E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[319] = a4;
  v4[318] = a3;
  v4[317] = a2;
  v4[316] = a1;
  v5 = type metadata accessor for HashAlgorithm();
  v4[320] = v5;
  v6 = *(v5 - 8);
  v4[321] = v6;
  v7 = *(v6 + 64) + 15;
  v4[322] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v4[323] = v8;
  v9 = *(v8 - 8);
  v4[324] = v9;
  v10 = *(v9 + 64) + 15;
  v4[325] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[326] = v11;
  v12 = *(v11 - 8);
  v4[327] = v12;
  v13 = *(v12 + 64) + 15;
  v4[328] = swift_task_alloc();

  return _swift_task_switch(sub_100835FF4, 0, 0);
}

void sub_100835FF4()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 2624);
  v7 = *(v0 + 2616);
  v8 = *(v0 + 2608);
  v9 = *(v0 + 2600);
  v50 = *(v0 + 2592);
  v51 = *(v0 + 2584);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 2504) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 2512) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  static Locale.current.getter();
  v30 = Locale.acceptLanguageCode.getter();
  v32 = v31;
  (*(v50 + 8))(v9, v51);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v30, v32, 0x4C2D747065636341, 0xEF65676175676E61, v33);
  v34 = v25;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];

    if (v39)
    {
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v40);
    }
  }

  *(v0 + 2632) = v34;
  v41 = *(v0 + 2544);
  v42 = *(v0 + 2536);
  v43 = *(v0 + 2528);
  sub_1008372F4(v43, v0 + 2128);
  sub_100835430(v43, v42, v41, (v0 + 16));
  sub_100837350(v43);
  v44 = type metadata accessor for JSONEncoder();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  *(v0 + 2640) = JSONEncoder.init()();
  memcpy((v0 + 368), (v0 + 16), 0x160uLL);
  sub_1008373A4();
  v47 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 2648) = 0;
  *(v0 + 2656) = v47;
  *(v0 + 2664) = v48;
  sub_100017D5C(v47, v48);
  v49 = swift_task_alloc();
  *(v0 + 2672) = v49;
  *v49 = v0;
  v49[1] = sub_100836680;

  sub_100EA5794();
}

uint64_t sub_100836680(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2672);
  v6 = *v2;
  *(v3 + 2680) = a1;
  *(v3 + 2688) = a2;

  return _swift_task_switch(sub_100836784, 0, 0);
}

uint64_t sub_100836784()
{
  v1 = *(v0 + 2688);
  v2 = *(v0 + 2680);
  v3 = *(v0 + 2648);
  v4 = *(v0 + 2576);
  v5 = *(v0 + 2568);
  v6 = *(v0 + 2560);
  *(v0 + 2488) = v2;
  *(v0 + 2496) = v1;
  *(v0 + 2472) = &type metadata for Data;
  *(v0 + 2480) = &protocol witness table for Data;
  *(v0 + 2448) = *(v0 + 2656);
  v7 = sub_1000035D0((v0 + 2448), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 2448));
  *(v0 + 2696) = *(v0 + 2488);
  *(v0 + 2704) = *(v0 + 2496);
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 2712) = v10;
  *(v0 + 2720) = v11;
  (*(v5 + 8))(v4, v6);
  v13 = swift_task_alloc();
  *(v0 + 2728) = v13;
  *v13 = v0;
  v13[1] = sub_10083693C;
  v14 = *(v0 + 2552);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_10083693C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2728);
  v6 = *v2;
  *(*v2 + 2736) = v1;

  if (v1)
  {
    v7 = sub_100836E68;
  }

  else
  {
    v8 = v4[340];
    v9 = v4[339];
    v4[343] = a1;
    sub_100016590(v9, v8);
    v7 = sub_100836A70;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100836A70()
{
  v47 = v0;
  v1 = v0[343];
  v2 = v0[342];
  v3 = v0[338];
  v4 = v0[337];
  v5 = v0[329];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v46);

  sub_100016590(v4, v3);
  v7 = v46;
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v8 = v7 + 8;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v7[8];
  v12 = (63 - v10) >> 6;
  v43 = v7;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
    v15 = v43;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v44 = *v22;

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10138BBE0;
    v7 = &type metadata for String;
    *(v24 + 56) = &type metadata for String;
    v25 = sub_100008C00();
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v25;
    *(v24 + 64) = v25;
    *(v24 + 72) = v44;
    *(v24 + 80) = v23;
    os_log(_:dso:log:_:_:)();
  }

  v15 = v43;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  v26 = v42;
  v27 = v42[333];
  v28 = v42[332];
  v29 = v42[330];
  v45 = v42[319];
  v30 = v42[316];

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  memcpy(v26 + 178, v26 + 2, 0x160uLL);
  sub_1008373F8((v26 + 2), (v26 + 222));
  v32 = String.init<A>(describing:)();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_100008C00();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  os_log(_:dso:log:_:_:)();

  sub_100837350(v30);

  sub_100837430((v42 + 2));

  sub_100017D5C(v28, v27);

  sub_100016590(v28, v27);
  v35 = v42[333];
  v36 = v42[332];
  v37 = v42[328];
  v38 = v42[325];
  v39 = v42[322];

  v40 = v42[1];

  return v40(v43, v36, v35);
}