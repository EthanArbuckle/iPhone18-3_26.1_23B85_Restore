BOOL sub_10002B804(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

void sub_10002B8D0(char a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  LOBYTE(v5) = a1;
  v6 = type metadata accessor for UUID();
  v101 = *(v6 - 8);
  v7 = *(v101 + 64);
  __chkstk_darwin(v6);
  v99 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10028088C(&qword_10097A678, &qword_1007FD7C8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v90 - v14;
  if (!v5)
  {
    v16 = &OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer;
LABEL_5:
    v17 = (v2 + *v16);
    v18 = *v17;
    if (!*v17)
    {
      return;
    }

    v19 = v17[1];
    v20 = qword_1009736A8;
    swift_unknownObjectRetain();
    if (v20 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

  if (v5 == 1)
  {
    v16 = &OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer;
    goto LABEL_5;
  }

  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000C4AC(v40, qword_10097A3F0);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    LODWORD(v102) = v4;
    v4 = v44;
    v104[0] = v44;
    *v43 = 136315394;
    v45 = v3;
    v46 = sub_10000C4E4(0x656946207261654ELL, 0xEA0000000000646CLL, v104);

    *(v43 + 4) = v46;
    v3 = v45;
    *(v43 + 12) = 1024;
    *(v43 + 14) = v102 & 1;
    _os_log_impl(&_mh_execute_header, v41, v42, "Attempting Stop AirDrop %s - forced: %{BOOL}d", v43, 0x12u);
    sub_10000C60C(v4);
    LOBYTE(v4) = v102;
  }

  if ((v4 & 1) == 0)
  {
    if (sub_10002C43C(2))
    {
      *&v102 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v104[0] = v79;
        *v78 = 136315138;
        v80 = sub_10000C4E4(0x656946207261654ELL, 0xEA0000000000646CLL, v104);

        *(v78 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v102, v77, "%s Connections Present - Stop Ignored", v78, 0xCu);
        sub_10000C60C(v79);

LABEL_52:

        return;
      }

      goto LABEL_63;
    }

    v83 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions;
    swift_beginAccess();
    if (*(*(v3 + v83) + 16))
    {
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v103 = v87;
        *v86 = 136315138;
        v88 = sub_10000C4E4(0x656946207261654ELL, 0xEA0000000000646CLL, &v103);

        *(v86 + 4) = v88;
        _os_log_impl(&_mh_execute_header, v84, v85, "%s Transactions Present - Stop Ignored", v86, 0xCu);
        sub_10000C60C(v87);
      }

      return;
    }
  }

  v47 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServersByTransactionID;
  swift_beginAccess();
  v91 = v3;
  v90 = v47;
  v48 = *(v3 + v47);
  v49 = *(v48 + 64);
  v93 = v48 + 64;
  v50 = 1 << *(v48 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v19 = v51 & v49;
  v92 = (v50 + 63) >> 6;
  v94 = v101 + 32;
  v95 = v101 + 16;
  v100 = (v101 + 8);
  v98 = v48;

  v52 = 0;
  v53 = &unk_10097A680;
  v5 = &qword_1007FD7D0;
  v96 = v15;
  v97 = v13;
  v3 = v99;
  if (v19)
  {
    while (1)
    {
      v4 = v52;
LABEL_41:
      v55 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v56 = v55 | (v4 << 6);
      v57 = v98;
      v58 = v101;
      (*(v101 + 16))(v3, *(v98 + 48) + *(v101 + 72) * v56, v6);
      v59 = v6;
      v60 = *(v57 + 56);
      v61 = sub_10028088C(v53, &qword_1007FD7D0);
      v62 = v53;
      v63 = *(v61 + 48);
      v64 = *(v58 + 32);
      v102 = *(v60 + 16 * v56);
      v6 = v59;
      v13 = v97;
      v64(v97, v3, v6);
      *&v13[v63] = v102;
      v53 = v62;
      v5 = &qword_1007FD7D0;
      (*(*(v61 - 8) + 56))(v13, 0, 1, v61);
      swift_unknownObjectRetain();
      v18 = v4;
      v15 = v96;
LABEL_42:
      sub_10002C4E4(v13, v15, &qword_10097A678, &qword_1007FD7C8);
      v65 = sub_10028088C(v53, &qword_1007FD7D0);
      if ((*(*(v65 - 8) + 48))(v15, 1, v65) == 1)
      {
        break;
      }

      v66 = &v15[*(v65 + 48)];
      v68 = *v66;
      v67 = *(v66 + 1);
      ObjectType = swift_getObjectType();
      (*(v67 + 64))(ObjectType, v67);
      swift_unknownObjectRelease();
      (*v100)(v15, v6);
      v52 = v18;
      if (!v19)
      {
        goto LABEL_34;
      }
    }

    v73 = v91;
    v74 = *(v91 + v90);
    *(v91 + v90) = &_swiftEmptyDictionarySingleton;

    v75 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions;
    swift_beginAccess();
    v76 = *(v73 + v75);
    *(v73 + v75) = &_swiftEmptySetSingleton;

    return;
  }

LABEL_34:
  if (v92 <= v52 + 1)
  {
    v54 = v52 + 1;
  }

  else
  {
    v54 = v92;
  }

  v18 = v54 - 1;
  while (1)
  {
    v4 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v4 >= v92)
    {
      v70 = sub_10028088C(v53, &qword_1007FD7D0);
      (*(*(v70 - 8) + 56))(v13, 1, 1, v70);
      v19 = 0;
      goto LABEL_42;
    }

    v19 = *(v93 + 8 * v4);
    v52 = (v52 + 1);
    if (v19)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_67:
  swift_once();
LABEL_7:
  v21 = type metadata accessor for Logger();
  v22 = sub_10000C4AC(v21, qword_10097A3F0);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v101 = v22;
    v26 = v25;
    v27 = swift_slowAlloc();
    v104[0] = v27;
    *v26 = 136315394;
    v28 = v5 == 0;
    if (v5)
    {
      v29 = 0x2072756F6A6E6F42;
    }

    else
    {
      v29 = 0xD00000000000001ALL;
    }

    *&v102 = v18;
    v30 = v5;
    v5 = v19;
    v31 = v4;
    v4 = v3;
    if (v28)
    {
      v32 = 0x800000010078D790;
    }

    else
    {
      v32 = 0xEE00726576726553;
    }

    v33 = sub_10000C4E4(v29, v32, v104);
    v3 = v4;
    LOBYTE(v4) = v31;
    v19 = v5;
    LOBYTE(v5) = v30;

    *(v26 + 4) = v33;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v23, v24, "Attempting Stop AirDrop %s - forced: %{BOOL}d", v26, 0x12u);
    sub_10000C60C(v27);
  }

  if ((v4 & 1) == 0 && sub_10002C43C(v5))
  {
    *&v102 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v104[0] = v36;
      *v35 = 136315138;
      if (v5)
      {
        v37 = 0x2072756F6A6E6F42;
      }

      else
      {
        v37 = 0xD00000000000001ALL;
      }

      if (v5)
      {
        v38 = 0xEE00726576726553;
      }

      else
      {
        v38 = 0x800000010078D790;
      }

      v39 = sub_10000C4E4(v37, v38, v104);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v102, v34, "%s Connections Present - Stop Ignored", v35, 0xCu);
      sub_10000C60C(v36);

      swift_unknownObjectRelease();
      goto LABEL_52;
    }

    swift_unknownObjectRelease();
LABEL_63:
    v89 = v102;

    return;
  }

  v71 = swift_getObjectType();
  (*(v19 + 64))(v71, v19);
  swift_unknownObjectRelease();
  if (v5)
  {
    v72 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer;
  }

  else
  {
    v72 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer;
  }

  v81 = (v3 + v72);
  v82 = *v81;
  *v81 = 0;
  v81[1] = 0;

  swift_unknownObjectRelease();
}

BOOL sub_10002C43C(char a1)
{
  if (a1 == 1)
  {
    v2 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourLegacyReceiveHandlers;
    swift_beginAccess();
    if (*(*(v1 + v2) + 16))
    {
      return 1;
    }

    v4 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourReceiveHandlers;
  }

  else
  {
    v4 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_quicReceiveHandlers;
  }

  swift_beginAccess();
  return *(*v4 + 16) != 0;
}

uint64_t sub_10002C4E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10028088C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002C54C()
{
  v1 = *(v0 + 16);
  sub_10002CED8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002C5AC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dataForKey:v1];

  if (v2)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
    sub_1000276B4(0, &qword_100976A88, IDSPseudonym_ptr);
    v6 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v6)
    {
      v11 = v6;
      sub_100026AC0(v3, v5);
      return v11;
    }

    if (qword_100973578 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100976A68);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No valid current pseudonym to load", v16, 2u);
    }

    sub_100026AC0(v3, v5);
  }

  else
  {
    if (qword_100973578 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100976A68);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No current pseudonym to load", v10, 2u);
    }
  }

  return 0;
}

uint64_t sub_10002C988@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24[-v4];
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000C5B0(v25, v24);
    v9 = type metadata accessor for Date();
    if (swift_dynamicCast())
    {
      sub_10000C60C(v25);
      v10 = *(v9 - 8);
      v11 = *(v10 + 56);
      v11(v5, 0, 1, v9);
      (*(v10 + 32))(a1, v5, v9);
      return v11(a1, 0, 1, v9);
    }

    else
    {
      v19 = *(*(v9 - 8) + 56);
      v19(v5, 1, 1, v9);
      sub_100005508(v5, &qword_10097A7F0, &unk_1007FB600);
      if (qword_100973578 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000C4AC(v20, qword_100976A68);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "No valid after first use date to load", v23, 2u);
      }

      sub_10000C60C(v25);
      return v19(a1, 1, 1, v9);
    }
  }

  else
  {
    if (qword_100973578 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100976A68);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No after first expiration date to load", v16, 2u);
    }

    v17 = type metadata accessor for Date();
    v18 = *(*(v17 - 8) + 56);

    return v18(a1, 1, 1, v17);
  }
}

void *sub_10002CDC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_10002CE04(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100263100();
        v3 = v5;
      }
    }
  }
}

unint64_t sub_10002CE80()
{
  result = qword_100977C00;
  if (!qword_100977C00)
  {
    type metadata accessor for AirDropActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C00);
  }

  return result;
}

uint64_t sub_10002CED8()
{
  v121 = type metadata accessor for UUID();
  v113 = *(v121 - 8);
  v1 = *(v113 + 64);
  v2 = __chkstk_darwin(v121);
  v4 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v101 - v6;
  __chkstk_darwin(v5);
  v110 = &v101 - v8;
  v9 = sub_10028088C(&qword_10097A678, &qword_1007FD7C8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = &v101 - v14;
  v118 = v0;
  v15 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer;
  v16 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServer);
  v116 = v13;
  if (v16)
  {
    v17 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 32);
    swift_unknownObjectRetain();
    v20 = ObjectType;
    v13 = v116;
    v21 = v19(v20, v17);
    swift_unknownObjectRelease();
    if (v21)
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000C4AC(v22, qword_10097A3F0);
      swift_retain_n();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v123 = v26;
        *v25 = 136315394;
        v27 = NWListener.debugDescription.getter();
        v29 = sub_10000C4E4(v27, v28, &v123);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2048;
        v30 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors;
        v31 = v118;
        swift_beginAccess();
        v32 = *(*(v31 + v30) + 16);

        *(v25 + 14) = v32;

        _os_log_impl(&_mh_execute_header, v23, v24, "Application Service Server %s - errors: %ld", v25, 0x16u);
        sub_10000C60C(v26);
      }

      else
      {
      }

      v13 = v116;
    }
  }

  if (*(v118 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer))
  {
    v33 = *(v118 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer + 8);
    v34 = *(v118 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServer);
    v35 = swift_getObjectType();
    v36 = *(v33 + 32);
    swift_unknownObjectRetain();
    v37 = v35;
    v13 = v116;
    v38 = v36(v37, v33);
    swift_unknownObjectRelease();
    if (v38)
    {
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000C4AC(v39, qword_10097A3F0);
      swift_retain_n();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v123 = v43;
        *v42 = 136315394;
        v44 = NWListener.debugDescription.getter();
        v46 = sub_10000C4E4(v44, v45, &v123);

        *(v42 + 4) = v46;
        *(v42 + 12) = 2048;
        v47 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServerErrors;
        v48 = v118;
        swift_beginAccess();
        v49 = *(*(v48 + v47) + 16);

        *(v42 + 14) = v49;

        _os_log_impl(&_mh_execute_header, v40, v41, "Bonjour Server %s - errors: %ld", v42, 0x16u);
        sub_10000C60C(v43);
      }

      else
      {
      }

      v13 = v116;
    }
  }

  v50 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldTransactions;
  v51 = v118;
  swift_beginAccess();
  if ((*(&v50->isa + v51))[2])
  {
    if (qword_1009736A8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

  while (1)
  {
    v56 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServersByTransactionID;
    v57 = v118;
    swift_beginAccess();
    result = *(v57 + v56);
    if (!*(result + 16))
    {
      return result;
    }

    v109 = v4;
    v59 = *(result + 64);
    v104 = result + 64;
    v60 = 1 << *(result + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & v59;
    v63 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_nearFieldServerErrors;
    v111 = result;

    v102 = v63;
    swift_beginAccess();
    v64 = 0;
    v103 = (v60 + 63) >> 6;
    v117 = (v113 + 16);
    v119 = (v113 + 32);
    v114 = (v113 + 8);
    *&v65 = 136315650;
    v101 = v65;
    v115 = v7;
    v4 = v112;
    if (v62)
    {
      break;
    }

LABEL_28:
    if (v103 <= v64 + 1)
    {
      v66 = v64 + 1;
    }

    else
    {
      v66 = v103;
    }

    v67 = v66 - 1;
    while (1)
    {
      v68 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v68 >= v103)
      {
        v50 = &qword_1007FD7D0;
        v69 = sub_10028088C(&unk_10097A680, &qword_1007FD7D0);
        (*(*(v69 - 8) + 56))(v13, 1, 1, v69);
        v62 = 0;
        goto LABEL_39;
      }

      v62 = *(v104 + 8 * v68);
      ++v64;
      if (v62)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_51:
    swift_once();
LABEL_19:
    v52 = type metadata accessor for Logger();
    sub_10000C4AC(v52, qword_10097A3F0);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = (*(&v50->isa + v118))[2];

      _os_log_impl(&_mh_execute_header, v53, v54, "NearField Transactions %ld", v55, 0xCu);
      v13 = v116;
    }

    else
    {
    }
  }

  while (1)
  {
    v68 = v64;
LABEL_38:
    v70 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    v71 = v70 | (v68 << 6);
    v72 = v111;
    v73 = v113;
    v74 = v110;
    v75 = v121;
    (*(v113 + 16))(v110, *(v111 + 48) + *(v113 + 72) * v71, v121);
    v76 = *(v72 + 56);
    v50 = &qword_1007FD7D0;
    v77 = sub_10028088C(&unk_10097A680, &qword_1007FD7D0);
    v78 = *(v77 + 48);
    v79 = *(v73 + 32);
    v120 = *(v76 + 16 * v71);
    v13 = v116;
    v79(v116, v74, v75);
    *&v13[v78] = v120;
    (*(*(v77 - 8) + 56))(v13, 0, 1, v77);
    swift_unknownObjectRetain();
    v67 = v68;
    v7 = v115;
    v4 = v112;
LABEL_39:
    sub_10002C4E4(v13, v4, &qword_10097A678, &qword_1007FD7C8);
    v80 = sub_10028088C(&unk_10097A680, &qword_1007FD7D0);
    if ((*(*(v80 - 8) + 48))(v4, 1, v80) == 1)
    {
    }

    v81 = &v4[*(v80 + 48)];
    v83 = *v81;
    v82 = *(v81 + 1);
    (*v119)(v7, v4, v121);
    v84 = swift_getObjectType();
    if ((*(v82 + 32))(v84, v82))
    {
      *&v120 = v67;
      if (qword_1009736A8 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_10000C4AC(v85, qword_10097A3F0);
      v86 = v109;
      v87 = v121;
      (*v117)(v109, v7, v121);
      swift_retain_n();

      v50 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v88))
      {
        v89 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v122 = v108;
        *v89 = v101;
        v107 = v50;
        v106 = v88;
        v90 = NWListener.debugDescription.getter();
        v92 = sub_10000C4E4(v90, v91, &v122);

        *(v89 + 4) = v92;
        *(v89 + 12) = 2080;
        sub_1000053E8(&qword_100978CE0, &type metadata accessor for UUID);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        v50 = v114;
        v105 = *v114;
        v105(v86, v87);
        v96 = sub_10000C4E4(v93, v95, &v122);
        v97 = v118;

        *(v89 + 14) = v96;
        *(v89 + 22) = 2048;
        v98 = *(*(v97 + v102) + 16);

        *(v89 + 24) = v98;
        v7 = v115;

        v99 = v107;
        _os_log_impl(&_mh_execute_header, v107, v106, "NearField Server %s - TransactionID %s - errors: %ld", v89, 0x20u);
        swift_arrayDestroy();

        v13 = v116;

        swift_unknownObjectRelease();

        v105(v7, v121);
      }

      else
      {

        swift_unknownObjectRelease();

        v100 = *v114;
        (*v114)(v86, v87);
        v100(v7, v87);
      }

      v64 = v120;
      if (!v62)
      {
        goto LABEL_28;
      }
    }

    else
    {
      (*v114)(v7, v121);
      swift_unknownObjectRelease();
      v64 = v67;
      if (!v62)
      {
        goto LABEL_28;
      }
    }
  }
}

uint64_t sub_10002DC30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002DC70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002DCB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002DCF0()
{
  v1[5] = v0;
  v2 = *(*(sub_10028088C(&qword_1009799D0, &unk_1007FCB10) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002DDE8, 0, 0);
}

uint64_t sub_10002DDE8()
{
  v26 = v0;
  if ([*(v0 + 40) deviceWasUnlockedOnce])
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 48);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_1009738B8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 40);
    v6 = type metadata accessor for Logger();
    *(v0 + 80) = sub_10000C4AC(v6, qword_10097F000);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 40);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      *(v0 + 32) = v10;
      sub_1000276B4(0, &unk_10097F050, off_1008C8D68);
      v13 = v10;
      v14 = String.init<A>(describing:)();
      v16 = sub_10000C4E4(v14, v15, &v25);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: Waiting for first unlock to start", v11, 0xCu);
      sub_10000C60C(v12);
    }

    v17 = [objc_opt_self() defaultCenter];
    if (qword_100973670 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 72);
    *(v0 + 88) = NSNotificationCenter.notifications(named:object:)();

    NSNotificationCenter.Notifications.makeAsyncIterator()();
    v19 = sub_1004784F0(&unk_10097F040, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v20 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    v21[1] = sub_10046A140;
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    v24 = *(v0 + 56);

    return dispatch thunk of AsyncIteratorProtocol.next()(v23, v24, v19);
  }
}

uint64_t sub_10002E110()
{
  v1 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v40 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v39 = v1;
  v41 = v1 + 64;
  while (v5)
  {
    v10 = v9;
LABEL_11:
    v12 = v5;
    v13 = v1;
    v14 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v15 = *(v14 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
    __chkstk_darwin(v14);

    os_unfair_lock_lock(v15 + 4);
    sub_1003E3254(v46);
    os_unfair_lock_unlock(v15 + 4);
    v16 = v46[0] >> 62;
    v17 = v46[0];
    v44 = v8;
    if (v46[0] >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v45 = *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v10;
    v19 = v10 >> 62;
    if (v10 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v45;
    v21 = result + v45;
    if (__OFADD__(result, v45))
    {
      goto LABEL_43;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v19)
      {
LABEL_23:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = v18 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
        v24 = *(v22 + 16);
      }

      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v23 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_25;
    }

    if (v19)
    {
      goto LABEL_23;
    }

    v22 = v18 & 0xFFFFFFFFFFFFFF8;
    v23 = v18;
    if (v21 > *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

LABEL_25:
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    v43 = v23;
    if (v16)
    {
      v28 = v22;
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v28;
      v27 = v29;
      result = v17;
    }

    else
    {
      result = v17;
      v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = (v12 - 1) & v12;
    if (v27)
    {
      if (((v26 >> 1) - v25) < v45)
      {
        goto LABEL_45;
      }

      v30 = v22 + 8 * v25 + 32;
      v42 = v22;
      if (v16)
      {
        if (v27 < 1)
        {
          goto LABEL_47;
        }

        v31 = result;
        sub_1003E3298();
        for (i = 0; i != v27; ++i)
        {
          sub_10028088C(&qword_10097B7B8, &qword_1007FEBE0);
          v33 = sub_1004067CC(v46, i, v31);
          v35 = *v34;

          (v33)(v46, 0);
          *(v30 + 8 * i) = v35;
        }

        v1 = v39;
        v5 = (v12 - 1) & v12;
        v20 = v45;
      }

      else
      {
        _s8LocalLTKCMa();
        swift_arrayInitWithCopy();

        v1 = v13;
      }

      v9 = v43;
      v2 = v41;
      v8 = v44;
      if (v20 > 0)
      {
        v36 = *(v42 + 16);
        v37 = __OFADD__(v36, v20);
        v38 = v36 + v20;
        if (v37)
        {
          goto LABEL_46;
        }

        *(v42 + 16) = v38;
        v9 = v43;
      }
    }

    else
    {

      v9 = v43;
      v2 = v41;
      v8 = v44;
      v1 = v13;
      if (v45 > 0)
      {
        goto LABEL_44;
      }
    }
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v40)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      v10 = v9;
      v7 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_10002E530@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
  result = swift_beginAccess();
  v7 = *(a1 + v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_5:
    *a2 = v9;
    return result;
  }

  v11[9] = v2;
  v9 = sub_10029434C(v8, 0);
  v10 = sub_1002924EC(v11, v9 + 4, v8, v7);

  result = sub_100027D64();
  if (v10 == v8)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_10002E624()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dataForKey:v1];

  if (!v2)
  {
    if (qword_100973578 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100976A68);
    v8 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v8, v14, "No pseudonyms to revoke to load", v15, 2u);
    }

    goto LABEL_9;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
  sub_10028088C(&qword_100976A80, &unk_100804540);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  *(v6 + 32) = sub_1000276B4(0, &qword_100974E20, NSDictionary_ptr);
  *(v6 + 40) = sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  *(v6 + 48) = sub_1000276B4(0, &qword_100976A88, IDSPseudonym_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v51[3])
  {
    sub_100005508(v51, &unk_1009746F0, &qword_1007F90B0);
    goto LABEL_33;
  }

  sub_10028088C(&qword_100976A90, &unk_1007F9B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    if (qword_100973578 != -1)
    {
LABEL_42:
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000C4AC(v43, qword_100976A68);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "No valid pseudonyms to revoke", v46, 2u);
    }

    sub_100026AC0(v3, v5);

    return &_swiftEmptyDictionarySingleton;
  }

  v48 = v3;
  v49 = v5;
  v16 = sub_10028064C(_swiftEmptyArrayStorage);
  v17 = 1 << *(v50 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v5 = v18 & *(v50 + 64);
  v19 = (v17 + 63) >> 6;

  v20 = 0;
  if (v5)
  {
    goto LABEL_18;
  }

  do
  {
LABEL_19:
    v3 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      swift_once();
      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_100976A68);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v8, v9))
      {

        return &_swiftEmptyDictionarySingleton;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to load pseudonyms to revoke with error: %@", v10, 0xCu);
      sub_100005508(v11, &qword_100975400, &qword_1007F65D0);

LABEL_9:

      return &_swiftEmptyDictionarySingleton;
    }

    if (v3 >= v19)
    {
      sub_100026AC0(v48, v49);

      return v16;
    }

    v5 = *(v50 + 64 + 8 * v3);
    ++v20;
  }

  while (!v5);
  while (1)
  {
    v24 = __clz(__rbit64(v5)) | (v3 << 6);
    v25 = (*(v50 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(*(v50 + 56) + 8 * v24);
    swift_bridgeObjectRetain_n();
    v29 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v16;
    v31 = sub_100012854(v27, v26);
    v33 = v16[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      __break(1u);
      goto LABEL_42;
    }

    v37 = v32;
    if (v16[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = v31;
        sub_1002CEAE8();
        v31 = v42;
      }
    }

    else
    {
      sub_100572B74(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_100012854(v27, v26);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_44;
      }
    }

    v5 &= v5 - 1;
    if (v37)
    {
      v21 = v31;

      v16 = v51[0];
      v22 = *(v51[0] + 56);
      v23 = *(v22 + 8 * v21);
      *(v22 + 8 * v21) = v29;

      v20 = v3;
      if (!v5)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v16 = v51[0];
    *(v51[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
    v39 = (v16[6] + 16 * v31);
    *v39 = v27;
    v39[1] = v26;
    *(v16[7] + 8 * v31) = v29;

    v40 = v16[2];
    v35 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v35)
    {
      break;
    }

    v16[2] = v41;
    v20 = v3;
    if (!v5)
    {
      goto LABEL_19;
    }

LABEL_18:
    v3 = v20;
  }

  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002ED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10002EE10, 0, 0);
}

uint64_t sub_10002EE10()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100005358(&qword_1009762F0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100005358(&qword_100987140, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1002CDA50;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

void sub_10002EFA8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100264134();
        v3 = v5;
      }
    }
  }
}

id sub_10002F024()
{
  if (qword_10098A270 != -1)
  {
    sub_100202B88();
  }

  v1 = qword_10098A268;

  return v1;
}

void sub_10002F268(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 72));
  _Unwind_Resume(a1);
}

unint64_t sub_10002F2C4()
{
  result = qword_10097D858;
  if (!qword_10097D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D858);
  }

  return result;
}

void sub_10002F480(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

const char *sub_10002F4BC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = "ShareSheetTestability";
    v6 = "DigitalEngraving";
    if (a1 != 8)
    {
      v6 = "auto_unlock_ipad_as_realitydevice";
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = "PINPairingDDUI";
    if (a1 != 5)
    {
      v7 = "ShareSheetSnapshotCollection";
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = "HomePodUseAMS";
    v2 = "Headphone_PRX";
    v3 = "headphones_prox_upsell_supported";
    if (a1 != 3)
    {
      v3 = "marketing_upsell_use_sharing_config";
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = "HomePodUseAMSEarly";
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10002F5B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_10002F604(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002F690(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_10028088C(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10002F7D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10028088C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10028088C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_10002F91C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained proxPairingLoggerAndInvalidationHandler:@"ActivateWithCompletion Handler" withLogLevel:16 andError:v3];
}

void sub_10002F984(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100970E30 <= 60)
    {
      v6 = v2;
      if (dword_100970E30 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_10012DF60();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_100970E30 <= 30)
  {
    v6 = 0;
    if (dword_100970E30 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_10002FA34();
      goto LABEL_13;
    }
  }
}

BOOL sub_10002FC28(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_10002FC40(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_10002FC60()
{
  v2 = *(v0 + 272);

  dispatch_assert_queue_V2(v2);
}

void sub_10002FC78(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10002FCF8(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 976));
  v5 = *(a1 + 32);
  if (*(v5 + 296))
  {
    if (*(v5 + 720) == 1)
    {
      v6 = v9;
      if (dword_1009731D8 > 30)
      {
        goto LABEL_10;
      }

      if (dword_1009731D8 == -1)
      {
        v7 = _LogCategory_Initialize();
        v6 = v9;
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      sub_10026406C(v6);
    }

    else
    {
      v6 = v9;
      if (dword_1009731D8 > 30)
      {
        goto LABEL_10;
      }

      if (dword_1009731D8 == -1)
      {
        v8 = _LogCategory_Initialize();
        v6 = v9;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      sub_10002FDF4();
    }

    v6 = v9;
LABEL_10:
    [*(a1 + 32) _deviceDiscoveryBLEDeviceChanged:v6 type:7 changes:a3];
  }
}

void sub_10002FE34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = v5;
  if (dword_100970E30 <= 9)
  {
    if (dword_100970E30 != -1 || (v6 = _LogCategory_Initialize(), v5 = v10, v6))
    {
      v8 = a3;
      v9 = &unk_1007F4F58;
      v7 = v5;
      LogPrintF();
      v5 = v10;
    }
  }

  [*(a1 + 32) _deviceChanged:{v5, v7, v8, v9}];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [*(a1 + 32) _powerSourcesUpdateForDevice:v10 changes:a3];
  }
}

void sub_10002FF28(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 976));
  if (*(*(a1 + 32) + 720) == 1)
  {
    if (dword_1009731D8 <= 30 && (dword_1009731D8 != -1 || _LogCategory_Initialize()))
    {
      sub_100264004(v3);
    }
  }

  else if (dword_1009731D8 <= 30 && (dword_1009731D8 != -1 || _LogCategory_Initialize()))
  {
    sub_100031324();
  }

  [*(a1 + 32) _deviceDiscoveryBLEDeviceLost:v3 type:7];
}

void sub_100030000(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

void sub_100030074(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_100971478 <= 10)
  {
    if (dword_100971478 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100030000(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _clientDeviceFound:v3];
}

void sub_1000302B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (dword_100973248 <= 20)
  {
    if (dword_100973248 != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      sub_100030354();
      v5 = v7;
    }
  }

  [*(a1 + 32) _deviceDiscoveryBLEDeviceChanged:v5 type:16 changes:a3];
}

id sub_100030628()
{
  if (qword_100989C00 != -1)
  {
    sub_1000C8AE0();
  }

  v1 = qword_100989BF8;

  return v1;
}

uint64_t sub_100031AF8(uint64_t a1)
{
  *(a1 + 240);
  [a1 _idsTetheringClientDeviceCount];
  [a1 _sysMonitorFamilyCount];
  [*(a1 + 224) isTetheringSupported];
  *(a1 + 321);
  [*(a1 + 224) maxConnectionsReached];
  [a1 _sysMonitorD2DEncryptionIsAvailable];
  *(a1 + 320);
  return LogPrintF();
}

void sub_100031F38(uint64_t a1)
{
  *(a1 + 264);
  [a1 _idsLegacyHostDeviceCount];
  [a1 _idsLegacyClientDeviceCount];
  v2 = [a1 _idsDeviceArray];
  [v2 count];
  *(a1 + 321);
  *(a1 + 192);
  *(a1 + 224);
  [a1 _sysMonitorD2DEncryptionIsAvailable];
  LogPrintF();
}

void sub_1000326EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_100970200 <= 50)
  {
    if (dword_100970200 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1000303B0();
      v3 = v5;
    }
  }

  [*(a1 + 32) _discoveryDeviceChanged:v3];
}

uint64_t sub_10003277C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000327E0(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000329CC(uint64_t a1)
{
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100032A34();
  }

  v2 = *(a1 + 32);

  return [v2 _update];
}

uint64_t sub_100033494(_BYTE *a1)
{
  a1[264];
  [a1 _idsTetheringHostDeviceCount];
  [a1 _sysMonitorFamilyCount];
  [a1 _sysMonitorD2DEncryptionIsAvailable];
  a1[24];
  a1[321];
  a1[48];
  return LogPrintF();
}

void sub_1000337C0(uint64_t a1, void *a2)
{
  v7 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 976));
  v3 = *(a1 + 32);
  if (*(v3 + 296))
  {
    if (*(v3 + 720) == 1)
    {
      v4 = v7;
      if (dword_1009731D8 > 30)
      {
        goto LABEL_10;
      }

      if (dword_1009731D8 == -1)
      {
        v5 = _LogCategory_Initialize();
        v4 = v7;
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      sub_100263F9C(v4);
    }

    else
    {
      v4 = v7;
      if (dword_1009731D8 > 30)
      {
        goto LABEL_10;
      }

      if (dword_1009731D8 == -1)
      {
        v6 = _LogCategory_Initialize();
        v4 = v7;
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      sub_1000338B4();
    }

    v4 = v7;
LABEL_10:
    [*(a1 + 32) _deviceDiscoveryBLEDeviceFound:v4 type:7];
  }
}

uint64_t sub_100033900(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:{@"AirPods1, 1"}] & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"AirPods1,3") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"AirPodsPro1,1") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"PowerbeatsPro1,1") & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"Device1,8202"))
  {
    v2 = 1;
  }

  else
  {
    v4 = [[SFHeadphoneProduct alloc] initWithBluetoothModel:v1];
    v2 = [v4 showsStatus];
  }

  return v2;
}

void sub_100035138()
{
  v2 = *(*(v0 + 112) + 56);

  dispatch_assert_queue_V2(v2);
}

void sub_1000356A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 288);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10003575C;
    v5[3] = &unk_1008CDC30;
    v4 = a2;
    objc_copyWeak(&v6, (a1 + 40));
    v5[4] = v4;
    dispatch_async(v3, v5);

    objc_destroyWeak(&v6);
  }
}

void sub_10003575C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _motionUpdate:*(a1 + 32)];
}

void sub_1000359D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F70F0();
    }
  }

  else if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_100035A84();
  }

  [*(a1 + 32) _update];
}

void sub_100035ABC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1009708B0 <= 60 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F6AF0();
    }
  }

  else if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_100035B70();
  }

  [*(a1 + 32) _update];
}

void sub_100035B8C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100263F5C();
        v3 = v5;
      }
    }
  }
}

id sub_100035C98(int a1)
{
  if ((a1 - 10) >= 0xB)
  {
    if (a1 >= 8)
    {
      if (a1 <= 9)
      {
        v5 = "?";
      }

      else
      {
        v5 = "User";
      }
    }

    else
    {
      v5 = off_1008D02A0[a1];
    }

    v3 = [NSString stringWithUTF8String:v5, v1];
  }

  else
  {
    v3 = *(&off_1008D0248 + (a1 - 10));
  }

  return v3;
}

void sub_100035DA4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_100035DC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    a2 = result;
  }

  *v2 = a2;
  return result;
}

id sub_100035E1C()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

void sub_100035E94(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (([*(a1 + 32) _combinedDeviceIsSuppressed:?] & 1) == 0)
  {
    v5 = [v6 state] - 11;
    if (v5 <= 9)
    {
      objc_storeStrong((*(*(a1 + qword_1007F4DD0[v5]) + 8) + 40), a3);
    }
  }
}

void sub_100035F9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void *sub_10003671C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_10003677C(void *a1, uint64_t *a2)
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

void *sub_1000367AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1000367D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

BOOL sub_100036900(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_100036930@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_10003695C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_100036A88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_100282638(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100036ACC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100036AFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036B1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100036B94()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036BD4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036C18()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036C50()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100036CB0()
{
  v1 = sub_10028088C(&qword_1009755D8, &qword_1007F8968);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100036D50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100036E94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100036F50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100037080(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000371B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10003725C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SDAuthenticationSessionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003738C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100037438(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SDAuthenticationSessionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100037500()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000C60C((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000375E0()
{
  v1 = _s7RequestVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_10000C60C((v0 + v3 + v1[5]));
  v6 = (v0 + v3 + v1[6]);
  if ((v6[1] - 1) >= 2)
  {

    v7 = v6[3];

    v8 = v6[5];
    if (v8 >> 60 != 15)
    {
      sub_100026AC0(v6[4], v8);
    }
  }

  v9 = *(v0 + v3 + v1[7]);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100037724()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003777C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100037844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_100037904()
{
  v1 = (type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + 24);
  swift_unknownObjectRelease();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_100026AC0(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));
  v7 = *(v0 + v3 + v1[8]);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100037A0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037A44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037A80()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100037AB8()
{
  v0 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v1 = *(v0 - 8);
  v22 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v23 = v0;
  v2 = *(v1 + 64);
  v3 = (type metadata accessor for SDNearFieldTap() - 8);
  v21 = (v22 + v2 + *(*v3 + 80)) & ~*(*v3 + 80);
  v26 = (*(*v3 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) - 8);
  v25 = (v26 + *(*v4 + 80) + 8) & ~*(*v4 + 80);
  v5 = *(*v4 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v27 = *(v7 + 64);
  v9 = (v25 + v5 + v8) & ~v8;
  v10 = (v27 + v8 + v9) & ~v8;
  (*(v1 + 8))(v24 + v22, v23);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v24 + v21, v11);
  v12 = *(v24 + v21 + v3[7] + 8);

  v13 = *(v24 + v21 + v3[8] + 8);

  v14 = *(v24 + v21 + v3[9] + 8);

  v15 = *(v24 + v21 + v3[10] + 8);

  v16 = *(v24 + v21 + v3[11] + 8);

  v17 = *(v24 + v21 + v3[12] + 8);

  sub_100026AC0(*(v24 + v21 + v3[15]), *(v24 + v21 + v3[15] + 8));
  v18 = *(v7 + 8);
  v18(v24 + v21 + v3[16], v6);
  v18(v24 + v21 + v3[17], v6);

  v18(v24 + v25, v6);
  sub_100026AC0(*(v24 + v25 + v4[7]), *(v24 + v25 + v4[7] + 8));
  v19 = *(v24 + v25 + v4[8]);
  swift_unknownObjectRelease();
  v18(v24 + v9, v6);
  v18(v24 + v10, v6);

  return _swift_deallocObject(v24, v10 + v27);
}

uint64_t sub_100037E38()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100037F04()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_100037FFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100038034()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100038198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100038260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100038324()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003835C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000383A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000383F0()
{
  v1 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1000384E4()
{
  v1 = type metadata accessor for SFAirDropReceive.AskResponse();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = *(v7 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  v9 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v8, v6);

  return _swift_deallocObject(v0, v8 + v11);
}

uint64_t sub_100038668()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000386A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000386DC()
{
  v1 = sub_10028088C(&qword_100976BE0, &qword_1007F9D30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000387D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000387E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for B389PresentationConfig.Mode(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003888C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for B389PresentationConfig.Mode(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100038930()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100038968()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000389A0()
{
  v1 = sub_10028088C(&qword_1009775E8, &qword_1007FA6D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100038A34()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100038A74()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100038AB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100038B18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100038B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100038C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100038D08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100038E38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100038F7C()
{
  v1 = *(v0 + 16);

  sub_10000C60C((v0 + 24));

  return _swift_deallocObject(v0, 65);
}

uint64_t sub_100038FBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100039068(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003910C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000391B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SDAuthenticationSessionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003925C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003929C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000392DC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100039314()
{
  v1 = _s15ExchangeRequestVMa(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v2 + v1[5] + 8);

  v7 = *(v0 + v2 + v1[6] + 8);

  v8 = v1[7];
  v9 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = (v4 + v1[8]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100026AC0(*v11, v12);
  }

  v13 = (v4 + v1[9]);
  if (v13[9])
  {
    v14 = v13[1];

    v15 = v13[3];
    if (v15 >> 60 != 15)
    {
      sub_100026AC0(v13[2], v15);
    }

    sub_100026AC0(v13[4], v13[5]);
    sub_100026AC0(v13[6], v13[7]);
    v16 = v13[9];
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100039508()
{
  v1 = _s15ExchangeRequestVMa(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v2 + v1[5] + 8);

  v7 = *(v0 + v2 + v1[6] + 8);

  v8 = v1[7];
  v9 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = (v4 + v1[8]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100026AC0(*v11, v12);
  }

  v13 = (v4 + v1[9]);
  if (v13[9])
  {
    v14 = v13[1];

    v15 = v13[3];
    if (v15 >> 60 != 15)
    {
      sub_100026AC0(v13[2], v15);
    }

    sub_100026AC0(v13[4], v13[5]);
    sub_100026AC0(v13[6], v13[7]);
    v16 = v13[9];
  }

  v17 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17);

  return _swift_deallocObject(v0, v17 + 8);
}

uint64_t sub_100039710()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100039748()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100039780()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000397C0()
{
  v1 = type metadata accessor for NWConnection.State();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100039894()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000398DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003991C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003995C()
{
  v1 = (_s12ErrorRequestVMa() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[7];
  v6 = type metadata accessor for CodableError();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100039A7C()
{
  v1 = (_s12ErrorRequestVMa() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = type metadata accessor for CodableError();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100039BB0()
{
  v1 = _s10AskRequestVMa();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v7 = v1[5];
  v8 = type metadata accessor for SFAirDrop.TransferType();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v10 = (v4 + v1[6]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100026AC0(*v10, v11);
  }

  v12 = *(v4 + v1[7] + 8);

  v13 = *(v4 + v1[8] + 8);

  v14 = *(v4 + v1[9] + 8);

  v15 = *(v4 + v1[10] + 8);

  v16 = *(v4 + v1[11]);

  v17 = *(v4 + v1[12]);

  v18 = *(v4 + v1[13] + 8);

  v19 = (v4 + v1[14]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100026AC0(*v19, v20);
  }

  v21 = (v4 + v1[15]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100026AC0(*v21, v22);
  }

  v23 = (v4 + v1[17]);
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_100026AC0(*v23, v24);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100039E54()
{
  v1 = _s10AskRequestVMa();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v7 = v1[5];
  v8 = type metadata accessor for SFAirDrop.TransferType();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v10 = (v4 + v1[6]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100026AC0(*v10, v11);
  }

  v12 = *(v4 + v1[7] + 8);

  v13 = *(v4 + v1[8] + 8);

  v14 = *(v4 + v1[9] + 8);

  v15 = *(v4 + v1[10] + 8);

  v16 = *(v4 + v1[11]);

  v17 = *(v4 + v1[12]);

  v18 = *(v4 + v1[13] + 8);

  v19 = (v4 + v1[14]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100026AC0(*v19, v20);
  }

  v21 = (v4 + v1[15]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100026AC0(*v21, v22);
  }

  v23 = (v4 + v1[17]);
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_100026AC0(*v23, v24);
  }

  v25 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + v25);

  return _swift_deallocObject(v0, v25 + 8);
}

uint64_t sub_10003A10C()
{
  v1 = *(_s12HelloRequestVMa() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10003A1E0()
{
  v1 = *(_s12HelloRequestVMa() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10003A2F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003A334()
{
  v1 = type metadata accessor for SFAirDropSend.Transfer();
  v2 = *(v1 - 8);
  v15 = v1;
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v3 = *(v2 + 64);
  v14 = type metadata accessor for SFAirDropSend.Request();
  v4 = *(v14 - 8);
  v5 = (v13 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  (*(v2 + 8))(v0 + v13, v15);
  (*(v4 + 8))(v0 + v5, v14);
  (*(v8 + 8))(v0 + v9, v7);
  if (*(v0 + v10 + 24))
  {
    sub_10000C60C((v0 + v10));
  }

  return _swift_deallocObject(v0, v10 + 40);
}

uint64_t sub_10003A530()
{
  v1 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for SFAirDropSend.Request();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10003A698()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003A6D8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003A720()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10003A790()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10003A7E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003A818()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003A858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003A8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003A934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NWEndpoint();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003A9E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NWEndpoint();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003AA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003AB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003AC00()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003AC40()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003AC80()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10003ACB8()
{
  v1 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_10003ADE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003AE20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003AE58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003AE98()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003AED8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003AF18()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003AF58()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003AF9C()
{
  v1 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10003B088()
{
  v1 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003B1C4()
{
  v1 = sub_10028088C(&qword_100979A20, &qword_1007FCC00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003B258()
{
  v1 = sub_10028088C(&qword_100979A20, &qword_1007FCC00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003B354()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003B394()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003B4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003B59C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003B690()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003B6D0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003B708()
{
  v1 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10003B7EC()
{
  v1 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003B880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10003B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10003B974()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003B9AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003B9E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003BA1C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003BA54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10003BA94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10003BADC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10003BB8C()
{
  v1 = *(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SDAirDropServerConnection(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 16);

  v8 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v11 - 8) + 8))(v0 + v2, v11);
    }

    else if (!EnumCaseMultiPayload)
    {
      v10 = *(v0 + v2);
      swift_unknownObjectRelease();
    }
  }

  v12 = (v0 + v5);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 == 2)
  {
    v15 = *v12;

    v16 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 8))(&v12[v16], v17);
  }

  else if (v13 <= 1)
  {
    v14 = *v12;
  }

  return _swift_deallocObject(v0, v5 + v6);
}

uint64_t sub_10003BDD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003BE10()
{
  v1 = *(type metadata accessor for SDAirDropServerConnection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = *v7;

    v11 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v9 = *v7;
  }

  v13 = *(v0 + v3);

  v14 = swift_getEnumCaseMultiPayload();
  if (v14 == 2 || v14 == 1)
  {
    v16 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v16 - 8) + 8))(v0 + v5, v16);
  }

  else if (!v14)
  {
    v15 = *(v0 + v5);
    swift_unknownObjectRelease();
  }

  return _swift_deallocObject(v0, v5 + v6);
}

uint64_t sub_10003C02C()
{
  v1 = *(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SDAirDropServerConnection(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v24 = *(v4 + 64);
  v6 = type metadata accessor for NWConnection.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v23 = *(v7 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = type metadata accessor for SDAirDropServerConnectionIdentity(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v2, 1, v11))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v14 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v14 - 8) + 8))(v0 + v2, v14);
    }

    else if (!EnumCaseMultiPayload)
    {
      v13 = *(v0 + v2);
      swift_unknownObjectRelease();
    }
  }

  v15 = (v0 + v5);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 == 2)
  {
    v18 = *v15;

    v19 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 8))(&v15[v19], v20);
  }

  else if (v16 <= 1)
  {
    v17 = *v15;
  }

  v21 = (v5 + v24 + v8) & ~v8;
  (*(v7 + 8))(v0 + v21, v6);

  return _swift_deallocObject(v0, v21 + v23);
}

uint64_t sub_10003C31C()
{
  v1 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = *(v0 + v2);
    swift_unknownObjectRelease();
  }

  v9 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8);
}

uint64_t sub_10003C448()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_10003C4B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003C4F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003C530()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003C56C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003C5A4()
{
  v1 = type metadata accessor for NWListener.State();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10003C684()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10003C6D4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003C720()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003C758()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10003C7B0()
{
  sub_100026AC0(*(v0 + 24), *(v0 + 32));
  sub_10000C60C((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10003C7F8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003C854()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003C894()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003C8D4()
{
  v1 = sub_10028088C(&qword_10097AD00, &qword_1007FDF30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v9 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_10003CA3C()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10003CB84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003CBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003CC84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003CD90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003CDC8()
{
  v1 = type metadata accessor for SFAirDropSend.Transfer();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10028088C(&qword_10097B2C0, &qword_1007FE678);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_10003CF4C()
{
  v1 = _s10AskRequestVMa();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v7 = v1[5];
  v8 = type metadata accessor for SFAirDrop.TransferType();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v10 = (v4 + v1[6]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100026AC0(*v10, v11);
  }

  v12 = *(v4 + v1[7] + 8);

  v13 = *(v4 + v1[8] + 8);

  v14 = *(v4 + v1[9] + 8);

  v15 = *(v4 + v1[10] + 8);

  v16 = *(v4 + v1[11]);

  v17 = *(v4 + v1[12]);

  v18 = *(v4 + v1[13] + 8);

  v19 = (v4 + v1[14]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_100026AC0(*v19, v20);
  }

  v21 = (v4 + v1[15]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_100026AC0(*v21, v22);
  }

  v23 = (v4 + v1[17]);
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_100026AC0(*v23, v24);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10003D1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SFAirDropSend.Failure();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003D2E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SFAirDropSend.Failure();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10003D3E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003D420()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003D458()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10003D4AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003D4E4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[6];
  swift_unknownObjectRelease();
  v5 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10003D598()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003D5D0()
{
  v1 = sub_10028088C(&qword_10097B608, &unk_1007FEA48);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003D664()
{
  v1 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003D738()
{
  v1 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_10028088C(&qword_10097B620, &qword_1007FEA90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100026AC0(*v8, *(v8 + 8));
      v25 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
      v39 = v7;
      v26 = v3;
      v27 = v25[5];
      v28 = type metadata accessor for UUID();
      v29 = v8 + v27;
      v3 = v26;
      v7 = v39;
      (*(*(v28 - 8) + 8))(v29, v28);
      v30 = *(v8 + v25[6]);
      swift_unknownObjectRelease();
      v31 = *(v8 + v25[7] + 8);
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(v8 + 8);

      v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
      v38 = v7;
      v12 = v3;
      v13 = v11[5];
      v14 = type metadata accessor for NWEndpoint();
      v15 = v8 + v13;
      v3 = v12;
      v7 = v38;
      (*(*(v14 - 8) + 8))(v15, v14);
      v16 = *(v8 + v11[7] + 8);

      v17 = *(v8 + v11[8] + 8);

      v18 = *(v8 + v11[9] + 8);

      v19 = *(v8 + v11[10] + 8);

      v20 = *(v8 + v11[11] + 8);

      v21 = *(v8 + v11[12] + 8);

      v22 = (v8 + v11[14]);
      v23 = v22[1];
      if (v23 >> 60 != 15)
      {
        sub_100026AC0(*v22, v23);
      }
    }
  }

  else
  {
    v24 = type metadata accessor for NWEndpoint();
    (*(*(v24 - 8) + 8))(v0 + v2, v24);
  }

  v32 = (v2 + v3 + v6) & ~v6;
  v33 = (v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v32, v4);
  v35 = *(v0 + v33);

  v36 = *(v0 + v34);

  return _swift_deallocObject(v0, v34 + 8);
}

uint64_t sub_10003DA84()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003DAC4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003DB04()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003DB3C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003DB78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003DBB8()
{
  v1 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003DC4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003DC84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10003DCC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10003DD0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003DD44()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10003DDE4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003DE24()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003DF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003DFC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003E068()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003E0A8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003E0E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10003E120()
{
  v1 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_10003E24C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003E28C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003E2D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003E310()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003E348()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003E384()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003E3BC()
{
  v1 = type metadata accessor for NWListener.State();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10003E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003E560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NWEndpoint();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003E61C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003E654()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003E694()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003E6D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10003E71C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10003E7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003E870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003E94C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003E98C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003E9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003EA8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003EB8C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for SDAuthenticationSessionMetrics();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_10003ED04(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SDAuthenticationSessionMetrics();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10003EE9C()
{
  v1 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003EF30()
{
  v1 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003F000()
{
  v1 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10003F0D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003F118()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003F158()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10003F190()
{
  v1 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_10003F2BC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003F2FC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003F33C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F374()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003F3B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F3EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003F42C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F464()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F49C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003F4E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F51C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10003F55C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F598()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F5D0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003F6E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10003F7A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F7DC()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_100026AC0(v0[4], v0[5]);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10003F828()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10003F860()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10003F8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003F960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003FA1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10003FB4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10003FCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003FD74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SDAuthenticationSessionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003FE30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_transferObserverClientsBundleIDs;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_10003FE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFClientIdentity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SFAirDropClient.Identifier();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003FF80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SFClientIdentity();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SFAirDropClient.Identifier();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10004007C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000400B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000400F4()
{
  v1 = sub_10028088C(&qword_10097E668, &qword_1008040C0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000401D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100040210()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100040248()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004030C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100040344()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100040408()
{
  v1 = *(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100040528()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100040570()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000405C4()
{
  v1 = sub_10028088C(&qword_10097E9D8, qword_1008042D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

id sub_100040694@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_1000406C8()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100040700()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100040750()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100040788()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000407C0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000407F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100040830()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100040870()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000408B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100040910()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100040950()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100040990()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000409C8()
{
  v1 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_100040AF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100040B48()
{

  return _swift_deallocObject(v0, 37);
}

uint64_t sub_100040B88()
{
  v1 = (type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = v0 + v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v7 + v2, v8);
  v9 = *(v0 + v3);

  v10 = *(v0 + v4);

  sub_100026AC0(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_100040CB8()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100040CF0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100040D30()
{
  v1 = (type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  v5 = v0 + v1[7];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5 + v2, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100040E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100040F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100040FD0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100041094()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004110C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100041144()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10000C60C(v0 + 5);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_10004118C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000C60C(v0 + 4);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000411EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100041224()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000412E8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);

  v9(v0 + v7, v1);

  return _swift_deallocObject(v0, v7 + v5);
}

uint64_t sub_1000413F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000414C8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_100041574()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000415BC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000415F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004162C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100041664()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000416A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000416E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100041724()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100041774()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000417B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000417EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004182C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004186C()
{
  v1 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_100041998()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100041A20()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100041A60()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100041B00()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100041BA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100041BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100041C84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100041D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100041DE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100041EA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100041FD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100042104(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100042234(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10004239C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for SDAuthenticationSessionMetrics();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_100042514(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SDAuthenticationSessionMetrics();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000426A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000426DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100042724()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004275C()
{
  v1 = *(type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = type metadata accessor for NWEndpoint();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10004283C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100042890()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000428C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100042908()
{
  v1 = v0[4];

  v2 = v0[6];

  sub_100026AC0(v0[7], v0[8]);
  sub_100026AC0(v0[9], v0[10]);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_100042958()
{
  v1 = v0[6];

  sub_100026AC0(v0[7], v0[8]);
  sub_100026AC0(v0[9], v0[10]);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000429AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000429E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100042A1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100042A60()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100042AA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100042AE0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100042B38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100042B70()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100042BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 80) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100042C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 80) + 8) = a2;
  }

  return result;
}

uint64_t sub_100042D50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  sub_100026AC0(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100042DA4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100042DDC()
{
  sub_100026AC0(*(v0 + 24), *(v0 + 32));
  sub_10000C60C((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100042E24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_100026AC0(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100042E74()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100042EAC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100042EEC()
{
  v1 = (type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  v5 = v0 + v1[7];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5 + v2, v6);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100042FDC()
{

  return _swift_deallocObject(v0, 28);
}

uint64_t sub_100043040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100043168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000432D0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100043320()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100043358()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100043398()
{
  sub_10000C60C((v0 + 16));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000433D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100043418()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100043458()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100043498()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000434D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100043510()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100043550()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100043590()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000435D0()
{
  if (*v0)
  {
    result = 7955787;
  }

  else
  {
    result = 1801678668;
  }

  *v0;
  return result;
}

uint64_t sub_1000435FC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100043660()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000436A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000436D8()
{
  v1 = *(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_100043804()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100043844()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004387C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000438B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000438FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000439D0()
{
  v1 = type metadata accessor for NWListener.State();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100043B24()
{
  v1 = sub_10028088C(&qword_100982528, &unk_100808DB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_100043CB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100043CE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100043D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFAirDropReceive.AskResponse();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SFAirDropReceive.Transfer();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100043E18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SFAirDropReceive.AskResponse();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SFAirDropReceive.Transfer();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100043F1C()
{
  v16 = type metadata accessor for SFAirDropSend.Transfer();
  v1 = *(v16 - 8);
  v14 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v12 = (*(v1 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = type metadata accessor for SFAirDropSend.Request();
  v2 = *(v15 - 8);
  v3 = (v12 + *(v2 + 80) + 8) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v1 + 8))(v0 + v14, v16);
  v9 = *(v0 + v12);

  (*(v2 + 8))(v0 + v3, v15);
  v10 = *(v0 + v4 + 8);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v13);
}

uint64_t sub_100044134()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100044170()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (_s6RunnerC19PreAcceptRunResultsVMa(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  v9 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v9 - 8) + 8))(v0 + v6, v9);
  v10 = v5[7];
  v11 = type metadata accessor for SFAirDropReceive.Transfer();
  (*(*(v11 - 8) + 8))(v0 + v6 + v10, v11);

  return _swift_deallocObject(v0, v7 + 8);
}

uint64_t sub_10004433C()
{
  v1 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v2 = *(v1 - 8);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = v1;
  v3 = *(v2 + 64);
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v5 = *(v4 - 8);
  v6 = (v14 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for SFAirDropReceive.AskRequest();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v13 = *(v9 + 64);
  v11 = *(v0 + 16);

  (*(v2 + 8))(v0 + v14, v15);
  (*(v5 + 8))(v0 + v6, v4);
  (*(v9 + 8))(v0 + v10, v8);

  return _swift_deallocObject(v0, v10 + v13);
}

uint64_t sub_100044524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  v6 = type metadata accessor for SFAirDrop.PermissionRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 52));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1000445DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = *(a4 + 16);
  v11 = *(a4 + 32);
  result = type metadata accessor for SFAirDrop.PermissionRequest();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52)) = (a2 - 1);
  return result;
}

uint64_t sub_100044694()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000446D4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100044714()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004474C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004478C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000447CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CodableError();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000448BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CodableError();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100044AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100044B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100044C6C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100044CBC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100044D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100044E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100044F34()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100045078()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000450B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000450E8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10004513C()
{
  if (*(v0 + 24))
  {

    v1 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100045184()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004522C()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_100045374()
{
  v1 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for SFAirDropReceive.Transfer();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1000454F0()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100045578()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_10000C60C((v0 + 16));
  v9 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1000456DC()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_10000C60C((v0 + 16));
  v5 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000457BC()
{
  v1 = sub_10028088C(&qword_100983FA0, &qword_10080B5B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10004592C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for SFAirDropReceive.Transfer();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = type metadata accessor for SFProgressTask();
  v8 = *(v7 - 8);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  (*(v4 + 8))(v0 + v5, v3);
  (*(v8 + 8))(v0 + v9, v7);

  return _swift_deallocObject(v0, v9 + v10);
}

uint64_t sub_100045AA8()
{
  v1 = *(sub_10028088C(&qword_100976928, &qword_1007F98A8) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2, 1, v9))
  {
    (*(v10 + 8))(v0 + v2, v9);
  }

  v11 = (v2 + v3 + v6) & ~v6;
  (*(v5 + 8))(v0 + v11, v4);

  return _swift_deallocObject(v0, v11 + v7);
}

uint64_t sub_100045CA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100045CE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100045D20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100045D5C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100045F84()
{
  v1 = (type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v0 + v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6 + v2, v7);

  sub_10000C60C((v0 + v4));

  return _swift_deallocObject(v0, v4 + 40);
}

uint64_t sub_100046098()
{
  sub_100026AC0(*(v0 + 24), *(v0 + 32));
  sub_10000C60C((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100046108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100046230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000463A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000463D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100046428()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100046460()
{
  v1 = _s7RequestVMa();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  sub_10000C60C((v0 + v2 + v1[5]));
  v5 = (v0 + v2 + v1[6]);
  if ((v5[1] - 1) >= 2)
  {

    v6 = v5[3];

    v7 = v5[5];
    if (v7 >> 60 != 15)
    {
      sub_100026AC0(v5[4], v7);
    }
  }

  v8 = *(v0 + v2 + v1[7]);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000465A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000465FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  sub_10000C60C(v0 + 6);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_100046658()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100046690()
{
  v1 = type metadata accessor for AuthenticationDevice();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = *(v0 + v2 + 8);

  v8 = *(v0 + v2 + 24);

  v9 = *(v0 + v2 + 40);

  v10 = v1[9];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = *(v6 + v1[10] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100046820()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004685C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100046898()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000468EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004692C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004697C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

id sub_1000469B8(void *a1)
{

  return sub_1005D1E98(a1);
}

uint64_t sub_100046A3C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_100046A54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100046A8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100046AC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100046B0C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100046B44()
{
  v1 = *(v0 + 32);

  sub_100026AC0(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_100046B8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_100026AC0(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 65);
}

uint64_t sub_100046BDC()
{
  sub_100026AC0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100046C14()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_100026AC0(v0[4], v0[5]);

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_100046C5C()
{
  v1 = v0[2];

  sub_100026AC0(v0[3], v0[4]);

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_100046C9C()
{
  v1 = v0[2];

  sub_100026AC0(v0[3], v0[4]);
  v2 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100046CE4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100046D1C()
{
  sub_100026AC0(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100046E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100046F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100047000()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100047038()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100047080()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5 + 8);
  if (v8 >> 60 != 15)
  {
    sub_100026AC0(*(v0 + v5), v8);
  }

  v9 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16);
}

uint64_t sub_1000471A0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100047278()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000472C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004730C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000473D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000474A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000474E0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004753C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100047574()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000475B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000475FC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 9) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_100047758()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004781C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_100047854()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10004792C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100047964()
{
  sub_100026AC0(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000479A4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000479F4()
{
  v1 = *(v0 + 32);

  sub_100026AC0(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100047A44()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100047A7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100047AD4()
{
  v1 = *(v0 + 24);

  sub_100026AC0(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 48);

  sub_100026AC0(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_100047B2C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100047B6C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100047BCC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100047C0C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100047D04()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100047D3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100047D74()
{
  v1 = type metadata accessor for SFAirDropSend.Transfer();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100047E50()
{
  sub_100026AC0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100047EBC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100047F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100048034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000480F0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for SDAuthenticationSessionMetrics();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_100048268(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SDAuthenticationSessionMetrics();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000483F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100048438()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100048478()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000484B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100048578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100048650()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100048698()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000486E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000487A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SDAuthenticationCommonOperationInput();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004885C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10004898C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100048B14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100048BC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SDAuthenticationSessionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100048C8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_100048D38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100048D70()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100048DA8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  (*(v2 + 8))(&v0[v3], v1);
  v8 = *&v0[v4 + 8];

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100048E94()
{
  v1 = sub_10028088C(&qword_100988628, &unk_10080EFF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100048F7C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100048FC4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004900C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100049054()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000490AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100049174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100049224()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004925C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100049294()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000492EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100049324()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10004936C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000493AC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000494B4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000494F0()
{
  v1 = *(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100049610()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100049648()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100049690()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000496D0()
{
  v1 = type metadata accessor for B389PresentationConfig(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = *(v0 + v2 + 16);

  v6 = v1[6];
  type metadata accessor for B389PresentationConfig.Mode(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v4 + v6, v8);
  }

  v9 = *(v4 + v1[13] + 8);

  v10 = (v4 + v1[14]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100026AC0(*v10, v11);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10004982C()
{
  v1 = type metadata accessor for B389PresentationConfig(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = *(v0 + v2 + 16);

  v7 = v1[6];
  type metadata accessor for B389PresentationConfig.Mode(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  v10 = *(v5 + v1[13] + 8);

  v11 = (v5 + v1[14]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100026AC0(*v11, v12);
  }

  v13 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v13 + 8);
}

uint64_t sub_1000499C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100049A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100049AE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_100049B98()
{
  if (*v0)
  {
    result = 0x6D79615072656570;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t sub_100049BDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100049C14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100049C4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100049C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SFAirDropReceive.Transfer();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100049D7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SFAirDropReceive.Transfer();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100049E78()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100049EB8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100049EFC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100049FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004A0A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10004A16C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for SDAuthenticationSessionMetrics();
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v16 = sub_10028088C(&qword_1009897C0, &qword_100810298);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_10004A2FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 24) = a2;
    return result;
  }

  v13 = type metadata accessor for SDAuthenticationSessionMetrics();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_10028088C(&qword_1009897C0, &qword_100810298);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}