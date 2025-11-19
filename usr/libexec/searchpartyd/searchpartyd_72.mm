uint64_t sub_100785DE8(uint64_t a1)
{
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v47 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v52 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = v47 - v12;
  v13 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v47 - v15;
  v17 = type metadata accessor for WildModeAssociationRecord(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v47 - v23;
  v25 = *(v1 + 16);
  v26 = sub_10002F740();
  v53 = a1;
  sub_1012BC3D0(sub_1007A7D64, v26, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v27 = &unk_1016C7C90;
    v28 = &qword_1013BB4B0;
    v29 = v16;
  }

  else
  {
    v50 = v8;
    sub_1007A91C8(v16, v24, type metadata accessor for WildModeAssociationRecord);
    static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v30 = qword_10177C3F8;
    v48 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_101385D80;
    sub_1007A7DFC(v24, v22, type metadata accessor for WildModeAssociationRecord);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    *(v31 + 56) = &type metadata for String;
    v35 = sub_100008C00();
    *(v31 + 64) = v35;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    v49 = v30;
    os_log(_:dso:log:_:_:)();

    sub_1000D2A70(&v24[*(v17 + 44)], v6, &unk_101696900, &unk_10138B1E0);
    v36 = v50;
    if ((*(v50 + 48))(v6, 1, v7) != 1)
    {
      v38 = v51;
      (*(v36 + 32))(v51, v6, v7);
      v39 = v52;
      static Date.trustedNow.getter(v52);
      v47[1] = static os_log_type_t.default.getter();
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10138BBE0;
      sub_100799304(&qword_1016969A0, &type metadata accessor for Date);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v40 + 56) = &type metadata for String;
      *(v40 + 64) = v35;
      *(v40 + 32) = v41;
      *(v40 + 40) = v42;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v40 + 96) = &type metadata for String;
      *(v40 + 104) = v35;
      *(v40 + 72) = v43;
      *(v40 + 80) = v44;
      os_log(_:dso:log:_:_:)();

      v37 = static Date.> infix(_:_:)();
      v45 = *(v36 + 8);
      v45(v39, v7);
      v45(v38, v7);
      sub_1007A810C(v24, type metadata accessor for WildModeAssociationRecord);
      return v37 & 1;
    }

    sub_1007A810C(v24, type metadata accessor for WildModeAssociationRecord);
    v27 = &unk_101696900;
    v28 = &unk_10138B1E0;
    v29 = v6;
  }

  sub_10000B3A8(v29, v27, v28);
  v37 = 0;
  return v37 & 1;
}

id sub_100786378(unint64_t a1, void (*a2)(void), int64_t a3)
{
  v123 = a2;
  v124 = a3;
  v114 = *v3;
  v5 = type metadata accessor for WildModeTrackingLocation(0);
  v131 = *(v5 - 8);
  v132 = v5;
  v6 = *(v131 + 64);
  __chkstk_darwin(v5);
  v8 = (&v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v115 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v111 - v13;
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v122 = &v111 - v16;
  v17 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v127 = &v111 - v19;
  v20 = type metadata accessor for WildModeAssociationRecord(0);
  v120 = *(v20 - 8);
  v121 = v20;
  v21 = *(v120 + 64);
  __chkstk_darwin(v20);
  v116 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
  v23 = *(*(v117 - 1) + 64);
  __chkstk_darwin(v117);
  v129 = &v111 - v24;
  v125 = sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
  v25 = *(*(v125 - 8) + 64);
  v26 = __chkstk_darwin(v125);
  v126 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v128 = (&v111 - v28);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v29 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10138BBE0;
  v31 = *v3;
  v130 = v3;
  v133 = v31;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v32 = String.init<A>(describing:)();
  v34 = v33;
  *(v30 + 56) = &type metadata for String;
  v35 = sub_100008C00();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v35;
  v118 = v35;
  *(v30 + 64) = v35;
  *(v30 + 72) = 0xD000000000000039;
  *(v30 + 80) = 0x800000010135FC90;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  v36 = qword_10177C3F8;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101385D80;
  v38 = a1 >> 62;
  if (a1 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v37 + 56) = &type metadata for Int;
  *(v37 + 64) = &protocol witness table for Int;
  *(v37 + 32) = v39;
  os_log(_:dso:log:_:_:)();

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    goto LABEL_58;
  }

  v41 = result;
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 applicationIsInstalled:v42];

  if ((v43 & 1) == 0)
  {
    v44 = v130[2];
    sub_10125E224();

    sub_100A8AF58();
  }

  if (v38)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_51;
    }

    v45 = *(a1 + 32);
  }

  v46 = v45;
  v47 = v128;
  sub_100783224(v45, v128);
  v48 = v126;
  sub_1000D2A70(v47, v126, &qword_1016A9640, &qword_1013BB5D0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v53 = v48;
    v54 = v129;
    sub_1000D2AD8(v53, v129, &qword_1016A9638, &qword_1013BB5C8);
    v55 = *(v54 + v117[24]);
    v56 = (v54 + v117[12]);
    v58 = *v56;
    v57 = v56[1];
    v112 = v58;
    v111 = v57;
    v59 = v117[16];
    v60 = v54 + v59;
    v61 = v119;
    sub_1000D2A70(v60, v119, &unk_101698C30, &unk_101392630);
    v62 = type metadata accessor for SharedBeaconRecord(0);
    v63 = *(v62 - 8);
    v64 = *(v63 + 48);
    v125 = v63 + 48;
    v65 = v64(v61, 1, v62);
    v113 = v36;
    v126 = v64;
    if (v65 == 1)
    {
      sub_10000B3A8(v61, &unk_101698C30, &unk_101392630);
      v66 = type metadata accessor for UUID();
      v67 = v122;
      (*(*(v66 - 8) + 56))(v122, 1, 1, v66);
    }

    else
    {
      v68 = v61;
      v69 = *(v62 + 20);
      v70 = type metadata accessor for UUID();
      v71 = v46;
      v72 = *(v70 - 8);
      v73 = v68 + v69;
      v67 = v122;
      (*(v72 + 16))(v122, v73, v70);
      sub_1007A810C(v68, type metadata accessor for SharedBeaconRecord);
      (*(v72 + 56))(v67, 0, 1, v70);
      v46 = v71;
    }

    v74 = v129;
    v75 = v67;
    sub_100793720(v129, v67, v127);
    v76 = v127;
    sub_10000B3A8(v75, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v120 + 48))(v76, 1, v121) == 1)
    {
      sub_10000B3A8(v76, &unk_1016C7C90, &qword_1013BB4B0);
      sub_10079A248(v74, v112, v111, (v74 + v59), v46, v55, v123, v124);

      sub_10000B3A8(v128, &qword_1016A9640, &qword_1013BB5D0);
LABEL_54:
      v50 = &qword_1016A9638;
      v51 = &qword_1013BB5C8;
      v52 = v74;
      return sub_10000B3A8(v52, v50, v51);
    }

    v122 = v46;
    sub_1007A91C8(v76, v116, type metadata accessor for WildModeAssociationRecord);
    LODWORD(v127) = static os_log_type_t.default.getter();
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_10138B360;
    v78 = UUID.uuidString.getter();
    v79 = v118;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = v79;
    *(v77 + 32) = v78;
    *(v77 + 40) = v80;
    v81 = MACAddress.description.getter();
    *(v77 + 96) = &type metadata for String;
    *(v77 + 104) = v79;
    *(v77 + 72) = v81;
    *(v77 + 80) = v82;
    if (v55 <= 1)
    {
      v83 = v126;
      if (v55)
      {
        v84 = 0xE600000000000000;
        v85 = 0x6E6169727564;
      }

      else
      {
        v84 = 0xE500000000000000;
        v85 = 0x656C707061;
      }
    }

    else
    {
      v83 = v126;
      if (v55 == 2)
      {
        v84 = 0xE700000000000000;
        v85 = 0x6579656B776168;
      }

      else
      {
        if (v55 != 3)
        {
          v86 = v118;
          *(v77 + 136) = &type metadata for String;
          *(v77 + 144) = v86;
          v84 = 0xE000000000000000;
          *(v77 + 112) = 0;
          goto LABEL_34;
        }

        v84 = 0xE400000000000000;
        v85 = 1701602664;
      }
    }

    v87 = v118;
    *(v77 + 136) = &type metadata for String;
    *(v77 + 144) = v87;
    *(v77 + 112) = v85;
LABEL_34:
    *(v77 + 120) = v84;
    os_log(_:dso:log:_:_:)();

    v88 = v115;
    sub_1000D2A70(v129 + v59, v115, &unk_101698C30, &unk_101392630);
    if (v83(v88, 1, v62) == 1)
    {
      sub_10000B3A8(v88, &unk_101698C30, &unk_101392630);
      v125 = 0;
      v126 = 0;
      v127 = 0;
    }

    else
    {
      v89 = (v88 + *(v62 + 28));
      v126 = *v89;
      v90 = *(v89 + 2);
      v125 = *(v89 + 1);
      v127 = v90;

      sub_1007A810C(v88, type metadata accessor for SharedBeaconRecord);
    }

    v29 = v130;
    v91 = [v122 observedLocations];
    sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v38 >> 62))
    {
      v92 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v92)
      {
LABEL_39:
        v133 = _swiftEmptyArrayStorage;
        result = sub_101124B70(0, v92 & ~(v92 >> 63), 0);
        if ((v92 & 0x8000000000000000) == 0)
        {
          v93 = 0;
          v94 = v133;
          do
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v95 = *(v38 + 8 * v93 + 32);
            }

            v96 = v95;
            [v95 latitude];
            v98 = v97;
            [v96 longitude];
            v100 = v99;
            [v96 horizontalAccuracy];
            v102 = v101;
            v103 = [v96 timestamp];
            v104 = v8 + *(v132 + 28);
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            *v8 = v98;
            v8[1] = v100;
            v8[2] = v102;
            v133 = v94;
            v106 = v94[2];
            v105 = v94[3];
            if (v106 >= v105 >> 1)
            {
              sub_101124B70(v105 > 1, v106 + 1, 1);
              v94 = v133;
            }

            ++v93;
            v94[2] = v106 + 1;
            sub_1007A91C8(v8, v94 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v106, type metadata accessor for WildModeTrackingLocation);
          }

          while (v92 != v93);

          v29 = v130;
          goto LABEL_53;
        }

        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

LABEL_52:

      v94 = _swiftEmptyArrayStorage;
LABEL_53:
      v107 = swift_allocObject();
      swift_weakInit();
      v108 = v124;

      v109 = v116;
      v110 = v122;
      v74 = v129;
      sub_10079CDF4(v116, v122, v129, v126, v125, v127, v94, v29, v123, v108, v107, v114);

      sub_1007A810C(v109, type metadata accessor for WildModeAssociationRecord);
      sub_10000B3A8(v128, &qword_1016A9640, &qword_1013BB5D0);

      goto LABEL_54;
    }

LABEL_51:
    v92 = _CocoaArrayWrapper.endIndex.getter();
    if (v92)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

  v49 = *v48;
  swift_errorRetain();
  (v123)(v49);

  v50 = &qword_1016A9640;
  v51 = &qword_1013BB5D0;
  v52 = v47;
  return sub_10000B3A8(v52, v50, v51);
}

uint64_t sub_1007871F0(NSObject *a1, void (*a2)(void), void (*a3)(unint64_t, _BYTE *, uint64_t))
{
  v69 = a1;
  v67 = a2;
  v68 = a3;
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v62 - v5;
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v65 = v62 - v9;
  v10 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v62 - v12;
  v14 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
  v15 = *(*(v14 - 1) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v62 - v19;
  v66 = sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
  v21 = *(*(v66 - 8) + 64);
  v22 = __chkstk_darwin(v66);
  v24 = (v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = (v62 - v25);
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177C430);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v63 = v13;
    v31 = v30;
    v32 = swift_slowAlloc();
    v62[1] = v32;
    *v31 = 136446466;
    v71 = v70;
    v72 = v32;
    type metadata accessor for UnauthorizedTracking();
    v64 = v20;

    v33 = String.init<A>(describing:)();
    v35 = v18;
    v36 = v6;
    v37 = v14;
    v38 = v26;
    v39 = v24;
    v40 = sub_1000136BC(v33, v34, &v72);
    v20 = v64;

    *(v31 + 4) = v40;
    v24 = v39;
    v26 = v38;
    v14 = v37;
    v6 = v36;
    v18 = v35;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_1000136BC(0xD000000000000038, 0x800000010135FB30, &v72);
    _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s: %{public}s", v31, 0x16u);
    swift_arrayDestroy();

    v13 = v63;
  }

  sub_100783224(v69, v26);
  sub_1000D2A70(v26, v24, &qword_1016A9640, &qword_1013BB5D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *v24;
    swift_errorRetain();
    (v67)(v41);

    v42 = &qword_1016A9640;
    v43 = &qword_1013BB5D0;
    v44 = v26;
  }

  else
  {
    sub_1000D2AD8(v24, v20, &qword_1016A9638, &qword_1013BB5C8);
    v45 = v20[v14[24]];
    sub_1000D2A70(v20, v18, &qword_1016A9638, &qword_1013BB5C8);
    sub_100308D64(*&v18[v14[12]], *&v18[v14[12] + 8]);
    v46 = v14[16];

    sub_1000D2AD8(&v18[v46], v6, &unk_101698C30, &unk_101392630);
    v47 = type metadata accessor for SharedBeaconRecord(0);
    if ((*(*(v47 - 8) + 48))(v6, 1, v47) == 1)
    {
      v48 = type metadata accessor for MACAddress();
      (*(*(v48 - 8) + 8))(v18, v48);
      sub_10000B3A8(v6, &unk_101698C30, &unk_101392630);
      v49 = type metadata accessor for UUID();
      v50 = v65;
      (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
    }

    else
    {
      v51 = *(v47 + 20);
      v52 = type metadata accessor for UUID();
      v53 = v6;
      v54 = *(v52 - 8);
      v55 = v53 + v51;
      v56 = v65;
      (*(v54 + 16))(v65, v55, v52);
      sub_1007A810C(v53, type metadata accessor for SharedBeaconRecord);
      v57 = v52;
      v50 = v56;
      (*(v54 + 56))(v56, 0, 1, v57);
      v58 = type metadata accessor for MACAddress();
      (*(*(v58 - 8) + 8))(v18, v58);
    }

    sub_100793720(v20, v50, v13);
    sub_10000B3A8(v50, &qword_1016980D0, &unk_10138F3B0);
    v59 = type metadata accessor for WildModeAssociationRecord(0);
    v60 = (*(*(v59 - 8) + 48))(v13, 1, v59);
    sub_10000B3A8(v13, &unk_1016C7C90, &qword_1013BB4B0);
    if (v60 == 1)
    {
      sub_10079A248(v20, *&v20[v14[12]], *&v20[v14[12] + 8], &v20[v14[16]], v69, v45, v67, v68);
    }

    else
    {
      sub_10078F774(v69, v67, v68);
    }

    sub_10000B3A8(v26, &qword_1016A9640, &qword_1013BB5D0);
    v42 = &qword_1016A9638;
    v43 = &qword_1013BB5C8;
    v44 = v20;
  }

  return sub_10000B3A8(v44, v42, v43);
}

uint64_t sub_10078798C(void (*a1)(void, void, void), uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, unint64_t a8, char *a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15)
{
  v296 = a8;
  v265 = a7;
  v266 = a6;
  v297 = a4;
  v299 = a3;
  v276 = a1;
  v16 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v284 = &v242 - v18;
  v19 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v269 = &v242 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v285 = &v242 - v24;
  __chkstk_darwin(v23);
  v294 = (&v242 - v25);
  v295 = type metadata accessor for Date();
  v283 = *(v295 - 8);
  v26 = *(v283 + 64);
  __chkstk_darwin(v295);
  v293 = &v242 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v292 = &v242 - v30;
  v268 = type metadata accessor for WildModeAssociationRecord(0);
  v270 = *(v268 - 8);
  v31 = *(v270 + 64);
  v32 = __chkstk_darwin(v268);
  v272 = &v242 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = v33;
  __chkstk_darwin(v32);
  v35 = &v242 - v34;
  v36 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v262 = *(v36 - 8);
  v37 = *(v262 + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v264 = &v242 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v261 = &v242 - v41;
  v263 = v42;
  __chkstk_darwin(v40);
  v281 = &v242 - v43;
  v300 = type metadata accessor for MACAddress();
  v44 = *(v300 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v300);
  v291 = &v242 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v280 = &v242 - v49;
  v260 = v50;
  __chkstk_darwin(v48);
  v279 = &v242 - v51;
  v52 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v248 = &v242 - v54;
  v252 = sub_1000BC4D4(&qword_1016C7CC0, &qword_1013BB5D8);
  v250 = *(v252 - 8);
  v55 = *(v250 + 64);
  __chkstk_darwin(v252);
  v249 = &v242 - v56;
  v254 = sub_1000BC4D4(&qword_1016A9648, &qword_1013BB5E0);
  v253 = *(v254 - 8);
  v57 = *(v253 + 64);
  __chkstk_darwin(v254);
  v251 = &v242 - v58;
  v257 = sub_1000BC4D4(&qword_1016A9650, &qword_1013BB5E8);
  v256 = *(v257 - 8);
  v59 = *(v256 + 64);
  __chkstk_darwin(v257);
  v255 = &v242 - v60;
  v259 = sub_1000BC4D4(&qword_1016A9658, &qword_1013BB5F0);
  v258 = *(v259 - 8);
  v61 = *(v258 + 8);
  __chkstk_darwin(v259);
  v278 = &v242 - v62;
  v63 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v64 = *(*(v63 - 8) + 64);
  v65 = __chkstk_darwin(v63 - 8);
  v282 = &v242 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v273 = &v242 - v67;
  v301 = type metadata accessor for UUID();
  v298 = *(v301 - 8);
  v68 = *(v298 + 64);
  v69 = __chkstk_darwin(v301);
  v290 = &v242 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v69);
  v72 = &v242 - v71;
  v73 = __chkstk_darwin(v70);
  v277 = &v242 - v74;
  __chkstk_darwin(v73);
  v76 = &v242 - v75;
  v286 = type metadata accessor for AccessoryMetadata(0);
  v287 = *(v286 - 8);
  v77 = *(v287 + 64);
  __chkstk_darwin(v286);
  v289 = &v242 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v80 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v82 = (&v242 - v81);
  v267 = a5;
  v83 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v288 = result;
    v275 = v44;
    v247 = a15;
    v244 = a14;
    v246 = a13;
    v245 = a12;
    v274 = a11;
    v243 = a10;
    v242 = a9;
    sub_1000D2A70(v276, v82, &unk_1016A99C0, &unk_1013BB530);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1007A91C8(v82, v289, type metadata accessor for AccessoryMetadata);
      v90 = v299;
      v91 = [v299 trackingIdentifier];
      v92 = [v91 isPosh];

      if (v92)
      {
        v93 = [v90 trackingIdentifier];
        v94 = [v93 networkID];

        if (v94 == 1)
        {
          LODWORD(v95) = 1;
        }

        else
        {
          LODWORD(v95) = 2 * (v94 == 2);
        }
      }

      else
      {
        LODWORD(v95) = 3;
      }

      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_1000076D4(v109, qword_10177B2D0);
      v110 = v298;
      v111 = v301;
      v294 = *(v298 + 16);
      v295 = v298 + 16;
      v294(v76, v297, v301);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v276 = v83;
        v115 = v95;
        v95 = v114;
        v116 = swift_slowAlloc();
        v304 = v116;
        *v95 = 136446466;
        sub_100799304(&qword_101696930, &type metadata accessor for UUID);
        v117 = dispatch thunk of CustomStringConvertible.description.getter();
        v118 = v111;
        v120 = v119;
        (*(v110 + 8))(v76, v118);
        v121 = sub_1000136BC(v117, v120, &v304);

        *(v95 + 4) = v121;
        *(v95 + 12) = 256;
        if (v115 == 3)
        {
          v122 = 0;
        }

        else
        {
          v122 = v115;
        }

        *(v95 + 14) = v122;
        _os_log_impl(&_mh_execute_header, v112, v113, "Successfully fetched metadata for %{public}s. NetworkID: %hhu", v95, 0xFu);
        sub_100007BAC(v116);

        LOBYTE(v95) = v115;
        v83 = v276;
      }

      else
      {

        (*(v110 + 8))(v76, v111);
      }

      v123 = v289;
      v124 = v273;
      sub_1007A7DFC(v289, v273, type metadata accessor for AccessoryMetadata);
      v125 = v287 + 56;
      (*(v287 + 56))(v124, 0, 1, v286);
      swift_beginAccess();
      sub_10002311C(v124, v83, &qword_1016A62A0, &unk_101396E10);
      v126 = *(v288 + 40);
      v127 = v288;
      sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
      v128 = *(v125 + 16);
      v129 = (*(v125 + 24) + 32) & ~*(v125 + 24);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_101385D80;
      sub_1007A7DFC(v123, v130 + v129, type metadata accessor for AccessoryMetadata);

      v131 = sub_1003666F4(v130, v95);

      v302 = *(v127 + 24);
      v132 = v302;
      v303 = v131;
      v133 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v134 = v248;
      (*(*(v133 - 8) + 56))(v248, 1, 1, v133);
      v293 = v132;
      sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90);
      sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
      v135 = v249;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v134, &unk_1016B0FE0, &unk_101391980);

      v136 = *(v288 + 24);
      sub_1000041A4(&qword_1016C7CF0, &qword_1016C7CC0, &qword_1013BB5D8);
      v137 = v251;
      v138 = v252;
      Publisher.timeout(_:queue:customError:)();
      (*(v250 + 8))(v135, v138);
      sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
      sub_1000041A4(&qword_1016A9660, &qword_1016A9648, &qword_1013BB5E0);
      v139 = v255;
      v140 = v254;
      Publisher.map<A>(_:)();
      (*(v253 + 8))(v137, v140);
      sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
      sub_1000041A4(&qword_1016A9668, &qword_1016A9650, &qword_1013BB5E8);
      sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510);
      v141 = v257;
      Publisher.catch<A>(_:)();
      (*(v256 + 8))(v139, v141);
      v293 = swift_allocObject();
      swift_weakInit();
      v294(v277, v297, v301);
      v142 = v275;
      v143 = *(v275 + 16);
      v144 = v300;
      v143(v279, v265, v300);
      sub_1000D2A70(v296, v281, &unk_101698C30, &unk_101392630);
      v143(v280, v242, v144);
      v145 = v298;
      v146 = (*(v298 + 80) + 24) & ~*(v298 + 80);
      v147 = (v68 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
      v148 = *(v142 + 80);
      v149 = (v148 + 8 + v147) & ~v148;
      v150 = (v260 + *(v262 + 80) + v149) & ~*(v262 + 80);
      v151 = (v263 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
      v152 = (v148 + 8 + v151) & ~v148;
      v296 = (v152 + v260 + 23) & 0xFFFFFFFFFFFFFFF8;
      v297 = (v152 + v260 + 7) & 0xFFFFFFFFFFFFFFF8;
      v295 = (v296 + 15) & 0xFFFFFFFFFFFFFFF8;
      v294 = ((v295 + 23) & 0xFFFFFFFFFFFFFFF8);
      v153 = swift_allocObject();
      *(v153 + 16) = v293;
      (*(v145 + 32))(v153 + v146, v277, v301);
      *(v153 + v147) = v266;
      v154 = *(v142 + 32);
      v154(v153 + v149, v279, v144);
      sub_1000D2AD8(v281, v153 + v150, &unk_101698C30, &unk_101392630);
      v155 = v299;
      *(v153 + v151) = v299;
      v154(v153 + v152, v280, v144);
      v156 = v153 + v297;
      *v156 = v243;
      *(v156 + 8) = v274;
      v157 = v295;
      *(v153 + v296) = v267;
      v158 = (v153 + v157);
      v159 = v245;
      v160 = v246;
      *v158 = v245;
      v158[1] = v160;
      v161 = v294 + v153;
      v162 = v247;
      *v161 = v244;
      *(v161 + 1) = v162;

      v163 = v155;

      sub_100309400(v159, v160);
      sub_1000041A4(&qword_1016A9670, &qword_1016A9658, &qword_1013BB5F0);

      v164 = v259;
      v165 = v278;
      Publisher<>.sink(receiveValue:)();

      (*(v258 + 1))(v165, v164);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v166 = type metadata accessor for AccessoryMetadata;
      v167 = v289;
      return sub_1007A810C(v167, v166);
    }

    v304 = *v82;
    v85 = v304;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v86 = swift_dynamicCast();
    v289 = v85;
    v276 = v83;
    if (v86)
    {
      v87 = v301;
      v88 = v298;
      if (v303 == 4)
      {
        LODWORD(v281) = 0;
        v89 = v296;
LABEL_27:
        if (v274 == 3)
        {
          if (qword_101694940 != -1)
          {
            swift_once();
          }

          v168 = *(qword_10177B348 + 40);
          OS_dispatch_queue.sync<A>(execute:)();
          LOBYTE(v168) = sub_10107463C(v304);

          v83 = v276;
          if (v168)
          {
            if (qword_101694910 != -1)
            {
              swift_once();
            }

            v169 = type metadata accessor for Logger();
            sub_1000076D4(v169, qword_10177B2D0);
            v170 = Logger.logObject.getter();
            v171 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v170, v171))
            {
              v172 = swift_slowAlloc();
              *v172 = 0;
              _os_log_impl(&_mh_execute_header, v170, v171, "HELE is AirPods. Stubbing metadata with default values", v172, 2u);
              v87 = v301;
            }

            v173 = sub_100314604(76, 8211);
            if (v174 >> 60 == 15)
            {
              v175 = Logger.logObject.getter();
              v176 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v175, v176))
              {
                v177 = swift_slowAlloc();
                *v177 = 0;
                _os_log_impl(&_mh_execute_header, v175, v176, "Unable to init fallbackAirPodsProductData", v177, 2u);
              }

              v83 = v276;
            }

            else
            {
              v178 = v173;
              v179 = v174;
              v180 = v273;
              (*(v88 + 16))(v273, v297, v87);
              v181 = v89;
              v182 = v286;
              v183 = *(v286 + 36);
              v184 = type metadata accessor for AirTagVersionNumber();
              (*(*(v184 - 8) + 56))(v180 + v183, 1, 1, v184);
              v185 = v180 + v182[11];
              *v185 = 0;
              *(v185 + 8) = 0;
              *(v185 + 16) = 1;
              v186 = (v180 + v182[16]);
              *v186 = 0;
              v186[1] = 0xE000000000000000;
              v187 = (v180 + v182[5]);
              *v187 = v178;
              v187[1] = v179;
              *(v180 + v182[8]) = 16842753;
              v188 = (v180 + v182[7]);
              *v188 = 0;
              v188[1] = 0;
              v189 = (v180 + v182[6]);
              *v189 = 0;
              v189[1] = 0;
              v190 = v180 + v182[10];
              *v190 = 0;
              *(v190 + 4) = 1;
              v191 = v180 + v182[12];
              *v191 = 0;
              *(v191 + 8) = 1;
              v192 = v180 + v182[13];
              *v192 = 1025;
              *(v192 + 4) = 0;
              *(v180 + v182[14]) = 4;
              *(v180 + v182[15]) = 5;
              v193 = v180 + v182[17];
              *v193 = 0;
              *(v193 + 4) = 1;
              v87 = v301;
              v194 = v182;
              v89 = v181;
              (*(v287 + 56))(v180, 0, 1, v194);
              v83 = v276;
              swift_beginAccess();
              sub_10002311C(v180, v83, &qword_1016A62A0, &unk_101396E10);
            }
          }
        }

        v195 = *(v88 + 16);
        v195(v290, v297, v87);
        v196 = v261;
        sub_1000D2A70(v89, v261, &unk_101698C30, &unk_101392630);
        v197 = type metadata accessor for SharedBeaconRecord(0);
        v198 = *(*(v197 - 8) + 48);
        v199 = v198(v196, 1, v197);
        v280 = (v88 + 16);
        v279 = v195;
        if (v199 == 1)
        {
          sub_10000B3A8(v196, &unk_101698C30, &unk_101392630);
          v200 = 1;
          v201 = v292;
        }

        else
        {
          v202 = v196 + *(v197 + 20);
          v203 = v196;
          v201 = v292;
          v195(v292, v202, v87);
          sub_1007A810C(v203, type metadata accessor for SharedBeaconRecord);
          v200 = 0;
        }

        v204 = *(v88 + 56);
        v204(v201, v200, 1, v87);
        v205 = [v299 type];
        if (v205)
        {
          v206 = v300;
          v207 = v264;
          if (v205 != 1)
          {
            v241 = v205;
            type metadata accessor for TrackingObservationType(0);
            v304 = v241;
            result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
            return result;
          }

          LODWORD(v278) = 1;
        }

        else
        {
          LODWORD(v278) = 0;
          v206 = v300;
          v207 = v264;
        }

        v208 = *(v275 + 16);
        v277 = (v275 + 16);
        v276 = v208;
        v208(v291, v242, v206);
        static Date.trustedNow.getter(v293);
        v209 = *(v283 + 56);
        v297 = v283 + 56;
        v209(v294, 1, 1, v295);
        sub_1000D2A70(v296, v207, &unk_101698C30, &unk_101392630);
        v210 = v198(v207, 1, v197);
        v265 = v204;
        if (v210 == 1)
        {
          sub_10000B3A8(v207, &unk_101698C30, &unk_101392630);
          v273 = 0;
          v267 = 0;
          v266 = 0;
        }

        else
        {
          v211 = (v207 + *(v197 + 28));
          v273 = *v211;
          v212 = *(v211 + 2);
          v267 = *(v211 + 1);
          v266 = v212;

          sub_1007A810C(v207, type metadata accessor for SharedBeaconRecord);
        }

        swift_beginAccess();
        sub_1000D2A70(v83, v282, &qword_1016A62A0, &unk_101396E10);
        v213 = type metadata accessor for AccessoryProductInfo();
        v214 = *(v213 - 8);
        v262 = *(v214 + 56);
        v263 = v214 + 56;
        (v262)(v284, 1, 1, v213);
        v215 = v299;
        v216 = [v299 action];
        if (v216 < 5)
        {
          v217 = v216 + 1;
        }

        else
        {
          v217 = 0;
        }

        LODWORD(v264) = v217;
        v218 = v295;
        v209(v285, 1, 1, v295);
        v219 = [v215 trackingIdentifier];
        LODWORD(v296) = [v219 isPosh];

        v220 = [v215 trackingIdentifier];
        LODWORD(v299) = [v220 networkID];

        v221 = v268;
        v222 = *(v268 + 20);
        v223 = v301;
        (v265)(v35 + v222, 1, 1, v301);
        v257 = v221[6];
        v224 = v221[11];
        v209((v35 + v224), 1, 1, v218);
        v225 = (v35 + v221[12]);
        v260 = v221[14];
        (*(v287 + 56))(v35 + v260, 1, 1, v286);
        v261 = v221[15];
        (v262)(v35 + v261, 1, 1, v213);
        v226 = v221[17];
        v262 = v221[16];
        v263 = v226;
        *(v35 + v226) = sub_100908B38(_swiftEmptyArrayStorage);
        v227 = v221[18];
        v259 = v227;
        static Date.trustedNow.getter(v35 + v227);
        v258 = v209;
        v209((v35 + v227), 0, 1, v218);
        v265 = v221[19];
        v209(&v265[v35], 1, 1, v218);
        v228 = v221[22];
        v287 = v221[21];
        v286 = v35 + v228;
        (v279)(v35, v290, v223);
        sub_1001DA61C(v292, v35 + v222, &qword_1016980D0, &unk_10138F3B0);
        *(v35 + v257) = v278;
        v276(v35 + v221[7], v291, v300);
        *(v35 + v221[8]) = v243;
        *(v35 + v221[9]) = 0;
        v229 = v283;
        (*(v283 + 16))(v35 + v221[10], v293, v218);

        sub_1001DA61C(v294, v35 + v224, &unk_101696900, &unk_10138B1E0);
        v230 = v267;
        *v225 = v273;
        *(v225 + 1) = v230;
        *(v225 + 2) = v266;
        *(v35 + v221[13]) = v274;
        v231 = v282;
        sub_1001DA61C(v282, v35 + v260, &qword_1016A62A0, &unk_101396E10);
        v232 = v284;
        sub_1001DA61C(v284, v35 + v261, &qword_101697268, &qword_101394FE0);
        LOBYTE(v223) = v264;
        *(v35 + v262) = v264;
        v233 = v269;
        static Date.trustedNow.getter(v269);
        v258(v233, 0, 1, v218);
        v234 = v259;
        sub_10002311C(v233, v35 + v259, &unk_101696900, &unk_10138B1E0);
        sub_1000D2A70(v35 + v234, v233, &unk_101696900, &unk_10138B1E0);
        sub_1001DE1F0(v233, v223);
        sub_10000B3A8(v232, &qword_101697268, &qword_101394FE0);
        sub_10000B3A8(v231, &qword_1016A62A0, &unk_101396E10);
        sub_10000B3A8(v294, &unk_101696900, &unk_10138B1E0);
        (*(v229 + 8))(v293, v295);
        (*(v275 + 8))(v291, v300);
        sub_10000B3A8(v292, &qword_1016980D0, &unk_10138F3B0);
        (*(v298 + 8))(v290, v301);
        sub_10002311C(v285, &v265[v35], &unk_101696900, &unk_10138B1E0);
        v235 = (v35 + v221[20]);
        v236 = v245;
        v237 = v246;
        *v235 = v245;
        *(v235 + 1) = v237;
        *(v35 + v287) = v296;
        *v286 = v299;
        sub_100309400(v236, v237);
        sub_100793B94(v35, v244, v247);
        type metadata accessor for Transaction();
        v238 = v272;
        sub_1007A7DFC(v35, v272, type metadata accessor for WildModeAssociationRecord);
        v239 = (*(v270 + 80) + 17) & ~*(v270 + 80);
        v240 = swift_allocObject();
        *(v240 + 16) = v281;
        sub_1007A91C8(v238, v240 + v239, type metadata accessor for WildModeAssociationRecord);
        static Transaction.asyncTask(name:block:)();

        v166 = type metadata accessor for WildModeAssociationRecord;
        v167 = v35;
        return sub_1007A810C(v167, v166);
      }
    }

    else
    {
      v87 = v301;
      v88 = v298;
    }

    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_1000076D4(v96, qword_10177B2D0);
    (*(v88 + 16))(v72, v297, v87);
    swift_errorRetain();
    v97 = Logger.logObject.getter();
    v98 = v88;
    v99 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v99))
    {
      v100 = swift_slowAlloc();
      v304 = swift_slowAlloc();
      *v100 = 136446466;
      sub_100799304(&qword_101696930, &type metadata accessor for UUID);
      v101 = dispatch thunk of CustomStringConvertible.description.getter();
      v103 = v102;
      (*(v98 + 8))(v72, v301);
      v104 = sub_1000136BC(v101, v103, &v304);
      v105 = v289;

      *(v100 + 4) = v104;
      *(v100 + 12) = 2082;
      v303 = v105;
      swift_errorRetain();
      v106 = String.init<A>(describing:)();
      v108 = sub_1000136BC(v106, v107, &v304);

      *(v100 + 14) = v108;
      _os_log_impl(&_mh_execute_header, v97, v99, "Failed to fetch metadata for %{public}s. Error %{public}s", v100, 0x16u);
      swift_arrayDestroy();

      v87 = v301;
    }

    else
    {

      (*(v98 + 8))(v72, v87);
    }

    LODWORD(v281) = 1;
    v88 = v98;
    v89 = v296;
    v83 = v276;
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_100789E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void, void), uint64_t a6, void *a7, char *a8, uint64_t a9, unsigned __int8 a10, unint64_t a11, uint64_t a12, void (*a13)(void, void, void, void), uint64_t a14, uint64_t a15)
{
  v192 = a8;
  v194 = a7;
  v193 = a6;
  v185 = a5;
  v202 = a3;
  v201 = a1;
  v208 = a11;
  v15 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v206 = &v169 - v17;
  v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v199 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v204 = &v169 - v23;
  __chkstk_darwin(v22);
  v213 = &v169 - v24;
  v214 = type metadata accessor for Date();
  v205 = *(v214 - 8);
  v25 = *(v205 + 64);
  __chkstk_darwin(v214);
  v212 = &v169 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for MACAddress();
  v207 = *(v215 - 8);
  v27 = *(v207 + 64);
  __chkstk_darwin(v215);
  v211 = &v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v191 = &v169 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v189 = &v169 - v33;
  v34 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v210 = &v169 - v36;
  v195 = type metadata accessor for WildModeAssociationRecord(0);
  v196 = *(v195 - 8);
  v37 = *(v196 + 64);
  v38 = __chkstk_darwin(v195);
  v198 = &v169 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = v39;
  __chkstk_darwin(v38);
  v188 = &v169 - v40;
  v41 = type metadata accessor for BluetoothCommunicationCoordinator.Error();
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v45 = &v169 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v169 - v46;
  v48 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v203 = &v169 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v53 = &v169 - v52;
  v216 = type metadata accessor for UUID();
  v209 = *(v216 - 8);
  v54 = *(v209 + 64);
  v55 = __chkstk_darwin(v216);
  v57 = &v169 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v55);
  v60 = &v169 - v59;
  __chkstk_darwin(v58);
  v62 = &v169 - v61;
  v63 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v66 = (&v169 - v65);
  v67 = swift_projectBox();
  v190 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v187 = result;
    sub_1000D2A70(v201, v66, &qword_10169E748, &unk_10139DAB0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v201 = v57;
    v186 = v67;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1007A91C8(v66, v47, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v70 = v216;
      v71 = v209;
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_1000076D4(v72, qword_10177B2D0);
      v73 = *(v71 + 16);
      v208 = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v73(v60, v202, v70);
      sub_1007A7DFC(v47, v45, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      v76 = os_log_type_enabled(v74, v75);
      v200 = v73;
      if (v76)
      {
        v77 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        *v77 = 136446466;
        sub_100799304(&qword_101696930, &type metadata accessor for UUID);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v79;
        (*(v209 + 8))(v60, v216);
        v81 = sub_1000136BC(v78, v80, &v217);
        v70 = v216;

        *(v77 + 4) = v81;
        *(v77 + 12) = 2082;
        v82 = sub_10118F894();
        v84 = v83;
        sub_1007A810C(v45, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v85 = sub_1000136BC(v82, v84, &v217);

        *(v77 + 14) = v85;
        _os_log_impl(&_mh_execute_header, v74, v75, "Failed to fetch product info for %{public}s. Error %{public}s", v77, 0x16u);
        swift_arrayDestroy();
        v71 = v209;
      }

      else
      {

        sub_1007A810C(v45, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v86 = (*(v71 + 8))(v60, v70);
      }

      v99 = *(v187 + 40);
      v100 = *(*(*(v99 + 24) + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
      __chkstk_darwin(v86);
      v101 = v185;
      *(&v169 - 2) = v185;
      *(&v169 - 1) = v102;
      sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
      Lock.callAsFunction<A>(_:)();
      v103 = v217;
      if (v217)
      {
        v104 = *(*(v99 + 24) + 24);
        v217 = sub_10131FAE0(v217);
        sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
        sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
        Publisher.oneshot(_:)();

        sub_1007A810C(v47, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      }

      else
      {
        type metadata accessor for AccessoryMetadataManager.Error(0);
        sub_100799304(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
        v108 = swift_allocError();
        (*(v207 + 16))(v109, v101, v215);
        swift_storeEnumTagMultiPayload();
        v217 = v108;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        swift_willThrowTypedImpl();
        static os_log_type_t.error.getter();
        if (qword_1016950B0 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_101385D80;
        v111 = _convertErrorToNSError(_:)();
        *(v110 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
        *(v110 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr);
        *(v110 + 32) = v111;
        os_log(_:dso:log:_:_:)();

        sub_1007A810C(v47, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v71 = v209;
      }

      v112 = v193;
      v105 = v208;
    }

    else
    {
      v87 = *v66;
      v70 = v216;
      v88 = v209;
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      sub_1000076D4(v89, qword_10177B2D0);
      v90 = *(v88 + 16);
      v208 = v88 + 16;
      v200 = v90;
      v90(v62, v202, v70);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v217 = v94;
        *v93 = 136446210;
        sub_100799304(&qword_101696930, &type metadata accessor for UUID);
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v96;
        (*(v88 + 8))(v62, v216);
        v98 = sub_1000136BC(v95, v97, &v217);

        *(v93 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v91, v92, "Successfully fetched product info for %{public}s", v93, 0xCu);
        sub_100007BAC(v94);
        v70 = v216;
      }

      else
      {

        (*(v88 + 8))(v62, v70);
      }

      v71 = v88;
      v105 = v208 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v57 = v201;
      if (*(v87 + 16))
      {
        v106 = type metadata accessor for AccessoryProductInfo();
        v107 = *(v106 - 8);
        sub_1007A7DFC(v87 + ((*(v107 + 80) + 32) & ~*(v107 + 80)), v53, type metadata accessor for AccessoryProductInfo);

        (*(v107 + 56))(v53, 0, 1, v106);
      }

      else
      {

        v113 = type metadata accessor for AccessoryProductInfo();
        (*(*(v113 - 8) + 56))(v53, 1, 1, v113);
      }

      v112 = v193;
      v114 = v186;
      swift_beginAccess();
      sub_10002311C(v53, v114, &qword_101697268, &qword_101394FE0);
    }

    v115 = v200;
    v200(v57, v202, v70);
    v116 = v189;
    sub_1000D2A70(v112, v189, &unk_101698C30, &unk_101392630);
    v117 = type metadata accessor for SharedBeaconRecord(0);
    v118 = *(*(v117 - 8) + 48);
    if (v118(v116, 1, v117) == 1)
    {
      sub_10000B3A8(v116, &unk_101698C30, &unk_101392630);
      v119 = 1;
      v120 = v210;
    }

    else
    {
      v121 = v70;
      v122 = v210;
      v115(v210, v116 + *(v117 + 20), v121);
      sub_1007A810C(v116, type metadata accessor for SharedBeaconRecord);
      v119 = 0;
      v120 = v122;
      v70 = v121;
    }

    v123 = *(v71 + 56);
    v123(v120, v119, 1, v70);
    v124 = v194;
    v125 = [v194 type];
    v208 = v105;
    if (v125)
    {
      if (v125 != 1)
      {
        v168 = v125;
        type metadata accessor for TrackingObservationType(0);
        v217 = v168;
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return result;
      }

      v182 = 1;
    }

    else
    {
      v182 = 0;
    }

    v193 = a15;
    v189 = a14;
    v185 = a13;
    v184 = a12;
    LODWORD(v202) = a10;
    v183 = a9;
    v126 = *(v207 + 16);
    v127 = v192;
    v192 = (v207 + 16);
    v181 = v126;
    v126(v211, v127, v215);
    static Date.trustedNow.getter(v212);
    v128 = *(v205 + 56);
    v128(v213, 1, 1, v214);
    v129 = v112;
    v130 = v191;
    sub_1000D2A70(v129, v191, &unk_101698C30, &unk_101392630);
    if (v118(v130, 1, v117) == 1)
    {
      sub_10000B3A8(v130, &unk_101698C30, &unk_101392630);
      v180 = 0;
      v179 = 0;
      v178 = 0;
    }

    else
    {
      v131 = (v130 + *(v117 + 28));
      v180 = *v131;
      v132 = *(v131 + 2);
      v179 = *(v131 + 1);
      v178 = v132;

      sub_1007A810C(v130, type metadata accessor for SharedBeaconRecord);
    }

    v133 = v190;
    swift_beginAccess();
    sub_1000D2A70(v133, v206, &qword_1016A62A0, &unk_101396E10);
    v134 = v186;
    swift_beginAccess();
    sub_1000D2A70(v134, v203, &qword_101697268, &qword_101394FE0);
    v135 = [v124 action];
    if (v135 < 5)
    {
      v136 = v135 + 1;
    }

    else
    {
      v136 = 0;
    }

    LODWORD(v190) = v136;
    v137 = v214;
    v128(v204, 1, 1, v214);
    v138 = [v124 trackingIdentifier];
    LODWORD(v191) = [v138 isPosh];

    v139 = [v124 trackingIdentifier];
    LODWORD(v194) = [v139 networkID];

    v140 = v195;
    v141 = *(v195 + 20);
    v142 = v128;
    v143 = v188;
    v144 = v216;
    v123(&v188[v141], 1, 1, v216);
    v145 = v140[6];
    v174 = v140[11];
    v142(v143 + v174, 1, 1, v137);
    v146 = v142;
    v147 = (v143 + v140[12]);
    v148 = v140[14];
    v173 = v148;
    v149 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v149 - 8) + 56))(v143 + v148, 1, 1, v149);
    v150 = v140[15];
    v171 = v150;
    v151 = type metadata accessor for AccessoryProductInfo();
    (*(*(v151 - 8) + 56))(v143 + v150, 1, 1, v151);
    v152 = v140[17];
    v172 = v140[16];
    v175 = v152;
    *(v143 + v152) = sub_100908B38(_swiftEmptyArrayStorage);
    v153 = v140[18];
    v170 = v153;
    static Date.trustedNow.getter(v143 + v153);
    v169 = v146;
    v146(v143 + v153, 0, 1, v137);
    v176 = v140[19];
    v154 = v137;
    v146(v143 + v176, 1, 1, v137);
    v155 = v140[22];
    v186 = v140[21];
    v177 = (v143 + v155);
    v200(v143, v201, v144);
    sub_1001DA61C(v210, v143 + v141, &qword_1016980D0, &unk_10138F3B0);
    *(v143 + v145) = v182;
    v181(v143 + v140[7], v211, v215);
    *(v143 + v140[8]) = v183;
    *(v143 + v140[9]) = 0;
    v156 = v205;
    (*(v205 + 16))(v143 + v140[10], v212, v137);

    sub_1001DA61C(v213, v143 + v174, &unk_101696900, &unk_10138B1E0);
    v157 = v179;
    *v147 = v180;
    v147[1] = v157;
    v147[2] = v178;
    *(v143 + v140[13]) = v202;
    v158 = v206;
    sub_1001DA61C(v206, v143 + v173, &qword_1016A62A0, &unk_101396E10);
    v159 = v203;
    sub_1001DA61C(v203, v143 + v171, &qword_101697268, &qword_101394FE0);
    LOBYTE(v146) = v190;
    *(v143 + v172) = v190;
    v160 = v199;
    static Date.trustedNow.getter(v199);
    v169(v160, 0, 1, v154);
    v161 = v170;
    sub_10002311C(v160, v143 + v170, &unk_101696900, &unk_10138B1E0);
    sub_1000D2A70(v143 + v161, v160, &unk_101696900, &unk_10138B1E0);
    sub_1001DE1F0(v160, v146);
    sub_10000B3A8(v159, &qword_101697268, &qword_101394FE0);
    sub_10000B3A8(v158, &qword_1016A62A0, &unk_101396E10);
    sub_10000B3A8(v213, &unk_101696900, &unk_10138B1E0);
    (*(v156 + 8))(v212, v214);
    (*(v207 + 8))(v211, v215);
    sub_10000B3A8(v210, &qword_1016980D0, &unk_10138F3B0);
    (*(v209 + 8))(v201, v216);
    sub_10002311C(v204, v143 + v176, &unk_101696900, &unk_10138B1E0);
    v162 = (v143 + v140[20]);
    v163 = v184;
    v164 = v185;
    *v162 = v184;
    v162[1] = v164;
    *(v143 + v186) = v191;
    *v177 = v194;
    sub_100309400(v163, v164);
    sub_100793B94(v143, v189, v193);
    type metadata accessor for Transaction();
    v165 = v198;
    sub_1007A7DFC(v143, v198, type metadata accessor for WildModeAssociationRecord);
    v166 = (*(v196 + 80) + 17) & ~*(v196 + 80);
    v167 = swift_allocObject();
    *(v167 + 16) = v202;
    sub_1007A91C8(v165, v167 + v166, type metadata accessor for WildModeAssociationRecord);
    static Transaction.asyncTask(name:block:)();

    return sub_1007A810C(v143, type metadata accessor for WildModeAssociationRecord);
  }

  return result;
}

uint64_t sub_10078B7F4(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 56) = a1;
  return _swift_task_switch(sub_10078B818, 0, 0);
}

uint64_t sub_10078B818()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  v3 = type metadata accessor for AnalyticsEvent(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  *(v0 + 24) = v6;
  swift_defaultActor_initialize();
  *(v6 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(*(v8 - 8) + 56);
  v9(&v6[v7], 1, 1, v8);
  v9(&v6[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v8);
  *(v6 + 15) = 0xD00000000000002FLL;
  *(v6 + 16) = 0x800000010135FC00;
  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;

  return _swift_task_switch(sub_10078B984, v6, 0);
}

uint64_t sub_10078B984()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10115BE7C(sub_1007A91BC);
  v3 = v0[4];

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10078BA74;
  v5 = v0[3];

  return sub_101163F78(v5);
}

uint64_t sub_10078BA74()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1006B09C0, 0, 0);
}

void *sub_10078BB8C(unsigned __int8 a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v55 - v5;
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v55 - v9;
  v56 = type metadata accessor for AccessoryProductInfo();
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v56);
  v55 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v55 - v16;
  v18 = type metadata accessor for AccessoryMetadata(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = _swiftEmptyDictionarySingleton;
  sub_100FFC418(0, 1, 0xD000000000000010, 0x800000010135FC30, isUniquelyReferenced_nonNull_native);
  v24 = v58;
  if (a1 < 4u)
  {
    v25 = String._bridgeToObjectiveC()();

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v24;
    sub_100FFC418(v25, 0, 0x7954656369766564, 0xEA00000000006570, v26);
    v24 = v58;
  }

  v27 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D2A70(v57 + v27[14], v17, &qword_1016A62A0, &unk_101396E10);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000B3A8(v17, &qword_1016A62A0, &unk_101396E10);
    v28 = v56;
  }

  else
  {
    sub_1007A91C8(v17, v22, type metadata accessor for AccessoryMetadata);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v24;
    sub_100FFC418(1, 1, 0x6863746546736961, 0xEF73736563637553, v29);
    v30 = v58;
    v31 = *&v22[*(v18 + 32)];
    sub_10098E010();
    v32 = String._bridgeToObjectiveC()();

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v30;
    sub_100FFC418(v32, 0, 0x6F69737265566D66, 0xEA0000000000736ELL, v33);
    v24 = v58;
    v34 = &v22[*(v18 + 40)];
    if ((v34[4] & 1) == 0)
    {
      v35 = *v34;
      sub_10098E010();
      v36 = String._bridgeToObjectiveC()();

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v58 = v24;
      sub_100FFC418(v36, 0, 0x69737265566E6D66, 0xEA00000000006E6FLL, v37);
      v24 = v58;
    }

    v28 = v56;
    sub_1007A810C(v22, type metadata accessor for AccessoryMetadata);
  }

  sub_1000D2A70(v57 + v27[15], v10, &qword_101697268, &qword_101394FE0);
  if ((*(v11 + 48))(v10, 1, v28) == 1)
  {
    sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
  }

  else
  {
    v38 = v55;
    sub_1007A91C8(v10, v55, type metadata accessor for AccessoryProductInfo);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v24;
    sub_100FFC418(1, 1, 0xD000000000000014, 0x800000010135FC70, v39);
    v40 = v58;
    v41 = (v38 + *(v28 + 36));
    v42 = *v41;
    v43 = v41[1];
    v44 = String._bridgeToObjectiveC()();
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v40;
    sub_100FFC418(v44, 0, 0x49746375646F7270, 0xE900000000000064, v45);
    v24 = v58;
    sub_1007A810C(v38, type metadata accessor for AccessoryProductInfo);
  }

  v46 = v57;
  sub_1000D2A70(v57 + v27[5], v6, &qword_1016980D0, &unk_10138F3B0);
  v47 = type metadata accessor for UUID();
  v48 = (*(*(v47 - 8) + 48))(v6, 1, v47) != 1;
  sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v58 = v24;
  sub_100FFC418(v48, 1, 0x796C696D61467369, 0xEE006E6F63616542, v49);
  v50 = v58;
  v51 = *(v46 + v27[6]);
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v58 = v50;
  sub_100FFC418(isa, 0, 0xD000000000000015, 0x800000010135FC50, v53);
  return v58;
}

uint64_t sub_10078C2B0(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 56) = a1;
  return _swift_task_switch(sub_10078C2D4, 0, 0);
}

uint64_t sub_10078C2D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  v3 = type metadata accessor for AnalyticsEvent(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  *(v0 + 24) = v6;
  swift_defaultActor_initialize();
  *(v6 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(*(v8 - 8) + 56);
  v9(&v6[v7], 1, 1, v8);
  v9(&v6[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v8);
  *(v6 + 15) = 0xD00000000000002FLL;
  *(v6 + 16) = 0x800000010135FC00;
  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;

  return _swift_task_switch(sub_10078C440, v6, 0);
}

uint64_t sub_10078C440()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10115BE7C(sub_1007A9230);
  v3 = v0[4];

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10078C530;
  v5 = v0[3];

  return sub_101163F78(v5);
}

uint64_t sub_10078C530()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1007A9FBC, 0, 0);
}

void *sub_10078C648(char a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v64 = &v60 - v6;
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for AccessoryProductInfo();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  __chkstk_darwin(v11);
  v60 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v60 - v16;
  v18 = type metadata accessor for AccessoryMetadata(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1)
  {
    v65 = _swiftEmptyDictionarySingleton;
    sub_100FFC418(1, 1, 0xD000000000000010, 0x800000010135FC30, isUniquelyReferenced_nonNull_native);
    v24 = v65;
    v25 = type metadata accessor for WildModeAssociationRecord(0);
    v26 = *(a2 + v25[13]);
    v27 = a2;
    if (v26 < 4)
    {
      v29 = String._bridgeToObjectiveC()();

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v24;
      sub_100FFC418(v29, 0, 0x7954656369766564, 0xEA00000000006570, v30);
      v24 = v65;
    }
  }

  else
  {
    v65 = _swiftEmptyDictionarySingleton;
    sub_100FFC418(0, 1, 0xD000000000000010, 0x800000010135FC30, isUniquelyReferenced_nonNull_native);
    v24 = v65;
    v25 = type metadata accessor for WildModeAssociationRecord(0);
    v28 = v25[13];
    v63 = a2;
    if (*(a2 + v28) < 4u)
    {
      v31 = String._bridgeToObjectiveC()();

      v32 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v24;
      sub_100FFC418(v31, 0, 0x7954656369766564, 0xEA00000000006570, v32);
      v24 = v65;
    }

    sub_1000D2A70(v63 + v25[14], v17, &qword_1016A62A0, &unk_101396E10);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_10000B3A8(v17, &qword_1016A62A0, &unk_101396E10);
      v33 = v62;
    }

    else
    {
      sub_1007A91C8(v17, v22, type metadata accessor for AccessoryMetadata);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v24;
      sub_100FFC418(1, 1, 0x6863746546736961, 0xEF73736563637553, v34);
      v35 = v65;
      v36 = *&v22[*(v18 + 32)];
      sub_10098E010();
      v37 = String._bridgeToObjectiveC()();

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v35;
      sub_100FFC418(v37, 0, 0x6F69737265566D66, 0xEA0000000000736ELL, v38);
      v24 = v65;
      v39 = &v22[*(v18 + 40)];
      if ((v39[4] & 1) == 0)
      {
        v40 = *v39;
        sub_10098E010();
        v41 = String._bridgeToObjectiveC()();

        v42 = swift_isUniquelyReferenced_nonNull_native();
        v65 = v24;
        sub_100FFC418(v41, 0, 0x69737265566E6D66, 0xEA00000000006E6FLL, v42);
        v24 = v65;
      }

      v33 = v62;
      sub_1007A810C(v22, type metadata accessor for AccessoryMetadata);
    }

    v27 = v63;
    sub_1000D2A70(v63 + v25[15], v10, &qword_101697268, &qword_101394FE0);
    if ((*(v61 + 48))(v10, 1, v33) == 1)
    {
      sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
    }

    else
    {
      v43 = v60;
      sub_1007A91C8(v10, v60, type metadata accessor for AccessoryProductInfo);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v24;
      sub_100FFC418(1, 1, 0xD000000000000014, 0x800000010135FC70, v44);
      v45 = v65;
      v46 = (v43 + *(v33 + 36));
      v47 = *v46;
      v48 = v46[1];
      v49 = String._bridgeToObjectiveC()();
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v45;
      sub_100FFC418(v49, 0, 0x49746375646F7270, 0xE900000000000064, v50);
      v24 = v65;
      sub_1007A810C(v43, type metadata accessor for AccessoryProductInfo);
    }
  }

  type metadata accessor for WildModeAssociationRecord(0);
  v51 = v64;
  sub_1000D2A70(v27 + v25[5], v64, &qword_1016980D0, &unk_10138F3B0);
  v52 = type metadata accessor for UUID();
  v53 = (*(*(v52 - 8) + 48))(v51, 1, v52) != 1;
  sub_10000B3A8(v51, &qword_1016980D0, &unk_10138F3B0);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v24;
  sub_100FFC418(v53, 1, 0x796C696D61467369, 0xEE006E6F63616542, v54);
  v55 = v65;
  v56 = *(v27 + v25[6]);
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v55;
  sub_100FFC418(isa, 0, 0xD000000000000015, 0x800000010135FC50, v58);
  return v65;
}

uint64_t sub_10078CE7C(uint64_t a1, int a2, void (*a3)(char *, uint64_t, uint64_t), char a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v74 = a5;
  v72 = a3;
  v76 = a1;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v71 = &v68 - v11;
  v68 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v12 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v69 = (&v68 - v13);
  v14 = type metadata accessor for MACAddress();
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  v16 = __chkstk_darwin(v14);
  v70 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v68 - v18;
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C218;
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 isInternalBuild];

  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
    v26 = [v22 BOOLForKey:v25];

    if (v26)
    {
      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_1016A9318);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v77 = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v77);
        _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s ForceReadingHawkeyeAIS is enabled!", v30, 0xCu);
        sub_100007BAC(v31);
      }

      v32 = v76;
      v33 = 2;
      goto LABEL_23;
    }
  }

  if (a4)
  {
    v73 = a6;
    v34 = v75;
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177B2D0);
    v36 = *(v34 + 16);
    v36(v19, v76, v14);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v72 = v36;
      v40 = v39;
      v77 = swift_slowAlloc();
      *v40 = 136446466;
      *(v40 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v77);
      *(v40 + 12) = 2082;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v75 + 8))(v19, v14);
      v44 = sub_1000136BC(v41, v43, &v77);

      *(v40 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s for Posh accessory with %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      v34 = v75;

      v36 = v72;
    }

    else
    {

      (*(v34 + 8))(v19, v14);
    }

    v55 = type metadata accessor for TaskPriority();
    v56 = v71;
    (*(*(v55 - 8) + 56))(v71, 1, 1, v55);
    v57 = v70;
    v36(v70, v76, v14);
    v58 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    (*(v34 + 32))(v59 + v58, v57, v14);
    v60 = (v59 + ((v15 + v58 + 7) & 0xFFFFFFFFFFFFFFF8));
    v61 = v73;
    *v60 = v74;
    v60[1] = v61;

    sub_10025EDD4(0, 0, v56, &unk_1013BB5C0, v59);
  }

  else
  {
    v45 = v75;
    if (a2 != 4)
    {
      v32 = v76;
      v33 = a2;
LABEL_23:
      v63 = v72;
      v64 = v74;

      return sub_10078DB94(v32, v33, v63, v64, a6);
    }

    if (qword_101694918 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_1016A9318);
    (*(v45 + 16))(v21, v76, v14);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = v45;
      v77 = swift_slowAlloc();
      *v49 = 136446466;
      *(v49 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v77);
      *(v49 + 12) = 2082;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v50 + 8))(v21, v14);
      v54 = sub_1000136BC(v51, v53, &v77);

      *(v49 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s for %{public}s with no device type!", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v45 + 8))(v21, v14);
    }

    sub_1007A7D8C();
    v65 = swift_allocError();
    *v66 = 3;
    v67 = v69;
    *v69 = v65;
    swift_storeEnumTagMultiPayload();
    v74(v67);
    return sub_10000B3A8(v67, &unk_1016A99C0, &unk_1013BB530);
  }
}

uint64_t sub_10078D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v6[4] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v10 = *(*(type metadata accessor for AccessoryMetadata(0) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v6[6] = v11;
  type metadata accessor for AccessoryMetadataManager();
  v12 = swift_task_alloc();
  v6[7] = v12;
  *v12 = v6;
  v12[1] = sub_10078D8CC;

  return sub_10037208C(v11, a4);
}

uint64_t sub_10078D8CC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10078DAD4;
  }

  else
  {
    v3 = sub_10078D9E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10078D9E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_1007A7DFC(v1, v2, type metadata accessor for AccessoryMetadata);
  swift_storeEnumTagMultiPayload();
  v5(v2);
  sub_10000B3A8(v2, &unk_1016A99C0, &unk_1013BB530);
  sub_1007A810C(v1, type metadata accessor for AccessoryMetadata);
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10078DAD4()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v4(v2);

  sub_10000B3A8(v2, &unk_1016A99C0, &unk_1013BB530);
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10078DB94(uint64_t a1, int a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v154 = a4;
  v155 = a5;
  v151 = a3;
  v152 = a1;
  v138 = sub_1000BC4D4(&qword_1016A95A0, &qword_1013BB558);
  v137 = *(v138 - 8);
  v6 = *(v137 + 64);
  __chkstk_darwin(v138);
  v134 = &v121[-v7];
  v143 = sub_1000BC4D4(&qword_1016A95A8, &qword_1013BB560);
  v141 = *(v143 - 8);
  v8 = *(v141 + 64);
  __chkstk_darwin(v143);
  v139 = &v121[-v9];
  v10 = sub_1000BC4D4(&qword_1016A95B0, &qword_1013BB568);
  v146 = *(v10 - 8);
  v147 = v10;
  v11 = *(v146 + 64);
  __chkstk_darwin(v10);
  v145 = &v121[-v12];
  v132 = type metadata accessor for MACAddress();
  v131 = *(v132 - 8);
  v13 = *(v131 + 64);
  __chkstk_darwin(v132);
  v129 = v14;
  v130 = &v121[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v136 = sub_1000BC4D4(&qword_1016A95B8, &qword_1013BB570);
  v135 = *(v136 - 8);
  v15 = *(v135 + 64);
  __chkstk_darwin(v136);
  v133 = &v121[-v16];
  v144 = sub_1000BC4D4(&qword_1016A95C0, &qword_1013BB578);
  v142 = *(v144 - 8);
  v17 = *(v142 + 64);
  __chkstk_darwin(v144);
  v140 = &v121[-v18];
  v125 = sub_1000BC4D4(&qword_1016A9598, &qword_1013BB550);
  v124 = *(v125 - 8);
  v19 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = &v121[-v20];
  v149 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v21 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v150 = &v121[-v22];
  v23 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v121[-v25];
  v27 = type metadata accessor for AccessoryMetadata(0);
  v148 = *(v27 - 8);
  v28 = *(v148 + 64);
  __chkstk_darwin(v27);
  v128 = &v121[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v121[-v32];
  v34 = type metadata accessor for SharedBeaconRecord(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v126 = &v121[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __chkstk_darwin(v37);
  v41 = &v121[-v40];
  v42 = __chkstk_darwin(v39);
  v127 = &v121[-v43];
  __chkstk_darwin(v42);
  v45 = &v121[-v44];
  v46 = sub_100B133C0(&off_101609F10);
  v47 = sub_1011204C8(a2, v46);

  if (!v47)
  {
    v122 = a2;
    sub_1000D2A70(v151, v33, &unk_101698C30, &unk_101392630);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      sub_10000B3A8(v33, &unk_101698C30, &unk_101392630);
    }

    else
    {
      v48 = v34;
      v49 = v45;
      sub_1007A91C8(v33, v45, type metadata accessor for SharedBeaconRecord);
      v156[3] = v34;
      v156[4] = sub_100799304(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
      v50 = sub_1000280DC(v156);
      sub_1007A7DFC(v45, v50, type metadata accessor for SharedBeaconRecord);
      sub_100D5D0A4(v156, 0, 0xF000000000000000, v26);
      if ((*(v148 + 48))(v26, 1, v27) != 1)
      {
        v58 = v128;
        sub_1007A91C8(v26, v128, type metadata accessor for AccessoryMetadata);
        if (qword_101694910 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_1000076D4(v59, qword_10177B2D0);
        v60 = v127;
        sub_1007A7DFC(v45, v127, type metadata accessor for SharedBeaconRecord);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v156[0] = v64;
          *v63 = 141558275;
          *(v63 + 4) = 1752392040;
          *(v63 + 12) = 2081;
          v65 = *(v48 + 20);
          type metadata accessor for UUID();
          sub_100799304(&qword_101696930, &type metadata accessor for UUID);
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v67;
          sub_1007A810C(v60, type metadata accessor for SharedBeaconRecord);
          v69 = sub_1000136BC(v66, v68, v156);

          *(v63 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v61, v62, "Skipping AIS fetch for family beacon %{private,mask.hash}s", v63, 0x16u);
          sub_100007BAC(v64);
        }

        else
        {

          sub_1007A810C(v60, type metadata accessor for SharedBeaconRecord);
        }

        v120 = v150;
        sub_1007A7DFC(v58, v150, type metadata accessor for AccessoryMetadata);
        swift_storeEnumTagMultiPayload();
        v154(v120);
        sub_10000B3A8(v120, &unk_1016A99C0, &unk_1013BB530);
        sub_1007A810C(v58, type metadata accessor for AccessoryMetadata);
        return sub_1007A810C(v49, type metadata accessor for SharedBeaconRecord);
      }

      sub_10000B3A8(v26, &qword_1016A62A0, &unk_101396E10);
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_1000076D4(v51, qword_10177B2D0);
      sub_1007A7DFC(v45, v41, type metadata accessor for SharedBeaconRecord);
      v52 = v126;
      sub_1007A7DFC(v45, v126, type metadata accessor for SharedBeaconRecord);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 134218240;
        v56 = *&v41[*(v34 + 48)];
        sub_1007A810C(v41, type metadata accessor for SharedBeaconRecord);
        *(v55 + 4) = v56;
        *(v55 + 12) = 2048;
        v57 = *&v52[*(v34 + 44)];
        sub_1007A810C(v52, type metadata accessor for SharedBeaconRecord);
        *(v55 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "Invalid product data from shared beacon %ld-%ld", v55, 0x16u);
      }

      else
      {
        sub_1007A810C(v52, type metadata accessor for SharedBeaconRecord);
        sub_1007A810C(v41, type metadata accessor for SharedBeaconRecord);
      }

      sub_1007A810C(v49, type metadata accessor for SharedBeaconRecord);
    }

    LOBYTE(a2) = v122;
  }

  v70 = a2;
  if (a2 > 1u)
  {
    v79 = v153;
    if (v70 == 2)
    {
      v80 = *(*(v153 + 40) + 24);
      v81 = swift_allocObject();
      swift_weakInit();
      v82 = v131;
      v83 = v130;
      v84 = v132;
      (*(v131 + 16))(v130, v152, v132);
      v85 = (*(v82 + 80) + 16) & ~*(v82 + 80);
      v86 = (v129 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = swift_allocObject();
      (*(v82 + 32))(v87 + v85, v83, v84);
      *(v87 + v86) = v81;
      v88 = sub_1000BC4D4(&qword_10169E840, &unk_101406170);
      v89 = *(v88 + 48);
      v90 = *(v88 + 52);
      swift_allocObject();
      v156[0] = Future.init(_:)();
      sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170);
      v91 = Publisher.eraseToAnyPublisher()();

      v156[0] = v91;
      v92 = *(v79 + 24);
      sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
      sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500);
      v93 = v133;
      Publisher.timeout(_:queue:customError:)();

      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      sub_1000041A4(&qword_1016A95F0, &qword_1016A95B8, &qword_1013BB570);
      v94 = v140;
      v95 = v136;
      Publisher.mapError<A>(_:)();
      (*(v135 + 8))(v93, v95);
      v96 = swift_allocObject();
      v97 = v155;
      *(v96 + 16) = v154;
      *(v96 + 24) = v97;
      sub_1000041A4(&qword_1016A95F8, &qword_1016A95C0, &qword_1013BB578);

      v98 = v144;
      Publisher.oneshot(_:)();

      v99 = v142;
    }

    else
    {
      v107 = *(v153 + 40);
      v156[0] = sub_10035B054();
      type metadata accessor for BluetoothCommunicationCoordinator.Error();
      sub_1000BC4D4(&unk_1016C7D70, &qword_1013BB580);
      sub_1000041A4(&qword_1016A95C8, &unk_1016C7D70, &qword_1013BB580);
      sub_100799304(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v108 = v134;
      Publisher<>.setFailureType<A>(to:)();

      v109 = *(v79 + 24);
      sub_1000041A4(&qword_1016A95D8, &qword_1016A95A0, &qword_1013BB558);
      v110 = v139;
      v111 = v138;
      Publisher.timeout(_:queue:customError:)();
      (*(v137 + 8))(v108, v111);
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      sub_1000041A4(&qword_1016A95E0, &qword_1016A95A8, &qword_1013BB560);
      v94 = v145;
      v112 = v143;
      Publisher.mapError<A>(_:)();
      (*(v141 + 8))(v110, v112);
      v113 = swift_allocObject();
      v114 = v155;
      *(v113 + 16) = v154;
      *(v113 + 24) = v114;
      sub_1000041A4(&qword_1016A95E8, &qword_1016A95B0, &qword_1013BB568);

      v98 = v147;
      Publisher.oneshot(_:)();

      v99 = v146;
    }

    return (*(v99 + 8))(v94, v98);
  }

  else
  {
    if (a2)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v100 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      LOBYTE(v100) = sub_101074648(v156[0]);

      if (v100)
      {
        v101 = *(v153 + 40);
        v156[0] = sub_10035CFD8(v152);
        sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500);
        v102 = v123;
        Publisher.mapError<A>(_:)();

        v103 = swift_allocObject();
        v104 = v155;
        *(v103 + 16) = v154;
        *(v103 + 24) = v104;
        sub_1000041A4(&qword_1016A9600, &qword_1016A9598, &qword_1013BB550);

        v105 = v125;
        Publisher.oneshot(_:)();

        return (*(v124 + 8))(v102, v105);
      }

      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      sub_1000076D4(v115, qword_10177B2D0);
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&_mh_execute_header, v116, v117, "Non-owner ranging is disabled. Skipping AIS fetch for AirTag.", v118, 2u);
      }

      sub_1007A7D8C();
      v76 = swift_allocError();
      v78 = 4;
    }

    else
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_1000076D4(v71, qword_10177B2D0);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v156[0] = v75;
        *v74 = 136446210;
        *(v74 + 4) = sub_1000136BC(0x656C707061, 0xE500000000000000, v156);
        _os_log_impl(&_mh_execute_header, v72, v73, "readMetadata: %{public}s is not supported!", v74, 0xCu);
        sub_100007BAC(v75);
      }

      sub_1007A7D8C();
      v76 = swift_allocError();
      v78 = 3;
    }

    *v77 = v78;
    v119 = v150;
    *v150 = v76;
    swift_storeEnumTagMultiPayload();
    v154(v119);
    return sub_10000B3A8(v119, &unk_1016A99C0, &unk_1013BB530);
  }
}

uint64_t sub_10078F1F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for BluetoothCommunicationCoordinator.Error();
  sub_100799304(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  *a2 = swift_allocError();
  return sub_1007A7DFC(a1, v4, type metadata accessor for BluetoothCommunicationCoordinator.Error);
}

uint64_t sub_10078F298(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1000BC4D4(&qword_1016A9608, &qword_1013BB588);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v36 = &v36 - v6;
  v7 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for AccessoryMetadata(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v36 - v19);
  sub_1000D2A70(a1, &v36 - v19, &unk_1016A99C0, &unk_1013BB530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177B2D0);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v21;
      v39 = v26;
      *v25 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v27 = String.init<A>(describing:)();
      v29 = sub_1000136BC(v27, v28, &v39);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "readMetadataCombine failed due to %{public}s", v25, 0xCu);
      sub_100007BAC(v26);
    }

    v30 = v36;
    v39 = v21;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v31 = type metadata accessor for BluetoothCommunicationCoordinator.Error();
    v32 = swift_dynamicCast();
    v33 = *(*(v31 - 8) + 56);
    if (v32)
    {
      v33(v30, 0, 1, v31);
      v34 = v37;
      sub_1007A91C8(v30, v37, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    }

    else
    {
      v33(v30, 1, 1, v31);
      v34 = v37;
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    a2(v34);

    return sub_10000B3A8(v34, &qword_10169E890, &unk_1013BB590);
  }

  else
  {
    sub_1007A91C8(v20, v16, type metadata accessor for AccessoryMetadata);
    sub_1007A7DFC(v16, v12, type metadata accessor for AccessoryMetadata);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_10000B3A8(v12, &qword_10169E890, &unk_1013BB590);
    return sub_1007A810C(v16, type metadata accessor for AccessoryMetadata);
  }
}

void sub_10078F774(NSObject *a1, void (*a2)(void), void (*a3)(unint64_t, _BYTE *, uint64_t))
{
  v283 = a3;
  v284 = a2;
  v285 = a1;
  v4 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v264 = &v258 - v6;
  v265 = type metadata accessor for SharedBeaconRecord(0);
  v263 = *(v265 - 8);
  v7 = *(v263 + 64);
  v8 = __chkstk_darwin(v265);
  v261 = &v258 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v262 = &v258 - v10;
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v269 = &v258 - v13;
  v14 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v275 = &v258 - v16;
  v17 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v273 = *(v17 - 8);
  v274 = v17;
  v18 = *(v273 + 64);
  __chkstk_darwin(v17);
  v270 = &v258 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  *&v278 = &v258 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v276 = &v258 - v24;
  v25 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v267 = &v258 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v259 = &v258 - v30;
  __chkstk_darwin(v29);
  v271 = &v258 - v31;
  v279 = type metadata accessor for MACAddress();
  v277 = *(v279 - 8);
  v32 = *(v277 + 64);
  v33 = __chkstk_darwin(v279);
  v268 = &v258 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v260 = &v258 - v36;
  v37 = __chkstk_darwin(v35);
  v266 = &v258 - v38;
  __chkstk_darwin(v37);
  v272 = &v258 - v39;
  v40 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v258 - v42;
  v44 = type metadata accessor for Date();
  v287 = *(v44 - 8);
  v45 = *(v287 + 64);
  v46 = __chkstk_darwin(v44);
  v48 = &v258 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v282 = &v258 - v49;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v281 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10138BBE0;
  v288 = *v3;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v51 = String.init<A>(describing:)();
  *&v286 = v3;
  v53 = v52;
  *(v50 + 56) = &type metadata for String;
  v54 = sub_100008C00();
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v54;
  v280 = v54;
  *(v50 + 64) = v54;
  *(v50 + 72) = 0xD000000000000039;
  *(v50 + 80) = 0x800000010135F420;
  os_log(_:dso:log:_:_:)();

  v55 = v285;
  v56 = [v285 trackingIdentifier];
  sub_100780A4C(v56, v43);

  v57 = v287;
  if ((*(v287 + 48))(v43, 1, v44) == 1)
  {
    sub_10000B3A8(v43, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v58 = v282;
    (*(v57 + 32))(v282, v43, v44);
    static Date.trustedNow.getter(v48);
    v59 = static Date.> infix(_:_:)();
    v62 = *(v57 + 8);
    v60 = v57 + 8;
    v61 = v62;
    v62(v48, v44);
    if (v59)
    {
      v287 = v60;
      v279 = v44;
      v63 = swift_allocObject();
      v286 = xmmword_101385D80;
      *(v63 + 16) = xmmword_101385D80;
      v64 = [v55 trackingIdentifier];
      v65 = [v64 advertisementData];

      v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = Data.hexString.getter();
      v71 = v70;
      sub_100016590(v66, v68);
      v72 = v280;
      *(v63 + 56) = &type metadata for String;
      *(v63 + 64) = v72;
      *(v63 + 32) = v69;
      *(v63 + 40) = v71;
      v73 = String.init(format:_:)();
      v75 = v74;
      static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v76 = swift_allocObject();
      *(v76 + 16) = v286;
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = v72;
      *(v76 + 32) = v73;
      *(v76 + 40) = v75;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for TrackingAvoidanceError(0);
      v290 = 7;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      v77 = swift_allocObject();
      *(v77 + 16) = v286;
      *(v77 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v77 + 72) = &type metadata for String;
      *(v77 + 40) = v78;
      *(v77 + 48) = v73;
      *(v77 + 56) = v75;
      sub_10090403C(v77);
      swift_setDeallocating();
      sub_10000B3A8(v77 + 32, &unk_101695C20, &unk_101386D90);
      swift_deallocClassInstance();
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v79 = v288;
      (v284)(v288);

      v61(v282, v279);
      return;
    }

    v61(v58, v44);
  }

  v80 = [v55 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v81 >> 62)
  {
    v82 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v82)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for TrackingAvoidanceError(0);
    v290 = 4;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = inited + 32;
    v94 = 0x800000010135F5B0;
    *(inited + 72) = &type metadata for String;
    v95 = 0xD000000000000027;
    goto LABEL_36;
  }

  v83 = v55;
  v84 = [v55 observedLocations];
  v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v85 >> 62)
  {
    v86 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = 0;
  v88 = v85 & 0xC000000000000001;
  while (1)
  {
    if (v86 == v87)
    {

      v96 = v83;
      v97 = [v83 trackingIdentifier];
      v98 = [v97 data];

      v99 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v287 = v100;

      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      v102 = sub_1000076D4(v101, qword_1016A9318);
      sub_100017D5C(v99, v287);
      v282 = v102;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v103, v104))
      {
        sub_100016590(v99, v287);

        goto LABEL_47;
      }

      v105 = v83;
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v288 = v107;
      *v106 = 134218242;
      v108 = v287 >> 62;
      if ((v287 >> 62) > 1)
      {
        if (v108 != 2)
        {
          v109 = 0;
          goto LABEL_46;
        }

        v112 = *(v99 + 16);
        v111 = *(v99 + 24);
        v113 = __OFSUB__(v111, v112);
        v109 = v111 - v112;
        if (!v113)
        {
          goto LABEL_46;
        }

        __break(1u);
      }

      else if (!v108)
      {
        v109 = BYTE6(v287);
LABEL_46:
        *(v106 + 4) = v109;
        sub_100016590(v99, v287);
        *(v106 + 12) = 2082;
        v114 = Data.hexString.getter();
        v116 = sub_1000136BC(v114, v115, &v288);

        *(v106 + 14) = v116;
        _os_log_impl(&_mh_execute_header, v103, v104, "Decoding advertisement from advertisementData[%ld]: %{public}s", v106, 0x16u);
        sub_100007BAC(v107);

        v96 = v105;
LABEL_47:
        v117 = [v96 trackingIdentifier];
        v118 = [v117 isPosh];

        v119 = [v96 trackingIdentifier];
        v120 = [v119 networkID];

        v121 = [v96 trackingIdentifier];
        v122 = [v121 status];

        if (v120 == 1)
        {
          v123 = 5;
        }

        else
        {
          v123 = 6;
        }

        if (v118)
        {
          v124 = v123;
        }

        else
        {
          v124 = ((v122 >> 4) & 3);
        }

        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = v124;
          v124 = v96;
          v129 = swift_slowAlloc();
          v288 = v129;
          *v127 = 136446210;
          v130 = sub_100781578(v128);
          v132 = sub_1000136BC(v130, v131, &v288);

          *(v127 + 4) = v132;
          v133 = v124;
          LOBYTE(v124) = v128;
          _os_log_impl(&_mh_execute_header, v125, v126, "UnauthorizedTrackingAdvertisementType: %{public}s", v127, 0xCu);
          sub_100007BAC(v129);
        }

        else
        {
          v133 = v96;
        }

        v134 = v286;
        switch(v124)
        {
          case 4u:
            v158 = v133;
            v159 = Logger.logObject.getter();
            v160 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v159, v160))
            {
              v161 = swift_slowAlloc();
              *v161 = 67109632;
              v162 = [v158 trackingIdentifier];
              v163 = [v162 isPosh];

              *(v161 + 4) = v163;
              *(v161 + 8) = 256;
              v164 = [v158 trackingIdentifier];
              LOBYTE(v163) = [v164 networkID];

              *(v161 + 10) = v163;
              *(v161 + 11) = 256;
              v165 = [v158 trackingIdentifier];
              LOBYTE(v163) = [v165 status];

              *(v161 + 13) = v163;
              _os_log_impl(&_mh_execute_header, v159, v160, "Unknown advertisement type. isPosh: %{BOOL}d networkID: %hhu status: %hhu", v161, 0xEu);
            }

            else
            {

              v159 = v158;
            }

            type metadata accessor for TrackingAvoidanceError(0);
            v290 = 6;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v169 = swift_initStackObject();
            *(v169 + 16) = xmmword_101385D80;
            *(v169 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v171 = v169 + 32;
            v172 = "Unknown advertisement type";
            goto LABEL_79;
          case 6u:
            v140 = [v133 trackingIdentifier];
            v141 = [v140 address];

            v142 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v144 = v143;

            sub_100017D5C(v142, v144);
            v145 = v271;
            MACAddress.init(data:type:)();
            v146 = v277;
            v147 = v279;
            if ((*(v277 + 48))(v145, 1, v279) != 1)
            {
              v280 = v142;
              v281 = v144;
              v181 = v272;
              (*(v146 + 32))(v272, v145, v147);
              v182 = v266;
              (*(v146 + 16))(v266, v181, v147);
              v183 = Logger.logObject.getter();
              v184 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v183, v184))
              {
                v185 = v182;
                v186 = v146;
                v187 = swift_slowAlloc();
                v188 = swift_slowAlloc();
                v288 = v188;
                *v187 = 136446210;
                sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
                LODWORD(v282) = v184;
                v189 = dispatch thunk of CustomStringConvertible.description.getter();
                v271 = v99;
                v191 = v190;
                v192 = *(v186 + 8);
                v192(v185, v279);
                v193 = sub_1000136BC(v189, v191, &v288);
                v99 = v271;

                *(v187 + 4) = v193;
                _os_log_impl(&_mh_execute_header, v183, v282, "Posh address: %{public}s", v187, 0xCu);
                sub_100007BAC(v188);
                v194 = v285;
                v147 = v279;
              }

              else
              {

                v192 = *(v146 + 8);
                v192(v182, v147);
                v194 = v133;
              }

              v213 = type metadata accessor for UUID();
              v214 = v276;
              (*(*(v213 - 8) + 56))(v276, 1, 1, v213);
              v215 = v272;
              sub_100791E34(v272, v214, v194, 0, 0, 0, v284, v283);
              sub_100016590(v280, v281);
              sub_100016590(v99, v287);
              sub_10000B3A8(v214, &qword_1016980D0, &unk_10138F3B0);
              v192(v215, v147);
              return;
            }

            sub_10000B3A8(v145, &qword_1016A40D0, &unk_10138BE70);
            sub_100017D5C(v142, v144);
            v148 = Logger.logObject.getter();
            v149 = static os_log_type_t.error.getter();
            sub_100016590(v142, v144);
            v150 = v142;
            if (os_log_type_enabled(v148, v149))
            {
              v151 = swift_slowAlloc();
              v152 = swift_slowAlloc();
              v288 = v152;
              *v151 = 136446210;
              v153 = Data.hexString.getter();
              v155 = sub_1000136BC(v153, v154, &v288);

              *(v151 + 4) = v155;
              _os_log_impl(&_mh_execute_header, v148, v149, "Invalid MAC address %{public}s", v151, 0xCu);
              sub_100007BAC(v152);
            }

            type metadata accessor for TrackingAvoidanceError(0);
            v290 = 3;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v156 = swift_initStackObject();
            *(v156 + 16) = xmmword_101385D80;
            *(v156 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v156 + 72) = &type metadata for String;
            *(v156 + 40) = v157;
            *(v156 + 48) = 0xD00000000000001FLL;
            *(v156 + 56) = 0x800000010135F4D0;
            sub_10090403C(v156);
            swift_setDeallocating();
            sub_10000B3A8(v156 + 32, &unk_101695C20, &unk_101386D90);
            sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v110 = v288;
            (v284)(v288);
            sub_100016590(v99, v287);
            sub_100016590(v150, v144);
LABEL_37:

            return;
          case 5u:
            v135 = v287;
            sub_100017D5C(v99, v287);
            sub_100497060(v99, v135, &v288);
            v136 = v289;
            if (v289 >> 60 == 15)
            {
              v137 = Logger.logObject.getter();
              v138 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v137, v138))
              {
                v139 = swift_slowAlloc();
                *v139 = 0;
                _os_log_impl(&_mh_execute_header, v137, v138, "received an advertisement of unexpected length or format", v139, 2u);
              }

LABEL_72:

              type metadata accessor for TrackingAvoidanceError(0);
              v290 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v169 = swift_initStackObject();
              *(v169 + 16) = xmmword_101385D80;
              *(v169 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v171 = v169 + 32;
              v172 = "Advertisement is malformed";
LABEL_79:
              *(v169 + 72) = &type metadata for String;
              *(v169 + 40) = v170;
              *(v169 + 48) = 0xD00000000000001ALL;
              *(v169 + 56) = (v172 - 32) | 0x8000000000000000;
              sub_10090403C(v169);
              swift_setDeallocating();
              sub_10000B3A8(v171, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
              _BridgedStoredNSError.init(_:userInfo:)();
              v110 = v288;
              (v284)(v288);
              sub_100016590(v99, v287);
              goto LABEL_37;
            }

            break;
          default:
            v166 = v287;
            sub_100017D5C(v99, v287);
            sub_100497060(v99, v166, &v288);
            v136 = v289;
            if (v289 >> 60 == 15)
            {
              v137 = Logger.logObject.getter();
              v167 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v137, v167))
              {
                v168 = swift_slowAlloc();
                *v168 = 0;
                _os_log_impl(&_mh_execute_header, v137, v167, "received an advertisement of unexpected length or format", v168, 2u);
              }

              goto LABEL_72;
            }

            break;
        }

        v282 = v136;
        v271 = v99;
        v173 = v288;
        v174 = *(*(v134 + 16) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
        type metadata accessor for BeaconKeyManager(0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v84 = type metadata accessor for UUID();
        v258 = *(v84 - 8);
        v175 = 1;
        v176 = v278;
        v266 = *(v258 + 56);
        (v266)(v278, 1, 1, v84);
        v272 = v173;
        v177 = sub_1012DD334(v173, v282, v176);
        v178 = v177[2];
        v179 = v273;
        v180 = v275;
        if (v178)
        {
          sub_1007A7DFC(v177 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * (v178 - 1), v275, type metadata accessor for BeaconKeyManager.IndexInformation);
          v175 = 0;
        }

        sub_10000B3A8(v278, &qword_1016980D0, &unk_10138F3B0);
        v195 = v274;
        (*(v179 + 56))(v180, v175, 1, v274);
        if ((*(v179 + 48))(v180, 1, v195) == 1)
        {
          sub_10000B3A8(v180, &unk_1016C1120, &qword_1013C49D0);
          v196 = v272;
          v197 = v282;
          sub_100017D5C(v272, v282);
          v198 = static MACAddress.length.getter();
          sub_10002EA98(v198, v196, v197, &v288);
          v199 = v267;
          MACAddress.init(data:type:)();
          v200 = v277;
          v201 = v279;
          v202 = (*(v277 + 48))(v199, 1, v279);
          v203 = v285;
          if (v202 != 1)
          {
            v204 = v268;
            (*(v200 + 32))(v268, v199, v201);
            v205 = v276;
            (v266)(v276, 1, 1, v84);
            sub_100791E34(v204, v205, v203, 0, 0, 0, v284, v283);
            sub_100006654(v196, v197);
            sub_100016590(v271, v287);
            sub_10000B3A8(v205, &qword_1016980D0, &unk_10138F3B0);
            (*(v200 + 8))(v204, v201);
            return;
          }

          __break(1u);
          goto LABEL_107;
        }

        v206 = v270;
        sub_1007A91C8(v180, v270, type metadata accessor for BeaconKeyManager.IndexInformation);
        v207 = v269;
        sub_100AA33AC(v206, v269);
        v208 = type metadata accessor for OwnedBeaconRecord();
        v209 = (*(*(v208 - 8) + 48))(v207, 1, v208);
        sub_10000B3A8(v207, &unk_1016A9A20, &qword_10138B280);
        v103 = v285;
        if (v209 == 1)
        {
          v210 = v264;
          sub_100AA5198(v206, v264);
          v211 = v265;
          v212 = (*(v263 + 48))(v210, 1, v265);
          v88 = v272;
          if (v212 == 1)
          {
            sub_10000B3A8(v210, &unk_101698C30, &unk_101392630);
          }

          else
          {
            v232 = v210;
            v85 = v262;
            sub_1007A91C8(v232, v262, type metadata accessor for SharedBeaconRecord);
            v233 = *(v85 + *(v211 + 64));
            if (v233 == 4 || v233 == 1)
            {
              static os_log_type_t.default.getter();
              if (qword_1016950B0 != -1)
              {
                swift_once();
              }

              v234 = swift_allocObject();
              v278 = xmmword_101385D80;
              *(v234 + 16) = xmmword_101385D80;
              sub_1007A7DFC(v85, v261, type metadata accessor for SharedBeaconRecord);
              v235 = v265;
              v236 = String.init<A>(describing:)();
              v237 = v280;
              *(v234 + 56) = &type metadata for String;
              *(v234 + 64) = v237;
              *(v234 + 32) = v236;
              *(v234 + 40) = v238;
              os_log(_:dso:log:_:_:)();

              v87 = *(v235 + 20);
              if ((sub_100785DE8(v85 + v87) & 1) == 0)
              {
                goto LABEL_98;
              }

              v239 = String.init(format:_:)();
              v241 = v240;
              static os_log_type_t.default.getter();
              v242 = swift_allocObject();
              *(v242 + 16) = v278;
              *(v242 + 56) = &type metadata for String;
              *(v242 + 64) = v237;
              *(v242 + 32) = v239;
              *(v242 + 40) = v241;

              os_log(_:dso:log:_:_:)();

              type metadata accessor for TrackingAvoidanceError(0);
              v290 = 7;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v243 = swift_initStackObject();
              *(v243 + 16) = v278;
              *(v243 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v243 + 72) = &type metadata for String;
              *(v243 + 40) = v244;
              *(v243 + 48) = v239;
              *(v243 + 56) = v241;
              sub_10090403C(v243);
              swift_setDeallocating();
              sub_10000B3A8(v243 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
              _BridgedStoredNSError.init(_:userInfo:)();
              v245 = v288;
              (v284)(v288);

              sub_100006654(v272, v282);
              sub_100016590(v271, v287);
              sub_1007A810C(v270, type metadata accessor for BeaconKeyManager.IndexInformation);
              sub_1007A810C(v85, type metadata accessor for SharedBeaconRecord);
              return;
            }

            sub_1007A810C(v85, type metadata accessor for SharedBeaconRecord);
          }

          type metadata accessor for TrackingAvoidanceError(0);
          v290 = 6;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v257 = v288;
          (v284)(v288);

          sub_100006654(v88, v282);
          sub_100016590(v271, v287);
          sub_1007A810C(v206, type metadata accessor for BeaconKeyManager.IndexInformation);
          return;
        }

        static os_log_type_t.default.getter();
        if (qword_1016950B0 == -1)
        {
LABEL_89:
          os_log(_:dso:log:_:_:)();
          v216 = swift_allocObject();
          v286 = xmmword_101385D80;
          *(v216 + 16) = xmmword_101385D80;
          v217 = [v103 trackingIdentifier];
          v218 = [v217 advertisementData];

          v219 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v221 = v220;

          v222 = Data.hexString.getter();
          v224 = v223;
          sub_100016590(v219, v221);
          v225 = v280;
          *(v216 + 56) = &type metadata for String;
          *(v216 + 64) = v225;
          *(v216 + 32) = v222;
          *(v216 + 40) = v224;
          v226 = String.init(format:_:)();
          v228 = v227;
          type metadata accessor for TrackingAvoidanceError(0);
          v290 = 8;
          sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
          v229 = swift_initStackObject();
          *(v229 + 16) = v286;
          *(v229 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v229 + 72) = &type metadata for String;
          *(v229 + 40) = v230;
          *(v229 + 48) = v226;
          *(v229 + 56) = v228;
          sub_10090403C(v229);
          swift_setDeallocating();
          sub_10000B3A8(v229 + 32, &unk_101695C20, &unk_101386D90);
          sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v231 = v288;
          (v284)(v288);

          sub_100006654(v272, v282);
          sub_100016590(v271, v287);
          sub_1007A810C(v270, type metadata accessor for BeaconKeyManager.IndexInformation);
          return;
        }

LABEL_105:
        swift_once();
        goto LABEL_89;
      }

      LODWORD(v109) = HIDWORD(v99) - v99;
      if (__OFSUB__(HIDWORD(v99), v99))
      {
        __break(1u);
        goto LABEL_105;
      }

      v109 = v109;
      goto LABEL_46;
    }

    if (v88)
    {
      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v87 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v89 = *(v85 + 8 * v87 + 32);
    }

    v90 = v89;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    v84 = sub_1010E13F0();

    ++v87;
    if (v84)
    {

      static os_log_type_t.error.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      type metadata accessor for TrackingAvoidanceError(0);
      v290 = 11;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = inited + 32;
      v94 = 0x800000010135F490;
      *(inited + 72) = &type metadata for String;
      v95 = 0xD00000000000001CLL;
LABEL_36:
      *(inited + 40) = v92;
      *(inited + 48) = v95;
      *(inited + 56) = v94;
      sub_10090403C(inited);
      swift_setDeallocating();
      sub_10000B3A8(v93, &unk_101695C20, &unk_101386D90);
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v110 = v288;
      (v284)(v288);
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  v246 = v88;
  v247 = v88;
  v248 = v282;
  sub_100017D5C(v246, v282);
  v249 = static MACAddress.length.getter();
  sub_10002EA98(v249, v247, v248, &v288);
  v250 = v259;
  MACAddress.init(data:type:)();
  v251 = v277;
  v252 = v279;
  if ((*(v277 + 48))(v250, 1, v279) != 1)
  {
    v253 = v260;
    (*(v251 + 32))(v260, v250, v252);
    v254 = v85 + v87;
    v255 = v85;
    v256 = v276;
    (*(v258 + 16))(v276, v254, v84);
    (v266)(v256, 0, 1, v84);
    sub_100791E34(v253, v256, v285, *(v255 + *(v265 + 28)), *(v255 + *(v265 + 28) + 8), *(v255 + *(v265 + 28) + 16), v284, v283);
    sub_100006654(v272, v248);
    sub_100016590(v271, v287);
    sub_10000B3A8(v256, &qword_1016980D0, &unk_10138F3B0);
    (*(v251 + 8))(v253, v252);
    sub_1007A810C(v270, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_1007A810C(v255, type metadata accessor for SharedBeaconRecord);
    return;
  }

LABEL_107:
  __break(1u);
}

void sub_100791E34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(unint64_t, _BYTE *, uint64_t))
{
  v80 = a7;
  v81 = a8;
  v73 = a6;
  v72 = a5;
  v71 = a4;
  v79 = a3;
  v82 = type metadata accessor for WildModeTrackingLocation(0);
  v11 = *(v82 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v82);
  v14 = &v67[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = type metadata accessor for MACAddress();
  v76 = *(v77 - 8);
  v15 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v67[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v67[-v19];
  v21 = type metadata accessor for WildModeAssociationRecord(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v67[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = &v67[-v27];
  v78 = a1;
  v74 = v8;
  sub_100793720(a1, a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_1007A91C8(v20, v28, type metadata accessor for WildModeAssociationRecord);
    v32 = v28;
    if (qword_101694918 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_1016A9318);
    sub_1007A7DFC(v28, v26, type metadata accessor for WildModeAssociationRecord);
    v34 = v76;
    v35 = v75;
    v36 = v77;
    (*(v76 + 16))(v75, v78, v77);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v70 = v32;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v84[0] = v69;
      *v40 = 136315394;
      type metadata accessor for UUID();
      sub_100799304(&qword_101696930, &type metadata accessor for UUID);
      v68 = v38;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      sub_1007A810C(v26, type metadata accessor for WildModeAssociationRecord);
      v44 = sub_1000136BC(v41, v43, v84);
      v32 = v70;

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v34 + 8))(v35, v36);
      v48 = sub_1000136BC(v45, v47, v84);

      *(v40 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v37, v68, "update: found UT record UUID %s address %s.", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v34 + 8))(v35, v36);
      sub_1007A810C(v26, type metadata accessor for WildModeAssociationRecord);
    }

    v49 = [v79 observedLocations];
    sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v50 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      if (v51)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
LABEL_12:
        v84[0] = _swiftEmptyArrayStorage;
        sub_101124B70(0, v51 & ~(v51 >> 63), 0);
        if (v51 < 0)
        {
          __break(1u);
          return;
        }

        v52 = 0;
        v53 = v84[0];
        do
        {
          if ((v50 & 0xC000000000000001) != 0)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v54 = *(v50 + 8 * v52 + 32);
          }

          v55 = v54;
          [v54 latitude];
          v57 = v56;
          [v55 longitude];
          v59 = v58;
          [v55 horizontalAccuracy];
          v61 = v60;
          v62 = [v55 timestamp];
          v63 = v14 + *(v82 + 28);
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          *v14 = v57;
          v14[1] = v59;
          v14[2] = v61;
          v84[0] = v53;
          v65 = v53[2];
          v64 = v53[3];
          if (v65 >= v64 >> 1)
          {
            sub_101124B70(v64 > 1, v65 + 1, 1);
            v53 = v84[0];
          }

          ++v52;
          v53[2] = v65 + 1;
          sub_1007A91C8(v14, v53 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v65, type metadata accessor for WildModeTrackingLocation);
        }

        while (v51 != v52);

        v66 = v81;
        v32 = v70;
LABEL_23:

        sub_10079E7C8(v32, v79, v78, v71, v72, v73, v53, v74, v80, v66);

        sub_1007A810C(v32, type metadata accessor for WildModeAssociationRecord);
        return;
      }
    }

    v53 = _swiftEmptyArrayStorage;
    v66 = v81;
    goto LABEL_23;
  }

  sub_10000B3A8(v20, &unk_1016C7C90, &qword_1013BB4B0);
  static os_log_type_t.error.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for TrackingAvoidanceError(0);
  v83 = 3;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v30;
  *(inited + 48) = 0xD000000000000027;
  *(inited + 56) = 0x800000010135F6C0;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v31 = v84[0];
  (v80)(v84[0]);
}

uint64_t sub_1007927CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!a2)
  {
    static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  return a3(a2);
}

uint64_t sub_100792880(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v72 = a4;
  v78 = a3;
  v66 = a2;
  v6 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v70 = &v64 - v8;
  v9 = type metadata accessor for WildModeAssociationRecord(0);
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  __chkstk_darwin(v9);
  v65 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for MACAddress();
  v77 = *(v16 - 8);
  v17 = *(v77 + 64);
  __chkstk_darwin(v16);
  v71 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v75 = qword_10177C398;
  v73 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10138B360;
  v79 = *v4;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v23 = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v23;
  *(v19 + 64) = v23;
  *(v19 + 72) = 0xD00000000000002FLL;
  *(v19 + 80) = 0x800000010135FAA0;
  v24 = [a1 data];
  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v4;
  v26 = a1;
  v28 = v27;

  v29 = Data.hexString.getter();
  v31 = v30;
  v32 = v28;
  v33 = v26;
  sub_100016590(v25, v32);
  *(v19 + 136) = &type metadata for String;
  *(v19 + 144) = v23;
  v74 = v23;
  *(v19 + 112) = v29;
  *(v19 + 120) = v31;
  os_log(_:dso:log:_:_:)();

  v34 = [v26 address];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  MACAddress.init(data:type:)();
  v35 = v77;
  if ((*(v77 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &qword_1016A40D0, &unk_10138BE70);
    static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_101385D80;
    v37 = [v26 data];
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = Data.hexString.getter();
    v43 = v42;
    sub_100016590(v38, v40);
    v44 = v74;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v44;
    *(v36 + 32) = v41;
    *(v36 + 40) = v43;
    os_log(_:dso:log:_:_:)();

    v46 = v78;
    if (v78)
    {
      sub_1007A7D8C();
      swift_allocError();
      *v47 = 1;
      v46();
    }
  }

  else
  {
    v48 = v71;
    (*(v35 + 32))(v71, v15, v16);
    v49 = v67[2];
    v50 = v70;
    sub_10125FD10(v48, v70);
    if ((*(v68 + 48))(v50, 1, v69) == 1)
    {
      sub_10000B3A8(v50, &unk_1016C7C90, &qword_1013BB4B0);
      static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_101385D80;
      v52 = [v33 data];
      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = Data.hexString.getter();
      v58 = v57;
      sub_100016590(v53, v55);
      v59 = v74;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = v59;
      *(v51 + 32) = v56;
      *(v51 + 40) = v58;
      os_log(_:dso:log:_:_:)();

      v60 = v78;
      if (v78)
      {
        sub_1007A7D8C();
        swift_allocError();
        *v61 = 0;
        v60();
      }
    }

    else
    {
      v62 = v50;
      v63 = v65;
      sub_1007A91C8(v62, v65, type metadata accessor for WildModeAssociationRecord);
      sub_100796E08(v63, v66, v78, v72);
      sub_1007A810C(v63, type metadata accessor for WildModeAssociationRecord);
    }

    return (*(v35 + 8))(v48, v16);
  }

  return result;
}

uint64_t sub_100792FD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v28 = a2;
  v29 = a4;
  v33 = a3;
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v32 = type metadata accessor for WildModeAssociationRecord(0);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v32);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138B360;
  v34 = *v5;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 64) = v19;
  *(v15 + 72) = 0xD00000000000002ALL;
  *(v15 + 80) = 0x800000010135FA20;
  v20 = a1;
  v21 = UUID.uuidString.getter();
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v19;
  *(v15 + 112) = v21;
  *(v15 + 120) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = v5[2];
  sub_100AC29C4(v20, v10);
  if ((*(v11 + 48))(v10, 1, v32) == 1)
  {
    sub_10000B3A8(v10, &unk_1016C7C90, &qword_1013BB4B0);
    static os_log_type_t.default.getter();
    v24 = v33;
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    result = os_log(_:dso:log:_:_:)();
    if (v24)
    {
      sub_1007A7D8C();
      swift_allocError();
      *v26 = 0;
      v24();
    }
  }

  else
  {
    sub_1007A91C8(v10, v14, type metadata accessor for WildModeAssociationRecord);
    sub_100796878(v14, v28, v33, v29);
    return sub_1007A810C(v14, type metadata accessor for WildModeAssociationRecord);
  }

  return result;
}

uint64_t sub_10079337C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v28 = a2;
  v29 = a4;
  v33 = a3;
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v32 = type metadata accessor for WildModeAssociationRecord(0);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v32);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138B360;
  v34 = *v5;
  sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 64) = v19;
  *(v15 + 72) = 0xD00000000000002ALL;
  *(v15 + 80) = 0x800000010135FA20;
  v20 = a1;
  v21 = UUID.uuidString.getter();
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v19;
  *(v15 + 112) = v21;
  *(v15 + 120) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = v5[2];
  sub_100023184(v20, v10);
  if ((*(v11 + 48))(v10, 1, v32) == 1)
  {
    sub_10000B3A8(v10, &unk_1016C7C90, &qword_1013BB4B0);
    static os_log_type_t.default.getter();
    v24 = v33;
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    result = os_log(_:dso:log:_:_:)();
    if (v24)
    {
      sub_1007A7D8C();
      swift_allocError();
      *v26 = 0;
      v24();
    }
  }

  else
  {
    sub_1007A91C8(v10, v14, type metadata accessor for WildModeAssociationRecord);
    sub_100796E08(v14, v28, v33, v29);
    return sub_1007A810C(v14, type metadata accessor for WildModeAssociationRecord);
  }

  return result;
}

uint64_t sub_100793720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v41 = a3;
  v5 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for WildModeAssociationRecord(0);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(v9);
  v38 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v37 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v15, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    v21 = *(v3 + 16);
    return sub_10125FD10(v39, v41);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v23 = *(v3 + 16);
    sub_100AC29C4(v20, v8);
    v24 = v40;
    if ((*(v40 + 48))(v8, 1, v9) == 1)
    {
      (*(v17 + 8))(v20, v16);
      sub_10000B3A8(v8, &unk_1016C7C90, &qword_1013BB4B0);
      return (*(v24 + 56))(v41, 1, 1, v9);
    }

    else
    {
      v25 = v38;
      sub_1007A91C8(v8, v38, type metadata accessor for WildModeAssociationRecord);
      LODWORD(v39) = static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v37[1] = qword_10177C3F8;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10138B360;
      v27 = UUID.uuidString.getter();
      v29 = v28;
      *(v26 + 56) = &type metadata for String;
      v30 = sub_100008C00();
      *(v26 + 64) = v30;
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      v31 = UUID.uuidString.getter();
      *(v26 + 96) = &type metadata for String;
      *(v26 + 104) = v30;
      *(v26 + 72) = v31;
      *(v26 + 80) = v32;
      v33 = v25 + *(v9 + 28);
      v34 = MACAddress.description.getter();
      *(v26 + 136) = &type metadata for String;
      *(v26 + 144) = v30;
      *(v26 + 112) = v34;
      *(v26 + 120) = v35;
      os_log(_:dso:log:_:_:)();

      (*(v17 + 8))(v20, v16);
      v36 = v41;
      sub_1007A91C8(v25, v41, type metadata accessor for WildModeAssociationRecord);
      return (*(v40 + 56))(v36, 0, 1, v9);
    }
  }
}

uint64_t sub_100793B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = *v3;
  v19 = a2;
  v7 = type metadata accessor for WildModeAssociationRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[2];
  sub_1007A7DFC(a1, v10, type metadata accessor for WildModeAssociationRecord);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_1007A91C8(v10, v15 + v12, type metadata accessor for WildModeAssociationRecord);
  *(v15 + v13) = v4;
  v16 = (v15 + v14);
  *v16 = v19;
  v16[1] = a3;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;

  sub_100D76818(a1, sub_1007A8054, v15);
}

void sub_100793D50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v131 = a5;
  v132 = a4;
  v125 = a3;
  v126 = type metadata accessor for UnwantedTrackingUserNotification();
  v7 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v127 = v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v123 - v11;
  v13 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v123 - v15;
  v133 = type metadata accessor for WildModeAssociationRecord(0);
  v17 = *(*(v133 - 1) + 64);
  v18 = __chkstk_darwin(v133);
  v130 = v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v129 = v123 - v21;
  v22 = __chkstk_darwin(v20);
  v128 = v123 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = v123 - v25;
  __chkstk_darwin(v24);
  v28 = v123 - v27;
  v29 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = (v123 - v31);
  sub_1000D2A70(a1, v123 - v31, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    if (qword_101694918 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_1016A9318);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v132;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Error saving UT alert record %{public}@", v39, 0xCu);
      sub_10000B3A8(v40, &qword_10169BB30, &unk_10138B3C0);
    }

    type metadata accessor for TrackingAvoidanceError(0);
    v136[0] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v42 = aBlock[0];
    v38(aBlock[0]);

    return;
  }

  v124 = v28;
  sub_1007A91C8(v32, v28, type metadata accessor for WildModeAssociationRecord);
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v44 = sub_1000076D4(v43, qword_1016A9318);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "UT alert saved successfully.", v47, 2u);
  }

  v48 = *(a2 + v133[16]);
  v49 = v26;
  if (v48 != 8)
  {
    if ((v48 & 0xFA) != 0)
    {
      v50 = *(v125 + 16);
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v43, qword_10177BA08);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 67109120;
        _os_log_impl(&_mh_execute_header, v51, v52, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v53, 8u);
      }

      ThrottledDarwinPoster.post(bypassRateLimit:)(0);
      v49 = v26;
      if (v54)
      {
      }
    }

    if (v48 > 6 || v48 == 2)
    {
      v122 = *(v125 + 16);
      sub_100A8AF58();
    }
  }

  v55 = v133;
  if (*(a2 + v133[13]) == 1 || (sub_1000D2A70(a2 + v133[14], v16, &qword_1016A62A0, &unk_101396E10), v56 = type metadata accessor for AccessoryMetadata(0), v57 = (*(*(v56 - 8) + 48))(v16, 1, v56), sub_10000B3A8(v16, &qword_1016A62A0, &unk_101396E10), v57 != 1))
  {
    v63 = 0;
  }

  else
  {
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v58 = qword_10177C218;
    v59 = [objc_opt_self() sharedInstance];
    v60 = [v59 isInternalBuild];

    if (v60)
    {
      v61 = String._bridgeToObjectiveC()();
      v62 = [v58 BOOLForKey:v61];

      v63 = v62 ^ 1;
    }

    else
    {
      v63 = 1;
    }
  }

  sub_1000D2A70(a2 + v55[15], v12, &qword_101697268, &qword_101394FE0);
  v64 = type metadata accessor for AccessoryProductInfo();
  v65 = (*(*(v64 - 8) + 48))(v12, 1, v64);
  v66 = v129;
  v123[1] = v44;
  if (v65 == 1)
  {
    sub_10000B3A8(v12, &qword_101697268, &qword_101394FE0);
  }

  else
  {
    v67 = v12[*(v64 + 184)];
    sub_1007A810C(v12, type metadata accessor for AccessoryProductInfo);
    if (v67 != 2 && (v67 & 1) == 0)
    {
      v86 = 0;
      goto LABEL_45;
    }
  }

  if (v48 > 3)
  {
    if (v48 < 8)
    {
LABEL_40:
      v68 = v130;
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v63 & 1 | ((v85 & 1) == 0))
      {
        goto LABEL_41;
      }

LABEL_37:
      v69 = v126;
      v70 = v127;
      v71 = v124;
      sub_1007A7DFC(v124, &v127[*(v126 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v70 = 2;
      v70[*(v69 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      v136[3] = v69;
      v136[4] = &off_1016159B8;
      v72 = sub_1000280DC(v136);
      sub_1007A7DFC(v70, v72, type metadata accessor for UnwantedTrackingUserNotification);
      v73 = *v72;
      v74 = objc_allocWithZone(UNUserNotificationCenter);
      v75 = String._bridgeToObjectiveC()();

      v76 = [v74 initWithBundleIdentifier:v75];

      v77 = sub_10111AFE0(v72);
      v78 = v72 + *(v69 + 20);
      UUID.uuidString.getter();
      v79 = v77;
      v80 = String._bridgeToObjectiveC()();

      v81 = [objc_opt_self() requestWithIdentifier:v80 content:v79 trigger:0 destinations:7];

      sub_10001F280(v136, v135);
      v82 = swift_allocObject();
      sub_100031694(v135, v82 + 16);
      *(v82 + 56) = 0;
      *(v82 + 64) = 0;
      aBlock[4] = sub_100358EC4;
      aBlock[5] = v82;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10077732C;
      aBlock[3] = &unk_101632A20;
      v83 = _Block_copy(aBlock);

      [v76 addNotificationRequest:v81 withCompletionHandler:v83];

      _Block_release(v83);
      sub_100007BAC(v136);
      sub_1007A810C(v70, type metadata accessor for UnwantedTrackingUserNotification);
      v84 = v132;
      goto LABEL_62;
    }

    v86 = 1;
LABEL_45:
    v68 = v130;
    goto LABEL_46;
  }

  if (v48 != 2)
  {
    goto LABEL_40;
  }

  v68 = v130;
  if ((v63 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_41:
  v86 = 1;
LABEL_46:
  sub_1007A7DFC(a2, v49, type metadata accessor for WildModeAssociationRecord);
  v87 = v49;
  v88 = v128;
  sub_1007A7DFC(a2, v128, type metadata accessor for WildModeAssociationRecord);
  sub_1007A7DFC(a2, v66, type metadata accessor for WildModeAssociationRecord);
  sub_1007A7DFC(a2, v68, type metadata accessor for WildModeAssociationRecord);
  v89 = v66;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    aBlock[0] = v127;
    *v92 = 136447490;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID);
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v94;
    sub_1007A810C(v87, type metadata accessor for WildModeAssociationRecord);
    v96 = sub_1000136BC(v93, v95, aBlock);

    *(v92 + 4) = v96;
    *(v92 + 12) = 1024;
    *(v92 + 14) = v86;
    *(v92 + 18) = 1024;
    *(v92 + 20) = v63;
    *(v92 + 24) = 2082;
    v97 = v133;
    v98 = *(v88 + v133[13]);
    v99 = 0xE500000000000000;
    v100 = 0x656C707061;
    v101 = 0xE700000000000000;
    v102 = 0x6579656B776168;
    v103 = 0xE400000000000000;
    v104 = 1701602664;
    if (v98 != 3)
    {
      v104 = 7104878;
      v103 = 0xE300000000000000;
    }

    if (v98 != 2)
    {
      v102 = v104;
      v101 = v103;
    }

    if (*(v88 + v133[13]))
    {
      v100 = 0x6E6169727564;
      v99 = 0xE600000000000000;
    }

    if (*(v88 + v133[13]) <= 1u)
    {
      v105 = v100;
    }

    else
    {
      v105 = v102;
    }

    if (*(v88 + v133[13]) <= 1u)
    {
      v106 = v99;
    }

    else
    {
      v106 = v101;
    }

    sub_1007A810C(v88, type metadata accessor for WildModeAssociationRecord);
    v107 = sub_1000136BC(v105, v106, aBlock);

    *(v92 + 26) = v107;
    *(v92 + 34) = 2082;
    v108 = v97[7];
    type metadata accessor for MACAddress();
    sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
    v109 = v129;
    v110 = dispatch thunk of CustomStringConvertible.description.getter();
    v112 = v111;
    sub_1007A810C(v109, type metadata accessor for WildModeAssociationRecord);
    v113 = sub_1000136BC(v110, v112, aBlock);

    *(v92 + 36) = v113;
    *(v92 + 44) = 2082;
    v114 = v130;
    LOBYTE(v136[0]) = v130[v97[16]];
    sub_1000BC4D4(&qword_1016A9630, &qword_1013BB5B8);
    v115 = String.init<A>(describing:)();
    v117 = v116;
    sub_1007A810C(v114, type metadata accessor for WildModeAssociationRecord);
    v118 = sub_1000136BC(v115, v117, aBlock);

    *(v92 + 46) = v118;
    _os_log_impl(&_mh_execute_header, v90, v91, "Not showing UT alert for %{public}s,\nsurfaceUt = %{BOOL}d isUnknown = %{BOOL}d,\ndeviceType = %{public}s\naddress = %{public}s,\nobservationState = %{public}s", v92, 0x36u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007A810C(v68, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v89, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v88, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v87, type metadata accessor for WildModeAssociationRecord);
  }

  v84 = v132;
  v71 = v124;
LABEL_62:
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    *v121 = 0;
    _os_log_impl(&_mh_execute_header, v119, v120, "Done waiting for user input", v121, 2u);
  }

  v84(0);
  sub_1007A810C(v71, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_100794E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X8>)
{
  v21 = a3;
  v22 = a4;
  v6 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for WildModeAssociationRecord(0);
  v11 = swift_projectBox();
  sub_1007A7DFC(a1, v9, type metadata accessor for AccessoryMetadata);
  v12 = type metadata accessor for AccessoryMetadata(0);
  v13 = *(v12 - 8) + 56;
  (*v13)(v9, 0, 1, v12);
  swift_beginAccess();
  sub_10002311C(v9, v11 + *(v10 + 56), &qword_1016A62A0, &unk_101396E10);
  v14 = *(a2 + 40);
  sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
  v15 = *(v13 + 16);
  v16 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  sub_1007A7DFC(a1, v17 + v16, type metadata accessor for AccessoryMetadata);
  v18 = sub_1003666F4(v17, v21);

  *v22 = v18;
  return result;
}

uint64_t sub_100795020@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_100795080(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_1007A7DFC(a1, &v6 - v4, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  swift_storeEnumTagMultiPayload();
  return Just.init(_:)();
}

uint64_t sub_100795144@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v5 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v89 - v7;
  v9 = type metadata accessor for BluetoothCommunicationCoordinator.Error();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v90 = (&v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v89 = (&v89 - v14);
  __chkstk_darwin(v13);
  v16 = &v89 - v15;
  v17 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v89 - v19;
  v21 = type metadata accessor for UUID();
  v92 = *(v21 - 8);
  v93 = v21;
  v22 = *(v92 + 64);
  __chkstk_darwin(v21);
  v91 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v89 - v26);
  v28 = type metadata accessor for WildModeAssociationRecord(0);
  v94 = a2;
  v29 = swift_projectBox();
  sub_1000D2A70(a1, v27, &qword_10169E748, &unk_10139DAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1007A91C8(v27, v16, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    swift_beginAccess();
    sub_1000D2A70(v29 + *(v28 + 56), v8, &qword_1016A62A0, &unk_101396E10);
    v30 = type metadata accessor for AccessoryMetadata(0);
    v31 = (*(*(v30 - 8) + 48))(v8, 1, v30);
    sub_10000B3A8(v8, &qword_1016A62A0, &unk_101396E10);
    v32 = v29;
    if (v31 == 1)
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_10177B2D0);
      v34 = v89;
      sub_1007A7DFC(v16, v89, type metadata accessor for BluetoothCommunicationCoordinator.Error);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v96[0] = swift_slowAlloc();
        *v37 = 136446466;
        swift_beginAccess();
        v38 = v91;
        v39 = v92;
        v40 = v93;
        (*(v92 + 16))(v91, v32, v93);
        sub_100799304(&qword_101696930, &type metadata accessor for UUID);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v16;
        v42 = v32;
        v44 = v43;
        (*(v39 + 8))(v38, v40);
        v45 = sub_1000136BC(v41, v44, v96);

        *(v37 + 4) = v45;
        *(v37 + 12) = 2082;
        v46 = v89;
        v47 = sub_10118F894();
        v49 = v48;
        sub_1007A810C(v46, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v50 = sub_1000136BC(v47, v49, v96);

        *(v37 + 14) = v50;
        v32 = v42;
        v51 = "Failed to fetch metadata for %{public}s.\nError %{public}s";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v35, v36, v51, v37, 0x16u);
        swift_arrayDestroy();

        v86 = v94;
LABEL_19:
        sub_1007A810C(v86, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        goto LABEL_22;
      }
    }

    else
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_1000076D4(v72, qword_10177B2D0);
      v34 = v90;
      sub_1007A7DFC(v16, v90, type metadata accessor for BluetoothCommunicationCoordinator.Error);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v96[0] = swift_slowAlloc();
        *v37 = 136446466;
        swift_beginAccess();
        v74 = v91;
        v73 = v92;
        v75 = v93;
        (*(v92 + 16))(v91, v32, v93);
        sub_100799304(&qword_101696930, &type metadata accessor for UUID);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v16;
        v77 = v32;
        v79 = v78;
        (*(v73 + 8))(v74, v75);
        v80 = sub_1000136BC(v76, v79, v96);

        *(v37 + 4) = v80;
        *(v37 + 12) = 2082;
        v81 = v90;
        v82 = sub_10118F894();
        v84 = v83;
        sub_1007A810C(v81, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v85 = sub_1000136BC(v82, v84, v96);

        *(v37 + 14) = v85;
        v32 = v77;
        v51 = "Failed to fetch product info for %{public}s.\nError %{public}s";
        goto LABEL_17;
      }
    }

    sub_1007A810C(v34, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    v86 = v16;
    goto LABEL_19;
  }

  v90 = v28;
  v32 = v29;
  v52 = *v27;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_1000076D4(v53, qword_10177B2D0);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v97 = v89;
    *v56 = 136446210;
    swift_beginAccess();
    v57 = v91;
    v58 = v92;
    v59 = *(v92 + 16);
    v94 = v52;
    v60 = v93;
    v59(v91, v32, v93);
    sub_100799304(&qword_101696930, &type metadata accessor for UUID);
    v61 = v20;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v32;
    v65 = v64;
    v66 = v60;
    v52 = v94;
    (*(v58 + 8))(v57, v66);
    v67 = v62;
    v20 = v61;
    v68 = sub_1000136BC(v67, v65, &v97);
    v32 = v63;

    *(v56 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v54, v55, "Successfully fetched product info for %{public}s", v56, 0xCu);
    sub_100007BAC(v89);
  }

  v69 = v90;
  if (*(v52 + 2))
  {
    v70 = type metadata accessor for AccessoryProductInfo();
    v71 = *(v70 - 8);
    sub_1007A7DFC(&v52[(*(v71 + 80) + 32) & ~*(v71 + 80)], v20, type metadata accessor for AccessoryProductInfo);

    (*(v71 + 56))(v20, 0, 1, v70);
  }

  else
  {

    v87 = type metadata accessor for AccessoryProductInfo();
    (*(*(v87 - 8) + 56))(v20, 1, 1, v87);
  }

  swift_beginAccess();
  sub_10002311C(v20, v32 + *(v69 + 60), &qword_101697268, &qword_101394FE0);
LABEL_22:
  swift_beginAccess();
  return sub_1007A7DFC(v32, v95, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_100795C48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void *), uint64_t a9, uint64_t a10)
{
  v85 = a8;
  v89 = a5;
  v90 = a7;
  v88 = a4;
  v14 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v83 = &v81 - v20;
  v21 = type metadata accessor for WildModeTrackingLocation(0);
  v94 = *(v21 - 8);
  v22 = *(v94 + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v95 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v81 - v25;
  v92 = type metadata accessor for WildModeAssociationRecord(0);
  v27 = *(*(v92 - 8) + 64);
  v28 = __chkstk_darwin(v92);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v33 = &v81 - v32;
  __chkstk_darwin(v31);
  v86 = *(a2 + 16);
  v91 = &v81 - v34;
  sub_1007A7DFC(a1, &v81 - v34, type metadata accessor for WildModeAssociationRecord);
  v87 = v33;
  sub_1007A7DFC(a10, v33, type metadata accessor for WildModeAssociationRecord);
  v93 = v30;
  sub_1007A7DFC(a1, v30, type metadata accessor for WildModeAssociationRecord);
  v82 = a3;
  v35 = [a3 type];
  v84 = v17;
  if (v35)
  {
    if (v35 != 1)
    {
      v80 = v35;
      type metadata accessor for TrackingObservationType(0);
      v96[0] = v80;
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v36 = 1;
  }

  else
  {
    v36 = 0;
  }

  v37 = v92;
  v38 = v93;
  v93[*(v92 + 24)] = v36;
  v39 = &v38[*(v37 + 48)];
  v40 = v39[2];

  v41 = v89;
  *v39 = v88;
  v39[1] = v41;
  v39[2] = a6;
  v42 = *(v37 + 32);
  v43 = *&v38[v42];
  v96[0] = v43;

  sub_10039A27C(v44);
  v45 = sub_10112A9D8(v96[0]);

  v46 = v45[2];
  v89 = v42;
  if (v46)
  {
    v47 = sub_1003A87B8(v46, 0);
    v48 = v94;
    v49 = sub_1003AA07C(v96, v47 + ((*(v94 + 80) + 32) & ~*(v94 + 80)), v46, v45);
    sub_1000128F8();
    if (v49 == v46)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v47 = _swiftEmptyArrayStorage;
  v48 = v94;
LABEL_9:
  v88 = v43;
  v90 = v14;
  v50 = v47[2];
  if (v50)
  {
    v51 = 0;
    v52 = _swiftEmptyArrayStorage;
    while (v51 < v47[2])
    {
      v53 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v54 = *(v48 + 72);
      sub_1007A7DFC(v47 + v53 + v54 * v51, v26, type metadata accessor for WildModeTrackingLocation);
      if (sub_1010E16B4())
      {
        sub_1007A810C(v26, type metadata accessor for WildModeTrackingLocation);
      }

      else
      {
        sub_1007A91C8(v26, v95, type metadata accessor for WildModeTrackingLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96[0] = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124B70(0, v52[2] + 1, 1);
          v52 = v96[0];
        }

        v57 = v52[2];
        v56 = v52[3];
        if (v57 >= v56 >> 1)
        {
          sub_101124B70(v56 > 1, v57 + 1, 1);
          v52 = v96[0];
        }

        v52[2] = v57 + 1;
        sub_1007A91C8(v95, v52 + v53 + v57 * v54, type metadata accessor for WildModeTrackingLocation);
        v48 = v94;
      }

      if (v50 == ++v51)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
LABEL_21:

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v95 = a9;
    if (v58)
    {
      goto LABEL_22;
    }
  }

  v52 = sub_100607388(v52);
LABEL_22:
  v59 = v93;
  v60 = v86;
  v61 = v87;
  v62 = v52[2];
  v96[0] = v52 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v96[1] = v62;
  sub_1007979C8(v96);
  *(v59 + v89) = v52;
  v63 = v91;
  v64 = v92;
  sub_1001DA61C(v91 + *(v92 + 56), v59 + *(v92 + 56), &qword_1016A62A0, &unk_101396E10);
  sub_1001DA61C(v63 + v64[15], v59 + v64[15], &qword_101697268, &qword_101394FE0);
  *(v59 + v64[9]) = 0;
  v65 = [v82 action];
  if (v65 < 5)
  {
    v66 = v65 + 1;
  }

  else
  {
    v66 = 0;
  }

  v67 = v83;
  static Date.trustedNow.getter(v83);
  v68 = type metadata accessor for Date();
  v69 = *(*(v68 - 8) + 56);
  v69(v67, 0, 1, v68);
  sub_10002311C(v67, v59 + v64[18], &unk_101696900, &unk_10138B1E0);
  static Date.trustedNow.getter(v67);
  v69(v67, 0, 1, v68);
  v70 = v59 + v64[17];
  sub_1001DE1F0(v67, v66);
  *(v59 + v64[16]) = v66;
  v71 = *(v60 + 168);
  sub_1009F1D18(v59);
  v72 = v85;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_1000076D4(v73, qword_10177BA08);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 67109120;
    _os_log_impl(&_mh_execute_header, v74, v75, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v76, 8u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v77)
  {
  }

  v78 = v84;
  sub_1007A7DFC(v59, v84, type metadata accessor for WildModeAssociationRecord);
  swift_storeEnumTagMultiPayload();
  sub_100796584(v78, v72, v95, v61);
  sub_10000B3A8(v78, &qword_1016A9590, &unk_1013BB520);
  sub_1007A810C(v61, type metadata accessor for WildModeAssociationRecord);
  sub_1007A810C(v91, type metadata accessor for WildModeAssociationRecord);
  return sub_1007A810C(v59, type metadata accessor for WildModeAssociationRecord);
}

void sub_100796584(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WildModeAssociationRecord(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v21 - v13);
  sub_1000D2A70(a1, &v21 - v13, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v22 = v15;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    type metadata accessor for TrackingAvoidanceError(0);
    v21 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v20 = v22;
    a2(a4, v22);
  }

  else
  {
    sub_1007A91C8(v14, v10, type metadata accessor for WildModeAssociationRecord);
    a2(v10, 0);
    sub_1007A810C(v10, type metadata accessor for WildModeAssociationRecord);
  }
}

uint64_t sub_100796878(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v39 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v7 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v40 = &v37 - v8;
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for WildModeAssociationRecord(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = v19[8];
  __chkstk_darwin(v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v19[2];
  v24 = a2;
  v25 = *(v4 + 16);
  v23(v22, v24, v18);
  sub_1007A7DFC(a1, v17, type metadata accessor for WildModeAssociationRecord);
  v17[v14[11]] = 2;
  v26 = v14[13];
  sub_10000B3A8(&v17[v26], &unk_101696900, &unk_10138B1E0);
  v38 = v22;
  v23(&v17[v26], v22, v18);
  v37 = v19;
  v27 = v19[7];
  v27(&v17[v26], 0, 1, v18);
  static Date.trustedNow.getter(v12);
  v27(v12, 0, 1, v18);
  sub_10002311C(v12, &v17[v14[20]], &unk_101696900, &unk_10138B1E0);
  static Date.trustedNow.getter(v12);
  v27(v12, 0, 1, v18);
  v28 = &v17[v14[19]];
  sub_1001DE1F0(v12, 6);
  v17[v14[18]] = 6;
  v29 = *(v25 + 168);
  sub_1009F1D18(v17);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000076D4(v30, qword_10177BA08);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    _os_log_impl(&_mh_execute_header, v31, v32, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v33, 8u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v34)
  {
  }

  v35 = v40;
  sub_1007A7DFC(v17, v40, type metadata accessor for WildModeAssociationRecord);
  swift_storeEnumTagMultiPayload();
  sub_1007975F0(v35, v41);
  sub_10000B3A8(v35, &qword_1016A9590, &unk_1013BB520);
  (v37[1])(v38, v18);
  return sub_1007A810C(v17, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_100796E08(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v37 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v6 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v38 = &v34 - v7;
  v35 = type metadata accessor for WildModeAssociationRecord(0);
  v8 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  static os_log_type_t.default.getter();
  if (a2)
  {
    if (a2 == 2)
    {
      v34 = a1;
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v20 = 2;
      os_log(_:dso:log:_:_:)();
      static Date.distantFuture.getter();
      sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
      v19(v15, 0, 1, v18);
      sub_1000D2AD8(v15, v17, &unk_101696900, &unk_10138B1E0);
      a1 = v34;
    }

    else if (a2 == 1)
    {
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v20 = 2;
      os_log(_:dso:log:_:_:)();
      sub_100780EFC(v15);
      sub_10002311C(v15, v17, &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
      v19(v17, 1, 1, v18);
      v20 = 4;
    }
  }

  else
  {
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
    v20 = 1;
    v19(v17, 1, 1, v18);
  }

  v34 = *(v36 + 2);
  sub_1007A7DFC(a1, v10, type metadata accessor for WildModeAssociationRecord);
  v21 = v35;
  v10[*(v35 + 36)] = v20;
  swift_beginAccess();
  v22 = v21[11];
  sub_10000B3A8(&v10[v22], &unk_101696900, &unk_10138B1E0);
  v36 = v17;
  sub_1000D2A70(v17, &v10[v22], &unk_101696900, &unk_10138B1E0);
  static Date.trustedNow.getter(v15);
  v19(v15, 0, 1, v18);
  sub_10002311C(v15, &v10[v21[18]], &unk_101696900, &unk_10138B1E0);
  static Date.trustedNow.getter(v15);
  v19(v15, 0, 1, v18);
  v23 = v34;
  v24 = &v10[v21[17]];
  sub_1001DE1F0(v15, 6);
  v10[v21[16]] = 6;
  v25 = *(v23 + 168);
  sub_1009F1D18(v10);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000076D4(v26, qword_10177BA08);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    _os_log_impl(&_mh_execute_header, v27, v28, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v29, 8u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  if (v30)
  {
  }

  v31 = v38;
  sub_1007A7DFC(v10, v38, type metadata accessor for WildModeAssociationRecord);
  swift_storeEnumTagMultiPayload();
  sub_1007975F0(v31, v39);
  v32 = v36;
  sub_10000B3A8(v31, &qword_1016A9590, &unk_1013BB520);
  sub_10000B3A8(v32, &unk_101696900, &unk_10138B1E0);
  return sub_1007A810C(v10, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_1007975F0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1000BC4D4(&qword_1016A9590, &unk_1013BB520);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v14 - v6);
  sub_1000D2A70(a1, v14 - v6, &qword_1016A9590, &unk_1013BB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101385D80;
    v14[1] = v8;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:_:_:)();

    if (a2)
    {
      swift_errorRetain();
      a2(v8);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    if (a2)
    {
      a2(0);
    }

    return sub_10000B3A8(v7, &qword_1016A9590, &unk_1013BB520);
  }
}

uint64_t sub_10079786C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_1007978E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
  sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

Swift::Int sub_1007979C8(uint64_t *a1)
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
        type metadata accessor for WildModeTrackingLocation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for WildModeTrackingLocation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100797D58(v8, v9, a1, v4);
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
    return sub_100797AF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100797AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for WildModeTrackingLocation(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
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
      sub_1007A7DFC(v24, v18, type metadata accessor for WildModeTrackingLocation);
      sub_1007A7DFC(v21, v14, type metadata accessor for WildModeTrackingLocation);
      v25 = *(v8 + 28);
      v26 = static Date.< infix(_:_:)();
      sub_1007A810C(v14, type metadata accessor for WildModeTrackingLocation);
      result = sub_1007A810C(v18, type metadata accessor for WildModeTrackingLocation);
      if ((v26 & 1) == 0)
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

      v27 = v37;
      sub_1007A91C8(v24, v37, type metadata accessor for WildModeTrackingLocation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1007A91C8(v27, v21, type metadata accessor for WildModeTrackingLocation);
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

uint64_t sub_100797D58(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for WildModeTrackingLocation(0);
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1007986BC(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_1007A7DFC(v114 + v25 * v24, v19, type metadata accessor for WildModeTrackingLocation);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_1007A7DFC(v27, v120, type metadata accessor for WildModeTrackingLocation);
      v30 = *(v9 + 28);
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_1007A810C(v29, type metadata accessor for WildModeTrackingLocation);
      result = sub_1007A810C(v19, type metadata accessor for WildModeTrackingLocation);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_1007A7DFC(v32, v19, type metadata accessor for WildModeTrackingLocation);
        v33 = v120;
        sub_1007A7DFC(v5, v120, type metadata accessor for WildModeTrackingLocation);
        v34 = *(v121 + 28);
        v35 = static Date.< infix(_:_:)() & 1;
        sub_1007A810C(v33, type metadata accessor for WildModeTrackingLocation);
        result = sub_1007A810C(v19, type metadata accessor for WildModeTrackingLocation);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_1007A91C8(v42 + v41, v111, type metadata accessor for WildModeTrackingLocation);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1007A91C8(v111, v42 + v36, type metadata accessor for WildModeTrackingLocation);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_1007A7DFC(v5, v19, type metadata accessor for WildModeTrackingLocation);
    v96 = v120;
    sub_1007A7DFC(v93, v120, type metadata accessor for WildModeTrackingLocation);
    v97 = *(v9 + 28);
    a4 = static Date.< infix(_:_:)();
    sub_1007A810C(v96, type metadata accessor for WildModeTrackingLocation);
    result = sub_1007A810C(v19, type metadata accessor for WildModeTrackingLocation);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_1007986BC(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100B31E68(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_100B31DDC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for WildModeTrackingLocation;
    v98 = v119;
    sub_1007A91C8(v5, v119, type metadata accessor for WildModeTrackingLocation);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1007A91C8(v98, v93, type metadata accessor for WildModeTrackingLocation);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_1007986BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for WildModeTrackingLocation(0);
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1007A7DFC(v33, v47, type metadata accessor for WildModeTrackingLocation);
          v35 = v48;
          sub_1007A7DFC(v29, v48, type metadata accessor for WildModeTrackingLocation);
          v36 = *(v31 + 28);
          v37 = static Date.< infix(_:_:)();
          sub_1007A810C(v35, type metadata accessor for WildModeTrackingLocation);
          sub_1007A810C(v34, type metadata accessor for WildModeTrackingLocation);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1007A7DFC(a2, v47, type metadata accessor for WildModeTrackingLocation);
        v22 = v48;
        sub_1007A7DFC(a4, v48, type metadata accessor for WildModeTrackingLocation);
        v23 = *(v49 + 28);
        v24 = static Date.< infix(_:_:)();
        sub_1007A810C(v22, type metadata accessor for WildModeTrackingLocation);
        sub_1007A810C(v21, type metadata accessor for WildModeTrackingLocation);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB8C(&v52, &v51, &v50);
  return 1;
}

void sub_100798BEC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v53 = &v47 - v8;
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v51 = &v47 - v11;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v47 - v14;
  v16 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v47 - v18;
  v20 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v25 = [a1 data];
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  sub_100497060(v26, v28, &v55);
  v29 = v56;
  if (v56 >> 60 == 15)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for TrackingAvoidanceError(0);
    v54 = 3;
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v31;
    *(inited + 48) = 0xD00000000000001ALL;
    *(inited + 56) = 0x800000010135F300;
    sub_10090403C(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = v55;
    v33 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 3, v33);
  }

  else
  {
    v49 = a2;
    v50 = a3;
    v34 = v55;
    v35 = *(*(a2 + 16) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v36 = type metadata accessor for UUID();
    v37 = 1;
    (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
    v47 = v34;
    v48 = v29;
    v38 = sub_1012DD334(v34, v29, v15);
    v39 = v38[2];
    if (v39)
    {
      sub_1007A7DFC(v38 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * (v39 - 1), v19, type metadata accessor for BeaconKeyManager.IndexInformation);
      v37 = 0;
    }

    sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    (*(v21 + 56))(v19, v37, 1, v20);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_10000B3A8(v19, &unk_1016C1120, &qword_1013C49D0);
      v40 = v50;
    }

    else
    {
      sub_1007A91C8(v19, v24, type metadata accessor for BeaconKeyManager.IndexInformation);
      v41 = v51;
      sub_100AA33AC(v24, v51);
      v42 = type metadata accessor for OwnedBeaconRecord();
      if ((*(*(v42 - 8) + 48))(v41, 1, v42) != 1)
      {
        sub_10000B3A8(v41, &unk_1016A9A20, &qword_10138B280);
        (*(v50 + 16))(v50, 0, 0);
        sub_100006654(v47, v48);
        sub_1007A810C(v24, type metadata accessor for BeaconKeyManager.IndexInformation);
        return;
      }

      sub_1007A810C(v24, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_10000B3A8(v41, &unk_1016A9A20, &qword_10138B280);
      v40 = v50;
    }

    v43 = v53;
    sub_100780A4C(v52, v53);
    v44 = type metadata accessor for Date();
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    sub_10000B3A8(v43, &unk_101696900, &unk_10138B1E0);
    if (v45 == 1)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    (*(v40 + 16))(v40, v46, 0);
    sub_100006654(v47, v48);
  }
}

uint64_t sub_100799304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10079936C(uint64_t a1)
{
  v13[3] = type metadata accessor for UnwantedTrackingUserNotification();
  v13[4] = &off_1016159B8;
  v2 = sub_1000280DC(v13);
  sub_1007A7DFC(a1, v2, type metadata accessor for UnwantedTrackingUserNotification);
  v3 = *v2;
  v4 = objc_allocWithZone(UNUserNotificationCenter);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithBundleIdentifier:v5];

  sub_10001F280(v13, v12);
  v7 = swift_allocObject();
  sub_100031694(v12, v7 + 16);
  *(v7 + 56) = v6;
  v11[4] = sub_10079A23C;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100888E9C;
  v11[3] = &unk_101632688;
  v8 = _Block_copy(v11);
  v9 = v6;

  [v9 getDeliveredNotificationsWithCompletionHandler:v8];
  _Block_release(v8);

  return sub_100007BAC(v13);
}

void sub_100799528(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v84 = a1;
  v75 = type metadata accessor for UnwantedTrackingUserNotification();
  v4 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v81 = &v65 - v9;
  v80 = type metadata accessor for WildModeAssociationRecord(0);
  v86 = *(v80 - 8);
  v10 = *(v86 + 8);
  __chkstk_darwin(v80);
  v87 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v83 = &v65 - v14;
  v15 = type metadata accessor for MACAddress();
  v74 = *(v15 - 8);
  v16 = *(v74 + 64);
  __chkstk_darwin(v15);
  v88 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v18 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10138BBE0;
    v20 = *a2;
    v82 = a2;
    v90 = v20;
    sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v19 + 56) = &type metadata for String;
    v24 = sub_100008C00();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v24;
    v66 = v24;
    *(v19 + 64) = v24;
    *(v19 + 72) = 0xD00000000000003BLL;
    *(v19 + 80) = 0x800000010135F320;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v25 = qword_10177C3F8;
    a2 = swift_allocObject();
    v69 = xmmword_101385D80;
    *(a2 + 16) = xmmword_101385D80;
    v26 = v84;
    if (v84 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a2 + 56) = &type metadata for Int;
    *(a2 + 64) = &protocol witness table for Int;
    *(a2 + 32) = v27;
    os_log(_:dso:log:_:_:)();

    v67 = v18;
    v68 = v25;
    if (!(v26 >> 62))
    {
      v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        return;
      }

      goto LABEL_10;
    }

    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (!v29)
    {
      break;
    }

LABEL_10:
    v30 = 0;
    v79 = v26 & 0xC000000000000001;
    v78 = v26 & 0xFFFFFFFFFFFFFF8;
    v76 = (v74 + 48);
    v73 = (v74 + 32);
    v72 = (v86 + 48);
    v77 = v85 + 16;
    v74 += 8;
    *&v28 = 67109120;
    v70 = v28;
    v71 = v6;
    while (v79)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_34;
      }

LABEL_14:
      v86 = v31;
      v33 = [v31 trackingIdentifier];
      v34 = [v33 address];

      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v83;
      MACAddress.init(data:type:)();
      if ((*v76)(v35, 1, v15) == 1)
      {
        sub_10000B3A8(v35, &qword_1016A40D0, &unk_10138BE70);
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        type metadata accessor for TrackingAvoidanceError(0);
        v89 = 3;
        sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
        inited = swift_initStackObject();
        *(inited + 16) = v69;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v53;
        *(inited + 48) = 0xD00000000000001ALL;
        *(inited + 56) = 0x800000010135F300;
        sub_10090403C(inited);
        swift_setDeallocating();
        sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v54 = v90;
        v55 = _convertErrorToNSError(_:)();
        (*(v85 + 16))(v85, v55);

        return;
      }

      v36 = v88;
      (*v73)(v88, v35, v15);
      v37 = *(v82 + 16);
      v38 = v81;
      sub_10125FD10(v36, v81);
      if ((*v72)(v38, 1, v80) == 1)
      {
        sub_10000B3A8(v38, &unk_1016C7C90, &qword_1013BB4B0);
        static os_log_type_t.error.getter();
        v56 = swift_allocObject();
        *(v56 + 16) = v69;
        v57 = v88;
        v58 = MACAddress.description.getter();
        v59 = v66;
        *(v56 + 56) = &type metadata for String;
        *(v56 + 64) = v59;
        *(v56 + 32) = v58;
        *(v56 + 40) = v60;
        os_log(_:dso:log:_:_:)();

        type metadata accessor for TrackingAvoidanceError(0);
        v89 = 10;
        sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
        v61 = swift_initStackObject();
        *(v61 + 16) = v69;
        *(v61 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v61 + 72) = &type metadata for String;
        *(v61 + 40) = v62;
        *(v61 + 48) = 0xD000000000000021;
        *(v61 + 56) = 0x800000010135F3D0;
        sub_10090403C(v61);
        swift_setDeallocating();
        sub_10000B3A8(v61 + 32, &unk_101695C20, &unk_101386D90);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v63 = v90;
        v64 = _convertErrorToNSError(_:)();
        (*(v85 + 16))(v85, v64);

        (*v74)(v57, v15);
        return;
      }

      v39 = v29;
      v40 = v87;
      sub_1007A91C8(v38, v87, type metadata accessor for WildModeAssociationRecord);
      v41 = *(v37 + 168);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for URL();
      v43 = sub_1000076D4(v42, qword_10177A8D0);
      v44 = *(v41 + 16);
      v45 = __chkstk_darwin(v43);
      *(&v65 - 4) = v41;
      *(&v65 - 3) = v40;
      *(&v65 - 2) = v45;
      OS_dispatch_queue.sync<A>(execute:)();
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000076D4(v46, qword_10177BA08);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      v29 = v39;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = v70;
        _os_log_impl(&_mh_execute_header, v47, v48, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v49, 8u);
      }

      ThrottledDarwinPoster.post(bypassRateLimit:)(0);
      v6 = v71;
      if (v50)
      {
      }

      v26 = v84;
      sub_100A8AF58();
      v51 = v75;
      a2 = v87;
      sub_1007A7DFC(v87, &v6[*(v75 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v6 = 2;
      v6[*(v51 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      sub_10079936C(v6);
      (*(v85 + 16))(v85, 0);

      sub_1007A810C(v6, type metadata accessor for UnwantedTrackingUserNotification);
      (*v74)(v88, v15);
      sub_1007A810C(a2, type metadata accessor for WildModeAssociationRecord);
      ++v30;
      if (v32 == v29)
      {
        return;
      }
    }

    if (v30 >= *(v78 + 16))
    {
      goto LABEL_35;
    }

    v31 = *(v26 + 8 * v30 + 32);
    v32 = v30 + 1;
    if (!__OFADD__(v30, 1))
    {
      goto LABEL_14;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }
}

uint64_t sub_10079A248(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, uint64_t, uint64_t), void *a5, int a6, void (*a7)(void *), int64_t a8)
{
  v10 = v8;
  v261 = a7;
  v257 = a6;
  v255 = a4;
  v247 = a3;
  v246 = a2;
  v263 = a1;
  v256 = v10;
  v245 = *v10;
  v13 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v243 = *(v13 - 8);
  v244 = *(v243 + 64);
  __chkstk_darwin(v13 - 8);
  v253 = &v231 - v14;
  v15 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v236 = &v231 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v234 = &v231 - v20;
  __chkstk_darwin(v19);
  v239 = (&v231 - v21);
  v22 = type metadata accessor for MACAddress();
  v264 = *(v22 - 8);
  v265 = v22;
  v23 = *(v264 + 64);
  v24 = __chkstk_darwin(v22);
  v252 = &v231 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v251 = &v231 - v27;
  v28 = __chkstk_darwin(v26);
  v240 = &v231 - v29;
  v30 = __chkstk_darwin(v28);
  v235 = &v231 - v31;
  v32 = __chkstk_darwin(v30);
  v254 = &v231 - v33;
  v242 = v34;
  __chkstk_darwin(v32);
  v36 = &v231 - v35;
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  v267 = v37;
  v268 = v38;
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v250 = &v231 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v258 = &v231 - v43;
  v241 = v44;
  __chkstk_darwin(v42);
  v266 = &v231 - v45;
  v270 = type metadata accessor for WildModeTrackingLocation(0);
  v46 = *(v270 - 8);
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v270);
  v269 = (&v231 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __chkstk_darwin(v48);
  v52 = &v231 - v51;
  __chkstk_darwin(v50);
  v54 = (&v231 - v53);
  v259 = a5;
  v55 = [a5 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v56 >> 62)
  {
    goto LABEL_85;
  }

  for (i = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v262 = a8;
    v260 = v36;
    if (i)
    {
      v272 = _swiftEmptyArrayStorage;
      sub_101124B70(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_87;
      }

      v9 = 0;
      v58 = v272;
      do
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v59 = *(v56 + 8 * v9 + 32);
        }

        v60 = v59;
        [v59 latitude];
        v62 = v61;
        [v60 longitude];
        v64 = v63;
        [v60 horizontalAccuracy];
        v66 = v65;
        v67 = [v60 timestamp];
        v68 = v54 + *(v270 + 28);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        *v54 = v62;
        v54[1] = v64;
        v54[2] = v66;
        v272 = v58;
        v70 = v58[2];
        v69 = v58[3];
        if (v70 >= v69 >> 1)
        {
          sub_101124B70(v69 > 1, v70 + 1, 1);
          v58 = v272;
        }

        ++v9;
        v58[2] = v70 + 1;
        sub_1007A91C8(v54, v58 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v70, type metadata accessor for WildModeTrackingLocation);
      }

      while (i != v9);
    }

    v72 = sub_10112A9D8(v71);

    v73 = v72[2];
    if (v73)
    {
      a8 = sub_1003A87B8(v72[2], 0);
      v74 = sub_1003AA07C(&v272, a8 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v73, v72);
      sub_1000128F8();
      if (v74 == v73)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    a8 = _swiftEmptyArrayStorage;
LABEL_16:
    v272 = a8;

    sub_100780E54(&v272);

    v54 = v272;
    v36 = v272[2];
    if (!v36)
    {
      break;
    }

    v75 = 0;
    v76 = _swiftEmptyArrayStorage;
    while (v75 < v54[2])
    {
      v56 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v9 = *(v46 + 72);
      sub_1007A7DFC(v54 + v56 + v9 * v75, v52, type metadata accessor for WildModeTrackingLocation);
      if (sub_1010E16B4())
      {
        sub_1007A810C(v52, type metadata accessor for WildModeTrackingLocation);
      }

      else
      {
        sub_1007A91C8(v52, v269, type metadata accessor for WildModeTrackingLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v272 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124B70(0, v76[2] + 1, 1);
          v76 = v272;
        }

        a8 = v76[2];
        v78 = v76[3];
        v79 = v76;
        if (a8 >= v78 >> 1)
        {
          sub_101124B70(v78 > 1, a8 + 1, 1);
          v79 = v272;
        }

        v79[2] = a8 + 1;
        sub_1007A91C8(v269, v79 + v56 + a8 * v9, type metadata accessor for WildModeTrackingLocation);
        v76 = v79;
      }

      if (v36 == ++v75)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_85:
    ;
  }

  v76 = _swiftEmptyArrayStorage;
LABEL_28:
  v269 = v76;

  v80 = v266;
  UUID.init()();
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v270 = type metadata accessor for Logger();
  sub_1000076D4(v270, qword_10177B2D0);
  v81 = v268;
  v82 = *(v268 + 16);
  v83 = v258;
  v84 = v80;
  v85 = v267;
  v238 = v268 + 16;
  v237 = v82;
  v82(v258, v84, v267);
  v86 = v264;
  v87 = *(v264 + 16);
  v88 = v260;
  v89 = v265;
  v249 = v264 + 16;
  v248 = v87;
  (v87)(v260, v263, v265);
  v90 = v259;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();
  v93 = os_log_type_enabled(v91, v92);
  v259 = v90;
  if (v93)
  {
    v233 = v92;
    v94 = v83;
    v95 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    v272 = v232;
    *v95 = 136447234;
    sub_100799304(&qword_101696930, &type metadata accessor for UUID);
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v98 = v97;
    i = *(v81 + 8);
    (i)(v94, v85);
    v99 = sub_1000136BC(v96, v98, &v272);

    *(v95 + 4) = v99;
    *(v95 + 12) = 2082;
    sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v101;
    v260 = *(v86 + 8);
    v260(v88, v89);
    v103 = sub_1000136BC(v100, v102, &v272);

    v104 = v257;
    v105 = 0xE500000000000000;
    *(v95 + 14) = v103;
    *(v95 + 22) = 2082;
    v106 = 0x656C707061;
    v107 = 0xE700000000000000;
    v108 = 0x6579656B776168;
    v109 = 0xE400000000000000;
    v110 = 1701602664;
    if (v104 != 3)
    {
      v110 = 0;
      v109 = 0xE000000000000000;
    }

    if (v104 != 2)
    {
      v108 = v110;
      v107 = v109;
    }

    if (v104)
    {
      v106 = 0x6E6169727564;
      v105 = 0xE600000000000000;
    }

    if (v104 <= 1)
    {
      v111 = v106;
    }

    else
    {
      v111 = v108;
    }

    if (v104 <= 1)
    {
      v112 = v105;
    }

    else
    {
      v112 = v107;
    }

    v113 = sub_1000136BC(v111, v112, &v272);

    *(v95 + 24) = v113;
    *(v95 + 32) = 256;
    v114 = v259;
    v115 = [v259 trackingIdentifier];
    LOBYTE(v113) = [v115 networkID];

    *(v95 + 34) = v113;
    *(v95 + 35) = 1024;
    v116 = [v114 trackingIdentifier];
    LODWORD(v113) = [v116 isPosh];

    *(v95 + 37) = v113;
    v90 = v114;

    _os_log_impl(&_mh_execute_header, v91, v233, "Generated synthetic UUID %{public}s for %{public}s\ntype %{public}s networkID: %hhu isPosh: %{BOOL}d", v95, 0x29u);
    swift_arrayDestroy();
  }

  else
  {

    v260 = *(v86 + 8);
    v260(v88, v89);
    i = *(v81 + 8);
    (i)(v83, v85);
  }

  v117 = [v90 trackingIdentifier];
  v118 = [v117 isPosh];

  v119 = [v90 trackingIdentifier];
  v120 = [v119 networkID];

  v121 = [v90 trackingIdentifier];
  v122 = v90;
  v123 = [v121 status];

  if (v120 == 1)
  {
    v124 = 5;
  }

  else
  {
    v124 = 6;
  }

  if (v118)
  {
    v125 = v124;
  }

  else
  {
    v125 = (v123 >> 4) & 3;
  }

  v126 = [v122 trackingIdentifier];
  v127 = [v126 address];

  v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v128;

  if (qword_101694918 != -1)
  {
    swift_once();
  }

  v270 = sub_1000076D4(v270, qword_1016A9318);
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    *v131 = 136315394;
    *(v131 + 4) = sub_1000136BC(0xD00000000000006DLL, 0x800000010135FB70, &v272);
    *(v131 + 12) = 2082;
    v132 = sub_100781578(v125);
    v134 = v9;
    v135 = sub_1000136BC(v132, v133, &v272);

    *(v131 + 14) = v135;
    v9 = v134;
    _os_log_impl(&_mh_execute_header, v129, v130, "%s Advertisement type: %{public}s", v131, 0x16u);
    swift_arrayDestroy();
  }

  if (v125 == 4)
  {

    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v272 = v166;
      *v165 = 136315138;
      *(v165 + 4) = sub_1000136BC(0xD00000000000006DLL, 0x800000010135FB70, &v272);
      _os_log_impl(&_mh_execute_header, v163, v164, "%s unexpected advertisement type!", v165, 0xCu);
      sub_100007BAC(v166);

LABEL_76:
    }

LABEL_77:

    v149 = v267;
LABEL_78:
    type metadata accessor for TrackingAvoidanceError(0);
    v271 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v197 = v272;
    v261(v272);

    sub_100016590(v52, v9);
    return (i)(v266, v149);
  }

  if (v125 != 6)
  {
    sub_100017D5C(v52, v9);
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.default.getter();
    sub_100016590(v52, v9);
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v272 = v170;
      *v169 = 136446210;
      v171 = Data.hexString.getter();
      v173 = v52;
      v174 = sub_1000136BC(v171, v172, &v272);

      *(v169 + 4) = v174;
      v52 = v173;
      _os_log_impl(&_mh_execute_header, v167, v168, "Sanitizing MAC address: %{public}s", v169, 0xCu);
      sub_100007BAC(v170);
    }

    v175 = v264;
    v176 = v240;
    v177 = v239;
    sub_100017D5C(v52, v9);
    MACAddress.init(addressToSanitize:type:)();
    v151 = v265;
    if ((*(v175 + 48))(v177, 1, v265) != 1)
    {
      v258 = v52;
      v178 = v235;
      v239 = *(v175 + 32);
      v239(v235, v177, v151);
      v248(v176, v178, v151);
      v179 = Logger.logObject.getter();
      v180 = static os_log_type_t.default.getter();
      v181 = os_log_type_enabled(v179, v180);
      v240 = ((v175 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
      if (v181)
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v272 = v183;
        *v182 = 136446210;
        sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
        v184 = dispatch thunk of CustomStringConvertible.description.getter();
        v185 = v176;
        v187 = v186;
        v260(v185, v265);
        v188 = sub_1000136BC(v184, v187, &v272);

        *(v182 + 4) = v188;
        _os_log_impl(&_mh_execute_header, v179, v180, "Sanitized MAC address: %{public}s", v182, 0xCu);
        sub_100007BAC(v183);

        v151 = v265;
      }

      else
      {

        v260(v176, v151);
      }

      v149 = v267;
      v201 = v254;
      v270 = v9;
      v239(v254, v178, v151);
      v154 = v268;
      v152 = v264;
      v200 = v201;
      goto LABEL_83;
    }

    goto LABEL_74;
  }

  if (qword_101694F58 != -1)
  {
LABEL_87:
    swift_once();
  }

  v136 = qword_10177C218;
  v137 = [objc_opt_self() sharedInstance];
  v138 = [v137 isInternalBuild];

  if (!v138 || (v139 = String._bridgeToObjectiveC()(), v140 = [v136 BOOLForKey:v139], v139, !v140))
  {
    sub_100017D5C(v52, v9);
    v177 = v236;
    MACAddress.init(data:type:)();
    v189 = v264;
    v151 = v265;
    if ((*(v264 + 48))(v177, 1, v265) != 1)
    {
      v258 = v52;
      v270 = v9;
      v199 = *(v189 + 32);
      v240 = ((v189 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
      v200 = v254;
      v199(v254, v177, v151);
      v152 = v189;
      v149 = v267;
      v154 = v268;
      goto LABEL_83;
    }

LABEL_74:

    sub_10000B3A8(v177, &qword_1016A40D0, &unk_10138BE70);
    sub_100017D5C(v52, v9);
    v163 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    sub_100016590(v52, v9);
    if (os_log_type_enabled(v163, v190))
    {
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v272 = v192;
      *v191 = 136315138;
      v193 = Data.hexString.getter();
      v195 = i;
      v196 = sub_1000136BC(v193, v194, &v272);

      *(v191 + 4) = v196;
      i = v195;
      _os_log_impl(&_mh_execute_header, v163, v190, "Invalid address %s!", v191, 0xCu);
      sub_100007BAC(v192);

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  sub_100017D5C(v52, v9);
  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.default.getter();
  sub_100016590(v52, v9);
  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v272 = v144;
    *v143 = 136446210;
    v145 = Data.hexString.getter();
    v147 = v52;
    v148 = sub_1000136BC(v145, v146, &v272);

    *(v143 + 4) = v148;
    v52 = v147;
    _os_log_impl(&_mh_execute_header, v141, v142, "ForceReadingHawkeyeAIS is enabled. Sanitizing MAC address: %{public}s", v143, 0xCu);
    sub_100007BAC(v144);
  }

  v149 = v267;
  v150 = v234;
  sub_100017D5C(v52, v9);
  MACAddress.init(addressToSanitize:type:)();
  v152 = v264;
  v151 = v265;
  v153 = (*(v264 + 48))(v150, 1, v265);
  v154 = v268;
  if (v153 == 1)
  {

    sub_10000B3A8(v150, &qword_1016A40D0, &unk_10138BE70);
    sub_100017D5C(v52, v9);
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();
    sub_100016590(v52, v9);
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v272 = v158;
      *v157 = 136315138;
      v159 = Data.hexString.getter();
      v161 = i;
      v162 = sub_1000136BC(v159, v160, &v272);

      *(v157 + 4) = v162;
      i = v161;
      _os_log_impl(&_mh_execute_header, v155, v156, "Invalid address %s!", v157, 0xCu);
      sub_100007BAC(v158);
      v149 = v267;
    }

    goto LABEL_78;
  }

  v258 = v52;
  v270 = v9;
  v202 = *(v152 + 32);
  v240 = ((v152 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
  v200 = v254;
  v202(v254, v150, v151);
LABEL_83:
  sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v260 = swift_allocBox();
  v204 = v203;
  v205 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v205 - 8) + 56))(v204, 1, 1, v205);
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v239 = swift_allocBox();
  v207 = v206;
  v208 = type metadata accessor for AccessoryProductInfo();
  (*(*(v208 - 8) + 56))(v207, 1, 1, v208);
  v209 = swift_allocObject();
  swift_weakInit();
  v237(v250, v266, v149);
  v210 = v248;
  v248(v251, v200, v151);
  sub_1000D2A70(v255, v253, &unk_101698C30, &unk_101392630);
  v210(v252, v263, v151);
  v211 = (*(v154 + 80) + 32) & ~*(v154 + 80);
  v212 = (v241 + v211 + 7) & 0xFFFFFFFFFFFFFFF8;
  v213 = (v212 + 15) & 0xFFFFFFFFFFFFFFF8;
  v214 = *(v152 + 80);
  v215 = (v214 + v213 + 8) & ~v214;
  v241 = (v242 + *(v243 + 80) + v215) & ~*(v243 + 80);
  v243 = (v244 + v214 + v241) & ~v214;
  v249 = (v243 + v242 + 7) & 0xFFFFFFFFFFFFFFF8;
  v248 = ((v243 + v242 + 23) & 0xFFFFFFFFFFFFFFF8);
  v263 = (v248 + 23) & 0xFFFFFFFFFFFFFFF8;
  v244 = (v263 + 23) & 0xFFFFFFFFFFFFFFF8;
  v216 = v152;
  v217 = swift_allocObject();
  *(v217 + 16) = v209;
  v218 = v259;
  *(v217 + 24) = v259;
  (*(v154 + 32))(v217 + v211, v250, v149);
  *(v217 + v212) = v260;
  *(v217 + v213) = v239;
  v219 = *(v216 + 32);
  v220 = v265;
  v219(v217 + v215, v251, v265);
  sub_1000D2AD8(v253, v217 + v241, &unk_101698C30, &unk_101392630);
  v219(v217 + v243, v252, v220);
  v221 = v217 + v249;
  *v221 = v269;
  v222 = v257;
  *(v221 + 8) = v257;
  v223 = (v248 + v217);
  v224 = v246;
  v225 = v247;
  *v223 = v246;
  v223[1] = v225;
  v226 = v262;
  v227 = (v217 + v263);
  *v227 = v261;
  v227[1] = v226;
  *(v217 + v244) = v245;
  v228 = v218;

  sub_100309400(v224, v225);

  v229 = [v228 trackingIdentifier];
  LOBYTE(v226) = [v229 isPosh];

  v230 = v254;
  sub_10078CE7C(v254, v222, v255, v226, sub_1007A8390, v217);

  sub_100016590(v258, v270);
  (*(v264 + 8))(v230, v220);
  (*(v268 + 8))(v266, v267);
}

uint64_t sub_10079C024(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v108 = a5;
  v110 = a4;
  v111 = a3;
  v109 = a1;
  v6 = type metadata accessor for WildModeAssociationRecord(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v102 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v102 - v15;
  __chkstk_darwin(v14);
  v18 = &v102 - v17;
  v19 = type metadata accessor for UnwantedTrackingUserNotification();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v102 - v25;
  v27 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v102 - v29;
  if (a2)
  {
    return v111(a2);
  }

  v106 = v26;
  v103 = v19;
  v32 = v18;
  v33 = v111;
  v104 = v22;
  v105 = v16;
  v107 = v10;
  v34 = v109;
  v35 = *(v109 + *(v6 + 64));
  v36 = v6;
  if (v35 > 8 || ((1 << v35) & 0x17B) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v51 = *(Strong + 16);

      sub_100A8AF58();
    }
  }

  static os_log_type_t.default.getter();
  v37 = v13;
  v38 = v32;
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  v108 = qword_10177C3F8;
  os_log(_:dso:log:_:_:)();
  if (*(v34 + v36[13]) == 1)
  {
    v39 = v33;
    v40 = 0;
    v41 = v107;
    v42 = v106;
  }

  else
  {
    sub_1000D2A70(v34 + v36[14], v30, &qword_1016A62A0, &unk_101396E10);
    v43 = type metadata accessor for AccessoryMetadata(0);
    v44 = (*(*(v43 - 8) + 48))(v30, 1, v43);
    sub_10000B3A8(v30, &qword_1016A62A0, &unk_101396E10);
    v42 = v106;
    if (v44 == 1)
    {
      if (qword_101694F58 != -1)
      {
        swift_once();
      }

      v45 = qword_10177C218;
      v46 = [objc_opt_self() sharedInstance];
      v47 = [v46 isInternalBuild];

      v39 = v111;
      if (v47)
      {
        v48 = String._bridgeToObjectiveC()();
        v49 = [v45 BOOLForKey:v48];

        v40 = v49 ^ 1;
      }

      else
      {
        v40 = 1;
      }
    }

    else
    {
      v40 = 0;
      v39 = v111;
    }

    v41 = v107;
  }

  sub_1000D2A70(v34 + v36[15], v42, &qword_101697268, &qword_101394FE0);
  v52 = type metadata accessor for AccessoryProductInfo();
  if ((*(*(v52 - 8) + 48))(v42, 1, v52) == 1)
  {
    sub_10000B3A8(v42, &qword_101697268, &qword_101394FE0);
  }

  else
  {
    v53 = *(v42 + *(v52 + 184));
    sub_1007A810C(v42, type metadata accessor for AccessoryProductInfo);
    if (v53 != 2 && (v53 & 1) == 0)
    {
      LODWORD(v104) = 0;
      goto LABEL_35;
    }
  }

  if (v35 <= 3)
  {
    if (v35 == 2)
    {

      if (v40)
      {
LABEL_34:
        LODWORD(v104) = 1;
        goto LABEL_35;
      }

LABEL_28:
      v54 = v103;
      v55 = v104;
      sub_1007A7DFC(v34, &v104[*(v103 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v55 = 2;
      v55[*(v54 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      v114[3] = v54;
      v114[4] = &off_1016159B8;
      v56 = sub_1000280DC(v114);
      sub_1007A7DFC(v55, v56, type metadata accessor for UnwantedTrackingUserNotification);
      v57 = *v56;
      v58 = objc_allocWithZone(UNUserNotificationCenter);
      v59 = String._bridgeToObjectiveC()();

      v60 = [v58 initWithBundleIdentifier:v59];

      v61 = sub_10111AFE0(v56);
      v62 = v56 + *(v54 + 20);
      UUID.uuidString.getter();
      v63 = v61;
      v64 = String._bridgeToObjectiveC()();

      v65 = [objc_opt_self() requestWithIdentifier:v64 content:v63 trigger:0 destinations:7];

      sub_10001F280(v114, v113);
      v66 = swift_allocObject();
      sub_100031694(v113, v66 + 16);
      *(v66 + 56) = 0;
      *(v66 + 64) = 0;
      aBlock[4] = sub_1007A9F68;
      aBlock[5] = v66;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10077732C;
      aBlock[3] = &unk_101632D40;
      v67 = _Block_copy(aBlock);

      [v60 addNotificationRequest:v65 withCompletionHandler:v67];

      _Block_release(v67);
      sub_100007BAC(v114);
      sub_1007A810C(v55, type metadata accessor for UnwantedTrackingUserNotification);
      goto LABEL_52;
    }

LABEL_33:
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40 & 1 | ((v68 & 1) == 0))
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (v35 < 8)
  {
    goto LABEL_33;
  }

  LODWORD(v104) = 1;
LABEL_35:
  v106 = v37;
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_1000076D4(v69, qword_1016A9318);
  sub_1007A7DFC(v34, v38, type metadata accessor for WildModeAssociationRecord);
  v70 = v34;
  v71 = v34;
  v72 = v105;
  sub_1007A7DFC(v70, v105, type metadata accessor for WildModeAssociationRecord);
  v73 = v106;
  sub_1007A7DFC(v71, v106, type metadata accessor for WildModeAssociationRecord);
  sub_1007A7DFC(v71, v41, type metadata accessor for WildModeAssociationRecord);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v76 = 136447490;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID);
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = v78;
    sub_1007A810C(v38, type metadata accessor for WildModeAssociationRecord);
    v80 = sub_1000136BC(v77, v79, aBlock);

    *(v76 + 4) = v80;
    *(v76 + 12) = 1024;
    *(v76 + 14) = v104;
    *(v76 + 18) = 1024;
    *(v76 + 20) = v40;
    *(v76 + 24) = 2082;
    v81 = *(v72 + v36[13]);
    v82 = 0xE500000000000000;
    v83 = 0x656C707061;
    v84 = 0xE700000000000000;
    v85 = 0x6579656B776168;
    v86 = 0xE400000000000000;
    v87 = 1701602664;
    if (v81 != 3)
    {
      v87 = 7104878;
      v86 = 0xE300000000000000;
    }

    if (v81 != 2)
    {
      v85 = v87;
      v84 = v86;
    }

    if (*(v72 + v36[13]))
    {
      v83 = 0x6E6169727564;
      v82 = 0xE600000000000000;
    }

    if (*(v72 + v36[13]) <= 1u)
    {
      v88 = v83;
    }

    else
    {
      v88 = v85;
    }

    if (*(v72 + v36[13]) <= 1u)
    {
      v89 = v82;
    }

    else
    {
      v89 = v84;
    }

    sub_1007A810C(v72, type metadata accessor for WildModeAssociationRecord);
    v90 = sub_1000136BC(v88, v89, aBlock);

    *(v76 + 26) = v90;
    *(v76 + 34) = 2082;
    v91 = v36[7];
    type metadata accessor for MACAddress();
    sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
    v92 = v106;
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v94;
    sub_1007A810C(v92, type metadata accessor for WildModeAssociationRecord);
    v96 = sub_1000136BC(v93, v95, aBlock);

    *(v76 + 36) = v96;
    *(v76 + 44) = 2082;
    v97 = v107;
    LOBYTE(v114[0]) = v107[v36[16]];
    sub_1000BC4D4(&qword_1016A9630, &qword_1013BB5B8);
    v98 = String.init<A>(describing:)();
    v100 = v99;
    sub_1007A810C(v97, type metadata accessor for WildModeAssociationRecord);
    v101 = sub_1000136BC(v98, v100, aBlock);

    *(v76 + 46) = v101;
    _os_log_impl(&_mh_execute_header, v74, v75, "Not showing UT alert for %{public}s,\nsurfaceUt = %{BOOL}d isUnknown = %{BOOL}d,\ndeviceType = %{public}s\naddress = %{public}s,\nobservationState = %{public}s", v76, 0x36u);
    swift_arrayDestroy();

    v39 = v111;
  }

  else
  {

    sub_1007A810C(v41, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v73, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v72, type metadata accessor for WildModeAssociationRecord);
    sub_1007A810C(v38, type metadata accessor for WildModeAssociationRecord);
    v39 = v111;
  }

LABEL_52:
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  return v39(0);
}

uint64_t sub_10079CDF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), void (*a10)(unint64_t, _BYTE *, uint64_t), uint64_t a11, uint64_t a12)
{
  v199 = a8;
  v200 = a2;
  v195 = a6;
  v196 = a7;
  v193 = a4;
  v194 = a5;
  v197 = a12;
  v13 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v161 = &v151[-v15];
  v165 = sub_1000BC4D4(&qword_1016A94D0, &qword_1013BB4C0);
  v164 = *(v165 - 8);
  v16 = *(v164 + 64);
  __chkstk_darwin(v165);
  v162 = &v151[-v17];
  v168 = sub_1000BC4D4(&qword_1016A94D8, &qword_1013BB4C8);
  v166 = *(v168 - 8);
  v18 = *(v166 + 64);
  __chkstk_darwin(v168);
  v163 = &v151[-v19];
  v170 = sub_1000BC4D4(&qword_1016A94E0, &qword_1013BB4D0);
  v169 = *(v170 - 8);
  v20 = *(v169 + 64);
  __chkstk_darwin(v170);
  v167 = &v151[-v21];
  v175 = sub_1000BC4D4(&qword_1016A94E8, &qword_1013BB4D8);
  v172 = *(v175 - 8);
  v22 = *(v172 + 64);
  __chkstk_darwin(v175);
  v171 = &v151[-v23];
  v180 = sub_1000BC4D4(&qword_1016A94F0, &qword_1013BB4E0);
  v178 = *(v180 - 8);
  v24 = *(v178 + 64);
  __chkstk_darwin(v180);
  v174 = &v151[-v25];
  v179 = sub_1000BC4D4(&qword_1016A94F8, &qword_1013BB4E8);
  v177 = *(v179 - 8);
  v26 = *(v177 + 64);
  __chkstk_darwin(v179);
  v173 = &v151[-v27];
  v182 = sub_1000BC4D4(&qword_1016A9500, &qword_1013BB4F0);
  v181 = *(v182 - 8);
  v28 = *(v181 + 64);
  __chkstk_darwin(v182);
  v176 = &v151[-v29];
  v30 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v155 = *(v30 - 8);
  v31 = *(v155 + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v157 = &v151[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = v33;
  __chkstk_darwin(v32);
  v158 = &v151[-v34];
  v35 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v186 = &v151[-v37];
  v38 = type metadata accessor for MACAddress();
  v189 = *(v38 - 8);
  v190 = v38;
  v39 = *(v189 + 64);
  v40 = __chkstk_darwin(v38);
  v154 = &v151[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = v41;
  __chkstk_darwin(v40);
  v188 = &v151[-v42];
  v43 = type metadata accessor for WildModeAssociationRecord(0);
  v191 = *(v43 - 8);
  v44 = *(v191 + 64);
  v45 = __chkstk_darwin(v43);
  v185 = &v151[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __chkstk_darwin(v45);
  v184 = &v151[-v48];
  v192 = v49;
  __chkstk_darwin(v47);
  v51 = &v151[-v50];
  v187 = sub_1000BC4D4(&qword_1016A9508, &qword_1013BB4F8);
  v183 = *(v187 - 1);
  v52 = *(v183 + 8);
  __chkstk_darwin(v187);
  v54 = &v151[-v53];
  v55 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55 - 8);
  v58 = &v151[-v57];
  v59 = swift_allocObject();
  v159 = a9;
  v59[2] = a9;
  v59[3] = a10;
  v198 = v59;
  v60 = v197;
  v59[4] = a11;
  v59[5] = v60;
  sub_1000D2A70(a1 + *(v43 + 56), v58, &qword_1016A62A0, &unk_101396E10);
  v61 = type metadata accessor for AccessoryMetadata(0);
  v62 = (*(*(v61 - 8) + 48))(v58, 1, v61);
  v160 = a10;

  sub_10000B3A8(v58, &qword_1016A62A0, &unk_101396E10);
  if (v62 != 1)
  {
    v77 = a1;
    sub_1007A7DFC(a1, v51, type metadata accessor for WildModeAssociationRecord);
    Just.init(_:)();
    sub_1000041A4(&qword_1016A9588, &qword_1016A9508, &qword_1013BB4F8);
    v78 = v187;
    v79 = Publisher.eraseToAnyPublisher()();
    (*(v183 + 1))(v54, v78);

    v80 = v77;
    v81 = v51;
LABEL_30:
    v201 = v79;
    sub_1007A7DFC(v80, v81, type metadata accessor for WildModeAssociationRecord);
    v143 = (*(v191 + 80) + 80) & ~*(v191 + 80);
    v144 = swift_allocObject();
    v145 = v200;
    v144[2] = v199;
    v144[3] = v145;
    v146 = v194;
    v144[4] = v193;
    v144[5] = v146;
    v147 = v196;
    v144[6] = v195;
    v144[7] = v147;
    v148 = v198;
    v144[8] = sub_1007A923C;
    v144[9] = v148;
    sub_1007A91C8(v81, v144 + v143, type metadata accessor for WildModeAssociationRecord);

    v149 = v145;
    sub_1000BC4D4(&qword_1016A9578, &qword_1013BB518);
    sub_1000041A4(&qword_1016A9580, &qword_1016A9578, &qword_1013BB518);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v187 = v43;
  v183 = v51;
  v197 = a1;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_1000076D4(v63, qword_10177B2D0);
  v64 = v197;
  v65 = v184;
  sub_1007A7DFC(v197, v184, type metadata accessor for WildModeAssociationRecord);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v189;
  v70 = v185;
  if (v68)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v201 = v72;
    *v71 = 136446210;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    sub_1007A810C(v65, type metadata accessor for WildModeAssociationRecord);
    v76 = sub_1000136BC(v73, v75, &v201);

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v66, v67, "Record %{public}s is missing metadata. Attempting to fetch again...", v71, 0xCu);
    sub_100007BAC(v72);
    v64 = v197;
  }

  else
  {

    sub_1007A810C(v65, type metadata accessor for WildModeAssociationRecord);
  }

  v82 = v190;
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v63, qword_1016A9318);
  sub_1007A7DFC(v64, v70, type metadata accessor for WildModeAssociationRecord);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v83, v84))
  {

    sub_1007A810C(v70, type metadata accessor for WildModeAssociationRecord);
    goto LABEL_21;
  }

  v85 = swift_slowAlloc();
  v201 = swift_slowAlloc();
  *v85 = 136315394;
  *(v85 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v201);
  *(v85 + 12) = 2082;
  v86 = *(v70 + v187[21]);
  v87 = (v70 + v187[22]);
  if (v87[1])
  {
    if (*(v70 + v187[21]))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((*(v70 + v187[21]) & 1) == 0)
  {
LABEL_18:
    v88 = *(v70 + v187[13]);
    goto LABEL_20;
  }

  if (*v87 != 1)
  {
LABEL_19:
    v88 = 6;
    goto LABEL_20;
  }

  v88 = 5;
LABEL_20:
  v89 = sub_100781578(v88);
  v91 = v90;
  sub_1007A810C(v70, type metadata accessor for WildModeAssociationRecord);
  v92 = sub_1000136BC(v89, v91, &v201);

  *(v85 + 14) = v92;
  _os_log_impl(&_mh_execute_header, v83, v84, "%s Advertisement type: %{public}s", v85, 0x16u);
  swift_arrayDestroy();

  v64 = v197;
LABEL_21:
  v93 = v186;
  sub_100307708(v186);
  v94 = (*(v69 + 48))(v93, 1, v82);
  v95 = v200;
  if (v94 != 1)
  {
    v101 = *(v69 + 32);
    v185 = (v69 + 32);
    v160 = v101;
    v101(v188, v93, v82);
    LODWORD(v159) = *(v64 + v187[13]);
    v186 = swift_allocBox();
    sub_1007A7DFC(v64, v102, type metadata accessor for WildModeAssociationRecord);
    v103 = [v95 trackingIdentifier];
    v104 = [v103 isPosh];

    if (v104)
    {
      v105 = [v95 trackingIdentifier];
      v106 = [v105 networkID];

      v107 = 2 * (v106 == 2);
      if (v106 == 1)
      {
        v107 = 1;
      }
    }

    else
    {
      v107 = 3;
    }

    LODWORD(v184) = v107;
    v108 = type metadata accessor for SharedBeaconRecord(0);
    v109 = v158;
    (*(*(v108 - 8) + 56))(v158, 1, 1, v108);
    v152 = *(v64 + v187[21]);
    v110 = v154;
    (*(v69 + 16))(v154, v188, v82);
    v111 = v157;
    sub_1000D2A70(v109, v157, &unk_101698C30, &unk_101392630);
    v112 = v82;
    v113 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v114 = v113 + v153;
    v115 = (*(v155 + 80) + v113 + v153 + 1) & ~*(v155 + 80);
    v116 = v115 + v156;
    v117 = swift_allocObject();
    v118 = v199;
    *(v117 + 16) = v199;
    v160(v117 + v113, v110, v112);
    *(v117 + v114) = v159;
    sub_1000D2AD8(v111, v117 + v115, &unk_101698C30, &unk_101392630);
    *(v117 + v116) = v152 & 1;
    v119 = sub_1000BC4D4(&qword_10169E840, &unk_101406170);
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    swift_allocObject();

    v201 = Future.init(_:)();
    v160 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170);
    v122 = Publisher.eraseToAnyPublisher()();
    v185 = v122;

    sub_10000B3A8(v109, &unk_101698C30, &unk_101392630);
    v201 = v122;
    v202 = *(v118 + 24);
    v123 = v202;
    v124 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v125 = v161;
    (*(*(v124 - 8) + 56))(v161, 1, 1, v124);
    v126 = v123;
    v159 = v126;
    sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500);
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
    v127 = v162;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v125, &unk_1016B0FE0, &unk_101391980);

    v128 = swift_allocObject();
    *(v128 + 16) = v186;
    *(v128 + 24) = v118;
    *(v128 + 32) = v184;
    v129 = v197;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016A9520, &qword_1013BB508);
    sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
    sub_1000041A4(&qword_1016A9528, &qword_1016A94D0, &qword_1013BB4C0);
    sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90);
    v130 = v163;
    v131 = v165;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v164 + 8))(v127, v131);
    sub_1000041A4(&qword_1016A9538, &qword_1016A94D8, &qword_1013BB4C8);
    v132 = v167;
    v133 = v168;
    Publisher.timeout(_:queue:customError:)();
    (*(v166 + 8))(v130, v133);
    sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
    sub_1000041A4(&qword_1016A9540, &qword_1016A94E0, &qword_1013BB4D0);
    v134 = v171;
    v135 = v170;
    Publisher.map<A>(_:)();
    (*(v169 + 8))(v132, v135);
    sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
    sub_1000041A4(&qword_1016A9550, &qword_1016A94E8, &qword_1013BB4D8);
    sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510);
    v136 = v174;
    v137 = v175;
    Publisher.catch<A>(_:)();
    (*(v172 + 8))(v134, v137);
    sub_1000041A4(&qword_1016A9560, &qword_1016A94F0, &qword_1013BB4E0);

    v138 = v173;
    v139 = v180;
    Publisher.map<A>(_:)();

    (*(v178 + 8))(v136, v139);
    sub_1000041A4(&qword_1016A9568, &qword_1016A94F8, &qword_1013BB4E8);
    v140 = v176;
    v141 = v179;
    Publisher.replaceError(with:)();
    (*(v177 + 8))(v138, v141);
    sub_1000041A4(&qword_1016A9570, &qword_1016A9500, &qword_1013BB4F0);
    v142 = v182;
    v79 = Publisher.eraseToAnyPublisher()();

    (*(v181 + 8))(v140, v142);
    (*(v189 + 8))(v188, v190);

    v80 = v129;
    v81 = v183;
    goto LABEL_30;
  }

  sub_10000B3A8(v93, &qword_1016A40D0, &unk_10138BE70);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v201 = v99;
    *v98 = 136315138;
    *(v98 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v201);
    _os_log_impl(&_mh_execute_header, v96, v97, "%s unexpected advertisement type!", v98, 0xCu);
    sub_100007BAC(v99);
  }

  sub_1007A7D8C();
  swift_allocError();
  *v100 = 1;
  v159();
}

uint64_t sub_10079E7C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), void (*a10)(unint64_t, _BYTE *, uint64_t))
{
  v194 = a8;
  v195 = a2;
  v190 = a6;
  v191 = a7;
  v188 = a4;
  v189 = a5;
  v11 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v158 = &v146[-v13];
  v162 = sub_1000BC4D4(&qword_1016A94D0, &qword_1013BB4C0);
  v161 = *(v162 - 8);
  v14 = *(v161 + 64);
  __chkstk_darwin(v162);
  v159 = &v146[-v15];
  v165 = sub_1000BC4D4(&qword_1016A94D8, &qword_1013BB4C8);
  v163 = *(v165 - 8);
  v16 = *(v163 + 64);
  __chkstk_darwin(v165);
  v160 = &v146[-v17];
  v167 = sub_1000BC4D4(&qword_1016A94E0, &qword_1013BB4D0);
  v166 = *(v167 - 8);
  v18 = *(v166 + 64);
  __chkstk_darwin(v167);
  v164 = &v146[-v19];
  v172 = sub_1000BC4D4(&qword_1016A94E8, &qword_1013BB4D8);
  v169 = *(v172 - 8);
  v20 = *(v169 + 64);
  __chkstk_darwin(v172);
  v168 = &v146[-v21];
  v177 = sub_1000BC4D4(&qword_1016A94F0, &qword_1013BB4E0);
  v175 = *(v177 - 8);
  v22 = *(v175 + 64);
  __chkstk_darwin(v177);
  v171 = &v146[-v23];
  v176 = sub_1000BC4D4(&qword_1016A94F8, &qword_1013BB4E8);
  v174 = *(v176 - 8);
  v24 = *(v174 + 64);
  __chkstk_darwin(v176);
  v170 = &v146[-v25];
  v179 = sub_1000BC4D4(&qword_1016A9500, &qword_1013BB4F0);
  v178 = *(v179 - 8);
  v26 = *(v178 + 64);
  __chkstk_darwin(v179);
  v173 = &v146[-v27];
  v28 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v152 = *(v28 - 8);
  v29 = *(v152 + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v154 = &v146[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = v31;
  __chkstk_darwin(v30);
  v155 = &v146[-v32];
  v33 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v182 = &v146[-v35];
  v36 = type metadata accessor for MACAddress();
  v184 = *(v36 - 8);
  v185 = v36;
  v37 = *(v184 + 64);
  v38 = __chkstk_darwin(v36);
  v151 = &v146[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = v39;
  __chkstk_darwin(v38);
  v183 = &v146[-v40];
  v41 = type metadata accessor for WildModeAssociationRecord(0);
  v186 = *(v41 - 1);
  v42 = *(v186 + 64);
  v43 = __chkstk_darwin(v41);
  v181 = &v146[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __chkstk_darwin(v43);
  v180 = &v146[-v46];
  v187 = v47;
  __chkstk_darwin(v45);
  v49 = &v146[-v48];
  v50 = sub_1000BC4D4(&qword_1016A9508, &qword_1013BB4F8);
  v192 = *(v50 - 8);
  v51 = *(v192 + 64);
  __chkstk_darwin(v50);
  v53 = &v146[-v52];
  v54 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v57 = &v146[-v56];
  v58 = swift_allocObject();
  v156 = a9;
  *(v58 + 16) = a9;
  *(v58 + 24) = a10;
  v193 = v58;
  sub_1000D2A70(a1 + v41[14], v57, &qword_1016A62A0, &unk_101396E10);
  v59 = type metadata accessor for AccessoryMetadata(0);
  v60 = (*(*(v59 - 8) + 48))(v57, 1, v59);
  v157 = a10;

  sub_10000B3A8(v57, &qword_1016A62A0, &unk_101396E10);
  if (v60 != 1)
  {
    sub_1007A7DFC(a1, v49, type metadata accessor for WildModeAssociationRecord);
    Just.init(_:)();
    sub_1000041A4(&qword_1016A9588, &qword_1016A9508, &qword_1013BB4F8);
    v74 = Publisher.eraseToAnyPublisher()();
    (*(v192 + 8))(v53, v50);

    v75 = a1;
    v76 = v49;
LABEL_30:
    v196 = v74;
    sub_1007A7DFC(v75, v76, type metadata accessor for WildModeAssociationRecord);
    v138 = (*(v186 + 80) + 80) & ~*(v186 + 80);
    v139 = swift_allocObject();
    v140 = v195;
    v139[2] = v194;
    v139[3] = v140;
    v141 = v189;
    v139[4] = v188;
    v139[5] = v141;
    v142 = v191;
    v139[6] = v190;
    v139[7] = v142;
    v143 = v193;
    v139[8] = sub_1007A9F64;
    v139[9] = v143;
    sub_1007A91C8(v76, v139 + v138, type metadata accessor for WildModeAssociationRecord);

    v144 = v140;
    sub_1000BC4D4(&qword_1016A9578, &qword_1013BB518);
    sub_1000041A4(&qword_1016A9580, &qword_1016A9578, &qword_1013BB518);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v149 = v49;
  v192 = a1;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_1000076D4(v61, qword_10177B2D0);
  v62 = v192;
  v63 = v180;
  sub_1007A7DFC(v192, v180, type metadata accessor for WildModeAssociationRecord);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v181;
  if (v66)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v196 = v69;
    *v68 = 136446210;
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID);
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    sub_1007A810C(v63, type metadata accessor for WildModeAssociationRecord);
    v73 = sub_1000136BC(v70, v72, &v196);

    *(v68 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v64, v65, "Record %{public}s is missing metadata. Attempting to fetch again...", v68, 0xCu);
    sub_100007BAC(v69);
    v62 = v192;
  }

  else
  {

    sub_1007A810C(v63, type metadata accessor for WildModeAssociationRecord);
  }

  v77 = v182;
  if (qword_101694918 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v61, qword_1016A9318);
  sub_1007A7DFC(v62, v67, type metadata accessor for WildModeAssociationRecord);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v78, v79))
  {

    sub_1007A810C(v67, type metadata accessor for WildModeAssociationRecord);
    goto LABEL_21;
  }

  v80 = swift_slowAlloc();
  v196 = swift_slowAlloc();
  *v80 = 136315394;
  *(v80 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v196);
  *(v80 + 12) = 2082;
  v81 = *(v67 + v41[21]);
  v82 = (v67 + v41[22]);
  if (v82[1])
  {
    if (*(v67 + v41[21]))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((*(v67 + v41[21]) & 1) == 0)
  {
LABEL_18:
    v83 = *(v67 + v41[13]);
    goto LABEL_20;
  }

  if (*v82 != 1)
  {
LABEL_19:
    v83 = 6;
    goto LABEL_20;
  }

  v83 = 5;
LABEL_20:
  v84 = sub_100781578(v83);
  v86 = v85;
  sub_1007A810C(v67, type metadata accessor for WildModeAssociationRecord);
  v87 = sub_1000136BC(v84, v86, &v196);

  *(v80 + 14) = v87;
  _os_log_impl(&_mh_execute_header, v78, v79, "%s Advertisement type: %{public}s", v80, 0x16u);
  swift_arrayDestroy();

  v62 = v192;
LABEL_21:
  sub_100307708(v77);
  v89 = v184;
  v88 = v185;
  v90 = (*(v184 + 48))(v77, 1, v185);
  v91 = v195;
  if (v90 != 1)
  {
    v97 = *(v89 + 32);
    v181 = (v89 + 32);
    v157 = v97;
    v97(v183, v77, v88);
    LODWORD(v156) = *(v62 + v41[13]);
    v182 = swift_allocBox();
    sub_1007A7DFC(v62, v98, type metadata accessor for WildModeAssociationRecord);
    v99 = [v91 trackingIdentifier];
    v100 = [v99 isPosh];

    if (v100)
    {
      v101 = [v91 trackingIdentifier];
      v102 = [v101 networkID];

      v103 = 2 * (v102 == 2);
      if (v102 == 1)
      {
        v103 = 1;
      }
    }

    else
    {
      v103 = 3;
    }

    LODWORD(v180) = v103;
    v104 = type metadata accessor for SharedBeaconRecord(0);
    v105 = v155;
    (*(*(v104 - 8) + 56))(v155, 1, 1, v104);
    v148 = v41;
    v147 = *(v192 + v41[21]);
    v106 = v151;
    (*(v89 + 16))(v151, v183, v88);
    v107 = v154;
    sub_1000D2A70(v105, v154, &unk_101698C30, &unk_101392630);
    v108 = (*(v89 + 80) + 24) & ~*(v89 + 80);
    v109 = v108 + v150;
    v110 = (*(v152 + 80) + v108 + v150 + 1) & ~*(v152 + 80);
    v111 = v110 + v153;
    v112 = swift_allocObject();
    v113 = v194;
    *(v112 + 16) = v194;
    v157(v112 + v108, v106, v88);
    *(v112 + v109) = v156;
    sub_1000D2AD8(v107, v112 + v110, &unk_101698C30, &unk_101392630);
    *(v112 + v111) = v147 & 1;
    v114 = sub_1000BC4D4(&qword_10169E840, &unk_101406170);
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();

    v196 = Future.init(_:)();
    v157 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170);
    v117 = Publisher.eraseToAnyPublisher()();
    v181 = v117;

    sub_10000B3A8(v105, &unk_101698C30, &unk_101392630);
    v196 = v117;
    v119 = v113;
    v197 = *(v113 + 24);
    v118 = v197;
    v120 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v121 = v158;
    (*(*(v120 - 8) + 56))(v158, 1, 1, v120);
    v122 = v118;
    v156 = v122;
    sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500);
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
    v123 = v159;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v121, &unk_1016B0FE0, &unk_101391980);

    v124 = swift_allocObject();
    *(v124 + 16) = v182;
    *(v124 + 24) = v119;
    *(v124 + 32) = v180;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016A9520, &qword_1013BB508);
    sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
    sub_1000041A4(&qword_1016A9528, &qword_1016A94D0, &qword_1013BB4C0);
    sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90);
    v125 = v160;
    v126 = v162;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v161 + 8))(v123, v126);
    sub_1000041A4(&qword_1016A9538, &qword_1016A94D8, &qword_1013BB4C8);
    v127 = v164;
    v128 = v165;
    Publisher.timeout(_:queue:customError:)();
    (*(v163 + 8))(v125, v128);
    sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
    sub_1000041A4(&qword_1016A9540, &qword_1016A94E0, &qword_1013BB4D0);
    v129 = v168;
    v130 = v167;
    Publisher.map<A>(_:)();
    (*(v166 + 8))(v127, v130);
    sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
    sub_1000041A4(&qword_1016A9550, &qword_1016A94E8, &qword_1013BB4D8);
    sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510);
    v131 = v171;
    v132 = v172;
    Publisher.catch<A>(_:)();
    (*(v169 + 8))(v129, v132);
    sub_1000041A4(&qword_1016A9560, &qword_1016A94F0, &qword_1013BB4E0);

    v133 = v170;
    v134 = v177;
    v75 = v192;
    Publisher.map<A>(_:)();

    (*(v175 + 8))(v131, v134);
    sub_1000041A4(&qword_1016A9568, &qword_1016A94F8, &qword_1013BB4E8);
    v135 = v173;
    v136 = v176;
    Publisher.replaceError(with:)();
    (*(v174 + 8))(v133, v136);
    sub_1000041A4(&qword_1016A9570, &qword_1016A9500, &qword_1013BB4F0);
    v137 = v179;
    v74 = Publisher.eraseToAnyPublisher()();

    (*(v178 + 8))(v135, v137);
    (*(v184 + 8))(v183, v185);

    v76 = v149;
    goto LABEL_30;
  }

  sub_10000B3A8(v77, &qword_1016A40D0, &unk_10138BE70);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v196 = v95;
    *v94 = 136315138;
    *(v94 + 4) = sub_1000136BC(0xD000000000000068, 0x800000010135F6F0, &v196);
    _os_log_impl(&_mh_execute_header, v92, v93, "%s unexpected advertisement type!", v94, 0xCu);
    sub_100007BAC(v95);
  }

  sub_1007A7D8C();
  swift_allocError();
  *v96 = 1;
  v156();
}

void sub_1007A0164(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1007A7FC8;
  *(v7 + 24) = v6;
  _Block_copy(a3);

  v8 = sub_10112C948(a1);
  if (!v8)
  {
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177B2D0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Empty observations!", v20, 2u);
    }

    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100B134FC(_swiftEmptyArrayStorage);
    }

    type metadata accessor for TrackingAvoidanceError(0);
    v62 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
    sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v22 = _convertErrorToNSError(_:)();
    (a3)[2](a3, isa, v22);

    return;
  }

  v9 = v8;
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177B2D0);

  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_32;
  }

  v59 = a2;
  v15 = swift_slowAlloc();
  v61[0] = swift_slowAlloc();
  *v15 = 134218498;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *(a1 + 16);
  }

  *(v15 + 4) = v16;

  *(v15 + 12) = 2082;
  v23 = [v11 action];
  aBlock = a3;
  if (v23 <= 1)
  {
    if (!v23)
    {
      v24 = v7;
      v25 = 0xE700000000000000;
      v26 = 0x6465676174732ELL;
      goto LABEL_27;
    }

    if (v23 == 1)
    {
      v24 = v7;
      v25 = 0xE700000000000000;
      v26 = 0x796669746F6E2ELL;
      goto LABEL_27;
    }

LABEL_26:
    v24 = v7;
    v25 = 0xE800000000000000;
    v26 = 0x6E776F6E6B6E752ELL;
    goto LABEL_27;
  }

  if (v23 == 2)
  {
    v24 = v7;
    v25 = 0xE700000000000000;
    v26 = 0x6574616470752ELL;
    goto LABEL_27;
  }

  if (v23 == 3)
  {
    v24 = v7;
    v26 = 0x65676174736E752ELL;
    v25 = 0xE900000000000064;
    goto LABEL_27;
  }

  if (v23 != 4)
  {
    goto LABEL_26;
  }

  v24 = v7;
  v25 = 0xE900000000000077;
  v26 = 0x617264687469772ELL;
LABEL_27:
  v27 = sub_1000136BC(v26, v25, v61);

  *(v15 + 14) = v27;
  *(v15 + 22) = 2082;
  v28 = [v11 type];

  if (!v28)
  {
    v29 = 0xE800000000000000;
    v30 = 0x746C75616665642ELL;
LABEL_31:
    v31 = sub_1000136BC(v30, v29, v61);

    *(v15 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v12, v13, "Observed [%ld] observations. Action: %{public}s. Type: %{public}s.", v15, 0x20u);
    swift_arrayDestroy();

    v7 = v24;
    a3 = aBlock;
    v14 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
LABEL_32:
    if ([v11 v14[121]] == 1)
    {
      My = type metadata accessor for Feature.FindMy();
      v61[3] = My;
      v61[4] = sub_100799304(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
      v33 = sub_1000280DC(v61);
      (*(*(My - 8) + 104))(v33, enum case for Feature.FindMy.beepOnMove(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC(v61);
      if ((My & 1) == 0)
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Internal Settings -> Feature Flags -> FindMy -> beepOnMove is disabled.", v43, 2u);
        }

        if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
        {
          sub_100B134FC(_swiftEmptyArrayStorage);
        }

        type metadata accessor for TrackingAvoidanceError(0);
        v62 = 6;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v44 = v61[0];
        sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
        sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
        v45.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v46 = _convertErrorToNSError(_:)();
        (a3)[2](a3, v45.super.isa, v46);

        goto LABEL_62;
      }

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v34 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      LOBYTE(v34) = sub_101074654(v61[0]);

      if ((v34 & 1) == 0)
      {
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "isBeepOnMoveEnabled is false. Skipping observations.", v49, 2u);
        }

        if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
        {
          sub_100B134FC(_swiftEmptyArrayStorage);
        }

        type metadata accessor for TrackingAvoidanceError(0);
        v62 = 6;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v50 = v61[0];
        sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
        sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
        v45.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v46 = _convertErrorToNSError(_:)();
        (a3)[2](a3, v45.super.isa, v46);

        goto LABEL_63;
      }
    }

    v35 = [v11 action];
    if (v35 <= 1)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          v38 = sub_1003A8C04(a1);
          v39 = swift_allocObject();
          v39[2] = sub_1007A7FD0;
          v39[3] = v7;
          v39[4] = v11;
          v40 = v11;

          sub_100786378(v38, sub_1007A8020, v39);

          goto LABEL_56;
        }

        goto LABEL_57;
      }

      v53 = swift_allocObject();
      *(v53 + 16) = sub_1007A7FD0;
      *(v53 + 24) = v7;
      *(v53 + 32) = v11;
      v52 = v11;

      sub_1007871F0(v52, sub_1007A9F88, v53);
    }

    else
    {
      if (v35 != 2 && v35 != 3)
      {
        if (v35 == 4)
        {
          v36 = sub_1003A8C04(a1);
          v37 = swift_allocObject();
          *(v37 + 16) = sub_1007A7FC8;
          *(v37 + 24) = v6;

          sub_100781FD8(v36, sub_1007A7FD8, v37);

LABEL_56:

          return;
        }

LABEL_57:
        v54 = v11;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 134217984;
          *(v57 + 4) = [v54 action];

          _os_log_impl(&_mh_execute_header, v55, v56, "Unknown action %ld", v57, 0xCu);
        }

        else
        {

          v55 = v54;
        }

        if (_swiftEmptyArrayStorage >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_100B134FC(_swiftEmptyArrayStorage);
          }
        }

        type metadata accessor for TrackingAvoidanceError(0);
        v62 = 1;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v58 = v61[0];
        sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
        sub_100009D18(&qword_1016A9610, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
        v45.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v46 = _convertErrorToNSError(_:)();
        (a3)[2](a3, v45.super.isa, v46);

LABEL_62:

LABEL_63:

        return;
      }

      v51 = swift_allocObject();
      *(v51 + 16) = sub_1007A7FD0;
      *(v51 + 24) = v7;
      *(v51 + 32) = v11;
      v52 = v11;

      sub_10078F774(v52, sub_1007A9F88, v51);
    }

    goto LABEL_56;
  }

  if (v28 == 1)
  {
    v29 = 0xEB0000000065766FLL;
    v30 = 0x4D6E4F706565622ELL;
    goto LABEL_31;
  }

  type metadata accessor for TrackingObservationType(0);
  _Block_release(aBlock);
  v62 = v28;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

uint64_t sub_1007A10A8(uint64_t a1, Swift::UInt8 a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v155 = a1;
  v156 = a4;
  v154 = a3;
  v9 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v148 = &v123 - v11;
  v12 = type metadata accessor for AccessoryMetadata(0);
  v146 = *(v12 - 8);
  v147 = v12;
  v13 = *(v146 + 64);
  __chkstk_darwin(v12);
  v126 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v15 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v151 = (&v123 - v16);
  v125 = sub_1000BC4D4(&qword_1016A9598, &qword_1013BB550);
  v124 = *(v125 - 8);
  v17 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = &v123 - v18;
  v136 = sub_1000BC4D4(&qword_1016A95A0, &qword_1013BB558);
  v135 = *(v136 - 8);
  v19 = *(v135 + 64);
  __chkstk_darwin(v136);
  v132 = &v123 - v20;
  v141 = sub_1000BC4D4(&qword_1016A95A8, &qword_1013BB560);
  v139 = *(v141 - 8);
  v21 = *(v139 + 64);
  __chkstk_darwin(v141);
  v137 = &v123 - v22;
  v23 = sub_1000BC4D4(&qword_1016A95B0, &qword_1013BB568);
  v144 = *(v23 - 8);
  v145 = v23;
  v24 = *(v144 + 64);
  __chkstk_darwin(v23);
  v143 = &v123 - v25;
  v130 = type metadata accessor for MACAddress();
  v129 = *(v130 - 8);
  v26 = *(v129 + 64);
  __chkstk_darwin(v130);
  v127 = v27;
  v128 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1000BC4D4(&qword_1016A95B8, &qword_1013BB570);
  v133 = *(v134 - 8);
  v28 = *(v133 + 64);
  __chkstk_darwin(v134);
  v131 = &v123 - v29;
  v142 = sub_1000BC4D4(&qword_1016A95C0, &qword_1013BB578);
  v140 = *(v142 - 8);
  v30 = *(v140 + 64);
  __chkstk_darwin(v142);
  v138 = &v123 - v31;
  v32 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v123 - v34;
  v36 = type metadata accessor for SharedBeaconRecord(0);
  v37 = *(v36 - 1);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v41 = &v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v39);
  v44 = &v123 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v123 - v46;
  __chkstk_darwin(v45);
  v149 = &v123 - v48;
  v49 = swift_allocObject();
  v152 = a5;
  *(v49 + 16) = a5;
  *(v49 + 24) = a6;
  v157 = v49;
  v50 = sub_100B133C0(&off_101609F38);
  LOBYTE(a5) = sub_1011204C8(a2, v50);
  v153 = a6;

  if (a5)
  {
LABEL_15:
    if (a2 > 1u)
    {
      v79 = v156;
      if (a2 == 2)
      {
        v80 = *(*(v156 + 40) + 24);
        v81 = swift_allocObject();
        swift_weakInit();
        v82 = v129;
        v83 = v128;
        v84 = v130;
        (*(v129 + 16))(v128, v155, v130);
        v85 = (*(v82 + 80) + 16) & ~*(v82 + 80);
        v86 = (v127 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
        v87 = swift_allocObject();
        (*(v82 + 32))(v87 + v85, v83, v84);
        *(v87 + v86) = v81;
        v88 = sub_1000BC4D4(&qword_10169E840, &unk_101406170);
        v89 = *(v88 + 48);
        v90 = *(v88 + 52);
        swift_allocObject();
        v158[0] = Future.init(_:)();
        sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170);
        v91 = Publisher.eraseToAnyPublisher()();

        v158[0] = v91;
        v92 = *(v79 + 24);
        sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
        sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500);
        v93 = v131;
        Publisher.timeout(_:queue:customError:)();

        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        sub_1000041A4(&qword_1016A95F0, &qword_1016A95B8, &qword_1013BB570);
        v94 = v138;
        v95 = v134;
        Publisher.mapError<A>(_:)();
        (*(v133 + 8))(v93, v95);
        v96 = swift_allocObject();
        v97 = v157;
        *(v96 + 16) = sub_1007A9FB4;
        *(v96 + 24) = v97;
        sub_1000041A4(&qword_1016A95F8, &qword_1016A95C0, &qword_1013BB578);

        v98 = v142;
        Publisher.oneshot(_:)();

        v99 = v140;
      }

      else
      {
        v106 = *(v156 + 40);
        v158[0] = sub_10035B054();
        type metadata accessor for BluetoothCommunicationCoordinator.Error();
        sub_1000BC4D4(&unk_1016C7D70, &qword_1013BB580);
        sub_1000041A4(&qword_1016A95C8, &unk_1016C7D70, &qword_1013BB580);
        sub_100799304(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v107 = v132;
        Publisher<>.setFailureType<A>(to:)();

        v108 = *(v79 + 24);
        sub_1000041A4(&qword_1016A95D8, &qword_1016A95A0, &qword_1013BB558);
        v109 = v137;
        v110 = v136;
        Publisher.timeout(_:queue:customError:)();
        (*(v135 + 8))(v107, v110);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        sub_1000041A4(&qword_1016A95E0, &qword_1016A95A8, &qword_1013BB560);
        v94 = v143;
        v111 = v141;
        Publisher.mapError<A>(_:)();
        (*(v139 + 8))(v109, v111);
        v112 = swift_allocObject();
        v113 = v157;
        *(v112 + 16) = sub_1007A9FB4;
        *(v112 + 24) = v113;
        sub_1000041A4(&qword_1016A95E8, &qword_1016A95B0, &qword_1013BB568);

        v98 = v145;
        Publisher.oneshot(_:)();

        v99 = v144;
      }

      (*(v99 + 8))(v94, v98);
    }

    else if (a2)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v100 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      LOBYTE(v100) = sub_101074648(v158[0]);

      if (v100)
      {
        v101 = *(v156 + 40);
        v158[0] = sub_10035CFD8(v155);
        sub_1000BC4D4(&qword_1016A9518, &qword_1013BB500);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        sub_1000041A4(&unk_1016C7E10, &qword_1016A9518, &qword_1013BB500);
        v102 = v123;
        Publisher.mapError<A>(_:)();

        v103 = swift_allocObject();
        v104 = v157;
        *(v103 + 16) = sub_1007A9FB4;
        *(v103 + 24) = v104;
        sub_1000041A4(&qword_1016A9600, &qword_1016A9598, &qword_1013BB550);

        v105 = v125;
        Publisher.oneshot(_:)();

        (*(v124 + 8))(v102, v105);
      }

      else
      {
        if (qword_101694910 != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        sub_1000076D4(v114, qword_10177B2D0);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&_mh_execute_header, v115, v116, "Non-owner ranging is disabled. Skipping AIS fetch for AirTag.", v117, 2u);
        }

        sub_1007A7D8C();
        v118 = swift_allocError();
        *v119 = 4;
        v120 = v151;
        *v151 = v118;
        swift_storeEnumTagMultiPayload();
        sub_10078F298(v120, v152);
        sub_10000B3A8(v120, &unk_1016A99C0, &unk_1013BB530);
      }
    }

    else
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_1000076D4(v71, qword_10177B2D0);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v158[0] = v75;
        *v74 = 136446210;
        *(v74 + 4) = sub_1000136BC(0x656C707061, 0xE500000000000000, v158);
        _os_log_impl(&_mh_execute_header, v72, v73, "readMetadata: %{public}s is not supported!", v74, 0xCu);
        sub_100007BAC(v75);
      }

      sub_1007A7D8C();
      v76 = swift_allocError();
      *v77 = 3;
      v78 = v151;
      *v151 = v76;
      swift_storeEnumTagMultiPayload();
      sub_10078F298(v78, v152);
      sub_10000B3A8(v78, &unk_1016A99C0, &unk_1013BB530);
    }
  }

  sub_1000D2A70(v154, v35, &unk_101698C30, &unk_101392630);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_10000B3A8(v35, &unk_101698C30, &unk_101392630);
    goto LABEL_15;
  }

  v51 = v149;
  sub_1007A91C8(v35, v149, type metadata accessor for SharedBeaconRecord);
  v158[3] = v36;
  v158[4] = sub_100799304(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
  v52 = sub_1000280DC(v158);
  sub_1007A7DFC(v51, v52, type metadata accessor for SharedBeaconRecord);
  v53 = v148;
  sub_100D5D0A4(v158, 0, 0xF000000000000000, v148);
  if ((*(v146 + 48))(v53, 1, v147) == 1)
  {
    sub_10000B3A8(v53, &qword_1016A62A0, &unk_101396E10);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177B2D0);
    sub_1007A7DFC(v51, v44, type metadata accessor for SharedBeaconRecord);
    sub_1007A7DFC(v51, v41, type metadata accessor for SharedBeaconRecord);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134218240;
      v58 = *&v44[v36[12]];
      sub_1007A810C(v44, type metadata accessor for SharedBeaconRecord);
      *(v57 + 4) = v58;
      *(v57 + 12) = 2048;
      v59 = *&v41[v36[11]];
      sub_1007A810C(v41, type metadata accessor for SharedBeaconRecord);
      *(v57 + 14) = v59;
      v51 = v149;
      _os_log_impl(&_mh_execute_header, v55, v56, "Invalid product data from shared beacon %ld-%ld", v57, 0x16u);
    }

    else
    {
      sub_1007A810C(v41, type metadata accessor for SharedBeaconRecord);
      sub_1007A810C(v44, type metadata accessor for SharedBeaconRecord);
    }

    sub_1007A810C(v51, type metadata accessor for SharedBeaconRecord);
    goto LABEL_15;
  }

  v60 = v126;
  sub_1007A91C8(v53, v126, type metadata accessor for AccessoryMetadata);
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_1000076D4(v61, qword_10177B2D0);
  sub_1007A7DFC(v51, v47, type metadata accessor for SharedBeaconRecord);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v158[0] = v65;
    *v64 = 141558275;
    *(v64 + 4) = 1752392040;
    *(v64 + 12) = 2081;
    v66 = v36[5];
    type metadata accessor for UUID();
    sub_100799304(&qword_101696930, &type metadata accessor for UUID);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    sub_1007A810C(v47, type metadata accessor for SharedBeaconRecord);
    v70 = sub_1000136BC(v67, v69, v158);

    *(v64 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "Skipping AIS fetch for family beacon %{private,mask.hash}s", v64, 0x16u);
    sub_100007BAC(v65);
  }

  else
  {

    sub_1007A810C(v47, type metadata accessor for SharedBeaconRecord);
  }

  v121 = v151;
  sub_1007A7DFC(v60, v151, type metadata accessor for AccessoryMetadata);
  swift_storeEnumTagMultiPayload();
  sub_10078F298(v121, v152);
  sub_10000B3A8(v121, &unk_1016A99C0, &unk_1013BB530);
  sub_1007A810C(v60, type metadata accessor for AccessoryMetadata);
  sub_1007A810C(v149, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_1007A2798(uint64_t a1, Swift::UInt8 a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  v74 = a3;
  v75 = a5;
  v79 = a1;
  v70 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  v11 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v71 = (&v69 - v12);
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v73 = &v69 - v15;
  v16 = type metadata accessor for MACAddress();
  v77 = *(v16 - 8);
  v17 = *(v77 + 64);
  v18 = __chkstk_darwin(v16);
  v19 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v72 = &v69 - v21;
  __chkstk_darwin(v20);
  v23 = &v69 - v22;
  v24 = swift_allocObject();
  v76 = a6;
  *(v24 + 16) = a6;
  *(v24 + 24) = a7;
  v78 = v24;
  v25 = qword_101694F58;
  swift_retain_n();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_10177C218;
  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 isInternalBuild];

  if (v28)
  {
    v29 = String._bridgeToObjectiveC()();
    v30 = [v26 BOOLForKey:v29];

    if (v30)
    {
      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000076D4(v31, qword_1016A9318);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v80 = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v80);
        _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s ForceReadingHawkeyeAIS is enabled!", v34, 0xCu);
        sub_100007BAC(v35);
      }

      v36 = v79;
      v37 = 2;
      goto LABEL_23;
    }
  }

  if (a4)
  {
    v76 = a7;
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177B2D0);
    v39 = v77;
    v40 = *(v77 + 16);
    v40(v23, v79, v16);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75 = v40;
      v80 = v44;
      *v43 = 136446466;
      *(v43 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v80);
      *(v43 + 12) = 2082;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v77 + 8))(v23, v16);
      v48 = sub_1000136BC(v45, v47, &v80);

      *(v43 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s for Posh accessory with %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      v40 = v75;

      v39 = v77;
    }

    else
    {

      (*(v39 + 8))(v23, v16);
    }

    v58 = type metadata accessor for TaskPriority();
    v59 = v73;
    (*(*(v58 - 8) + 56))(v73, 1, 1, v58);
    v60 = v72;
    v40(v72, v79, v16);
    v61 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    (*(v39 + 32))(v62 + v61, v60, v16);
    v63 = (v62 + ((v17 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
    v64 = v78;
    *v63 = sub_1007A7E64;
    v63[1] = v64;

    sub_10025EDD4(0, 0, v59, &unk_1013BB548, v62);
  }

  else
  {
    if (a2 != 4)
    {

      v36 = v79;
      v37 = a2;
LABEL_23:
      sub_1007A10A8(v36, v37, v74, v75, v76, a7);
    }

    if (qword_101694918 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000076D4(v49, qword_1016A9318);
    v50 = v77;
    (*(v77 + 16))(v19, v79, v16);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v53 = 136446466;
      *(v53 + 4) = sub_1000136BC(0xD000000000000043, 0x800000010135F7F0, &v80);
      *(v53 + 12) = 2082;
      sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v50 + 8))(v19, v16);
      v57 = sub_1000136BC(v54, v56, &v80);

      *(v53 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "%{public}s for %{public}s with no device type!", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v50 + 8))(v19, v16);
    }

    sub_1007A7D8C();
    v66 = swift_allocError();
    *v67 = 3;
    v68 = v71;
    *v71 = v66;
    swift_storeEnumTagMultiPayload();
    sub_10078F298(v68, v76);
    sub_10000B3A8(v68, &unk_1016A99C0, &unk_1013BB530);
  }
}