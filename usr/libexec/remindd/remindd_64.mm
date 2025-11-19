void *sub_1005E6E68(void *a1)
{
  type metadata accessor for REMCDTemplateSection();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10093B6F8);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v140 = v138;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v135 = v17;
      *(v20 + 12) = 2080;
      v21 = v17;
      v22 = ObjCClassFromMetadata;
      v23 = [ObjCClassFromMetadata description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = a1;
      v27 = v26;

      v28 = sub_10000668C(v24, v27, &v140);
      a1 = v25;

      *(v20 + 14) = v28;
      ObjCClassFromMetadata = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v20, 0x16u);
      sub_1000050A4(v135, &unk_100938E70, &unk_100797230);

      sub_10000607C(v138);
    }

    v29 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v30._countAndFlagsBits = 0xD000000000000030;
    v30._object = 0x80000001007FE260;
    String.append(_:)(v30);
    v31 = [v17 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x656A624F4443202CLL;
    v36._object = 0xEC000000203A7463;
    String.append(_:)(v36);
    v37 = [ObjCClassFromMetadata description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 125;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = String._bridgeToObjectiveC()();

    [v29 internalErrorWithDebugDescription:v43];

    swift_willThrow();
    goto LABEL_28;
  }

  v8 = v7;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == v3 && v13 == v5)
    {

      goto LABEL_23;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

LABEL_23:

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093B6F8);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v142 = ObjCClassFromMetadata;
  v131 = v3;
  v133 = v45;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v45;
    v49 = ObjCClassFromMetadata;
    v50 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v140 = v130;
    *v50 = 138412546;
    *(v50 + 4) = v48;
    *v129 = v48;
    *(v50 + 12) = 2080;
    v51 = v48;
    v52 = [v49 description];
    v53 = a1;
    v54 = v52;
    v55 = v8;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    a1 = v53;
    v59 = sub_10000668C(v56, v58, &v140);

    *(v50 + 14) = v59;
    v8 = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v50, 0x16u);
    sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

    sub_10000607C(v130);
  }

  v60 = [v8 managedObjectModel];
  v61 = [v60 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v62 + 16))
  {

    goto LABEL_25;
  }

  v63 = sub_100005F4C(v131, v5);
  v65 = v64;

  if ((v65 & 1) == 0)
  {
LABEL_25:

    v132 = v8;
    v67 = [v8 managedObjectModel];
    v68 = [v67 entitiesByName];

    v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v69);

    v70 = v133;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v73 = 138412802;
      *(v73 + 4) = v70;
      *v136 = v70;
      *(v73 + 12) = 2080;
      v74 = v70;
      v75 = [v142 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = a1;
      v79 = v78;

      v80 = sub_10000668C(v76, v79, &v140);
      a1 = v77;

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v81 = Array.description.getter();
      v83 = sub_10000668C(v81, v82, &v140);

      *(v73 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v73, 0x20u);
      sub_1000050A4(v136, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v84 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v85._countAndFlagsBits = 0xD00000000000003FLL;
    v85._object = 0x80000001007FE2A0;
    String.append(_:)(v85);
    v86 = [v70 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    String.append(_:)(v90);

    v91._countAndFlagsBits = 0x656A624F4443202CLL;
    v91._object = 0xEC000000203A7463;
    String.append(_:)(v91);
    v92 = [v142 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v97._object = 0x80000001007FE2E0;
    v97._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v97);
    v98 = Array.description.getter();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 125;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = String._bridgeToObjectiveC()();

    [v84 internalErrorWithDebugDescription:v103];

    swift_willThrow();
    goto LABEL_28;
  }

  v66 = *(*(v62 + 56) + 8 * v63);

  if (![v66 isKindOfEntity:v8])
  {
    v105 = v133;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v139 = v66;
      v108 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v140 = v137;
      *v108 = 138412546;
      *(v108 + 4) = v105;
      *v134 = v105;
      *(v108 + 12) = 2080;
      v109 = v105;
      v110 = v8;
      v111 = [v142 description];
      v112 = a1;
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = v113;
      a1 = v112;
      v117 = sub_10000668C(v116, v115, &v140);

      *(v108 + 14) = v117;
      v8 = v110;
      _os_log_impl(&_mh_execute_header, v106, v107, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v108, 0x16u);
      sub_1000050A4(v134, &unk_100938E70, &unk_100797230);

      sub_10000607C(v137);

      v66 = v139;
    }

    v118 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v119._countAndFlagsBits = 0xD000000000000054;
    v119._object = 0x80000001007FE300;
    String.append(_:)(v119);
    v120 = [v105 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);

    v125._countAndFlagsBits = 0x656A624F4443202CLL;
    v125._object = 0xEC000000203A7463;
    String.append(_:)(v125);
    v126._countAndFlagsBits = 0xD000000000000014;
    v126._object = 0x80000001007FE570;
    String.append(_:)(v126);
    v127._countAndFlagsBits = 125;
    v127._object = 0xE100000000000000;
    String.append(_:)(v127);
    v128 = String._bridgeToObjectiveC()();

    [v118 internalErrorWithDebugDescription:v128];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005E7BE0(void *a1)
{
  type metadata accessor for REMCDSmartListSection();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10093B6F8);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v140 = v138;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v135 = v17;
      *(v20 + 12) = 2080;
      v21 = v17;
      v22 = ObjCClassFromMetadata;
      v23 = [ObjCClassFromMetadata description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = a1;
      v27 = v26;

      v28 = sub_10000668C(v24, v27, &v140);
      a1 = v25;

      *(v20 + 14) = v28;
      ObjCClassFromMetadata = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v20, 0x16u);
      sub_1000050A4(v135, &unk_100938E70, &unk_100797230);

      sub_10000607C(v138);
    }

    v29 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v30._countAndFlagsBits = 0xD000000000000030;
    v30._object = 0x80000001007FE260;
    String.append(_:)(v30);
    v31 = [v17 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x656A624F4443202CLL;
    v36._object = 0xEC000000203A7463;
    String.append(_:)(v36);
    v37 = [ObjCClassFromMetadata description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 125;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = String._bridgeToObjectiveC()();

    [v29 internalErrorWithDebugDescription:v43];

    swift_willThrow();
    goto LABEL_28;
  }

  v8 = v7;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == v3 && v13 == v5)
    {

      goto LABEL_23;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

LABEL_23:

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093B6F8);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v142 = ObjCClassFromMetadata;
  v131 = v3;
  v133 = v45;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v45;
    v49 = ObjCClassFromMetadata;
    v50 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v140 = v130;
    *v50 = 138412546;
    *(v50 + 4) = v48;
    *v129 = v48;
    *(v50 + 12) = 2080;
    v51 = v48;
    v52 = [v49 description];
    v53 = a1;
    v54 = v52;
    v55 = v8;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    a1 = v53;
    v59 = sub_10000668C(v56, v58, &v140);

    *(v50 + 14) = v59;
    v8 = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v50, 0x16u);
    sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

    sub_10000607C(v130);
  }

  v60 = [v8 managedObjectModel];
  v61 = [v60 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v62 + 16))
  {

    goto LABEL_25;
  }

  v63 = sub_100005F4C(v131, v5);
  v65 = v64;

  if ((v65 & 1) == 0)
  {
LABEL_25:

    v132 = v8;
    v67 = [v8 managedObjectModel];
    v68 = [v67 entitiesByName];

    v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v69);

    v70 = v133;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v73 = 138412802;
      *(v73 + 4) = v70;
      *v136 = v70;
      *(v73 + 12) = 2080;
      v74 = v70;
      v75 = [v142 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = a1;
      v79 = v78;

      v80 = sub_10000668C(v76, v79, &v140);
      a1 = v77;

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v81 = Array.description.getter();
      v83 = sub_10000668C(v81, v82, &v140);

      *(v73 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v73, 0x20u);
      sub_1000050A4(v136, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v84 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v85._countAndFlagsBits = 0xD00000000000003FLL;
    v85._object = 0x80000001007FE2A0;
    String.append(_:)(v85);
    v86 = [v70 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    String.append(_:)(v90);

    v91._countAndFlagsBits = 0x656A624F4443202CLL;
    v91._object = 0xEC000000203A7463;
    String.append(_:)(v91);
    v92 = [v142 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v97._object = 0x80000001007FE2E0;
    v97._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v97);
    v98 = Array.description.getter();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 125;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = String._bridgeToObjectiveC()();

    [v84 internalErrorWithDebugDescription:v103];

    swift_willThrow();
    goto LABEL_28;
  }

  v66 = *(*(v62 + 56) + 8 * v63);

  if (![v66 isKindOfEntity:v8])
  {
    v105 = v133;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v139 = v66;
      v108 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v140 = v137;
      *v108 = 138412546;
      *(v108 + 4) = v105;
      *v134 = v105;
      *(v108 + 12) = 2080;
      v109 = v105;
      v110 = v8;
      v111 = [v142 description];
      v112 = a1;
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = v113;
      a1 = v112;
      v117 = sub_10000668C(v116, v115, &v140);

      *(v108 + 14) = v117;
      v8 = v110;
      _os_log_impl(&_mh_execute_header, v106, v107, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v108, 0x16u);
      sub_1000050A4(v134, &unk_100938E70, &unk_100797230);

      sub_10000607C(v137);

      v66 = v139;
    }

    v118 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v119._countAndFlagsBits = 0xD000000000000054;
    v119._object = 0x80000001007FE300;
    String.append(_:)(v119);
    v120 = [v105 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);

    v125._countAndFlagsBits = 0x656A624F4443202CLL;
    v125._object = 0xEC000000203A7463;
    String.append(_:)(v125);
    v126._countAndFlagsBits = 0xD000000000000015;
    v126._object = 0x80000001007FE590;
    String.append(_:)(v126);
    v127._countAndFlagsBits = 125;
    v127._object = 0xE100000000000000;
    String.append(_:)(v127);
    v128 = String._bridgeToObjectiveC()();

    [v118 internalErrorWithDebugDescription:v128];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005E8958(void *a1)
{
  type metadata accessor for REMCDListSection();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10093B6F8);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v135 = v133;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v131 = v17;
      *(v20 + 12) = 2080;
      v21 = v17;
      v22 = a1;
      v23 = [ObjCClassFromMetadata description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = ObjCClassFromMetadata;
      v27 = v26;

      v28 = sub_10000668C(v24, v27, &v135);
      ObjCClassFromMetadata = v25;

      *(v20 + 14) = v28;
      a1 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v20, 0x16u);
      sub_1000050A4(v131, &unk_100938E70, &unk_100797230);

      sub_10000607C(v133);
    }

    v29 = objc_opt_self();
    v135 = 0;
    v136 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v30._countAndFlagsBits = 0xD000000000000030;
    v30._object = 0x80000001007FE260;
    String.append(_:)(v30);
    v31 = [v17 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x656A624F4443202CLL;
    v36._object = 0xEC000000203A7463;
    String.append(_:)(v36);
    v37 = [ObjCClassFromMetadata description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 125;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = String._bridgeToObjectiveC()();

    [v29 internalErrorWithDebugDescription:v43];

    swift_willThrow();
    goto LABEL_28;
  }

  v8 = v7;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == v3 && v13 == v5)
    {

      goto LABEL_23;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

LABEL_23:

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093B6F8);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v137 = a1;
  v128 = v3;
  v130 = v45;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v135 = v126;
    *v48 = 138412546;
    *(v48 + 4) = v45;
    *v125 = v45;
    *(v48 + 12) = 2080;
    v49 = v45;
    v50 = ObjCClassFromMetadata;
    v51 = [ObjCClassFromMetadata description];
    v52 = v8;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    ObjCClassFromMetadata = v50;
    v56 = sub_10000668C(v53, v55, &v135);

    *(v48 + 14) = v56;
    v8 = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v48, 0x16u);
    sub_1000050A4(v125, &unk_100938E70, &unk_100797230);

    sub_10000607C(v126);
  }

  v57 = [v8 managedObjectModel];
  v58 = [v57 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v59 + 16))
  {

    goto LABEL_25;
  }

  v60 = sub_100005F4C(v128, v5);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
LABEL_25:

    v129 = v8;
    v64 = [v8 managedObjectModel];
    v65 = [v64 entitiesByName];

    v66 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v66);

    v67 = v130;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.fault.getter();

    v127 = ObjCClassFromMetadata;
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      *v70 = 138412802;
      *(v70 + 4) = v67;
      *v71 = v67;
      *(v70 + 12) = 2080;
      v72 = v67;
      v73 = [ObjCClassFromMetadata description];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = sub_10000668C(v74, v76, &v135);

      *(v70 + 14) = v77;
      *(v70 + 22) = 2080;
      v78 = Array.description.getter();
      v80 = sub_10000668C(v78, v79, &v135);

      *(v70 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v68, v69, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v70, 0x20u);
      sub_1000050A4(v71, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v81 = objc_opt_self();
    v135 = 0;
    v136 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v82._countAndFlagsBits = 0xD00000000000003FLL;
    v82._object = 0x80000001007FE2A0;
    String.append(_:)(v82);
    v83 = [v67 description];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87._countAndFlagsBits = v84;
    v87._object = v86;
    String.append(_:)(v87);

    v88._countAndFlagsBits = 0x656A624F4443202CLL;
    v88._object = 0xEC000000203A7463;
    String.append(_:)(v88);
    v89 = [v127 description];
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    v93._countAndFlagsBits = v90;
    v93._object = v92;
    String.append(_:)(v93);

    v94._countAndFlagsBits = 0xD000000000000012;
    v94._object = 0x80000001007FE2E0;
    String.append(_:)(v94);
    v95 = Array.description.getter();
    v97 = v96;

    v98._countAndFlagsBits = v95;
    v98._object = v97;
    String.append(_:)(v98);

    v99._countAndFlagsBits = 125;
    v99._object = 0xE100000000000000;
    String.append(_:)(v99);
    v100 = String._bridgeToObjectiveC()();

    [v81 internalErrorWithDebugDescription:v100];

    swift_willThrow();
    a1 = v137;
    goto LABEL_28;
  }

  v63 = *(*(v59 + 56) + 8 * v60);

  if (![v63 isKindOfEntity:v8])
  {
    v102 = v130;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v135 = v134;
      *v105 = 138412546;
      *(v105 + 4) = v102;
      *v132 = v102;
      *(v105 + 12) = 2080;
      v106 = v102;
      v107 = v8;
      v108 = [ObjCClassFromMetadata description];
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v63;
      v112 = v111;

      v113 = sub_10000668C(v109, v112, &v135);
      v63 = v110;

      *(v105 + 14) = v113;
      v8 = v107;
      _os_log_impl(&_mh_execute_header, v103, v104, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v105, 0x16u);
      sub_1000050A4(v132, &unk_100938E70, &unk_100797230);

      sub_10000607C(v134);
    }

    a1 = v137;
    v114 = objc_opt_self();
    v135 = 0;
    v136 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v115._countAndFlagsBits = 0xD000000000000054;
    v115._object = 0x80000001007FE300;
    String.append(_:)(v115);
    v116 = [v102 description];
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;

    v120._countAndFlagsBits = v117;
    v120._object = v119;
    String.append(_:)(v120);

    v121._countAndFlagsBits = 0x656A624F4443202CLL;
    v121._object = 0xEC000000203A7463;
    String.append(_:)(v121);
    v122._object = 0x80000001007FE5B0;
    v122._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v122);
    v123._countAndFlagsBits = 125;
    v123._object = 0xE100000000000000;
    String.append(_:)(v123);
    v124 = String._bridgeToObjectiveC()();

    [v114 internalErrorWithDebugDescription:v124];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return v137;
}

void *sub_1005E96B8(void *a1)
{
  type metadata accessor for REMCDTemplate();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10093B6F8);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v140 = v138;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v135 = v17;
      *(v20 + 12) = 2080;
      v21 = v17;
      v22 = ObjCClassFromMetadata;
      v23 = [ObjCClassFromMetadata description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = a1;
      v27 = v26;

      v28 = sub_10000668C(v24, v27, &v140);
      a1 = v25;

      *(v20 + 14) = v28;
      ObjCClassFromMetadata = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v20, 0x16u);
      sub_1000050A4(v135, &unk_100938E70, &unk_100797230);

      sub_10000607C(v138);
    }

    v29 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v30._countAndFlagsBits = 0xD000000000000030;
    v30._object = 0x80000001007FE260;
    String.append(_:)(v30);
    v31 = [v17 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x656A624F4443202CLL;
    v36._object = 0xEC000000203A7463;
    String.append(_:)(v36);
    v37 = [ObjCClassFromMetadata description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 125;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = String._bridgeToObjectiveC()();

    [v29 internalErrorWithDebugDescription:v43];

    swift_willThrow();
    goto LABEL_28;
  }

  v8 = v7;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == v3 && v13 == v5)
    {

      goto LABEL_23;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

LABEL_23:

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093B6F8);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v142 = ObjCClassFromMetadata;
  v131 = v3;
  v134 = v45;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v45;
    v49 = ObjCClassFromMetadata;
    v50 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v140 = v130;
    *v50 = 138412546;
    *(v50 + 4) = v48;
    *v129 = v48;
    *(v50 + 12) = 2080;
    v51 = v48;
    v52 = [v49 description];
    v53 = a1;
    v54 = v52;
    v55 = v8;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    a1 = v53;
    v59 = sub_10000668C(v56, v58, &v140);

    *(v50 + 14) = v59;
    v8 = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v50, 0x16u);
    sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

    sub_10000607C(v130);
  }

  v60 = [v8 managedObjectModel];
  v61 = [v60 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v62 + 16))
  {

    goto LABEL_25;
  }

  v63 = sub_100005F4C(v131, v5);
  v65 = v64;

  if ((v65 & 1) == 0)
  {
LABEL_25:

    v132 = v8;
    v67 = [v8 managedObjectModel];
    v68 = [v67 entitiesByName];

    v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v69);

    v70 = v134;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v73 = 138412802;
      *(v73 + 4) = v70;
      *v136 = v70;
      *(v73 + 12) = 2080;
      v74 = v70;
      v75 = [v142 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = a1;
      v79 = v78;

      v80 = sub_10000668C(v76, v79, &v140);
      a1 = v77;

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v81 = Array.description.getter();
      v83 = sub_10000668C(v81, v82, &v140);

      *(v73 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v73, 0x20u);
      sub_1000050A4(v136, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v84 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v85._countAndFlagsBits = 0xD00000000000003FLL;
    v85._object = 0x80000001007FE2A0;
    String.append(_:)(v85);
    v86 = [v70 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    String.append(_:)(v90);

    v91._countAndFlagsBits = 0x656A624F4443202CLL;
    v91._object = 0xEC000000203A7463;
    String.append(_:)(v91);
    v92 = [v142 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v97._object = 0x80000001007FE2E0;
    v97._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v97);
    v98 = Array.description.getter();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 125;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = String._bridgeToObjectiveC()();

    [v84 internalErrorWithDebugDescription:v103];

    swift_willThrow();
    goto LABEL_28;
  }

  v66 = *(*(v62 + 56) + 8 * v63);

  if (![v66 isKindOfEntity:v8])
  {
    v105 = v134;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v140 = v139;
      *v108 = 138412546;
      *(v108 + 4) = v105;
      *v137 = v105;
      *(v108 + 12) = 2080;
      v109 = v105;
      v133 = v8;
      v110 = [v142 description];
      v111 = a1;
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v66;
      v115 = v114;

      v116 = v112;
      a1 = v111;
      v117 = sub_10000668C(v116, v115, &v140);
      v66 = v113;

      *(v108 + 14) = v117;
      v8 = v133;
      _os_log_impl(&_mh_execute_header, v106, v107, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v108, 0x16u);
      sub_1000050A4(v137, &unk_100938E70, &unk_100797230);

      sub_10000607C(v139);
    }

    v118 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v119._countAndFlagsBits = 0xD000000000000054;
    v119._object = 0x80000001007FE300;
    String.append(_:)(v119);
    v120 = [v105 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);

    v125._countAndFlagsBits = 0x656A624F4443202CLL;
    v125._object = 0xEC000000203A7463;
    String.append(_:)(v125);
    v126._countAndFlagsBits = 0x6D655444434D4552;
    v126._object = 0xED00006574616C70;
    String.append(_:)(v126);
    v127._countAndFlagsBits = 125;
    v127._object = 0xE100000000000000;
    String.append(_:)(v127);
    v128 = String._bridgeToObjectiveC()();

    [v118 internalErrorWithDebugDescription:v128];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005EA438(void *a1)
{
  type metadata accessor for REMCDSavedReminder();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {

    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10093B6F8);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v140 = v138;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v135 = v17;
      *(v20 + 12) = 2080;
      v21 = v17;
      v22 = ObjCClassFromMetadata;
      v23 = [ObjCClassFromMetadata description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = a1;
      v27 = v26;

      v28 = sub_10000668C(v24, v27, &v140);
      a1 = v25;

      *(v20 + 14) = v28;
      ObjCClassFromMetadata = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v20, 0x16u);
      sub_1000050A4(v135, &unk_100938E70, &unk_100797230);

      sub_10000607C(v138);
    }

    v29 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v30._countAndFlagsBits = 0xD000000000000030;
    v30._object = 0x80000001007FE260;
    String.append(_:)(v30);
    v31 = [v17 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0x656A624F4443202CLL;
    v36._object = 0xEC000000203A7463;
    String.append(_:)(v36);
    v37 = [ObjCClassFromMetadata description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 125;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = String._bridgeToObjectiveC()();

    [v29 internalErrorWithDebugDescription:v43];

    swift_willThrow();
    goto LABEL_28;
  }

  v8 = v7;
  v9 = [v8 name];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == v3 && v13 == v5)
    {

      goto LABEL_23;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {

LABEL_23:

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_10093B6F8);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  v142 = ObjCClassFromMetadata;
  v131 = v3;
  v134 = v45;
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v45;
    v49 = ObjCClassFromMetadata;
    v50 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v140 = v130;
    *v50 = 138412546;
    *(v50 + 4) = v48;
    *v129 = v48;
    *(v50 + 12) = 2080;
    v51 = v48;
    v52 = [v49 description];
    v53 = a1;
    v54 = v52;
    v55 = v8;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    a1 = v53;
    v59 = sub_10000668C(v56, v58, &v140);

    *(v50 + 14) = v59;
    v8 = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v50, 0x16u);
    sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

    sub_10000607C(v130);
  }

  v60 = [v8 managedObjectModel];
  v61 = [v60 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v62 + 16))
  {

    goto LABEL_25;
  }

  v63 = sub_100005F4C(v131, v5);
  v65 = v64;

  if ((v65 & 1) == 0)
  {
LABEL_25:

    v132 = v8;
    v67 = [v8 managedObjectModel];
    v68 = [v67 entitiesByName];

    v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v69);

    v70 = v134;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v73 = 138412802;
      *(v73 + 4) = v70;
      *v136 = v70;
      *(v73 + 12) = 2080;
      v74 = v70;
      v75 = [v142 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = a1;
      v79 = v78;

      v80 = sub_10000668C(v76, v79, &v140);
      a1 = v77;

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v81 = Array.description.getter();
      v83 = sub_10000668C(v81, v82, &v140);

      *(v73 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v73, 0x20u);
      sub_1000050A4(v136, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v84 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v85._countAndFlagsBits = 0xD00000000000003FLL;
    v85._object = 0x80000001007FE2A0;
    String.append(_:)(v85);
    v86 = [v70 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    String.append(_:)(v90);

    v91._countAndFlagsBits = 0x656A624F4443202CLL;
    v91._object = 0xEC000000203A7463;
    String.append(_:)(v91);
    v92 = [v142 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96._countAndFlagsBits = v93;
    v96._object = v95;
    String.append(_:)(v96);

    v97._object = 0x80000001007FE2E0;
    v97._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v97);
    v98 = Array.description.getter();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 125;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = String._bridgeToObjectiveC()();

    [v84 internalErrorWithDebugDescription:v103];

    swift_willThrow();
    goto LABEL_28;
  }

  v66 = *(*(v62 + 56) + 8 * v63);

  if (![v66 isKindOfEntity:v8])
  {
    v105 = v134;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v140 = v139;
      *v108 = 138412546;
      *(v108 + 4) = v105;
      *v137 = v105;
      *(v108 + 12) = 2080;
      v109 = v105;
      v133 = v8;
      v110 = [v142 description];
      v111 = a1;
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v66;
      v115 = v114;

      v116 = v112;
      a1 = v111;
      v117 = sub_10000668C(v116, v115, &v140);
      v66 = v113;

      *(v108 + 14) = v117;
      v8 = v133;
      _os_log_impl(&_mh_execute_header, v106, v107, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v108, 0x16u);
      sub_1000050A4(v137, &unk_100938E70, &unk_100797230);

      sub_10000607C(v139);
    }

    v118 = objc_opt_self();
    v140 = 0;
    v141 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v119._countAndFlagsBits = 0xD000000000000054;
    v119._object = 0x80000001007FE300;
    String.append(_:)(v119);
    v120 = [v105 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);

    v125._countAndFlagsBits = 0x656A624F4443202CLL;
    v125._object = 0xEC000000203A7463;
    String.append(_:)(v125);
    v126._object = 0x80000001007EFFC0;
    v126._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v126);
    v127._countAndFlagsBits = 125;
    v127._object = 0xE100000000000000;
    String.append(_:)(v127);
    v128 = String._bridgeToObjectiveC()();

    [v118 internalErrorWithDebugDescription:v128];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void sub_1005EB1B0(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for REMJSONDeserializationError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [v3 membershipsOfRemindersInSectionsAsData];
  if (!v11)
  {
    goto LABEL_25;
  }

  v54 = a1;
  v12 = v11;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v2)
  {
    sub_10001BBA0(v13, v15);
    v57 = v2;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if (swift_dynamicCast())
    {
      if ((*(v6 + 88))(v10, v5) == enum case for REMJSONDeserializationError.notSupported(_:))
      {

        (*(v6 + 96))(v10, v5);
        v16 = *v10;
        if (qword_100935B10 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100006654(v17, qword_10093A880);
        v18 = v3;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v53 = v16;
          v21 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v21 = 136446722;
          v55 = type metadata accessor for REMCDTemplate();
          sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
          v22 = String.init<A>(describing:)();
          v24 = sub_10000668C(v22, v23, &v56);

          *(v21 + 4) = v24;
          *(v21 + 12) = 2082;
          v25 = [v18 remObjectID];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 description];

            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v29;
          }

          else
          {
            v28 = 7104878;
            v30 = 0xE300000000000000;
          }

          v51 = sub_10000668C(v28, v30, &v56);

          *(v21 + 14) = v51;
          *(v21 + 22) = 2050;
          *(v21 + 24) = v53;
          _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s#mergeMembershipsOfRemindersInSections(_:): Failed to deserialize 'membershipsOfRemindersInSectionsAsData' because current runtime version is lower than minimumSupportedVersion. It will be overwritten. {objectID: %{public}s, minimumSupportedVersion: %{public}ld}", v21, 0x20u);
          swift_arrayDestroy();
        }

        goto LABEL_23;
      }

      (*(v6 + 8))(v10, v5);
    }

    if (qword_100935B10 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_10093A880);
    swift_errorRetain();
    v34 = v3;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v57 = v53;
      *v37 = 136446722;
      v56 = type metadata accessor for REMCDTemplate();
      sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
      v38 = String.init<A>(describing:)();
      v40 = sub_10000668C(v38, v39, &v57);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      v41 = [v34 remObjectID];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 description];

        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;
      }

      else
      {
        v44 = 7104878;
        v46 = 0xE300000000000000;
      }

      v47 = sub_10000668C(v44, v46, &v57);

      *(v37 + 14) = v47;
      *(v37 + 22) = 2082;
      swift_getErrorValue();
      v48 = Error.rem_errorDescription.getter();
      v50 = sub_10000668C(v48, v49, &v57);

      *(v37 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s#mergeMembershipsOfRemindersInSections(_:): Failed to deserialize 'membershipsOfRemindersInSectionsAsData' due to unexpected error. It will be overwritten. {objectID: %{public}s, error: %{public}s}", v37, 0x20u);
      swift_arrayDestroy();

      goto LABEL_24;
    }

LABEL_23:

LABEL_24:
    a1 = v54;
LABEL_25:
    v32 = a1;
    v31 = 0;
    goto LABEL_26;
  }

  sub_10001BBA0(v13, v15);
  v31 = v57;
  v32 = [v57 mergingWith:v54 mergePolicy:0];
LABEL_26:
  v52 = v32;
  sub_10032D8A8(v32, 1);
}

void sub_1005EB8A8(void *a1, void (*a2)(void, void), unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v65 = a3;
  v66 = a4;
  v11 = v6;
  v13 = type metadata accessor for REMJSONDeserializationError();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  *&v16 = __chkstk_darwin(v13).n128_u64[0];
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = [v11 membershipsOfRemindersInSectionsAsData];
  if (!v19)
  {
    goto LABEL_25;
  }

  v63 = a5;
  v64 = a6;
  v67 = a1;
  v68 = a2;
  v20 = v19;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v7)
  {
    sub_10001BBA0(v21, v23);
    v71 = v7;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if (swift_dynamicCast())
    {
      if ((*(v14 + 88))(v18, v13) == enum case for REMJSONDeserializationError.notSupported(_:))
      {

        (*(v14 + 96))(v18, v13);
        v24 = *v18;
        if (qword_100935B10 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100006654(v25, qword_10093A880);
        v26 = v11;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v62 = v24;
          v29 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v29 = 136446722;
          v69 = sub_1000060C8(0, v65, v66);
          sub_1000F5104(v63, v64);
          v30 = String.init<A>(describing:)();
          v32 = sub_10000668C(v30, v31, &v70);

          *(v29 + 4) = v32;
          *(v29 + 12) = 2082;
          v33 = [v26 remObjectID];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 description];

            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;
          }

          else
          {
            v36 = 7104878;
            v38 = 0xE300000000000000;
          }

          a2 = v68;
          v59 = sub_10000668C(v36, v38, &v70);

          *(v29 + 14) = v59;
          *(v29 + 22) = 2050;
          *(v29 + 24) = v62;
          _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s#mergeMembershipsOfRemindersInSections(_:): Failed to deserialize 'membershipsOfRemindersInSectionsAsData' because current runtime version is lower than minimumSupportedVersion. It will be overwritten. {objectID: %{public}s, minimumSupportedVersion: %{public}ld}", v29, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          a2 = v68;
        }

LABEL_24:
        a1 = v67;
LABEL_25:
        v40 = a1;
        v39 = 0;
        goto LABEL_26;
      }

      (*(v14 + 8))(v18, v13);
    }

    if (qword_100935B10 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_10093A880);
    swift_errorRetain();
    v42 = v11;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v71 = v62;
      *v45 = 136446722;
      v70 = sub_1000060C8(0, v65, v66);
      sub_1000F5104(v63, v64);
      v46 = String.init<A>(describing:)();
      v48 = sub_10000668C(v46, v47, &v71);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2082;
      v49 = [v42 remObjectID];
      if (v49)
      {
        v50 = v49;
        v51 = [v49 description];

        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
      }

      else
      {
        v52 = 7104878;
        v54 = 0xE300000000000000;
      }

      a2 = v68;
      v55 = sub_10000668C(v52, v54, &v71);

      *(v45 + 14) = v55;
      *(v45 + 22) = 2082;
      swift_getErrorValue();
      v56 = Error.rem_errorDescription.getter();
      v58 = sub_10000668C(v56, v57, &v71);

      *(v45 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s#mergeMembershipsOfRemindersInSections(_:): Failed to deserialize 'membershipsOfRemindersInSectionsAsData' due to unexpected error. It will be overwritten. {objectID: %{public}s, error: %{public}s}", v45, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      a2 = v68;
    }

    goto LABEL_24;
  }

  sub_10001BBA0(v21, v23);
  v39 = v71;
  v40 = [v71 mergingWith:v67 mergePolicy:0];
  a2 = v68;
LABEL_26:
  v60 = v40;
  a2(v40, 1);
}

void sub_1005EBFC8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

void sub_1005EC0F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_1009436D0, &unk_100797F90);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EC5F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_10094F300, &unk_100797FD0);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005ECAEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F630, qword_1007A3430);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_100943950, &unk_1007A4200);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005ECFE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F450, &unk_1007A0270);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_100943720, &unk_1007A4020);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005ED4E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    type metadata accessor for REMCDSavedAttachment();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F3D0, &qword_1007B4F68);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005ED9D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F560, &qword_1007AC6A0);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_100943860, &unk_100797FC0);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EDECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    type metadata accessor for REMCDManualSortHint();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F2E0, &qword_1007B4EA0);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&qword_10093A958, &qword_100797F70);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EE3B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&qword_10094F310, &qword_100797F78);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EE8B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_100940370, off_1008D4150);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F7F8, &qword_1007B51E8);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&qword_10094F7F0, &unk_100798000);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EEDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F7B0, &qword_1007B51C0);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EF2AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&unk_10094F760, &qword_1007B5198);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EF7A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_10094F688, off_1008D4140);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&unk_10094F6B0, &qword_1007B5170);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EFCA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_100943760, &unk_100797FA0);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F01A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F4C0, &qword_1007B5018);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F069C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F4F8, &qword_1007B5040);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F0B98(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F530, &qword_1007B5068);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_100943820, &unk_1007A4100);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F1094(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_100940948, &qword_1007A0258);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F1590(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&unk_10094F110, &qword_1007A1FB8);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_100943260, &qword_100797F38);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F1A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F188, &qword_1007B4D88);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F1F88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    type metadata accessor for REMCDDueDateDeltaAlert();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F828, &qword_1007B5220);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_100944000, &unk_100798010);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F2474(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    type metadata accessor for REMCDTemplateSection();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F1D0, &qword_1007A3678);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_1009433D0, &unk_100797F50);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F2960(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    type metadata accessor for REMCDSmartListSection();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10094F210, &unk_1007A0140);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F2E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    type metadata accessor for REMCDListSection();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_100939BC8, &unk_100796D40);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_100943470, &unk_100797F60);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F3338(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    type metadata accessor for REMCDTemplate();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10093F3B8, &unk_10079DDE0);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F3824(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v42 = a3;
    v41 = a2;
    v43 = a4;
    v44 = v5;
    v45 = v6;
    v49[0] = _swiftEmptyArrayStorage;
    v47 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v49[0];
    do
    {
      v19 = *(v48 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49[0] = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258(v21 > 1, v22 + 1, 1);
        v18 = v49[0];
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v47 != v17);
    type metadata accessor for REMCDSavedReminder();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    v25 = sub_1003942EC(v23);

    v26 = sub_10042D814(KeyPath, v25);

    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v28 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v28];

    if (v46)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v30 = v43;
    v31 = v42;
    [v27 setAffectedStores:v29.super.isa];

    [v27 setPredicate:v26];
    v32 = v45;
    if ((v31 & 1) == 0)
    {
      [v27 setFetchBatchSize:v41];
    }

    if (v30)
    {
      v33.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    [v27 setRelationshipKeyPathsForPrefetching:v33.super.isa];

    v34 = NSManagedObjectContext.fetch<A>(_:)();
    if (v32)
    {
      goto LABEL_15;
    }

    v35 = v34;
    v49[3] = sub_1000F5104(&qword_10093F3A8, qword_1007AC5F0);
    v49[0] = v35;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(v49);
    if (v50 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 < v36)
    {

      v37 = objc_opt_self();
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v38._object = 0x80000001007FE210;
      v38._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v38);
      sub_1000F5104(&unk_10094F390, &unk_100797F80);
      v39._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v39);

      v40 = String._bridgeToObjectiveC()();

      [v37 internalErrorWithDebugDescription:v40];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

char *sub_1005F3D10(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        v14 = _findStringSwitchCase(cases:string:)(&off_1008DF0F8, v13);

        if (v14 <= 6)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100366398(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v19 = sub_100366398((v16 > 1), v17 + 1, 1, v8);
        v18 = v17 + 1;
        v8 = v19;
      }

      *(v8 + 2) = v18;
      v8[v17 + 32] = v14;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v15 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v15);
      ++v7;
      if (v5)
      {
        v7 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100946C50);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446210;
    sub_1000F5104(&qword_10094F5E8, &qword_1007B5100);
    v25 = String.init<A>(describing:)();
    v27 = sub_10000668C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1005F3FF0(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_100682CAC();
        if (v13 != 42)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v27 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1003663C0(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      v17 = v27;
      if (v16 >= v15 >> 1)
      {
        v8 = sub_1003663C0((v15 > 1), v16 + 1, 1, v8);
        v17 = v27;
      }

      *(v8 + 2) = v16 + 1;
      v8[v16 + 32] = v17;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v14);
      ++v7;
      if (v5)
      {
        v7 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100946C50);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446210;
    sub_1000F5104(&qword_10094F5D0, &qword_1007B50E8);
    v23 = String.init<A>(describing:)();
    v25 = sub_10000668C(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v21, 0xCu);
    sub_10000607C(v22);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1005F42B8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *), uint64_t *a4, uint64_t *a5)
{
  if (!a1)
  {
    v5 = a4;
    a2 = a5;
    if (qword_100936128 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  while (v11)
  {
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (*(a1 + 48) + ((v13 << 10) | (16 * v16)));
    v18 = *v17;
    v19 = v17[1];

    v20._countAndFlagsBits = v18;
    v20._object = v19;
    v5 = _findStringSwitchCase(cases:string:)(a2, v20);

    if (v5 == 1)
    {
      v32 = 1;
LABEL_14:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = a3(0, v14[2] + 1, 1, v14);
      }

      v22 = v14[2];
      v21 = v14[3];
      v5 = (v22 + 1);
      if (v22 >= v21 >> 1)
      {
        v14 = a3(v21 > 1, v22 + 1, 1, v14);
      }

      v14[2] = v5;
      *(v14 + v22 + 32) = v32;
    }

    else if (!v5)
    {
      v32 = 0;
      goto LABEL_14;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v14;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_21:
  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100946C50);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136446210;
    sub_1000F5104(v5, a2);
    v28 = String.init<A>(describing:)();
    v30 = sub_10000668C(v28, v29, &v34);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v26, 0xCu);
    sub_10000607C(v27);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1005F45A8(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_1002F944C();
        if (v13 != 26)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v27 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1003663FC(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      v17 = v27;
      if (v16 >= v15 >> 1)
      {
        v8 = sub_1003663FC((v15 > 1), v16 + 1, 1, v8);
        v17 = v27;
      }

      *(v8 + 2) = v16 + 1;
      v8[v16 + 32] = v17;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v14);
      ++v7;
      if (v5)
      {
        v7 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100946C50);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446210;
    sub_1000F5104(&qword_10094F638, &qword_1007B5128);
    v23 = String.init<A>(describing:)();
    v25 = sub_10000668C(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v21, 0xCu);
    sub_10000607C(v22);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1005F4870(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_1002B3014();
        if (v13 != 40)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v27 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100366424(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      v17 = v27;
      if (v16 >= v15 >> 1)
      {
        v8 = sub_100366424((v15 > 1), v16 + 1, 1, v8);
        v17 = v27;
      }

      *(v8 + 2) = v16 + 1;
      v8[v16 + 32] = v17;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v14);
      ++v7;
      if (v5)
      {
        v7 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100946C50);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446210;
    sub_1000F5104(&unk_10094F420, &qword_1007B4FA8);
    v23 = String.init<A>(describing:)();
    v25 = sub_10000668C(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v21, 0xCu);
    sub_10000607C(v22);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1005F4B38(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *), uint64_t *a4, uint64_t *a5)
{
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    if (!v11)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(a1 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v18 = v16[1];

        v19._countAndFlagsBits = v17;
        v19._object = v18;
        v5 = _findStringSwitchCase(cases:string:)(a2, v19);

        if (v5 <= 2)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = a3(0, v14[2] + 1, 1, v14);
      }

      v22 = v14[2];
      v21 = v14[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v24 = a3(v21 > 1, v22 + 1, 1, v14);
        v23 = v22 + 1;
        v14 = v24;
      }

      v14[2] = v23;
      *(v14 + v22 + 32) = v5;
    }

    while (v11);
LABEL_7:
    while (1)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v20 >= v12)
      {

        return v14;
      }

      v11 = *(v8 + 8 * v20);
      ++v13;
      if (v11)
      {
        v13 = v20;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = a4;
  a2 = a5;
  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_100946C50);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136446210;
    sub_1000F5104(v5, a2);
    v30 = String.init<A>(describing:)();
    v32 = sub_10000668C(v30, v31, &v35);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v28, 0xCu);
    sub_10000607C(v29);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1005F4E24(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        v14 = _findStringSwitchCase(cases:string:)(&off_1008DFE98, v13);

        if (v14 < 0xC)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100366460(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v19 = sub_100366460((v16 > 1), v17 + 1, 1, v8);
        v18 = v17 + 1;
        v8 = v19;
      }

      *(v8 + 2) = v18;
      v8[v17 + 32] = v14;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v15 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v15);
      ++v7;
      if (v5)
      {
        v7 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100946C50);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446210;
    sub_1000F5104(&unk_10094F2A0, &qword_1007B4E68);
    v25 = String.init<A>(describing:)();
    v27 = sub_10000668C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1005F5104(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *), void *a4, uint64_t *a5)
{
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    if (!v11)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(a1 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v5 = v16[1];

        v18._countAndFlagsBits = v17;
        v18._object = v5;
        v19 = _findStringSwitchCase(cases:string:)(a2, v18);

        if (!v19)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = a3(0, v14[2] + 1, 1, v14);
      }

      v22 = v14[2];
      v21 = v14[3];
      v5 = (v22 + 1);
      if (v22 >= v21 >> 1)
      {
        v14 = a3(v21 > 1, v22 + 1, 1, v14);
      }

      v14[2] = v5;
    }

    while (v11);
LABEL_7:
    while (1)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v20 >= v12)
      {

        return v14;
      }

      v11 = *(v8 + 8 * v20);
      ++v13;
      if (v11)
      {
        v13 = v20;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = a4;
  a2 = a5;
  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100946C50);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136446210;
    sub_1000F5104(v5, a2);
    v28 = String.init<A>(describing:)();
    v30 = sub_10000668C(v28, v29, &v33);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v26, 0xCu);
    sub_10000607C(v27);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1005F53DC(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        v14 = _findStringSwitchCase(cases:string:)(&off_1008E0090, v13);

        if (v14 < 0xE)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10036649C(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v19 = sub_10036649C((v16 > 1), v17 + 1, 1, v8);
        v18 = v17 + 1;
        v8 = v19;
      }

      *(v8 + 2) = v18;
      v8[v17 + 32] = v14;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v15 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v15);
      ++v7;
      if (v5)
      {
        v7 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100946C50);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446210;
    sub_1000F5104(&qword_10094F348, &qword_1007B4EF8);
    v25 = String.init<A>(describing:)();
    v27 = sub_10000668C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1005F56BC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *), uint64_t *a4, uint64_t *a5)
{
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    if (!v11)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(a1 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v18 = v16[1];

        v19._countAndFlagsBits = v17;
        v19._object = v18;
        v5 = _findStringSwitchCase(cases:string:)(a2, v19);

        if (v5 <= 5)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = a3(0, v14[2] + 1, 1, v14);
      }

      v22 = v14[2];
      v21 = v14[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v24 = a3(v21 > 1, v22 + 1, 1, v14);
        v23 = v22 + 1;
        v14 = v24;
      }

      v14[2] = v23;
      *(v14 + v22 + 32) = v5;
    }

    while (v11);
LABEL_7:
    while (1)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v20 >= v12)
      {

        return v14;
      }

      v11 = *(v8 + 8 * v20);
      ++v13;
      if (v11)
      {
        v13 = v20;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = a4;
  a2 = a5;
  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_100946C50);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136446210;
    sub_1000F5104(v5, a2);
    v30 = String.init<A>(describing:)();
    v32 = sub_10000668C(v30, v31, &v35);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v28, 0xCu);
    sub_10000607C(v29);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1005F59A8(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        v14 = _findStringSwitchCase(cases:string:)(&off_1008E0338, v13);

        if (v14 <= 4)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1003665D8(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v19 = sub_1003665D8((v16 > 1), v17 + 1, 1, v8);
        v18 = v17 + 1;
        v8 = v19;
      }

      *(v8 + 2) = v18;
      v8[v17 + 32] = v14;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v15 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v15);
      ++v7;
      if (v5)
      {
        v7 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100946C50);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446210;
    sub_1000F5104(&qword_10094F260, &qword_1007B4E30);
    v25 = String.init<A>(describing:)();
    v27 = sub_10000668C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1005F5C88(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_100513988();
        if (v13 != 22)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v27 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100366600(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      v17 = v27;
      if (v16 >= v15 >> 1)
      {
        v8 = sub_100366600((v15 > 1), v16 + 1, 1, v8);
        v17 = v27;
      }

      *(v8 + 2) = v16 + 1;
      v8[v16 + 32] = v17;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v14);
      ++v7;
      if (v5)
      {
        v7 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100946C50);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446210;
    sub_1000F5104(&qword_10094F3A0, &qword_1007B4F38);
    v23 = String.init<A>(describing:)();
    v25 = sub_10000668C(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v21, 0xCu);
    sub_10000607C(v22);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1005F5F50(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *), uint64_t *a4, uint64_t *a5)
{
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    if (!v11)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(a1 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v18 = v16[1];

        v19._countAndFlagsBits = v17;
        v19._object = v18;
        v5 = _findStringSwitchCase(cases:string:)(a2, v19);

        if (v5 <= 3)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = a3(0, v14[2] + 1, 1, v14);
      }

      v22 = v14[2];
      v21 = v14[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v24 = a3(v21 > 1, v22 + 1, 1, v14);
        v23 = v22 + 1;
        v14 = v24;
      }

      v14[2] = v23;
      *(v14 + v22 + 32) = v5;
    }

    while (v11);
LABEL_7:
    while (1)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v20 >= v12)
      {

        return v14;
      }

      v11 = *(v8 + 8 * v20);
      ++v13;
      if (v11)
      {
        v13 = v20;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = a4;
  a2 = a5;
  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_100946C50);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136446210;
    sub_1000F5104(v5, a2);
    v30 = String.init<A>(describing:)();
    v32 = sub_10000668C(v30, v31, &v35);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v28, 0xCu);
    sub_10000607C(v29);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_1005F623C()
{
  v0._countAndFlagsBits = 0x44497463656A626FLL;
  v0._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(&off_1008E0A28, v0);
  if (result >= 6)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &unk_10093F790, off_1008D4158);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 6;
  }

  return result;
}

uint64_t sub_1005F63F0()
{
  result = sub_100682CAC();
  if (result == 42)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F65A4(Swift::OpaquePointer a1, unint64_t *a2, uint64_t *a3)
{
  v5._countAndFlagsBits = 0x44497463656A626FLL;
  v5._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 4)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v17);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 4;
  }

  return result;
}

uint64_t sub_1005F6750()
{
  result = sub_1002F944C();
  if (result == 26)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F6904(Swift::OpaquePointer a1, unint64_t *a2, uint64_t *a3)
{
  v5._countAndFlagsBits = 0x44497463656A626FLL;
  v5._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 5)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v17);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 5;
  }

  return result;
}

uint64_t sub_1005F6AB0(uint64_t (*a1)(uint64_t, unint64_t), unint64_t *a2, uint64_t *a3)
{
  result = a1(0x44497463656A626FLL, 0xE800000000000000);
  if (result == 11)
  {
    v6 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v17);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return v6;
  }

  return result;
}

uint64_t sub_1005F6C6C()
{
  result = sub_1002B3014();
  if (result == 40)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F6E20(Swift::OpaquePointer a1, void (*a2)(void))
{
  v3._countAndFlagsBits = 0x44497463656A626FLL;
  v3._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v3);
  if (result >= 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100946C50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      a2(0);
      v10 = [swift_getObjCClassFromMetadata() description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v15);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    return 2;
  }

  return result;
}

unint64_t sub_1005F6FC8()
{
  v13._countAndFlagsBits = 0x44497463656A626FLL;
  v13._object = 0xE800000000000000;
  result = sub_1001DA3AC(v13);
  if (result == 12)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      type metadata accessor for REMCDTemplate();
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F716C(Swift::OpaquePointer a1, unint64_t *a2, uint64_t *a3)
{
  v5._countAndFlagsBits = 0x44497463656A626FLL;
  v5._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v17);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 2;
  }

  return result;
}

unint64_t sub_1005F731C()
{
  v13._countAndFlagsBits = 0x44497463656A626FLL;
  v13._object = 0xE800000000000000;
  result = sub_10022F7F4(v13);
  if (result == 14)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F74D0()
{
  v0._countAndFlagsBits = 0x44497463656A626FLL;
  v0._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(&off_1008E0E80, v0);
  if (result >= 6)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      type metadata accessor for REMCDDueDateDeltaAlert();
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 6;
  }

  return result;
}

unint64_t sub_1005F7674(Swift::OpaquePointer a1, unint64_t *a2, uint64_t *a3)
{
  v5._countAndFlagsBits = 0x44497463656A626FLL;
  v5._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 7)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      sub_1000060C8(0, a2, a3);
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v17);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 7;
  }

  return result;
}

unint64_t sub_1005F7820()
{
  v0._countAndFlagsBits = 0x44497463656A626FLL;
  v0._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(&off_1008E0FF8, v0);
  if (result >= 5)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      type metadata accessor for REMCDListSection();
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 5;
  }

  return result;
}

unint64_t sub_1005F79C4()
{
  v0._countAndFlagsBits = 0x44497463656A626FLL;
  v0._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(&off_1008E10E0, v0);
  if (result >= 3)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      sub_1000060C8(0, &qword_100940360, off_1008D4138);
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 3;
  }

  return result;
}

uint64_t sub_1005F7B78()
{
  result = sub_100513988();
  if (result == 22)
  {
    v1 = result;
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      type metadata accessor for REMCDSavedReminder();
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return v1;
  }

  return result;
}

unint64_t sub_1005F7D1C(Swift::OpaquePointer a1, void (*a2)(void))
{
  v3._countAndFlagsBits = 0x44497463656A626FLL;
  v3._object = 0xE800000000000000;
  result = _findStringSwitchCase(cases:string:)(a1, v3);
  if (result >= 4)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100946C50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      a2(0);
      v10 = [swift_getObjCClassFromMetadata() description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v15);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    return 4;
  }

  return result;
}

unint64_t sub_1005F7EC0(Swift::OpaquePointer a1, unint64_t *a2, uint64_t *a3)
{
  v5._countAndFlagsBits = 0x49746E756F636361;
  v5._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result >= 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      sub_1000060C8(0, a2, a3);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v17);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 2;
  }

  return result;
}

unint64_t sub_1005F807C()
{
  v0._countAndFlagsBits = 0x49746E756F636361;
  v0._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(&off_1008E1368, v0);
  if (result > 6)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 7;
  }

  return result;
}

unint64_t sub_1005F823C()
{
  v0._countAndFlagsBits = 0x49746E756F636361;
  v0._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(&off_1008E1738, v0);
  if (result > 5)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 6;
  }

  return result;
}

unint64_t sub_1005F83FC(Swift::OpaquePointer a1, void (*a2)(void))
{
  v3._countAndFlagsBits = 0x49746E756F636361;
  v3._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(a1, v3);
  if (result >= 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100946C50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      a2(0);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      v10 = [swift_getObjCClassFromMetadata() description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v15);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    return 2;
  }

  return result;
}

unint64_t sub_1005F85B0()
{
  v0._countAndFlagsBits = 0x49746E756F636361;
  v0._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(&off_1008E17E8, v0);
  if (result > 2)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100946C50);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      type metadata accessor for REMCDTemplate();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446210;
      v7 = [swift_getObjCClassFromMetadata() description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = sub_10000668C(v8, v10, &v12);

      *(v5 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v5, 0xCu);
      sub_10000607C(v6);
    }

    return 3;
  }

  return result;
}

unint64_t sub_1005F8760(Swift::OpaquePointer a1, unint64_t *a2, uint64_t *a3)
{
  v5._countAndFlagsBits = 0x49746E756F636361;
  v5._object = 0xE900000000000044;
  result = _findStringSwitchCase(cases:string:)(a1, v5);
  if (result > 3)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100946C50);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      sub_1000060C8(0, a2, a3);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = [swift_getObjCClassFromMetadata() description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000668C(v13, v15, &v17);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v10, 0xCu);
      sub_10000607C(v11);
    }

    return 4;
  }

  return result;
}

BOOL sub_1005F8918(Swift::OpaquePointer a1, void (*a2)(void))
{
  v3._countAndFlagsBits = 0x49746E756F636361;
  v3._object = 0xE900000000000044;
  v4 = _findStringSwitchCase(cases:string:)(a1, v3);
  if (v4)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100946C50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      a2(0);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v10 = [swift_getObjCClassFromMetadata() description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "CDIngestableRelationshipKey is expected to define 'accountID' for every kind of CDIngestors (except REMCDAccount) {CDType: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }
  }

  return v4 != 0;
}

void sub_1005F8AE4(unint64_t a1, int a2)
{
  v4 = v3;
  LODWORD(v5) = a2;
  v45 = type metadata accessor for UUID();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  *&v9 = __chkstk_darwin(v45).n128_u64[0];
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v37 = v5;
      v38 = v2;
      v39 = v4;
      if (!i)
      {
        break;
      }

      v14 = 0;
      v44 = a1 & 0xC000000000000001;
      v40 = (v7 + 8);
      v15 = _swiftEmptyArrayStorage;
      v42 = v12;
      v43 = a1;
      v41 = i;
      while (1)
      {
        if (v44)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v12 + 16))
          {
            goto LABEL_25;
          }

          v16 = *(a1 + 8 * v14 + 32);
        }

        v5 = v16;
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = [v16 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v2 = v11;
        v4 = UUID.uuidString.getter();
        v7 = v18;

        (*v40)(v11, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100365788(0, *(v15 + 2) + 1, 1, v15);
        }

        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        v5 = (v20 + 1);
        if (v20 >= v19 >> 1)
        {
          v15 = sub_100365788((v19 > 1), v20 + 1, 1, v15);
        }

        *(v15 + 2) = v5;
        v21 = &v15[16 * v20];
        *(v21 + 4) = v4;
        *(v21 + 5) = v7;
        ++v14;
        v22 = v12 == v41;
        v12 = v42;
        a1 = v43;
        if (v22)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_19:
    v23 = objc_allocWithZone(REMOrderedIdentifierMap);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v25 = [v23 initWithOrderedIdentifiers:isa];

    v46 = v25;
    sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
    v26 = v25;
    v27 = v39;
    v28 = REMJSONRepresentable.toJSONData()();
    if (!v27)
    {
      v30 = v28;
      v31 = v29;
      sub_100029344(v28, v29);
      v32 = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v30, v31);
      v33 = v38;
      [v38 setSectionIDsOrderingAsData:v32];

      if (v37)
      {
        v34 = [v33 createResolutionTokenMapIfNecessary];
        v35 = String._bridgeToObjectiveC()();
        [v34 updateForKey:v35];
      }

      sub_10001BBA0(v30, v31);
    }
  }

  else
  {
    [v2 setSectionIDsOrderingAsData:{0, v9}];
  }
}

uint64_t sub_1005F8E88(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
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

  v8 = 0;
  sub_1006969AC(a1, sub_1006821B0);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006ACA18, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006ACA34;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006ACA74;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006ACAA8;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006ACADC;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005F9680(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
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

  v8 = 0;
  sub_1006969AC(a1, sub_1006826D0);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF238, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AF254;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AF294;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AF2C8;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AF2E8;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005F9E88(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
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

  v8 = 0;
  sub_100696C24(a1, sub_10068C2C4);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC624, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    type metadata accessor for REMCDManualSortHint();
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AC640;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AC680;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AC6B4;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AC6E8;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FA684(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
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

  v8 = 0;
  sub_1006969AC(a1, sub_10068CF50);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF89C, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_10094F688, off_1008D4140);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AF8B8;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AF8F8;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AF918;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AF938;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FAE8C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
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

  v8 = 0;
  sub_1006969AC(a1, sub_10068CCA0);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF990, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AF9AC;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AF9EC;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AFA0C;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AFA2C;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FB694(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
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

  v8 = 0;
  sub_1006969AC(a1, sub_10068C85C);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AFA84, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AFAA0;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AFAE0;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AFB00;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AFB20;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FBE9C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
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

  v8 = 0;
  sub_1006969AC(a1, sub_10068C5B8);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AFB78, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_100940370, off_1008D4150);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AFB94;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AFBD4;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AFBF4;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AFC14;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}