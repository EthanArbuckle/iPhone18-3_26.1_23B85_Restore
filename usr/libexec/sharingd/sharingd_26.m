uint64_t sub_100419208()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D2F8);
  v1 = sub_10000C4AC(v0, qword_10097D2F8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004192D0()
{
  v1 = type metadata accessor for SFPlatform();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SFFilesAppAvailable() && (static SFPlatform.visionOS.getter(), v6 = static SFPlatform.isPlatform(_:)(), v7 = *(v2 + 8), v7(v5, v1), (v6 & 1) == 0))
  {
    static SFPlatform.macOS.getter();
    v10 = static SFPlatform.isPlatform(_:)();
    v7(v5, v1);
    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v0 + 24) ^ 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1004193F8()
{
  v1 = type metadata accessor for SFPlatform();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.visionOS.getter();
  v6 = static SFPlatform.isPlatform(_:)();
  v7 = *(v2 + 8);
  v7(v5, v1);
  if (v6)
  {
    return 1;
  }

  static SFPlatform.macOS.getter();
  v9 = static SFPlatform.isPlatform(_:)();
  v7(v5, v1);
  if (v9)
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t sub_100419510(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004195AC, v3, 0);
}

uint64_t sub_1004195AC()
{
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = v0[2];
    v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (!v4)
    {
      v9 = v0[2];
      v10 = v0[3];
      v11 = sub_1003D92E8();
      v12 = *(v10 + 16);
      *(v10 + 16) = v11;

      if (v11 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() == 1)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result)
          {
            goto LABEL_9;
          }
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_9:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v13 = *(v11 + 32);
        }

        v14 = v13;

        v15 = [v14 bundleIdentifier];

        if (v15)
        {
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v19._countAndFlagsBits = 0x6C7070612E6D6F63;
          v19._object = 0xEA00000000002E65;
          v20 = String.hasPrefix(_:)(v19);
          if (v16 == 0xD000000000000014 && 0x8000000100790320 == v18)
          {

            v21 = 0;
          }

          else
          {
            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v21 = v20 & (v22 ^ 1);
          }

          *(v0[3] + 24) = v21 & 1;
        }

        goto LABEL_21;
      }

LABEL_21:
      v5 = SFFilesAppAvailable();
      v23 = *(v10 + 16);
      if (v23)
      {
        if (v23 >> 62)
        {
          v25 = v5;
          v24 = _CocoaArrayWrapper.endIndex.getter();
          v5 = v25;
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v5 |= v24 != 0;
      }

      goto LABEL_4;
    }
  }

  v5 = 0;
LABEL_4:
  v6 = v0[1];
  v7 = v5 & 1;

  return v6(v7);
}

uint64_t sub_100419808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v37 - v9;
  v44 = type metadata accessor for URL();
  v42 = *(v44 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v44);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SFPlatform();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SFFilesAppAvailable())
  {
    v37 = v6;
    v38 = a1;
    v22 = a3;
    static SFPlatform.visionOS.getter();
    v23 = static SFPlatform.isPlatform(_:)();
    v24 = *(v18 + 8);
    v24(v21, v17);
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      static SFPlatform.macOS.getter();
      v26 = static SFPlatform.isPlatform(_:)();
      v24(v21, v17);
      if (v26)
      {
        v25 = 1;
      }

      else
      {
        v25 = *(v39 + 24) ^ 1;
      }
    }

    a3 = v22;
    v6 = v37;
    a1 = v38;
  }

  else
  {
    v25 = 0;
  }

  (*(v13 + 16))(v16, v45, v12);
  if ((*(v13 + 88))(v16, v12) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v13 + 96))(v16, v12);
    v27 = v42;
    v28 = *(v42 + 32);
    v45 = a3;
    v29 = v41;
    v30 = v44;
    v28(v41, v16, v44);
    v31 = v43;
    (*(v27 + 16))(v43, v29, v30);
    (*(v27 + 56))(v31, 0, 1, v30);
    v46 = 0;
    v32 = v40;
    sub_100333278(v31, v40);
    v33 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v34 = swift_allocObject();
    sub_1003332E8(v32, v34 + v33);
    *(v34 + ((v7 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v31, &unk_100974E00, &qword_1007F8940);
    return (*(v27 + 8))(v29, v30);
  }

  else
  {
    v46 = 0;
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    *(v36 + 24) = v25 & 1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_100419DB8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X8>)
{
  v78 = a2;
  v75 = a1;
  v79 = type metadata accessor for URL();
  v5 = *(v79 - 8);
  v6 = *(v5 + 8);
  v7 = __chkstk_darwin(v79);
  v81 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v80 = &v70[-v9];
  v10 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for SFPlatform();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v70[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = v3;
  v20 = *(v3 + 16);
  if (!v20)
  {
    v21 = a3;
    goto LABEL_8;
  }

  v21 = a3;
  v22 = v20 & 0xFFFFFFFFFFFFFF8;
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_8:
    v74 = 0;
    goto LABEL_9;
  }

LABEL_73:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {

    v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v22 + 16))
    {
      __break(1u);
LABEL_77:
      swift_once();
LABEL_58:
      v54 = type metadata accessor for Logger();
      sub_10000C4AC(v54, qword_10097B528);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Asked to view mixed files and links, only viewing links", v57, 2u);
      }

LABEL_61:
      v82 = 0;
      v58 = swift_allocObject();
      v59 = v74;
      *(v58 + 16) = v16;
      *(v58 + 24) = v59;
      return SFProgressTask.init(_:initialProgress:operation:file:line:)();
    }

    v74 = v20[4];
  }

LABEL_9:
  static SFPlatform.visionOS.getter();
  v23 = static SFPlatform.isPlatform(_:)();
  v22 = *(v16 + 8);
  (v22)(v19, v15);
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    static SFPlatform.macOS.getter();
    v25 = static SFPlatform.isPlatform(_:)();
    (v22)(v19, v15);
    if (v25)
    {
      v71 = 0;
      goto LABEL_15;
    }

    v24 = *(v77 + 24);
  }

  v71 = v24;
LABEL_15:
  v15 = v10;
  (*(v11 + 16))(v14, v78, v10);
  v26 = (*(v11 + 88))(v14, v10);
  v10 = v75;
  v73 = v21;
  if (v26 != enum case for SFAirDropReceive.ItemDestination.customApp(_:))
  {
LABEL_40:
    (*(v11 + 8))(v14, v15);
LABEL_42:
    v14 = v79;
    v20 = v80;
    goto LABEL_43;
  }

  (*(v11 + 96))(v14, v15);
  v15 = *v14;
  v16 = v14[1];
  v27 = *v14 == 0xD000000000000034 && 0x800000010078AA10 == v16;
  if (v27)
  {
    v39 = v14[1];

    goto LABEL_42;
  }

  v28 = *v14;
  v29 = v14[1];
  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v14 = v79;
  v20 = v80;
  if ((v30 & 1) != 0 || (v21 = *(v77 + 16)) == 0)
  {

    goto LABEL_43;
  }

  v10 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
LABEL_65:

    v10 = v75;
    goto LABEL_43;
  }

  v19 = 0;
  v76 = v5;
  v77 = v21 & 0xC000000000000001;
  while (1)
  {
    if (v77)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      if (v19 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_73;
      }

      v31 = *(v21 + 8 * v19 + 32);
      v5 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        goto LABEL_39;
      }
    }

    v22 = v21;
    v78 = v31;
    v32 = [v31 bundleIdentifier];
    if (!v32)
    {
      goto LABEL_26;
    }

    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (v34 == v15 && v36 == v16)
    {
      break;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = v79;
    v20 = v80;
    if (v38)
    {

      goto LABEL_67;
    }

LABEL_26:

    ++v19;
    v27 = v5 == v11;
    v5 = v76;
    v21 = v22;
    if (v27)
    {
      goto LABEL_65;
    }
  }

  v14 = v79;
  v20 = v80;
LABEL_67:
  v10 = v75;
  v5 = v76;
  if (qword_100973840 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_10000C4AC(v62, qword_10097D2F8);
  v63 = v78;
  v64 = v78;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138412290;
    *(v67 + 4) = v64;
    *v68 = v63;
    v69 = v64;
    _os_log_impl(&_mh_execute_header, v65, v66, "Opening with chosen app %@", v67, 0xCu);
    sub_100005508(v68, &qword_100975400, &qword_1007F65D0);

    v20 = v80;
  }

  v71 = 1;
  v74 = v63;
LABEL_43:
  v40 = *(v10 + 16);
  v72 = v40;
  if (v40)
  {
    v43 = *(v5 + 2);
    v42 = v5 + 16;
    v41 = v43;
    v78 = ((v42[64] + 32) & ~v42[64]);
    v44 = &v78[v10];
    v45 = *(v42 + 7);
    v46 = (v42 + 16);
    v76 = v42 - 8;
    v16 = _swiftEmptyArrayStorage;
    v77 = v43;
    v43(v20, v44, v14);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v76)(v20, v14);
      }

      else
      {
        v47 = v42;
        v48 = *v46;
        (*v46)(v81, v20, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, *(v16 + 16) + 1, 1);
          v16 = v82;
        }

        v51 = *(v16 + 16);
        v50 = *(v16 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_10028FAB4(v50 > 1, v51 + 1, 1);
          v16 = v82;
        }

        *(v16 + 16) = v51 + 1;
        v52 = &v78[v16 + v51 * v45];
        v14 = v79;
        v48(v52, v81, v79);
        v42 = v47;
        v20 = v80;
        v41 = v77;
      }

      v44 += v45;
      if (!--v40)
      {
        break;
      }

      v41(v20, v44, v14);
    }
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v53 = *(v16 + 16);
  if (v53)
  {
    if (v53 != v72)
    {
      if (qword_1009737B0 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_77;
    }

    goto LABEL_61;
  }

  v82 = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = v74;
  *(v60 + 24) = v71;
  *(v60 + 32) = v75;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10041A770()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

BOOL sub_10041A7CC()
{
  v0 = type metadata accessor for SFPlatform();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.macOS.getter();
  v5 = static SFPlatform.isPlatform(_:)();
  (*(v1 + 8))(v4, v0);
  return (v5 & 1) == 0;
}

uint64_t sub_10041A8F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerGenericFiles();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10041A92C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100419510(a1);
}

uint64_t sub_10041AA1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10041AABC, v2, 0);
}

uint64_t sub_10041AABC()
{
  v0[4] = [objc_allocWithZone(type metadata accessor for SDAirDropMoveToAppShareSheet()) init];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10041AB80;
  v2 = v0[2];

  return sub_10066D568(v2);
}

uint64_t sub_10041AB80(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = *(v4 + 24);

    return _swift_task_switch(sub_10041ACD8, v7, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_10041ACD8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(0);
}

uint64_t sub_10041AD40@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v117 = &v109 - v6;
  v7 = sub_10028088C(&qword_10097D430, &unk_100808E50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v114 = &v109 - v9;
  v111 = sub_10028088C(&qword_100975358, &unk_1007F8590);
  v110 = *(v111 - 8);
  v10 = *(v110 + 64);
  __chkstk_darwin(v111);
  v113 = &v109 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v112 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v115 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SFAirDrop.DeclineAction();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  __chkstk_darwin(v23);
  v137 = (&v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v120 = *(v138 - 8);
  v27 = *(v120 + 64);
  __chkstk_darwin(v138);
  v160 = (&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v139 = *(v154 - 8);
  v29 = *(v139 + 64);
  v30 = __chkstk_darwin(v154);
  v153 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v152 = &v109 - v32;
  v33 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v34 = *(v33 - 8);
  v143 = v33;
  v144 = v34;
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v140 = v37;
  v141 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v123 = "openDestinationRequest";
  v142 = &v109 - v38;
  v155 = v23;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v39 = *(v1 + 16);
  v116 = a1;
  v118 = v18;
  v119 = v19;
  v121 = v22;
  if (!v39)
  {
    goto LABEL_19;
  }

  if (v39 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (v40)
    {
      goto LABEL_4;
    }

LABEL_19:
    v42 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v40 < 1)
  {
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_32;
  }

  v145 = v39 & 0xC000000000000001;
  v134 = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v133 = (v120 + 104);
  v132 = enum case for SFAirDropReceive.ItemDestination.customApp(_:);
  v131 = (v24 + 104);
  v130 = v144 + 16;
  v129 = v144 + 32;
  v128 = enum case for SFAirDrop.AcceptAction.single<A>(_:);
  v127 = (v139 + 104);
  v126 = (v139 + 16);
  v125 = v139 + 8;
  v124 = v139 + 32;

  v41 = 0;
  v42 = _swiftEmptyArrayStorage;
  v43 = v141;
  v136 = v39;
  v135 = v40;
  v44 = v143;
  do
  {
    if (v145)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v45 = *(v39 + 8 * v41 + 32);
    }

    v46 = v45;
    v47 = [v45 bundleIdentifier];
    if (v47)
    {
      v148 = v41;
      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
      v146 = v50;

      v150 = v46;
      v52 = [v46 localizedName];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v149 = *(sub_10028088C(&qword_10097B140, &qword_1007FE418) + 48);
      v56 = v160;
      *v160 = v53;
      v56[1] = v55;
      (*v133)();
      v57 = v137;
      *v137 = v49;
      v57[1] = v51;
      v147 = v49;
      (*v131)(v57, v132, v155);
      v151 = v42;
      v58 = v144;
      (*(v144 + 16))(v43, v142, v44);
      v59 = v43;
      v60 = (*(v58 + 80) + 48) & ~*(v58 + 80);
      v61 = swift_allocObject();
      *(v61 + 2) = v53;
      *(v61 + 3) = v55;
      *(v61 + 4) = v49;
      *(v61 + 5) = v146;
      (*(v58 + 32))(&v61[v60], v59, v44);
      sub_10041C6B4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
      sub_10041C6B4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
      sub_10041C6B4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
      swift_bridgeObjectRetain_n();

      v42 = v151;
      v62 = v152;
      SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
      UUID.init()();
      v63 = v154;
      (*v127)(v62, v128, v154);
      (*v126)(v153, v62, v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_10028E7FC(0, v42[2] + 1, 1, v42);
      }

      v65 = v42[2];
      v64 = v42[3];
      v43 = v141;
      v40 = v135;
      if (v65 >= v64 >> 1)
      {
        v42 = sub_10028E7FC(v64 > 1, v65 + 1, 1, v42);
      }

      v66 = v139;
      v67 = v154;
      (*(v139 + 8))(v152, v154);
      v42[2] = v65 + 1;
      (*(v66 + 32))(v42 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v65, v153, v67);
      v39 = v136;
      v41 = v148;
    }

    else
    {
    }

    ++v41;
  }

  while (v40 != v41);

LABEL_20:
  v68 = String._bridgeToObjectiveC()();
  v69 = SFLocalizedStringForKey();

  v70 = v142;
  if (v69)
  {
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  v156 = v71;
  v157 = v73;
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  v74 = v122;
  Optional.tryUnwrap(_:file:line:)();
  if (v74)
  {

    (*(v144 + 8))(v70, v143);
  }

  v75 = v143;
  v151 = v42;

  v76 = v159;
  v77 = v160;
  *v160 = v158;
  v77[1] = v76;
  (*(v120 + 104))(v77, enum case for SFAirDrop.ButtonConfiguration.text(_:), v138);
  v78 = v144;
  v79 = *(v144 + 16);
  v80 = v141;
  v152 = (v144 + 16);
  v150 = v79;
  (v79)(v141, v70, v75);
  v81 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v154 = *(v78 + 80);
  v82 = swift_allocObject();
  v153 = *(v78 + 32);
  (v153)(v82 + v81, v80, v75);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v83 = String._bridgeToObjectiveC()();
  v84 = SFLocalizedStringForKey();

  if (v84)
  {
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v156 = v85;
  v157 = v87;
  Optional.tryUnwrap(_:file:line:)();

  v149 = v158;
  v160 = v159;
  v88 = String._bridgeToObjectiveC()();
  v89 = SFLocalizedStringForKey();

  if (v89)
  {
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;
  }

  else
  {
    v90 = 0;
    v92 = 0;
  }

  v93 = v117;
  v94 = v154;
  v156 = v90;
  v157 = v92;
  Optional.tryUnwrap(_:file:line:)();
  v147 = ~v94;
  v148 = 0;

  v96 = v158;
  v97 = v159;
  UUID.init()();
  static Date.now.getter();
  v98 = *(sub_10028088C(&qword_100975360, &unk_100801D40) + 80);
  v99 = v113;
  v100 = v160;
  *v113 = v149;
  *(v99 + 1) = v100;
  *(v99 + 2) = v96;
  *(v99 + 3) = v97;
  *(v99 + 4) = v151;
  v23 = v119;
  (*(v119 + 16))(&v99[v98], v121, v118);
  (*(v110 + 104))(v99, enum case for SFAirDrop.PermissionRequest.Style.alert<A>(_:), v111);
  v101 = sub_10028088C(&qword_10097D440, &qword_100808E60);
  (*(*(v101 - 8) + 56))(v114, 1, 1, v101);
  sub_10041C6B4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination);
  sub_10041C6B4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination);
  sub_10041C6B4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination);
  v102 = v142;
  SFAirDrop.PermissionRequest.init(id:requestDate:style:isAnswered:telemetryData:)();
  v103 = type metadata accessor for TaskPriority();
  v2 = v102;
  (*(*(v103 - 8) + 56))(v93, 1, 1, v103);
  v24 = v141;
  v22 = v143;
  (v150)(v141, v102, v143);
  if (qword_1009735E0 != -1)
  {
    goto LABEL_34;
  }

LABEL_32:
  v104 = static AirDropActor.shared;
  v105 = sub_10041C6B4(&qword_100977C00, type metadata accessor for AirDropActor);
  v106 = (v154 + 32) & v147;
  v107 = swift_allocObject();
  *(v107 + 16) = v104;
  *(v107 + 24) = v105;
  (v153)(v107 + v106, v24, v22);

  v108 = sub_1002B282C(0, 0, v117, &unk_100801D58, v107);
  (*(v23 + 8))(v121, v118);
  (*(v144 + 8))(v2, v22);
  result = sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v116 + *(result + 52)) = v108;
  return result;
}

uint64_t sub_10041BF60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_100973840 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097D2F8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10000C4E4(a2, a3, &v14);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10000C4E4(a4, a5, &v14);
    _os_log_impl(&_mh_execute_header, v10, v11, "View destination chosen was %s [bundleID = %s]", v12, 0x16u);
    swift_arrayDestroy();
  }

  sub_10028088C(&qword_10097D438, &unk_100801D30);
  return SFProgressContinuation.finish(with:)();
}

uint64_t sub_10041C128()
{
  if (qword_100973840 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_10097D2F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "View destination chosen was 'Cancel', cancelling AirDrop", v3, 2u);
  }

  v4 = type metadata accessor for SFAirDropReceive.Failure();
  sub_10041C6B4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v4 - 8) + 104))(v5, enum case for SFAirDropReceive.Failure.declined(_:), v4);
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  SFProgressContinuation.fail(with:)();
}

uint64_t sub_10041C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097D458, &unk_100801D70);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10041C3D8, v8, 0);
}

uint64_t sub_10041C3D8()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_10028088C(&qword_10097D438, &unk_100801D30);
  SFProgressContinuation.task.getter();
  v3 = async function pointer to SFProgressTask.finalValue.getter[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1003C11F8;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return SFProgressTask.finalValue.getter(v7, v6);
}

uint64_t sub_10041C4C8()
{
  v0 = *(*(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8) + 80);

  return sub_10041C128();
}

uint64_t sub_10041C534(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10041C2D0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10041C630(uint64_t a1)
{
  v3 = *(*(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];

  return sub_10041BF60(a1, v4, v5, v6, v7);
}

uint64_t sub_10041C6B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10041C6FC(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((SFFilesAppAvailable() & 1) == 0)
  {
    (*(v3 + 16))(v6, a1, v2);
    v9 = (*(v3 + 88))(v6, v2);
    if (v9 == enum case for SFAirDropReceive.ItemDestination.customApp(_:))
    {
      (*(v3 + 96))(v6, v2);
      if (*v6 != 0xD000000000000034 || 0x800000010078AA10 != v6[1])
      {
        v11 = v6[1];
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v12 ^ 1;
        return v7 & 1;
      }

      v13 = v6[1];
    }

    else if (v9 != enum case for SFAirDropReceive.ItemDestination.noItem(_:))
    {
      (*(v3 + 8))(v6, v2);
      v7 = 1;
      return v7 & 1;
    }
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t sub_10041C8A8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D460);
  v1 = sub_10000C4AC(v0, qword_10097D460);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10041C970(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;

  return _swift_task_switch(sub_10041CB20, v12, 0);
}

uint64_t sub_10041CB20()
{
  v52 = v0;
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = v0[2];
    v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v4)
    {
LABEL_3:
      v2 = 0;
    }

    else
    {
      v5 = v0[2];
      v6 = SFAirDropReceive.AskRequest.files.getter();
      v7 = v6;
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v0[11];
        v49 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        while (v9 < *(v7 + 16))
        {
          v11 = v0[12];
          v12 = v0[10];
          (*(v10 + 16))(v11, v49 + *(v10 + 72) * v9, v12);
          SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
          (*(v10 + 8))(v11, v12);
          v13 = String._bridgeToObjectiveC()();

          v14 = [v13 pathExtension];

          if (!v14)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = String._bridgeToObjectiveC()();
          }

          v15 = SFIsNote();

          if ((v15 & 1) == 0)
          {

            goto LABEL_3;
          }

          if (v8 == ++v9)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        swift_once();
        v19 = v0[8];
        v18 = v0[9];
        v20 = v0[7];
        v21 = v0[2];
        v22 = type metadata accessor for Logger();
        sub_10000C4AC(v22, qword_10097D460);
        (*(v19 + 16))(v18, v21, v20);
        swift_errorRetain();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        v25 = os_log_type_enabled(v23, v24);
        v26 = v0[8];
        v27 = v0[9];
        v28 = v0[7];
        if (v25)
        {
          v30 = v0[5];
          v29 = v0[6];
          v31 = v0[4];
          v48 = v24;
          v32 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v51 = v50;
          *v32 = 136315394;
          v46 = v23;
          SFAirDropReceive.AskRequest.id.getter();
          sub_1002891F4();
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = v28;
          v35 = v34;
          (*(v30 + 8))(v29, v31);
          (*(v26 + 8))(v27, v33);
          v36 = sub_10000C4E4(v45, v35, &v51);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2112;
          swift_errorRetain();
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 14) = v37;
          *v47 = v37;
          _os_log_impl(&_mh_execute_header, v46, v48, "Failed to get Notes app for ask request %s: %@", v32, 0x16u);
          sub_100005508(v47, &qword_100975400, &qword_1007F65D0);

          sub_10000C60C(v50);
        }

        else
        {

          (*(v26 + 8))(v27, v28);
        }
      }

      else
      {
LABEL_11:

        v16 = objc_allocWithZone(LSApplicationRecord);
        v17 = sub_10066F3F8(0xD000000000000015, 0x8000000100790380, 1);
        v38 = v0[3];
        v39 = *(v38 + 16);
        *(v38 + 16) = v17;
      }

      v2 = *(v0[3] + 16) != 0;
    }
  }

  v40 = v0[12];
  v41 = v0[9];
  v42 = v0[6];

  v43 = v0[1];

  return v43(v2);
}

uint64_t sub_10041CFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10041D424@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerNotes();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10041D45C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_10041C970(a1);
}

void sub_10041D51C(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 1163153230;
  v5 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10041D698(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_10041D734()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D558);
  v1 = sub_10000C4AC(v0, qword_10097D558);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10041D7FC(int a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100973850 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097D558);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "MAEIssueDCRT failed with %@", v10, 0xCu);
      sub_10028924C(v11);
    }

    swift_beginAccess();
    v13 = *(a3 + 16);
    *(a3 + 16) = a2;
  }

  dispatch_group_leave(group);
}

uint64_t sub_10041D984()
{
  v0 = _convertErrorToNSError(_:)();
  HasDomainAndErrorCode = mobileactivationErrorHasDomainAndErrorCode();

  if (HasDomainAndErrorCode)
  {
    return 1;
  }

  v2 = _convertErrorToNSError(_:)();
  v3 = mobileactivationErrorHasDomainAndErrorCode();

  if (v3)
  {
    return 1;
  }

  v4 = _convertErrorToNSError(_:)();
  v5 = mobileactivationErrorHasDomainAndErrorCode();

  if (v5)
  {
    return 1;
  }

  v6 = _convertErrorToNSError(_:)();
  v7 = mobileactivationErrorHasDomainAndErrorCode();

  if (v7)
  {
    return 1;
  }

  v9 = _convertErrorToNSError(_:)();
  v10 = mobileactivationErrorHasDomainAndErrorCode();

  return v10;
}

char *sub_10041DA70()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v43 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = (v8 + 16);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_10041E258;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10041D698;
  aBlock[3] = &unk_1008E0AF8;
  v12 = _Block_copy(aBlock);

  v13 = v10;
  MAEIssueDCRTWithCompletion();
  _Block_release(v12);

  static DispatchTime.now()();
  + infix(_:_:)();
  v14 = *(v1 + 8);
  v14(v5, v0);
  OS_dispatch_group.wait(timeout:)();
  v14(v7, v0);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
  {
    swift_beginAccess();
    if (*v9)
    {
      goto LABEL_18;
    }

    v47 = 0;
    v19 = MAECopyDCRTWithOptions();
    if (v19)
    {
      v20 = v19;
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v16 = v47;
      if (!v47)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
      v22 = 0xF000000000000000;
      v16 = v47;
      if (!v47)
      {
        goto LABEL_16;
      }
    }

    v46 = v7;
    v23 = qword_100973850;
    v24 = v16;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_10097D558);
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    v45 = v28;
    v29 = v28;
    v30 = v27;
    if (os_log_type_enabled(v27, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v32;
      *v31 = 138412290;
      *(v31 + 4) = v26;
      *v32 = v16;
      v44 = v26;
      _os_log_impl(&_mh_execute_header, v30, v45, "Failed to MAECopyDCRT after MAEIssueDCRT, error: %@", v31, 0xCu);
      sub_10028924C(v43);

      v26 = v30;
      v30 = v44;
    }

    v7 = v46;

LABEL_16:
    if (v22 >> 60 != 15)
    {

      return v7;
    }

    goto LABEL_17;
  }

  if (qword_100973850 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_10097D558);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Timing out for _MAEIssueDCRT", v18, 2u);
  }

LABEL_17:

LABEL_18:
  swift_beginAccess();
  if (!*v9)
  {
LABEL_22:
    v38 = sub_100010F88(10, 0xD00000000000001CLL, 0x80000001007903A0);
    v40 = v39;
    sub_1000115C8();
    swift_allocError();
    *v41 = v38;
    *(v41 + 8) = v40;
    swift_willThrow();
    goto LABEL_23;
  }

  v33 = *v9;
  swift_errorRetain();
  if ((sub_10041D984() & 1) == 0)
  {

    goto LABEL_22;
  }

  v34 = sub_100010F88(39, 0xD000000000000027, 0x80000001007903C0);
  v36 = v35;
  sub_1000115C8();
  swift_allocError();
  *v37 = v34;
  *(v37 + 8) = v36;
  swift_willThrow();

LABEL_23:

  return v7;
}

uint64_t sub_10041E038()
{
  v0 = MAECopyDCRTWithOptions();
  if (v0)
  {
    v1 = v0;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xF000000000000000;
  }

  if (v4 >> 60 == 15)
  {
    v2 = sub_10041DA70();
  }

  return v2;
}

id sub_10041E260()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10041ED68();
}

uint64_t sub_10041E294()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathUpdateTask;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathUpdateTask))
  {
    if (qword_100973858 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097D570);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Activating path monitor", v11, 2u);
    }

    *(v1 + 112) = 0;
    v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathMonitor);
    v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_queue);
    NWPathMonitor.start(queue:)();
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v15;
    v17 = sub_1002B3098(0, 0, v6, &unk_100801EA8, v16);
    v18 = *(v1 + v7);
    *(v1 + v7) = v17;
  }

  return result;
}

uint64_t sub_10041E4B0()
{
  v1[8] = v0;
  v2 = sub_10028088C(&qword_100975658, &qword_1007F8A40);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = *(*(sub_10028088C(&qword_10097D5E8, &unk_100801E90) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10041E61C, v0, 0);
}

uint64_t sub_10041E61C()
{
  v1 = v0[8];
  if (*(v1 + 112))
  {
LABEL_8:
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[11];

    v20 = v0[1];

    return v20();
  }

  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v5 = *(v4 + 56);
  v0[16] = v5;
  v0[17] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v2, 0, 1, v3);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation;
  v0[18] = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation;
  swift_beginAccess();
  sub_10041FED4(v2, v1 + v6);
  swift_endAccess();
  if ((*(v4 + 48))(v1 + v6, 1, v3))
  {
    if (qword_100973858 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097D570);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Finished waiting for reachability", v10, 2u);
    }

    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[15];
    v14 = v0[16];
    v15 = v0[12];
    v16 = v0[8];

    v14(v13, 1, 1, v15);
    swift_beginAccess();
    sub_10041FED4(v13, v16 + v11);
    swift_endAccess();
    goto LABEL_8;
  }

  v23 = v0[13];
  v22 = v0[14];
  v24 = v0[12];
  (*(v23 + 16))(v22, v1 + v6, v24);
  SFProgressContinuation.task.getter();
  (*(v23 + 8))(v22, v24);
  v25 = async function pointer to SFProgressTask.finalValue.getter[1];
  v26 = swift_task_alloc();
  v0[19] = v26;
  *v26 = v0;
  v26[1] = sub_10041E968;
  v27 = v0[11];
  v28 = v0[9];

  return SFProgressTask.finalValue.getter(v0 + 20, v28);
}

uint64_t sub_10041E968()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_1004200A8;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_10041EB14;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10041EB14()
{
  if (qword_100973858 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097D570);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished waiting for reachability", v4, 2u);
  }

  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[12];
  v10 = v0[8];

  v8(v7, 1, 1, v9);
  swift_beginAccess();
  sub_10041FED4(v7, v10 + v5);
  swift_endAccess();
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10041ECA0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D570);
  v1 = sub_10000C4AC(v0, qword_10097D570);
  if (qword_100973760 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10041ED68()
{
  ObjectType = swift_getObjectType();
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v16 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation;
  v10 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  (*(*(v10 - 8) + 56))(&v0[v9], 1, 1, v10);
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathUpdateTask] = 0;
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_queue;
  sub_1002DDC10();
  static DispatchQoS.default.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10041FFF8(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_1002808D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  *&v0[v15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = type metadata accessor for NWPathMonitor();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathMonitor] = NWPathMonitor.init()();
  v0[112] = 0;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t sub_10041F0AC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1003778DC;

    return sub_10041F194();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10041F194()
{
  v1[9] = v0;
  v2 = *(*(sub_10028088C(&qword_10097D5E8, &unk_100801E90) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v3 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = type metadata accessor for NWPath.Status();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = type metadata accessor for NWPath();
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&qword_1009787B0, &qword_1007FB9A0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v13 = type metadata accessor for NWPathMonitor.Iterator();
  v1[23] = v13;
  v14 = *(v13 - 8);
  v1[24] = v14;
  v15 = *(v14 + 64) + 15;
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_10041F3FC, v0, 0);
}

uint64_t sub_10041F3FC()
{
  v1 = *(v0 + 200);
  v2 = *(*(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathMonitor);

  NWPathMonitor.makeAsyncIterator()();
  v3 = sub_10041FFF8(&qword_10097D5F0, type metadata accessor for SDNWPathMonitor);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation;
  *(v0 + 208) = v3;
  *(v0 + 216) = v4;
  *(v0 + 240) = enum case for NWPath.Status.satisfied(_:);
  v5 = sub_10041FFF8(&qword_10097D5F8, &type metadata accessor for NWPathMonitor.Iterator);
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_10041F548;
  v8 = *(v0 + 200);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v5);
}

uint64_t sub_10041F548()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v2;

  v6 = *(v3 + 208);
  v7 = *(v3 + 72);
  swift_getObjectType();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v10 = sub_10041FC58;
  }

  else
  {
    v10 = sub_10041F6A4;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10041F6C0()
{
  v61 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 240);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v58 = *(v0 + 72);
    (*(v3 + 32))(*(v0 + 168), v1, v2);
    NWPath.status.getter();
    (*(v16 + 104))(v14, v12, v15);
    v17 = static NWPath.Status.== infix(_:_:)();
    v18 = *(v16 + 8);
    v18(v14, v15);
    v18(v13, v15);
    if ((v17 & 1) == *(v58 + 112))
    {
      (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
    }

    else
    {
      if (qword_100973858 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 160);
      v19 = *(v0 + 168);
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_10097D570);
      (*(v22 + 16))(v20, v19, v21);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      v26 = os_log_type_enabled(v24, v25);
      v28 = *(v0 + 152);
      v27 = *(v0 + 160);
      v29 = *(v0 + 144);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = v59;
        *v30 = 67109378;
        *(v30 + 4) = v17 & 1;
        *(v30 + 8) = 2080;
        v57 = v25;
        v31 = NWPath.debugDescription.getter();
        v33 = v32;
        v34 = *(v28 + 8);
        v34(v27, v29);
        v35 = sub_10000C4E4(v31, v33, &v60);

        *(v30 + 10) = v35;
        _os_log_impl(&_mh_execute_header, v24, v57, "Path update %{BOOL}d - %s", v30, 0x12u);
        sub_10000C60C(v59);
      }

      else
      {

        v34 = *(v28 + 8);
        v34(v27, v29);
      }

      *(*(v0 + 72) + 112) = v17 & 1;
      if (v17)
      {
        v36 = *(v0 + 216);
        v37 = *(v0 + 88);
        v38 = *(v0 + 96);
        v39 = *(v0 + 72);
        swift_beginAccess();
        if ((*(v38 + 48))(v39 + v36, 1, v37))
        {
          v40 = *(v0 + 152) + 8;
          v34(*(v0 + 168), *(v0 + 144));
          swift_endAccess();
        }

        else
        {
          v42 = *(v0 + 168);
          v43 = *(v0 + 144);
          v45 = *(v0 + 96);
          v44 = *(v0 + 104);
          v46 = *(v0 + 88);
          v47 = *(v0 + 152) + 8;
          (*(v45 + 16))(v44, *(v0 + 72) + *(v0 + 216), v46);
          swift_endAccess();
          *(v0 + 244) = 1;
          SFProgressContinuation.finish(with:)();
          (*(v45 + 8))(v44, v46);
          v34(v42, v43);
        }

        v48 = *(v0 + 216);
        v50 = *(v0 + 72);
        v49 = *(v0 + 80);
        (*(*(v0 + 96) + 56))(v49, 1, 1, *(v0 + 88));
        swift_beginAccess();
        sub_10041FED4(v49, v50 + v48);
        swift_endAccess();
      }

      else
      {
        v41 = *(v0 + 152) + 8;
        v34(*(v0 + 168), *(v0 + 144));
      }
    }

    v51 = sub_10041FFF8(&qword_10097D5F8, &type metadata accessor for NWPathMonitor.Iterator);
    v52 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v53 = swift_task_alloc();
    *(v0 + 224) = v53;
    *v53 = v0;
    v53[1] = sub_10041F548;
    v54 = *(v0 + 200);
    v55 = *(v0 + 176);
    v56 = *(v0 + 184);

    return dispatch thunk of AsyncIteratorProtocol.next()(v55, v56, v51);
  }
}

uint64_t sub_10041FC58()
{
  *(v0 + 64) = *(v0 + 232);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10041FCE4()
{
  sub_100420040(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_reachableContinuation);
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathMonitor);

  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDNWPathMonitor_pathUpdateTask);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SDNWPathMonitor()
{
  result = qword_10097D5D0;
  if (!qword_10097D5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10041FDA8()
{
  sub_10041FE70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10041FE70()
{
  if (!qword_10097D5E0)
  {
    sub_100280938(&unk_1009755E0, &qword_1007F8970);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097D5E0);
    }
  }
}

uint64_t sub_10041FED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097D5E8, &unk_100801E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10041FF44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_10041F08C(a1, v4, v5, v6);
}

uint64_t sub_10041FFF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100420040(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097D5E8, &unk_100801E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004200AC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097D600);
  v1 = sub_10000C4AC(v0, qword_10097D600);
  if (qword_1009736C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100420174()
{
  v52 = sub_10028088C(&qword_10097D808, &unk_100801F00);
  v0 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v49 = &v36 - v1;
  v2 = sub_10028088C(&qword_10097D810, &qword_100803210);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v48 = &v36 - v4;
  v47 = type metadata accessor for SFTempPairingSenderStateUpdate();
  v5 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v46 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10028088C(&qword_10097D818, &qword_100801F10);
  v7 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v41 = &v36 - v8;
  v9 = sub_10028088C(&qword_10097D820, &unk_100801F18);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v40 = &v36 - v11;
  v39 = type metadata accessor for SFTempPairingStateUpdate();
  v12 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v37 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v37);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_queue.Attributes();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v36 = sub_1002DDC10();
  static DispatchQoS.userInitiated.getter();
  v53 = _swiftEmptyArrayStorage;
  sub_1004217EC();
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = v44;
  *(v44 + 16) = v22;
  *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server) = 0;
  *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client) = 0;
  SFTempPairingStateUpdate.init()();
  v24 = sub_10028088C(&qword_10097D828, &qword_100801F28);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = CurrentValueSubject.init(_:)();
  *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_receiverStateUpdateSequence) = v27;
  v53 = v27;
  sub_100011630(&qword_10097D830, &qword_10097D828, &qword_100801F28);
  Publisher<>.values.getter();
  sub_100011630(&qword_10097D838, &qword_10097D818, &qword_100801F10);
  v28 = v40;
  SFNoThrowAsyncSequence.init<A>(_:)();
  (*(v42 + 32))(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_receiverStateUpdates, v28, v43);
  SFTempPairingSenderStateUpdate.init()();
  v29 = sub_10028088C(&qword_10097D840, &unk_100801F30);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = CurrentValueSubject.init(_:)();
  *(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdateSequence) = v32;
  v53 = v32;
  sub_100011630(&qword_10097D848, &qword_10097D840, &unk_100801F30);
  Publisher<>.values.getter();
  sub_100011630(&qword_10097D850, &qword_10097D808, &unk_100801F00);
  v33 = v48;
  SFNoThrowAsyncSequence.init<A>(_:)();
  (*(v50 + 32))(v23 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdates, v33, v51);
  v34 = [objc_opt_self() defaultCenter];
  [v34 addObserver:v23 selector:"handleRapportIdentitiesChanged" name:off_1009731D0 object:0];

  return v23;
}

void sub_100420850()
{
  v21[3] = &type metadata for SharingFeatureFlags;
  v21[4] = sub_10002F2C4();
  LOBYTE(v21[0]) = 5;
  v1 = isFeatureEnabled(_:)();
  sub_10000C60C(v21);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client;
    if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client))
    {
      v9 = *(v0 + 16);
      v10 = objc_allocWithZone(type metadata accessor for SDTempPairingClient(0));
      v11 = v9;
      v12 = v0;
      v13 = sub_10040CF68(v11);
      v14 = *(v0 + v2);
      *(v12 + v2) = v13;
      v4 = v13;

      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      v18 = (v4 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      v19 = *(&v4->isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      v20 = *(&v4[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_objectChanged);
      *v18 = sub_100421A20;
      v18[1] = v17;

      sub_1002F5A40(v19, v20);

      sub_10040D338();
      sub_100421110(v4);
      goto LABEL_13;
    }

    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097D600);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Attempted to start browsing but already browsing";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  else
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_10097D600);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "PIN Pairing not enabled";
      goto LABEL_11;
    }
  }

LABEL_13:
}

void sub_100420B18()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      sub_100421110(Strong);
    }

    else
    {
    }
  }
}

uint64_t sub_100420BA8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100420E40();
  }

  return result;
}

void sub_100420C00()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client);
  if (v1)
  {
    v2 = v1;
    v3 = sub_100421844();
    sub_10040F030(v3, v4);
  }

  else
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097D600);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Attempting to connect while not browsing.", v7, 2u);
    }
  }
}

void sub_100420D34()
{
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client);
  if (v1)
  {
    oslog = v1;
    sub_10040F8B4();
  }

  else
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097D600);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Attempting to disconnect while not browsing.", v4, 2u);
    }
  }
}

uint64_t sub_100420E40()
{
  v1 = v0;
  v20 = sub_10028088C(&qword_10097D808, &unk_100801F00);
  v2 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v19 = sub_10028088C(&qword_10097D810, &qword_100803210);
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v19);
  v6 = &v18 - v5;
  v18 = type metadata accessor for SFTempPairingSenderStateUpdate();
  v7 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdateSequence;
  v9 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdateSequence);
  LOBYTE(v21) = 1;

  CurrentValueSubject.send(completion:)();

  v10 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server) = 0;

  SFTempPairingSenderStateUpdate.init()();
  v11 = sub_10028088C(&qword_10097D840, &unk_100801F30);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = CurrentValueSubject.init(_:)();
  v15 = *(v1 + v8);
  *(v1 + v8) = v14;

  v21 = v14;
  sub_100011630(&qword_10097D848, &qword_10097D840, &unk_100801F30);
  Publisher<>.values.getter();

  sub_100011630(&qword_10097D850, &qword_10097D808, &unk_100801F00);
  SFNoThrowAsyncSequence.init<A>(_:)();
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdates;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v16, v6, v19);
  return swift_endAccess();
}

uint64_t sub_100421110(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFTempPairingStateUpdate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  SFTempPairingStateUpdate.init()();
  sub_10040C4E8();
  SFTempPairingStateUpdate.nearbyDeviceNames.setter();
  sub_10041318C();
  SFTempPairingStateUpdate.connectedDeviceNames.setter();
  v15 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_connectionState);
  SFTempPairingStateUpdate.connectionState.setter();
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary19SDTempPairingClient_nearbyDevicesByIdentifier;
  swift_beginAccess();
  v17 = *(a1 + v16);

  sub_10054AA7C(1, v17);

  SFTempPairingStateUpdate.isNearbyDeviceClose.setter();
  sub_100421844();
  SFTempPairingStateUpdate.sharingName.setter();
  if (qword_100973860 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000C4AC(v18, qword_10097D600);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v21 = 136315138;
    swift_beginAccess();
    v32 = v2;
    v22 = *(v5 + 16);
    v22(v12, v14, v4);
    v22(v9, v12, v4);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    (*(v5 + 8))(v12, v4);
    v26 = v23;
    v2 = v32;
    v27 = sub_10000C4E4(v26, v25, &v33);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Updating pairing state: %s", v21, 0xCu);
    sub_10000C60C(v31);
  }

  v28 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_receiverStateUpdateSequence);
  swift_beginAccess();
  CurrentValueSubject.send(_:)();
  return (*(v5 + 8))(v14, v4);
}

uint64_t sub_1004214D0()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_receiverStateUpdates;
  v2 = sub_10028088C(&qword_10097D820, &unk_100801F18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdates;
  v4 = sub_10028088C(&qword_10097D810, &qword_100803210);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_receiverStateUpdateSequence);

  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_senderStateUpdateSequence);

  v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server);

  v8 = *(*v0 + 12);
  v9 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDTempPairingService()
{
  result = qword_10097D670;
  if (!qword_10097D670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100421660()
{
  sub_100421798(319, &qword_10097D680, &type metadata accessor for SFTempPairingStateUpdate);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100421798(319, &unk_10097D688, &type metadata accessor for SFTempPairingSenderStateUpdate);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100421798(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for SFNoThrowAsyncSequence();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1004217EC()
{
  result = qword_100973C60;
  if (!qword_100973C60)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973C60);
  }

  return result;
}

id sub_100421844()
{
  v0 = objc_opt_self();
  result = [v0 sharedMonitor];
  if (result)
  {
    v2 = result;
    v3 = [result meCard];

    if (v3)
    {
      v4 = [objc_opt_self() stringFromContact:v3 style:0];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v6;
      }
    }

    result = [v0 sharedMonitor];
    if (result)
    {
      v7 = result;
      v8 = [result computerName];

      if (v8)
      {
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        if (qword_100973860 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_10000C4AC(v9, qword_10097D600);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Could not find local sharing name.", v12, 2u);
        }

        return 0;
      }

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100421A20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100420B18();
}

void sub_100421A28()
{
  v1 = sub_10028088C(&qword_10097A7E8, &unk_1007FD9C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v32 - v3 + 8;
  v5 = type metadata accessor for NWEndpoint.Port();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for NWListener.Service();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v32[3] = &type metadata for SharingFeatureFlags;
  v32[4] = sub_10002F2C4();
  LOBYTE(v32[0]) = 5;
  v12 = isFeatureEnabled(_:)();
  sub_10000C60C(v32);
  if ((v12 & 1) == 0)
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_10097D600);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "PIN Pairing not enabled";
    goto LABEL_11;
  }

  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_server))
  {
    if (qword_100973860 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097D600);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Attempted to start advertising but already advertising";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

LABEL_12:

    return;
  }

  sub_100421844();

  v31 = v0;
  v20 = *(v0 + 16);
  type metadata accessor for SDTempPairingServer();
  v21 = swift_allocObject();
  v21[6] = 0;
  v21[3] = 0;
  v21[4] = 0;
  v21[8] = _swiftEmptyArrayStorage;
  v21[9] = 0;
  v21[7] = [objc_allocWithZone(RPClient) init];
  v21[2] = v20;
  v22 = v20;
  NWListener.Service.init(applicationService:)();
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();

  static NWEndpoint.Port.any.getter();
  v23 = type metadata accessor for NWListener();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v21[5] = NWListener.init(using:on:)();
  (*(v8 + 16))(v4, v11, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  NWListener.service.setter();

  (*(v8 + 8))(v11, v7);
  v26 = v31;
  v27 = *(v31 + v13);
  *(v31 + v13) = v21;

  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v21[3];
  v30 = v21[4];
  v21[3] = sub_10042209C;
  v21[4] = v28;

  sub_1002F5A40(v29, v30);

  if (*(v26 + v13))
  {

    sub_1005930E8();
  }
}

unint64_t sub_100422100()
{
  result = qword_10097D9A8;
  if (!qword_10097D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9A8);
  }

  return result;
}

void _sSo11SFUserAlertC16DaemoniOSLibraryE015credentialShareB09isPasskeyABSb_tFZ_0(char a1)
{
  v2 = [objc_allocWithZone(SFUserAlert) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    [v2 setTitle:v4];

    if (a1)
    {
      v5 = String._bridgeToObjectiveC()();
      v6 = String._bridgeToObjectiveC()();
      v7 = SFLocalizedStringForKeyInStringsFileNamed();

      if (!v7)
      {
LABEL_5:
        [v2 setMessage:v7];

        [v2 setHasDefaultButton:1];
        return;
      }
    }

    else
    {
      v8 = String._bridgeToObjectiveC()();
      v7 = SFLocalizedStringForKey();

      if (!v7)
      {
        goto LABEL_5;
      }
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String._bridgeToObjectiveC()();

    goto LABEL_5;
  }

  __break(1u);
}

void _sSo11SFUserAlertC16DaemoniOSLibraryE07carPlayB0AByFZ_0()
{
  v0 = [objc_allocWithZone(SFUserAlert) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = SFLocalizedStringForKey();

  if (v2)
  {
    [v0 setTitle:v2];

    v3 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    [v0 setMessage:v4];
    [v0 setHasDefaultButton:1];
  }

  else
  {
    __break(1u);
  }
}

void _sSo11SFUserAlertC16DaemoniOSLibraryE03mdmB0AByFZ_0()
{
  v0 = [objc_allocWithZone(SFUserAlert) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = SFLocalizedStringForKey();

  if (v2)
  {
    [v0 setTitle:v2];

    v3 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    [v0 setMessage:v4];
    [v0 setHasDefaultButton:1];
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1004224E4(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100422518(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100422574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100422600(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 25))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10042265C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1004226C0()
{
  v1 = type metadata accessor for KeyDataFormatStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for IDSIdentifierFormatStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(144);
  v32 = v34;
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x80000001007907D0;
  String.append(_:)(v11);
  v34 = v0[1];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v12._countAndFlagsBits = 0x20644D202C22;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v34 = v0[3];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v13._countAndFlagsBits = 0x2720534449202CLL;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v14 = *(v0 + 12);
  v15 = *(v0 + 13);
  if (v15)
  {
    *&v33 = *(v0 + 12);
    *(&v33 + 1) = v15;

    static FormatStyle<>.idsID.getter();
    sub_100423BD8(&qword_10097D9C0, &type metadata accessor for IDSIdentifierFormatStyle);
    Sequence.formatted<A>(_:)();
    (*(v7 + 8))(v10, v6);

    v16 = *(&v34 + 1);
    v14 = v34;
  }

  else
  {
    v16 = 0;
  }

  *&v34 = v14;
  *(&v34 + 1) = v16;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v17._countAndFlagsBits = 0x204B5249202C27;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18 = *(v0 + 9);
  if (v18 >> 60 == 15)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    *&v33 = *(v0 + 8);
    *(&v33 + 1) = v18;
    sub_100294008(v33, v18);
    static FormatStyle<>.irk.getter();
    sub_100423B84();
    sub_100423BD8(&qword_10097D9B8, &type metadata accessor for KeyDataFormatStyle);
    Sequence.formatted<A>(_:)();
    (*(v2 + 8))(v5, v1);
    sub_100026AC0(v33, *(&v33 + 1));
    v20 = *(&v34 + 1);
    v19 = v34;
  }

  *&v34 = v19;
  *(&v34 + 1) = v20;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v21._countAndFlagsBits = 0x204B50202CLL;
  v21._object = 0xE500000000000000;
  String.append(_:)(v21);
  v22 = *(v0 + 11);
  if (v22 >> 60 == 15)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    *&v33 = *(v0 + 10);
    *(&v33 + 1) = v22;
    sub_100294008(v33, v22);
    static FormatStyle<>.publicKey.getter();
    sub_100423B84();
    sub_100423BD8(&qword_10097D9B8, &type metadata accessor for KeyDataFormatStyle);
    Sequence.formatted<A>(_:)();
    (*(v2 + 8))(v5, v1);
    sub_100026AC0(v33, *(&v33 + 1));
    v24 = *(&v34 + 1);
    v23 = v34;
  }

  *&v34 = v23;
  *(&v34 + 1) = v24;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v25._object = 0x80000001007907F0;
  v25._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v25);
  v33 = *v0;
  v34 = v33;
  sub_100339908(&v34, &v31);
  sub_1002F4C88();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v33, *(&v33 + 1));
  v26._countAndFlagsBits = 0xD000000000000017;
  v26._object = 0x8000000100790810;
  String.append(_:)(v26);
  v33 = v0[2];
  v31 = v0[2];
  sub_100339908(&v33, v30);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v31, *(&v31 + 1));
  v27._object = 0x8000000100790830;
  v27._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v27);
  v31 = v0[8];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v28._countAndFlagsBits = 0xD000000000000010;
  v28._object = 0x8000000100790850;
  String.append(_:)(v28);
  LOBYTE(v31) = *(v0 + 144);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return v32;
}

uint64_t sub_100422C80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "";
  }

  else
  {
    v5 = "RapportBrowseAgent";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = "RapportBrowseAgent";
  }

  else
  {
    v8 = "";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_100422D2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100422DAC()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100422E18()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100422E94@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7928, *a1);

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

void sub_100422EF4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "RapportBrowseAgent";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_100422F34()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_100422F70@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008D7928, v3);

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

uint64_t sub_100422FD4(uint64_t a1)
{
  v2 = sub_100424620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100423010(uint64_t a1)
{
  v2 = sub_100424620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10042304C(uint64_t a1, unint64_t a2)
{
  _StringGuts.grow(_:)(63);
  v4._countAndFlagsBits = 0xD000000000000025;
  v4._object = 0x8000000100790780;
  String.append(_:)(v4);
  sub_1002A9924(a1, a2);
  sub_1002F4C88();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(a1, a2);
  v5._object = 0x80000001007907B0;
  v5._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v5);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t sub_100423150(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v19 = a5;
  v16[1] = a4;
  v9 = sub_10028088C(&qword_10097D9F0, &qword_1008024B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100424620();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  v20 = 0;
  sub_1002A9924(a2, a3);
  sub_1002F3198();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_10028BCC0(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1004232F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100423C20(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100423354()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10042304C(*v0, *(v0 + 8));
}

unint64_t sub_100423364(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v2 = 0x6F72447269417349;
    if (a1 == 8)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 == 7)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
    if (a1 != 5)
    {
      v3 = 0xD000000000000013;
    }

    v4 = a1 <= 6u;
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 == 3)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD000000000000019;
    if (!a1)
    {
      v3 = 0xD000000000000014;
    }

    v4 = a1 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1004234B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100423364(*a1);
  v5 = v4;
  if (v3 == sub_100423364(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100423540()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100423364(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004235A4()
{
  sub_100423364(*v0);
  String.hash(into:)();
}

Swift::Int sub_1004235F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100423364(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100423658@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100423E44(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100423688@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100423364(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1004236D0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100423E44(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100423704(uint64_t a1)
{
  v2 = sub_1004245CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100423740(uint64_t a1)
{
  v2 = sub_1004245CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10042377C(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097D9D8, &qword_1008024A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8 - 8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1004245CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 2);
  v12 = *(v3 + 3);
  LOBYTE(v26) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v30 = *v3;
    v26 = *v3;
    v25 = 1;
    sub_100339908(&v30, v24);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v26, *(&v26 + 1));
    v29 = v3[2];
    v26 = v3[2];
    v25 = 2;
    sub_100339908(&v29, v24);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v26, *(&v26 + 1));
    v14 = *(v3 + 6);
    v15 = *(v3 + 7);
    LOBYTE(v26) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = v3[4];
    v26 = v3[4];
    v25 = 4;
    sub_100339908(&v28, v24);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v26, *(&v26 + 1));
    v26 = v3[5];
    v27 = v26;
    v25 = 5;
    sub_100339908(&v27, v24);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v26, *(&v26 + 1));
    v16 = *(v3 + 12);
    v17 = *(v3 + 13);
    LOBYTE(v26) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 14);
    v19 = *(v3 + 120);
    LOBYTE(v26) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 16);
    v21 = *(v3 + 17);
    LOBYTE(v26) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 144);
    LOBYTE(v26) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_100423AF4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100423E90(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

unint64_t sub_100423B84()
{
  result = qword_10097D9B0;
  if (!qword_10097D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9B0);
  }

  return result;
}

uint64_t sub_100423BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100423C20(uint64_t *a1)
{
  v3 = sub_10028088C(&qword_10097D9E0, &qword_1008024A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  v8 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100424620();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v10 = 0;
    sub_10000C60C(a1);
    sub_10028BCC0(0, 0xF000000000000000);
  }

  else
  {
    v13 = 0;
    sub_1002F309C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v12[0];
    v11 = v12[1];
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v12[0]) = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_1002A9924(v10, v11);
    sub_10000C60C(a1);
    sub_10028BCC0(v10, v11);
  }

  return v10;
}

unint64_t sub_100423E44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7978, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100423E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_10097D9C8, &qword_100802498);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v83 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v48 = a1;
  sub_10002CDC0(a1, v10);
  sub_1004245CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v84 = v2;
    v46 = 0uLL;
    v49 = 0;
    v50 = 0;
    v52 = 0uLL;
    v53 = 0;
    v54 = 0;
    v47 = 0;
    v51 = 0xF000000000000000;
    sub_10000C60C(v48);
    v66 = 0;
    v67 = 0xF000000000000000;
    v68 = 0uLL;
    *&v69 = 0;
    *(&v69 + 1) = 0xF000000000000000;
    v70 = v54;
    v71 = v49;
    v72 = v47;
    v73 = 0xF000000000000000;
    v74 = v53;
    v75 = v51;
    v76 = v52;
    v77 = v50;
    v78 = v83;
    *&v79[3] = *&v82[3];
    *v79 = *v82;
    v80 = v46;
    v81 = 2;
    return sub_1003CB878(&v66);
  }

  else
  {
    LOBYTE(v66) = 0;
    *&v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v45 + 1) = v13;
    LOBYTE(v55) = 1;
    sub_1002F309C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = v67;
    v44 = v66;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v55) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = a2;
    v15 = v66;
    v14 = v67;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v66) = 3;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *&v41 = v15;
    *(&v41 + 1) = v14;
    v54 = v16;
    v49 = v17;
    LOBYTE(v55) = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = v66;
    v40 = v67;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v55) = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = v18;
    v19 = v66;
    v20 = v67;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v66) = 6;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v19;
    v51 = v20;
    *&v52 = v21;
    *(&v52 + 1) = v22;
    LOBYTE(v66) = 7;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v83 = v23 & 1;
    LOBYTE(v66) = 8;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84 = 0;
    *&v46 = v24;
    *(&v46 + 1) = v25;
    v65 = 9;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84 = 0;
    v27 = v26;
    (*(v6 + 8))(v9, v5);
    *&v55 = v44;
    *(&v55 + 1) = v43;
    v28 = v45;
    v56 = v45;
    v29 = v41;
    v57 = v41;
    v30 = v49;
    *&v58 = v54;
    *(&v58 + 1) = v49;
    v31 = *(&v46 + 1);
    v32 = v47;
    *&v59 = v47;
    *(&v59 + 1) = v40;
    *&v60 = v53;
    *(&v60 + 1) = v51;
    v61 = v52;
    *&v62 = v50;
    HIDWORD(v39) = v83;
    BYTE8(v62) = v83;
    v33 = v46;
    v63 = v46;
    v64 = v27;
    sub_1003CB81C(&v55, &v66);
    sub_10000C60C(v48);
    v66 = v44;
    v67 = v43;
    v68 = v28;
    v69 = __PAIR128__(*(&v41 + 1), v29);
    v70 = v54;
    v71 = v30;
    v72 = v32;
    v73 = v40;
    v74 = v53;
    v75 = v51;
    v76 = v52;
    v77 = v50;
    v78 = BYTE4(v39);
    *&v80 = v33;
    *(&v80 + 1) = v31;
    v81 = v27;
    result = sub_1003CB878(&v66);
    v34 = v62;
    v35 = v42;
    *(v42 + 96) = v61;
    *(v35 + 112) = v34;
    *(v35 + 128) = v63;
    *(v35 + 144) = v64;
    v36 = v58;
    *(v35 + 32) = v57;
    *(v35 + 48) = v36;
    v37 = v60;
    *(v35 + 64) = v59;
    *(v35 + 80) = v37;
    v38 = v56;
    *v35 = v55;
    *(v35 + 16) = v38;
  }

  return result;
}

unint64_t sub_1004245CC()
{
  result = qword_10097D9D0;
  if (!qword_10097D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9D0);
  }

  return result;
}

unint64_t sub_100424620()
{
  result = qword_10097D9E8;
  if (!qword_10097D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9E8);
  }

  return result;
}

uint64_t _s16DiscoverResponseV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16DiscoverResponseV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004247D8()
{
  result = qword_10097D9F8;
  if (!qword_10097D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D9F8);
  }

  return result;
}

unint64_t sub_100424830()
{
  result = qword_10097DA00;
  if (!qword_10097DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA00);
  }

  return result;
}

unint64_t sub_100424888()
{
  result = qword_10097DA08;
  if (!qword_10097DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA08);
  }

  return result;
}

unint64_t sub_1004248E0()
{
  result = qword_10097DA10;
  if (!qword_10097DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA10);
  }

  return result;
}

unint64_t sub_100424938()
{
  result = qword_10097DA18;
  if (!qword_10097DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA18);
  }

  return result;
}

unint64_t sub_100424990()
{
  result = qword_10097DA20;
  if (!qword_10097DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA20);
  }

  return result;
}

uint64_t sub_1004249E4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097DA28);
  v1 = sub_10000C4AC(v0, qword_10097DA28);
  if (qword_100973748 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_100424AAC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100424B74(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097DAA0, &unk_100802890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8 - 8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100426514();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v17) = *(v3 + 16);
    v16[0] = 1;
    sub_100426568();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + 3);
    v18 = v17;
    v16[23] = 2;
    sub_100339908(&v18, v16);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v17, *(&v17 + 1));
    v13 = v3[5];
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100424D70()
{
  v1 = 0x6574617473;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_100424DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004265BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100424E20(uint64_t a1)
{
  v2 = sub_100426514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100424E5C(uint64_t a1)
{
  v2 = sub_100426514();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100424E98@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100426728(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100424EF4(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    v9 = a2();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v6 = a3();
    v12 = *(v8 + v4);
    *(v8 + v4) = v6;
  }

  return v6;
}

void sub_100425040(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

void sub_1004250F8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_100425210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004252D4;
  v9[3] = &unk_1008E0F48;
  v6 = _Block_copy(v9);
  v7 = *(a4 + 16);

  v7(a4, a1, v6);
  _Block_release(v6);
}

uint64_t sub_1004252D4(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  sub_10028BCC0(v2, v7);
}

id sub_10042536C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager____lazy_storage___decoder] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager____lazy_storage___encoder] = 0;
  v2 = &v0[OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (!v5)
  {
    v5 = [objc_opt_self() standardUserDefaults];
  }

  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_localStorage] = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_100425488(void *a1)
{
  v3 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:{objc_msgSend(a1, "productIdentifier")}];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportsDigitalEngraving];

    if (v5)
    {
      v6 = [a1 addressString];
      if (v6)
      {
        v7 = v6;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        sub_1004256B4(v8, v10, v15);
        if (v15[1])
        {
          sub_10042637C(v15);
        }

        else
        {
          v16[0] = v8;
          v16[1] = v10;
          v17 = 0;
          v18 = xmmword_1007F8A80;
          v19 = 0;

          sub_100425A98(v16);

          sub_10028BCC0(0, 0xF000000000000000);
          v11 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler);
          if (v11)
          {
            v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler + 8);
            v13 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v14 = swift_allocObject();
            v14[2] = v8;
            v14[3] = v10;
            v14[4] = v13;
            sub_1000387D0(v11);

            v11(a1, sub_100426370, v14);
            sub_100015D04(v11);
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_1004256B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_localStorage);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 dictionaryForKey:v8];

  v10 = 0uLL;
  if (!v9)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v11 + 16) || (v12 = sub_100012854(a1, a2), (v13 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_10000C5B0(*(v11 + 56) + 32 * v12, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v10 = 0uLL;
    goto LABEL_9;
  }

  v15 = v24;
  v14 = v25;
  sub_100424EF4(&OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager____lazy_storage___decoder, &type metadata accessor for JSONDecoder, &JSONDecoder.init());
  sub_1004264A0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100026AC0(v15, v14);

  v16 = v20[0];
  v17 = v20[1];
  v18 = v21;
  v10 = v22;
  v19 = v23;
LABEL_9:
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v10;
  *(a3 + 40) = v19;
}

void sub_100425A98(uint64_t a1)
{
  v2 = v1;
  sub_100424EF4(&OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager____lazy_storage___encoder, &type metadata accessor for JSONEncoder, &JSONEncoder.init());
  v4 = *(a1 + 16);
  v31 = *a1;
  v32 = v4;
  v33 = *(a1 + 32);
  sub_1004263E4();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_localStorage;
  v9 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary32HeadphoneDigitalEngravingManager_localStorage);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 dictionaryForKey:v10];

  if (v11)
  {
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v14 = *a1;
  v13 = *(a1 + 8);
  *(&v32 + 1) = &type metadata for Data;
  *&v31 = v5;
  *(&v31 + 1) = v7;
  sub_1000106E0(&v31, v30);

  sub_100294008(v5, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v12;
  sub_100011170(v30, v14, v13, isUniquelyReferenced_nonNull_native);
  v16 = *(v2 + v8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = String._bridgeToObjectiveC()();
  [v16 setObject:isa forKey:{v18, v29}];

  if (qword_100973868 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_10097DA28);
  sub_100294008(v5, v7);
  sub_100426438(a1, &v31);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100026AC0(v5, v7);
  sub_100426470(a1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *&v30[0] = swift_slowAlloc();
    *v22 = 136315394;
    *&v31 = v5;
    *(&v31 + 1) = v7;
    sub_100294008(v5, v7);
    v23 = String.init<A>(describing:)();
    v25 = sub_10000C4E4(v23, v24, v30);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *&v31 = v14;
    *(&v31 + 1) = v13;
    v26 = String.init<A>(describing:)();
    v28 = sub_10000C4E4(v26, v27, v30);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Storing engraving data received from AACP %s for:%s", v22, 0x16u);
    swift_arrayDestroy();

    sub_100026AC0(v5, v7);
  }

  else
  {

    sub_100026AC0(v5, v7);
  }
}

void sub_10042604C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v29 = v4;
    v30 = v5;
    sub_100294008(a1, a2);
    if (qword_100973868 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_10097DA28);
    sub_100294008(a1, a2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    sub_10028BCC0(a1, a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v13 = 136315138;
      v23 = a1;
      v24 = a2;
      sub_100294008(a1, a2);
      v14 = String.init<A>(describing:)();
      v16 = a4;
      v17 = a3;
      v18 = sub_10000C4E4(v14, v15, &v22);

      *(v13 + 4) = v18;
      a3 = v17;
      a4 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Engraving data received from AACP %s", v13, 0xCu);
      sub_10000C60C(v21);
    }

    v23 = a3;
    v24 = a4;
    v25 = 1;
    v26 = a1;
    v27 = a2;
    v28 = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;

      sub_100425A98(&v23);

      sub_10028BCC0(a1, a2);
    }

    else
    {
      sub_10028BCC0(a1, a2);
    }
  }
}

uint64_t sub_10042637C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097DA88, &unk_100802778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004263E4()
{
  result = qword_10097DA90;
  if (!qword_10097DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA90);
  }

  return result;
}

unint64_t sub_1004264A0()
{
  result = qword_10097DA98;
  if (!qword_10097DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA98);
  }

  return result;
}

unint64_t sub_100426514()
{
  result = qword_10097DAA8;
  if (!qword_10097DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAA8);
  }

  return result;
}

unint64_t sub_100426568()
{
  result = qword_10097DAB0;
  if (!qword_10097DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAB0);
  }

  return result;
}

uint64_t sub_1004265BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100790990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001007909B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001007909D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100426728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_10097DAB8, &qword_1008028A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100426514();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v21) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v20 = v11;
  v24 = 1;
  sub_100426A04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v21;
  v24 = 2;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v14;
  v15 = v22;
  v19 = v21;
  LOBYTE(v21) = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);

  v17 = v19;
  sub_1002A9924(v19, v15);
  sub_10000C60C(a1);

  result = sub_10028BCC0(v17, v15);
  *a2 = v20;
  *(a2 + 8) = v13;
  *(a2 + 16) = v23;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

unint64_t sub_100426A04()
{
  result = qword_10097DAC0;
  if (!qword_10097DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAC0);
  }

  return result;
}

unint64_t sub_100426A7C()
{
  result = qword_10097DAC8;
  if (!qword_10097DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAC8);
  }

  return result;
}

unint64_t sub_100426AD4()
{
  result = qword_10097DAD0;
  if (!qword_10097DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAD0);
  }

  return result;
}

unint64_t sub_100426B2C()
{
  result = qword_10097DAD8;
  if (!qword_10097DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAD8);
  }

  return result;
}

unint64_t sub_100426B84()
{
  result = qword_10097DAE0;
  if (!qword_10097DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAE0);
  }

  return result;
}

unint64_t sub_100426BD8()
{
  result = qword_10097DAE8;
  if (!qword_10097DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DAE8);
  }

  return result;
}

uint64_t sub_100426C40()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097DAF0);
  v1 = sub_10000C4AC(v0, qword_10097DAF0);
  if (qword_100973760 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100426DC0(uint64_t a1, unint64_t a2)
{
  v33 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000C4AC(v9, qword_10097DAF0);
  v11 = v2;
  v32[1] = v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32[0] = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_10000C4E4(*&v11[OBJC_IVAR___SDDeferrableOperation_identifier], *&v11[OBJC_IVAR___SDDeferrableOperation_identifier + 8], &v36);
    *(v15 + 12) = 2048;
    v17 = OBJC_IVAR___SDDeferrableOperation_reasons;
    swift_beginAccess();
    *(v15 + 14) = *(*&v11[v17] + 16);

    _os_log_impl(&_mh_execute_header, v12, v13, "%s addReason start: %ld", v15, 0x16u);
    sub_10000C60C(v16);

    a1 = v32[0];
  }

  else
  {
  }

  v18 = *&v11[OBJC_IVAR___SDDeferrableOperation_queue];
  *v8 = v18;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v18)
  {
    sub_10042AB98();
    v20 = OBJC_IVAR___SDDeferrableOperation_reasons;
    swift_beginAccess();
    v21 = *&v11[v20];

    v22 = sub_100569230(a1, v33, v21);

    if (v22)
    {

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v34 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_10000C4E4(a1, v33, &v34);
        _os_log_impl(&_mh_execute_header, v23, v24, "Exiting addReason, %s is already in set", v25, 0xCu);
        sub_10000C60C(v26);
      }
    }

    else
    {
      swift_beginAccess();
      v27 = v33;

      sub_10046DAAC(&v35, a1, v27);
      swift_endAccess();

      v28 = v11;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        *(v31 + 4) = *(*&v11[v20] + 16);

        _os_log_impl(&_mh_execute_header, v29, v30, "addReason end: %ld", v31, 0xCu);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100427264(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v67 = sub_10028088C(&qword_10097DBB0, &unk_100802B50);
  v4 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v69 = &v63 - v5;
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v63 - v12;
  __chkstk_darwin(v11);
  v66 = &v63 - v14;
  v68 = type metadata accessor for Date();
  v72 = *(v68 - 8);
  v15 = *(v72 + 64);
  v16 = __chkstk_darwin(v68);
  v64 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v71 = &v63 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v73 = *(v19 - 8);
  v20 = *(v73 + 64);
  __chkstk_darwin(v19);
  v22 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000C4AC(v23, qword_10097DAF0);
  v25 = v2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v65 = v10;
  v70 = v13;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v75 = v63;
    *v29 = 136315394;
    *(v29 + 4) = sub_10000C4E4(*&v25[OBJC_IVAR___SDDeferrableOperation_identifier], *&v25[OBJC_IVAR___SDDeferrableOperation_identifier + 8], &v75);
    *(v29 + 12) = 2048;
    v30 = OBJC_IVAR___SDDeferrableOperation_reasons;
    swift_beginAccess();
    *(v29 + 14) = *(*&v25[v30] + 16);

    _os_log_impl(&_mh_execute_header, v26, v27, "%s removeReason start: %ld", v29, 0x16u);
    sub_10000C60C(v63);
  }

  else
  {
  }

  v31 = *&v25[OBJC_IVAR___SDDeferrableOperation_queue];
  *v22 = v31;
  v32 = v73;
  (*(v73 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v33 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v22, v19);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v34 = OBJC_IVAR___SDDeferrableOperation_reasons;
  swift_beginAccess();
  sub_10036DB18(v74, a2);
  swift_endAccess();

  v35 = OBJC_IVAR___SDDeferrableOperation_timedReasons;
  swift_beginAccess();
  v36 = *&v25[v35];
  if (*(v36 + 16))
  {
    v37 = *&v25[v35];

    v38 = sub_100012854(v74, a2);
    if (v39)
    {
      v63 = v34;
      v73 = v24;
      v41 = v71;
      v40 = v72;
      v42 = *(v72 + 16);
      v43 = v68;
      v42(v71, *(v36 + 56) + *(v72 + 72) * v38, v68);

      sub_10042AB98();
      swift_beginAccess();
      v44 = v66;
      sub_1002D3654(v74, a2, v66);
      sub_100005508(v44, &qword_10097A7F0, &unk_1007FB600);
      swift_endAccess();
      v45 = v70;
      v46 = v40;
      v47 = v43;
      v42(v70, v41, v43);
      (*(v46 + 56))(v45, 0, 1, v43);
      v48 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
      swift_beginAccess();
      v49 = *(v67 + 48);
      v50 = v69;
      sub_10000FF90(v45, v69, &qword_10097A7F0, &unk_1007FB600);
      sub_10000FF90(&v25[v48], v50 + v49, &qword_10097A7F0, &unk_1007FB600);
      v51 = *(v46 + 48);
      if (v51(v50, 1, v43) == 1)
      {
        sub_100005508(v45, &qword_10097A7F0, &unk_1007FB600);
        v52 = v51(v50 + v49, 1, v43);
        v34 = v63;
        if (v52 == 1)
        {
          sub_100005508(v50, &qword_10097A7F0, &unk_1007FB600);
          v53 = v71;
LABEL_18:
          sub_100429038();
          sub_1004297D0();
          goto LABEL_19;
        }
      }

      else
      {
        v54 = v65;
        sub_10000FF90(v50, v65, &qword_10097A7F0, &unk_1007FB600);
        if (v51(v50 + v49, 1, v43) != 1)
        {
          v55 = v72;
          v56 = v50 + v49;
          v57 = v64;
          (*(v72 + 32))(v64, v56, v47);
          sub_10042C9B8(&qword_10097DBB8);
          LODWORD(v74) = dispatch thunk of static Equatable.== infix(_:_:)();
          v58 = *(v55 + 8);
          v58(v57, v47);
          sub_100005508(v70, &qword_10097A7F0, &unk_1007FB600);
          v58(v54, v47);
          v53 = v71;
          sub_100005508(v50, &qword_10097A7F0, &unk_1007FB600);
          v34 = v63;
          if (v74)
          {
            goto LABEL_18;
          }

LABEL_19:
          (*(v72 + 8))(v53, v47);
          goto LABEL_20;
        }

        sub_100005508(v70, &qword_10097A7F0, &unk_1007FB600);
        (*(v72 + 8))(v54, v43);
        v34 = v63;
      }

      sub_100005508(v50, &qword_10097DBB0, &unk_100802B50);
      v53 = v71;
      goto LABEL_19;
    }
  }

  sub_10042AB98();
LABEL_20:
  v59 = v25;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = *(*(v34 + v25) + 16);

    _os_log_impl(&_mh_execute_header, v60, v61, "removeReason end: %ld", v62, 0xCu);
  }

  else
  {

    v60 = v59;
  }

  if (!*(*(v34 + v25) + 16) && *(&v59->isa + OBJC_IVAR___SDDeferrableOperation_pendingOperation) == 1)
  {
    sub_10042A81C(1);
  }
}

uint64_t sub_100427B50(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_100427BBC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v118 = a1;
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v108 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v105 = &v101 - v11;
  __chkstk_darwin(v10);
  v115 = &v101 - v12;
  v113 = type metadata accessor for DispatchPredicate();
  v112 = *(v113 - 8);
  v13 = v112[8];
  __chkstk_darwin(v113);
  v15 = (&v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v106 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v104 = &v101 - v22;
  v23 = __chkstk_darwin(v21);
  v103 = &v101 - v24;
  v25 = __chkstk_darwin(v23);
  v107 = &v101 - v26;
  __chkstk_darwin(v25);
  v28 = &v101 - v27;
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_10000C4AC(v29, qword_10097DAF0);
  v31 = v17[2];
  v110 = v17 + 2;
  v117 = v31;
  v31(v28, a3, v16);
  v32 = v3;

  v116 = v30;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = os_log_type_enabled(v33, v34);
  v114 = a3;
  v111 = a2;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v120[0] = v102;
    *v36 = 136315650;
    *(v36 + 4) = sub_10000C4E4(*&v32[OBJC_IVAR___SDDeferrableOperation_identifier], *&v32[OBJC_IVAR___SDDeferrableOperation_identifier + 8], v120);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_10000C4E4(v118, a2, v120);
    *(v36 + 22) = 2080;
    sub_10042C9B8(&qword_100983290);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v16;
    v40 = v39;
    v109 = v17[1];
    v109(v28, v38);
    v41 = sub_10000C4E4(v37, v40, v120);
    v16 = v38;
    v42 = v115;

    *(v36 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "%s pushPreventionDateForReason, reason: %s, date: %s", v36, 0x20u);
    swift_arrayDestroy();

    a3 = v114;

    v43 = v17;
  }

  else
  {

    v109 = v17[1];
    v109(v28, v16);
    v43 = v17;
    v42 = v115;
  }

  v44 = *&v32[OBJC_IVAR___SDDeferrableOperation_queue];
  *v15 = v44;
  v45 = v112;
  v46 = v113;
  (v112[13])(v15, enum case for DispatchPredicate.onQueue(_:), v113);
  v47 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  (v45[1])(v15, v46);
  v48 = v117;
  if ((v44 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_10042AB98();
  v49 = OBJC_IVAR___SDDeferrableOperation_reasons;
  swift_beginAccess();
  v50 = *&v32[v49];

  v51 = v111;
  v52 = sub_100569230(v118, v111, v50);

  if ((v52 & 1) == 0)
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "Cannot bump date for reason that is not in set";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v61, v62, v64, v63, 2u);
    }

LABEL_25:

    return;
  }

  v53 = OBJC_IVAR___SDDeferrableOperation_timedReasons;
  swift_beginAccess();
  v54 = *&v32[v53];
  if (*(v54 + 16))
  {
    v55 = *&v32[v53];

    v56 = sub_100012854(v118, v51);
    if (v57)
    {
      v58 = *(v54 + 56) + v43[9] * v56;
      v59 = v43;
      v60 = v107;
      v48(v107, v58, v16);

      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        v88 = v103;
        v48(v103, a3, v16);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v119[0] = v92;
          *v91 = 136315138;
          sub_10042C9B8(&qword_100983290);
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          v94 = v16;
          v96 = v95;
          v97 = v88;
          v98 = v109;
          v109(v97, v94);
          v99 = sub_10000C4E4(v93, v96, v119);

          *(v91 + 4) = v99;
          _os_log_impl(&_mh_execute_header, v89, v90, "This function is for moving the date further into the future: %s", v91, 0xCu);
          sub_10000C60C(v92);

          v98(v107, v94);
        }

        else
        {

          v100 = v109;
          v109(v88, v16);
          v100(v107, v16);
        }

        return;
      }

      v109(v60, v16);
      v43 = v59;
      v42 = v115;
    }

    else
    {
    }
  }

  v48(v42, a3, v16);
  v65 = v43[7];
  v113 = (v43 + 7);
  v112 = v65;
  (v65)(v42, 0, 1, v16);
  swift_beginAccess();

  sub_1002B1544(v42, v118, v51);
  swift_endAccess();
  v66 = v32;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v119[0] = v70;
    *v69 = 136315394;
    v71 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    v72 = &v66[v71];
    v73 = v105;
    sub_10000FF90(v72, v105, &qword_10097A7F0, &unk_1007FB600);
    if ((v43[6])(v73, 1, v16))
    {
      v74 = v43;
      v75 = v16;
      sub_100005508(v73, &qword_10097A7F0, &unk_1007FB600);
      v76 = 0x8000000100790A60;
      v77 = 0xD00000000000001ALL;
    }

    else
    {
      v78 = v104;
      v48(v104, v73, v16);
      sub_100005508(v73, &qword_10097A7F0, &unk_1007FB600);
      v118 = Date.description.getter();
      v76 = v79;
      v74 = v43;
      v75 = v16;
      v109(v78, v16);
      v77 = v118;
    }

    v80 = sub_10000C4E4(v77, v76, v119);

    *(v69 + 4) = v80;
    *(v69 + 12) = 1024;
    v81 = *&v66[OBJC_IVAR___SDDeferrableOperation_mainTimer];

    *(v69 + 14) = v81 != 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "preventUntilDate: %s, activeTimer: %{BOOL}d", v69, 0x12u);
    sub_10000C60C(v70);

    v42 = v115;
  }

  else
  {
    v74 = v43;
    v75 = v16;
  }

  v82 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
  swift_beginAccess();
  v83 = v108;
  sub_10000FF90(&v66[v82], v108, &qword_10097A7F0, &unk_1007FB600);
  if ((v74[6])(v83, 1, v75) == 1)
  {
    sub_100005508(v83, &qword_10097A7F0, &unk_1007FB600);
    v117(v42, v114, v75);
    (v112)(v42, 0, 1, v75);
    swift_beginAccess();
    sub_1003561CC(v42, &v66[v82]);
    swift_endAccess();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "First time setting date";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v84 = v106;
  (v74[4])(v106, v83, v75);
  if (static Date.> infix(_:_:)())
  {
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "preventUntilDate updated", v87, 2u);
    }

    v109(v84, v75);
    v117(v42, v114, v75);
    (v112)(v42, 0, 1, v75);
    swift_beginAccess();
    sub_1003561CC(v42, &v66[v82]);
    swift_endAccess();
  }

  else
  {
    v109(v84, v75);
  }
}

uint64_t sub_100428AA8()
{
  v1 = type metadata accessor for Date();
  v48 = *(v1 - 8);
  v2 = *(v48 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v47 = &v44 - v6;
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v44 - v12;
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_10097DAF0);
  v17 = v0;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = &unk_10097D000;
  if (os_log_type_enabled(v18, v19))
  {
    v45 = v5;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v49 = v22;
    *v21 = 136315394;
    v23 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    sub_10000FF90(&v17[v23], v15, &qword_10097A7F0, &unk_1007FB600);
    v24 = v48;
    if ((*(v48 + 48))(v15, 1, v1))
    {
      sub_100005508(v15, &qword_10097A7F0, &unk_1007FB600);
      v25 = 0x8000000100790A60;
      v26 = 0xD00000000000001ALL;
    }

    else
    {
      v27 = *(v24 + 16);
      v44 = v13;
      v28 = v1;
      v29 = v47;
      v27(v47, v15, v28);
      sub_100005508(v15, &qword_10097A7F0, &unk_1007FB600);
      v30 = Date.description.getter();
      v25 = v31;
      v32 = v29;
      v1 = v28;
      v13 = v44;
      (*(v24 + 8))(v32, v1);
      v26 = v30;
    }

    v33 = sub_10000C4E4(v26, v25, &v49);

    *(v21 + 4) = v33;
    *(v21 + 12) = 1024;
    v20 = &unk_10097D000;
    v34 = *&v17[OBJC_IVAR___SDDeferrableOperation_mainTimer];

    *(v21 + 14) = v34 != 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "scheduleOperation:%s, %{BOOL}d", v21, 0x12u);
    sub_10000C60C(v22);

    v5 = v45;
  }

  else
  {
  }

  v35 = *&v17[v20[360]];
  v36 = v48;
  if (!v35)
  {
    v37 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    sub_10000FF90(&v17[v37], v13, &qword_10097A7F0, &unk_1007FB600);
    if ((*(v36 + 48))(v13, 1, v1) == 1)
    {
      sub_100005508(v13, &qword_10097A7F0, &unk_1007FB600);
    }

    else
    {
      (*(v36 + 32))(v5, v13, v1);
      v38 = v1;
      v39 = v47;
      Date.init()();
      v40 = static Date.< infix(_:_:)();
      v41 = *(v36 + 8);
      v41(v39, v38);
      if (v40)
      {
        v42 = v46;
        (*(v36 + 56))(v46, 1, 1, v38);
        swift_beginAccess();
        sub_1003561CC(v42, &v17[v37]);
        swift_endAccess();
        sub_10042AB98();
      }

      else
      {
        sub_1004297D0();
      }

      v41(v5, v38);
    }
  }

  return sub_10042A81C(0);
}

void sub_100429038()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v66);
  v65 = &v62 - v9;
  v10 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v62 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v1[OBJC_IVAR___SDDeferrableOperation_queue];
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v22)
  {
    v62 = v6;
    if (qword_100973870 == -1)
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
  v23 = type metadata accessor for Logger();
  v24 = sub_10000C4AC(v23, qword_10097DAF0);
  v25 = v1;
  v67 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v69 = v3;
  v70 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v71 = v30;
    *v29 = 136315138;
    v31 = OBJC_IVAR___SDDeferrableOperation_timedReasons;
    swift_beginAccess();
    v32 = *&v70[v31];

    v33 = Dictionary.description.getter();
    v34 = v7;
    v36 = v35;
    v25 = v70;

    v37 = sub_10000C4E4(v33, v36, &v71);
    v7 = v34;

    *(v29 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "recalculateDate timedReasons:%s", v29, 0xCu);
    sub_10000C60C(v30);

    v3 = v69;
  }

  v38 = OBJC_IVAR___SDDeferrableOperation_timedReasons;
  swift_beginAccess();
  v39 = *&v25[v38];
  v40 = *(v39 + 16);
  if (v40)
  {
    v63 = v2;
    v41 = sub_10028F7AC(v40, 0);
    v42 = sub_1002920C0(&v71, v41 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v40, v39);
    swift_bridgeObjectRetain_n();
    sub_100027D64();
    if (v42 != v40)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v2 = v63;
    v3 = v69;
  }

  else
  {
    v43 = *&v25[v38];

    v41 = _swiftEmptyArrayStorage;
  }

  v71 = v41;
  sub_10042B5F0(&v71);

  v44 = v70;
  if (v71[2])
  {
    v45 = v65;
    sub_10000FF90(v71 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v65, &qword_1009750E8, &qword_1007FBB20);

    v46 = *(v45 + 8);

    v47 = v68;
    (*(v3 + 32))(v68, v45 + *(v66 + 48), v2);
    v48 = 0;
  }

  else
  {

    v48 = 1;
    v47 = v68;
  }

  (*(v3 + 56))(v47, v48, 1, v2);
  v49 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
  swift_beginAccess();
  sub_1003561CC(v47, &v44[v49]);
  swift_endAccess();
  v50 = v44;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v71 = v54;
    *v53 = 136315138;
    v55 = v64;
    sub_10000FF90(&v44[v49], v64, &qword_10097A7F0, &unk_1007FB600);
    if ((*(v3 + 48))(v55, 1, v2))
    {
      sub_100005508(v55, &qword_10097A7F0, &unk_1007FB600);
      v56 = 0x8000000100790A60;
      v57 = 0xD00000000000001ALL;
    }

    else
    {
      v58 = v62;
      (*(v3 + 16))(v62, v55, v2);
      sub_100005508(v55, &qword_10097A7F0, &unk_1007FB600);
      v59 = Date.description.getter();
      v56 = v60;
      (*(v3 + 8))(v58, v2);
      v57 = v59;
    }

    v61 = sub_10000C4E4(v57, v56, &v71);

    *(v53 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v51, v52, "recalculateDate, preventUntilDate changed to %s", v53, 0xCu);
    sub_10000C60C(v54);
  }
}

uint64_t sub_1004297D0()
{
  v116 = type metadata accessor for DispatchWorkItemFlags();
  v115 = *(v116 - 8);
  v1 = *(v115 + 64);
  __chkstk_darwin(v116);
  v113 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchQoS();
  v112 = *(v114 - 8);
  v3 = *(v112 + 64);
  __chkstk_darwin(v114);
  v111 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for DispatchTimeInterval();
  v119 = *(v120 - 8);
  v5 = *(v119 + 64);
  v6 = __chkstk_darwin(v120);
  v118 = (&v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v117 = &v106 - v8;
  v126 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v125 = *(v126 - 8);
  v9 = *(v125 + 64);
  __chkstk_darwin(v126);
  v124 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DispatchTime();
  v132 = *(v128 - 8);
  v11 = *(v132 + 64);
  v12 = __chkstk_darwin(v128);
  v123 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v106 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v133 = *(v15 - 1);
  v134 = v15;
  v16 = *(v133 + 64);
  __chkstk_darwin(v15);
  v18 = (&v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v121 = &v106 - v25;
  v26 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v122 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v110 = &v106 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v106 - v33;
  __chkstk_darwin(v32);
  v36 = &v106 - v35;
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_10000C4AC(v37, qword_10097DAF0);
  v39 = v0;
  v127 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v108 = v41;
    v129 = v24;
    v42 = v20;
    v43 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    aBlock[0] = v107;
    *v43 = 136315394;
    *(v43 + 4) = sub_10000C4E4(*&v39[OBJC_IVAR___SDDeferrableOperation_identifier], *&v39[OBJC_IVAR___SDDeferrableOperation_identifier + 8], aBlock);
    *(v43 + 12) = 2080;
    v44 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    sub_10000FF90(&v39[v44], v36, &qword_10097A7F0, &unk_1007FB600);
    v45 = (*(v42 + 48))(v36, 1, v19);
    v130 = v19;
    v109 = v42;
    if (v45)
    {
      v46 = 0xD00000000000001ALL;
      sub_100005508(v36, &qword_10097A7F0, &unk_1007FB600);
      v47 = 0x8000000100790A60;
    }

    else
    {
      v48 = v121;
      (*(v42 + 16))(v121, v36, v19);
      sub_100005508(v36, &qword_10097A7F0, &unk_1007FB600);
      v46 = Date.description.getter();
      v47 = v49;
      (*(v42 + 8))(v48, v19);
    }

    v50 = sub_10000C4E4(v46, v47, aBlock);

    *(v43 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v40, v108, "%s handleTimer %s", v43, 0x16u);
    swift_arrayDestroy();

    v24 = v129;
    v19 = v130;
    v20 = v109;
  }

  else
  {
  }

  v51 = *&v39[OBJC_IVAR___SDDeferrableOperation_queue];
  *v18 = v51;
  v53 = v133;
  v52 = v134;
  (*(v133 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v134);
  v54 = v51;
  v55 = _dispatchPreconditionTest(_:)();
  result = (*(v53 + 8))(v18, v52);
  if (v55)
  {
    v57 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
    swift_beginAccess();
    sub_10000FF90(&v39[v57], v34, &qword_10097A7F0, &unk_1007FB600);
    v58 = *(v20 + 48);
    if (v58(v34, 1, v19) == 1)
    {
      result = sub_100005508(v34, &qword_10097A7F0, &unk_1007FB600);
      v59 = OBJC_IVAR___SDDeferrableOperation_mainTimer;
      if (*&v39[OBJC_IVAR___SDDeferrableOperation_mainTimer])
      {
        v60 = *&v39[OBJC_IVAR___SDDeferrableOperation_mainTimer];
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
        v61 = *&v39[v59];
        *&v39[v59] = 0;
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(v20 + 32))(v24, v34, v19);
      sub_10042AB98();
      Date.timeIntervalSinceNow.getter();
      if (v62 <= 0.0)
      {
        v88 = v122;
        (*(v20 + 56))(v122, 1, 1, v19);
        swift_beginAccess();
        sub_1003561CC(v88, &v39[v57]);
        swift_endAccess();
        v89 = *&v39[OBJC_IVAR___SDDeferrableOperation_mainTimer];
        *&v39[OBJC_IVAR___SDDeferrableOperation_mainTimer] = 0;
        swift_unknownObjectRelease();
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "handleTimer calling try operation", v92, 2u);
        }

        sub_10042A81C(1);
        return (*(v20 + 8))(v24, v19);
      }

      else
      {
        v129 = v24;
        v130 = v19;
        v63 = v123;
        static DispatchTime.now()();
        + infix(_:_:)();
        v64 = *(v132 + 8);
        v132 += 8;
        v64(v63, v128);
        v65 = OBJC_IVAR___SDDeferrableOperation_mainTimer;
        if (*&v39[OBJC_IVAR___SDDeferrableOperation_mainTimer])
        {
          v66 = *&v39[OBJC_IVAR___SDDeferrableOperation_mainTimer];
          swift_getObjectType();
          swift_unknownObjectRetain();
          OS_dispatch_source.cancel()();
          swift_unknownObjectRelease();
          v67 = *&v39[v65];
          *&v39[v65] = 0;
          swift_unknownObjectRelease();
        }

        sub_10042B59C();
        v68 = v124;
        static OS_dispatch_source.TimerFlags.strict.getter();
        v69 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
        (*(v125 + 8))(v68, v126);
        v70 = *&v39[v65];
        *&v39[v65] = v69;
        swift_unknownObjectRelease();
        if (*&v39[v65])
        {
          v71 = *&v39[v65];
          swift_getObjectType();
          v72 = v117;
          sub_1002EAB84(v117);
          v73 = v118;
          sub_1002EABF8(v118);
          swift_unknownObjectRetain();
          OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
          swift_unknownObjectRelease();
          v74 = *(v119 + 8);
          v75 = v120;
          v74(v73, v120);
          v74(v72, v75);
          if (*&v39[v65])
          {
            v76 = *&v39[v65];
            swift_getObjectType();
            v77 = swift_allocObject();
            *(v77 + 16) = v39;
            aBlock[4] = sub_10042B5E8;
            aBlock[5] = v77;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100011678;
            aBlock[3] = &unk_1008E1190;
            v78 = v20;
            v79 = _Block_copy(aBlock);
            v80 = v39;
            swift_unknownObjectRetain();
            v81 = v111;
            j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
            v82 = v113;
            sub_1005944AC();
            OS_dispatch_source.setEventHandler(qos:flags:handler:)();
            v83 = v79;
            v20 = v78;
            _Block_release(v83);
            swift_unknownObjectRelease();
            (*(v115 + 8))(v82, v116);
            (*(v112 + 8))(v81, v114);

            if (*&v39[v65])
            {
              v84 = *&v39[v65];
              swift_getObjectType();
              swift_unknownObjectRetain();
              OS_dispatch_source.resume()();
              swift_unknownObjectRelease();
            }
          }

          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&_mh_execute_header, v85, v86, "handleTimer timer activated", v87, 2u);
          }

          v64(v131, v128);
          return (*(v20 + 8))(v129, v130);
        }

        else
        {
          v93 = v20;
          v94 = v39;
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            aBlock[0] = v134;
            *v97 = 136315138;
            v98 = &v39[v57];
            v99 = v110;
            sub_10000FF90(v98, v110, &qword_10097A7F0, &unk_1007FB600);
            v100 = v130;
            if (v58(v99, 1, v130))
            {
              v101 = 0xD00000000000001ALL;
              sub_100005508(v99, &qword_10097A7F0, &unk_1007FB600);
              v102 = 0x8000000100790A60;
            }

            else
            {
              v103 = v121;
              (*(v93 + 16))(v121, v99, v100);
              sub_100005508(v99, &qword_10097A7F0, &unk_1007FB600);
              v101 = Date.description.getter();
              v102 = v104;
              (*(v93 + 8))(v103, v100);
            }

            v105 = sub_10000C4E4(v101, v102, aBlock);

            *(v97 + 4) = v105;
            _os_log_impl(&_mh_execute_header, v95, v96, "Error making timer %s", v97, 0xCu);
            sub_10000C60C(v134);

            v64(v131, v128);
            return (*(v93 + 8))(v129, v100);
          }

          else
          {

            v64(v131, v128);
            return (*(v93 + 8))(v129, v130);
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10042A7B8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___SDDeferrableOperation_mainTimer))
  {
    v1 = *(a1 + OBJC_IVAR___SDDeferrableOperation_mainTimer);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    a1 = swift_unknownObjectRelease();
  }

  return sub_1004297D0(a1);
}

uint64_t sub_10042A81C(int a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100973870 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097DAF0);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29[0] = v27;
    *v12 = 136315650;
    *(v12 + 4) = sub_10000C4E4(*&v9[OBJC_IVAR___SDDeferrableOperation_identifier], *&v9[OBJC_IVAR___SDDeferrableOperation_identifier + 8], v29);
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    *(v12 + 18) = 2080;
    v13 = OBJC_IVAR___SDDeferrableOperation_reasons;
    swift_beginAccess();
    v28 = v3;
    v14 = a1;
    v15 = *&v9[v13];

    v16 = Set.description.getter();
    v18 = v17;

    v19 = sub_10000C4E4(v16, v18, v29);

    *(v12 + 20) = v19;
    a1 = v14;
    v3 = v28;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s _scheduleOperation delayed:%{BOOL}d, reason: %s", v12, 0x1Cu);
    swift_arrayDestroy();
  }

  v20 = *&v9[OBJC_IVAR___SDDeferrableOperation_queue];
  *v7 = v20;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v20)
  {
    v23 = OBJC_IVAR___SDDeferrableOperation_reasons;
    result = swift_beginAccess();
    if (*(*&v9[v23] + 16))
    {
      if ((a1 & 1) == 0)
      {
        v9[OBJC_IVAR___SDDeferrableOperation_pendingOperation] = 1;
      }
    }

    else
    {
      v24 = v9[OBJC_IVAR___SDDeferrableOperation_pendingOperation];
      if (v24 == 1 && (a1 & 1) != 0)
      {
        v9[OBJC_IVAR___SDDeferrableOperation_pendingOperation] = 0;
        v25 = *&v9[OBJC_IVAR___SDDeferrableOperation_operation + 8];
        return (*&v9[OBJC_IVAR___SDDeferrableOperation_operation])(1);
      }

      else if (((v24 | a1) & 1) == 0)
      {
        v26 = *&v9[OBJC_IVAR___SDDeferrableOperation_operation + 8];
        return (*&v9[OBJC_IVAR___SDDeferrableOperation_operation])(0);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10042AB98()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v59 = v58 - v3;
  v60 = type metadata accessor for Date();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v60);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = v58 - v9;
  v10 = sub_10028088C(&unk_10097DB90, &unk_100802B40);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v69 = (v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v67 = (v58 - v14);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v0 + OBJC_IVAR___SDDeferrableOperation_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if (v22)
  {
    v24 = OBJC_IVAR___SDDeferrableOperation_timedReasons;
    swift_beginAccess();
    v58[2] = v24;
    v58[3] = v0;
    v25 = *(v0 + v24);
    v26 = *(v25 + 64);
    v58[0] = v25 + 64;
    v27 = 1 << *(v25 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v4;
    v30 = v28 & v26;
    v58[1] = OBJC_IVAR___SDDeferrableOperation_reasons;
    v31 = (v27 + 63) >> 6;
    v61 = v29 + 16;
    v68 = (v29 + 32);
    v63 = v29;
    v65 = v25;
    v66 = (v29 + 8);

    v32 = 0;
    v33 = v60;
    v62 = v8;
    v34 = v67;
    while (v30)
    {
      v35 = v32;
LABEL_16:
      v38 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v39 = v38 | (v35 << 6);
      v40 = v64;
      v41 = (*(v65 + 48) + 16 * v39);
      v43 = *v41;
      v42 = v41[1];
      v44 = v63;
      (*(v63 + 16))(v64, *(v65 + 56) + *(v63 + 72) * v39, v33);
      v45 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
      v46 = *(v45 + 48);
      v47 = v69;
      *v69 = v43;
      v47[1] = v42;
      v48 = v40;
      v49 = v47;
      v50 = v33;
      (*(v44 + 32))(v47 + v46, v48, v33);
      (*(*(v45 - 8) + 56))(v49, 0, 1, v45);

      v37 = v35;
      v8 = v62;
      v34 = v67;
LABEL_17:
      sub_10002C4E4(v69, v34, &unk_10097DB90, &unk_100802B40);
      v51 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
      if ((*(*(v51 - 8) + 48))(v34, 1, v51) == 1)
      {
      }

      v53 = *v34;
      v52 = v34[1];
      v33 = v50;
      (*v68)(v8, v34 + *(v51 + 48), v50);
      Date.timeIntervalSinceNow.getter();
      if (v54 > 0.0)
      {
        (*v66)(v8, v50);
      }

      else
      {
        swift_beginAccess();
        v55 = v59;
        sub_1002D3654(v53, v52, v59);
        v56 = v55;
        v34 = v67;
        sub_100005508(v56, &qword_10097A7F0, &unk_1007FB600);
        swift_endAccess();
        swift_beginAccess();
        v33 = v60;
        sub_10036DB18(v53, v52);
        swift_endAccess();

        result = (*v66)(v8, v33);
      }

      v32 = v37;
    }

    if (v31 <= v32 + 1)
    {
      v36 = v32 + 1;
    }

    else
    {
      v36 = v31;
    }

    v37 = v36 - 1;
    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v35 >= v31)
      {
        v50 = v33;
        v57 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
        (*(*(v57 - 8) + 56))(v69, 1, 1, v57);
        v30 = 0;
        goto LABEL_17;
      }

      v30 = *(v58[0] + 8 * v35);
      ++v32;
      if (v30)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10042B380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDDeferrableOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SDDeferrableOperation()
{
  result = qword_10097DB70;
  if (!qword_10097DB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042B4C0()
{
  sub_1002A6BEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10042B59C()
{
  result = qword_10097DBA0;
  if (!qword_10097DBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097DBA0);
  }

  return result;
}

Swift::Int sub_10042B5F0(void **a1)
{
  v2 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004978E0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10042B6A4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10042B6A4(uint64_t *a1)
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
        sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10042BA48(v8, v9, a1, v4);
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
    return sub_10042B7E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10042B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v8 = *(*(v38 - 8) + 64);
  v9 = __chkstk_darwin(v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v38;
    while (1)
    {
      sub_10000FF90(v22, v17, &qword_1009750E8, &qword_1007FBB20);
      sub_10000FF90(v20, v13, &qword_1009750E8, &qword_1007FBB20);
      v24 = *(v23 + 48);
      v25 = static Date.> infix(_:_:)();
      sub_100005508(v13, &qword_1009750E8, &qword_1007FBB20);
      result = sub_100005508(v17, &qword_1009750E8, &qword_1007FBB20);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_10002C4E4(v22, v37, &qword_1009750E8, &qword_1007FBB20);
      v23 = v38;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002C4E4(v26, v20, &qword_1009750E8, &qword_1007FBB20);
      v20 += v35;
      v22 += v35;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10042BA48(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v112 = a1;
  v6 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v122 = *(v6 - 8);
  v7 = *(v122 + 64);
  v8 = __chkstk_darwin(v6);
  v116 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v125 = &v109 - v11;
  v12 = __chkstk_darwin(v10);
  v127 = &v109 - v13;
  result = __chkstk_darwin(v12);
  v126 = &v109 - v15;
  v123 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_100:
    a4 = *v112;
    if (!*v112)
    {
      goto LABEL_139;
    }

    v6 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v113;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_103:
      v129 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        while (*v123)
        {
          v105 = *(result + 16 * v6);
          v106 = result;
          v107 = *(result + 16 * (v6 - 1) + 40);
          sub_10042C3B0(*v123 + *(v122 + 72) * v105, *v123 + *(v122 + 72) * *(result + 16 * (v6 - 1) + 32), *v123 + *(v122 + 72) * v107, a4);
          if (v35)
          {
          }

          if (v107 < v105)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_1004973B4(v106);
          }

          if (v6 - 2 >= *(v106 + 2))
          {
            goto LABEL_127;
          }

          v108 = &v106[16 * v6];
          *v108 = v105;
          *(v108 + 1) = v107;
          v129 = v106;
          sub_100497328(v6 - 1);
          result = v129;
          v6 = *(v129 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_1004973B4(v6);
    goto LABEL_103;
  }

  v110 = a4;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v19 = &qword_1009750E8;
  v128 = v6;
  while (1)
  {
    v20 = v17;
    v117 = v18;
    if (v17 + 1 >= v16)
    {
      v34 = v17 + 1;
      v35 = v113;
    }

    else
    {
      v21 = v17;
      v22 = *v123;
      v120 = v22;
      v23 = *(v122 + 72);
      a4 = v22 + v23 * (v17 + 1);
      v24 = v126;
      sub_10000FF90(a4, v126, v19, &qword_1007FBB20);
      v25 = v22 + v23 * v21;
      v26 = v127;
      sub_10000FF90(v25, v127, v19, &qword_1007FBB20);
      v27 = *(v6 + 48);
      LODWORD(v121) = static Date.> infix(_:_:)();
      sub_100005508(v26, v19, &qword_1007FBB20);
      result = sub_100005508(v24, v19, &qword_1007FBB20);
      v111 = v21;
      v28 = v21 + 2;
      v124 = v23;
      v29 = v120 + v23 * (v21 + 2);
      while (v16 != v28)
      {
        v30 = v126;
        sub_10000FF90(v29, v126, v19, &qword_1007FBB20);
        v31 = v127;
        sub_10000FF90(a4, v127, v19, &qword_1007FBB20);
        v32 = *(v128 + 48);
        v33 = static Date.> infix(_:_:)() & 1;
        sub_100005508(v31, v19, &qword_1007FBB20);
        result = sub_100005508(v30, v19, &qword_1007FBB20);
        ++v28;
        v29 += v124;
        a4 += v124;
        if ((v121 & 1) != v33)
        {
          v34 = v28 - 1;
          goto LABEL_12;
        }
      }

      v34 = v16;
LABEL_12:
      v6 = v128;
      v20 = v111;
      v35 = v113;
      if (v121)
      {
        if (v34 < v111)
        {
          goto LABEL_130;
        }

        if (v111 < v34)
        {
          v36 = v124 * (v34 - 1);
          v37 = v34;
          v38 = v34 * v124;
          v39 = v34;
          v40 = v111;
          a4 = v111 * v124;
          do
          {
            if (v40 != --v37)
            {
              v41 = *v123;
              if (!*v123)
              {
                goto LABEL_136;
              }

              sub_10002C4E4(v41 + a4, v116, v19, &qword_1007FBB20);
              if (a4 < v36 || v41 + a4 >= v41 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002C4E4(v116, v41 + v36, v19, &qword_1007FBB20);
            }

            ++v40;
            v36 -= v124;
            v38 -= v124;
            a4 += v124;
          }

          while (v40 < v37);
          v35 = v113;
          v6 = v128;
          v20 = v111;
          v34 = v39;
        }
      }
    }

    v42 = v123[1];
    if (v34 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v34, v20))
    {
      goto LABEL_129;
    }

    if (v34 - v20 >= v110)
    {
LABEL_35:
      v17 = v34;
      if (v34 < v20)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v20, v110))
    {
      goto LABEL_131;
    }

    if (v20 + v110 >= v42)
    {
      v43 = v123[1];
    }

    else
    {
      v43 = v20 + v110;
    }

    if (v43 < v20)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v34 == v43)
    {
      goto LABEL_35;
    }

    v113 = v35;
    v90 = *v123;
    v91 = *(v122 + 72);
    v92 = *v123 + v91 * (v34 - 1);
    v93 = -v91;
    v111 = v20;
    v94 = v20 - v34;
    v121 = v34;
    v114 = v91;
    v115 = v43;
    v124 = v90;
    a4 = v90 + v34 * v91;
LABEL_90:
    v118 = a4;
    v119 = v94;
    v120 = v92;
    v95 = v92;
LABEL_91:
    v96 = v126;
    sub_10000FF90(a4, v126, v19, &qword_1007FBB20);
    v97 = v127;
    sub_10000FF90(v95, v127, v19, &qword_1007FBB20);
    v98 = *(v6 + 48);
    v99 = static Date.> infix(_:_:)();
    sub_100005508(v97, v19, &qword_1007FBB20);
    result = sub_100005508(v96, v19, &qword_1007FBB20);
    if (v99)
    {
      break;
    }

    v6 = v128;
LABEL_89:
    v17 = v115;
    v92 = v120 + v114;
    v94 = v119 - 1;
    a4 = v118 + v114;
    if (++v121 != v115)
    {
      goto LABEL_90;
    }

    v35 = v113;
    v20 = v111;
    if (v115 < v111)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v117;
    }

    else
    {
      result = sub_10028E6A8(0, *(v117 + 2) + 1, 1, v117);
      v18 = result;
    }

    v45 = *(v18 + 2);
    v44 = *(v18 + 3);
    a4 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_10028E6A8((v44 > 1), v45 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a4;
    v46 = &v18[16 * v45];
    *(v46 + 4) = v20;
    *(v46 + 5) = v17;
    if (!*v112)
    {
      goto LABEL_138;
    }

    if (v45)
    {
      v47 = *v112;
      v6 = v128;
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v18 + 4);
          v50 = *(v18 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_117;
          }

          v65 = &v18[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_120;
          }

          v71 = &v18[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_124;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = &v18[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_119;
        }

        v78 = &v18[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v81 < v69)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v48 - 1;
        if (v48 - 1 >= a4)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v123)
        {
          goto LABEL_135;
        }

        v86 = v18;
        a4 = *&v18[16 * v6 + 32];
        v87 = *&v18[16 * v48 + 40];
        sub_10042C3B0(*v123 + *(v122 + 72) * a4, *v123 + *(v122 + 72) * *&v18[16 * v48 + 32], *v123 + *(v122 + 72) * v87, v47);
        if (v35)
        {
        }

        if (v87 < a4)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v88 = v86;
        }

        else
        {
          v88 = sub_1004973B4(v86);
        }

        if (v6 >= *(v88 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v88[16 * v6];
        *(v89 + 4) = a4;
        *(v89 + 5) = v87;
        v129 = v88;
        result = sub_100497328(v48);
        v18 = v129;
        a4 = *(v129 + 16);
        v6 = v128;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v53 = &v18[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_115;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_116;
      }

      v60 = &v18[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_118;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_121;
      }

      if (v64 >= v56)
      {
        v82 = &v18[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v128;
LABEL_4:
    v113 = v35;
    v16 = v123[1];
    if (v17 >= v16)
    {
      goto LABEL_100;
    }
  }

  if (v124)
  {
    v100 = v19;
    v101 = v125;
    sub_10002C4E4(a4, v125, v100, &qword_1007FBB20);
    v6 = v128;
    swift_arrayInitWithTakeFrontToBack();
    v102 = v101;
    v19 = v100;
    sub_10002C4E4(v102, v95, v100, &qword_1007FBB20);
    v95 += v93;
    a4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_10042C3B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v7 = *(*(v47 - 8) + 64);
  v8 = __chkstk_darwin(v47);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
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

    if (v18 < 1)
    {
      v27 = a4 + v18;
    }

    else
    {
      v25 = -v14;
      v26 = a4 + v18;
      v27 = a4 + v18;
      v43 = a4;
      v44 = -v14;
      v42 = a1;
      do
      {
        v40 = v27;
        v28 = a2;
        v29 = a2 + v25;
        v45 = v28;
        while (1)
        {
          v31 = v48;
          if (v28 <= a1)
          {
            v51 = v28;
            v49 = v40;
            goto LABEL_60;
          }

          v41 = v27;
          v48 += v25;
          v32 = v26 + v25;
          sub_10000FF90(v32, v12, &qword_1009750E8, &qword_1007FBB20);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v46;
          sub_10000FF90(v34, v46, &qword_1009750E8, &qword_1007FBB20);
          v37 = *(v47 + 48);
          v38 = static Date.> infix(_:_:)();
          v39 = v36;
          v12 = v35;
          sub_100005508(v39, &qword_1009750E8, &qword_1007FBB20);
          sub_100005508(v35, &qword_1009750E8, &qword_1007FBB20);
          if (v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
            a1 = v42;
          }

          else
          {
            v29 = v33;
            a1 = v42;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v43;
          v25 = v44;
          v28 = v45;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_59;
          }
        }

        if (v31 < v45 || v48 >= v45)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
          v25 = v44;
        }

        else
        {
          v27 = v41;
          a1 = v42;
          a2 = v33;
          v25 = v44;
          if (v31 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_59:
    v51 = a2;
    v49 = v27;
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

    v45 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      v44 = v14;
      do
      {
        sub_10000FF90(a2, v12, &qword_1009750E8, &qword_1007FBB20);
        v20 = v46;
        sub_10000FF90(a4, v46, &qword_1009750E8, &qword_1007FBB20);
        v21 = *(v47 + 48);
        v22 = static Date.> infix(_:_:)();
        sub_100005508(v20, &qword_1009750E8, &qword_1007FBB20);
        sub_100005508(v12, &qword_1009750E8, &qword_1007FBB20);
        if (v22)
        {
          v23 = a2 + v14;
          if (a1 < a2 || a1 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v23;
        }

        else
        {
          v24 = a4 + v14;
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = v24;
          a4 = v24;
        }

        v14 = v44;
        a1 += v44;
        v51 = a1;
      }

      while (a4 < v45 && a2 < v48);
    }
  }

LABEL_60:
  sub_10042C8C8(&v51, &v50, &v49);
  return 1;
}

uint64_t sub_10042C8C8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10042C9B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10042CA04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v9 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = OBJC_IVAR___SDDeferrableOperation_preventUntilDate;
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v15(&v5[v13], 1, 1, v14);
  v16 = OBJC_IVAR___SDDeferrableOperation_mainTimer;
  *&v5[OBJC_IVAR___SDDeferrableOperation_mainTimer] = 0;
  *&v5[OBJC_IVAR___SDDeferrableOperation_queue] = a3;
  v17 = &v5[OBJC_IVAR___SDDeferrableOperation_identifier];
  *v17 = a1;
  v17[1] = a2;
  *&v5[OBJC_IVAR___SDDeferrableOperation_timedReasons] = &_swiftEmptyDictionarySingleton;
  *&v5[OBJC_IVAR___SDDeferrableOperation_reasons] = &_swiftEmptySetSingleton;
  v15(v12, 1, 1, v14);
  swift_beginAccess();
  v18 = a3;
  sub_1003561CC(v12, &v5[v13]);
  swift_endAccess();
  v19 = &v5[OBJC_IVAR___SDDeferrableOperation_operation];
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  v5[OBJC_IVAR___SDDeferrableOperation_pendingOperation] = 0;
  v21 = *&v5[v16];
  *&v5[v16] = 0;

  swift_unknownObjectRelease();
  v22 = type metadata accessor for SDDeferrableOperation();
  v27.receiver = v5;
  v27.super_class = v22;
  return objc_msgSendSuper2(&v27, "init");
}

uint64_t sub_10042CBD8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097DBC0);
  v1 = sub_10000C4AC(v0, qword_10097DBC0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10042CCA0()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingOperationFinished;
  v2 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingSucceeded) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest) = 0;
  v4 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = type metadata accessor for RangingMetrics(0);
  v6(v4 + v7[5], 1, 1, v5);
  v6(v4 + v7[6], 1, 1, v5);
  *(v4 + v7[7]) = 0;
  v6(v4 + v7[8], 1, 1, v5);
  v6(v4 + v7[9], 1, 1, v5);
  v8 = v4 + v7[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v0 + v9) = v10;
  *(v0 + 16) = sub_100431844();
  *(v0 + 24) = v11;
  type metadata accessor for ResponseTimer();
  v12 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer) = v12;
  v12[2] = v0;
  v12[3] = &off_1008E1208;
  v12[4] = 0;

  sub_100111BA4(1);
  return v0;
}

uint64_t sub_10042CEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[92] = v3;
  v4[91] = a3;
  v4[90] = a2;
  v4[89] = a1;
  v4[93] = *v3;
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[94] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v4[95] = swift_task_alloc();

  return _swift_task_switch(sub_10042CFE4, 0, 0);
}

uint64_t sub_10042CFE4()
{
  v73 = v0;
  v1 = *(v0 + 92);
  *(v0 + 88) = *(v0 + 89);
  strcpy(v0 + 640, "AWDL_INFO_SELF");
  v0[655] = -18;

  AnyHashable.init<A>(_:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = sub_1001114F4(isa);

  if (v5)
  {
    v6 = *(v0 + 89);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 56) = sub_10028088C(&unk_100974E50, &qword_1007FD600);
    *(v0 + 53) = v7;
    sub_1000106E0(v0 + 424, v0 + 584);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1005789A0(v0 + 584, (v0 + 304), isUniquelyReferenced_nonNull_native);
    sub_100285E74((v0 + 304));
    v9 = v6;
    *(v0 + 88) = v6;
  }

  else
  {
    sub_1002D2A30((v0 + 304), v0 + 456);
    sub_100285E74((v0 + 304));
    sub_100005508((v0 + 456), &unk_1009746F0, &qword_1007F90B0);
    v9 = *(v0 + 88);
  }

  *(v0 + 82) = 0xD00000000000001BLL;
  *(v0 + 83) = 0x8000000100790B80;
  AnyHashable.init<A>(_:)();
  *(v0 + 64) = &type metadata for Bool;
  v0[488] = 1;
  sub_1000106E0(v0 + 488, v0 + 520);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v72 = v9;
  sub_1005789A0(v0 + 520, (v0 + 344), v10);
  sub_100285E74((v0 + 344));
  *(v0 + 96) = v9;
  *(v0 + 88) = v9;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_10097DBC0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v72 = v15;
    *v14 = 136315138;

    v16 = Dictionary.description.getter();
    v18 = v17;

    v19 = sub_10000C4E4(v16, v18, &v72);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "combinedAWDLInfo = %s", v14, 0xCu);
    sub_10000C60C(v15);
  }

  v20 = *(v0 + 89);
  *(v0 + 84) = 0xD000000000000013;
  *(v0 + 85) = 0x8000000100790C10;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v21 = *(v0 + 89), v22 = sub_100570754((v0 + 384)), (v23 & 1) == 0))
  {
    sub_100285E74((v0 + 384));
    goto LABEL_14;
  }

  sub_10000C5B0(*(*(v0 + 89) + 56) + 32 * v22, (v0 + 552));
  sub_100285E74((v0 + 384));
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  v24 = *(v0 + 86);
  v25 = *(v0 + 87);
  v26 = [objc_allocWithZone(SDAutoUnlockRangingPeer) init];
  if (v26)
  {
    v27 = *(v0 + 91);
    v28 = *(v0 + 90);
    v29 = objc_allocWithZone(_NIRangingPeer);
    sub_100294008(v24, v25);
    v30 = Data._bridgeToObjectiveC()().super.isa;
    v31 = Data._bridgeToObjectiveC()().super.isa;
    v32 = [v29 initWithMacAddressAsData:v30 secureRangingKeyID:v31];

    sub_100026AC0(v24, v25);
    [v26 setNiRangingPeer:v32];

    v33 = Data._bridgeToObjectiveC()().super.isa;
    [v26 setMacAddressData:v33];
    sub_100026AC0(v24, v25);
  }

  else
  {
    sub_100026AC0(v24, v25);
  }

LABEL_15:
  *(v0 + 97) = v26;
  v71 = *(v0 + 94);
  v34 = *(v0 + 93);
  v69 = *(v0 + 95);
  v70 = v34;
  v35 = *(v0 + 92);
  v36 = swift_allocObject();
  *(v0 + 98) = v36;
  swift_weakInit();
  v37 = swift_allocObject();
  *(v0 + 99) = v37;
  swift_weakInit();
  v38 = swift_allocObject();
  v66 = v35;
  swift_weakInit();
  v39 = swift_allocObject();
  *(v0 + 100) = v39;
  *(v39 + 16) = v38;
  *(v39 + 24) = v34;
  v40 = swift_allocObject();
  *(v0 + 101) = v40;
  swift_weakInit();
  v68 = objc_allocWithZone(SDAutoUnlockWiFiRequest);

  v67 = v26;

  v41 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 6) = sub_10042DE10;
  *(v0 + 7) = 0;
  *(v0 + 2) = _NSConcreteStackBlock;
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_100431630;
  *(v0 + 5) = &unk_1008E1358;
  v42 = _Block_copy(v0 + 16);
  *(v0 + 12) = sub_100431C48;
  *(v0 + 13) = v36;
  *(v0 + 8) = _NSConcreteStackBlock;
  *(v0 + 9) = 1107296256;
  *(v0 + 10) = sub_1004316C4;
  *(v0 + 11) = &unk_1008E1380;
  v43 = _Block_copy(v0 + 64);
  v44 = *(v0 + 13);

  *(v0 + 18) = sub_100431C50;
  *(v0 + 19) = v37;
  *(v0 + 14) = _NSConcreteStackBlock;
  *(v0 + 15) = 1107296256;
  *(v0 + 16) = sub_10043175C;
  *(v0 + 17) = &unk_1008E13A8;
  v45 = _Block_copy(v0 + 112);
  v46 = *(v0 + 19);

  *(v0 + 24) = sub_100431C58;
  *(v0 + 25) = v39;
  *(v0 + 20) = _NSConcreteStackBlock;
  *(v0 + 21) = 1107296256;
  *(v0 + 22) = sub_100011678;
  *(v0 + 23) = &unk_1008E13D0;
  v47 = _Block_copy(v0 + 160);
  v48 = *(v0 + 25);

  *(v0 + 30) = sub_100431C60;
  *(v0 + 31) = v40;
  *(v0 + 26) = _NSConcreteStackBlock;
  *(v0 + 27) = 1107296256;
  *(v0 + 28) = sub_1004317B0;
  *(v0 + 29) = &unk_1008E13F8;
  v49 = _Block_copy(v0 + 208);
  v50 = *(v0 + 31);

  *(v0 + 36) = sub_10042EC78;
  *(v0 + 37) = 0;
  *(v0 + 32) = _NSConcreteStackBlock;
  *(v0 + 33) = 1107296256;
  *(v0 + 34) = sub_100011678;
  *(v0 + 35) = &unk_1008E1420;
  v51 = _Block_copy(v0 + 256);
  v52 = *(v0 + 37);

  v53 = [v68 initWithAwdlInfo:v41 isRangingInitiator:1 rangingPeer:v67 queueAvailableHandler:v42 awdlStartedHandler:v43 peerFoundHandler:v45 rangingStartedHandler:v47 rangingCompletedHandler:v49 invalidationHandler:v51];
  *(v0 + 102) = v53;

  _Block_release(v51);
  _Block_release(v49);
  _Block_release(v47);
  _Block_release(v45);
  _Block_release(v43);
  _Block_release(v42);
  v54 = *(v0 + 7);

  [v53 setRangingTimeout:5];
  Date.init()();
  v55 = type metadata accessor for Date();
  (*(*(v55 - 8) + 56))(v69, 0, 1, v55);
  v56 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
  swift_beginAccess();
  sub_10000C788(v69, v66 + v56, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  v57 = *(v66 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  *(v66 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest) = v53;
  v58 = v53;

  v59 = [objc_opt_self() sharedManager];
  [v59 scheduleWiFiRequest:v58];

  v60 = type metadata accessor for TaskPriority();
  (*(*(v60 - 8) + 56))(v71, 1, 1, v60);
  v61 = swift_allocObject();
  v61[2] = 0;
  v61[3] = 0;
  v61[4] = v66;
  v61[5] = v70;

  sub_1002B3098(0, 0, v71, &unk_100802C78, v61);

  v62 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v63 = swift_task_alloc();
  *(v0 + 103) = v63;
  *v63 = v0;
  v63[1] = sub_10042DB40;
  v64 = *(v0 + 92);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 840, 0, 0, 0xD00000000000002ELL, 0x8000000100790C70, sub_100431D28, v64, &type metadata for Bool);
}

uint64_t sub_10042DB40()
{
  v2 = *(*v1 + 824);
  v5 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v3 = sub_10042DD34;
  }

  else
  {
    v3 = sub_10042DC54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10042DC54()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);

  v9 = *(v0 + 840);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_10042DD34()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);

  v9 = *(v0 + 8);
  v10 = *(v0 + 832);

  return v9(0);
}

uint64_t sub_10042DE10(uint64_t (*a1)(uint64_t))
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097DBC0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting wifi request", v5, 2u);
  }

  return a1(1);
}

uint64_t sub_10042DF08(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v39 - v8;
  v10 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v39 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    if (qword_100973878 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097DBC0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "AWDL started", v19, 2u);
    }

    if (a2)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v20, v21, "AWDL failed to start: %ld", v22, 0xCu);
      }

      v23 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);

      sub_1005D6028();

      v25 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock);
      __chkstk_darwin(v24);
      v39[-2] = sub_100431EF0;
      v39[-1] = v15;

      os_unfair_lock_lock(v25 + 4);
      sub_100431F08(v26);
      os_unfair_lock_unlock(v25 + 4);

      sub_100431AE8(v9, v7);
      v27 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v7, 1, v27) == 1)
      {
        sub_100005508(v9, &qword_10097DE40, &qword_100802C50);

        return sub_100005508(v7, &qword_10097DE40, &qword_100802C50);
      }

      else
      {
        v34 = sub_100010F88(10, 0xD000000000000014, 0x8000000100790CA0);
        v36 = v35;
        sub_1000115C8();
        v37 = swift_allocError();
        *v38 = v34;
        *(v38 + 8) = v36;
        v40 = v37;
        CheckedContinuation.resume(throwing:)();

        sub_100005508(v9, &qword_10097DE40, &qword_100802C50);
        return (*(v28 + 8))(v7, v27);
      }
    }

    else
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        Date.init()();

        v31 = type metadata accessor for Date();
        (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
        v32 = v30 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
        swift_beginAccess();
        v33 = type metadata accessor for RangingMetrics(0);
        sub_10000C788(v13, v32 + *(v33 + 20), &qword_10097A7F0, &unk_1007FB600);
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_10042E418(char a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097DBC0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "peer found", v9, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    Date.init()();
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    v13 = v11 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    v14 = type metadata accessor for RangingMetrics(0);
    sub_10000C788(v5, v13 + *(v14 + 24), &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    *(v16 + *(type metadata accessor for RangingMetrics(0) + 28)) = a1 & 1;
  }

  return result;
}

uint64_t sub_10042E674(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18[-v5];
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    Date.init()();
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = v12 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    v15 = type metadata accessor for RangingMetrics(0);
    sub_10000C788(v10, v14 + *(v15 + 32), &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v12;
    v17[5] = a2;

    sub_1002B3098(0, 0, v6, &unk_100802C88, v17);
  }

  return result;
}

uint64_t sub_10042E8C8()
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097DBC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ranging started", v4, 2u);
  }

  v5 = v0[2];

  v0[3] = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_100431EB4;

  return sub_1005D6208(10);
}

uint64_t sub_10042EA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18[-v6];
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_10097DBC0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Ranging completed", v11, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    Date.init()();
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    v15 = v13 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    v16 = type metadata accessor for RangingMetrics(0);
    sub_10000C788(v7, v15 + *(v16 + 36), &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004306D0(a1, a2);
  }

  return result;
}

uint64_t sub_10042ECA4()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100431EB4;

  return sub_1005D6208(10);
}

void sub_10042ED54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock);
  os_unfair_lock_lock(v2 + 4);
  sub_1002F5418(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_10042EDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingOperationFinished;
  swift_beginAccess();
  sub_10000C788(v7, a1 + v10, &qword_10097DE40, &qword_100802C50);
  return swift_endAccess();
}

uint64_t sub_10042EF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[57] = a3;
  v4[58] = v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[59] = *v3;
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[60] = swift_task_alloc();

  return _swift_task_switch(sub_10042EFE4, 0, 0);
}

uint64_t sub_10042EFE4()
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097DBC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Scheduling ranging request as responder", v4, 2u);
  }

  v5 = *(v0 + 58);
  v6 = *(v0 + 55);

  *(v0 + 54) = v6;
  strcpy(v0 + 400, "AWDL_INFO_SELF");
  v0[415] = -18;

  AnyHashable.init<A>(_:)();
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = sub_1001114F4(isa);

  if (v10)
  {
    v11 = *(v0 + 55);
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 33) = sub_10028088C(&unk_100974E50, &qword_1007FD600);
    *(v0 + 30) = v12;
    sub_1000106E0(v0 + 15, v0 + 23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1005789A0(v0 + 23, (v0 + 160), isUniquelyReferenced_nonNull_native);
    sub_100285E74((v0 + 160));
    *(v0 + 54) = v11;
  }

  else
  {
    sub_1002D2A30((v0 + 160), v0 + 17);
    sub_100005508((v0 + 272), &unk_1009746F0, &qword_1007F90B0);
    sub_100285E74((v0 + 160));
    v14 = *(v0 + 54);
  }

  v39 = *(v0 + 60);
  v40 = *(v0 + 59);
  v16 = *(v0 + 57);
  v15 = *(v0 + 58);
  v17 = *(v0 + 55);
  v18 = *(v0 + 56);
  *(v0 + 52) = 0xD00000000000001BLL;
  *(v0 + 53) = 0x8000000100790B80;
  AnyHashable.init<A>(_:)();
  *(v0 + 41) = &type metadata for Bool;
  v0[304] = 0;
  sub_1000106E0(v0 + 19, v0 + 21);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v0 + 21, (v0 + 200), v19);
  sub_100285E74((v0 + 200));
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v0 + 61) = v21;
  v21[2] = v20;
  v21[3] = v17;
  v21[4] = v18;
  v21[5] = v16;
  v22 = objc_allocWithZone(SDAutoUnlockWiFiRequest);

  sub_100294008(v18, v16);

  v23 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 6) = sub_100431B74;
  *(v0 + 7) = v21;
  *(v0 + 2) = _NSConcreteStackBlock;
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_100431630;
  *(v0 + 5) = &unk_1008E1268;
  v24 = _Block_copy(v0 + 16);
  *(v0 + 12) = sub_100430168;
  *(v0 + 13) = 0;
  *(v0 + 8) = _NSConcreteStackBlock;
  *(v0 + 9) = 1107296256;
  *(v0 + 10) = sub_1004316C4;
  *(v0 + 11) = &unk_1008E1290;
  v25 = _Block_copy(v0 + 64);
  v26 = *(v0 + 13);

  *(v0 + 18) = sub_100430268;
  *(v0 + 19) = 0;
  *(v0 + 14) = _NSConcreteStackBlock;
  *(v0 + 15) = 1107296256;
  *(v0 + 16) = sub_100011678;
  *(v0 + 17) = &unk_1008E12B8;
  v27 = _Block_copy(v0 + 112);
  v28 = *(v0 + 19);

  v29 = [v22 initWithAwdlInfo:v23 isRangingInitiator:0 rangingPeer:0 queueAvailableHandler:v24 awdlStartedHandler:v25 peerFoundHandler:0 rangingStartedHandler:0 rangingCompletedHandler:0 invalidationHandler:v27];
  *(v0 + 62) = v29;

  _Block_release(v27);
  _Block_release(v25);
  _Block_release(v24);
  v30 = *(v0 + 7);

  [v29 setRangingTimeout:5];
  v31 = *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  *(v15 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest) = v29;
  v32 = v29;

  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v39, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v15;
  v34[5] = v40;

  sub_1002B3098(0, 0, v39, &unk_100802C60, v34);

  v35 = swift_task_alloc();
  *(v0 + 63) = v35;
  *(v35 + 16) = v15;
  *(v35 + 24) = v32;
  v36 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v37 = swift_task_alloc();
  *(v0 + 64) = v37;
  *v37 = v0;
  v37[1] = sub_10042F678;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 528, 0, 0, 0xD00000000000003FLL, 0x8000000100790BD0, sub_100431C40, v35, &type metadata for Bool);
}

uint64_t sub_10042F678()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v7 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = sub_10042F810;
  }

  else
  {
    v5 = *(v2 + 504);

    v4 = sub_10042F794;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10042F794()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);

  v4 = *(v0 + 528);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10042F810()
{
  v2 = v0[62];
  v1 = v0[63];
  v4 = v0[60];
  v3 = v0[61];

  v5 = v0[1];
  v6 = v0[65];

  return v5(0);
}

void sub_10042F898(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a5;
  v75 = a6;
  v9 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v78 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v76 = v71 - v13;
  v14 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v77 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v73 = v71 - v19;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_10097DBC0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Starting wifi request", v23, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v25 = Strong;
  v26 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  if (!v26)
  {

LABEL_20:
    a1(0);
    return;
  }

  v27 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);
  v28 = v26;

  sub_1005D6028();

  v79 = 0xD000000000000013;
  v80 = 0x8000000100790C10;
  AnyHashable.init<A>(_:)();
  if (*(a4 + 16) && (v29 = sub_100570754(v81), (v30 & 1) != 0))
  {
    sub_10000C5B0(*(a4 + 56) + 32 * v29, &v82);
    sub_100285E74(v81);
    if (swift_dynamicCast())
    {
      v78 = a2;
      v71[0] = a1;
      v31 = v79;
      v32 = v80;
      v33 = [objc_allocWithZone(SDAutoUnlockRangingPeer) init];
      v34 = objc_allocWithZone(_NIRangingPeer);
      sub_100294008(v31, v32);
      v35.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v72 = v28;
      isa = v35.super.isa;
      v37 = Data._bridgeToObjectiveC()().super.isa;
      v38 = [v34 initWithMacAddressAsData:isa secureRangingKeyID:v37];

      v39 = v72;
      sub_100026AC0(v31, v32);
      [v33 setNiRangingPeer:v38];

      v40 = [objc_opt_self() sharedManager];
      [v40 updateWiFiRequest:v39 setRangingPeer:v33];

      v41 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation;
      swift_beginAccess();
      v42 = v76;
      sub_100431AE8(v25 + v41, v76);
      if ((*(v15 + 48))(v42, 1, v14) == 1)
      {
        sub_100005508(v42, &qword_10097DE40, &qword_100802C50);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        v45 = os_log_type_enabled(v43, v44);
        v46 = v71[0];
        if (v45)
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "No continuation. ScheduleRangingRequestAsResponder is stuck. Attempting to clear current request", v47, 2u);
          v39 = v72;
        }

        v46(0);
        sub_100026AC0(v31, v32);
      }

      else
      {
        v70 = v73;
        (*(v15 + 32))(v73, v42, v14);
        LOBYTE(v82) = 1;
        CheckedContinuation.resume(returning:)();
        (v71[0])(1);

        sub_100026AC0(v31, v32);
        (*(v15 + 8))(v70, v14);
      }

      return;
    }
  }

  else
  {
    sub_100285E74(v81);
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  v50 = os_log_type_enabled(v48, v49);
  v71[1] = a4;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v72 = v28;
    v52 = v51;
    v53 = swift_slowAlloc();
    v71[0] = a1;
    v54 = v53;
    v81[0] = v53;
    *v52 = 136315138;
    v55 = Dictionary.description.getter();
    v57 = v15;
    v58 = sub_10000C4E4(v55, v56, v81);

    *(v52 + 4) = v58;
    v15 = v57;
    _os_log_impl(&_mh_execute_header, v48, v49, "Could not find peer mac address in remote AWDL info: %s", v52, 0xCu);
    sub_10000C60C(v54);
    a1 = v71[0];

    v28 = v72;
  }

  v59 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation;
  swift_beginAccess();
  v60 = v25 + v59;
  v61 = v78;
  sub_100431AE8(v60, v78);
  if ((*(v15 + 48))(v61, 1, v14))
  {
    sub_100005508(v61, &qword_10097DE40, &qword_100802C50);
  }

  else
  {
    v62 = v77;
    (*(v15 + 16))(v77, v61, v14);
    sub_100005508(v61, &qword_10097DE40, &qword_100802C50);
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v63._countAndFlagsBits = 0xD000000000000035;
    v63._object = 0x8000000100790C30;
    String.append(_:)(v63);
    v64._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v64);

    v65 = sub_100010F88(1, v82, v83);
    v67 = v66;
    sub_1000115C8();
    v68 = swift_allocError();
    *v69 = v65;
    *(v69 + 8) = v67;
    v82 = v68;
    CheckedContinuation.resume(throwing:)();
    (*(v15 + 8))(v62, v14);
  }

  a1(0);
}

void sub_100430168(uint64_t a1, uint64_t a2)
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097DBC0);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a2;
    _os_log_impl(&_mh_execute_header, oslog, v4, "AWDL started (error = %ld)", v5, 0xCu);
  }
}

void sub_100430274(const char *a1)
{
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097DBC0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_100430384()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100430434;

  return sub_1005D6208(5);
}

uint64_t sub_100430434()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_100430544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation;
  swift_beginAccess();
  sub_10000C788(v9, a2 + v12, &qword_10097DE40, &qword_100802C50);
  swift_endAccess();
  v13 = [objc_opt_self() sharedManager];
  [v13 scheduleWiFiRequest:a3];
}

uint64_t sub_1004306D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v50[-v12];
  __chkstk_darwin(v11);
  v15 = &v50[-v14];
  v16 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);

  sub_1005D6028();

  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest;
  v19 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  if (v19)
  {
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 sharedManager];
    [v22 cancelWiFiRequest:v21];

    v23 = *(v3 + v18);
    *(v3 + v18) = 0;
  }

  v24 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock);
  __chkstk_darwin(v17);
  *&v50[-16] = sub_100431B58;
  *&v50[-8] = v3;
  os_unfair_lock_lock(v24 + 4);
  sub_100431F08(v25);
  os_unfair_lock_unlock(v24 + 4);
  if (a1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_31;
      }

      v26 = *(a1 + 32);
    }

    v27 = v26;
    v28 = [v26 distanceMeters];

    [v28 floatValue];
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v3 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
  swift_beginAccess();
  v32 = v31 + *(type metadata accessor for RangingMetrics(0) + 40);
  *v32 = v30;
  *(v32 + 4) = a1 == 0;
  if (!a1 || a2)
  {
    goto LABEL_20;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v33 = *(a1 + 32);
    goto LABEL_14;
  }

LABEL_31:
  v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v34 = v33;
  v35 = [v33 shouldUnlock];

  if (v35)
  {
    if (qword_100973878 == -1)
    {
LABEL_16:
      v36 = type metadata accessor for Logger();
      sub_10000C4AC(v36, qword_10097DBC0);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Peer in range", v39, 2u);
      }

      sub_100431AE8(v15, v13);
      v40 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v13, 1, v40) == 1)
      {
        sub_100005508(v15, &qword_10097DE40, &qword_100802C50);
        v42 = v13;
        return sub_100005508(v42, &qword_10097DE40, &qword_100802C50);
      }

      v51 = 1;
      CheckedContinuation.resume(returning:)();
      sub_100005508(v15, &qword_10097DE40, &qword_100802C50);
      return (*(v41 + 8))(v13, v40);
    }

LABEL_33:
    swift_once();
    goto LABEL_16;
  }

LABEL_20:
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_10000C4AC(v43, qword_10097DBC0);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Peer out of range", v46, 2u);
  }

  sub_100431AE8(v15, v10);
  v47 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v10, 1, v47) == 1)
  {
    sub_100005508(v15, &qword_10097DE40, &qword_100802C50);
    v42 = v10;
    return sub_100005508(v42, &qword_10097DE40, &qword_100802C50);
  }

  v51 = 0;
  CheckedContinuation.resume(returning:)();
  sub_100005508(v15, &qword_10097DE40, &qword_100802C50);
  return (*(v48 + 8))(v10, v47);
}

uint64_t sub_100430CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11[-v6];
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingOperationFinished;
  swift_beginAccess();
  sub_100431AE8(a1 + v8, a2);
  v9 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  swift_beginAccess();
  sub_10000C788(v7, a1 + v8, &qword_10097DE40, &qword_100802C50);
  return swift_endAccess();
}

uint64_t sub_100430E2C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v24 - v7;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097DBC0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Ranging timer fired", v12, 2u);
  }

  v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock);
  __chkstk_darwin(v14);
  v24[-2] = sub_100431EF0;
  v24[-1] = v1;
  os_unfair_lock_lock(v13 + 4);
  sub_100431ACC(v15);
  os_unfair_lock_unlock(v13 + 4);
  sub_100431AE8(v8, v6);
  v16 = sub_10028088C(&qword_100975650, &qword_1007F8A30);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    sub_100005508(v6, &qword_10097DE40, &qword_100802C50);
  }

  else
  {
    v18 = sub_100010F88(24, 0x20676E69676E6152, 0xEF74756F656D6974);
    v20 = v19;
    sub_1000115C8();
    v21 = swift_allocError();
    *v22 = v18;
    *(v22 + 8) = v20;
    v24[0] = v21;
    CheckedContinuation.resume(throwing:)();
    (*(v17 + 8))(v6, v16);
  }

  sub_100431124();
  return sub_100005508(v8, &qword_10097DE40, &qword_100802C50);
}

void sub_100431124()
{
  v1 = v0;
  if (qword_100973878 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097DBC0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "invalidating wifi request", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_wifiRequest);
  if (v6)
  {
    v7 = objc_opt_self();
    v9 = v6;
    v8 = [v7 sharedManager];
    [v8 cancelWiFiRequest:v9];

    sub_100111BA4(0);
  }
}

uint64_t sub_100431290()
{
  sub_100026AC0(*(v0 + 16), *(v0 + 24));
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingOperationFinished, &qword_10097DE40, &qword_100802C50);
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_rangingStartedContinuation, &qword_10097DE40, &qword_100802C50);

  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_responseTimer);

  sub_100431E58(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics);
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_lock);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1004313A4()
{
  sub_10043149C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for RangingMetrics(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10043149C()
{
  if (!qword_10097DC18)
  {
    sub_100280938(&qword_100975650, &qword_1007F8A30);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097DC18);
    }
  }
}

void sub_100431548()
{
  sub_1002A6BEC();
  if (v0 <= 0x3F)
  {
    sub_1004315E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004315E0()
{
  if (!qword_10097DDF8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097DDF8);
    }
  }
}

uint64_t sub_100431630(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_10042C9FC, v5);
}

uint64_t sub_1004316C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v5(v6, a3);
}

uint64_t sub_10043175C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1004317B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100431D4C();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_100431844()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v1 = result;
    v2 = [result awdlInfo];

    if (v2)
    {
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v3 = 0;
    }

    if (qword_100973878 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097DBC0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      if (v3)
      {
        v9 = Dictionary.description.getter();
        v11 = v10;
      }

      else
      {
        v11 = 0x8000000100790B60;
        v9 = 0xD000000000000012;
      }

      v12 = sub_10000C4E4(v9, v11, &v16);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "AWDLInfo = %s", v7, 0xCu);
      sub_10000C60C(v8);
    }

    if (v3)
    {
      v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v13.super.isa = 0;
    }

    v14 = sub_10011137C(v13.super.isa);

    if (!v14)
    {
      return 0;
    }

    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100431AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097DE40, &qword_100802C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100431B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_100430364(a1, v4, v5, v7);
}

uint64_t sub_100431C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10042EC84(a1, v4, v5, v7);
}

unint64_t sub_100431D4C()
{
  result = qword_10097DE48;
  if (!qword_10097DE48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097DE48);
  }

  return result;
}

uint64_t sub_100431D98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10042E8A8(a1, v4, v5, v7);
}

uint64_t sub_100431E58(uint64_t a1)
{
  v2 = type metadata accessor for RangingMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100431F20()
{
  v1 = *(_s15VisionUnlockiOSV18InitialLockContextVMa(0) + 40);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationPreRequest) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100431F90()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_1008018C0;
  if (qword_100973880 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(result + 64) = &off_10097BDE8;
  *(result + 96) = &type metadata for SDAuthentication.Operation.RecordDiscoveryEnd;
  *(result + 104) = &off_10097BB90;
  *(result + 136) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(result + 144) = &off_10097BDD0;
  *(result + 176) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(result + 184) = &off_10097BDB8;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(result + 224) = &off_10097BDA0;
  *(result + 256) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 264) = &off_10097BE00;
  *(result + 296) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 304) = &off_10097BD70;
  *(result + 336) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 344) = &off_10097BD58;
  *(result + 376) = &type metadata for SDAuthentication.Operation.CheckRegistrationStateWithAKSManager;
  *(result + 384) = &off_10097BC08;
  *(result + 416) = &type metadata for SDAuthentication.Operation.IncludeAWDLInfoInMessage;
  *(result + 424) = &off_10097BD40;
  *(result + 456) = &type metadata for SDAuthentication.Operation.SendPreRequestMessage;
  *(result + 464) = &off_10097BB78;
  return result;
}