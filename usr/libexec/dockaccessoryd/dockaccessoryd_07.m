uint64_t sub_10011C140(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  if ((a1 != a3 || a2 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v46 = a5;
    v47 = a2;
    v45 = v15;
    v48 = v11;
    v49 = v10;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v18 = qword_1002B1CF0;
    v19 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
    v20 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

    os_unfair_lock_lock(v20 + 4);

    v21 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking;
    v22 = swift_beginAccess();
    v23 = *(v18 + v21);
    *&v53[0] = a3;
    *(&v53[0] + 1) = a4;
    __chkstk_darwin(v22);
    *(&v45 - 2) = v53;

    LOBYTE(v21) = sub_10019EE0C(sub_100137D14, (&v45 - 4), v23);

    v24 = *(v18 + v19);

    os_unfair_lock_unlock(v24 + 4);

    if (v21)
    {
      v26 = v48;
      v25 = v49;
      if (qword_1002A66C0 != -1)
      {
        swift_once();
      }

      v27 = static AppLayoutMonitor.shared;
      if (sub_1000F16AC())
      {
        v28 = String._bridgeToObjectiveC()();
        v29 = [v46 valueForEntitlement:v28];

        if (v29)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v51 = 0u;
          v52 = 0u;
        }

        v53[0] = v51;
        v53[1] = v52;
        if (*(&v52 + 1))
        {
          v35 = swift_dynamicCast();
          if (v35 & 1) != 0 && (v50)
          {
            return 1;
          }
        }

        else
        {
          v35 = sub_100095C84(v53, &qword_1002A9210, &unk_10023BE70);
        }

        v36 = *(v27 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_delegateQueue);
        __chkstk_darwin(v35);
        *(&v45 - 4) = v27;
        *(&v45 - 3) = a1;
        *(&v45 - 2) = v47;
        OS_dispatch_queue.sync<A>(execute:)();
        if (v53[0])
        {
          return 1;
        }

        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v38 = sub_100093DE8(v25, qword_1002A9110);
        v39 = v45;
        (*(v26 + 16))(v45, v38, v25);
        v40 = v47;

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *&v53[0] = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_1000952D4(a1, v40, v53);
          _os_log_impl(&_mh_execute_header, v41, v42, "contender %s is not visible in foreground, stealing disallowed", v43, 0xCu);
          sub_100095808(v44);
        }

        (*(v26 + 8))(v39, v25);
      }

      else
      {
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v30 = sub_100093DE8(v25, qword_1002A9110);
        (*(v26 + 16))(v17, v30, v25);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v53[0] = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_1000952D4(a3, a4, v53);
          _os_log_impl(&_mh_execute_header, v31, v32, "prior owner: %s is not backgrounded, stealing disallowed", v33, 0xCu);
          sub_100095808(v34);
        }

        (*(v26 + 8))(v17, v25);
      }
    }
  }

  return 0;
}

uint64_t sub_10011C77C(void *a1)
{
  v2 = [a1 processIdentifier];
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v3 = qword_1002B1CF0;
  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v5 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__processesAuthorizedForCamera);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (v9 == v2)
    {
      v10 = *(v3 + v4);

      os_unfair_lock_unlock(v10 + 4);

      return 1;
    }
  }

  v11 = *(v3 + v4);

  os_unfair_lock_unlock(v11 + 4);

  [a1 auditToken];
  v17 = v20;
  v18 = v19;
  v12 = String._bridgeToObjectiveC()();
  v19 = v18;
  v20 = v17;
  v13 = TCCAccessPreflightWithAuditToken();

  if (v13)
  {
    return 0;
  }

  v15 = sub_10019B91C(a1);
  sub_10018FFB8(v2, v15, v16, 1);

  return 1;
}

uint64_t sub_10011C91C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Errors();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DKXPCClientApplication(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v16);
  sub_1000B5150(v16 + *(v13 + 32), v6, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100095C84(v6, &unk_1002A6F30, &unk_10023C4D0);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v17 = qword_1002B1CF0;
    v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v19 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v19 + 4);

    v20 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
    swift_beginAccess();
    v21 = *(v17 + v20);
    v22 = *(v17 + v18);

    os_unfair_lock_unlock(v22 + 4);

    type metadata accessor for DockCoreAccessory();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, isa, 0);

    return sub_1000BAA28(v16);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v8 + 16))(v25, v11, v7);
    v26 = _convertErrorToNSError(_:)();
    type metadata accessor for DockCoreAccessory();
    v27 = Array._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, v27, v26);

    (*(v8 + 8))(v11, v7);
    sub_1000BAA28(v16);
  }
}

uint64_t sub_10011CCC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for Errors();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DKXPCClientApplication(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v18);
  sub_1000B5150(v18 + *(v15 + 32), v8, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100095C84(v8, &unk_1002A6F30, &unk_10023C4D0);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v19 = qword_1002B1CF0;
    v20 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v21 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v21 + 4);

    v22 = *(v19 + *a3);
    v23 = *(v19 + v20);
    v24 = v22;

    os_unfair_lock_unlock(v23 + 4);

    (*(a2 + 16))(a2, v24, 0);

    return sub_1000BAA28(v18);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v10 + 16))(v26, v13, v9);
    v27 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v27);

    (*(v10 + 8))(v13, v9);
    sub_1000BAA28(v18);
  }
}

uint64_t sub_10011D00C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Errors();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DKXPCClientApplication(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v16);
  sub_1000B5150(v16 + *(v13 + 32), v6, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100095C84(v6, &unk_1002A6F30, &unk_10023C4D0);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v17 = qword_1002B1CF0;
    v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v19 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v19 + 4);

    v20 = *(v17 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
    v21 = *(v17 + v18);

    os_unfair_lock_unlock(v21 + 4);

    (*(a2 + 16))(a2, v20, 0);
    return sub_1000BAA28(v16);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v8 + 16))(v23, v11, v7);
    v24 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 2, v24);

    (*(v8 + 8))(v11, v7);
    sub_1000BAA28(v16);
  }
}

void sub_10011D34C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void *, void, void *))
{
  v172 = a6;
  v181 = a5;
  v183 = a3;
  v184 = a4;
  v180 = a2;
  v185 = a1;
  v178 = type metadata accessor for UUID();
  v171 = *(v178 - 8);
  v8 = *(v171 + 64);
  v9 = __chkstk_darwin(v178);
  v177 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v176 = &v165 - v11;
  *&v173 = type metadata accessor for Logger();
  v175 = *(v173 - 8);
  v12 = *(v175 + 64);
  v13 = __chkstk_darwin(v173);
  v170 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v174 = &v165 - v15;
  v16 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = (&v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v179 = &v165 - v22;
  __chkstk_darwin(v21);
  v24 = &v165 - v23;
  v25 = type metadata accessor for Errors();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v182 = (&v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v31 = &v165 - v30;
  v32 = type metadata accessor for DKXPCClientApplication(0);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v36 = (&v165 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v36);
  sub_1000B5150(v36 + *(v33 + 32), v24, &unk_1002A6F30, &unk_10023C4D0);
  v37 = *(v26 + 48);
  if ((v37)(v24, 1, v25) != 1)
  {
    (*(v26 + 32))(v31, v24, v25);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v26 + 16))(v62, v31, v25);
    v63 = v26;
    v64 = _convertErrorToNSError(_:)();
    a7[2](a7, 0, v64);

    (*(v63 + 8))(v31, v25);
LABEL_22:
    v68 = v36;
LABEL_24:
    sub_1000BAA28(v68);

    return;
  }

  v169 = a7;
  sub_100095C84(v24, &unk_1002A6F30, &unk_10023C4D0);
  if (!*v36)
  {
    __break(1u);
    goto LABEL_94;
  }

  v38 = *v36;
  v39 = [v38 processIdentifier];
  if (!v185 || !v183 || !v184 || !v181)
  {
    v65 = v182;
    *v182 = 0xD000000000000016;
    v65[1] = 0x8000000100231BD0;
    (*(v26 + 104))(v65, enum case for Errors.NilParams(_:), v25);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v26 + 16))(v66, v65, v25);
    v67 = _convertErrorToNSError(_:)();
    v169[2](v169, 0, v67);

    (*(v26 + 8))(v65, v25);
    goto LABEL_22;
  }

  v168 = v38;
  v40 = v39;
  v167 = v25;
  v166 = v36;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v41 = qword_1002B1CF0;
  v42 = sub_1001884E4();
  if (!v42 || (type metadata accessor for ActuationController(), v43 = v42, v44 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v43, (v44 & 1) == 0) || (v45 = v43, v46 = dispatch thunk of DockCoreAccessory.hasSystemActuators(name:actuators:)(), v45, (v46 & 1) == 0))
  {
    v69 = v182;
    *v182 = 0xD000000000000019;
    v69[1] = 0x8000000100231E50;
    v70 = *(v26 + 104);
    v71 = v26;
    v72 = v167;
    v70(v69, enum case for Errors.NotFound(_:), v167);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v71 + 16))(v73, v69, v72);
    v74 = _convertErrorToNSError(_:)();
    v169[2](v169, 0, v74);

    (*(v71 + 8))(v69, v72);
    v68 = v166;
    goto LABEL_24;
  }

  v165 = v45;
  v47 = v179;
  v48 = sub_100111DAC(v179, v168);

  if ((v48 & 1) == 0 && (v37)(v47, 1, v167) == 1)
  {
    if (sub_10019C1F4(v40, 0x7469736F50746573, 0xEC000000736E6F69))
    {
      v49 = v26;
      v50 = v166;
      v51 = v167;
      v52 = v175;
      v53 = v168;
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v54 = v173;
      v55 = sub_100093DE8(v173, qword_1002A9110);
      (*(v52 + 16))(v174, v55, v54);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Rate limit exceeded for setActuatorPositions", v58, 2u);
        v47 = v179;
      }

      (*(v52 + 8))(v174, v54);
      v59 = v182;
      *v182 = 0xD00000000000002BLL;
      v59[1] = 0x8000000100231FF0;
      (*(v49 + 104))(v59, enum case for Errors.RateLimitXPC(_:), v51);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v49 + 16))(v60, v59, v51);
      v61 = _convertErrorToNSError(_:)();
      v169[2](v169, 0, v61);

      (*(v49 + 8))(v59, v51);
      sub_1000BAA28(v50);

      goto LABEL_29;
    }

    sub_10019A4F0(1);
    sub_100198E44(v42);
    v37 = v175;
    a7 = v168;
    if (*(v172 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_debugAllowed))
    {
      DockCoreInfo.type.getter();
      v79 = DockCoreAccessoryType.rawValue.getter();
      if (v79 == DockCoreAccessoryType.rawValue.getter())
      {
        v80 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v81 = *(v41 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v81 + 4);

        v82 = *(v41 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v83 = *(v41 + v80);
        v84 = v82;

        os_unfair_lock_unlock(v83 + 4);

        if (v82)
        {
          v85 = dispatch thunk of DockCoreAccessory.info.getter();

          type metadata accessor for DockCoreInfo();
          v86 = v185;
          v87 = static NSObject.== infix(_:_:)();

          if (v87)
          {
            v20 = v166;
            if (qword_1002A66D8 == -1)
            {
LABEL_36:
              v88 = v173;
              v89 = sub_100093DE8(v173, qword_1002A9110);
              v90 = v170;
              (*(v37 + 16))(v170, v89, v88);
              v91 = Logger.logObject.getter();
              v92 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v91, v92))
              {
                v93 = swift_slowAlloc();
                *v93 = 0;
                _os_log_impl(&_mh_execute_header, v91, v92, "setActuatorPositions: noop for mock device", v93, 2u);
              }

              (*(v37 + 8))(v90, v173);
              v169[2](v169, 1, 0);

              v94 = v20;
LABEL_39:
              sub_1000BAA28(v94);
LABEL_63:
              v78 = v179;
              goto LABEL_30;
            }

LABEL_94:
            swift_once();
            goto LABEL_36;
          }
        }
      }
    }

    v175 = v26;
    v185 = v185;
    DockCoreInfo.type.getter();
    v95 = DockCoreAccessoryType.rawValue.getter();
    v96 = DockCoreAccessoryType.rawValue.getter();
    v97 = v166;
    if (v95 == v96)
    {
      v98 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v99 = *(v41 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v99 + 4);

      v100 = *(v41 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v101 = *(v41 + v98);
      v102 = v100;

      os_unfair_lock_unlock(v101 + 4);

      if (v100)
      {
        v174 = v102;
        v103 = *(v41 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v172 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v104 = *&v103[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        *&v173 = v103;
        v105 = v103;
        v106 = v104;
        OS_dispatch_semaphore.wait()();

        v107 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v108 = *&v105[v107];
        v109 = *(v108 + 16);

        if (!v109)
        {
LABEL_47:

          v120 = *(v173 + v172);
          OS_dispatch_semaphore.signal()();

          v189 = 0;
          v187 = 0u;
          v188 = 0u;
          goto LABEL_49;
        }

        v110 = v109;
        v111 = 0;
        v112 = v108 + 32;
        v113 = (v171 + 8);
        v114 = v176;
        while (1)
        {
          if (v111 >= *(v108 + 16))
          {
            __break(1u);
            goto LABEL_91;
          }

          sub_1000A097C(v112, v186);
          v115 = *(*sub_1000A09E0(v186, v186[3]) + 24);
          DockCoreInfo.identifier.getter();

          v116 = v177;
          DockCoreInfo.identifier.getter();
          LOBYTE(v115) = static UUID.== infix(_:_:)();
          v117 = *v113;
          v118 = v116;
          v119 = v178;
          (*v113)(v118, v178);
          v117(v114, v119);
          if (v115)
          {
            break;
          }

          ++v111;
          sub_100095808(v186);
          v112 += 40;
          if (v110 == v111)
          {
            goto LABEL_47;
          }
        }

        v121 = *(v173 + v172);
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v186, &v187);
        sub_100095808(v186);
LABEL_49:

        v97 = v166;
        v122 = v174;
        a7 = v168;
        if (*(&v188 + 1))
        {
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory();
          if (swift_dynamicCast())
          {
            v123 = v186[0];
            sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
            v124 = *(v123 + 24);
            v125 = dispatch thunk of DockCoreAccessory.info.getter();
            v126 = static NSObject.== infix(_:_:)();

            if ((v126 & 1) != 0 && (v127 = *(v123 + 16)) != 0)
            {
              v128 = *&v127[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
              if (v128)
              {
                v178 = v123;
                v129 = v127;
                if ([v128 state] == 2)
                {
                  v130 = objc_opt_self();
                  sub_100095274(&unk_1002A73A0, &qword_10023C670);
                  v131 = swift_allocObject();
                  v173 = xmmword_10023C170;
                  *(v131 + 16) = xmmword_10023C170;
                  *(v131 + 56) = &type metadata for UInt32;
                  *(v131 + 64) = &protocol witness table for UInt32;
                  *(v131 + 32) = 512;
                  String.init(format:_:)();
                  v132 = String._bridgeToObjectiveC()();

                  v133 = [v130 UUIDWithString:v132];

                  v177 = v129;
                  v134 = sub_10013EF7C();

                  v176 = v134;
                  if (v134)
                  {
                    v135 = swift_allocObject();
                    *(v135 + 16) = v173;
                    *(v135 + 56) = &type metadata for UInt32;
                    *(v135 + 64) = &protocol witness table for UInt32;
                    *(v135 + 32) = 261;
                    String.init(format:_:)();
                    v136 = String._bridgeToObjectiveC()();

                    v137 = [v130 UUIDWithString:v136];

                    v138 = sub_10013F1B8(v137, v176);
                    *&v173 = v138;
                    if (v138)
                    {
                      v139 = *(v184 + 16);
                      if (v139)
                      {
                        v140 = 0;
                        v182 = (v181 + 32);
                        v141 = (v184 + 40);
                        v142 = _swiftEmptyArrayStorage;
                        v143 = _swiftEmptyArrayStorage;
                        v144 = v174;
                        while (1)
                        {
                          v151 = *(v181 + 16);
                          if (v140 == v151)
                          {
                            goto LABEL_92;
                          }

                          if (v140 >= v151)
                          {
                            __break(1u);
                            return;
                          }

                          v153 = *(v141 - 1);
                          v152 = *v141;
                          v150 = *&v182[v140];

                          v154 = dispatch thunk of DockCoreAccessory.getActuatorIndex(name:system:)();
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v142 = sub_100102FEC(0, *(v142 + 2) + 1, 1, v142);
                          }

                          v156 = *(v142 + 2);
                          v155 = *(v142 + 3);
                          if (v156 >= v155 >> 1)
                          {
                            v142 = sub_100102FEC((v155 > 1), v156 + 1, 1, v142);
                          }

                          *(v142 + 2) = v156 + 1;
                          *&v142[8 * v156 + 32] = v154;
                          type metadata accessor for Actuator();
                          if (v153 == static Actuator.Pitch.getter() && v152 == v157)
                          {

                            v144 = v174;
                          }

                          else
                          {
                            v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            v144 = v174;
                            if ((v158 & 1) == 0)
                            {
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v143 = sub_100102EE8(0, *(v143 + 2) + 1, 1, v143);
                              }

                              v160 = *(v143 + 2);
                              v162 = *(v143 + 3);
                              v161 = v160 + 1;
                              if (v160 >= v162 >> 1)
                              {
                                v143 = sub_100102EE8((v162 > 1), v160 + 1, 1, v143);
                              }

                              v144 = v174;
                              goto LABEL_65;
                            }
                          }

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v143 = sub_100102EE8(0, *(v143 + 2) + 1, 1, v143);
                          }

                          v160 = *(v143 + 2);
                          v159 = *(v143 + 3);
                          v161 = v160 + 1;
                          if (v160 >= v159 >> 1)
                          {
                            v143 = sub_100102EE8((v159 > 1), v160 + 1, 1, v143);
                          }

                          v150 = -v150;
LABEL_65:
                          ++v140;
                          *(v143 + 2) = v161;
                          *&v143[8 * v160 + 32] = v150;
                          v141 += 2;
                          if (v139 == v140)
                          {
                            goto LABEL_92;
                          }
                        }
                      }

LABEL_91:
                      v143 = _swiftEmptyArrayStorage;
                      v142 = _swiftEmptyArrayStorage;
                      v144 = v174;
LABEL_92:
                      v164 = v173;
                      sub_1001A38B4(v142, v143, 0, v173);

                      v169[2](v169, 1, 0);

                      v94 = v166;
                      goto LABEL_39;
                    }

                    v163 = &v190;
                  }

                  else
                  {

                    v163 = &v191;
                  }

                  v97 = v166;
                  a7 = v168;
                }

                else
                {

                  v97 = v166;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {

          sub_100095C84(&v187, &unk_1002A6F40, &unk_10023BE90);
        }
      }
    }

    v145 = v182;
    *v182 = 0x6C706D6920746F6ELL;
    v145[1] = 0xEF6465746E656D65;
    v146 = v175;
    v147 = v167;
    (*(v175 + 104))(v145, enum case for Errors.OperationNotSupported(_:), v167);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v146 + 16))(v148, v145, v147);
    v149 = _convertErrorToNSError(_:)();
    v169[2](v169, 0, v149);

    (*(v146 + 8))(v145, v147);
    sub_1000BAA28(v97);

    goto LABEL_63;
  }

  sub_1000B5150(v47, v20, &unk_1002A6F30, &unk_10023C4D0);
  if ((v37)(v20, 1, v167) == 1)
  {
    sub_100095C84(v20, &unk_1002A6F30, &unk_10023C4D0);
    v75 = 0;
  }

  else
  {
    sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
    swift_dynamicCast();
    v75 = v187;
  }

  v76 = v166;
  v77 = v168;
  v169[2](v169, 0, v75);

  sub_1000BAA28(v76);
LABEL_29:
  v78 = v47;
LABEL_30:
  sub_100095C84(v78, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10011EB14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, id *a7)
{
  v115 = a5;
  v116 = a4;
  v117 = a3;
  v107 = a2;
  v118 = a1;
  v105 = type metadata accessor for Logger();
  v104 = *(v105 - 8);
  v8 = *(v104 + 64);
  __chkstk_darwin(v105);
  v106 = &v102[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v113 = *(v10 - 8);
  v114 = v10;
  v11 = *(v113 + 64);
  __chkstk_darwin(v10);
  v112 = &v102[-v12];
  v13 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v110 = &v102[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v111 = &v102[-v18];
  v19 = __chkstk_darwin(v17);
  v109 = &v102[-v20];
  v21 = __chkstk_darwin(v19);
  v119 = &v102[-v22];
  __chkstk_darwin(v21);
  v24 = &v102[-v23];
  v25 = type metadata accessor for Errors();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v108 = &v102[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v31 = &v102[-v30];
  v32 = type metadata accessor for DKAPIUsageType();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v102[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for DKXPCClientApplication(0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = &v102[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = a7;
  v125 = a7;
  sub_10010D498(v40);
  v41 = v40[2];
  if (v41)
  {
    v122 = v40[1];
    v123 = v41;
  }

  else
  {
    v122 = 0x6E776F6E6B6E75;
    v123 = 0xE700000000000000;
  }

  (*(v33 + 104))(v36, enum case for DKAPIUsageType.setVelocity(_:), v32);

  v121 = DKAPIUsageType.rawValue.getter();
  (*(v33 + 8))(v36, v32);
  sub_1000B5150(v40 + *(v37 + 24), v24, &unk_1002A6F30, &unk_10023C4D0);
  v42 = *(v26 + 48);
  p_cb = &OBJC_PROTOCOL___DKLogging.cb;
  v44 = &unk_1002B1000;
  if ((v42)(v24, 1, v25) == 1)
  {
    sub_100095C84(v24, &unk_1002A6F30, &unk_10023C4D0);
    if (!*v40)
    {
      __break(1u);
      goto LABEL_40;
    }

    v24 = *v40;
    v103 = [v24 processIdentifier];
    if (v118 && v117 && v116 && v115)
    {
      v45 = qword_1002A6780;
      v118 = v118;
      if (v45 != -1)
      {
        swift_once();
      }

      v46 = qword_1002B1CF0;
      v47 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
      swift_beginAccess();
      v49 = v113;
      v48 = v114;
      v50 = v46 + v47;
      v51 = v112;
      (*(v113 + 16))(v112, v50, v114);
      DKThreadSafe.wrappedValue.getter();
      (*(v49 + 8))(v51, v48);
      if (LOBYTE(v126[0]) == 1)
      {
        v52 = v109;
        (*(v26 + 56))(v109, 1, 1, v25);
        sub_10018C604(v122, v123, v121, v52);

        sub_100095C84(v52, &unk_1002A6F30, &unk_10023C4D0);
        (v120[2])(v120, 1, 0);

        v53 = v40;
        return sub_1000BAA28(v53);
      }

      v114 = v46;
      v63 = v111;
      sub_100111DAC(v111, v24);
      v113 = v64;
      v66 = v65;
      v67 = v110;
      sub_1000B5150(v63, v110, &unk_1002A6F30, &unk_10023C4D0);
      if ((v42)(v67, 1, v25) == 1)
      {
        v112 = v66;
        sub_100095C84(v67, &unk_1002A6F30, &unk_10023C4D0);
        v68 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v69 = v114;
        v70 = *(v114 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v70 + 4);

        v71 = *(v69 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v72 = *(v69 + v68);
        v31 = v71;

        os_unfair_lock_unlock(v72 + 4);

        v73 = v118;
        p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
        if (v71)
        {
          sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
          v74 = dispatch thunk of DockCoreAccessory.info.getter();
          v75 = static NSObject.== infix(_:_:)();

          if (v75)
          {
            v76 = sub_1001884E4();
            if (v76)
            {
              v42 = v76;
              type metadata accessor for ActuationController();
              if (dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)())
              {
                v120 = v40;
                v77 = dispatch thunk of DockCoreAccessory.info.getter();
                v40 = sub_100197C80();

                if (!v40 || (v78 = v40[3], v79 = v40[4], , LOBYTE(v78) = sub_10011C140(v113, v112, v78, v79, v24), , (v78 & 1) == 0))
                {
LABEL_38:
                  v101 = v123;

                  sub_10011995C(v73, v103, v113, v112, v107, v117, v116, v115, v122, v101, v121, sub_100137C28, v124);

                  swift_bridgeObjectRelease_n();
                  sub_100095C84(v111, &unk_1002A6F30, &unk_10023C4D0);
                  v53 = v120;
                  return sub_1000BAA28(v53);
                }

                if (qword_1002A66D8 == -1)
                {
LABEL_28:
                  v80 = v105;
                  v81 = sub_100093DE8(v105, qword_1002A9110);
                  v82 = v104;
                  (*(v104 + 16))(v106, v81, v80);
                  v83 = v112;

                  v84 = Logger.logObject.getter();
                  v85 = static os_log_type_t.default.getter();

                  LODWORD(v119) = v85;
                  v86 = v85;
                  v87 = v84;
                  if (os_log_type_enabled(v84, v86))
                  {
                    v88 = v82;
                    v89 = swift_slowAlloc();
                    v126[0] = swift_slowAlloc();
                    *v89 = 136315394;
                    *(v89 + 4) = sub_1000952D4(v113, v83, v126);
                    *(v89 + 12) = 2080;

                    v90 = v24;
                    v92 = v40[3];
                    v91 = v40[4];

                    v93 = sub_1000952D4(v92, v91, v126);

                    *(v89 + 14) = v93;
                    v24 = v90;
                    _os_log_impl(&_mh_execute_header, v87, v119, "Foreground app %s force-removing animator for %s", v89, 0x16u);
                    swift_arrayDestroy();

                    (*(v88 + 8))(v106, v105);
                  }

                  else
                  {

                    (*(v82 + 8))(v106, v80);
                  }

                  v100 = dispatch thunk of DockCoreAccessory.info.getter();
                  sub_100197D90();

                  v73 = v118;
                  goto LABEL_38;
                }

LABEL_40:
                swift_once();
                goto LABEL_28;
              }
            }

            v98 = v73;
            v55 = v40;

            sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
            v56 = swift_allocError();
            *v99 = 0xD000000000000017;
            v99[1] = 0x800000010022FA50;
            (*(v26 + 104))(v99, enum case for Errors.OperationNotSupported(_:), v25);
            swift_willThrow();

            goto LABEL_35;
          }
        }

        v96 = v73;
        v55 = v40;

        sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
        v56 = swift_allocError();
        *v97 = 0xD000000000000016;
        v97[1] = 0x8000000100231A70;
        (*(v26 + 104))(v97, enum case for Errors.OperationNotSupported(_:), v25);
        swift_willThrow();

LABEL_35:
        sub_100095C84(v111, &unk_1002A6F30, &unk_10023C4D0);
        v44 = &unk_1002B1000;
        goto LABEL_17;
      }

      v55 = v40;

      v94 = v108;
      (*(v26 + 32))(v108, v67, v25);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v56 = swift_allocError();
      (*(v26 + 16))(v95, v94, v25);
      swift_willThrow();

      (*(v26 + 8))(v94, v25);
      sub_100095C84(v63, &unk_1002A6F30, &unk_10023C4D0);
      v44 = &unk_1002B1000;
      p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
    }

    else
    {
      v55 = v40;
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v56 = swift_allocError();
      *v58 = 0xD000000000000016;
      v58[1] = 0x8000000100231BD0;
      (*(v26 + 104))(v58, enum case for Errors.NilParams(_:), v25);
      swift_willThrow();
    }
  }

  else
  {
    v55 = v40;
    (*(v26 + 32))(v31, v24, v25);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v56 = swift_allocError();
    (*(v26 + 16))(v57, v31, v25);
    swift_willThrow();
    (*(v26 + 8))(v31, v25);
  }

LABEL_17:
  v59 = _convertErrorToNSError(_:)();
  (v120[2])(v120, 0, v59);

  if (*(p_cb + 240) != -1)
  {
    swift_once();
  }

  v60 = v44[414];
  v126[0] = v56;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v61 = v119;
  v62 = swift_dynamicCast();
  (*(v26 + 56))(v61, v62 ^ 1u, 1, v25);
  sub_10018C604(v122, v123, v121, v61);

  sub_1000BAA28(v55);
  return sub_100095C84(v61, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10011FAA4(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v146 = a4;
  v152 = a3;
  v141 = a2;
  v151 = a1;
  v7 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v144 = &v131 - v9;
  v143 = type metadata accessor for Logger();
  v138 = *(v143 - 8);
  v10 = *(v138 + 64);
  __chkstk_darwin(v143);
  v142 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100095274(&qword_1002A9328, &qword_10023DEC8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v145 = &v131 - v14;
  v147 = type metadata accessor for TrajectoryCommand();
  v149 = *(v147 - 8);
  v15 = *(v149 + 64);
  v16 = __chkstk_darwin(v147);
  v140 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v17;
  __chkstk_darwin(v16);
  v148 = &v131 - v18;
  v155 = type metadata accessor for UUID();
  v150 = *(v155 - 8);
  v19 = *(v150 + 64);
  v20 = __chkstk_darwin(v155);
  v154 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v153 = (&v131 - v22);
  v23 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v156 = &v131 - v29;
  v30 = __chkstk_darwin(v28);
  v157 = (&v131 - v31);
  __chkstk_darwin(v30);
  v33 = &v131 - v32;
  v34 = type metadata accessor for Errors();
  v35 = *(v34 - 8);
  v163 = v34;
  v164 = v35;
  v36 = v35[8];
  v37 = __chkstk_darwin(v34);
  v39 = &v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v131 - v40;
  v42 = type metadata accessor for DKAPIUsageType();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v46 = &v131 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DKXPCClientApplication(0);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v50 = (&v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = swift_allocObject();
  *(v160 + 16) = a6;
  v158 = a6;
  _Block_copy(a6);
  sub_10010D498(v50);
  v51 = v50[2];
  if (v51)
  {
    v161 = v50[1];
    v162 = v51;
  }

  else
  {
    v161 = 0x6E776F6E6B6E75;
    v162 = 0xE700000000000000;
  }

  (*(v43 + 104))(v46, enum case for DKAPIUsageType.setOrientation(_:), v42);

  v159 = DKAPIUsageType.rawValue.getter();
  (*(v43 + 8))(v46, v42);
  sub_1000B5150(v50 + *(v47 + 24), v33, &unk_1002A6F30, &unk_10023C4D0);
  v52 = v163;
  v53 = v164;
  v54 = v164[6];
  v55 = v50;
  if (v54(v33, 1, v163) != 1)
  {
    (v53[4])(v41, v33, v52);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v61 = swift_allocError();
    (v53[2])(v63, v41, v52);
    swift_willThrow();
    (v53[1])(v41, v52);
LABEL_12:
    v54 = &unk_1002B1000;
LABEL_13:
    p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
LABEL_24:
    v78 = _convertErrorToNSError(_:)();
    (*(v158 + 2))(v158, 0, v78);

    if (*(p_cb + 240) != -1)
    {
      swift_once();
    }

    v79 = *(v54 + 414);
    *&v166 = v61;
    swift_errorRetain();
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    v80 = v157;
    v81 = swift_dynamicCast();
    (v53[7])(v80, v81 ^ 1u, 1, v52);
    sub_10018C604(v161, v162, v159, v80);

    sub_100095C84(v80, &unk_1002A6F30, &unk_10023C4D0);
    goto LABEL_27;
  }

  sub_100095C84(v33, &unk_1002A6F30, &unk_10023C4D0);
  v56 = *v50;
  if (!*v50)
  {
    _Block_release(v158);
    __break(1u);
    goto LABEL_60;
  }

  v136 = *v50;
  v57 = v56;
  v137 = [v57 processIdentifier];
  v58 = v156;
  sub_100111DAC(v156, v57);

  sub_1000B5150(v58, v27, &unk_1002A6F30, &unk_10023C4D0);
  if (v54(v27, 1, v52) != 1)
  {
    (v53[4])(v39, v27, v52);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v61 = swift_allocError();
    (v53[2])(v64, v39, v52);
    swift_willThrow();

    (v53[1])(v39, v52);
    sub_100095C84(v58, &unk_1002A6F30, &unk_10023C4D0);
    goto LABEL_12;
  }

  sub_100095C84(v27, &unk_1002A6F30, &unk_10023C4D0);
  p_cb = &OBJC_PROTOCOL___DKLogging.cb;
  v54 = &unk_1002B1000;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v60 = *(v54 + 414);
    if (sub_10019C1F4(v137, 0x6A617254646E6573, 0xEE0079726F746365))
    {
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v61 = swift_allocError();
      *v62 = 0xD000000000000024;
      v62[1] = 0x8000000100231F80;
      (v53[13])(v62, enum case for Errors.RateLimitXPC(_:), v52);
      swift_willThrow();

LABEL_23:
      sub_100095C84(v58, &unk_1002A6F30, &unk_10023C4D0);
      goto LABEL_24;
    }

    v135 = v57;
    if (!v151 || !v152)
    {
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v61 = swift_allocError();
      *v77 = 0xD000000000000012;
      v77[1] = 0x800000010022F110;
      (v53[13])(v77, enum case for Errors.NotFound(_:), v52);
      swift_willThrow();

      goto LABEL_23;
    }

    v134 = v55;
    v131 = v60;
    v65 = *(v60 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v132 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v66 = *&v65[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v58 = v151;

    v133 = v65;
    v67 = v65;
    v68 = v66;
    OS_dispatch_semaphore.wait()();

    v69 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v151 = v67;
    v57 = *&v67[v69];
    v53 = v57[2];

    if (!v53)
    {
      break;
    }

    v52 = 0;
    v54 = (v57 + 4);
    v55 = (v150 + 8);
    while (v52 < v57[2])
    {
      sub_1000A097C(v54, v165);
      v70 = *(*sub_1000A09E0(v165, v165[3]) + 24);
      p_cb = v153;
      DockCoreInfo.identifier.getter();

      v71 = v154;
      v72 = v58;
      DockCoreInfo.identifier.getter();
      LOBYTE(v70) = static UUID.== infix(_:_:)();
      v73 = *v55;
      v74 = v71;
      v75 = v155;
      (*v55)(v74, v155);
      v73(p_cb, v75);
      if (v70)
      {

        v83 = *&v133[v132];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v165, &v166);
        sub_100095808(v165);

        v58 = v72;
        goto LABEL_29;
      }

      v52 = (v52 + 1);
      sub_100095808(v165);
      v54 = (v54 + 40);
      v58 = v72;
      if (v53 == v52)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
  }

LABEL_21:

  v76 = *&v133[v132];
  OS_dispatch_semaphore.signal()();

  v168 = 0;
  v166 = 0u;
  v167 = 0u;

LABEL_29:
  v55 = v134;
  v52 = v163;
  v53 = v164;
  v84 = v156;
  p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
  if (!*(&v167 + 1))
  {

    sub_100095C84(&v166, &unk_1002A6F40, &unk_10023BE90);
LABEL_38:
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v61 = swift_allocError();
    *v92 = 0xD00000000000001ALL;
    v92[1] = 0x800000010022F130;
    (v53[13])(v92, enum case for Errors.NotFound(_:), v52);
    swift_willThrow();

LABEL_39:
    goto LABEL_40;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:

    goto LABEL_38;
  }

  v85 = v165[0];
  if (*(v165[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) != 2)
  {

    goto LABEL_37;
  }

  v86 = sub_1001884E4();
  if (!v86)
  {

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v61 = swift_allocError();
    *v93 = 0xD000000000000013;
    v93[1] = 0x8000000100231F30;
    (v53[13])(v93, enum case for Errors.NotFound(_:), v52);
    swift_willThrow();

    goto LABEL_39;
  }

  v87 = v86;
  v155 = v85;
  v88 = v146;
  v89 = v145;
  TrajectoryCommand.init(nsdata:)();
  v90 = v149;
  v50 = v147;
  if ((*(v149 + 48))(v89, 1, v147) == 1)
  {

    sub_100095C84(v89, &qword_1002A9328, &qword_10023DEC8);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v61 = swift_allocError();
    *v91 = 0xD000000000000020;
    v91[1] = 0x8000000100231F50;
    (v53[13])(v91, enum case for Errors.TrajectoryError(_:), v52);
    swift_willThrow();

LABEL_40:
    sub_100095C84(v84, &unk_1002A6F30, &unk_10023C4D0);
    v54 = &unk_1002B1000;
    goto LABEL_24;
  }

  v153 = v58;
  v94 = v90 + 32;
  v151 = *(v90 + 32);
  (v151)(v148, v89, v50);
  v154 = v87;
  v95 = dispatch thunk of DockCoreAccessory.info.getter();
  v27 = sub_100197C80();

  v41 = v162;
  v54 = &unk_1002B1000;
  v96 = v135;
  if (!v27)
  {
    goto LABEL_50;
  }

  v97 = *(v27 + 3);
  v98 = *(v27 + 4);

  LOBYTE(v97) = sub_10011C140(v161, v41, v97, v98, v96);

  if (v97)
  {
    v150 = v94;
    if (qword_1002A66D8 == -1)
    {
LABEL_45:
      v99 = v143;
      v100 = sub_100093DE8(v143, qword_1002A9110);
      v101 = v138;
      (*(v138 + 16))(v142, v100, v99);

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *&v166 = swift_slowAlloc();
        *v104 = 136315394;
        *(v104 + 4) = sub_1000952D4(v161, v41, &v166);
        *(v104 + 12) = 2080;

        v105 = *(v27 + 3);
        v106 = *(v27 + 4);

        v107 = sub_1000952D4(v105, v106, &v166);
        v50 = v147;

        *(v104 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v102, v103, "Foreground app %s force-removing animator for %s", v104, 0x16u);
        swift_arrayDestroy();
        v54 = &unk_1002B1000;
      }

      else
      {
      }

      (*(v101 + 8))(v142, v143);
      v96 = v135;
      v108 = dispatch thunk of DockCoreAccessory.info.getter();
      sub_100197D90();

      v94 = v150;
      goto LABEL_49;
    }

LABEL_60:
    swift_once();
    goto LABEL_45;
  }

LABEL_49:
  if (*(v27 + 4) != v137)
  {

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v129 = v50;
    v61 = swift_allocError();
    *v130 = 0xD000000000000021;
    v130[1] = 0x8000000100231AD0;
    v53 = v164;
    (v164[13])(v130, enum case for Errors.UnexpectedError(_:), v52);
    swift_willThrow();

    (*(v149 + 8))(v148, v129);
    goto LABEL_56;
  }

LABEL_50:
  v109 = v96;
  v110 = sub_1001A1FB4(v137, v136);

  if ((v110 & 1) == 0)
  {

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v127 = v50;
    v61 = swift_allocError();
    *v128 = 0xD00000000000001CLL;
    v128[1] = 0x8000000100231D20;
    v53 = v164;
    (v164[13])(v128, enum case for Errors.UnexpectedError(_:), v52);
    swift_willThrow();

    (*(v149 + 8))(v148, v127);
LABEL_56:
    sub_100095C84(v156, &unk_1002A6F30, &unk_10023C4D0);
    goto LABEL_13;
  }

  v164 = v109;
  v150 = v94;
  sub_100198B58();
  if (v27)
  {

    sub_1000C69A0();
  }

  v111 = type metadata accessor for TaskPriority();
  (*(*(v111 - 8) + 56))(v144, 1, 1, v111);
  v112 = v149;
  v113 = v140;
  (*(v149 + 16))(v140, v148, v50);
  v114 = (*(v112 + 80) + 40) & ~*(v112 + 80);
  v115 = (v139 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v158 = ((v115 + 23) & 0xFFFFFFFFFFFFFFF8);
  v116 = (v115 + 47) & 0xFFFFFFFFFFFFFFF8;
  v117 = swift_allocObject();
  *(v117 + 16) = 0;
  *(v117 + 24) = 0;
  v163 = v27;
  *(v117 + 32) = v155;
  (v151)(v117 + v114, v113, v50);
  v118 = (v117 + v115);
  v120 = v160;
  v119 = v161;
  *v118 = sub_100137D58;
  v118[1] = v120;
  v121 = &v158[v117];
  v122 = v162;
  *v121 = v119;
  *(v121 + 1) = v122;
  v121[16] = v159;
  v123 = v153;
  *(v117 + v116) = v153;
  v124 = (v117 + ((v116 + 15) & 0xFFFFFFFFFFFFFFF8));
  v125 = v152;
  *v124 = v141;
  v124[1] = v125;
  v126 = v123;

  sub_1001B6410(0, 0, v144, &unk_10023DED8, v117);

  (*(v112 + 8))(v148, v50);
  sub_100095C84(v156, &unk_1002A6F30, &unk_10023C4D0);
LABEL_27:
  sub_1000BAA28(v55);
}

uint64_t sub_100121310(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v120 = a2;
  v125 = a1;
  v5 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v119 = &v115 - v7;
  v129 = type metadata accessor for UUID();
  v121 = *(v129 - 8);
  v8 = *(v121 + 64);
  v9 = __chkstk_darwin(v129);
  v128 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v115 - v11;
  v13 = type metadata accessor for Logger();
  v126 = *(v13 - 8);
  v127 = v13;
  v14 = *(v126 + 64);
  v15 = __chkstk_darwin(v13);
  v123 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v122 = &v115 - v18;
  __chkstk_darwin(v17);
  v130 = &v115 - v19;
  v20 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v115 - v22;
  v24 = type metadata accessor for Errors();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v124 = (&v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v30 = &v115 - v29;
  v31 = type metadata accessor for DKXPCClientApplication(0);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v35 = (&v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = swift_allocObject();
  *(v36 + 16) = a4;
  _Block_copy(a4);
  sub_10010D498(v35);
  v37 = *(v32 + 32);
  v38 = v35;
  sub_1000B5150(v35 + v37, v23, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v115 = v25;
    v116 = v35;
    v117 = a4;
    v118 = v36;
    sub_100095C84(v23, &unk_1002A6F30, &unk_10023C4D0);
    if (qword_1002A6780 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v39 = qword_1002B1CF0;
      v40 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v41 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v41 + 4);

      v42 = *(v39 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v43 = *(v39 + v40);
      v44 = v42;

      os_unfair_lock_unlock(v43 + 4);

      v46 = v128;
      v45 = v129;
      if (!v42)
      {
        break;
      }

      v130 = dispatch thunk of DockCoreAccessory.info.getter();

      v47 = v125;
      if (v125)
      {
        type metadata accessor for DockCoreInfo();
        v48 = v47;
        if ((static NSObject.== infix(_:_:)() & 1) == 0)
        {
          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v75 = v127;
          v76 = sub_100093DE8(v127, qword_1002A9110);
          v77 = v126;
          (*(v126 + 16))(v122, v76, v75);
          v78 = v48;
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();

          v81 = os_log_type_enabled(v79, v80);
          v82 = v115;
          if (v81)
          {
            v83 = v47;
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *v84 = 138412290;
            *(v84 + 4) = v78;
            *v85 = v83;
            v86 = v78;
            _os_log_impl(&_mh_execute_header, v79, v80, "%@ is not connected", v84, 0xCu);
            sub_100095C84(v85, &unk_1002A6F60, &unk_10023C4E0);
          }

          (*(v77 + 8))(v122, v75);
          *&v132 = 0;
          *(&v132 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(19);
          v87 = [v78 description];
          v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v90 = v89;

          *&v132 = v88;
          *(&v132 + 1) = v90;
          v91._object = 0x800000010022F1F0;
          v91._countAndFlagsBits = 0xD000000000000011;
          String.append(_:)(v91);
          v92 = *(&v132 + 1);
          v93 = v124;
          *v124 = v132;
          v93[1] = v92;
          (*(v82 + 104))(v93, enum case for Errors.AccessoryNotReachable(_:), v24);
          sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
          swift_allocError();
          (*(v82 + 16))(v94, v93, v24);
          v95 = _convertErrorToNSError(_:)();
          (v117)[2](v117, 0, v95);

          (*(v82 + 8))(v93, v24);
          sub_1000BAA28(v116);
        }
      }

      v49 = *(v39 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v122 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v50 = *(v49 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
      v124 = v49;
      v51 = v49;
      v52 = v50;
      OS_dispatch_semaphore.wait()();

      v53 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v125 = v51;
      v54 = *&v51[v53];
      v24 = *(v54 + 16);

      if (!v24)
      {
LABEL_12:

        v60 = *&v122[v124];
        OS_dispatch_semaphore.signal()();

        v134 = 0;
        v132 = 0u;
        v133 = 0u;
LABEL_25:

        v97 = v118;
        v98 = v117;
        v100 = v126;
        v99 = v127;
        v101 = v123;
        if (*(&v133 + 1))
        {
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory();
          if (swift_dynamicCast())
          {
            v102 = v131[0];
            if (*(v131[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v103 = *(v131[0] + 16)) != 0 && (v104 = *&v103[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
            {
              v105 = v103;
              if ([v104 state] == 2)
              {
                sub_1000A470C();
                v106 = type metadata accessor for TaskPriority();
                v107 = v119;
                (*(*(v106 - 8) + 56))(v119, 1, 1, v106);
                v108 = swift_allocObject();
                v108[2] = 0;
                v108[3] = 0;
                v108[4] = v102;
                v108[5] = sub_1001377AC;
                v109 = v120;
                v108[6] = v97;
                v108[7] = v109;

                sub_1001B6410(0, 0, v107, &unk_10023DEC0, v108);

LABEL_39:

                sub_1000BAA28(v116);
              }
            }

            else
            {
            }
          }
        }

        else
        {
          sub_100095C84(&v132, &unk_1002A6F40, &unk_10023BE90);
        }

        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v110 = sub_100093DE8(v99, qword_1002A9110);
        (*(v100 + 16))(v101, v110, v99);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&_mh_execute_header, v111, v112, "accessory does not exist and/or is not paired ", v113, 2u);
        }

        (*(v100 + 8))(v101, v99);
        v98[2](v98, 0, 0);
        goto LABEL_39;
      }

      v55 = 0;
      v56 = v54 + 32;
      v57 = (v121 + 8);
      while (v55 < *(v54 + 16))
      {
        sub_1000A097C(v56, v131);
        v58 = *(*sub_1000A09E0(v131, v131[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v58) = static UUID.== infix(_:_:)();
        v59 = *v57;
        (*v57)(v46, v45);
        v59(v12, v45);
        if (v58)
        {

          v96 = *&v122[v124];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v131, &v132);
          sub_100095808(v131);
          goto LABEL_25;
        }

        ++v55;
        sub_100095808(v131);
        v56 += 40;
        if (v24 == v55)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_43:
      swift_once();
    }

    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v63 = v127;
    v64 = sub_100093DE8(v127, qword_1002A9110);
    v65 = v126;
    v66 = v130;
    (*(v126 + 16))(v130, v64, v63);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v115;
    if (v69)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "No accessory connected. Cannot initiate accessory diagnostics", v71, 2u);
    }

    (*(v65 + 8))(v66, v63);
    v72 = v124;
    *v124 = 0xD000000000000016;
    v72[1] = 0x800000010022F1A0;
    (*(v70 + 104))(v72, enum case for Errors.AccessoryNotReachable(_:), v24);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v70 + 16))(v73, v72, v24);
    v74 = _convertErrorToNSError(_:)();
    (v117)[2](v117, 0, v74);

    (*(v70 + 8))(v72, v24);
    sub_1000BAA28(v116);
  }

  else
  {
    (*(v25 + 32))(v30, v23, v24);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v25 + 16))(v61, v30, v24);
    v62 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v62);

    (*(v25 + 8))(v30, v24);
    sub_1000BAA28(v38);
  }
}

uint64_t sub_100122244(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v123 = a5;
  v127 = a2;
  v128 = a4;
  v129 = a1;
  v130 = a3;
  v8 = type metadata accessor for Logger();
  v125 = *(v8 - 8);
  v126 = v8;
  v9 = v125[8];
  v10 = __chkstk_darwin(v8);
  v122 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v124 = &v108 - v12;
  v13 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v108 - v15;
  v17 = type metadata accessor for Errors();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = (&v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = &v108 - v23;
  v25 = type metadata accessor for DKXPCClientApplication(0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = (&v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v29);
  sub_1000B5150(v29 + *(v26 + 32), v16, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v24, v16, v17);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v18 + 16))(v60, v24, v17);
    v61 = _convertErrorToNSError(_:)();
    (*(a7 + 16))(a7, 0, v61);

    (*(v18 + 8))(v24, v17);
LABEL_19:
    v65 = v29;
LABEL_20:
    sub_1000BAA28(v65);
  }

  v121 = a7;
  sub_100095C84(v16, &unk_1002A6F30, &unk_10023C4D0);
  v30 = *v29;
  if (!*v29)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v31 = v30;
  v32 = [v31 processIdentifier];
  if (!v129 || !v130 || !v128)
  {
    *v22 = 0xD000000000000016;
    v22[1] = 0x8000000100231BD0;
    (*(v18 + 104))(v22, enum case for Errors.NilParams(_:), v17);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v18 + 16))(v62, v22, v17);
    v63 = _convertErrorToNSError(_:)();
    (*(v121 + 16))(v121, 0, v63);

LABEL_18:
    (*(v18 + 8))(v22, v17);
    goto LABEL_19;
  }

  v120 = v31;
  v119 = v32;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v118 = qword_1002B1CF0;
  v33 = sub_1001884E4();
  if (!v33 || (type metadata accessor for SensorController(), v34 = v33, v35 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v34, (v35 & 1) == 0) || (v36 = v34, v37 = dispatch thunk of DockCoreAccessory.hasSystemSensors(name:sensors:)(), v36, (v37 & 1) == 0))
  {
    *v22 = 0xD000000000000011;
    v22[1] = 0x8000000100231EE0;
    (*(v18 + 104))(v22, enum case for Errors.NotFound(_:), v17);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v18 + 16))(v64, v22, v17);
    v63 = _convertErrorToNSError(_:)();
    (*(v121 + 16))(v121, 0, v63);

    goto LABEL_18;
  }

  v117 = v36;
  v115 = v29;
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v38 = v126;
  v39 = sub_100093DE8(v126, qword_1002A9110);
  v40 = v125[2];
  v113 = v39;
  v114 = v125 + 2;
  v112 = v40;
  (v40)(v124);
  v41 = v129;
  v42 = v130;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  v116 = v41;

  v111 = v44;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v109 = v43;
    v46 = v45;
    v47 = swift_slowAlloc();
    v108 = v47;
    v110 = swift_slowAlloc();
    v133[0] = v110;
    *v46 = 67110146;
    v48 = v119;
    *(v46 + 4) = v119;
    *(v46 + 8) = 2112;
    v49 = v116;
    *(v46 + 10) = v116;
    *v47 = v129;
    *(v46 + 18) = 2080;
    v50 = v49;
    *(v46 + 20) = sub_1000952D4(v127, v42, v133);
    *(v46 + 28) = 2080;
    v51 = Array.description.getter();
    v53 = sub_1000952D4(v51, v52, v133);

    *(v46 + 30) = v53;
    *(v46 + 38) = 2080;
    v54 = SensorOccurrence.description.getter();
    v56 = sub_1000952D4(v54, v55, v133);
    v57 = v48;

    *(v46 + 40) = v56;
    v58 = v109;
    _os_log_impl(&_mh_execute_header, v109, v111, "Client %d registering for sensor data %@ %s %s occurrence:%s", v46, 0x30u);
    sub_100095C84(v108, &unk_1002A6F60, &unk_10023C4E0);

    swift_arrayDestroy();

    v59 = v125[1];
    v59(v124, v126);
  }

  else
  {

    v59 = v125[1];
    v59(v124, v38);
    v57 = v119;
  }

  v67 = v120;
  v68 = v117;
  v69 = v30;
  v70 = v118;
  v71 = sub_1001A1FC8(v57, v69);

  if ((v71 & 1) == 0)
  {
    v96 = v122;
    v112(v122, v113, v126);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "Failed adding client to client list", v99, 2u);
      v96 = v122;
    }

    v59(v96, v126);
    *v22 = 0xD00000000000001CLL;
    v22[1] = 0x8000000100231D20;
    (*(v18 + 104))(v22, enum case for Errors.UnexpectedError(_:), v17);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v18 + 16))(v100, v22, v17);
    v101 = _convertErrorToNSError(_:)();
    (*(v121 + 16))(v121, 0, v101);

    (*(v18 + 8))(v22, v17);
    v65 = v115;
    goto LABEL_20;
  }

  v72 = DockCoreInfo.description.getter();
  v74 = v73;
  v75 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v76 = *(v70 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v76 + 4);

  v77 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
  swift_beginAccess();
  v78 = v119;
  if (!*(*(v70 + v77) + 16) || (sub_10016D548(v119), (v79 & 1) == 0))
  {
    v80 = sub_1001F351C(_swiftEmptyArrayStorage);
    swift_beginAccess();
    v81 = *(v70 + v77);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v132 = *(v70 + v77);
    *(v70 + v77) = 0x8000000000000000;
    sub_1001EC8E8(v80, v78, isUniquelyReferenced_nonNull_native);
    *(v70 + v77) = v132;
    swift_endAccess();
  }

  swift_beginAccess();

  v83 = *(v70 + v77);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v78;
  v86 = v84;
  v132 = *(v70 + v77);
  v87 = v132;
  *(v70 + v77) = 0x8000000000000000;
  v89 = sub_10016D548(v85);
  v90 = *(v87 + 16);
  v91 = (v88 & 1) == 0;
  v92 = v90 + v91;
  if (__OFADD__(v90, v91))
  {
    __break(1u);
    goto LABEL_41;
  }

  LOBYTE(v70) = v88;
  if (*(v87 + 24) >= v92)
  {
    if (v86)
    {
      v95 = v130;
      if (v88)
      {
        goto LABEL_36;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_41:
    sub_1001EF7F8();
    v95 = v130;
    if (v70)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  sub_1001E8624(v92, v86);
  v93 = sub_10016D548(v119);
  if ((v70 & 1) != (v94 & 1))
  {
LABEL_44:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v89 = v93;
  v95 = v130;
  if ((v70 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_36:
  v102 = v132;
  v103 = *(*(v132 + 56) + 8 * v89);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v131 = v103;
  sub_1001EC8B4(v127, v95, v128, v123, v72, v74, v104);

  if (v131)
  {
    *(*(v102 + 56) + 8 * v89) = v131;
  }

  else
  {
    sub_1001F7A38(v89, v102);
  }

  v105 = v121;
  v106 = v118;
  *(v118 + v77) = v102;
  swift_endAccess();
  v107 = *(v106 + v75);

  os_unfair_lock_unlock(v107 + 4);

  (*(v105 + 16))(v105, 1, 0);

  return sub_1000BAA28(v115);
}

uint64_t sub_100122FA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v79 = a1;
  v80 = a4;
  v77 = a3;
  v74 = a2;
  v78 = type metadata accessor for Logger();
  v76 = *(v78 - 8);
  v7 = *(v76 + 64);
  v8 = __chkstk_darwin(v78);
  v72 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v73 = &v64 - v11;
  __chkstk_darwin(v10);
  v13 = &v64 - v12;
  v14 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v64 - v16;
  v18 = type metadata accessor for Errors();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v75 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v25 = type metadata accessor for DKXPCClientApplication(0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = (&v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v29);
  sub_1000B5150(v29 + *(v26 + 32), v17, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    (*(v19 + 32))(v24, v17, v18);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v19 + 16))(v47, v24, v18);
    v48 = _convertErrorToNSError(_:)();
    v49 = a6;
    v50 = v48;
    (*(v49 + 16))(v49, 0, v48);

    (*(v19 + 8))(v24, v18);
    sub_1000BAA28(v29);
  }

  result = sub_100095C84(v17, &unk_1002A6F30, &unk_10023C4D0);
  v31 = *v29;
  if (*v29)
  {
    v32 = v31;
    v33 = [v32 processIdentifier];
    v34 = v78;
    v35 = v76;
    if (v79 && v77 && v80)
    {
      v71 = v33;
      v66 = v31;
      v70 = v32;
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v36 = sub_100093DE8(v34, qword_1002A9110);
      v37 = *(v35 + 16);
      v68 = v36;
      v69 = v35 + 16;
      v67 = v37;
      (v37)(v13);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v81 = v65;
        *v40 = 67109378;
        *(v40 + 4) = v71;
        *(v40 + 8) = 2080;
        v41 = Array.description.getter();
        v43 = a6;
        v44 = sub_1000952D4(v41, v42, &v81);
        v34 = v78;

        *(v40 + 10) = v44;
        a6 = v43;
        _os_log_impl(&_mh_execute_header, v38, v39, "Client %d stopping sensor events for %s", v40, 0x12u);
        sub_100095808(v65);

        v35 = v76;
      }

      v45 = *(v35 + 8);
      v45(v13, v34);
      v46 = v74;
      if (qword_1002A6780 != -1)
      {
        v63 = v74;
        swift_once();
        v46 = v63;
      }

      if (sub_100194A68(v71, v79, v46, v77, v80))
      {

LABEL_21:
        (*(a6 + 16))(a6, 1, 0);

        return sub_1000BAA28(v29);
      }

      v67(v73, v68, v34);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 67109120;
        *(v57 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v55, v56, "Client %d stopping sensor events", v57, 8u);
        v34 = v78;
      }

      v45(v73, v34);
      v32 = v70;
      v58 = v34;
      v59 = sub_10019506C(v71, v66);

      if (v59)
      {
        goto LABEL_21;
      }

      v67(v72, v68, v58);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Failed removing client from list", v62, 2u);
      }

      v45(v72, v78);
      v51 = v75;
      *v75 = 0xD000000000000020;
      v51[1] = 0x8000000100231BF0;
      v52 = &enum case for Errors.UnexpectedError(_:);
    }

    else
    {
      v51 = v75;
      *v75 = 0xD000000000000016;
      v51[1] = 0x8000000100231BD0;
      v52 = &enum case for Errors.NilParams(_:);
    }

    (*(v19 + 104))(v51, *v52, v18);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v19 + 16))(v53, v51, v18);
    v54 = _convertErrorToNSError(_:)();
    (*(a6 + 16))(a6, 0, v54);

    (*(v19 + 8))(v51, v18);
    sub_1000BAA28(v29);
  }

  __break(1u);
  return result;
}

uint64_t sub_100123854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v109 = a2;
  v110 = a3;
  v113 = a1;
  v103 = type metadata accessor for Logger();
  v6 = *(v103 - 8);
  v7 = *(v6 + 8);
  __chkstk_darwin(v103);
  v100 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
LABEL_48:
    swift_once();
  }

  v9 = qword_1002B1CF0;
  sub_1001F1DC8(_swiftEmptyArrayStorage);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v11 = *(v9 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
  swift_beginAccess();
  v13 = *(v9 + v12);
  v14 = *(v9 + v10);

  os_unfair_lock_unlock(v14 + 4);

  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v15 = *(v9 + v10);

  os_unfair_lock_lock(v15 + 4);

  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  swift_beginAccess();
  v17 = *(v9 + v16);
  v105 = v9;
  v18 = *(v9 + v10);
  v19 = v17;

  os_unfair_lock_unlock(v18 + 4);

  v21 = 0;
  v22 = 0;
  v23 = v19 + 64;
  v24 = 1 << *(v19 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v19 + 64);
  v104 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v101 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  v27 = (v24 + 63) >> 6;
  v98 = (v6 + 16);
  v99 = (v6 + 8);
  v108 = a4;
  v107 = (a4 + 40);
  *&v20 = 136315650;
  v97 = v20;
  a4 = v113;
  v114 = v19;
LABEL_5:
  while (v26)
  {
    v28 = v26;
LABEL_11:
    v26 = (v28 - 1) & v28;
    if (*(v13 + 2))
    {
      v30 = __clz(__rbit64(v28)) | (v21 << 6);
      v31 = *(*(v19 + 56) + 8 * v30);
      v116 = *(*(v19 + 48) + 4 * v30);
      v6 = v13;
      v32 = sub_10016D548(v116);
      if (v33)
      {
        v34 = *(*(v13 + 7) + 8 * v32);
        v115 = v31;

        v35 = DockCoreInfo.description.getter();
        v6 = v36;
        if (!*(v34 + 2))
        {

          goto LABEL_28;
        }

        v37 = v35;
        v111 = v22;
        v38 = v26;
        v39 = a4;

        v40 = v6;
        v41 = v6;
        v6 = v34;
        sub_10016D4D0(v37, v40);
        if (v42)
        {
          v106 = v41;

          if (!*(v34 + 2) || (v6 = v34, v43 = sub_10016D4D0(v37, v106), (v44 & 1) == 0))
          {

            v19 = v114;
            a4 = v39;
            goto LABEL_30;
          }

          v45 = (*(v34 + 7) + 32 * v43);
          v46 = *v45;
          v47 = v45[1];
          v6 = v45[2];
          v48 = v45[3];

          v49 = v46 == v109 && v47 == v110;
          if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v94 = v48;
            v93 = v46;
            v95 = v13;
            v50 = v6;
            v51 = v108[2];
            v96 = v47;

            v112 = v50;

            v53 = v51 + 1;
            v54 = v107;
            v26 = v38;
            v22 = v111;
            while (--v53)
            {
              v55 = v54 + 2;
              v6 = *v54;
              v118[0] = *(v54 - 1);
              v118[1] = v6;
              __chkstk_darwin(v52);
              *(&v91 - 2) = v118;

              v56 = sub_10019EE0C(sub_100137D14, (&v91 - 4), v112);

              v54 = v55;
              if ((v56 & 1) == 0)
              {

                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                a4 = v113;
LABEL_42:
                v13 = v95;
                v19 = v114;
                goto LABEL_5;
              }
            }

            v57 = v115;
            v6 = [v57 remoteObjectProxy];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100095274(&qword_1002A9320, &qword_10023DEB0);
            v58 = swift_dynamicCast();
            a4 = v113;
            v19 = v114;
            if (v58)
            {
              v115 = v57;
              v59 = v117;
              v60 = v105;
              v61 = *(v105 + v104);

              os_unfair_lock_lock(v61 + 4);

              if (*(v60 + v101))
              {
                v62 = *(v60 + v101);

                sub_100105E6C();
              }

              v63 = *(v105 + v104);

              os_unfair_lock_unlock(v63 + 4);

              swift_unknownObjectRetain();
              v64 = String._bridgeToObjectiveC()();
              isa = Array._bridgeToObjectiveC()().super.isa;
              type metadata accessor for SensorData();
              v66 = Array._bridgeToObjectiveC()().super.isa;
              [v59 sensorDataWithInfo:a4 system:v64 sensors:isa data:v66];

              swift_unknownObjectRelease();

              v6 = SensorOccurrence.rawValue.getter();
              if (v6 != SensorOccurrence.rawValue.getter())
              {

                v88 = v115;

                swift_unknownObjectRelease();
                goto LABEL_42;
              }

              v111 = v59;
              v67 = v103;
              v68 = v100;
              if (qword_1002A66D8 != -1)
              {
                swift_once();
              }

              v69 = sub_100093DE8(v67, qword_1002A9110);
              (*v98)(v68, v69, v67);
              v70 = v96;

              v71 = Logger.logObject.getter();
              v72 = static os_log_type_t.default.getter();
              v106 = v71;
              v73 = os_log_type_enabled(v71, v72);
              v74 = v93;
              if (v73)
              {
                v75 = swift_slowAlloc();
                v92 = v72;
                v76 = v75;
                v94 = swift_slowAlloc();
                v118[0] = v94;
                *v76 = v97;

                v77 = sub_1000952D4(v74, v70, v118);

                v91 = v76;
                *(v76 + 4) = v77;
                *(v76 + 12) = 2080;

                swift_bridgeObjectRelease_n();

                v78 = Array.description.getter();
                v80 = v79;

                v81 = sub_1000952D4(v78, v80, v118);

                v82 = v91;
                *(v91 + 14) = v81;
                *(v82 + 22) = 2080;
                v83 = Array.description.getter();
                v85 = sub_1000952D4(v83, v84, v118);

                *(v82 + 24) = v85;
                v86 = v108;
                v87 = v106;
                _os_log_impl(&_mh_execute_header, v106, v92, "Client rule (%s, %s) notified once, removing sensors %s from notification rule", v82, 0x20u);
                swift_arrayDestroy();

                (*v99)(v100, v103);
              }

              else
              {

                v86 = v108;

                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                (*v99)(v68, v103);
              }

              v19 = v114;
              v6 = sub_100194A68(v116, a4, v109, v110, v86);
              v89 = v115;

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v13 = v95;
          }

          else
          {

            a4 = v113;
            v19 = v114;
LABEL_30:
            v26 = v38;
            v22 = v111;
          }
        }

        else
        {

          a4 = v39;
          v26 = v38;
          v22 = v111;
LABEL_28:

          v19 = v114;
        }
      }
    }
  }

  while (1)
  {
    v29 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v27)
    {
      break;
    }

    v28 = *(v23 + 8 * v29);
    ++v21;
    if (v28)
    {
      v21 = v29;
      goto LABEL_11;
    }
  }
}

uint64_t sub_100124320(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v139 = a4;
  v140 = a7;
  v137 = a1;
  v138 = a5;
  v135 = a2;
  v136 = a3;
  v7 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v127 = *(v7 - 8);
  v8 = *(v127 + 64);
  __chkstk_darwin(v7);
  v132 = v120 - v9;
  v10 = type metadata accessor for Logger();
  v133 = *(v10 - 8);
  v134 = v10;
  v11 = *(v133 + 64);
  v12 = __chkstk_darwin(v10);
  v131 = v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v128 = v120 - v15;
  v16 = __chkstk_darwin(v14);
  v129 = v120 - v17;
  __chkstk_darwin(v16);
  v19 = v120 - v18;
  v20 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v120 - v22;
  v24 = type metadata accessor for Errors();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = (v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v31 = v120 - v30;
  v32 = type metadata accessor for DKXPCClientApplication(0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = (v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v35);
  v36 = v35[2];
  if (v36)
  {
    v130 = v35[1];
    v141 = v36;
  }

  else
  {
    v141 = 0xE700000000000000;
    v130 = 0x6E776F6E6B6E75;
  }

  sub_1000B5150(v35 + *(v32 + 24), v23, &unk_1002A6F30, &unk_10023C4D0);
  v37 = (*(v25 + 48))(v23, 1, v24);

  if (v37 != 1)
  {

    (*(v25 + 32))(v31, v23, v24);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v25 + 16))(v56, v31, v24);
    v57 = _convertErrorToNSError(_:)();
    (*(v140 + 16))(v140, 0, v57);

    (*(v25 + 8))(v31, v24);
LABEL_25:
    sub_1000BAA28(v35);
  }

  result = sub_100095C84(v23, &unk_1002A6F30, &unk_10023C4D0);
  if (!*v35)
  {
    __break(1u);
    return result;
  }

  v39 = *v35;
  v40 = [v39 processIdentifier];
  if (!v137 || !v136 || !v139 || !v138)
  {

    v29->isa = 0xD000000000000016;
    v29[1].isa = 0x8000000100231BD0;
    (*(v25 + 104))(v29, enum case for Errors.NilParams(_:), v24);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v25 + 16))(v58, v29, v24);
    v59 = _convertErrorToNSError(_:)();
    (*(v140 + 16))(v140, 0, v59);

LABEL_24:
    (*(v25 + 8))(v29, v24);
    goto LABEL_25;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v41 = qword_1002B1CF0;
  v42 = sub_1001884E4();
  if (!v42)
  {
    v44 = 0;
LABEL_23:

    v29->isa = 0xD000000000000011;
    v29[1].isa = 0x8000000100231EE0;
    (*(v25 + 104))(v29, enum case for Errors.NotFound(_:), v24);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v25 + 16))(v60, v29, v24);
    v61 = _convertErrorToNSError(_:)();
    (*(v140 + 16))(v140, 0, v61);

    goto LABEL_24;
  }

  LODWORD(v125) = v40;
  v126 = v41;
  v124 = v7;
  v43 = v42;
  type metadata accessor for SensorController();
  v123 = v43;
  v44 = v43;
  v45 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)();

  if ((v45 & 1) == 0)
  {
    goto LABEL_23;
  }

  v44 = v44;
  v46 = dispatch thunk of DockCoreAccessory.hasSystemSensors(name:sensors:)();

  if ((v46 & 1) == 0)
  {
    goto LABEL_23;
  }

  v121 = v44;
  v47 = v39;
  if (sub_10019C1F4(v125, 0x6F736E6553746573, 0xEF73657461745372))
  {

    v48 = v133;
    v49 = v134;
    if (qword_1002A66D8 == -1)
    {
LABEL_17:
      v50 = sub_100093DE8(v49, qword_1002A9110);
      (*(v48 + 16))(v19, v50, v49);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Rate limit exceeded for setSensorStates", v53, 2u);
        v48 = v133;
      }

      (*(v48 + 8))(v19, v49);
      v29->isa = 0xD000000000000025;
      v29[1].isa = 0x8000000100231F00;
      (*(v25 + 104))(v29, enum case for Errors.RateLimitXPC(_:), v24);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v25 + 16))(v54, v29, v24);
      v55 = _convertErrorToNSError(_:)();
      (*(v140 + 16))(v140, 0, v55);

LABEL_75:
      goto LABEL_24;
    }

LABEL_79:
    swift_once();
    goto LABEL_17;
  }

  v62 = sub_100197C80();
  v63 = v62;
  v122 = v39;
  v64 = v133;
  v65 = v134;
  if (v62)
  {
    v66 = *(v62 + 24);
    v67 = *(v62 + 32);

    LOBYTE(v66) = sub_10011C140(v130, v141, v66, v67, v47);

    if (v66)
    {
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v68 = sub_100093DE8(v65, qword_1002A9110);
      (*(v64 + 16))(v129, v68, v65);
      v69 = v141;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = v63;
        v73 = swift_slowAlloc();
        v120[0] = swift_slowAlloc();
        v143[0] = v120[0];
        *v73 = 136315394;
        *(v73 + 4) = sub_1000952D4(v130, v69, v143);
        *(v73 + 12) = 2080;

        v74 = *(v72 + 24);
        v75 = *(v72 + 32);

        v76 = sub_1000952D4(v74, v75, v143);
        v47 = v122;

        *(v73 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v70, v71, "Foreground app %s force-removing animator for %s", v73, 0x16u);
        swift_arrayDestroy();

        v63 = v72;
        v64 = v133;
      }

      else
      {
      }

      v65 = v134;
      (*(v64 + 8))(v129, v134);
      sub_100197D90();
    }

    if (*(v63 + 16) != v125)
    {
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v100 = sub_100093DE8(v65, qword_1002A9110);
      v101 = v128;
      (*(v64 + 16))(v128, v100, v65);

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v143[0] = v139;
        *v104 = 136315394;

        LODWORD(v138) = v103;
        v105 = v141;

        v106 = *(v63 + 24);
        v107 = *(v63 + 32);

        v108 = sub_1000952D4(v106, v107, v143);
        v47 = v122;

        *(v104 + 4) = v108;
        *(v104 + 12) = 2080;
        v109 = sub_1000952D4(v130, v105, v143);

        *(v104 + 14) = v109;
        _os_log_impl(&_mh_execute_header, v102, v138, "animator owned by %s, rejecting request from %s", v104, 0x16u);
        swift_arrayDestroy();

        (*(v133 + 8))(v128, v134);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        (*(v64 + 8))(v101, v134);
      }

      v29->isa = 0xD000000000000021;
      v29[1].isa = 0x8000000100231AD0;
      (*(v25 + 104))(v29, enum case for Errors.UnexpectedError(_:), v24);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v25 + 16))(v119, v29, v24);
      v55 = _convertErrorToNSError(_:)();
      (*(v140 + 16))(v140, 0, v55);

      goto LABEL_75;
    }
  }

  sub_10019A4F0(1);
  sub_100198E44(v123);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v77 = sub_100093DE8(v65, qword_1002A9110);
  (*(v64 + 16))(v131, v77, v65);

  v78 = v137;
  v79 = v136;

  v80 = v139;

  v81 = v80;
  v29 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  LODWORD(v137) = v82;
  v83 = os_log_type_enabled(v29, v82);
  v130 = v78;
  v120[1] = v63;
  if (v83)
  {
    v84 = swift_slowAlloc();
    v143[0] = swift_slowAlloc();
    *v84 = 136315906;
    v85 = DockCoreInfo.name.getter();
    v87 = sub_1000952D4(v85, v86, v143);

    *(v84 + 4) = v87;
    *(v84 + 12) = 2080;
    v49 = v135;
    *(v84 + 14) = sub_1000952D4(v135, v79, v143);
    *(v84 + 22) = 2080;
    v88 = Array.description.getter();
    v90 = sub_1000952D4(v88, v89, v143);

    *(v84 + 24) = v90;
    *(v84 + 32) = 2080;
    type metadata accessor for SensorData();
    v91 = Array.description.getter();
    v93 = sub_1000952D4(v91, v92, v143);

    *(v84 + 34) = v93;
    v47 = v122;
    _os_log_impl(&_mh_execute_header, v29, v137, "Processing request for setSensorStates(%s, %s, %s, %s", v84, 0x2Au);
    swift_arrayDestroy();
    v81 = v139;

    (*(v64 + 8))(v131, v134);
  }

  else
  {

    (*(v64 + 8))(v131, v65);
    v49 = v135;
    v47 = v122;
  }

  v94 = v121;

  v48 = v81;
  v24 = dispatch thunk of DockCoreAccessory.getSystemSensors(name:sensors:)();
  v125 = v94;

  if (v24 >> 62)
  {
    v95 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v95 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v130;
  v134 = v138 & 0xFFFFFFFFFFFFFF8;
  if (v138 >> 62)
  {
    v96 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v96 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = v95 == v96;
  v98 = v48;
  if (v97)
  {
    v99 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v131 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
    swift_beginAccess();
    if (v99)
    {
      v141 = v24 & 0xC000000000000001;
      v137 = (v24 & 0xFFFFFFFFFFFFFF8);
      v133 = v138 & 0xC000000000000001;
      v110 = (v127 + 16);
      v127 += 8;
      v128 = v110;
      v19 = 4;
      v129 = v24;
      while (1)
      {
        v112 = v19 - 4;
        if (v141)
        {
          v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v112 >= *(v137 + 2))
          {
            goto LABEL_77;
          }

          v113 = *(v24 + 8 * v19);
        }

        v49 = v113;
        v48 = v19 - 3;
        if (__OFADD__(v112, 1))
        {
          break;
        }

        type metadata accessor for SensorTracker();
        v114 = swift_dynamicCastClass();
        if (v114)
        {
          v29 = v114;
          if (v133)
          {
            v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v112 >= *(v134 + 16))
            {
              goto LABEL_78;
            }

            v115 = *(v138 + 8 * v19);
          }

          v116 = v115;
          type metadata accessor for SensorTrackerState();
          if (swift_dynamicCastClass())
          {
            dispatch thunk of SensorTracker.setState(state:)();
            v117 = v132;
            v29 = v124;
            (*v128)(v132, &v131[v126], v124);
            DKThreadSafe.wrappedValue.getter();
            (*v127)(v117, v29);
            if ((v142 & 1) == 0)
            {
              v118 = dispatch thunk of SensorTrackerState.state.getter();
              sub_10018A5D0(v118);
            }

            v111 = v116;
            v24 = v129;
          }

          else
          {
            v111 = v49;
            v49 = v116;
          }

          v47 = v122;
          v25 = v130;
        }

        ++v19;
        v98 = v139;
        if (v48 == v99)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }
  }

LABEL_72:

  sub_100123854(v25, v135, v136, v98, v138);
  (*(v140 + 16))(v140, 1, 0);

  return sub_1000BAA28(v35);
}

uint64_t sub_100125728(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = a5;
  v79 = a4;
  v77 = a3;
  v89 = a2;
  v81 = a1;
  v6 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v76 = &v75 - v8;
  v9 = type metadata accessor for UUID();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v75 - v14;
  v16 = type metadata accessor for Logger();
  v87 = *(v16 - 8);
  v88 = v16;
  v17 = *(v87 + 64);
  v18 = __chkstk_darwin(v16);
  v82 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v75 - v20;
  v80 = v5;
  v22 = &unk_1002B1000;
  if (*(v5 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_debugAllowed) == 1)
  {
    DockCoreInfo.type.getter();
    v23 = DockCoreAccessoryType.rawValue.getter();
    if (v23 == DockCoreAccessoryType.rawValue.getter())
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v24 = qword_1002B1CF0;
      v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v26 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v26 + 4);

      v27 = *(v24 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v28 = *(v24 + v25);
      v29 = v27;

      os_unfair_lock_unlock(v28 + 4);

      if (v27)
      {
        v30 = dispatch thunk of DockCoreAccessory.info.getter();

        type metadata accessor for DockCoreInfo();
        v31 = v89;
        v32 = static NSObject.== infix(_:_:)();

        if (v32)
        {
          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v33 = v88;
          v34 = sub_100093DE8(v88, qword_1002A9110);
          v35 = v87;
          (*(v87 + 16))(v21, v34, v33);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "getActuatorFeedback: noop for mock device", v38, 2u);
          }

          (*(v35 + 8))(v21, v33);
          return 1;
        }
      }
    }
  }

  if (qword_1002A6780 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v40 = *(*(v22 + 414) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v84 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v85 = v40;
    v41 = *&v40[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v42 = v40;
    v43 = v41;
    OS_dispatch_semaphore.wait()();

    v44 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v86 = v42;
    v45 = *&v42[v44];
    v22 = *(v45 + 16);

    if (!v22)
    {
      break;
    }

    v46 = 0;
    v47 = v45 + 32;
    v48 = (v83 + 8);
    while (v46 < *(v45 + 16))
    {
      sub_1000A097C(v47, v90);
      v49 = *(*sub_1000A09E0(v90, v90[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v49) = static UUID.== infix(_:_:)();
      v50 = *v48;
      (*v48)(v13, v9);
      v50(v15, v9);
      if (v49)
      {

        v52 = *&v85[v84];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v90, &v91);
        sub_100095808(v90);
        goto LABEL_20;
      }

      ++v46;
      sub_100095808(v90);
      v47 += 40;
      if (v22 == v46)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_18:

  v51 = *&v85[v84];
  OS_dispatch_semaphore.signal()();

  v93 = 0;
  v91 = 0u;
  v92 = 0u;
LABEL_20:

  v54 = v87;
  v53 = v88;
  if (!*(&v92 + 1))
  {
    sub_100095C84(&v91, &unk_1002A6F40, &unk_10023BE90);
    return 0;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v55 = v90[0];
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v56 = sub_100093DE8(v53, qword_1002A9110);
  (*(v54 + 16))(v82, v56, v53);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 67109120;
    *(v59 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v57, v58, "pid %d Registering for device feedback", v59, 8u);
  }

  (*(v54 + 8))(v82, v53);
  v60 = type metadata accessor for TaskPriority();
  v61 = v76;
  (*(*(v60 - 8) + 56))(v76, 1, 1, v60);
  v62 = swift_allocObject();
  v62[2] = 0;
  v62[3] = 0;
  v62[4] = v55;

  sub_1001B6410(0, 0, v61, &unk_10023DE80, v62);

  v63 = swift_allocObject();
  v64 = v78;
  *(v63 + 16) = v89;
  *(v63 + 24) = v64;
  v65 = v79;
  *(v63 + 32) = v77;
  *(v63 + 40) = v65;
  *(v63 + 48) = v81;
  v66 = v80;
  *(v63 + 56) = v80;
  v67 = *(v55 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
  v68 = __chkstk_darwin(v63);
  *(&v75 - 4) = v55;
  *(&v75 - 6) = v69;
  *(&v75 - 2) = sub_10013755C;
  *(&v75 - 1) = v68;
  __chkstk_darwin(v68);
  *(&v75 - 2) = sub_100137590;
  *(&v75 - 1) = v70;
  v72 = v71;

  v73 = v66;

  os_unfair_lock_lock(v67 + 4);
  sub_100137D60(v74);
  os_unfair_lock_unlock(v67 + 4);

  return 1;
}

uint64_t sub_10012601C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v132 = a5;
  v133 = a6;
  v140 = a4;
  v141 = a3;
  v138 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v136 = v9;
  v137 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v131 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v134 = &v119 - v15;
  __chkstk_darwin(v14);
  v135 = &v119 - v16;
  v17 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v119 - v19;
  v21 = type metadata accessor for Errors();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v139 = (&v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v27 = &v119 - v26;
  v28 = type metadata accessor for DKXPCClientApplication(0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v32 = (&v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v32);
  sub_1000B5150(v32 + *(v29 + 32), v20, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    (*(v22 + 32))(v27, v20, v21);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v22 + 16))(v56, v27, v21);
    v57 = _convertErrorToNSError(_:)();
    (*(a7 + 16))(a7, 0, v57);

    (*(v22 + 8))(v27, v21);
    sub_1000BAA28(v32);
  }

  v130 = a7;
  sub_100095C84(v20, &unk_1002A6F30, &unk_10023C4D0);
  v33 = *v32;
  if (!*v32)
  {
    __break(1u);
    goto LABEL_47;
  }

  v34 = v33;
  v35 = [v34 processIdentifier];
  if (!a1 || !v141 || !v140)
  {
    v58 = v139;
    *v139 = 0xD000000000000016;
    v58[1] = 0x8000000100231BD0;
    (*(v22 + 104))(v58, enum case for Errors.NilParams(_:), v21);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v22 + 16))(v59, v58, v21);
    v60 = _convertErrorToNSError(_:)();
    (*(v130 + 16))(v130, 0, v60);

    (*(v22 + 8))(v58, v21);
    v61 = v32;
LABEL_19:
    sub_1000BAA28(v61);
  }

  v128 = v35;
  v129 = v32;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v127 = qword_1002B1CF0;
  v36 = sub_1001884E4();
  if (!v36 || (type metadata accessor for ActuationController(), v37 = v36, v38 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v37, (v38 & 1) == 0) || (v39 = v37, v40 = dispatch thunk of DockCoreAccessory.hasSystemActuators(name:actuators:)(), v39, (v40 & 1) == 0))
  {
    v62 = v139;
    *v139 = 0xD00000000000001ALL;
    v62[1] = 0x8000000100231EC0;
    (*(v22 + 104))(v62, enum case for Errors.NotFound(_:), v21);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v22 + 16))(v63, v62, v21);
    v64 = _convertErrorToNSError(_:)();
    (*(v130 + 16))(v130, 0, v64);

    (*(v22 + 8))(v62, v21);
LABEL_18:
    v61 = v129;
    goto LABEL_19;
  }

  v125 = v39;
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v41 = v136;
  v42 = sub_100093DE8(v136, qword_1002A9110);
  v43 = *(v137 + 16);
  v121 = v42;
  v123 = v137 + 16;
  v122 = v43;
  (v43)(v135);
  v126 = a1;

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  v46 = v126;

  v120 = v45;
  v124 = v44;
  if (os_log_type_enabled(v44, v45))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v144[0] = v119;
    *v47 = 67109890;
    *(v47 + 4) = v128;
    *(v47 + 8) = 2112;
    *(v47 + 10) = v46;
    *v48 = a1;
    *(v47 + 18) = 2080;
    v49 = v46;
    *(v47 + 20) = sub_1000952D4(v138, v141, v144);
    *(v47 + 28) = 2080;
    v50 = Array.description.getter();
    v52 = sub_1000952D4(v50, v51, v144);

    *(v47 + 30) = v52;
    v53 = v124;
    _os_log_impl(&_mh_execute_header, v124, v120, "Client %d registering for feedback for %@ %s %s", v47, 0x26u);
    sub_100095C84(v48, &unk_1002A6F60, &unk_10023C4E0);

    swift_arrayDestroy();

    v54 = v128;

    v55 = *(v137 + 8);
    (v55)(v135, v136);
  }

  else
  {

    v55 = *(v137 + 8);
    (v55)(v135, v41);
    v54 = v128;
  }

  v66 = v34;
  v67 = v125;
  v68 = v127;
  v69 = sub_1001A2074(v54, v33);

  if ((v69 & 1) == 0)
  {
    v91 = v134;
    v92 = v136;
    v122(v134, v121, v136);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    v95 = os_log_type_enabled(v93, v94);
    v96 = v130;
    if (v95)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Failed adding client to client list", v97, 2u);
      v92 = v136;
    }

    (v55)(v91, v92);
    v98 = v139;
    *v139 = 0xD00000000000001CLL;
    v98[1] = 0x8000000100231D20;
    (*(v22 + 104))(v98, enum case for Errors.UnexpectedError(_:), v21);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v22 + 16))(v99, v98, v21);
    v100 = _convertErrorToNSError(_:)();
    (*(v96 + 16))(v96, 0, v100);

    (*(v22 + 8))(v98, v21);
    goto LABEL_18;
  }

  v124 = v55;
  v134 = v66;
  v125 = DockCoreInfo.description.getter();
  v71 = v70;
  v135 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v72 = *(v68 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v72 + 4);

  v73 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  if (!*(*(v68 + v73) + 16) || (sub_10016D548(v54), (v74 & 1) == 0))
  {
    v75 = sub_1001F3530(_swiftEmptyArrayStorage);
    swift_beginAccess();
    v76 = *(v68 + v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v143 = *(v68 + v73);
    *(v68 + v73) = 0x8000000000000000;
    v78 = v75;
    v54 = v128;
    sub_1001ECC80(v78, v128, isUniquelyReferenced_nonNull_native);
    *(v68 + v73) = v143;
    swift_endAccess();
  }

  swift_beginAccess();

  v79 = *(v68 + v73);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v68;
  v82 = v80;
  v143 = *(v81 + v73);
  v83 = v143;
  *(v81 + v73) = 0x8000000000000000;
  v85 = sub_10016D548(v54);
  v86 = *(v83 + 16);
  v87 = (v84 & 1) == 0;
  v88 = v86 + v87;
  if (__OFADD__(v86, v87))
  {
    __break(1u);
    goto LABEL_44;
  }

  LOBYTE(v66) = v84;
  if (*(v83 + 24) >= v88)
  {
    if ((v82 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_34;
  }

  sub_1001E8904(v88, v82);
  v89 = sub_10016D548(v128);
  if ((v66 & 1) == (v90 & 1))
  {
    v85 = v89;
LABEL_34:
    while (1)
    {
      v101 = v130;
      v102 = v127;
      if (v66)
      {
        break;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      sub_1001EF990();
    }

    v103 = v143;
    v104 = *(*(v143 + 56) + 8 * v85);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v104;
    sub_1001ECA80(v138, v141, v140, v132, v125, v71, v105);

    if (v142)
    {
      *(*(v103 + 56) + 8 * v85) = v142;
    }

    else
    {
      sub_1001F7A38(v85, v103);
    }

    v106 = v135;
    *(v102 + v73) = v103;
    swift_endAccess();
    v107 = *&v106[v102];

    os_unfair_lock_unlock(v107 + 4);

    v108 = v67;
    LOBYTE(v107) = sub_100125728(v128, v126, v138, v141, v140);

    if (v107)
    {
      (*(v101 + 16))(v101, 1, 0);

      return sub_1000BAA28(v129);
    }

    v109 = v131;
    v110 = v136;
    v122(v131, v121, v136);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    v113 = os_log_type_enabled(v111, v112);
    v114 = v129;
    if (v113)
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Failed starting feedback from accessory", v115, 2u);
      v109 = v131;
    }

    (v124)(v109, v110);
    v116 = v139;
    *v139 = 0xD000000000000027;
    v116[1] = 0x8000000100231E70;
    (*(v22 + 104))(v116, enum case for Errors.UnexpectedError(_:), v21);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v22 + 16))(v117, v116, v21);
    v118 = _convertErrorToNSError(_:)();
    (*(v101 + 16))(v101, 0, v118);

    (*(v22 + 8))(v116, v21);
    v61 = v114;
    goto LABEL_19;
  }

LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100126FE0(char *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v138 = a4;
  v146 = a1;
  v147 = a3;
  v144 = a2;
  v6 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v133 = &v119 - v8;
  v143 = type metadata accessor for UUID();
  v136 = *(v143 - 8);
  v9 = *(v136 + 64);
  v10 = __chkstk_darwin(v143);
  v142 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v141 = &v119 - v12;
  v140 = type metadata accessor for Logger();
  v139 = *(v140 - 8);
  v13 = v139[8];
  v14 = __chkstk_darwin(v140);
  v135 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v134 = &v119 - v17;
  v18 = __chkstk_darwin(v16);
  v137 = &v119 - v19;
  __chkstk_darwin(v18);
  v21 = &v119 - v20;
  v22 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v119 - v24;
  v26 = type metadata accessor for Errors();
  v27 = *(v26 - 8);
  v28 = *(v27 + 8);
  v29 = __chkstk_darwin(v26);
  v145 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v119 - v31;
  v33 = type metadata accessor for DKXPCClientApplication(0);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v37 = (&v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v37);
  sub_1000B5150(v37 + *(v34 + 32), v25, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v27 + 6))(v25, 1, v26) != 1)
  {
    (*(v27 + 4))(v32, v25, v26);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v27 + 2))(v61, v32, v26);
    v62 = _convertErrorToNSError(_:)();
    (*(a5 + 16))(a5, 0, v62);

    (*(v27 + 1))(v32, v26);
    goto LABEL_15;
  }

  v132 = a5;
  result = sub_100095C84(v25, &unk_1002A6F30, &unk_10023C4D0);
  v39 = *v37;
  if (*v37)
  {
    v40 = v39;
    v41 = [v40 processIdentifier];
    if (v146 && v147)
    {
      v130 = v41;
      v131 = v37;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v129 = qword_1002B1CF0;
      v42 = sub_1001884E4();
      if (v42 && (type metadata accessor for ActuationController(), v43 = v42, v44 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v43, (v44 & 1) != 0) && (v45 = v43, v46 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v45, (v46 & 1) != 0))
      {
        if (qword_1002A66D8 != -1)
        {
          goto LABEL_44;
        }

        while (1)
        {
          v127 = v45;
          v47 = sub_100093DE8(v140, qword_1002A9110);
          v48 = v139;
          v49 = v139[2];
          v124 = v47;
          v126 = v139 + 2;
          v125 = v49;
          (v49)(v21);
          v50 = v146;
          v51 = v147;

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();

          v122 = v53;
          v128 = v52;
          v54 = os_log_type_enabled(v52, v53);
          v123 = v50;
          if (v54)
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v120 = v56;
            v121 = swift_slowAlloc();
            *&v149 = v121;
            *v55 = 67109634;
            v57 = v130;
            *(v55 + 4) = v130;
            *(v55 + 8) = 2112;
            *(v55 + 10) = v50;
            *v56 = v146;
            *(v55 + 18) = 2080;
            v58 = v50;
            *(v55 + 20) = sub_1000952D4(v144, v51, &v149);
            v59 = v128;
            _os_log_impl(&_mh_execute_header, v128, v122, "Client %d de-registering for feedback for %@ %s", v55, 0x1Cu);
            sub_100095C84(v120, &unk_1002A6F60, &unk_10023C4E0);

            sub_100095808(v121);

            v60 = v140;
            v147 = v139[1];
            v147(v21);
          }

          else
          {

            v70 = v48[1];
            v60 = v140;
            v147 = v70;
            v70(v21);
            v57 = v130;
          }

          v71 = v40;
          v72 = v39;
          v39 = v129;
          sub_100193938(v57, v72);
          v74 = v73;

          v75 = v131;
          if ((v74 & 1) == 0)
          {
            break;
          }

          v76 = v131;
          v40 = v123;
          sub_100191E3C(v57);
          if (*(v138 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_debugAllowed))
          {
            DockCoreInfo.type.getter();
            v77 = DockCoreAccessoryType.rawValue.getter();
            if (v77 == DockCoreAccessoryType.rawValue.getter())
            {
              v78 = v134;
              v125(v134, v124, v60);
              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                *v81 = 0;
                _os_log_impl(&_mh_execute_header, v79, v80, "stopActuatorFeedback: noop for mock device", v81, 2u);
                v60 = v140;
              }

              (v147)(v78, v60);
              (*(v132 + 16))(v132, 1, 0);

              v82 = v76;
              return sub_1000BAA28(v82);
            }
          }

          v146 = v71;
          v90 = *&v39[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager];
          v138 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v91 = *&v90[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
          v144 = v90;
          v21 = v90;
          v92 = v91;
          OS_dispatch_semaphore.wait()();

          v93 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v145 = v21;
          v45 = *&v21[v93];
          v26 = v45[2];

          if (!v26)
          {
LABEL_33:

            v100 = *&v144[v138];
            OS_dispatch_semaphore.signal()();

            v151 = 0;
            v149 = 0u;
            v150 = 0u;
LABEL_35:

            v102 = v132;
            v103 = v131;
            v104 = v140;
            v105 = v127;
            v106 = v146;
            if (*(&v150 + 1))
            {
              sub_100095274(&unk_1002A7A90, &unk_10023C960);
              type metadata accessor for DaemonAccessory();
              if (swift_dynamicCast())
              {
                v107 = v148[0];
                v125(v135, v124, v104);
                v108 = Logger.logObject.getter();
                v109 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v108, v109))
                {
                  v110 = swift_slowAlloc();
                  *v110 = 0;
                  _os_log_impl(&_mh_execute_header, v108, v109, "Deregistering for device feedback", v110, 2u);
                }

                v111 = (v147)(v135, v140);
                v112 = *(v107 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
                v113 = __chkstk_darwin(v111);
                *(&v119 - 2) = v107;
                *(&v119 - 2) = v130;
                __chkstk_darwin(v113);
                *(&v119 - 2) = sub_100137CAC;
                *(&v119 - 1) = v114;

                os_unfair_lock_lock(v112 + 4);
                sub_100137D60(v115);
                os_unfair_lock_unlock(v112 + 4);

                v116 = type metadata accessor for TaskPriority();
                v117 = v133;
                (*(*(v116 - 8) + 56))(v133, 1, 1, v116);
                v118 = swift_allocObject();
                v118[2] = 0;
                v118[3] = 0;
                v118[4] = v107;

                sub_1001B6710(0, 0, v117, &unk_10023DEA0, v118);
              }
            }

            else
            {
              sub_100095C84(&v149, &unk_1002A6F40, &unk_10023BE90);
            }

            (*(v102 + 16))(v102, 1, 0);

            v82 = v103;
            return sub_1000BAA28(v82);
          }

          v94 = 0;
          v95 = (v45 + 4);
          v96 = (v136 + 8);
          while (v94 < v45[2])
          {
            sub_1000A097C(v95, v148);
            v97 = *(*sub_1000A09E0(v148, v148[3]) + 24);
            v27 = v141;
            DockCoreInfo.identifier.getter();

            v98 = v142;
            DockCoreInfo.identifier.getter();
            LOBYTE(v97) = static UUID.== infix(_:_:)();
            v39 = *v96;
            v99 = v98;
            v21 = v143;
            (*v96)(v99, v143);
            (v39)(v27, v21);
            if (v97)
            {

              v101 = *&v144[v138];
              OS_dispatch_semaphore.signal()();

              sub_1000A097C(v148, &v149);
              sub_100095808(v148);
              goto LABEL_35;
            }

            ++v94;
            sub_100095808(v148);
            v95 += 40;
            if (v26 == v94)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_44:
          swift_once();
        }

        v83 = v137;
        v125(v137, v124, v60);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "Failed removing client from client list", v86, 2u);
          v60 = v140;
        }

        (v147)(v83, v60);
        v87 = v145;
        *v145 = 0xD000000000000020;
        *(v87 + 1) = 0x8000000100231BF0;
        (*(v27 + 13))(v87, enum case for Errors.UnexpectedError(_:), v26);
        sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
        swift_allocError();
        (*(v27 + 2))(v88, v87, v26);
        v89 = _convertErrorToNSError(_:)();
        (*(v132 + 16))(v132, 0, v89);

        (*(v27 + 1))(v87, v26);
        v66 = v75;
      }

      else
      {
        v67 = v145;
        *v145 = 0xD000000000000010;
        *(v67 + 1) = 0x8000000100231EA0;
        (*(v27 + 13))(v67, enum case for Errors.NotFound(_:), v26);
        sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
        swift_allocError();
        (*(v27 + 2))(v68, v67, v26);
        v69 = _convertErrorToNSError(_:)();
        (*(v132 + 16))(v132, 0, v69);

        (*(v27 + 1))(v67, v26);
        v66 = v131;
      }

      goto LABEL_17;
    }

    v63 = v145;
    *v145 = 0xD000000000000016;
    *(v63 + 1) = 0x8000000100231BD0;
    (*(v27 + 13))(v63, enum case for Errors.NilParams(_:), v26);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v27 + 2))(v64, v63, v26);
    v65 = _convertErrorToNSError(_:)();
    (*(v132 + 16))(v132, 0, v65);

    (*(v27 + 1))(v63, v26);
LABEL_15:
    v66 = v37;
LABEL_17:
    sub_1000BAA28(v66);
  }

  __break(1u);
  return result;
}

uint64_t sub_100128208(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a3;
  v76 = a1;
  v71 = a2;
  v6 = type metadata accessor for Logger();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = v77[8];
  v8 = __chkstk_darwin(v6);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v64 - v10;
  v12 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for Errors();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v74 = (&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v22 = &v64 - v21;
  v23 = type metadata accessor for DKXPCClientApplication(0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v27 = (&v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v27);
  sub_1000B5150(v27 + *(v24 + 32), v15, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v22, v15, v16);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v17 + 16))(v49, v22, v16);
    v50 = _convertErrorToNSError(_:)();
    (*(a5 + 16))(a5, 0, v50);

    (*(v17 + 8))(v22, v16);
    sub_1000BAA28(v27);
  }

  v72 = a5;
  result = sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
  v29 = *v27;
  if (*v27)
  {
    v30 = v29;
    v31 = [v30 processIdentifier];
    v32 = v72;
    v33 = v78;
    v34 = v75;
    v35 = v76;
    if (v76 && v75)
    {
      v70 = v31;
      v69 = v27;
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v36 = sub_100093DE8(v33, qword_1002A9110);
      v67 = v77[2];
      v68 = v36;
      v66 = v77 + 2;
      v67(v11);

      v37 = v35;
      v38 = Logger.logObject.getter();
      v39 = v34;
      v40 = static os_log_type_t.default.getter();

      v41 = v38;
      if (os_log_type_enabled(v38, v40))
      {
        v42 = swift_slowAlloc();
        v64 = v30;
        v65 = v11;
        v43 = v42;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v79 = v45;
        *v43 = 67109634;
        *(v43 + 4) = v70;
        *(v43 + 8) = 2112;
        *(v43 + 10) = v37;
        *v44 = v76;
        *(v43 + 18) = 2080;
        v46 = v37;
        *(v43 + 20) = sub_1000952D4(v71, v39, &v79);
        _os_log_impl(&_mh_execute_header, v41, v40, "Client %d de-registering for trajectory progress feedback for %@ %s", v43, 0x1Cu);
        sub_100095C84(v44, &unk_1002A6F60, &unk_10023C4E0);

        sub_100095808(v45);

        v30 = v64;

        v47 = v77[1];
        v48 = v65;
      }

      else
      {

        v47 = v77[1];
        v48 = v11;
      }

      v55 = v78;
      v47(v48, v78);
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v56 = v30;
      v57 = sub_100195348(v70, v29);

      if (v57)
      {
        (*(v72 + 16))(v72, 1, 0);

        return sub_1000BAA28(v69);
      }

      (v67)(v73, v68, v55);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Failed removing client from client list", v60, 2u);
      }

      v47(v73, v55);
      v61 = v74;
      *v74 = 0xD000000000000020;
      v61[1] = 0x8000000100231BF0;
      (*(v17 + 104))(v61, enum case for Errors.UnexpectedError(_:), v16);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v17 + 16))(v62, v61, v16);
      v63 = _convertErrorToNSError(_:)();
      (*(v72 + 16))(v72, 0, v63);

      (*(v17 + 8))(v61, v16);
      v54 = v69;
    }

    else
    {
      v51 = v74;
      *v74 = 0xD000000000000016;
      v51[1] = 0x8000000100231BD0;
      (*(v17 + 104))(v51, enum case for Errors.NilParams(_:), v16);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v17 + 16))(v52, v51, v16);
      v53 = _convertErrorToNSError(_:)();
      (*(v32 + 16))(v32, 0, v53);

      (*(v17 + 8))(v51, v16);
      v54 = v27;
    }

    sub_1000BAA28(v54);
  }

  __break(1u);
  return result;
}

uint64_t sub_100128AB8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = a5;
  v101 = a2;
  v103 = a1;
  v104 = a4;
  v106 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v107 = v7;
  v108 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v98 = &v91 - v14;
  v15 = __chkstk_darwin(v13);
  v99 = &v91 - v16;
  __chkstk_darwin(v15);
  v102 = &v91 - v17;
  v18 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v91 - v20;
  v22 = type metadata accessor for Errors();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v105 = (&v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v28 = &v91 - v27;
  v29 = type metadata accessor for DKXPCClientApplication(0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v33 = (&v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v33);
  sub_1000B5150(v33 + *(v30 + 32), v21, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    (*(v23 + 32))(v28, v21, v22);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v23 + 16))(v55, v28, v22);
    v56 = _convertErrorToNSError(_:)();
    (*(a6 + 16))(a6, 0, v56);

    (*(v23 + 8))(v28, v22);
LABEL_23:
    sub_1000BAA28(v33);
  }

  sub_100095C84(v21, &unk_1002A6F30, &unk_10023C4D0);
  v34 = a6;
  v35 = v106;
  if (!v106 || !v104 || !v103)
  {
    v57 = v22;
    v58 = v107;
    v59 = v108;
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v60 = sub_100093DE8(v58, qword_1002A9110);
    (*(v59 + 16))(v12, v60, v58);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Client did not provide a system, actuators, or accessory info", v63, 2u);
    }

    (*(v59 + 8))(v12, v58);
    v64 = v105;
    *v105 = 0xD000000000000016;
    v64[1] = 0x8000000100231BD0;
    (*(v23 + 104))(v64, enum case for Errors.NilParams(_:), v57);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v23 + 16))(v65, v64, v57);
    v66 = _convertErrorToNSError(_:)();
    (*(v34 + 16))(v34, 0, v66);

    goto LABEL_22;
  }

  v36 = objc_opt_self();
  v37 = v103;
  v38 = [v36 currentConnection];
  v39 = v107;
  v40 = v108;
  if (!v38)
  {
    v57 = v22;
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v72 = sub_100093DE8(v39, qword_1002A9110);
    (*(v40 + 16))(v102, v72, v39);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Failed fetching current NSXPCConnection, cannot construct client", v75, 2u);
    }

    (*(v40 + 8))(v102, v39);
    v64 = v105;
    *v105 = 0xD000000000000017;
    v64[1] = 0x800000010022FA50;
    (*(v23 + 104))(v64, enum case for Errors.XPCNil(_:), v57);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v23 + 16))(v76, v64, v57);
    v77 = _convertErrorToNSError(_:)();
    (*(v34 + 16))(v34, 0, v77);

LABEL_22:
    (*(v23 + 8))(v64, v57);
    goto LABEL_23;
  }

  v102 = v38;
  v97 = v22;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v103 = v37;
  v41 = sub_1001884E4();
  v42 = v101;
  if (!v41)
  {
    goto LABEL_24;
  }

  type metadata accessor for ActuationController();
  v43 = v41;
  v44 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)();

  if ((v44 & 1) == 0 || (v45 = v43, v46 = dispatch thunk of DockCoreAccessory.hasSystemActuators(name:actuators:)(), v96 = v45, v45, (v46 & 1) == 0))
  {
LABEL_24:
    v68 = v105;
    *v105 = 0xD000000000000019;
    v68[1] = 0x8000000100231E50;
    v69 = v97;
    (*(v23 + 104))(v68, enum case for Errors.NotFound(_:), v97);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v23 + 16))(v70, v68, v69);
    v71 = _convertErrorToNSError(_:)();
    (*(v34 + 16))(v34, 0, v71);

    (*(v23 + 8))(v68, v69);
    goto LABEL_23;
  }

  v95 = v34;
  v47 = v103;
  v48 = sub_1001A229C(v103, v42, v35);
  if (!v48)
  {
    v94 = 0;
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v49 = sub_100093DE8(v107, qword_1002A9110);
    v50 = v99;
    v92 = *(v108 + 16);
    v93 = v49;
    v92(v99);
    v51 = v102;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 67109120;
      *(v54 + 4) = [v51 processIdentifier];

      _os_log_impl(&_mh_execute_header, v52, v53, "Trying to start feedback from accessory for %d", v54, 8u);
    }

    else
    {

      v52 = v51;
    }

    v78 = *(v108 + 8);
    v108 += 8;
    v78(v50, v107);
    v79 = [v51 processIdentifier];
    v80 = v96;
    v47 = v103;
    v81 = v35;
    v82 = v80;
    LOBYTE(v79) = sub_100125728(v79, v103, v101, v81, v104);

    v48 = v94;
    if ((v79 & 1) == 0)
    {
      v83 = v98;
      (v92)(v98, v93, v107);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&_mh_execute_header, v84, v85, "Failed starting feedback from accessory", v86, 2u);
      }

      v78(v83, v107);
      v87 = v105;
      *v105 = 0xD000000000000027;
      v87[1] = 0x8000000100231E70;
      v88 = v97;
      (*(v23 + 104))(v87, enum case for Errors.UnexpectedError(_:), v97);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v23 + 16))(v89, v87, v88);
      v90 = _convertErrorToNSError(_:)();
      (*(v95 + 16))(v95, 0, v90);

      (*(v23 + 8))(v87, v88);
      goto LABEL_23;
    }
  }

  (*(v95 + 16))(v95, v48, 0);

  return sub_1000BAA28(v33);
}

uint64_t sub_1001297A0(int a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v73 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v75 = v3;
  v76 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v68 - v8;
  v9 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v71 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v78 = (&v68 - v14);
  __chkstk_darwin(v13);
  v16 = &v68 - v15;
  v17 = type metadata accessor for Errors();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DKAPIUsageType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DKXPCClientApplication(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v30);
  if (v30[2])
  {
    v31 = v30[1];
    v79 = v30[2];
    v80 = v31;
  }

  else
  {
    v79 = 0xE700000000000000;
    v80 = 0x6E776F6E6B6E75;
  }

  (*(v23 + 104))(v26, enum case for DKAPIUsageType.setSystemTrackingEnabled(_:), v22);

  v32 = DKAPIUsageType.rawValue.getter();
  (*(v23 + 8))(v26, v22);
  sub_1000B5150(v30 + *(v27 + 24), v16, &unk_1002A6F30, &unk_10023C4D0);
  v33 = v18;
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v42 = swift_allocError();
    (*(v18 + 16))(v43, v21, v17);
    swift_willThrow();
    (*(v18 + 8))(v21, v17);
    v35 = v79;
    v39 = v80;
LABEL_16:
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v81 = v42;
    swift_errorRetain();
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    v50 = v78;
    v51 = swift_dynamicCast();
    (*(v33 + 56))(v50, v51 ^ 1u, 1, v17);
    sub_10018C604(v39, v35, v32, v50);

    sub_1000BAA28(v30);
    return sub_100095C84(v50, &unk_1002A6F30, &unk_10023C4D0);
  }

  result = sub_100095C84(v16, &unk_1002A6F30, &unk_10023C4D0);
  v35 = v79;
  if (!*v30)
  {
    __break(1u);
    return result;
  }

  v70 = *v30;
  v36 = [v70 processIdentifier];
  v37 = cameracaptureIdentifier.getter();
  v39 = v80;
  v41 = v75;
  v40 = v76;
  if (v80 == v37 && v35 == v38)
  {

LABEL_11:
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v45 = sub_100093DE8(v41, qword_1002A9110);
    (*(v40 + 16))(v77, v45, v41);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Invalid client, can't disable tracking from self", v48, 2u);
      v40 = v76;
    }

    (*(v40 + 8))(v77, v41);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v42 = swift_allocError();
    strcpy(v49, "invalid client");
    v49[15] = -18;
    (*(v33 + 104))(v49, enum case for Errors.InvalidParameter(_:), v17);
    swift_willThrow();

    goto LABEL_16;
  }

  v69 = v36;
  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    goto LABEL_11;
  }

  v52 = v73;
  v53 = 4605519;
  if (v73)
  {
    v53 = 20047;
  }

  v78 = v53;
  if (v73)
  {
    v54 = 0xE200000000000000;
  }

  else
  {
    v54 = 0xE300000000000000;
  }

  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v55 = sub_100093DE8(v41, qword_1002A9110);
  (*(v40 + 16))(v74, v55, v41);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v58 = os_log_type_enabled(v56, v57);
  v68 = v32;
  if (v58)
  {
    v59 = v35;
    v60 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v60 = 136315394;
    *(v60 + 4) = sub_1000952D4(v80, v59, &v81);
    *(v60 + 12) = 2080;
    v61 = sub_1000952D4(v78, v54, &v81);

    *(v60 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v56, v57, "Client %s requested set system tracking %s", v60, 0x16u);
    swift_arrayDestroy();
    v52 = v73;
  }

  else
  {
  }

  (*(v40 + 8))(v74, v75);
  v63 = v71;
  v62 = v72;
  v64 = v70;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v65 = v52 & 1;
  v66 = v79;
  v67 = v80;
  sub_100195600(v80, v79, v65, v69);
  (*(v33 + 56))(v63, 1, 1, v17);
  sub_10018C604(v67, v66, v68, v63);

  sub_100095C84(v63, &unk_1002A6F30, &unk_10023C4D0);
  (*(v62 + 16))(v62, 1, 0);

  return sub_1000BAA28(v30);
}

uint64_t sub_10012A18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v75 = a1;
  v66 = type metadata accessor for Logger();
  v68 = *(v66 - 8);
  v3 = *(v68 + 64);
  __chkstk_darwin(v66);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v69 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v70 = (&v64 - v10);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = type metadata accessor for Errors();
  v14 = *(v13 - 8);
  v73 = v13;
  v74 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DKAPIUsageType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DKXPCClientApplication(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v26);
  if (v26[2])
  {
    v27 = v26[1];
    v28 = v26[2];
  }

  else
  {
    v28 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E75;
  }

  (*(v19 + 104))(v22, enum case for DKAPIUsageType.setFraming(_:), v18);

  LODWORD(v29) = DKAPIUsageType.rawValue.getter();
  (*(v19 + 8))(v22, v18);
  v30 = *(v23 + 24);
  v71 = v26;
  sub_1000B5150(v26 + v30, v12, &unk_1002A6F30, &unk_10023C4D0);
  v32 = v73;
  v31 = v74;
  v33 = &unk_1002B1000;
  if ((*(v74 + 48))(v12, 1, v73) == 1)
  {
    v65 = v29;
    sub_100095C84(v12, &unk_1002A6F30, &unk_10023C4D0);
    v77 = 0;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v34 = qword_1002B1CF0;
    v64 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v35 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v35 + 4);

    v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v37 = *(v34 + v36);
    v38 = 1 << *(v37 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v31 = v39 & *(v37 + 64);
    v29 = (v38 + 63) >> 6;
    v40 = *(v34 + v36);

    v33 = 0;
    while (v31)
    {
LABEL_16:
      v43 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v44 = v43 | (v33 << 6);
      v45 = (*(v37 + 48) + 16 * v44);
      v36 = *(*(v37 + 56) + 8 * v44);
      v46 = *v45 == v27 && v45[1] == v28;
      if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_100113E40(v41, v27, v28, v75, &v77);
      }
    }

    while (1)
    {
      v42 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v42 >= v29)
      {
        break;
      }

      v31 = *(v37 + 64 + 8 * v42);
      ++v33;
      if (v31)
      {
        v33 = v42;
        goto LABEL_16;
      }
    }

    v48 = *(v34 + v64);

    os_unfair_lock_unlock(v48 + 4);

    if (v77)
    {
      v49 = v69;
      (*(v74 + 56))(v69, 1, 1, v32);
      sub_10018C604(v27, v28, v65, v49);

      sub_100095C84(v49, &unk_1002A6F30, &unk_10023C4D0);
      (*(v72 + 16))(v72, 1, 0);
      return sub_1000BAA28(v71);
    }

    v31 = v74;
    LODWORD(v29) = v65;
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v51 = v66;
    v52 = sub_100093DE8(v66, qword_1002A9110);
    v54 = v67;
    v53 = v68;
    (*(v68 + 16))(v67, v52, v51);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v76 = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_1000952D4(v27, v28, &v76);
      _os_log_impl(&_mh_execute_header, v55, v56, "No clients registered for config changes on %s", v57, 0xCu);
      sub_100095808(v58);

      (*(v68 + 8))(v67, v51);
    }

    else
    {

      (*(v53 + 8))(v54, v51);
    }

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v36 = swift_allocError();
    *v59 = 0xD000000000000014;
    v59[1] = 0x8000000100231E10;
    (*(v31 + 104))(v59, enum case for Errors.UnexpectedError(_:), v32);
    swift_willThrow();
    v33 = &unk_1002B1000;
  }

  else
  {
    (*(v31 + 32))(v17, v12, v32);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v36 = swift_allocError();
    (*(v31 + 16))(v47, v17, v32);
    swift_willThrow();
    (*(v31 + 8))(v17, v32);
  }

  v60 = _convertErrorToNSError(_:)();
  (*(v72 + 16))(v72, 0, v60);

  if (qword_1002A6780 != -1)
  {
LABEL_34:
    swift_once();
  }

  v61 = *(v33 + 3312);
  v77 = v36;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v62 = v70;
  v63 = swift_dynamicCast();
  (*(v31 + 56))(v62, v63 ^ 1u, 1, v32);
  sub_10018C604(v27, v28, v29, v62);

  sub_1000BAA28(v71);
  return sub_100095C84(v62, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10012AAD8(void *a1, void *a2, uint64_t a3, void (**a4)(const void *, void, void *))
{
  v150 = a1;
  v151 = a2;
  v135 = type metadata accessor for DispatchWorkItemFlags();
  v134 = *(v135 - 8);
  v5 = *(v134 + 64);
  __chkstk_darwin(v135);
  v132 = v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DispatchQoS();
  v131 = *(v133 - 8);
  v7 = *(v131 + 64);
  __chkstk_darwin(v133);
  v130 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchTime();
  v129 = *(v143 - 8);
  v9 = *(v129 + 64);
  v10 = __chkstk_darwin(v143);
  v127 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v128 = v116 - v12;
  v126 = type metadata accessor for DispatchQoS.QoSClass();
  v125 = *(v126 - 8);
  v13 = *(v125 + 64);
  __chkstk_darwin(v126);
  v124 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Logger();
  v15 = *(v152 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v152);
  v123 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v154 = v116 - v19;
  v20 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v144 = (v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v25 = v116 - v24;
  v149 = type metadata accessor for Errors();
  v156 = *(v149 - 8);
  v26 = *(v156 + 64);
  __chkstk_darwin(v149);
  v28 = v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DKAPIUsageType();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DKXPCClientApplication(0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = swift_allocObject();
  *(v38 + 16) = a4;
  v145 = a4;
  _Block_copy(a4);
  sub_10010D498(v37);
  v39 = v37[2];
  if (v39)
  {
    v155 = v37[1];
    v158 = v39;
  }

  else
  {
    v158 = 0xE700000000000000;
    v155 = 0x6E776F6E6B6E75;
  }

  (*(v30 + 104))(v33, enum case for DKAPIUsageType.selectSubject(_:), v29);

  v148 = DKAPIUsageType.rawValue.getter();
  (*(v30 + 8))(v33, v29);
  sub_1000B5150(v37 + *(v34 + 24), v25, &unk_1002A6F30, &unk_10023C4D0);
  v40 = v156;
  v41 = v149;
  if ((*(v156 + 48))(v25, 1, v149) == 1)
  {
    v122 = v38;
    sub_100095C84(v25, &unk_1002A6F30, &unk_10023C4D0);
    v42 = v158;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v43 = qword_1002B1CF0;
    v120 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v44 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v44 + 4);

    v45 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v121 = v43;
    v46 = *(v43 + v45);
    v47 = v46 + 64;
    v48 = 1 << *(v46 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v46 + 64);
    v51 = ((v48 + 63) >> 6);
    v136 = (v15 + 16);
    v137 = (v15 + 8);
    v157 = v46;

    v153 = 0;
    v52 = 0;
    v116[1] = 0;
    *&v53 = 136315650;
    v119 = v53;
    v54 = v155;
    v55 = v152;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v50)
          {
            while (1)
            {
              v56 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                __break(1u);
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

              if (v56 >= v51)
              {
                break;
              }

              v50 = *(v47 + 8 * v56);
              ++v52;
              if (v50)
              {
                v52 = v56;
                goto LABEL_15;
              }
            }

            v82 = v121;
            v83 = v120;
            v84 = *(v121 + v120);

            os_unfair_lock_unlock(v84 + 4);

            if (v153)
            {
              v85 = *(v82 + v83);

              os_unfair_lock_lock(v85 + 4);

              v86 = v83;
              v87 = swift_allocObject();
              v157 = sub_100137D58;
              v88 = v122;
              *(v87 + 16) = sub_100137D58;
              *(v87 + 24) = v88;
              v89 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__subjectSelectionCompletions;
              swift_beginAccess();

              v90 = *(v82 + v89);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v160 = *(v82 + v89);
              *(v82 + v89) = 0x8000000000000000;
              sub_1001EBB3C(sub_100137D30, v87, v54, v42, isUniquelyReferenced_nonNull_native);

              *(v82 + v89) = v160;
              swift_endAccess();
              v92 = *(v82 + v86);

              os_unfair_lock_unlock(v92 + 4);

              sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
              v93 = v125;
              v94 = v124;
              v95 = v126;
              (*(v125 + 104))(v124, enum case for DispatchQoS.QoSClass.default(_:), v126);
              v155 = static OS_dispatch_queue.global(qos:)();
              (*(v93 + 8))(v94, v95);
              v96 = v127;
              static DispatchTime.now()();
              v97 = v128;
              + infix(_:_:)();
              v156 = *(v129 + 8);
              (v156)(v96, v143);
              v98 = swift_allocObject();
              *(v98 + 16) = v54;
              *(v98 + 24) = v42;
              *(v98 + 32) = v157;
              *(v98 + 40) = v88;
              *(v98 + 48) = v148;
              aBlock[4] = sub_100137CFC;
              aBlock[5] = v98;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100147FC8;
              aBlock[3] = &unk_100278230;
              v99 = _Block_copy(aBlock);

              v100 = v130;
              static DispatchQoS.unspecified.getter();
              v160 = _swiftEmptyArrayStorage;
              sub_1000BAAE8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
              sub_100095274(&unk_1002A6B60, qword_10023AE10);
              sub_1000BAB30();
              v101 = v132;
              v102 = v135;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v103 = v155;
              OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
              _Block_release(v99);

              (*(v134 + 8))(v101, v102);
              (*(v131 + 8))(v100, v133);
              (v156)(v97, v143);
              sub_1000BAA28(v37);
            }

            if (qword_1002A66D8 != -1)
            {
              swift_once();
            }

            v104 = sub_100093DE8(v55, qword_1002A9110);
            v105 = v123;
            (*v136)(v123, v104, v55);

            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.error.getter();

            v108 = os_log_type_enabled(v106, v107);
            LODWORD(v52) = v148;
            v51 = v144;
            if (v108)
            {
              v109 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              v111 = v54;
              v112 = v110;
              aBlock[0] = v110;
              *v109 = 136315138;
              *(v109 + 4) = sub_1000952D4(v111, v42, aBlock);
              _os_log_impl(&_mh_execute_header, v106, v107, "No clients registered for config changes on %s", v109, 0xCu);
              sub_100095808(v112);

              (*v137)(v123, v152);
            }

            else
            {

              (*v137)(v105, v152);
            }

            v81 = v145;
            sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
            v54 = swift_allocError();
            *v113 = 0xD000000000000014;
            v113[1] = 0x8000000100231E10;
            (*(v156 + 104))(v113, enum case for Errors.UnexpectedError(_:), v41);
            swift_willThrow();
            goto LABEL_48;
          }

LABEL_15:
          v57 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          v58 = v57 | (v52 << 6);
          v59 = (*(v157 + 6) + 16 * v58);
          v60 = *(*(v157 + 7) + 8 * v58);
          v61 = *v59 == v54 && v59[1] == v42;
        }

        while (!v61 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
        if (v60 >> 62)
        {
          break;
        }

        result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_22;
        }
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_22:
        v140 = result;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v141 = v60 & 0xC000000000000001;

        v54 = 0;
        v142 = v60;
        v118 = v37;
        v158 = v42;
        v117 = v51;
        do
        {
          if (v141)
          {
            v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v63 = *(v60 + 8 * v54 + 32);
          }

          v64 = v63;
          v65 = [v63 remoteObjectProxy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100095274(&qword_1002A9310, &qword_10023DE70);
          if (swift_dynamicCast())
          {
            v139 = v64;
            v138 = v160;
            v66 = v151;
            v67 = v154;
            if (qword_1002A66D8 != -1)
            {
              swift_once();
            }

            v68 = sub_100093DE8(v55, qword_1002A9110);
            (*v136)(v67, v68, v55);

            v41 = v150;
            v69 = v66;
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.default.getter();
            v146 = v69;

            v147 = v41;

            if (os_log_type_enabled(v70, v71))
            {
              v41 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              aBlock[0] = v73;
              *v41 = v119;
              *(v41 + 1) = sub_1000952D4(v155, v158, aBlock);
              *(v41 + 6) = 2112;
              v74 = v147;
              *(v41 + 14) = v147;
              *(v41 + 11) = 2112;
              v75 = v146;
              *(v41 + 3) = v146;
              v76 = v151;
              *v72 = v150;
              v72[1] = v76;
              v77 = v74;
              v78 = v75;
              _os_log_impl(&_mh_execute_header, v70, v71, "Notifying client that %s just set subject selection to %@, %@", v41, 0x20u);
              sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
              swift_arrayDestroy();

              sub_100095808(v73);
            }

            v55 = v152;
            (*v137)(v154, v152);
            v42 = v118;
            v60 = v142;
            v51 = v117;
            v37 = v138;
            [v138 selectSubjectAtEventWithX:v147 y:v146];
            swift_unknownObjectRelease();

            if (__OFADD__(v153++, 1))
            {
              goto LABEL_52;
            }

            v37 = v42;
            v42 = v158;
          }

          else
          {

            v60 = v142;
          }

          ++v54;
        }

        while (v140 != v54);

        v54 = v155;
        v41 = v149;
      }
    }
  }

  (*(v40 + 32))(v28, v25, v41);
  sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
  v54 = swift_allocError();
  (*(v40 + 16))(v80, v28, v41);
  swift_willThrow();
  (*(v40 + 8))(v28, v41);
  v81 = v145;
  v42 = v158;
  LODWORD(v52) = v148;
  v51 = v144;
LABEL_48:
  v114 = _convertErrorToNSError(_:)();
  v81[2](v81, 0, v114);

  if (qword_1002A6780 != -1)
  {
LABEL_53:
    swift_once();
  }

  aBlock[0] = v54;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v115 = swift_dynamicCast();
  (*(v156 + 56))(v51, v115 ^ 1u, 1, v41);
  sub_10018C604(v155, v42, v52, v51);

  sub_1000BAA28(v37);
  sub_100095C84(v51, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10012BE14(uint64_t a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v112 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  __chkstk_darwin(v4);
  v108 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DispatchQoS();
  v107 = *(v109 - 8);
  v7 = *(v107 + 64);
  __chkstk_darwin(v109);
  v106 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DispatchTime();
  v104 = *(v105 - 8);
  v9 = *(v104 + 64);
  v10 = __chkstk_darwin(v105);
  v102 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v103 = &v94 - v12;
  v101 = type metadata accessor for DispatchQoS.QoSClass();
  v100 = *(v101 - 8);
  v13 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Logger();
  v96 = *(v97 - 8);
  v15 = *(v96 + 64);
  __chkstk_darwin(v97);
  v98 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v113 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v22 = &v94 - v21;
  v23 = type metadata accessor for Errors();
  v24 = *(v23 - 8);
  v117 = v23;
  v118 = v24;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DKAPIUsageType();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DKXPCClientApplication(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (&v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = swift_allocObject();
  *(v116 + 16) = a3;
  v114 = a3;
  _Block_copy(a3);
  sub_10010D498(v36);
  if (v36[2])
  {
    v37 = v36[1];
    v38 = v36[2];
  }

  else
  {
    v38 = 0xE700000000000000;
    v37 = 0x6E776F6E6B6E75;
  }

  (*(v29 + 104))(v32, enum case for DKAPIUsageType.selectSubject(_:), v28);

  LODWORD(v39) = DKAPIUsageType.rawValue.getter();
  (*(v29 + 8))(v32, v28);
  v40 = *(v33 + 24);
  v115 = v36;
  sub_1000B5150(v36 + v40, v22, &unk_1002A6F30, &unk_10023C4D0);
  v41 = v117;
  v42 = v118;
  if ((*(v118 + 48))(v22, 1, v117) == 1)
  {
    v95 = v39;
    sub_100095C84(v22, &unk_1002A6F30, &unk_10023C4D0);
    v121 = 0;
    v43 = v37;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v42 = qword_1002B1CF0;
    v94 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v44 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v44 + 4);

    v45 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v46 = *(v42 + v45);
    v47 = 1 << *(v46 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v46 + 64);
    v41 = (v47 + 63) >> 6;

    v39 = 0;
    v50 = v112;
    while (v49)
    {
LABEL_16:
      v53 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v54 = v53 | (v39 << 6);
      v55 = (*(v46 + 48) + 16 * v54);
      v56 = *(*(v46 + 56) + 8 * v54);
      v57 = *v55 == v43 && v55[1] == v38;
      if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_100114304(v51, v43, v38, v50, &v121);
      }
    }

    while (1)
    {
      v52 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v52 >= v41)
      {
        break;
      }

      v49 = *(v46 + 64 + 8 * v52);
      ++v39;
      if (v49)
      {
        v39 = v52;
        goto LABEL_16;
      }
    }

    v59 = v94;
    v60 = *(v42 + v94);

    os_unfair_lock_unlock(v60 + 4);

    if (v121)
    {
      v61 = *(v42 + v59);

      os_unfair_lock_lock(v61 + 4);

      v62 = swift_allocObject();
      v63 = v116;
      *(v62 + 16) = sub_100137D58;
      *(v62 + 24) = v63;
      v64 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__subjectSelectionCompletions;
      swift_beginAccess();

      v65 = *(v42 + v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = *(v42 + v64);
      *(v42 + v64) = 0x8000000000000000;
      sub_1001EBB3C(sub_100137D30, v62, v43, v38, isUniquelyReferenced_nonNull_native);

      *(v42 + v64) = v120;
      swift_endAccess();
      v67 = *(v42 + v59);

      os_unfair_lock_unlock(v67 + 4);

      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
      v68 = v100;
      v69 = v99;
      v70 = v101;
      (*(v100 + 104))(v99, enum case for DispatchQoS.QoSClass.default(_:), v101);
      v117 = static OS_dispatch_queue.global(qos:)();
      (*(v68 + 8))(v69, v70);
      v71 = v102;
      static DispatchTime.now()();
      v72 = v103;
      + infix(_:_:)();
      v118 = *(v104 + 8);
      v73 = v105;
      (v118)(v71, v105);
      v74 = swift_allocObject();
      *(v74 + 16) = v43;
      *(v74 + 24) = v38;
      *(v74 + 32) = sub_100137D58;
      *(v74 + 40) = v63;
      *(v74 + 48) = v95;
      aBlock[4] = sub_1001373EC;
      aBlock[5] = v74;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_100278190;
      v75 = _Block_copy(aBlock);

      v76 = v106;
      static DispatchQoS.unspecified.getter();
      v120 = _swiftEmptyArrayStorage;
      sub_1000BAAE8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      v77 = v108;
      v78 = v111;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v79 = v117;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v75);

      (*(v110 + 8))(v77, v78);
      (*(v107 + 8))(v76, v109);
      (v118)(v72, v73);
      sub_1000BAA28(v115);
    }

    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v80 = v97;
    v81 = sub_100093DE8(v97, qword_1002A9110);
    v82 = v96;
    v83 = v98;
    (*(v96 + 16))(v98, v81, v80);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    v86 = os_log_type_enabled(v84, v85);
    LODWORD(v39) = v95;
    v41 = v117;
    if (v86)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      aBlock[0] = v88;
      *v87 = 136315138;
      *(v87 + 4) = sub_1000952D4(v43, v38, aBlock);
      _os_log_impl(&_mh_execute_header, v84, v85, "No clients registered for config changes on %s", v87, 0xCu);
      sub_100095808(v88);

      (*(v82 + 8))(v98, v80);
    }

    else
    {

      (*(v82 + 8))(v83, v80);
    }

    v42 = v118;
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v46 = swift_allocError();
    *v89 = 0xD000000000000014;
    v89[1] = 0x8000000100231E10;
    (*(v42 + 104))(v89, enum case for Errors.UnexpectedError(_:), v41);
    swift_willThrow();
  }

  else
  {
    (*(v42 + 32))(v27, v22, v41);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v46 = swift_allocError();
    (*(v42 + 16))(v58, v27, v41);
    swift_willThrow();
    (*(v42 + 8))(v27, v41);
    v43 = v37;
  }

  v90 = _convertErrorToNSError(_:)();
  v114[2](v114, 0, v90);

  if (qword_1002A6780 != -1)
  {
LABEL_35:
    swift_once();
  }

  aBlock[0] = v46;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v91 = v113;
  v92 = swift_dynamicCast();
  (*(v42 + 56))(v91, v92 ^ 1u, 1, v41);
  sub_10018C604(v43, v38, v39, v91);

  sub_1000BAA28(v115);
  sub_100095C84(v91, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10012CCE8(double a1, double a2, double a3, double a4, uint64_t a5, void (**a6)(const void *, void, void *))
{
  v118 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v118 - 8);
  v11 = *(v117 + 64);
  __chkstk_darwin(v118);
  v115 = &v101[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = type metadata accessor for DispatchQoS();
  v114 = *(v116 - 8);
  v13 = *(v114 + 64);
  __chkstk_darwin(v116);
  v113 = &v101[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = type metadata accessor for DispatchTime();
  v111 = *(v112 - 8);
  v15 = *(v111 + 64);
  v16 = __chkstk_darwin(v112);
  v109 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v110 = &v101[-v18];
  v108 = type metadata accessor for DispatchQoS.QoSClass();
  v107 = *(v108 - 8);
  v19 = *(v107 + 64);
  __chkstk_darwin(v108);
  v106 = &v101[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = type metadata accessor for Logger();
  v103 = *(v104 - 8);
  v21 = *(v103 + 64);
  __chkstk_darwin(v104);
  v105 = &v101[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v119 = &v101[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v28 = &v101[-v27];
  v29 = type metadata accessor for Errors();
  v30 = *(v29 - 8);
  v123 = v29;
  v124 = v30;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v101[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for DKAPIUsageType();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v101[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = type metadata accessor for DKXPCClientApplication(0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = &v101[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = swift_allocObject();
  *(v122 + 16) = a6;
  v120 = a6;
  _Block_copy(a6);
  sub_10010D498(v42);
  if (v42[2])
  {
    v43 = v42[1];
    v44 = v42[2];
  }

  else
  {
    v44 = 0xE700000000000000;
    v43 = 0x6E776F6E6B6E75;
  }

  (*(v35 + 104))(v38, enum case for DKAPIUsageType.setRegionOfInterest(_:), v34);

  LODWORD(v45) = DKAPIUsageType.rawValue.getter();
  (*(v35 + 8))(v38, v34);
  v46 = *(v39 + 24);
  v121 = v42;
  sub_1000B5150(v42 + v46, v28, &unk_1002A6F30, &unk_10023C4D0);
  v47 = v123;
  v48 = v124;
  v49 = &unk_1002B1000;
  if ((*(v124 + 48))(v28, 1, v123) == 1)
  {
    v102 = v45;
    sub_100095C84(v28, &unk_1002A6F30, &unk_10023C4D0);
    v127 = 0;
    v50 = v43;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v48 = qword_1002B1CF0;
    v51 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v52 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v52 + 4);

    v53 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v54 = *(v48 + v53);
    v55 = 1 << *(v54 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v54 + 64);
    v45 = (v55 + 63) >> 6;

    v47 = 0;
    while (v57)
    {
LABEL_16:
      v60 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v61 = v60 | (v47 << 6);
      v62 = (*(v54 + 48) + 16 * v61);
      v49 = *(*(v54 + 56) + 8 * v61);
      v63 = *v62 == v50 && v62[1] == v44;
      if (v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_100114BEC(v58, v50, v44, &v127, a1, a2, a3, a4);
      }
    }

    while (1)
    {
      v59 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v59 >= v45)
      {
        break;
      }

      v57 = *(v54 + 64 + 8 * v59);
      ++v47;
      if (v57)
      {
        v47 = v59;
        goto LABEL_16;
      }
    }

    v65 = *(v48 + v51);

    os_unfair_lock_unlock(v65 + 4);

    if (v127)
    {
      v66 = *(v48 + v51);

      os_unfair_lock_lock(v66 + 4);

      v67 = swift_allocObject();
      v68 = v51;
      v69 = v122;
      *(v67 + 16) = sub_100137354;
      *(v67 + 24) = v69;
      v70 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rectOfInterestCompletions;
      swift_beginAccess();

      v71 = *(v48 + v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126 = *(v48 + v70);
      *(v48 + v70) = 0x8000000000000000;
      sub_1001EBB3C(sub_1001373A8, v67, v50, v44, isUniquelyReferenced_nonNull_native);

      *(v48 + v70) = v126;
      swift_endAccess();
      v73 = *(v48 + v68);

      os_unfair_lock_unlock(v73 + 4);

      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
      v74 = v107;
      v75 = v106;
      v76 = v108;
      (*(v107 + 104))(v106, enum case for DispatchQoS.QoSClass.default(_:), v108);
      v123 = static OS_dispatch_queue.global(qos:)();
      (*(v74 + 8))(v75, v76);
      v77 = v109;
      static DispatchTime.now()();
      v78 = v110;
      + infix(_:_:)();
      v124 = *(v111 + 8);
      v79 = v112;
      (v124)(v77, v112);
      v80 = swift_allocObject();
      *(v80 + 16) = v50;
      *(v80 + 24) = v44;
      *(v80 + 32) = sub_100137354;
      *(v80 + 40) = v69;
      *(v80 + 48) = v102;
      aBlock[4] = sub_1001373DC;
      aBlock[5] = v80;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_1002780F0;
      v81 = _Block_copy(aBlock);

      v82 = v113;
      static DispatchQoS.unspecified.getter();
      v126 = _swiftEmptyArrayStorage;
      sub_1000BAAE8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      v83 = v115;
      v84 = v118;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v85 = v123;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v81);

      (*(v117 + 8))(v83, v84);
      (*(v114 + 8))(v82, v116);
      (v124)(v78, v79);
      sub_1000BAA28(v121);
    }

    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v86 = v104;
    v87 = sub_100093DE8(v104, qword_1002A9110);
    v88 = v103;
    v89 = v105;
    (*(v103 + 16))(v105, v87, v86);

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    v92 = os_log_type_enabled(v90, v91);
    LODWORD(v45) = v102;
    v47 = v123;
    if (v92)
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock[0] = v94;
      *v93 = 136315138;
      *(v93 + 4) = sub_1000952D4(v50, v44, aBlock);
      _os_log_impl(&_mh_execute_header, v90, v91, "No clients registered for config changes on %s", v93, 0xCu);
      sub_100095808(v94);

      (*(v88 + 8))(v105, v86);
    }

    else
    {

      (*(v88 + 8))(v89, v86);
    }

    v48 = v124;
    v49 = &unk_1002B1000;
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v57 = swift_allocError();
    *v95 = 0xD000000000000021;
    v95[1] = 0x8000000100231DC0;
    (*(v48 + 104))(v95, enum case for Errors.InvalidParameter(_:), v47);
    swift_willThrow();
  }

  else
  {
    (*(v48 + 32))(v33, v28, v47);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v57 = swift_allocError();
    (*(v48 + 16))(v64, v33, v47);
    swift_willThrow();
    (*(v48 + 8))(v33, v47);
    v50 = v43;
  }

  v96 = _convertErrorToNSError(_:)();
  v120[2](v120, 0, v96);

  if (qword_1002A6780 != -1)
  {
LABEL_35:
    swift_once();
  }

  v97 = v49[414];
  aBlock[0] = v57;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v98 = v119;
  v99 = swift_dynamicCast();
  (*(v48 + 56))(v98, v99 ^ 1u, 1, v47);
  sub_10018C604(v50, v44, v45, v98);

  sub_1000BAA28(v121);
  sub_100095C84(v98, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10012DBF0(void *a1, uint64_t a2, uint64_t a3)
{
  v149 = a3;
  v144 = a1;
  v143 = type metadata accessor for Logger();
  v142 = *(v143 - 8);
  v3 = *(v142 + 64);
  v4 = __chkstk_darwin(v143);
  v141 = &v124[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v134 = &v124[-v7];
  v8 = __chkstk_darwin(v6);
  v135 = &v124[-v9];
  __chkstk_darwin(v8);
  v139 = &v124[-v10];
  v138 = type metadata accessor for ComponentType();
  v137 = *(v138 - 1);
  v11 = *(v137 + 64);
  __chkstk_darwin(v138);
  v136 = &v124[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UUID();
  v140 = *(v13 - 8);
  v14 = *(v140 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v124[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v124[-v18];
  v20 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v133 = &v124[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v145 = &v124[-v25];
  __chkstk_darwin(v24);
  v27 = &v124[-v26];
  v28 = type metadata accessor for Errors();
  v150 = *(v28 - 8);
  v151 = v28;
  v29 = *(v150 + 64);
  __chkstk_darwin(v28);
  v152 = &v124[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = type metadata accessor for DKAPIUsageType();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v124[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for DKXPCClientApplication(0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = &v124[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010D498(v39);
  v40 = v39[2];
  if (v40)
  {
    v147 = v39[1];
    v148 = v40;
  }

  else
  {
    v147 = 0x6E776F6E6B6E75;
    v148 = 0xE700000000000000;
  }

  (*(v32 + 104))(v35, enum case for DKAPIUsageType.batteryStates(_:), v31);

  v146 = DKAPIUsageType.rawValue.getter();
  (*(v32 + 8))(v35, v31);
  sub_1000B5150(v39 + *(v36 + 24), v27, &unk_1002A6F30, &unk_10023C4D0);
  v42 = v150;
  v41 = v151;
  v43 = 0x1002B1000;
  if ((*(v150 + 48))(v27, 1, v151) != 1)
  {
    v58 = v152;
    (*(v42 + 32))(v152, v27, v41);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v17 = swift_allocError();
    (*(v42 + 16))(v59, v58, v41);
    swift_willThrow();
    (*(v42 + 8))(v58, v41);
    goto LABEL_42;
  }

  result = sub_100095C84(v27, &unk_1002A6F30, &unk_10023C4D0);
  v45 = *v39;
  if (*v39)
  {
    v46 = v45;
    v47 = [v46 processIdentifier];
    if (!v144)
    {
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v17 = swift_allocError();
      *v60 = 0xD000000000000014;
      v60[1] = 0x8000000100231D00;
      (*(v42 + 104))(v60, enum case for Errors.NilParams(_:), v41);
      swift_willThrow();

      goto LABEL_42;
    }

    v125 = v47;
    v127 = v45;
    v131 = v46;
    v132 = v39;
    v48 = qword_1002A6780;
    v152 = v144;
    if (v48 != -1)
    {
      swift_once();
    }

    v126 = qword_1002B1CF0;
    v49 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v128 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v50 = *&v49[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v129 = v49;
    v51 = v49;
    v52 = v50;
    OS_dispatch_semaphore.wait()();

    v43 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v130 = v51;
    v53 = *&v51[v43];
    v39 = *(v53 + 16);

    if (v39)
    {
      v42 = 0;
      v41 = v53 + 32;
      v54 = (v140 + 8);
      while (v42 < *(v53 + 16))
      {
        sub_1000A097C(v41, v153);
        v55 = *(*sub_1000A09E0(v153, v153[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        v43 = static UUID.== infix(_:_:)();
        v56 = *v54;
        (*v54)(v17, v13);
        v56(v19, v13);
        if (v43)
        {

          v61 = *&v129[v128];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v153, &v154);
          sub_100095808(v153);
          goto LABEL_18;
        }

        ++v42;
        sub_100095808(v153);
        v41 += 40;
        if (v39 == v42)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_14:

    v57 = *&v129[v128];
    OS_dispatch_semaphore.signal()();

    v156 = 0;
    v154 = 0u;
    v155 = 0u;
LABEL_18:

    v39 = v132;
    v42 = v150;
    v41 = v151;
    v62 = v143;
    v63 = v142;
    v64 = v141;
    if (*(&v155 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      if (swift_dynamicCast())
      {
        v65 = v153[0];
        v66 = v137;
        v67 = v136;
        v68 = v138;
        (*(v137 + 104))(v136, enum case for ComponentType.Battery(_:), v138);
        v69 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
        swift_beginAccess();
        v70 = *(v65 + v69);
        if (*(v70 + 16))
        {
          v71 = *(v65 + v69);

          v72 = sub_10016D8E0(v67);
          if (v73)
          {
            v141 = v65;
            v74 = *(*(v70 + 56) + 8 * v72);
            v75 = *(v66 + 8);

            v75(v67, v68);

            if (*(v74 + 16))
            {
              if (qword_1002A66D8 != -1)
              {
                swift_once();
              }

              v76 = sub_100093DE8(v62, qword_1002A9110);
              v77 = v63 + 16;
              v78 = *(v63 + 16);
              v79 = v135;
              (v78)(v135, v76, v62);
              v80 = v152;

              v81 = Logger.logObject.getter();
              v82 = v63;
              v83 = static os_log_type_t.default.getter();

              v84 = os_log_type_enabled(v81, v83);
              v140 = v77;
              v139 = v76;
              v138 = v78;
              if (v84)
              {
                v85 = swift_slowAlloc();
                v86 = v80;
                v87 = swift_slowAlloc();
                v152 = swift_slowAlloc();
                v153[0] = v152;
                *v85 = 67109634;
                v88 = v125;
                *(v85 + 4) = v125;
                *(v85 + 8) = 2112;
                *(v85 + 10) = v86;
                *v87 = v144;
                *(v85 + 18) = 2080;
                v89 = v86;
                v90 = Array.description.getter();
                v92 = v91;

                v93 = sub_1000952D4(v90, v92, v153);
                v94 = v88;

                *(v85 + 20) = v93;
                _os_log_impl(&_mh_execute_header, v81, v83, "Client %d registering for battery events for %@, serviceUUID %s", v85, 0x1Cu);
                sub_100095C84(v87, &unk_1002A6F60, &unk_10023C4E0);
                v80 = v86;

                sub_100095808(v152);

                v95 = *(v142 + 8);
                v96 = v143;
                v95(v135, v143);
              }

              else
              {

                v95 = *(v82 + 8);
                v96 = v143;
                v95(v79, v143);
                v94 = v125;
              }

              v115 = v131;
              v116 = sub_100190898(v94, v127, v80);

              v117 = v80;
              if (v116)
              {
                v118 = v133;
                (*(v150 + 56))(v133, 1, 1, v151);
                sub_10018C604(v147, v148, v146, v118);

                sub_100095C84(v118, &unk_1002A6F30, &unk_10023C4D0);
                (*(v149 + 16))(v149, 0);

                return sub_1000BAA28(v39);
              }

              v152 = v80;
              v119 = v134;
              (v138)(v134, v139, v96);
              v120 = Logger.logObject.getter();
              v121 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v120, v121))
              {
                v122 = swift_slowAlloc();
                *v122 = 0;
                _os_log_impl(&_mh_execute_header, v120, v121, "Failed adding client to client list", v122, 2u);
                v119 = v134;
              }

              v95(v119, v96);
              sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
              v41 = v151;
              v17 = swift_allocError();
              *v123 = 0xD00000000000001CLL;
              v123[1] = 0x8000000100231D20;
              v110 = v150;
              (*(v150 + 104))(v123, enum case for Errors.UnexpectedError(_:), v41);
              swift_willThrow();

              goto LABEL_40;
            }

LABEL_35:
            if (qword_1002A66D8 != -1)
            {
              swift_once();
            }

            v105 = sub_100093DE8(v62, qword_1002A9110);
            (*(v63 + 16))(v139, v105, v62);
            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              *v108 = 0;
              _os_log_impl(&_mh_execute_header, v106, v107, "Accessory doesn't have a battery service", v108, 2u);
            }

            (*(v63 + 8))(v139, v62);
            sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
            v17 = swift_allocError();
            *v109 = 0xD000000000000012;
            v109[1] = 0x8000000100231D80;
            v110 = v150;
            (*(v150 + 104))(v109, enum case for Errors.NotFound(_:), v41);
            swift_willThrow();

LABEL_40:
            v42 = v110;

LABEL_41:
            v43 = &unk_1002B1000;
LABEL_42:
            if (qword_1002A6780 == -1)
            {
LABEL_43:
              v111 = *(v43 + 3312);
              v153[0] = v17;
              swift_errorRetain();
              sub_100095274(&qword_1002A7268, &unk_10023C680);
              v112 = v145;
              v113 = swift_dynamicCast();
              (*(v42 + 56))(v112, v113 ^ 1u, 1, v41);
              sub_10018C604(v147, v148, v146, v112);

              sub_100095C84(v112, &unk_1002A6F30, &unk_10023C4D0);
              v114 = _convertErrorToNSError(_:)();
              (*(v149 + 16))(v149, v114);

              return sub_1000BAA28(v39);
            }

LABEL_53:
            swift_once();
            goto LABEL_43;
          }
        }

        (*(v66 + 8))(v67, v68);
        goto LABEL_35;
      }
    }

    else
    {
      sub_100095C84(&v154, &unk_1002A6F40, &unk_10023BE90);
    }

    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v97 = sub_100093DE8(v62, qword_1002A9110);
    (*(v63 + 16))(v64, v97, v62);
    v98 = v152;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v101 = 138412290;
      *(v101 + 4) = v98;
      *v102 = v144;
      v103 = v98;
      _os_log_impl(&_mh_execute_header, v99, v100, "No matching record, can't lookup %@", v101, 0xCu);
      sub_100095C84(v102, &unk_1002A6F60, &unk_10023C4E0);

      v41 = v151;
    }

    (*(v63 + 8))(v64, v62);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v17 = swift_allocError();
    *v104 = 0xD000000000000015;
    v104[1] = 0x8000000100231D40;
    (*(v42 + 104))(v104, enum case for Errors.AccessoryNotReachable(_:), v41);
    swift_willThrow();

    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void sub_10012EFB8(void *a1, void *a2, void (**a3)(void, void, void))
{
  v86 = a2;
  v94 = a1;
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v85 = &v80 - v6;
  v95 = type metadata accessor for UUID();
  v87 = *(v95 - 8);
  v7 = *(v87 + 64);
  v8 = __chkstk_darwin(v95);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v80 - v11;
  v13 = type metadata accessor for Logger();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  __chkstk_darwin(v13);
  v91 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v80 - v18;
  v20 = type metadata accessor for Errors();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v90 = (&v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v26 = &v80 - v25;
  v27 = type metadata accessor for DKXPCClientApplication(0);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v31 = (&v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = swift_allocObject();
  v93 = a3;
  *(v92 + 16) = a3;
  _Block_copy(a3);
  sub_10010D498(v31);
  sub_1000B5150(v31 + *(v28 + 32), v19, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    (*(v21 + 32))(v26, v19, v20);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v21 + 16))(v55, v26, v20);
    v56 = _convertErrorToNSError(_:)();
    type metadata accessor for AccessoryBatteryState();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v93)[2](v93, isa, v56);

    (*(v21 + 8))(v26, v20);
    sub_1000BAA28(v31);
    goto LABEL_17;
  }

  v83 = v21;
  v84 = v20;
  sub_100095C84(v19, &unk_1002A6F30, &unk_10023C4D0);
  if (*v31)
  {
    v32 = *v31;
    v33 = [v32 processIdentifier];
    if (v94)
    {
      LODWORD(v34) = v33;
      v82 = v31;
      v35 = qword_1002A66D8;
      v94 = v94;
      if (v35 != -1)
      {
        goto LABEL_26;
      }

      while (1)
      {
        v36 = v89;
        v37 = sub_100093DE8(v89, qword_1002A9110);
        v38 = v88;
        (*(v88 + 16))(v91, v37, v36);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 67109120;
          *(v41 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v39, v40, "Client %d requesting current battery data", v41, 8u);
        }

        v81 = v32;

        (*(v38 + 8))(v91, v36);
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v42 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v88 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v89 = v42;
        v43 = *&v42[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        v44 = v42;
        v45 = v43;
        OS_dispatch_semaphore.wait()();

        v46 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v91 = v44;
        v47 = *&v44[v46];
        v48 = *(v47 + 16);

        if (!v48)
        {
          break;
        }

        v49 = 0;
        v34 = v47 + 32;
        v32 = (v87 + 8);
        while (v49 < *(v47 + 16))
        {
          sub_1000A097C(v34, v96);
          v50 = *(*sub_1000A09E0(v96, v96[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v50) = static UUID.== infix(_:_:)();
          v51 = *v32;
          v52 = v95;
          (*v32)(v10, v95);
          v51(v12, v52);
          if (v50)
          {
            v53 = v94;

            v64 = *&v89[v88];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v96, &v97);
            sub_100095808(v96);
            goto LABEL_19;
          }

          ++v49;
          sub_100095808(v96);
          v34 += 40;
          if (v48 == v49)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_26:
        swift_once();
      }

LABEL_14:
      v53 = v94;

      v54 = *&v89[v88];
      OS_dispatch_semaphore.signal()();

      v99 = 0;
      v97 = 0u;
      v98 = 0u;
LABEL_19:

      v65 = v92;
      v66 = v93;
      v67 = v84;
      v68 = v83;
      v69 = v81;
      if (*(&v98 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory();
        if (swift_dynamicCast())
        {
          v70 = v96[0];
          v71 = type metadata accessor for TaskPriority();
          v72 = v85;
          (*(*(v71 - 8) + 56))(v85, 1, 1, v71);
          v73 = swift_allocObject();
          v73[2] = 0;
          v73[3] = 0;
          v74 = v86;
          v73[4] = v86;
          v73[5] = v70;
          v73[6] = sub_1001371B8;
          v73[7] = v65;
          v75 = v74;

          sub_1001B6410(0, 0, v72, &unk_10023DE58, v73);

          sub_1000BAA28(v82);
          goto LABEL_24;
        }
      }

      else
      {
        sub_100095C84(&v97, &unk_1002A6F40, &unk_10023BE90);
      }

      v76 = v90;
      *v90 = 0xD000000000000011;
      v76[1] = 0x8000000100231D60;
      (*(v68 + 104))(v76, enum case for Errors.NotFound(_:), v67);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v68 + 16))(v77, v76, v67);
      v78 = _convertErrorToNSError(_:)();
      type metadata accessor for AccessoryBatteryState();
      v79 = Array._bridgeToObjectiveC()().super.isa;
      (v66)[2](v66, v79, v78);

      (*(v68 + 8))(v76, v67);
      sub_1000BAA28(v82);

      goto LABEL_24;
    }

    v58 = v90;
    *v90 = 0xD000000000000016;
    v58[1] = 0x8000000100231BD0;
    v59 = v83;
    v60 = v84;
    (*(v83 + 104))(v58, enum case for Errors.NilParams(_:), v84);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v59 + 16))(v61, v58, v60);
    v62 = _convertErrorToNSError(_:)();
    type metadata accessor for AccessoryBatteryState();
    v63 = Array._bridgeToObjectiveC()().super.isa;
    (v93)[2](v93, v63, v62);

    (*(v59 + 8))(v58, v60);
    sub_1000BAA28(v31);
LABEL_17:

LABEL_24:

    return;
  }

  _Block_release(v93);
  __break(1u);
}

uint64_t sub_10012FB40(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for Logger();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for ComponentType();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_10012FC5C, 0, 0);
}

uint64_t sub_10012FC5C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1001F365C(_swiftEmptyArrayStorage);
  (*(v2 + 104))(v1, enum case for ComponentType.Battery(_:), v3);
  v6 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
  swift_beginAccess();
  v7 = *(v4 + v6);
  if (*(v7 + 16))
  {
    v8 = v0[14];

    v9 = sub_10016D8E0(v8);
    if (v10)
    {
      v11 = v0[14];
      v12 = v0[12];
      v13 = *(*(v7 + 56) + 8 * v9);
      v14 = *(v0[13] + 8);

      v14(v11, v12);

      v15 = *(v13 + 16);
      if (v15)
      {
        v16 = (v13 + 48);
        do
        {
          v18 = *(v16 - 2);
          v17 = *(v16 - 1);
          v19 = *v16;
          v20 = qword_1002A6760;
          swift_bridgeObjectRetain_n();
          v21 = v19;
          if (v20 != -1)
          {
            swift_once();
          }

          v22 = v0[8];
          v23 = qword_1002B1C78;

          sub_1001AECE0(v23, v21, v22, v5, v18, v17);
          swift_bridgeObjectRelease_n();

          v16 += 3;
          --v15;
        }

        while (v15);
      }

      v38 = v0[14];
      v39 = v0[11];

      swift_beginAccess();
      v40 = *(v5 + 16);

      v41 = v0[1];

      return v41(v40);
    }
  }

  (*(v0[13] + 8))(v0[14], v0[12]);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v25 = v0[10];
  v24 = v0[11];
  v26 = v0[9];
  v27 = sub_100093DE8(v26, qword_1002A9110);
  (*(v25 + 16))(v24, v27, v26);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Accessory does not have a battery service, cannot read", v30, 2u);
  }

  v31 = v0[14];
  v33 = v0[10];
  v32 = v0[11];
  v34 = v0[9];

  (*(v33 + 8))(v32, v34);
  sub_1000B346C();
  swift_allocError();
  *v35 = 1;
  swift_willThrow();

  v36 = v0[1];

  return v36();
}

uint64_t sub_100130068(void *a1, uint64_t a2, uint64_t a3)
{
  v151 = a1;
  v152 = a3;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v147 = v3;
  v148 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v149 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v140 = &v130 - v9;
  v10 = __chkstk_darwin(v8);
  v146 = &v130 - v11;
  __chkstk_darwin(v10);
  v142 = &v130 - v12;
  v144 = type metadata accessor for ComponentType();
  v143 = *(v144 - 1);
  v13 = *(v143 + 64);
  __chkstk_darwin(v144);
  v141 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v145 = *(v15 - 8);
  v16 = *(v145 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v130 - v20;
  v22 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v130 - v24;
  v26 = type metadata accessor for Errors();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v150 = (&v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v32 = &v130 - v31;
  v33 = type metadata accessor for DKXPCClientApplication(0);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v37 = (&v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v37);
  v38 = *(v34 + 32);
  v39 = v27;
  v40 = v26;
  sub_1000B5150(v37 + v38, v25, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v39 + 48))(v25, 1, v26) != 1)
  {
    (*(v39 + 32))(v32, v25, v26);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v39 + 16))(v60, v32, v26);
    v61 = _convertErrorToNSError(_:)();
    (*(v152 + 16))(v152, v61);

    (*(v39 + 8))(v32, v40);
    goto LABEL_36;
  }

  v41 = v152;
  result = sub_100095C84(v25, &unk_1002A6F30, &unk_10023C4D0);
  v43 = *v37;
  if (*v37)
  {
    v44 = v43;
    v45 = [v44 processIdentifier];
    if (v151)
    {
      v132 = v45;
      v131 = v43;
      v137 = v44;
      v133 = v39;
      v139 = v37;
      v138 = v26;
      v46 = qword_1002A6780;
      v153 = v151;
      if (v46 != -1)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v130 = qword_1002B1CF0;
        v47 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v134 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v48 = *&v47[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        v135 = v47;
        v49 = v47;
        v50 = v48;
        OS_dispatch_semaphore.wait()();

        v51 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v136 = v49;
        v52 = *&v49[v51];
        v53 = *(v52 + 16);

        if (!v53)
        {
          break;
        }

        v54 = 0;
        v55 = v52 + 32;
        v56 = (v145 + 8);
        while (v54 < *(v52 + 16))
        {
          sub_1000A097C(v55, v154);
          v57 = *(*sub_1000A09E0(v154, v154[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v57) = static UUID.== infix(_:_:)();
          v58 = *v56;
          (*v56)(v19, v15);
          v58(v21, v15);
          if (v57)
          {

            v67 = *&v135[v134];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v154, &v155);
            sub_100095808(v154);
            goto LABEL_14;
          }

          ++v54;
          sub_100095808(v154);
          v55 += 40;
          if (v53 == v54)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_46:
        swift_once();
      }

LABEL_10:

      v59 = *&v135[v134];
      OS_dispatch_semaphore.signal()();

      v157 = 0;
      v155 = 0u;
      v156 = 0u;
LABEL_14:

      v68 = v152;
      v69 = v138;
      v37 = v139;
      v71 = v147;
      v70 = v148;
      v72 = v146;
      if (*(&v156 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory();
        if (swift_dynamicCast())
        {
          v73 = v154[0];
          v74 = v141;
          (*(v143 + 104))(v141, enum case for ComponentType.Battery(_:), v144);
          v75 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
          swift_beginAccess();
          v149 = v73;
          v76 = *(v73 + v75);
          if (*(v76 + 16))
          {

            v77 = sub_10016D8E0(v74);
            if (v78)
            {
              v79 = *(*(v76 + 56) + 8 * v77);
              v80 = v74;
              v81 = *(v143 + 8);

              v81(v80, v144);

              if (*(v79 + 16))
              {
                if (qword_1002A66D8 != -1)
                {
                  swift_once();
                }

                v82 = sub_100093DE8(v71, qword_1002A9110);
                v84 = v70 + 16;
                v83 = *(v70 + 16);
                v83(v72, v82, v71);
                v85 = v153;

                v86 = Logger.logObject.getter();
                v87 = static os_log_type_t.default.getter();

                v88 = os_log_type_enabled(v86, v87);
                v153 = v85;
                v145 = v82;
                v144 = v83;
                if (v88)
                {
                  v89 = swift_slowAlloc();
                  v143 = v84;
                  v90 = v89;
                  v91 = swift_slowAlloc();
                  v92 = swift_slowAlloc();
                  v154[0] = v92;
                  *v90 = 67109634;
                  *(v90 + 4) = v132;
                  *(v90 + 8) = 2112;
                  *(v90 + 10) = v85;
                  *v91 = v151;
                  *(v90 + 18) = 2080;
                  v93 = v85;
                  v94 = Array.description.getter();
                  v96 = v95;

                  v97 = v94;
                  v71 = v147;
                  v98 = sub_1000952D4(v97, v96, v154);

                  *(v90 + 20) = v98;
                  _os_log_impl(&_mh_execute_header, v86, v87, "Client %d de-registering for battery data for %@, UUID %s", v90, 0x1Cu);
                  sub_100095C84(v91, &unk_1002A6F60, &unk_10023C4E0);
                  v99 = v132;
                  v100 = v139;

                  sub_100095808(v92);
                  v69 = v138;

                  v101 = *(v148 + 8);
                  v101(v146, v71);
                }

                else
                {

                  v101 = *(v148 + 8);
                  v101(v72, v71);
                  v99 = v132;
                  v100 = v139;
                }

                v121 = v137;
                v122 = sub_1001940D4(v99, v131);

                if (v122)
                {
                  (*(v152 + 16))(v152, 0);

                  return sub_1000BAA28(v100);
                }

                v144(v140, v145, v71);
                v123 = Logger.logObject.getter();
                v124 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v123, v124))
                {
                  v125 = swift_slowAlloc();
                  *v125 = 0;
                  _os_log_impl(&_mh_execute_header, v123, v124, "Failed removing client from client list", v125, 2u);
                }

                v101(v140, v71);
                v126 = v150;
                *v150 = 0xD000000000000020;
                v126[1] = 0x8000000100231BF0;
                v127 = v133;
                (*(v133 + 104))(v126, enum case for Errors.UnexpectedError(_:), v69);
                sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
                swift_allocError();
                (*(v127 + 16))(v128, v126, v69);
                v129 = _convertErrorToNSError(_:)();
                (*(v152 + 16))(v152, v129);

                (*(v127 + 8))(v126, v69);
                sub_1000BAA28(v100);
              }

              v37 = v139;
              goto LABEL_31;
            }
          }

          (*(v143 + 8))(v74, v144);
LABEL_31:
          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v113 = sub_100093DE8(v71, qword_1002A9110);
          (*(v70 + 16))(v142, v113, v71);
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            _os_log_impl(&_mh_execute_header, v114, v115, "Accessory doesn't have a battery service", v116, 2u);
          }

          (*(v70 + 8))(v142, v71);
          v117 = v150;
          *v150 = 0xD000000000000012;
          v117[1] = 0x8000000100231D80;
          v118 = v133;
          (*(v133 + 104))(v117, enum case for Errors.NotFound(_:), v69);
          sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
          swift_allocError();
          (*(v118 + 16))(v119, v117, v69);
          v120 = _convertErrorToNSError(_:)();
          (*(v68 + 16))(v68, v120);

          (*(v118 + 8))(v117, v69);
          goto LABEL_36;
        }
      }

      else
      {
        sub_100095C84(&v155, &unk_1002A6F40, &unk_10023BE90);
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v102 = sub_100093DE8(v71, qword_1002A9110);
      (*(v70 + 16))(v149, v102, v71);
      v103 = v153;
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *v106 = 138412290;
        *(v106 + 4) = v103;
        *v107 = v151;
        v108 = v103;
        _os_log_impl(&_mh_execute_header, v104, v105, "No matching record, can't lookup %@", v106, 0xCu);
        sub_100095C84(v107, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v70 + 8))(v149, v71);
      v109 = v150;
      *v150 = 0xD000000000000015;
      v109[1] = 0x8000000100231D40;
      v110 = v133;
      (*(v133 + 104))(v109, enum case for Errors.AccessoryNotReachable(_:), v69);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v110 + 16))(v111, v109, v69);
      v112 = _convertErrorToNSError(_:)();
      (*(v68 + 16))(v68, v112);

      (*(v110 + 8))(v109, v69);
      goto LABEL_36;
    }

    v62 = v150;
    *v150 = 0xD000000000000016;
    v62[1] = 0x8000000100231BD0;
    (*(v39 + 104))(v62, enum case for Errors.NilParams(_:), v40);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v39 + 16))(v63, v62, v40);
    v64 = _convertErrorToNSError(_:)();
    v65 = v41;
    v66 = v64;
    (*(v65 + 16))(v65, v64);

    (*(v39 + 8))(v62, v40);
LABEL_36:
    sub_1000BAA28(v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_100131318(void *a1, uint64_t a2, unint64_t a3)
{
  v112 = a3;
  v107 = a1;
  v105 = type metadata accessor for Logger();
  v106 = *(v105 - 8);
  v3 = *(v106 + 64);
  v4 = __chkstk_darwin(v105);
  v104 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v101 = &v92 - v7;
  __chkstk_darwin(v6);
  v102 = &v92 - v8;
  v9 = type metadata accessor for UUID();
  v103 = *(v9 - 8);
  v10 = *(v103 + 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v92 - v14;
  v16 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v100 = (&v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v108 = (&v92 - v21);
  __chkstk_darwin(v20);
  v23 = &v92 - v22;
  v24 = type metadata accessor for Errors();
  v25 = *(v24 - 8);
  v113 = v24;
  v114 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v115 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DKAPIUsageType();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DKXPCClientApplication(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (&v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v36);
  v37 = v36[2];
  if (v37)
  {
    v110 = v36[1];
    v111 = v37;
  }

  else
  {
    v110 = 0x6E776F6E6B6E75;
    v111 = 0xE700000000000000;
  }

  (*(v29 + 104))(v32, enum case for DKAPIUsageType.trackingStates(_:), v28);

  v109 = DKAPIUsageType.rawValue.getter();
  (*(v29 + 8))(v32, v28);
  sub_1000B5150(v36 + *(v33 + 24), v23, &unk_1002A6F30, &unk_10023C4D0);
  v38 = v113;
  v39 = v114;
  v40 = &unk_1002B1000;
  if ((*(v114 + 48))(v23, 1, v113) != 1)
  {
    v55 = v115;
    (*(v39 + 32))(v115, v23, v38);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v15 = swift_allocError();
    (*(v39 + 16))(v56, v55, v38);
    swift_willThrow();
    (*(v39 + 8))(v55, v38);
    goto LABEL_17;
  }

  result = sub_100095C84(v23, &unk_1002A6F30, &unk_10023C4D0);
  v42 = *v36;
  if (*v36)
  {
    v94 = *v36;
    v43 = v42;
    v44 = [v43 processIdentifier];
    if (v107)
    {
      v93 = v44;
      v98 = v43;
      v99 = v36;
      v45 = qword_1002A6780;
      v115 = v107;
      if (v45 != -1)
      {
        swift_once();
      }

      v92 = qword_1002B1CF0;
      v46 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v95 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v47 = *&v46[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      v96 = v46;
      v48 = v46;
      v40 = v47;
      OS_dispatch_semaphore.wait()();

      v49 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v97 = v48;
      v36 = *&v48[v49];
      v50 = v36[2];

      if (v50)
      {
        v51 = 0;
        v39 = (v36 + 4);
        v38 = (v103 + 8);
        while (v51 < v36[2])
        {
          sub_1000A097C(v39, v116);
          v52 = *(*sub_1000A09E0(v116, v116[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          v40 = static UUID.== infix(_:_:)();
          v53 = *v38;
          (*v38)(v13, v9);
          v53(v15, v9);
          if (v40)
          {

            v58 = *&v96[v95];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v116, &v117);
            sub_100095808(v116);
            goto LABEL_19;
          }

          ++v51;
          sub_100095808(v116);
          v39 += 40;
          if (v50 == v51)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_14:

      v54 = *&v96[v95];
      OS_dispatch_semaphore.signal()();

      v119 = 0;
      v117 = 0u;
      v118 = 0u;
LABEL_19:

      v9 = v111;
      v51 = v112;
      v36 = v99;
      v39 = v114;
      v59 = v105;
      v60 = v106;
      if (*(&v118 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory();
        v61 = swift_dynamicCast();
        v38 = v113;
        if (v61)
        {

          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v62 = sub_100093DE8(v59, qword_1002A9110);
          v63 = *(v60 + 16);
          v104 = v62;
          v103 = v63;
          v63(v102);
          v64 = v115;
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *v67 = 67109378;
            *(v67 + 4) = v93;
            *(v67 + 8) = 2112;
            *(v67 + 10) = v64;
            *v68 = v107;
            v69 = v64;
            _os_log_impl(&_mh_execute_header, v65, v66, "Client %d registering for tracking states for %@", v67, 0x12u);
            sub_100095C84(v68, &unk_1002A6F60, &unk_10023C4E0);

            v38 = v113;
          }

          v70 = *(v106 + 8);
          v71 = v105;
          v106 += 8;
          v70(v102, v105);
          v72 = v98;
          v73 = sub_1001915E4(v93, v94, v64);

          if (v73)
          {
            v74 = v100;
            (*(v114 + 56))(v100, 1, 1, v38);
            sub_10018C604(v110, v9, v109, v74);

            sub_100095C84(v74, &unk_1002A6F30, &unk_10023C4D0);
            (*(v51 + 16))(v51, 0);

            v36 = v99;
LABEL_36:
            (*(v51 + 16))(v51, 0);
            return sub_1000BAA28(v36);
          }

          v87 = v72;
          (v103)(v101, v104, v71);
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            *v90 = 0;
            _os_log_impl(&_mh_execute_header, v88, v89, "Failed adding client to client list", v90, 2u);
            v38 = v113;
          }

          v70(v101, v105);
          sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
          v15 = swift_allocError();
          *v91 = 0xD00000000000001CLL;
          v91[1] = 0x8000000100231D20;
          v39 = v114;
          (*(v114 + 104))(v91, enum case for Errors.UnexpectedError(_:), v38);
          swift_willThrow();

          v36 = v99;
          goto LABEL_33;
        }
      }

      else
      {
        sub_100095C84(&v117, &unk_1002A6F40, &unk_10023BE90);
        v38 = v113;
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v75 = sub_100093DE8(v59, qword_1002A9110);
      (*(v60 + 16))(v104, v75, v59);
      v76 = v115;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138412290;
        *(v79 + 4) = v76;
        *v80 = v107;
        v81 = v76;
        _os_log_impl(&_mh_execute_header, v77, v78, "No matching record, can't lookup %@", v79, 0xCu);
        sub_100095C84(v80, &unk_1002A6F60, &unk_10023C4E0);
        v39 = v114;

        v38 = v113;
      }

      (*(v60 + 8))(v104, v59);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v15 = swift_allocError();
      *v82 = 0xD000000000000015;
      v82[1] = 0x8000000100231D40;
      (*(v39 + 104))(v82, enum case for Errors.AccessoryNotReachable(_:), v38);
      swift_willThrow();

LABEL_33:
      v40 = &unk_1002B1000;
LABEL_34:
      if (qword_1002A6780 == -1)
      {
LABEL_35:
        v83 = *(v40 + 3312);
        *&v117 = v15;
        swift_errorRetain();
        sub_100095274(&qword_1002A7268, &unk_10023C680);
        v84 = v108;
        v85 = swift_dynamicCast();
        (*(v39 + 56))(v84, v85 ^ 1u, 1, v38);
        sub_10018C604(v110, v9, v109, v84);

        sub_100095C84(v84, &unk_1002A6F30, &unk_10023C4D0);
        v86 = _convertErrorToNSError(_:)();
        (*(v51 + 16))(v51, v86);

        goto LABEL_36;
      }

LABEL_41:
      swift_once();
      goto LABEL_35;
    }

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v15 = swift_allocError();
    *v57 = 0xD000000000000014;
    v57[1] = 0x8000000100231D00;
    (*(v39 + 104))(v57, enum case for Errors.NilParams(_:), v38);
    swift_willThrow();

LABEL_17:
    v9 = v111;
    v51 = v112;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_1001322D4(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v85 = a1;
  v87 = type metadata accessor for UUID();
  v80 = *(v87 - 8);
  v4 = *(v80 + 64);
  v5 = __chkstk_darwin(v87);
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v74 - v7;
  v84 = type metadata accessor for Logger();
  v82 = *(v84 - 1);
  v9 = *(v82 + 64);
  __chkstk_darwin(v84);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v74 - v13;
  v15 = type metadata accessor for Errors();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v81 = (&v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v21 = &v74 - v20;
  v22 = type metadata accessor for DKXPCClientApplication(0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v26 = (&v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v26);
  sub_1000B5150(v26 + *(v23 + 32), v14, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v16 + 16))(v50, v21, v15);
    v51 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v51);

    (*(v16 + 8))(v21, v15);
    sub_1000BAA28(v26);
LABEL_26:

    return;
  }

  v78 = v16;
  v79 = a3;
  sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
  if (!*v26)
  {
    _Block_release(v79);
    __break(1u);
    return;
  }

  v27 = *v26;
  v28 = [v27 processIdentifier];
  if (!v85)
  {
    v52 = v81;
    *v81 = 0xD000000000000016;
    v52[1] = 0x8000000100231BD0;
    v53 = v78;
    (*(v78 + 104))(v52, enum case for Errors.NilParams(_:), v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v53 + 16))(v54, v52, v15);
    v55 = _convertErrorToNSError(_:)();
    (*(v79 + 2))(v79, 0, v55);

    (*(v53 + 8))(v52, v15);
    v56 = v26;
LABEL_25:
    sub_1000BAA28(v56);
    goto LABEL_26;
  }

  LODWORD(v29) = v28;
  v75 = v27;
  v30 = qword_1002A66D8;
  v85 = v85;
  if (v30 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v31 = v84;
    v32 = sub_100093DE8(v84, qword_1002A9110);
    (*(v82 + 16))(v83, v32, v31);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109120;
      *(v35 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v33, v34, "Client %d requesting current tracking state data", v35, 8u);
    }

    v76 = v15;
    v77 = v26;

    (*(v82 + 8))(v83, v84);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v82 = qword_1002B1CF0;
    v36 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v83 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v37 = *&v36[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v38 = v36;
    v39 = v36;
    v40 = v37;
    OS_dispatch_semaphore.wait()();

    v41 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v84 = v39;
    v29 = *&v39[v41];
    v42 = *(v29 + 16);

    if (!v42)
    {
      break;
    }

    v26 = 0;
    v43 = v29 + 32;
    v15 = (v80 + 8);
    while (v26 < *(v29 + 16))
    {
      sub_1000A097C(v43, v88);
      v44 = *(*sub_1000A09E0(v88, v88[3]) + 24);
      DockCoreInfo.identifier.getter();

      v45 = v86;
      DockCoreInfo.identifier.getter();
      LOBYTE(v44) = static UUID.== infix(_:_:)();
      v46 = *v15;
      v47 = v45;
      v48 = v87;
      (*v15)(v47, v87);
      v46(v8, v48);
      if (v44)
      {

        v57 = *&v83[v38];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v88, &v89);
        sub_100095808(v88);
        goto LABEL_18;
      }

      v26 = (v26 + 1);
      sub_100095808(v88);
      v43 += 40;
      if (v42 == v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_14:

  v49 = *&v83[v38];
  OS_dispatch_semaphore.signal()();

  v91 = 0;
  v89 = 0u;
  v90 = 0u;
LABEL_18:

  v58 = v79;
  v59 = v76;
  v60 = v78;
  v61 = v75;
  if (!*(&v90 + 1))
  {
    sub_100095C84(&v89, &unk_1002A6F40, &unk_10023BE90);
    goto LABEL_24;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v71 = v81;
    *v81 = 0xD000000000000011;
    v71[1] = 0x8000000100231D60;
    (*(v60 + 104))(v71, enum case for Errors.NotFound(_:), v59);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v60 + 16))(v72, v71, v59);
    v73 = _convertErrorToNSError(_:)();
    v58[2](v58, 0, v73);

    (*(v60 + 8))(v71, v59);
    v56 = v77;
    goto LABEL_25;
  }

  v62 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v63 = v82;
  v64 = *(v82 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v64 + 4);

  v65 = *(v63 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary);
  v66 = *(v63 + v62);

  os_unfair_lock_unlock(v66 + 4);

  if (v65)
  {

    v67 = dispatch thunk of TrackingSummaryInternal.encode()();
    v69 = v68;

    if (v69 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }
  }

  else
  {
    isa = 0;
    v67 = 0;
    v69 = 0xF000000000000000;
  }

  (v58)[2](v58, isa, 0);

  sub_1000A452C(v67, v69);

  sub_1000BAA28(v77);
}

uint64_t sub_100132D84(void *a1, uint64_t a2, uint64_t a3)
{
  v111 = a1;
  v112 = a3;
  v110 = type metadata accessor for Logger();
  v107 = *(v110 - 8);
  v3 = *(v107 + 64);
  v4 = __chkstk_darwin(v110);
  v108 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v104 = &v94 - v7;
  __chkstk_darwin(v6);
  v105 = &v94 - v8;
  v9 = type metadata accessor for UUID();
  v106 = *(v9 - 8);
  v10 = *(v106 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v94 - v14;
  v16 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v94 - v18;
  v20 = type metadata accessor for Errors();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v109 = (&v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v26 = &v94 - v25;
  v27 = type metadata accessor for DKXPCClientApplication(0);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v31 = (&v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v31);
  v32 = *(v28 + 32);
  v33 = v21;
  sub_1000B5150(v31 + v32, v19, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    (*(v21 + 32))(v26, v19, v20);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v21 + 16))(v53, v26, v20);
    v54 = _convertErrorToNSError(_:)();
    (*(v112 + 16))(v112, v54);

    (*(v21 + 8))(v26, v20);
    goto LABEL_13;
  }

  v34 = v112;
  result = sub_100095C84(v19, &unk_1002A6F30, &unk_10023C4D0);
  v36 = *v31;
  if (*v31)
  {
    v37 = v36;
    v38 = [v37 processIdentifier];
    if (v111)
    {
      v96 = v38;
      v95 = v36;
      v100 = v37;
      v101 = v31;
      v102 = v33;
      v103 = v20;
      v39 = qword_1002A6780;
      v113 = v111;
      if (v39 != -1)
      {
        goto LABEL_35;
      }

      while (1)
      {
        v94 = qword_1002B1CF0;
        v40 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v97 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v41 = *&v40[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        v98 = v40;
        v42 = v40;
        v43 = v41;
        OS_dispatch_semaphore.wait()();

        v44 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v99 = v42;
        v45 = *&v42[v44];
        v46 = *(v45 + 16);

        if (!v46)
        {
          break;
        }

        v47 = 0;
        v48 = v45 + 32;
        v49 = (v106 + 8);
        while (v47 < *(v45 + 16))
        {
          sub_1000A097C(v48, v114);
          v50 = *(*sub_1000A09E0(v114, v114[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v50) = static UUID.== infix(_:_:)();
          v51 = *v49;
          (*v49)(v13, v9);
          v51(v15, v9);
          if (v50)
          {

            v58 = *&v98[v97];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v114, &v115);
            sub_100095808(v114);
            goto LABEL_15;
          }

          ++v47;
          sub_100095808(v114);
          v48 += 40;
          if (v46 == v47)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_35:
        swift_once();
      }

LABEL_10:

      v52 = *&v98[v97];
      OS_dispatch_semaphore.signal()();

      v117 = 0;
      v115 = 0u;
      v116 = 0u;
LABEL_15:

      v59 = v103;
      v60 = v102;
      v61 = v110;
      v62 = v107;
      if (*(&v116 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory();
        v63 = swift_dynamicCast();
        v64 = v112;
        if (v63)
        {

          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v65 = sub_100093DE8(v61, qword_1002A9110);
          v66 = *(v62 + 16);
          v66(v105, v65, v61);
          v67 = v113;
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *v70 = 67109378;
            *(v70 + 4) = v96;
            *(v70 + 8) = 2112;
            *(v70 + 10) = v67;
            *v71 = v111;
            v72 = v67;
            _os_log_impl(&_mh_execute_header, v68, v69, "Client %d de-registering for tracking state data for %@", v70, 0x12u);
            sub_100095C84(v71, &unk_1002A6F60, &unk_10023C4E0);

            v61 = v110;
          }

          v73 = *(v107 + 8);
          v73(v105, v61);
          v74 = v100;
          v75 = sub_1001943E0(v96, v95);

          if (v75)
          {
            (*(v64 + 16))(v64, 0);

            return sub_1000BAA28(v101);
          }

          v66(v104, v65, v61);
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            *v88 = 0;
            _os_log_impl(&_mh_execute_header, v86, v87, "Failed removing client from client list", v88, 2u);
            v61 = v110;
          }

          v73(v104, v61);
          v89 = v109;
          *v109 = 0xD000000000000020;
          v89[1] = 0x8000000100231BF0;
          v90 = v102;
          v91 = v103;
          (*(v102 + 104))(v89, enum case for Errors.UnexpectedError(_:), v103);
          sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
          swift_allocError();
          (*(v90 + 16))(v92, v89, v91);
          v93 = _convertErrorToNSError(_:)();
          (*(v64 + 16))(v64, v93);

          (*(v90 + 8))(v89, v91);
          goto LABEL_29;
        }
      }

      else
      {
        sub_100095C84(&v115, &unk_1002A6F40, &unk_10023BE90);
        v64 = v112;
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v76 = sub_100093DE8(v61, qword_1002A9110);
      (*(v62 + 16))(v108, v76, v61);
      v77 = v113;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138412290;
        *(v80 + 4) = v77;
        *v81 = v111;
        v82 = v77;
        _os_log_impl(&_mh_execute_header, v78, v79, "No matching record, can't lookup %@", v80, 0xCu);
        sub_100095C84(v81, &unk_1002A6F60, &unk_10023C4E0);
        v61 = v110;
      }

      (*(v62 + 8))(v108, v61);
      v83 = v109;
      *v109 = 0xD000000000000015;
      v83[1] = 0x8000000100231D40;
      (*(v60 + 104))(v83, enum case for Errors.AccessoryNotReachable(_:), v59);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v60 + 16))(v84, v83, v59);
      v85 = _convertErrorToNSError(_:)();
      (*(v64 + 16))(v64, v85);

      (*(v60 + 8))(v83, v59);
LABEL_29:
      sub_1000BAA28(v101);
    }

    v55 = v109;
    *v109 = 0xD000000000000016;
    v55[1] = 0x8000000100231BD0;
    (*(v33 + 104))(v55, enum case for Errors.NilParams(_:), v20);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v33 + 16))(v56, v55, v20);
    v57 = _convertErrorToNSError(_:)();
    (*(v34 + 16))(v34, v57);

    (*(v33 + 8))(v55, v20);
LABEL_13:
    sub_1000BAA28(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_100133B60(void *a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v77 = a1;
  v80 = type metadata accessor for Logger();
  v85 = *(v80 - 8);
  v3 = v85[8];
  v4 = __chkstk_darwin(v80);
  v76 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v70 - v6;
  v7 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v75 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v79 = (&v70 - v12);
  __chkstk_darwin(v11);
  v14 = &v70 - v13;
  v15 = type metadata accessor for Errors();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DKAPIUsageType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DKXPCClientApplication(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v28);
  v29 = v28[2];
  if (v29)
  {
    v82 = v28[1];
    v83 = v29;
  }

  else
  {
    v82 = 0x6E776F6E6B6E75;
    v83 = 0xE700000000000000;
  }

  (*(v21 + 104))(v24, enum case for DKAPIUsageType.accessoryEvents(_:), v20);

  v30 = DKAPIUsageType.rawValue.getter();
  (*(v21 + 8))(v24, v20);
  sub_1000B5150(v28 + *(v25 + 24), v14, &unk_1002A6F30, &unk_10023C4D0);
  v31 = (*(v16 + 48))(v14, 1, v15);
  p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
  v33 = &unk_1002B1000;
  v81 = v30;
  if (v31 != 1)
  {
    (*(v16 + 32))(v19, v14, v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    v58 = swift_allocError();
    (*(v16 + 16))(v59, v19, v15);
    swift_willThrow();
    (*(v16 + 8))(v19, v15);
    goto LABEL_20;
  }

  result = sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
  v35 = *v28;
  if (*v28)
  {
    v36 = v35;
    v37 = [v36 processIdentifier];
    v38 = v77;
    if (v77)
    {
      v39 = v37;
      v73 = v36;
      v40 = qword_1002A66D8;
      v41 = v77;
      if (v40 != -1)
      {
        swift_once();
      }

      v42 = sub_100093DE8(v80, qword_1002A9110);
      v43 = v85[2];
      v71 = v42;
      v72 = v85 + 2;
      v70 = v43;
      (v43)(v78);
      v44 = v41;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      v74 = v44;

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = v38;
        v50 = v48;
        *v47 = 67109378;
        *(v47 + 4) = v39;
        *(v47 + 8) = 2112;
        v51 = v74;
        *(v47 + 10) = v74;
        *v48 = v49;
        v52 = v51;
        _os_log_impl(&_mh_execute_header, v45, v46, "Client %d registering for system events for %@", v47, 0x12u);
        sub_100095C84(v50, &unk_1002A6F60, &unk_10023C4E0);
      }

      v53 = v85[1];
      ++v85;
      v53(v78, v80);
      v54 = v73;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v55 = v54;
      v56 = sub_10019068C(v39, v35);

      if (v56)
      {
        v57 = v75;
        (*(v16 + 56))(v75, 1, 1, v15);
        sub_10018C604(v82, v83, v81, v57);

        sub_100095C84(v57, &unk_1002A6F30, &unk_10023C4D0);
        (*(v84 + 16))(v84, 0);

        return sub_1000BAA28(v28);
      }

      v61 = v76;
      v70(v76, v71, v80);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Failed adding client to client list", v64, 2u);
      }

      v53(v61, v80);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v58 = swift_allocError();
      *v65 = 0xD00000000000001CLL;
      v65[1] = 0x8000000100231D20;
      (*(v16 + 104))(v65, enum case for Errors.UnexpectedError(_:), v15);
      swift_willThrow();

      v33 = &unk_1002B1000;
      p_cb = &OBJC_PROTOCOL___DKLogging.cb;
    }

    else
    {
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      v58 = swift_allocError();
      *v60 = 0xD000000000000014;
      v60[1] = 0x8000000100231D00;
      (*(v16 + 104))(v60, enum case for Errors.NilParams(_:), v15);
      swift_willThrow();
    }

LABEL_20:
    if (*(p_cb + 240) != -1)
    {
      swift_once();
    }

    v66 = v33[414];
    v86 = v58;
    swift_errorRetain();
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    v67 = v79;
    v68 = swift_dynamicCast();
    (*(v16 + 56))(v67, v68 ^ 1u, 1, v15);
    sub_10018C604(v82, v83, v81, v67);

    sub_100095C84(v67, &unk_1002A6F30, &unk_10023C4D0);
    v69 = _convertErrorToNSError(_:)();
    (*(v84 + 16))(v84, v69);

    return sub_1000BAA28(v28);
  }

  __break(1u);
  return result;
}

void sub_100134530(void *a1, void *a2, void (**a3)(void, void, void))
{
  v87 = a2;
  v95 = a1;
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v86 = &v80 - v6;
  v90 = type metadata accessor for UUID();
  v88 = *(v90 - 8);
  v7 = *(v88 + 64);
  v8 = __chkstk_darwin(v90);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v80 - v11;
  v91 = type metadata accessor for Logger();
  v93 = *(v91 - 8);
  v13 = *(v93 + 8);
  __chkstk_darwin(v91);
  v92 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v80 - v17;
  v19 = type metadata accessor for Errors();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v89 = (&v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v25 = &v80 - v24;
  v26 = type metadata accessor for DKXPCClientApplication(0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v30 = (&v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  v94 = a3;
  _Block_copy(a3);
  sub_10010D498(v30);
  v32 = *(v27 + 32);
  v33 = v30;
  sub_1000B5150(v30 + v32, v18, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v25, v18, v19);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v20 + 16))(v54, v25, v19);
    v55 = _convertErrorToNSError(_:)();
    (v94)[2](v94, 0, v55);

    (*(v20 + 8))(v25, v19);
    sub_1000BAA28(v30);

LABEL_23:

    return;
  }

  v85 = v31;
  sub_100095C84(v18, &unk_1002A6F30, &unk_10023C4D0);
  if (*v30)
  {
    v34 = *v30;
    v35 = [v34 processIdentifier];
    v37 = v90;
    v36 = v91;
    if (v95)
    {
      LODWORD(v38) = v35;
      v81 = v34;
      v82 = v30;
      v84 = v19;
      v39 = qword_1002A66D8;
      v95 = v95;
      if (v39 != -1)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v40 = sub_100093DE8(v36, qword_1002A9110);
        (*(v93 + 2))(v92, v40, v36);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 67109120;
          *(v43 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v41, v42, "Client %d requesting current system event data", v43, 8u);
        }

        v83 = v20;

        (*(v93 + 1))(v92, v36);
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v44 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v91 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v92 = v44;
        v45 = *&v44[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        v46 = v44;
        v47 = v45;
        OS_dispatch_semaphore.wait()();

        v48 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v93 = v46;
        v38 = *&v46[v48];
        v49 = *(v38 + 16);

        if (!v49)
        {
          break;
        }

        v36 = 0;
        v50 = v38 + 32;
        v20 = v88 + 8;
        while (v36 < *(v38 + 16))
        {
          sub_1000A097C(v50, v96);
          v51 = *(*sub_1000A09E0(v96, v96[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v51) = static UUID.== infix(_:_:)();
          v52 = *v20;
          (*v20)(v10, v37);
          v52(v12, v37);
          if (v51)
          {

            v59 = *&v92[v91];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v96, &v97);
            sub_100095808(v96);
            goto LABEL_18;
          }

          ++v36;
          sub_100095808(v96);
          v50 += 40;
          if (v49 == v36)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_25:
        swift_once();
      }

LABEL_14:

      v53 = *&v92[v91];
      OS_dispatch_semaphore.signal()();

      v99 = 0;
      v97 = 0u;
      v98 = 0u;
LABEL_18:

      v60 = v94;
      v61 = v83;
      v62 = v85;
      if (*(&v98 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory();
        if (swift_dynamicCast())
        {
          v63 = v96[0];
          v64 = type metadata accessor for TaskPriority();
          v65 = v86;
          (*(*(v64 - 8) + 56))(v86, 1, 1, v64);
          v66 = swift_allocObject();
          v66[2] = 0;
          v66[3] = 0;
          v67 = v87;
          v66[4] = v87;
          v66[5] = v63;
          v66[6] = sub_1000A11BC;
          v66[7] = v62;
          v68 = v67;

          sub_1001B6A08(0, 0, v65, &unk_10023DE30, v66);
        }
      }

      else
      {
        sub_100095C84(&v97, &unk_1002A6F40, &unk_10023BE90);
      }

      *&v97 = 0;
      *(&v97 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      *&v97 = 0xD000000000000020;
      *(&v97 + 1) = 0x8000000100231C20;
      v69 = v95;
      v70 = [v95 description];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74._countAndFlagsBits = v71;
      v74._object = v73;
      String.append(_:)(v74);

      v75 = *(&v97 + 1);
      v76 = v89;
      *v89 = v97;
      v76[1] = v75;
      v77 = v84;
      (*(v61 + 104))(v76, enum case for Errors.NotFound(_:), v84);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v61 + 16))(v78, v76, v77);
      v79 = _convertErrorToNSError(_:)();
      (v60)[2](v60, 0, v79);

      (*(v61 + 8))(v76, v77);
      sub_1000BAA28(v82);
    }

    else
    {
      v56 = v89;
      *v89 = 0xD000000000000016;
      v56[1] = 0x8000000100231BD0;
      (*(v20 + 104))(v56, enum case for Errors.NilParams(_:), v19);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v20 + 16))(v57, v56, v19);
      v58 = _convertErrorToNSError(_:)();
      (v94)[2](v94, 0, v58);

      (*(v20 + 8))(v56, v19);
      sub_1000BAA28(v33);
    }

    goto LABEL_23;
  }

  _Block_release(v94);
  __break(1u);
}

uint64_t sub_100135094(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_100135154, 0, 0);
}

uint64_t sub_100135154()
{
  v1 = *(v0[4] + 32);
  v0[8] = v1;
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      v5 = [v3 primaryAccessory];
      if (v5)
      {
        v6 = v5;
        v37 = v4;
        v7 = objc_opt_self();
        sub_100095274(&unk_1002A73A0, &qword_10023C670);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_10023C170;
        *(v8 + 56) = &type metadata for UInt32;
        *(v8 + 64) = &protocol witness table for UInt32;
        *(v8 + 32) = 266;
        String.init(format:_:)();
        v9 = String._bridgeToObjectiveC()();

        v10 = [v7 UUIDWithString:v9];

        v11 = [v10 UUIDString];
        if (!v11)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = String._bridgeToObjectiveC()();
        }

        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_10023C170;
        *(v12 + 56) = &type metadata for UInt32;
        *(v12 + 64) = &protocol witness table for UInt32;
        *(v12 + 32) = 256;
        String.init(format:_:)();
        v13 = String._bridgeToObjectiveC()();

        v14 = [v7 UUIDWithString:v13];

        v15 = [v14 UUIDString];
        if (!v15)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = String._bridgeToObjectiveC()();
        }

        v16 = [v6 characteristicOfType:v11 serviceType:{v15, 1, 2}];
        v0[9] = v16;

        v4 = v37;
        if (v16)
        {
          v17 = v0[4];
          v18 = swift_task_alloc();
          v0[10] = v18;
          v18[2] = v3;
          v18[3] = v16;
          v18[4] = v17;
          v19 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
          v20 = swift_task_alloc();
          v0[11] = v20;
          v21 = sub_100095274(&qword_1002A92D8, &qword_10023DE40);
          *v20 = v0;
          v20[1] = sub_100135624;

          return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000017, 0x8000000100231C70, sub_10013708C, v18, v21);
        }
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v22 = v0[6];
      v23 = v0[7];
      v24 = v0[5];
      v25 = sub_100093DE8(v24, qword_1002A9110);
      (*(v22 + 16))(v23, v25, v24);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[6];
      v30 = v0[7];
      v31 = v0[5];
      if (v28)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Accessory does not contain a System Events characteristic!", v32, 2u);

        v33 = v26;
      }

      else
      {
        v33 = v4;
        v4 = v26;
      }

      (*(v29 + 8))(v30, v31);
    }
  }

  v34 = v0[7];

  v35 = v0[1];

  return v35(0, 0xF000000000000000);
}

uint64_t sub_100135624()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1001357BC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_100135740;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_100135740()
{
  v1 = *(v0 + 64);

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5(v3, v2);
}

uint64_t sub_1001357BC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);
  v5 = *(v0 + 96);

  return v4();
}

uint64_t sub_100135840(void *a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v69 = v4;
  v70 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v59 - v9;
  v11 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v59 - v13;
  v15 = type metadata accessor for Errors();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v67 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v21 = &v59 - v20;
  v22 = type metadata accessor for DKXPCClientApplication(0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v26 = (&v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v26);
  sub_1000B5150(v26 + *(v23 + 32), v14, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v16 + 16))(v47, v21, v15);
    v48 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v48);

    (*(v16 + 8))(v21, v15);
LABEL_17:
    sub_1000BAA28(v26);
  }

  result = sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
  v28 = *v26;
  if (*v26)
  {
    v29 = v28;
    v30 = [v29 processIdentifier];
    v31 = v68;
    if (v68)
    {
      v64 = v30;
      v62 = v29;
      v63 = a3;
      v32 = qword_1002A66D8;
      v33 = v68;
      if (v32 != -1)
      {
        swift_once();
      }

      v34 = sub_100093DE8(v69, qword_1002A9110);
      v60 = *(v70 + 16);
      v61 = v34;
      v60(v10);
      v35 = v33;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      v65 = v35;

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = v31;
        v41 = v39;
        *v38 = 67109378;
        *(v38 + 4) = v64;
        *(v38 + 8) = 2112;
        v42 = v65;
        *(v38 + 10) = v65;
        *v39 = v40;
        v43 = v42;
        _os_log_impl(&_mh_execute_header, v36, v37, "Client %d de-registering for event data for %@", v38, 0x12u);
        sub_100095C84(v41, &unk_1002A6F60, &unk_10023C4E0);
      }

      v44 = *(v70 + 8);
      v70 += 8;
      v44(v10, v69);
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v45 = v62;
      v46 = sub_1001940C8(v64, v28);

      if (v46)
      {
        (*(v63 + 16))(v63, 0);

        return sub_1000BAA28(v26);
      }

      v52 = v66;
      (v60)(v66, v61, v69);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Failed removing client from client list", v55, 2u);
      }

      v44(v52, v69);
      v56 = v67;
      *v67 = 0xD000000000000020;
      v56[1] = 0x8000000100231BF0;
      (*(v16 + 104))(v56, enum case for Errors.UnexpectedError(_:), v15);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v16 + 16))(v57, v56, v15);
      v58 = _convertErrorToNSError(_:)();
      (*(v63 + 16))(v63, v58);

      (*(v16 + 8))(v56, v15);
    }

    else
    {
      v49 = v67;
      *v67 = 0xD000000000000016;
      v49[1] = 0x8000000100231BD0;
      (*(v16 + 104))(v49, enum case for Errors.NilParams(_:), v15);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
      swift_allocError();
      (*(v16 + 16))(v50, v49, v15);
      v51 = _convertErrorToNSError(_:)();
      (*(a3 + 16))(a3, v51);

      (*(v16 + 8))(v49, v15);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100136034(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Errors();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DKXPCClientApplication(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v18);
  sub_1000B5150(v18 + *(v15 + 32), v8, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100095C84(v8, &unk_1002A6F30, &unk_10023C4D0);
    if (a1)
    {
      v19 = 4;
    }

    else
    {
      v19 = 10;
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v20 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);

    sub_1000EC468(v19);

    (*(a3 + 16))(a3, 1, 0);
    return sub_1000BAA28(v18);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v10 + 16))(v22, v13, v9);
    v23 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v23);

    (*(v10 + 8))(v13, v9);
    sub_1000BAA28(v18);
  }
}

uint64_t sub_100136364(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 processIdentifier];
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 valueForEntitlement:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v68 = 0u;
  }

  v73[0] = aBlock;
  v73[1] = v68;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v10 = sub_10019B91C(a1);
  v12 = v11;
  sub_10018B7F4(v10, v11, a1);
  sub_10018BCE0(v10, v12);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v65 = a1;
  v13 = sub_100093DE8(v2, qword_1002A9110);
  (*(v3 + 16))(v6, v13, v2);
  sub_1000B5150(v73, &aBlock, &qword_1002A9210, &unk_10023BE70);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v64 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v62 = v3;
    v18 = v17;
    v66 = swift_slowAlloc();
    *v18 = 67109634;
    *(v18 + 4) = v7;
    *(v18 + 8) = 2080;
    v61 = v2;
    sub_1000B5150(&aBlock, &v71, &qword_1002A9210, &unk_10023BE70);
    sub_100095274(&qword_1002A9210, &unk_10023BE70);
    v19 = String.init<A>(describing:)();
    v60 = v6;
    v20 = v19;
    v22 = v21;
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v23 = sub_1000952D4(v20, v22, &v66);

    *(v18 + 10) = v23;
    *(v18 + 18) = 2080;
    *&v71 = v10;
    *(&v71 + 1) = v12;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v24 = String.init<A>(describing:)();
    v26 = sub_1000952D4(v24, v25, &v66);

    *(v18 + 20) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "new connection from pid %d, appID entitlement %s, appID %s", v18, 0x1Cu);
    swift_arrayDestroy();

    (v62)[1](v60, v61);
  }

  else
  {

    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    (*(v3 + 8))(v6, v2);
  }

  v62 = objc_opt_self();
  v61 = [v62 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore18DockDaemonProtocol_];
  v27 = swift_allocObject();
  v28 = v65;
  swift_unknownObjectWeakInit();
  sub_1000B5150(v73, &v71, &qword_1002A9210, &unk_10023BE70);
  v29 = swift_allocObject();
  v30 = v72;
  *(v29 + 24) = v71;
  v31 = v64;
  *(v29 + 16) = v64;
  *(v29 + 40) = v30;
  *(v29 + 56) = v27;
  *(v29 + 64) = v10;
  *(v29 + 72) = v12;
  v69 = sub_100136EE0;
  v70 = v29;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v68 = sub_100147FC8;
  *(&v68 + 1) = &unk_100277EE8;
  v32 = _Block_copy(&aBlock);

  [v28 setInvalidationHandler:v32];
  _Block_release(v32);
  sub_1000B5150(v73, &v71, &qword_1002A9210, &unk_10023BE70);
  v33 = swift_allocObject();
  v34 = v72;
  *(v33 + 24) = v71;
  *(v33 + 16) = v31;
  *(v33 + 40) = v34;
  *(v33 + 56) = v27;
  *(v33 + 64) = v10;
  *(v33 + 72) = v12;
  v69 = sub_100136F60;
  v70 = v33;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v68 = sub_100147FC8;
  *(&v68 + 1) = &unk_100277F38;
  v35 = _Block_copy(&aBlock);

  [v28 setInterruptionHandler:v35];
  _Block_release(v35);
  sub_100095B94(0, &qword_1002A9218, NSSet_ptr);
  sub_100095274(&qword_1002A9220, &qword_10023D440);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10023DD50;
  v37 = type metadata accessor for SensorButtonState();
  *(v36 + 56) = sub_100095274(&qword_1002A9228, &qword_10023DDC0);
  *(v36 + 32) = v37;
  v38 = type metadata accessor for SensorLEDState();
  *(v36 + 88) = sub_100095274(&qword_1002A9230, &qword_10023DDC8);
  *(v36 + 64) = v38;
  v39 = type metadata accessor for DockCoreInfo();
  *(v36 + 120) = sub_100095274(&qword_1002A9238, &qword_10023DDD0);
  *(v36 + 96) = v39;
  v40 = sub_100095B94(0, &qword_1002A9240, NSArray_ptr);
  *(v36 + 152) = sub_100095274(&unk_1002A9248, &qword_10023DDD8);
  *(v36 + 128) = v40;
  v41 = sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
  *(v36 + 184) = sub_100095274(&qword_1002A9258, &qword_10023DDE0);
  *(v36 + 160) = v41;
  v42 = sub_100095B94(0, &qword_1002A9260, NSString_ptr);
  *(v36 + 216) = sub_100095274(&qword_1002A9268, &qword_10023DDE8);
  *(v36 + 192) = v42;
  v43 = sub_100095B94(0, &qword_1002A9270, NSData_ptr);
  *(v36 + 248) = sub_100095274(&qword_1002A9278, &qword_10023DDF0);
  *(v36 + 224) = v43;
  v44 = sub_100095B94(0, &qword_1002A9280, NSDate_ptr);
  *(v36 + 280) = sub_100095274(&qword_1002A9288, &qword_10023DDF8);
  *(v36 + 256) = v44;
  v45 = sub_100095B94(0, &qword_1002A9290, NSDictionary_ptr);
  *(v36 + 312) = sub_100095274(&qword_1002A9298, &qword_10023DE00);
  *(v36 + 288) = v45;
  v46 = sub_100095B94(0, &qword_1002A92A0, NSURL_ptr);
  *(v36 + 344) = sub_100095274(&qword_1002A92A8, &qword_10023DE08);
  *(v36 + 320) = v46;
  v47 = sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
  *(v36 + 376) = sub_100095274(&qword_1002A92B8, &qword_10023DE10);
  *(v36 + 352) = v47;
  v48 = type metadata accessor for SensorTrackerState();
  *(v36 + 408) = sub_100095274(&qword_1002A92C0, &qword_10023DE18);
  *(v36 + 384) = v48;
  v49 = type metadata accessor for CameraSessionInformation();
  *(v36 + 440) = sub_100095274(&unk_1002A92C8, &qword_10023DE20);
  *(v36 + 416) = v49;
  v50 = NSSet.init(objects:)();
  *&aBlock = 0;
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  if (aBlock)
  {

    isa = Set._bridgeToObjectiveC()().super.isa;
    v53 = v61;
    [v61 setClasses:isa forSelector:"setSensorStatesWithInfo:system:sensors:states:completion:" argumentIndex:0 ofReply:0];

    v54 = Set._bridgeToObjectiveC()().super.isa;
    [v53 setClasses:v54 forSelector:"setSensorStatesWithInfo:system:sensors:states:completion:" argumentIndex:1 ofReply:0];

    v55 = Set._bridgeToObjectiveC()().super.isa;
    [v53 setClasses:v55 forSelector:"setSensorStatesWithInfo:system:sensors:states:completion:" argumentIndex:2 ofReply:0];

    v56 = Set._bridgeToObjectiveC()().super.isa;

    [v53 setClasses:v56 forSelector:"setSensorStatesWithInfo:system:sensors:states:completion:" argumentIndex:3 ofReply:0];

    [v28 setExportedInterface:v53];
    v57 = [objc_allocWithZone(type metadata accessor for dockaccessoryd()) init];
    v57[OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_debugAllowed] = *(v63 + OBJC_IVAR____TtC14dockaccessoryd15ServiceDelegate_debugAllowed);
    [v28 setExportedObject:v57];
    v58 = [v62 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore18DockClientProtocol_];
    [v28 setRemoteObjectInterface:v58];
    [v28 resume];

    sub_100095C84(v73, &qword_1002A9210, &unk_10023BE70);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100136EA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100136EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100136F10()
{
  if (v0[6])
  {
    sub_100095808(v0 + 3);
  }

  v1 = v0[7];

  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100136FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009862C;

  return sub_10011606C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100137098()
{
  v1 = sub_100095274(&unk_1002A92E0, &qword_10023DE48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10013712C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100095274(&unk_1002A92E0, &qword_10023DE48) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100116948(a1, a2, v6);
}

uint64_t sub_1001371C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100137210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A139C;

  return sub_100115778(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001372E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013731C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100137370()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001373A8(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1001373F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100137458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A139C;

  return sub_100112D98(a1, v4, v5, v6);
}

uint64_t sub_10013750C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001375E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A139C;

  return sub_1001119AC(a1);
}

uint64_t sub_100137698()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001376D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A139C;

  return sub_100112AE8(a1);
}

uint64_t sub_1001377B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100137804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A139C;

  return sub_10010FF34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001378D8()
{
  v1 = type metadata accessor for TrajectoryCommand();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v12 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_100137A04(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for TrajectoryCommand() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1[3];
  v23 = v1[2];
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v1 + v6);
  v11 = v10[1];
  v20 = *v10;
  v21 = v1[4];
  v13 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v14 = *(v1 + v8);
  v15 = *(v1 + v7 + 16);
  v16 = *(v1 + v9);
  v17 = *(v1 + v9 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_10009862C;

  return sub_10010E8A8(a1, v23, v22, v21, v1 + v5, v20, v11, v13);
}

uint64_t sub_100137B9C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100137C30()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100137D78()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002A9340);
  sub_100093DE8(v0, qword_1002A9340);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100137DF8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100137E54()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v4 = 0;
LABEL_5:
    swift_weakDestroy();
    sub_1000BAA84(v4);
    return swift_deallocClassInstance();
  }

  v2 = *(Strong + 16);

  v3 = swift_allocObject();
  v4 = sub_10013A008;
  *(v3 + 16) = sub_10013A008;
  *(v3 + 24) = v0;
  v7[4] = sub_10013A028;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1001DB720;
  v7[3] = &unk_100278528;
  v5 = _Block_copy(v7);

  dispatch_sync(v2, v5);

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}