uint64_t sub_1001A5D30(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339128 != -1)
  {
LABEL_33:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100003078(v11, qword_10034A190);
  v13 = a1;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v52[1] = v12;
  v55 = v10;
  v56 = v7;
  v54 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = v13;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v59[0] = v20;
    *v17 = 138412546;
    *(v17 + 4) = v18;
    *v19 = v18;
    *(v17 + 12) = 2080;
    v21 = v18;
    v22 = sub_1000092A0();
    v24 = v6;
    v25 = sub_100017494(v22, v23, v59);

    *(v17 + 14) = v25;
    v6 = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received %@ from %s", v17, 0x16u);
    sub_1000030B0(v19);

    sub_10000903C(v20);
  }

  v10 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens;
  v58 = v3;
  v26 = *(v3 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens);
  __chkstk_darwin(v27);
  v28 = type metadata accessor for TrackedToken();
  v52[-4] = v28;
  v52[-3] = v6;
  v57 = v6;
  v52[-2] = sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v29 = v26 + qword_100346AF8;

  os_unfair_lock_lock(v29);
  v59[0] = *(v29 + 8);

  swift_getAtKeyPath();

  v30 = v59[5];
  os_unfair_lock_unlock(v29);

  v31 = *(v30 + 16);
  if (!v31)
  {

    v32 = _swiftEmptyArrayStorage;
    v53 = v10;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_9;
  }

  v32 = sub_100009194(*(v30 + 16), 0);
  v33 = sub_100009A04(v59, v32 + 32, v31, v30);
  result = sub_100004F98();
  if (v33 == v31)
  {

    v53 = v10;
    if (v32 < 0)
    {
      goto LABEL_34;
    }

LABEL_9:
    if ((v32 & 0x4000000000000000) == 0)
    {
      v35 = *(v32 + 16);
      goto LABEL_11;
    }

LABEL_34:
    v35 = _CocoaArrayWrapper.endIndex.getter();
LABEL_11:
    v6 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    v7 = &OBJC_IVAR____TtC17proximitycontrold12TrackedToken_deviceID;
    if (v35)
    {
      a1 = 0;
      v3 = v32 & 0xC000000000000001;
      do
      {
        if (v3)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
LABEL_21:
            __break(1u);
            break;
          }
        }

        else
        {
          if (a1 >= *(v32 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v36 = *(v32 + 8 * a1 + 32);

          v10 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_21;
          }
        }

        if (static UUID.== infix(_:_:)())
        {

          goto LABEL_24;
        }

        ++a1;
      }

      while (v10 != v35);
    }

    v36 = 0;
LABEL_24:
    v37 = v57;
    v38 = *&v53[v58];
    v39 = v56;
    v40 = a2 + v6;
    v41 = v55;
    (v56[2])(v55, v40, v57);
    v42 = *(v28 + 48);
    v43 = *(v28 + 52);
    v44 = swift_allocObject();
    (v39[4])(v44 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_deviceID, v41, v37);
    v45 = v54;
    *(v44 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token) = v54;
    v46 = v45;

    sub_100049C30(v44);

    if (v36)
    {
      v47 = *(v36 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token);
      sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
      v48 = v47;
      if (static NSObject.== infix(_:_:)())
      {
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "Received token is already in cache, not adding to session.", v51, 2u);
        }
      }

      sub_1001A6514(v48);
    }

    sub_1001A46D4(v46);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A6328(uint64_t a1)
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034A190);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_1000092A0();
    v10 = sub_100017494(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing token for %s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens);
  v12 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;

  v13 = sub_10004AE8C(a1 + v12);

  if (v13)
  {
    v15 = *(v13 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token);
    sub_1001A6514(v15);
  }

  return result;
}

void sub_1001A6514(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v27;
  if (!v27)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10034A190);
    v4 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v4, v16, "### Not removing token, no session.", v17, 2u);
    }

    goto LABEL_24;
  }

  v5 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState;
  if (*(*&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) == 2)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_10034A190);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v5 = v7;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "Removing token %@", v10, 0xCu);
      sub_1000030B0(v5);
    }

    [v4 _removeObject:v7];
    v12 = *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded];
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (!v13)
    {
      *&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = v14;
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_100339128 != -1)
  {
LABEL_26:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_10034A190);
  v19 = v2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136315138;
    if (*(*(v5 + v2) + 24) > 1u)
    {
      if (*(*(v5 + v2) + 24) == 2)
      {
        v24 = 0xE700000000000000;
        v25 = 0x676E696E6E7572;
      }

      else
      {
        v24 = 0xE900000000000064;
        v25 = 0x65646E6570737573;
      }
    }

    else if (*(*(v5 + v2) + 24))
    {
      v24 = 0xE600000000000000;
      v25 = 0x646573756170;
    }

    else
    {
      v24 = 0xE800000000000000;
      v25 = 0x6576697463616E69;
    }

    v26 = sub_100017494(v25, v24, &v27);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Not removing token, sessionState = %s", v22, 0xCu);
    sub_10000903C(v23);
  }

LABEL_24:
}

void sub_1001A692C()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034A190);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stop", v5, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier))
    {
      v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier);

      sub_10001462C();
    }

    [v9 pause];
    v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState);
    *(v7 + 24) = 1;

    sub_10000C49C();
    v8 = *(v7 + 24);
    CurrentValueSubject.send(_:)();

    sub_1000143FC();
  }
}

void sub_1001A6AEC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState) == 1)
  {
    v2 = v0;
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_10034A190);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cancelling scheduled stop", v6, 2u);
    }

    *(v2 + v1) = 0;
  }
}

uint64_t sub_1001A6BE8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [a1 deviceIdentifer];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  __chkstk_darwin(v6);
  v7 = *(*&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 16) + qword_100346AF8;

  os_unfair_lock_lock(v7);
  v8 = *(v7 + 8);

  v10 = sub_1001A9BF0(v9, sub_1001AC0B4);

  os_unfair_lock_unlock(v7);

  if (v10)
  {
  }

  else
  {
LABEL_6:
    v11 = [a1 discoveryToken];
    __chkstk_darwin(v11);
    v12 = *(*&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 16) + qword_100346AF8;

    os_unfair_lock_lock(v12);
    v13 = *(v12 + 8);

    v10 = sub_1001A9BF0(v14, sub_1001AC0AC);

    os_unfair_lock_unlock(v12);
  }

  return v10;
}

uint64_t sub_1001A6E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = sub_1000BCFD0();

  LOBYTE(a3) = sub_1001A1CF8(a2, a3, v5);

  return a3 & 1;
}

uint64_t sub_1001A6EC0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenStateMachine;
  swift_beginAccess();
  v5 = *(*(a1 + v4) + 16);
  if (v5)
  {
    sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);
    v6 = v5;
    v7 = a2;
    v8 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1001A6F70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState) == 1)
    {
      *(Strong + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState) = 0;
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_100003078(v2, qword_10034A190);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Stopping after delay", v5, 2u);
      }

      sub_1001A692C();
    }
  }
}

void sub_1001A70CC()
{
  sub_1001A71B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001A71B0()
{
  if (!qword_10034A278)
  {
    sub_100035D4C(&qword_10034A280, &qword_1002873E8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10034A278);
    }
  }
}

void sub_1001A7B4C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, v10 = sub_1001A6BE8(v7), v9, v10))
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_10034A190);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v39[7] = v4;
      v14 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v14 = 136315394;
      v15 = sub_1000092A0();
      v17 = sub_100017494(v15, v16, v39);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = 0xE100000000000000;
      v19 = 63;
      if (a3 == 1)
      {
        v19 = 0x65646E4572656570;
        v18 = 0xE900000000000064;
      }

      if (a3)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0x74756F656D6974;
      }

      if (a3)
      {
        v21 = v18;
      }

      else
      {
        v21 = 0xE700000000000000;
      }

      v22 = sub_100017494(v20, v21, v39);

      *(v14 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "REMOVED %s, reason: %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    v23 = *(v10 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);

    sub_10000D4C4(5);

    sub_100073658();
    v24 = *(a4 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_lockscreenAnalytics);
    sub_10015C174(v10);
    v25 = *(a4 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded);
    v26 = __OFSUB__(v25, 1);
    v27 = v25 - 1;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      *(a4 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded) = v27;
      swift_beginAccess();
      v28 = swift_unknownObjectWeakLoadStrong();
      if (v28)
      {
        v29 = v28;
        sub_1001A594C();
      }
    }
  }

  else
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003078(v30, qword_10034A190);
    v31 = v7;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v34 = 136315138;
      v36 = sub_10017BC10();
      v38 = sub_100017494(v36, v37, v39);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "### DidRemove unknown nearby object %s", v34, 0xCu);
      sub_10000903C(v35);
    }
  }
}

void sub_1001A8030(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = Strong, v7 = sub_1001A6BE8(v4), v6, v7))
  {
    v8 = NINearbyObject.distance.getter();
    if ((v8 & 0x100000000) == 0)
    {
      v9 = v8;
      v10 = *(v7 + 24);

      LOBYTE(v23) = 0;
      sub_10000D8F4(v9);
    }

    v11 = *(a3 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_lockscreenAnalytics);
    sub_10015C3CC(v7);
    v12 = [v4 distanceMeasurementQuality];
    v13 = v7 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastDistanceMeasurementQuality;
    *v13 = v12;
    *(v13 + 8) = 0;
  }

  else
  {
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_10034A190);
    v15 = v4;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      v20 = sub_10017BC10();
      v22 = sub_100017494(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "### Update for unknown nearby object %s", v18, 0xCu);
      sub_10000903C(v19);
    }
  }
}

uint64_t sub_1001A8458(void *a1)
{
  v2 = v1;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034A190);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_100017494(0xD000000000000025, 0x80000001002A3AA0, &v16);
    *(v8 + 12) = 2080;
    type metadata accessor for NIMotionActivityState(0);
    v10 = String.init<A>(describing:)();
    v12 = sub_100017494(v10, v11, &v16);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2112;
    *(v8 + 24) = v5;
    *v9 = v5;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: state=%s, session=%@", v8, 0x20u);
    sub_1000030B0(v9);

    swift_arrayDestroy();
  }

  v14 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_localMotionStateDidChangeSubject);
  return PassthroughSubject.send(_:)();
}

uint64_t getEnumTagSinglePayload for NearbyInteractionEvent(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NearbyInteractionEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001A8794()
{
  result = qword_10034A2E8;
  if (!qword_10034A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A2E8);
  }

  return result;
}

uint64_t sub_1001A87E8()
{
  v1 = 0x6576697463616E69;
  v2 = 0x676E696E6E7572;
  if (*v0 != 2)
  {
    v2 = 0x65646E6570737573;
  }

  if (*v0)
  {
    v1 = 0x646573756170;
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

unint64_t sub_1001A8868()
{
  result = qword_10034A2F0;
  if (!qword_10034A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A2F0);
  }

  return result;
}

uint64_t sub_1001A88BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

void sub_1001A893C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1001A2A18(v2);
}

void sub_1001A896C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1001282A4(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_1001A964C((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001282A4(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_100128218(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 radius];
      v19 = v18;
      [v17 radius];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 radius];
        v27 = v26;
        [v25 radius];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1000AF9AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_1000AF9AC((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_1001A964C((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001282A4(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_100128218(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 radius];
    v48 = v47;
    [v46 radius];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_1001A8FE4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1001282A4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1001A990C((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1001282A4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_100128218(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 regionSizeCategory];
      v104 = [v14 regionSizeCategory];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 regionSizeCategory];
        v7 = [v18 regionSizeCategory];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1000AF9AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1000AF9AC((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1001A990C((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001282A4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_100128218(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 regionSizeCategory];
    v41 = [v39 regionSizeCategory];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_1001A964C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 radius];
        v35 = v34;
        [v33 radius];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 radius];
        v19 = v18;
        [v17 radius];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1001A990C(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 regionSizeCategory];
          v35 = [v33 regionSizeCategory];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 regionSizeCategory];
          v20 = [v18 regionSizeCategory];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1001A9BF0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(a1 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));

      if (a2(v13))
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v12;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1001A9D08()
{
  if (qword_100338EC0 != -1)
  {
    swift_once();
  }

  v10 = sub_100014B08(v0);
  sub_100014A74(&v10, sub_1001A8FE4, sub_100014CF8);

  v10 = sub_100014B08(v1);
  sub_100014A74(&v10, sub_1001A896C, sub_100014DF0);

  v2 = objc_allocWithZone(NIHomeDeviceConfiguration);
  sub_100003118(0, &qword_10033E980, NIRegionPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithRegions:isa];

  [v4 setAllowedDevices:6];
  if (qword_100339138 != -1)
  {
    swift_once();
  }

  [v4 setAnchor:byte_10038B440];
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034A190);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Including copresence in configuration", v8, 2u);
  }

  [v4 setEnabledGestures:3];
  return v4;
}

BOOL sub_1001A9F9C(unsigned __int8 a1)
{
  v1 = a1;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = v1 - 5;
  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034A190);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    v8 = 0xE700000000000000;
    *v6 = 136315394;
    v9 = 0x6E776F6E6B6E75;
    v10 = 0x4F64657265776F70;
    v11 = 0xE90000000000006ELL;
    if (v1 != 5)
    {
      v10 = 0x7463697274736572;
      v11 = 0xEA00000000006465;
    }

    v12 = 0xEC00000064657A69;
    v13 = 0x726F687475616E75;
    if (v1 != 3)
    {
      v13 = 0x4F64657265776F70;
      v12 = 0xEA00000000006666;
    }

    if (v1 <= 4)
    {
      v10 = v13;
      v11 = v12;
    }

    v14 = 0x6E69747465736572;
    v15 = 0xE900000000000067;
    if (v1 != 1)
    {
      v14 = 0x726F707075736E75;
      v15 = 0xEB00000000646574;
    }

    if (v1)
    {
      v9 = v14;
      v8 = v15;
    }

    if (v1 <= 2)
    {
      v16 = v9;
    }

    else
    {
      v16 = v10;
    }

    if (v1 <= 2)
    {
      v17 = v8;
    }

    else
    {
      v17 = v11;
    }

    v18 = sub_100017494(v16, v17, &v20);

    *(v6 + 4) = v18;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v2 < 2;
    _os_log_impl(&_mh_execute_header, v4, v5, "BT State %s isActive=%{BOOL}d", v6, 0x12u);
    sub_10000903C(v7);
  }

  return v2 < 2;
}

uint64_t sub_1001AA1F4()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

LABEL_11:
    v14 = [v0 code];
    if (v14 == -10017)
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003078(v19, qword_10034A190);
      v9 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v9, v16))
      {
        goto LABEL_23;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Bluetooth unavailable, don't restart session";
    }

    else
    {
      if (v14 != -5889)
      {
        if (qword_100339128 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100003078(v21, qword_10034A190);
        swift_errorRetain();
        v9 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v9, v22))
        {
          v20 = 1;
          goto LABEL_29;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v9, v22, "Restarting for NIError / NIInternalError %@", v23, 0xCu);
        sub_1000030B0(v24);

        v20 = 1;
        goto LABEL_28;
      }

      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003078(v15, qword_10034A190);
      v9 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v9, v16))
      {
        goto LABEL_23;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "### Unsupported platform error, don't restart session";
    }

    _os_log_impl(&_mh_execute_header, v9, v16, v18, v17, 2u);
    goto LABEL_22;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_11;
  }

  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034A190);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "### Unrecognized error, not restarting: %@", v11, 0xCu);
    sub_1000030B0(v12);

LABEL_22:
    v20 = 0;
LABEL_28:

    goto LABEL_29;
  }

LABEL_23:
  v20 = 0;
LABEL_29:

  return v20;
}

void sub_1001AA628(void *a1)
{
  v2 = v1;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034A190);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD000000000000017, 0x80000001002A3B70, &v30);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: nearbyObject=%@", v8, 0x16u);
    sub_1000030B0(v9);

    sub_10000903C(v10);
  }

  v12 = sub_1001A6BE8(v5);
  if (v12)
  {
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      v18 = sub_1000092A0();
      v20 = sub_100017494(v18, v19, &v30);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "FOUND %s", v16, 0xCu);
      sub_10000903C(v17);
    }

    v21 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_lockscreenAnalytics);
    sub_10015BE48(v13);
  }

  else
  {
    v22 = v5;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      v26 = sub_10017BC10();
      v28 = sub_100017494(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, oslog, v23, "### Discovered unknown nearby object %s", v24, 0xCu);
      sub_10000903C(v25);
    }
  }
}

uint64_t sub_1001AA9C8()
{
  v1 = v0;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Session INVALIDATED: %@", v5, 0xCu);
    sub_1000030B0(v6);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v1;
  static Published.subscript.setter();
  if (qword_100339160 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectWeakAssign();

  *&v8[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_numTokensAdded] = 0;
  v9 = *&v8[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState];
  *(v9 + 24) = 0;

  sub_10000C49C();
  v14 = *(v9 + 24);
  CurrentValueSubject.send(_:)();

  sub_1000143FC();
  sub_10000CF60();
  result = sub_1001AA1F4();
  v11 = *&v8[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier];
  if (result)
  {
    if (!v11)
    {
      return result;
    }

    v12 = *&v8[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier];

    sub_100193598();
  }

  else
  {
    if (!v11)
    {
      return result;
    }

    v13 = *&v8[OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier];

    sub_10001462C();
  }
}

uint64_t sub_1001AAC90(unint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = v7;
      sub_1001A7B4C(&v11, v12, a2, v2);

      if (v9 == i)
      {
        return swift_unknownObjectWeakDestroy();
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return swift_unknownObjectWeakDestroy();
}

void sub_1001AAD98()
{
  v1 = v0;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Session did start running", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier))
  {
    v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier);

    sub_100194300();
  }
}

uint64_t sub_1001AAEB4(unint64_t a1)
{
  swift_unknownObjectWeakInit();
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = v5;
      sub_1001A8030(&v9, v10, v1);

      if (v7 == i)
      {
        return swift_unknownObjectWeakDestroy();
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_1001AAFB4(char a1)
{
  v2 = v1;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034A190);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000035, 0x80000001002A3B30, &v12);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: uwbRangingAvailable=%{BOOL}d", v7, 0x12u);
    sub_10000903C(v8);
  }

  if (qword_100339130 != -1)
  {
    swift_once();
  }

  v9 = off_10034A1A8;
  *(off_10034A1A8 + 24) = a1 & 1;

  sub_10005E50C();
  LOBYTE(v12) = v9[24];
  CurrentValueSubject.send(_:)();

  v10 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_nearbyInteractionEventSubject);
  v12 = (a1 & 1);
  v13 = 2;
  return PassthroughSubject.send(_:)();
}

void sub_1001AB1A4(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for OSSignpostID();
  isa = v6[-1].isa;
  v8 = *(isa + 8);
  v9 = __chkstk_darwin(v6);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v87 - v12;
  v14 = sub_1001A6BE8(a1);
  if (v14)
  {
    v15 = v14;
    if ([a1 distanceMeasurementQuality] == 1)
    {
      v87 = isa;
      v88 = v6;
      v89._countAndFlagsBits = 0;
      v89._object = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v16 = sub_1000092A0();
      v18 = v17;

      v89._countAndFlagsBits = v16;
      v89._object = v18;
      v19._countAndFlagsBits = 0x204E4F4947455220;
      v19._object = 0xEF20455441445055;
      String.append(_:)(v19);
      v21._countAndFlagsBits = sub_10017BC10(v20);
      String.append(_:)(v21);

      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v90 = v89;
      if (a3)
      {
        v89._countAndFlagsBits = 0x3D76657270;
        v89._object = 0xE500000000000000;
        v23 = a3;
        v24 = [v23 name];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28._countAndFlagsBits = v25;
        v28._object = v27;
        String.append(_:)(v28);

        v29._countAndFlagsBits = 32;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        String.append(_:)(v89);
      }

      if (a2)
      {
        v89._countAndFlagsBits = 0x3D72727563;
        v89._object = 0xE500000000000000;
        v30 = a2;
        v31 = [v30 name];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35._countAndFlagsBits = v32;
        v35._object = v34;
        String.append(_:)(v35);

        v36._countAndFlagsBits = 32;
        v36._object = 0xE100000000000000;
        String.append(_:)(v36);
        String.append(_:)(v89);
      }

      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100003078(v37, qword_10034A190);
      countAndFlagsBits = v90._countAndFlagsBits;
      object = v90._object;

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v89._countAndFlagsBits = v43;
        *v42 = 136315138;
        v44 = sub_100017494(countAndFlagsBits, object, &v89._countAndFlagsBits);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "%s", v42, 0xCu);
        sub_10000903C(v43);
      }

      else
      {
      }

      v77 = mach_continuous_time();
      v78 = v15 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionTimestamp;
      *v78 = v77;
      *(v78 + 8) = 0;
      if (a2)
      {
        v79 = sub_1000A09A8();
      }

      else
      {
        v79 = 5;
      }

      v80 = *(v15 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);

      sub_10000D4C4(v79);

      if (qword_100339268 != -1)
      {
        swift_once();
      }

      if (*(qword_10038B5D8 + 32) != 1)
      {
        v81 = *(qword_10038B5D8 + 24);
        v82 = v15 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionResolutionSignpostPostedInstant;
        if ((*(v15 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionResolutionSignpostPostedInstant + 8) & 1) != 0 || *v82 != v81)
        {
          static OSSignpostID.exclusive.getter();
          static os_signpost_type_t.event.getter();
          if (qword_100338F20 != -1)
          {
            swift_once();
          }

          sub_100035D04(&unk_10034A310, &qword_100272780);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_1002725A0;
          *(v83 + 56) = &type metadata for String;
          v84 = sub_1000595D4();
          *(v83 + 32) = 0xD00000000000002DLL;
          *(v83 + 40) = 0x80000001002A3B00;
          *(v83 + 96) = &type metadata for UInt64;
          *(v83 + 104) = &protocol witness table for UInt64;
          *(v83 + 64) = v84;
          *(v83 + 72) = v81;
          static OSSignpostID.exclusive.getter();
          os_signpost(_:dso:log:name:signpostID:_:_:)();

          v85 = v88;
          v86 = *(v87 + 1);
          v86(v11, v88);
          v86(v13, v85);
          *v82 = v81;
          *(v82 + 8) = 0;
        }
      }
    }

    else
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100003078(v70, qword_10034A190);
      v71 = a1;
      v88 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v88, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v71;
        *v74 = v71;
        v75 = v71;
        _os_log_impl(&_mh_execute_header, v88, v72, "Ignoring region transition from %@", v73, 0xCu);
        sub_1000030B0(v74);
      }

      v76 = v88;
    }
  }

  else
  {
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v90._countAndFlagsBits = 0xD00000000000002BLL;
    v90._object = 0x80000001002A3AD0;
    v46._countAndFlagsBits = sub_10017BC10(v45);
    String.append(_:)(v46);

    v47._countAndFlagsBits = 8238;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    if (a3)
    {
      v89._countAndFlagsBits = 0x3D76657270;
      v89._object = 0xE500000000000000;
      v48 = a3;
      v49 = [v48 name];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53._countAndFlagsBits = v50;
      v53._object = v52;
      String.append(_:)(v53);

      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);
      String.append(_:)(v89);
    }

    if (a2)
    {
      v89._countAndFlagsBits = 0x3D72727563;
      v89._object = 0xE500000000000000;
      v55 = a2;
      v56 = [v55 name];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60._countAndFlagsBits = v57;
      v60._object = v59;
      String.append(_:)(v60);

      v61._countAndFlagsBits = 32;
      v61._object = 0xE100000000000000;
      String.append(_:)(v61);
      String.append(_:)(v89);
    }

    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100003078(v62, qword_10034A190);
    v64 = v90._countAndFlagsBits;
    v63 = v90._object;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v89._countAndFlagsBits = v68;
      *v67 = 136315138;
      v69 = sub_100017494(v64, v63, &v89._countAndFlagsBits);

      *(v67 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v65, v66, "%s", v67, 0xCu);
      sub_10000903C(v68);
    }

    else
    {
    }
  }
}

void sub_1001ABB7C()
{
  if (qword_100339130 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v0 = off_10034A1A8;
    *(off_10034A1A8 + 24) = 1;

    sub_10005E50C();
    LOBYTE(v22[0]) = v0[24];
    CurrentValueSubject.send(_:)();

    if (!sub_1000036FC())
    {
      break;
    }

    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_10034A190);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Session no longer suspended, restarting now", v4, 2u);
    }

    sub_10000B620();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v10 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16);
    v11 = Strong;

    __chkstk_darwin(v12);
    type metadata accessor for HandoffDevice();
    type metadata accessor for UUID();
    sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID);
    swift_getKeyPath();
    v13 = v10 + qword_100346AF8;
    os_unfair_lock_lock((v10 + qword_100346AF8));
    v22[0] = *(v13 + 8);

    swift_getAtKeyPath();

    v14 = v22[5];
    os_unfair_lock_unlock(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = sub_100009194(*(v14 + 16), 0);
      v17 = sub_100009A04(v22, v16 + 32, v15);
      sub_100004F98();
      if (v17 != v15)
      {
        __break(1u);
        return;
      }

      if (v16 < 0)
      {
LABEL_33:
        v18 = _CocoaArrayWrapper.endIndex.getter();
        if (!v18)
        {
LABEL_34:

          return;
        }

        goto LABEL_22;
      }
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }
    }

    if ((v16 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    v18 = *(v16 + 16);
    if (!v18)
    {
      goto LABEL_34;
    }

LABEL_22:
    v19 = 0;
    while ((v16 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_30;
      }

LABEL_26:
      sub_1000737D0();

      ++v19;
      if (v21 == v18)
      {
        goto LABEL_34;
      }
    }

    if (v19 >= *(v16 + 16))
    {
      goto LABEL_31;
    }

    v20 = *(v16 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034A190);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Shouldn't start ranging when session suspension ended", v8, 2u);
  }
}

unint64_t sub_1001AC0D8()
{
  result = qword_10034A410;
  if (!qword_10034A410)
  {
    sub_100035D4C(&qword_10034A3F8, &qword_100287680);
    sub_1001AC18C(&qword_10034A418, type metadata accessor for NIMotionActivityState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A410);
  }

  return result;
}

uint64_t sub_1001AC18C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001AC1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Retrier.RetryIntervalPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AC240@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_1001BFD60(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result & 1;
  return result;
}

void *sub_1001AC36C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (result)
  {
    v6 = *v4;
    v7 = result;
    v8 = a4();
    v9 = sub_10000F0CC();
    v10 = sub_1000089FC(v9, v8);

    v11 = *(v10 + 16);

    return (v11 != 0);
  }

  return result;
}

void sub_1001AC490(void (*a1)(void **))
{
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0x6C4165766F6D6572, 0xEB0000000029286CLL, &v21);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v8 = v3 + qword_100346AF8;
  os_unfair_lock_lock((v3 + qword_100346AF8));
  v9 = *(v8 + 8);
  *(v8 + 8) = _swiftEmptyDictionarySingleton;
  os_unfair_lock_unlock(v8);
  if (*(v9 + 16))
  {
    v10 = 0;
    v11 = *(v9 + 64);
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = (v12 + 63) >> 6;
    v15 = v13 & v11;
    if ((v13 & v11) != 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v17 = *(v3 + 40);
        v21 = _swiftEmptyArrayStorage;

        PassthroughSubject.send(_:)();

        return;
      }

      v15 = *(v9 + 64 + 8 * v16);
      ++v10;
      if (v15)
      {
        v10 = v16;
        do
        {
LABEL_16:
          v18 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          v21 = *(*(v9 + 56) + ((v10 << 9) | (8 * v18)));
          v19 = v21;
          a1(&v21);
          v20 = *(v3 + 48);

          PassthroughSubject.send(_:)();
        }

        while (v15);
      }
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_1001AC70C(void (*a1)(uint64_t **))
{
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0x6C4165766F6D6572, 0xEB0000000029286CLL, &v20);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v8 = v3 + qword_100346AF8;
  os_unfair_lock_lock((v3 + qword_100346AF8));
  v9 = *(v8 + 8);
  *(v8 + 8) = _swiftEmptyDictionarySingleton;
  os_unfair_lock_unlock(v8);
  if (*(v9 + 16))
  {
    v10 = 0;
    v11 = *(v9 + 64);
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = (v12 + 63) >> 6;
    v15 = v13 & v11;
    if ((v13 & v11) != 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v17 = *(v3 + 40);
        v20 = _swiftEmptyArrayStorage;

        PassthroughSubject.send(_:)();

        return;
      }

      v15 = *(v9 + 64 + 8 * v16);
      ++v10;
      if (v15)
      {
        v10 = v16;
        do
        {
LABEL_16:
          v18 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          v20 = *(*(v9 + 56) + ((v10 << 9) | (8 * v18)));

          a1(&v20);
          v19 = *(v3 + 48);

          PassthroughSubject.send(_:)();
        }

        while (v15);
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1001AC98C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034A530);
  sub_100003078(v0, qword_10034A530);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001ACA34()
{
  v1 = [*(*v0 + 32) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1001ACA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1001E0C7C(a1, a2, a3, WitnessTable);
}

Swift::Int sub_1001ACAFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001ACB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1001F71AC(a1, a2, WitnessTable);
}

Swift::Int sub_1001ACBA4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  WitnessTable = swift_getWitnessTable();
  sub_1001F71AC(v5, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t sub_1001ACC2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

void sub_1001ACC80()
{
  v1 = v0;
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A530);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0x6F54796669746F6ELL, 0xEB000000006E656BLL, &v7);
    *(v5 + 12) = 1024;
    swift_beginAccess();
    *(v5 + 14) = *(v1 + 32);

    _os_log_impl(&_mh_execute_header, v3, v4, "%s: %d", v5, 0x12u);
    sub_10000903C(v6);
  }

  else
  {
  }
}

uint64_t sub_1001AD11C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  *(v1 + 32) = -1;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v4 = qword_10038B5B8;
  *(v1 + 40) = qword_10038B5B8;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  v5 = qword_100339148;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10034A530);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Init", v10, 2u);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1001AD260()
{
  v1 = v0;
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A530);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 16);

  v7 = *(v1 + 56);
  sub_10002689C(*(v1 + 48));
  v8 = *(v1 + 72);
  sub_10002689C(*(v1 + 64));
  return v1;
}

uint64_t sub_1001AD368()
{
  sub_1001AD260();

  return swift_deallocClassInstance();
}

void sub_1001AD39C()
{
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034A530);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "RPClient invalidated", v2, 2u);
  }
}

uint64_t sub_1001AD484()
{
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034A530);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "RPNotificationIdentitiesChanged fired", v3, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001AD92C();
  }

  return result;
}

void sub_1001AD5FC()
{
  v1 = v0;
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034A530);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v0 + 24);
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v0 + 32);
    v9 = v7;
    notify_cancel(v8);
    *(v1 + 32) = -1;
    sub_1001ACC80();
    v10 = *(v1 + 16);
    v11 = *(v10 + 16);
    *(v11 + 24) = 0;

    sub_10005E50C();
    v20 = *(v11 + 24);
    CurrentValueSubject.send(_:)();

    v12 = *(v10 + 24);

    sub_1001AC70C(sub_10004BB70);

    [v9 invalidate];
    v13 = *(v1 + 24);
    *(v1 + 24) = 0;

    v14 = *(v1 + 48);
    if (v14)
    {
      v15 = *(v1 + 56);

      v14(v16);
      sub_10002689C(v14);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Already invalidated.", v18, 2u);
    }
  }
}

void sub_1001AD92C()
{
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034A530);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    aBlock[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100017494(0xD000000000000018, 0x80000001002A3D80, aBlock);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  v6 = *(v0 + 24);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001AE1F4;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001AE160;
    aBlock[3] = &unk_10030F8D0;
    v8 = _Block_copy(aBlock);
    v9 = v6;

    [v9 getIdentitiesWithFlags:939 completion:v8];
    _Block_release(v8);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "### No rpClient?", v11, 2u);
    }
  }
}

uint64_t sub_1001ADBCC(uint64_t a1)
{
  result = sub_1001ADC8C(&qword_10034A820, type metadata accessor for RPIdentitySourceState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001ADC8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001ADCF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *(a1 + 8) = sub_1001ADC8C(a4, type metadata accessor for RPIdentityWrapper);
  result = sub_1001ADC8C(&qword_1003468F0, type metadata accessor for RPIdentityWrapper);
  *(a1 + 16) = result;
  return result;
}

void sub_1001ADD60(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      if (qword_100339148 != -1)
      {
LABEL_32:
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100003078(v6, qword_10034A530);
      swift_errorRetain();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v36 = v10;
        *v9 = 136315138;
        swift_getErrorValue();
        v11 = Error.localizedDescription.getter();
        v13 = sub_100017494(v11, v12, &v36);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v7, v8, "### Identification failed to get identities: %s", v9, 0xCu);
        sub_10000903C(v10);
      }
    }

    else
    {
      if (a1)
      {
        v14 = a1;
      }

      else
      {
        v14 = _swiftEmptyArrayStorage;
      }

      v36 = _swiftEmptyArrayStorage;
      if (v14 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15)
      {
        v16 = 0;
        v17 = _swiftEmptyArrayStorage;
        do
        {
          v18 = v16;
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v19 = *(v14 + 8 * v18 + 32);
            }

            v20 = v19;
            v16 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v21 = [v19 identifier];
            if (v21)
            {
              break;
            }

            ++v18;
            if (v16 == v15)
            {
              goto LABEL_28;
            }
          }

          v35 = v5;
          v22 = v21;
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          type metadata accessor for RPIdentityWrapper();
          v25 = swift_allocObject();
          v25[2] = v34;
          v25[3] = v24;
          v25[4] = v20;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v26 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v17 = v36;
          v5 = v35;
        }

        while (v16 != v15);
      }

      else
      {
        v17 = _swiftEmptyArrayStorage;
      }

LABEL_28:

      v27 = *(*(v5 + 16) + 24);
      v28 = v27 + qword_100346AF8;

      os_unfair_lock_lock(v28);
      v29 = *(v28 + 8);
      v30 = *(v27 + 16);

      v32 = sub_1001C2EA8(v31, v17);

      *(v28 + 8) = v32;

      os_unfair_lock_unlock(v28);

      sub_1001C38E4(v29, v32);

      v33 = *(*(v5 + 16) + 16);
      *(v33 + 24) = 1;

      sub_10005E50C();
      LOBYTE(v36) = *(v33 + 24);
      CurrentValueSubject.send(_:)();
    }
  }
}

uint64_t sub_1001AE160(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1001AE1FC();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

unint64_t sub_1001AE1FC()
{
  result = qword_10033FA30;
  if (!qword_10033FA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033FA30);
  }

  return result;
}

void sub_1001AE248(uint64_t a1, uint64_t a2)
{
  if (qword_100339148 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034A530);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0xD000000000000015, 0x80000001002A2010, &v18);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  if (*(a1 + 24))
  {
    sub_10001618C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 1;
    v10 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v10);
  }

  else
  {
    v11 = [objc_allocWithZone(RPClient) init];
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v12 = qword_10038B5B8;
    [v11 setDispatchQueue:qword_10038B5B8];
    v22 = sub_1001AD39C;
    v23 = 0;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100018AB8;
    v21 = &unk_10030F8F8;
    v13 = _Block_copy(&v18);
    [v11 setInvalidationHandler:v13];
    _Block_release(v13);
    v14 = *(a1 + 24);
    *(a1 + 24) = v11;
    v15 = v11;

    v16 = swift_allocObject();
    swift_weakInit();
    v22 = sub_1001AE608;
    v23 = v16;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1002386BC;
    v21 = &unk_10030F920;
    v17 = _Block_copy(&v18);

    swift_beginAccess();
    notify_register_dispatch("com.apple.rapport.identitiesChanged", (a1 + 32), v12, v17);
    swift_endAccess();
    _Block_release(v17);
    sub_1001ACC80();
    sub_1001AD92C();
    (*(a2 + 16))(a2, 0);
  }
}

unint64_t sub_1001AE638(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  result = type metadata accessor for Array();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Array();
    if (v5 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        result = sub_100043FCC();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001AE760(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1001AE8B0(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1001AEA9C(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1001AEAB8(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1001AEAD4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1001AEAF8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001AEB48()
{
  result = qword_10034A970;
  if (!qword_10034A970)
  {
    sub_100035D4C(&qword_10034A978, qword_100287A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A970);
  }

  return result;
}

unint64_t sub_1001AEBC0()
{
  result = qword_10034A980;
  if (!qword_10034A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A980);
  }

  return result;
}

void sub_1001AEC20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x646F50656D6F48;
  v5 = 0xE200000000000000;
  v6 = 30324;
  if (v2 != 5)
  {
    v6 = 0x6863746177;
    v5 = 0xE500000000000000;
  }

  v7 = 1685016681;
  v8 = 0xE400000000000000;
  if (v2 != 3)
  {
    v7 = 6513005;
    v8 = 0xE300000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 0x656E6F685069;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

Swift::Int sub_1001AECFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100287B58[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001AED84()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100287B58[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1001AEDD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001AEE14(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001AEE14(uint64_t result)
{
  if (result <= 6)
  {
    if (result <= 1)
    {
      if (result < 2)
      {
        return result;
      }
    }

    else if (result == 2 || result == 3 || result == 4)
    {
      return result;
    }

    return 11;
  }

  if (result > 16)
  {
    switch(result)
    {
      case 17:
        return 8;
      case 18:
        return 9;
      case 33:
        return 10;
      default:
        return 11;
    }
  }

  else
  {
    switch(result)
    {
      case 7:
        return 5;
      case 8:
        return 6;
      case 9:
        return 7;
      default:
        return 11;
    }
  }
}

uint64_t sub_1001AEEBC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 11;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_73:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_72;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
LABEL_62:
        v29 = v3;
        v24 = v3;

        if ((v24 & 1) == 0)
        {
          goto LABEL_63;
        }

        return 11;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v6 = sub_100164584(result, a2, 10);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_63:
    result = sub_1001AEE14(v6);
    if (result != 11)
    {
      return result;
    }
  }

  return 11;
}

unint64_t sub_1001AF1E0()
{
  result = qword_10034A988;
  if (!qword_10034A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A988);
  }

  return result;
}

uint64_t sub_1001AF234()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold12TrackedToken_deviceID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackedToken()
{
  result = qword_10034A9B8;
  if (!qword_10034A9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AF334()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001AF3D0()
{
  _StringGuts.grow(_:)(28);

  UUID.uuidString.getter();
  sub_10000B584(8);

  v1 = static String._fromSubstring(_:)();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x3D6E6B7420;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6 = [*(v0 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token) description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0xD000000000000012;
}

uint64_t sub_1001AF558(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1001AF574(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001AF590(uint64_t a1)
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

uint64_t sub_1001AF5B8(uint64_t a1)
{
  if ((*(a1 + 56) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1001AF5D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001AF61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001AF670(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t type metadata accessor for NoticeEffect()
{
  result = qword_10034AAB8;
  if (!qword_10034AAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001AF6F4()
{
  sub_1001AF77C();
  if (v0 <= 0x3F)
  {
    sub_1001AF7C4();
    if (v1 <= 0x3F)
    {
      sub_1001AF814();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1001AF77C()
{
  if (!qword_10034AAC8)
  {
    v0 = type metadata accessor for NoticeContext(0);
    if (!v1)
    {
      atomic_store(v0, &qword_10034AAC8);
    }
  }
}

void sub_1001AF7C4()
{
  if (!qword_10034AAD0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10034AAD0);
    }
  }
}

void *sub_1001AF814()
{
  result = qword_10034AAD8;
  if (!qword_10034AAD8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10034AAD8);
  }

  return result;
}

uint64_t sub_1001AFE88(void *a1)
{
  v2 = v1;
  v39 = sub_100035D04(&qword_10034AB60, &qword_100287EE0);
  v37 = *(v39 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v39);
  v35 = &v32 - v5;
  v40 = sub_100035D04(&qword_10034AB68, &qword_100287EE8);
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v40);
  v36 = &v32 - v7;
  v8 = sub_100035D04(&qword_10034AB70, &qword_100287EF0);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = sub_100035D04(&qword_10034AB78, &qword_100287EF8);
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = sub_100035D04(&qword_10034AB80, &unk_100287F00);
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v20 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001B341C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v2;
  v21 = v2[1];
  v23 = *(v2 + 16);
  if (*(v2 + 56) > 1u)
  {
    if (*(v2 + 56) == 2)
    {
      LOBYTE(v43) = 2;
      sub_1001B34C4();
      v25 = v36;
      v26 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v22;
      v44 = v21;
      v45 = v23;
      v46 = *(v2 + 17);
      *v47 = *(v2 + 33);
      *&v47[15] = v2[6];
      sub_10010B950();
      v27 = v40;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v38 + 8))(v25, v27);
      return (*(v41 + 8))(v19, v26);
    }

    else
    {
      LOBYTE(v43) = 3;
      sub_1001B3470();
      v30 = v35;
      v31 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v30, v39);
      return (*(v41 + 8))(v19, v31);
    }
  }

  else
  {
    if (*(v2 + 56))
    {
      LOBYTE(v43) = 1;
      sub_1001B3518();
      v24 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v22;
      v44 = v21;
      sub_100165FDC();
      v29 = v34;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      (*(v33 + 8))(v11, v29);
    }

    else
    {
      LOBYTE(v43) = 0;
      sub_1001B356C();
      v24 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v22;
      v44 = v21;
      v45 = v23;
      sub_1001B3614();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v32 + 8))(v15, v12);
    }

    return (*(v41 + 8))(v19, v24);
  }
}

uint64_t sub_1001B03EC(uint64_t a1)
{
  v2 = sub_1001B356C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0428(uint64_t a1)
{
  v2 = sub_1001B356C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B0484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x634172656461656CLL && a2 == 0xEC0000006E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001B0510(uint64_t a1)
{
  v2 = sub_1001B3518();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B054C(uint64_t a1)
{
  v2 = sub_1001B3518();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001B0588()
{
  v1 = 0x764572656E6E6162;
  v2 = 0x46746E6573657270;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x61546E6F74747562;
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

uint64_t sub_1001B0624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B2A20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B064C(uint64_t a1)
{
  v2 = sub_1001B341C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0688(uint64_t a1)
{
  v2 = sub_1001B341C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B06C4(uint64_t a1)
{
  v2 = sub_1001B34C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0700(uint64_t a1)
{
  v2 = sub_1001B34C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B073C(uint64_t a1)
{
  v2 = sub_1001B3470();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B0778(uint64_t a1)
{
  v2 = sub_1001B3470();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001B07B4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1001B2B9C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1001B081C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1001B20A8(v5, v7) & 1;
}

uint64_t sub_1001B0878(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      _StringGuts.grow(_:)(17);

      v5 = 0x617369446C6C6977;
    }

    else
    {
      _StringGuts.grow(_:)(17);

      v5 = 0x41746F4E6C6C6977;
    }

    goto LABEL_7;
  }

  if (a3 == 2)
  {
    _StringGuts.grow(_:)(16);

    v5 = 0x7061736944646964;
LABEL_7:
    v13 = v5;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 41;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    return v13;
  }

  v9 = 0x676E6964616F6CLL;
  if (a1 ^ 4 | a2)
  {
    v10 = 0x736E617254646964;
  }

  else
  {
    v10 = 0x6E6172546C6C6977;
  }

  if (a1 ^ 3 | a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6165707041646964;
  }

  if (a1 ^ 1 | a2)
  {
    v12 = 0x657070416C6C6977;
  }

  else
  {
    v12 = 0x64616F4C646964;
  }

  if (a1 | a2)
  {
    v9 = v12;
  }

  if (a1 <= 2)
  {
    return v9;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_1001B0A9C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x676E6964616F6CLL;
    v6 = 0x41746F4E6C6C6977;
    if (a1 != 2)
    {
      v6 = 0x657070416C6C6977;
    }

    if (a1)
    {
      v5 = 0x64616F4C646964;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736E617254646964;
    v2 = 0x617369446C6C6977;
    if (a1 != 7)
    {
      v2 = 0x7061736944646964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6165707041646964;
    if (a1 != 4)
    {
      v3 = 0x6E6172546C6C6977;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1001B0BF8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v77 = a4;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  v5 = sub_100035D04(&qword_10034ACA8, &qword_100288608);
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  __chkstk_darwin(v5);
  v72 = &v53 - v7;
  v8 = sub_100035D04(&qword_10034ACB0, &qword_100288610);
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  __chkstk_darwin(v8);
  v69 = &v53 - v10;
  v11 = sub_100035D04(&qword_10034ACB8, &qword_100288618);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  __chkstk_darwin(v11);
  v65 = &v53 - v13;
  v14 = sub_100035D04(&qword_10034ACC0, &qword_100288620);
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  __chkstk_darwin(v14);
  v62 = &v53 - v16;
  v61 = sub_100035D04(&qword_10034ACC8, &qword_100288628);
  v60 = *(v61 - 8);
  v17 = *(v60 + 64);
  __chkstk_darwin(v61);
  v59 = &v53 - v18;
  v58 = sub_100035D04(&qword_10034ACD0, &qword_100288630);
  v57 = *(v58 - 8);
  v19 = *(v57 + 64);
  __chkstk_darwin(v58);
  v56 = &v53 - v20;
  v21 = sub_100035D04(&qword_10034ACD8, &qword_100288638);
  v68 = *(v21 - 8);
  v22 = *(v68 + 64);
  __chkstk_darwin(v21);
  v24 = &v53 - v23;
  v55 = sub_100035D04(&qword_10034ACE0, &qword_100288640);
  v54 = *(v55 - 8);
  v25 = *(v54 + 64);
  __chkstk_darwin(v55);
  v27 = &v53 - v26;
  v28 = sub_100035D04(&qword_10034ACE8, &qword_100288648);
  v53 = *(v28 - 8);
  v29 = *(v53 + 64);
  __chkstk_darwin(v28);
  v31 = &v53 - v30;
  v32 = sub_100035D04(&qword_10034ACF0, &unk_100288650);
  v33 = *(v32 - 8);
  v75 = v32;
  v76 = v33;
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v53 - v35;
  v37 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001B4E18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v77 <= 1u)
  {
    if (!v77)
    {
      v81 = 2;
      sub_1001B5064();
      v38 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v68 + 8))(v24, v21);
      return (*(v76 + 8))(v36, v38);
    }

    v86 = 7;
    sub_1001B4EC0();
    v39 = v69;
    v38 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = v71;
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = v70;
LABEL_7:
    (*(v41 + 8))(v39, v40);
    return (*(v76 + 8))(v36, v38);
  }

  if (v77 == 2)
  {
    v87 = 8;
    sub_1001B4E6C();
    v39 = v72;
    v38 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = v74;
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = v73;
    goto LABEL_7;
  }

  if (v78 > 2)
  {
    if (v78 ^ 3 | *(&v78 + 1))
    {
      if (v78 ^ 4 | *(&v78 + 1))
      {
        v85 = 6;
        sub_1001B4F14();
        v47 = v65;
        v38 = v75;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = v66;
        v48 = v67;
      }

      else
      {
        v84 = 5;
        sub_1001B4F68();
        v47 = v62;
        v38 = v75;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = v63;
        v48 = v64;
      }

      (*(v49 + 8))(v47, v48);
      return (*(v76 + 8))(v36, v38);
    }

    v83 = 4;
    sub_1001B4FBC();
    v51 = v59;
    v43 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v60 + 8))(v51, v61);
  }

  else
  {
    if (v78 == 0)
    {
      v79 = 0;
      sub_1001B510C();
      v50 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v53 + 8))(v31, v28);
      return (*(v76 + 8))(v36, v50);
    }

    if (v78 ^ 1 | *(&v78 + 1))
    {
      v82 = 3;
      sub_1001B5010();
      v52 = v56;
      v43 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = *(v57 + 8);
      v45 = v52;
      v46 = &v89;
    }

    else
    {
      v80 = 1;
      sub_1001B50B8();
      v43 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = *(v54 + 8);
      v45 = v27;
      v46 = &v88;
    }

    v44(v45, *(v46 - 32));
  }

  return (*(v76 + 8))(v36, v43);
}

uint64_t sub_1001B156C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B3D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B15A0(uint64_t a1)
{
  v2 = sub_1001B4E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B15DC(uint64_t a1)
{
  v2 = sub_1001B4E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1618(uint64_t a1)
{
  v2 = sub_1001B4FBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1654(uint64_t a1)
{
  v2 = sub_1001B4FBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1690(uint64_t a1)
{
  v2 = sub_1001B4E6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B16CC(uint64_t a1)
{
  v2 = sub_1001B4E6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1708(uint64_t a1)
{
  v2 = sub_1001B50B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1744(uint64_t a1)
{
  v2 = sub_1001B50B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1780(uint64_t a1)
{
  v2 = sub_1001B4F14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B17BC(uint64_t a1)
{
  v2 = sub_1001B4F14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B17F8(uint64_t a1)
{
  v2 = sub_1001B510C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1834(uint64_t a1)
{
  v2 = sub_1001B510C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1870(uint64_t a1)
{
  v2 = sub_1001B5010();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B18AC(uint64_t a1)
{
  v2 = sub_1001B5010();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B18E8(uint64_t a1)
{
  v2 = sub_1001B4EC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1924(uint64_t a1)
{
  v2 = sub_1001B4EC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1960(uint64_t a1)
{
  v2 = sub_1001B5064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B199C(uint64_t a1)
{
  v2 = sub_1001B5064();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B19D8(uint64_t a1)
{
  v2 = sub_1001B4F68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1A14(uint64_t a1)
{
  v2 = sub_1001B4F68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B1A50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001B4048(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1001B1AC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001B1CF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001B1E88(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100010708(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001B1AC8(v13, a3, a4, &v12);
  v10 = v4;
  sub_100010708(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1001B1E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1001B1AC8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1001B1F40(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10006DA04(a3, a4);
          return sub_1001B1CF8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001B20A8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 56) > 1u)
  {
    if (*(a1 + 56) != 2)
    {
      if (*(a2 + 56) == 3)
      {
        v20 = vorrq_s8(*(a2 + 24), *(a2 + 40));
        if (!(*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | *(a2 + 16) | *(a2 + 8) | *a2))
        {
          return 1;
        }
      }

      return 0;
    }

    if (*(a2 + 56) != 2 || v3 != *a2)
    {
      return 0;
    }

    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    v15 = *(a2 + 40);
    v14 = *(a2 + 48);
    if (v2 != *(a2 + 8) || (v4 | ((*(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32)) << 8)) != *(a2 + 16))
    {
      v16 = *(a1 + 8);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    if ((v8 != v12 || v9 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (!v10)
    {
      return !v14;
    }

    if (!v14)
    {
      return 0;
    }

    if (v11 == v15 && v10 == v14)
    {
      return 1;
    }

    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  if (*(a1 + 56))
  {
    if (*(a2 + 56) != 1)
    {
      return 0;
    }

    v17 = *a2;
    v18 = *(a2 + 8);
    if (v2 >> 60 == 15)
    {
      if (v18 >> 60 == 15)
      {
        sub_1001835CC(a1, v24);
        sub_1001835CC(a2, v24);
        sub_10006DB04(v3, v2);
        return 1;
      }
    }

    else if (v18 >> 60 != 15)
    {
      sub_1001835CC(a1, v24);
      sub_1001835CC(a2, v24);
      v22 = sub_1001B1F40(v3, v2, v17, v18);
      sub_10006DB04(v17, v18);
      sub_10006DB04(v3, v2);
      return (v22 & 1) != 0;
    }

    sub_1001835CC(a1, v24);
    sub_1001835CC(a2, v24);
    sub_10006DB04(v3, v2);
    sub_10006DB04(v17, v18);
    return 0;
  }

  if (*(a2 + 56))
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      if (v7 != 1)
      {
        return 0;
      }
    }

    else if (*(a2 + 16))
    {
      return 0;
    }

    goto LABEL_38;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

LABEL_38:
    if (v3 == v5 && v2 == v6)
    {
      return 1;
    }

    v23 = *a1;
    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  if (v3 > 2)
  {
    if (v3 ^ 3 | v2)
    {
      if (v3 ^ 4 | v2)
      {
        if (v7 != 3 || v5 != 5)
        {
          return 0;
        }
      }

      else if (v7 != 3 || v5 != 4)
      {
        return 0;
      }
    }

    else if (v7 != 3 || v5 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (!(v3 | v2))
    {
      return v7 == 3 && !(v6 | v5);
    }

    if (v3 ^ 1 | v2)
    {
      if (v7 != 3 || v5 != 2)
      {
        return 0;
      }
    }

    else if (v7 != 3 || v5 != 1)
    {
      return 0;
    }
  }

  return !v6;
}

uint64_t sub_1001B2404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeContext(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for NoticeEffect();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v44[-v14];
  __chkstk_darwin(v13);
  v17 = &v44[-v16];
  v18 = sub_100035D04(&qword_10034AB90, &qword_100287F10);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v44[-v21];
  v23 = &v44[*(v20 + 56) - v21];
  sub_1001B36CC(a1, &v44[-v21], type metadata accessor for NoticeEffect);
  sub_1001B36CC(a2, v23, type metadata accessor for NoticeEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001B36CC(v22, v12, type metadata accessor for NoticeEffect);
      v26 = *v12;
      v25 = v12[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v26 == *v23 && v25 == v23[1])
        {
          v40 = v23[1];
        }

        else
        {
          v28 = v23[1];
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_25;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1001B36CC(v22, v17, type metadata accessor for NoticeEffect);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1001B3668(v23, v7);
        v39 = sub_100223750(v17, v7);
        sub_1001B37A4(v7, type metadata accessor for NoticeContext);
        sub_1001B37A4(v17, type metadata accessor for NoticeContext);
        sub_1001B37A4(v22, type metadata accessor for NoticeEffect);
        return v39 & 1;
      }

      sub_1001B37A4(v17, type metadata accessor for NoticeContext);
      goto LABEL_21;
    }

    sub_1001B36CC(v22, v15, type metadata accessor for NoticeEffect);
    v31 = *v15;
    v30 = v15[1];
    v32 = v15[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *v23;
      v34 = v23[1];
      v35 = v23[2];
      if (v32 == 1)
      {
        if (v35 != 1)
        {
          v36 = v33;
          v37 = v34;
          v38 = v35;
LABEL_29:
          sub_100077374(v36, v37, v38);
LABEL_30:
          sub_1001B37A4(v22, type metadata accessor for NoticeEffect);
          goto LABEL_22;
        }
      }

      else
      {
        if (v35 == 1)
        {
          v36 = v31;
          v37 = v30;
          v38 = v32;
          goto LABEL_29;
        }

        v42 = v33;
        v44[8] = v30 & 1;
        v44[0] = v34 & 1;
        v43 = sub_100079248(v31, v30 & 1, v32, v33, v34 & 1, v35);

        sub_100077374(v33, v34, v35);
        sub_100077374(v31, v30, v32);
        if ((v43 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

LABEL_25:
      sub_1001B37A4(v22, type metadata accessor for NoticeEffect);
      v39 = 1;
      return v39 & 1;
    }

    sub_100077374(v31, v30, v32);
  }

LABEL_21:
  sub_1000097E8(v22, &qword_10034AB90, &qword_100287F10);
LABEL_22:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_1001B2890(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (a1 > 2)
    {
      if (a1 ^ 3 | a2)
      {
        if (a1 ^ 4 | a2)
        {
          if (a6 == 3 && a4 == 5 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 3 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 3 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 0;
}

uint64_t sub_1001B2A20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764572656E6E6162 && a2 == 0xEB00000000746E65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61546E6F74747562 && a2 == 0xEC00000064657070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x46746E6573657270 && a2 == 0xED000064656C6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002A3E30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_1001B2B9C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_100035D04(&qword_10034AB08, &qword_100287EB0);
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v59 = &v47[-v6];
  v52 = sub_100035D04(&qword_10034AB10, &qword_100287EB8);
  v57 = *(v52 - 8);
  v7 = *(v57 + 64);
  __chkstk_darwin(v52);
  v58 = &v47[-v8];
  v9 = sub_100035D04(&qword_10034AB18, &qword_100287EC0);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v12 = &v47[-v11];
  v13 = sub_100035D04(&qword_10034AB20, &qword_100287EC8);
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  __chkstk_darwin(v13);
  v16 = &v47[-v15];
  v17 = sub_100035D04(&qword_10034AB28, &unk_100287ED0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v47[-v20];
  v23 = a1[3];
  v22 = a1[4];
  v72 = a1;
  sub_10000EBC0(a1, v23);
  sub_1001B341C();
  v24 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_8;
  }

  v50 = v16;
  v49 = v13;
  v26 = v58;
  v25 = v59;
  *&v61 = v18;
  v27 = v60;
  v28 = KeyedDecodingContainer.allKeys.getter();
  v29 = (2 * *(v28 + 16)) | 1;
  v68 = v28;
  v69 = v28 + 32;
  v70 = 0;
  v71 = v29;
  v30 = sub_100218018();
  if (v30 == 4 || v70 != v71 >> 1)
  {
    v32 = v17;
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    v36 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v35 = &type metadata for NoticeEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
    swift_willThrow();
    (*(v61 + 8))(v21, v32);
    swift_unknownObjectRelease();
LABEL_8:
    sub_10000903C(v72);
    return result;
  }

  v48 = v30;
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      LOBYTE(v62) = 2;
      sub_1001B34C4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v17;
      v39 = v61;
      v45 = v38;
      sub_10010B758();
      v46 = v52;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v57 + 8))(v26, v46);
      (*(v39 + 8))(v21, v45);
      swift_unknownObjectRelease();
      v61 = v62;
      LOBYTE(v26) = v63;
      v17 = v64;
      v43 = v65;
      v31 = v66;
      v21 = v67;
      v44 = v63 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      LOBYTE(v62) = 3;
      sub_1001B3470();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = v17;
      v41 = v61;
      (*(v56 + 8))(v25, v55);
      (*(v41 + 8))(v21, v40);
      swift_unknownObjectRelease();
      v17 = 0;
      v43 = 0;
      v31 = 0;
      v21 = 0;
      LOBYTE(v26) = 0;
      v44 = 0;
      v61 = 0u;
    }
  }

  else if (v30)
  {
    LOBYTE(v62) = 1;
    sub_1001B3518();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100165E88();
    v31 = v54;
    v43 = v12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v53 + 8))(v12, v31);
    (*(v61 + 8))(v21, v17);
    swift_unknownObjectRelease();
    v44 = 0;
    v61 = v62;
  }

  else
  {
    LOBYTE(v62) = 0;
    sub_1001B356C();
    v31 = v50;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1001B35C0();
    v42 = v49;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = 0;
    (*(v51 + 8))(v31, v42);
    (*(v61 + 8))(v21, v17);
    swift_unknownObjectRelease();
    v44 = 0;
    v61 = v62;
    LOBYTE(v26) = v63;
  }

  sub_10000903C(v72);
  result = *&v61;
  *v27 = v61;
  *(v27 + 16) = v44 | v26;
  *(v27 + 24) = v17;
  *(v27 + 32) = v43;
  *(v27 + 40) = v31;
  *(v27 + 48) = v21;
  *(v27 + 56) = v48;
  return result;
}

unint64_t sub_1001B341C()
{
  result = qword_10034AB30;
  if (!qword_10034AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB30);
  }

  return result;
}

unint64_t sub_1001B3470()
{
  result = qword_10034AB38;
  if (!qword_10034AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB38);
  }

  return result;
}

unint64_t sub_1001B34C4()
{
  result = qword_10034AB40;
  if (!qword_10034AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB40);
  }

  return result;
}

unint64_t sub_1001B3518()
{
  result = qword_10034AB48;
  if (!qword_10034AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB48);
  }

  return result;
}

unint64_t sub_1001B356C()
{
  result = qword_10034AB50;
  if (!qword_10034AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB50);
  }

  return result;
}

unint64_t sub_1001B35C0()
{
  result = qword_10034AB58;
  if (!qword_10034AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB58);
  }

  return result;
}

unint64_t sub_1001B3614()
{
  result = qword_10034AB88;
  if (!qword_10034AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB88);
  }

  return result;
}

uint64_t sub_1001B3668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B36CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B3734(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_1003492A0, &qword_1002836F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B37A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001B3868()
{
  result = qword_10034AB98;
  if (!qword_10034AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AB98);
  }

  return result;
}

unint64_t sub_1001B38C0()
{
  result = qword_10034ABA0;
  if (!qword_10034ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABA0);
  }

  return result;
}

unint64_t sub_1001B3918()
{
  result = qword_10034ABA8;
  if (!qword_10034ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABA8);
  }

  return result;
}

unint64_t sub_1001B3970()
{
  result = qword_10034ABB0;
  if (!qword_10034ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABB0);
  }

  return result;
}

unint64_t sub_1001B39C8()
{
  result = qword_10034ABB8;
  if (!qword_10034ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABB8);
  }

  return result;
}

unint64_t sub_1001B3A20()
{
  result = qword_10034ABC0;
  if (!qword_10034ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABC0);
  }

  return result;
}

unint64_t sub_1001B3A78()
{
  result = qword_10034ABC8;
  if (!qword_10034ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABC8);
  }

  return result;
}

unint64_t sub_1001B3AD0()
{
  result = qword_10034ABD0;
  if (!qword_10034ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABD0);
  }

  return result;
}

unint64_t sub_1001B3B28()
{
  result = qword_10034ABD8;
  if (!qword_10034ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABD8);
  }

  return result;
}

unint64_t sub_1001B3B80()
{
  result = qword_10034ABE0;
  if (!qword_10034ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABE0);
  }

  return result;
}

unint64_t sub_1001B3BD8()
{
  result = qword_10034ABE8;
  if (!qword_10034ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABE8);
  }

  return result;
}

unint64_t sub_1001B3C30()
{
  result = qword_10034ABF0;
  if (!qword_10034ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABF0);
  }

  return result;
}

unint64_t sub_1001B3C88()
{
  result = qword_10034ABF8;
  if (!qword_10034ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ABF8);
  }

  return result;
}

unint64_t sub_1001B3CE0()
{
  result = qword_10034AC00;
  if (!qword_10034AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC00);
  }

  return result;
}

uint64_t sub_1001B3D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F4C646964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41746F4E6C6C6977 && a2 == 0xED00007261657070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657070416C6C6977 && a2 == 0xEA00000000007261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6165707041646964 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6172546C6C6977 && a2 == 0xEE006E6F69746973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E617254646964 && a2 == 0xED00006E6F697469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617369446C6C6977 && a2 == 0xED00007261657070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7061736944646964 && a2 == 0xEC00000072616570)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1001B4048(uint64_t *a1)
{
  v2 = sub_100035D04(&qword_10034AC08, &qword_1002885B8);
  v3 = *(v2 - 8);
  v88 = v2;
  v89 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v92 = &v70 - v5;
  v6 = sub_100035D04(&qword_10034AC10, &qword_1002885C0);
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = *(v86 + 64);
  __chkstk_darwin(v6);
  v96 = &v70 - v8;
  v9 = sub_100035D04(&qword_10034AC18, &qword_1002885C8);
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  __chkstk_darwin(v9);
  v95 = &v70 - v11;
  v12 = sub_100035D04(&qword_10034AC20, &qword_1002885D0);
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = *(v82 + 64);
  __chkstk_darwin(v12);
  v94 = &v70 - v14;
  v80 = sub_100035D04(&qword_10034AC28, &qword_1002885D8);
  v81 = *(v80 - 8);
  v15 = *(v81 + 64);
  __chkstk_darwin(v80);
  v93 = &v70 - v16;
  v79 = sub_100035D04(&qword_10034AC30, &qword_1002885E0);
  v78 = *(v79 - 8);
  v17 = *(v78 + 64);
  __chkstk_darwin(v79);
  v91 = &v70 - v18;
  v74 = sub_100035D04(&qword_10034AC38, &qword_1002885E8);
  v77 = *(v74 - 8);
  v19 = *(v77 + 64);
  __chkstk_darwin(v74);
  v90 = &v70 - v20;
  v76 = sub_100035D04(&qword_10034AC40, &qword_1002885F0);
  v75 = *(v76 - 8);
  v21 = *(v75 + 64);
  __chkstk_darwin(v76);
  v23 = &v70 - v22;
  v24 = sub_100035D04(&qword_10034AC48, &qword_1002885F8);
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  __chkstk_darwin(v24);
  v27 = &v70 - v26;
  v28 = sub_100035D04(&qword_10034AC50, &qword_100288600);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v70 - v31;
  v34 = a1[3];
  v33 = a1[4];
  v98 = a1;
  sub_10000EBC0(a1, v34);
  sub_1001B4E18();
  v35 = v97;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v35)
  {
    v71 = v27;
    v70 = v24;
    v37 = v93;
    v36 = v94;
    v38 = v95;
    v72 = 0;
    v39 = v96;
    v97 = v29;
    v40 = KeyedDecodingContainer.allKeys.getter();
    v41 = (2 * *(v40 + 16)) | 1;
    v99 = v40;
    v100 = v40 + 32;
    v101 = 0;
    v102 = v41;
    v42 = sub_10021801C();
    if (v42 != 9 && v101 == v102 >> 1)
    {
      if (v42 <= 3u)
      {
        if (v42 <= 1u)
        {
          v54 = v72;
          if (v42)
          {
            v103 = 1;
            sub_1001B50B8();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v54)
            {
              (*(v75 + 8))(v23, v76);
              (*(v97 + 8))(v32, v28);
              swift_unknownObjectRelease();
              v28 = 1;
              goto LABEL_12;
            }
          }

          else
          {
            v103 = 0;
            sub_1001B510C();
            v55 = v71;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v54)
            {
              (*(v73 + 8))(v55, v70);
              (*(v97 + 8))(v32, v28);
              swift_unknownObjectRelease();
              v28 = 0;
              goto LABEL_12;
            }
          }

          (*(v97 + 8))(v32, v28);
          goto LABEL_11;
        }

        v56 = v97;
        v57 = v72;
        if (v42 == 2)
        {
          v103 = 2;
          sub_1001B5064();
          v58 = v90;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v57)
          {
            v59 = v28;
            v60 = v74;
            v28 = KeyedDecodingContainer.decode(_:forKey:)();
            (*(v77 + 8))(v58, v60);
            (*(v56 + 8))(v32, v59);
            swift_unknownObjectRelease();
            goto LABEL_12;
          }
        }

        else
        {
          v103 = 3;
          sub_1001B5010();
          v63 = v91;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v57)
          {
            (*(v78 + 8))(v63, v79);
            (*(v56 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v28 = 2;
            goto LABEL_12;
          }
        }
      }

      else
      {
        if (v42 > 5u)
        {
          v43 = v97;
          if (v42 == 6)
          {
            v103 = 6;
            sub_1001B4F14();
            v62 = v72;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v62)
            {
              (*(v84 + 8))(v38, v85);
              (*(v43 + 8))(v32, v28);
              swift_unknownObjectRelease();
              v28 = 5;
              goto LABEL_12;
            }
          }

          else if (v42 == 7)
          {
            v103 = 7;
            sub_1001B4EC0();
            v44 = v72;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v44)
            {
              v45 = v32;
              v46 = v28;
              v47 = v87;
              v28 = KeyedDecodingContainer.decode(_:forKey:)();
              (*(v86 + 8))(v39, v47);
              (*(v43 + 8))(v45, v46);
              swift_unknownObjectRelease();
              goto LABEL_12;
            }
          }

          else
          {
            v103 = 8;
            sub_1001B4E6C();
            v64 = v92;
            v65 = v72;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v65)
            {
              v67 = v32;
              v68 = v28;
              v69 = v88;
              v28 = KeyedDecodingContainer.decode(_:forKey:)();
              (*(v89 + 8))(v64, v69);
              (*(v43 + 8))(v67, v68);
              swift_unknownObjectRelease();
              goto LABEL_12;
            }
          }

          (*(v43 + 8))(v32, v28);
LABEL_11:
          swift_unknownObjectRelease();
          goto LABEL_12;
        }

        v56 = v97;
        if (v42 == 4)
        {
          v103 = 4;
          sub_1001B4FBC();
          v61 = v72;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v61)
          {
            (*(v81 + 8))(v37, v80);
            (*(v56 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v28 = 3;
            goto LABEL_12;
          }
        }

        else
        {
          v103 = 5;
          sub_1001B4F68();
          v66 = v72;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v66)
          {
            (*(v82 + 8))(v36, v83);
            (*(v56 + 8))(v32, v28);
            swift_unknownObjectRelease();
            v28 = 4;
            goto LABEL_12;
          }
        }
      }

      (*(v56 + 8))(v32, v28);
      goto LABEL_11;
    }

    v48 = type metadata accessor for DecodingError();
    swift_allocError();
    v49 = v28;
    v28 = v50;
    v51 = v32;
    v52 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v28 = &type metadata for BannerPresentableEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v48);
    swift_willThrow();
    (*(v97 + 8))(v51, v49);
    goto LABEL_11;
  }

LABEL_12:
  sub_10000903C(v98);
  return v28;
}

unint64_t sub_1001B4E18()
{
  result = qword_10034AC58;
  if (!qword_10034AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC58);
  }

  return result;
}

unint64_t sub_1001B4E6C()
{
  result = qword_10034AC60;
  if (!qword_10034AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC60);
  }

  return result;
}

unint64_t sub_1001B4EC0()
{
  result = qword_10034AC68;
  if (!qword_10034AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC68);
  }

  return result;
}

unint64_t sub_1001B4F14()
{
  result = qword_10034AC70;
  if (!qword_10034AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC70);
  }

  return result;
}

unint64_t sub_1001B4F68()
{
  result = qword_10034AC78;
  if (!qword_10034AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC78);
  }

  return result;
}

unint64_t sub_1001B4FBC()
{
  result = qword_10034AC80;
  if (!qword_10034AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC80);
  }

  return result;
}

unint64_t sub_1001B5010()
{
  result = qword_10034AC88;
  if (!qword_10034AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC88);
  }

  return result;
}

unint64_t sub_1001B5064()
{
  result = qword_10034AC90;
  if (!qword_10034AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC90);
  }

  return result;
}

unint64_t sub_1001B50B8()
{
  result = qword_10034AC98;
  if (!qword_10034AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AC98);
  }

  return result;
}

unint64_t sub_1001B510C()
{
  result = qword_10034ACA0;
  if (!qword_10034ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ACA0);
  }

  return result;
}

unint64_t sub_1001B5204()
{
  result = qword_10034ACF8;
  if (!qword_10034ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ACF8);
  }

  return result;
}

unint64_t sub_1001B525C()
{
  result = qword_10034AD00;
  if (!qword_10034AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD00);
  }

  return result;
}

unint64_t sub_1001B52B4()
{
  result = qword_10034AD08;
  if (!qword_10034AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD08);
  }

  return result;
}

unint64_t sub_1001B530C()
{
  result = qword_10034AD10;
  if (!qword_10034AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD10);
  }

  return result;
}

unint64_t sub_1001B5364()
{
  result = qword_10034AD18;
  if (!qword_10034AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD18);
  }

  return result;
}

unint64_t sub_1001B53BC()
{
  result = qword_10034AD20;
  if (!qword_10034AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD20);
  }

  return result;
}

unint64_t sub_1001B5414()
{
  result = qword_10034AD28;
  if (!qword_10034AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD28);
  }

  return result;
}

unint64_t sub_1001B546C()
{
  result = qword_10034AD30;
  if (!qword_10034AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD30);
  }

  return result;
}

unint64_t sub_1001B54C4()
{
  result = qword_10034AD38;
  if (!qword_10034AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD38);
  }

  return result;
}

unint64_t sub_1001B551C()
{
  result = qword_10034AD40;
  if (!qword_10034AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD40);
  }

  return result;
}

unint64_t sub_1001B5574()
{
  result = qword_10034AD48;
  if (!qword_10034AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD48);
  }

  return result;
}

unint64_t sub_1001B55CC()
{
  result = qword_10034AD50;
  if (!qword_10034AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD50);
  }

  return result;
}

unint64_t sub_1001B5624()
{
  result = qword_10034AD58;
  if (!qword_10034AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD58);
  }

  return result;
}

unint64_t sub_1001B567C()
{
  result = qword_10034AD60;
  if (!qword_10034AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD60);
  }

  return result;
}

unint64_t sub_1001B56D4()
{
  result = qword_10034AD68;
  if (!qword_10034AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD68);
  }

  return result;
}

unint64_t sub_1001B572C()
{
  result = qword_10034AD70;
  if (!qword_10034AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD70);
  }

  return result;
}

unint64_t sub_1001B5784()
{
  result = qword_10034AD78;
  if (!qword_10034AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD78);
  }

  return result;
}

unint64_t sub_1001B57DC()
{
  result = qword_10034AD80;
  if (!qword_10034AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD80);
  }

  return result;
}

unint64_t sub_1001B5834()
{
  result = qword_10034AD88;
  if (!qword_10034AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD88);
  }

  return result;
}

unint64_t sub_1001B588C()
{
  result = qword_10034AD90;
  if (!qword_10034AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD90);
  }

  return result;
}

unint64_t sub_1001B58E4()
{
  result = qword_10034AD98;
  if (!qword_10034AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AD98);
  }

  return result;
}

unint64_t sub_1001B593C()
{
  result = qword_10034ADA0;
  if (!qword_10034ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ADA0);
  }

  return result;
}

unint64_t sub_1001B5994()
{
  result = qword_10034ADA8;
  if (!qword_10034ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ADA8);
  }

  return result;
}

unint64_t sub_1001B59EC()
{
  result = qword_10034ADB0;
  if (!qword_10034ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034ADB0);
  }

  return result;
}

uint64_t sub_1001B5A40()
{
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  if (!v1)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v2 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v3 = *v2;
  v4 = v2[1];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v1 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_8;
  }

  v7 = 1;
LABEL_9:
  sub_1000097E8(&v11, &unk_100339680, &qword_100278390);
  return v7;
}

uint64_t sub_1001B5B58()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034ADB8);
  sub_100003078(v0, qword_10034ADB8);
  return Logger.init(subsystem:category:)();
}

id sub_1001B5BD8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod;
  if (qword_100338F00 != -1)
  {
    swift_once();
  }

  v3 = *(qword_10038B0A0 + 24);
  v4 = sub_1000031CC();

  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = v4 & 1;
  *&v1[v2] = v5;
  *&v1[OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager_tasks] = &_swiftEmptySetSingleton;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HandoffEnabledSettingManager();
  v6 = objc_msgSendSuper2(&v12, "init");
  v7 = qword_100339098;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_10038B250;
  if (qword_10038B250)
  {
    v10 = String._bridgeToObjectiveC()();
    [v9 addObserver:v8 forKeyPath:v10 options:1 context:0];
  }

  return v8;
}

id sub_1001B5D70()
{
  v1 = v0;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034ADB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  if (qword_100339098 != -1)
  {
    swift_once();
  }

  v6 = qword_10038B250;
  if (qword_10038B250)
  {
    v7 = String._bridgeToObjectiveC()();
    [v6 removeObserver:v1 forKeyPath:v7];
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for HandoffEnabledSettingManager();
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_1001B60C4()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10034AE08, qword_100288FA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31[-1] - v5;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10034ADB8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A3F10, v31);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000903C(v11);
  }

  sub_1001B66BC();
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v12 = qword_10038B0B8;
  v13 = *(qword_10038B0B8 + 616);
  v14 = sub_1000177F8();

  v15 = *(v12 + 616);
  if (v14 == 2)
  {
    v16 = *(v15 + *((swift_isaMask & *v15) + 0x70));
    if (v16)
    {
      v17 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod) + 24);
      v18 = (v15 + *((swift_isaMask & *v15) + 0x68));
      v19 = *v18;
      v20 = v18[1];
      v21 = v15;
      v22 = v16;
      v23 = String._bridgeToObjectiveC()();
      [v22 setBool:v17 forKey:v23];
    }
  }

  else
  {
    v24 = v15;
    v25 = sub_1000177F8();

    v26 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod) + 24);
    if (v25 == 2 || ((v26 ^ v25) & 1) != 0)
    {
      sub_1001B7858(v26);
    }
  }

  v27 = *(v1 + OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod);

  v31[0] = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
  v28 = Publisher.eraseToAnyPublisher()();

  v31[0] = v28;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
  Publisher.filter(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E244(&qword_10034AE10, &qword_10034AE08, qword_100288FA8);
  Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1001B65D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 616);
  v3 = sub_1000177F8();

  return (v3 == 2) | (v1 ^ v3) & 1u;
}

void sub_1001B6660(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001B7858(v1);
  }
}

void sub_1001B66BC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v0 - 8);
  v59 = v0;
  v1 = *(v58 + 64);
  __chkstk_darwin(v0);
  v56 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchTime();
  v53 = *(v61 - 8);
  v5 = *(v53 + 64);
  v6 = __chkstk_darwin(v61);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v50 - v9;
  v10 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v52 = sub_100003078(v22, qword_10034ADB8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v51 = v21;
    v27 = v26;
    aBlock[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100017494(0xD000000000000017, 0x80000001002A3ED0, aBlock);
    _os_log_impl(&_mh_execute_header, v23, v24, "%s", v25, 0xCu);
    sub_10000903C(v27);
    v21 = v51;
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v28 = qword_10038B0B8;
  v29 = *(qword_10038B0B8 + 584);
  sub_100060984(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000097E8(v13, &qword_10033C280, &qword_100272A80);
    if (sub_1001B5A40())
    {
      v30 = v29;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        aBlock[0] = v34;
        *v33 = 136315138;
        v35 = (v30 + *((swift_isaMask & *v30) + 0x68));
        v36 = *v35;
        v37 = v35[1];

        v38 = sub_100017494(v36, v37, aBlock);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "### Failed to parse stored value for '%s'", v33, 0xCu);
        sub_10000903C(v34);
      }

      return;
    }

LABEL_16:
    v49 = sub_1001B6FC4();
    sub_1001B66BC(v49);

    return;
  }

  (*(v15 + 32))(v21, v13, v14);
  v39 = *(v28 + 592);
  sub_10005F4E4();

  Date.advanced(by:)();
  Date.timeIntervalSinceNow.getter();
  v41 = v40;
  v42 = *(v15 + 8);
  v42(v19, v14);
  v42(v21, v14);
  if (v41 <= 0.0)
  {
    goto LABEL_16;
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v52 = qword_10038B5B8;
  static DispatchTime.now()();
  + infix(_:_:)();
  v53 = *(v53 + 8);
  (v53)(v8, v61);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001B7298;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310208;
  v44 = _Block_copy(aBlock);

  v45 = v54;
  static DispatchQoS.unspecified.getter();
  v62 = _swiftEmptyArrayStorage;
  sub_1001B7D00(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  v46 = v56;
  v47 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v48 = v60;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v44);

  (*(v58 + 8))(v46, v47);
  (*(v55 + 8))(v45, v57);
  (v53)(v48, v61);
}

void sub_1001B6F44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001B6FC4();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1001B66BC();
  }
}

uint64_t sub_1001B6FC4()
{
  v0 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v19 - v5;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10034ADB8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A3EF0, v19);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000903C(v11);
  }

  if (qword_100338F00 != -1)
  {
    swift_once();
  }

  v12 = *(qword_10038B0A0 + 24);
  v13 = sub_1000031CC();

  sub_1001188AC(v13 & 1);
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v14 = qword_10038B0B8;
  Date.init()();
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  v16 = *(v14 + 584);
  sub_10006C4AC(v6, v4);
  v17 = v16;
  sub_100259E18(v4);

  return sub_1000097E8(v6, &qword_10033C280, &qword_100272A80);
}

void sub_1001B72A8()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_10034ADB8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100017494(0xD000000000000020, 0x80000001002A3F70, &v40);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_10000903C(v18);
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v19 = qword_10038B0B8;
  v20 = *(qword_10038B0B8 + 608);
  v39 = sub_10006045C();

  v21 = *(v19 + 600);
  sub_100060984(v13);

  v22 = *(v1 + 48);
  v23 = v22(v13, 1, v0);
  if (v23)
  {
    sub_1000097E8(v13, &qword_10033C280, &qword_100272A80);
    v24 = 0;
    goto LABEL_15;
  }

  (*(v1 + 16))(v6, v13, v0);
  sub_1000097E8(v13, &qword_10033C280, &qword_100272A80);
  Date.timeIntervalSinceNow.getter();
  v26 = v25;
  v27 = v25;
  (*(v1 + 8))(v6, v0);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v26 >= -86399)
  {
    v24 = v26 / 86400;
  }

  else
  {
    v24 = v26 / -86400;
  }

LABEL_15:
  v28 = *(v19 + 568);
  sub_100060984(v11);

  v29 = v22(v11, 1, v0);
  if (v29)
  {
    sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
    v30 = 0;
    goto LABEL_23;
  }

  v31 = v38;
  (*(v1 + 16))(v38, v11, v0);
  sub_1000097E8(v11, &qword_10033C280, &qword_100272A80);
  Date.timeIntervalSinceNow.getter();
  v33 = v32;
  v34 = v32;
  (*(v1 + 8))(v31, v0);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return;
  }

  if (v33 >= -86399)
  {
    v30 = v33 / 86400;
  }

  else
  {
    v30 = v33 / -86400;
  }

LABEL_23:
  if (qword_100338F00 != -1)
  {
    swift_once();
  }

  v35 = *(qword_10038B0A0 + 24);
  v36 = sub_1000031CC();

  v40 = v39;
  v41 = 0;
  v42 = v24;
  v43 = v23 != 0;
  v44 = v30;
  v45 = v29 != 0;
  v46 = v36 & 1;
  sub_100118E70();
}

void sub_1001B7858(char a1)
{
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034ADB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000035, 0x80000001002A3F30, &v15);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v7 = *(qword_10038B0B8 + 616);
  v8 = *(v7 + *((swift_isaMask & *v7) + 0x70));
  if (v8)
  {
    v9 = (v7 + *((swift_isaMask & *v7) + 0x68));
    v10 = *v9;
    v11 = v9[1];
    v12 = v7;
    v13 = v8;
    v14 = String._bridgeToObjectiveC()();
    [v13 setBool:a1 & 1 forKey:v14];
  }

  sub_1001B72A8();
  if (a1)
  {

    sub_1001E08E0();
  }
}

uint64_t sub_1001B7AAC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100339150 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034ADB8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD00000000000002BLL, 0x800000010029AEC0, &v16);
    *(v9 + 12) = 2080;
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      a1 = 7104878;
      v10 = 0xE300000000000000;
    }

    v11 = sub_100017494(a1, v10, &v16);

    *(v9 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: keyPath=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100338F00 != -1)
  {
    swift_once();
  }

  v12 = *(qword_10038B0A0 + 24);
  v13 = sub_1000031CC();

  v14 = *(v3 + OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod);
  *(v14 + 24) = v13 & 1;

  sub_10005E50C();
  v17 = *(v14 + 24);
  CurrentValueSubject.send(_:)();
}

uint64_t sub_1001B7D00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8CardInfoOMa()
{
  result = qword_10034AE88;
  if (!qword_10034AE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B7D94()
{
  sub_1001B7E08();
  if (v0 <= 0x3F)
  {
    sub_1001B7E70();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001B7E08()
{
  if (!qword_10034AE98)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10034AE98);
    }
  }
}

void sub_1001B7E70()
{
  if (!qword_10034AEA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10034AEA0);
    }
  }
}

uint64_t sub_1001B7ED0(void *a1)
{
  v40 = sub_100035D04(&qword_10034AF00, &qword_100289038);
  v38 = *(v40 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v40);
  v42 = &v35 - v3;
  v39 = sub_100035D04(&qword_10034AF08, &qword_100289040);
  v37 = *(v39 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v39);
  v46 = &v35 - v5;
  v6 = type metadata accessor for UUID();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  v8 = __chkstk_darwin(v6);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = _s8CardInfoOMa();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100035D04(&qword_10034AF10, &qword_100289048);
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v20 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001B9090();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001B91F0(v41, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v15;
    v21 = v15[1];
    v24 = v15[2];
    v23 = v15[3];
    v52 = 1;
    sub_1001B90E4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v51 = 0;
    v25 = v40;
    v26 = v43;
    KeyedEncodingContainer.encode(_:forKey:)();

    if (v26)
    {

      (*(v38 + 8))(v42, v25);
    }

    else
    {
      v50 = 1;
      v33 = v42;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v38 + 8))(v33, v25);
    }
  }

  else
  {
    v27 = *(sub_100035D04(&qword_10033D6E0, &qword_100273450) + 48);
    v28 = v36;
    v29 = *(v36 + 32);
    v29(v11, v15, v6);
    v29(v45, (v15 + v27), v6);
    v49 = 0;
    sub_1001B919C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v48 = 0;
    sub_100019194(&qword_1003437D8);
    v30 = v39;
    v31 = v43;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v31)
    {
      v47 = 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v37 + 8))(v46, v30);
    v32 = *(v28 + 8);
    v32(v45, v6);
    v32(v11, v6);
  }

  return (*(v44 + 8))(v19, v16);
}

uint64_t sub_1001B842C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_100035D04(&qword_10034AED0, &qword_100289020);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v62 = &v54 - v5;
  v6 = sub_100035D04(&qword_10034AED8, &qword_100289028);
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = sub_100035D04(&qword_10034AEE0, &qword_100289030);
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v15 = _s8CardInfoOMa();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v54 - v21;
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v67 = a1;
  sub_10000EBC0(a1, v26);
  sub_1001B9090();
  v27 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v55 = v19;
    v56 = v24;
    v57 = v22;
    v29 = v61;
    v28 = v62;
    v66 = v15;
    v30 = v63;
    v31 = v64;
    v32 = KeyedDecodingContainer.allKeys.getter();
    v33 = (2 * *(v32 + 16)) | 1;
    v68 = v32;
    v69 = v32 + 32;
    v70 = 0;
    v71 = v33;
    v34 = sub_10021800C();
    v35 = v14;
    if (v34 == 2 || v70 != v71 >> 1)
    {
      v39 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v40;
      v42 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v41 = v66;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v39 - 8) + 104))(v41, enum case for DecodingError.typeMismatch(_:), v39);
      swift_willThrow();
      (*(v65 + 8))(v35, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        v36 = v65;
        v72 = 1;
        sub_1001B90E4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v72 = 0;
        v37 = v59;
        v38 = KeyedDecodingContainer.decode(_:forKey:)();
        v46 = v45;
        v61 = v38;
        v72 = 1;
        v47 = KeyedDecodingContainer.decode(_:forKey:)();
        v60 = v48;
        v50 = v47;
        (*(v58 + 8))(v28, v37);
        (*(v36 + 8))(v14, v64);
        swift_unknownObjectRelease();
        v51 = v60;
        v52 = v55;
        *v55 = v61;
        v52[1] = v46;
        v52[2] = v50;
        v52[3] = v51;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v72 = 0;
        sub_1001B919C();
        v44 = v9;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for UUID();
        v72 = 0;
        sub_100019194(&qword_1003437F0);
        v52 = v57;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v49 = *(sub_100035D04(&qword_10033D6E0, &qword_100273450) + 48);
        v72 = 1;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v60 + 8))(v44, v29);
        (*(v65 + 8))(v14, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v30 = v63;
      }

      v53 = v56;
      sub_1001B9138(v52, v56);
      sub_1001B9138(v53, v30);
    }
  }

  return sub_10000903C(v67);
}

uint64_t sub_1001B8BBC()
{
  if (*v0)
  {
    result = 0x756F52616964656DLL;
  }

  else
  {
    result = 0x74696B656D6F68;
  }

  *v0;
  return result;
}

uint64_t sub_1001B8BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696B656D6F68 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F52616964656DLL && a2 == 0xEA00000000006574)
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

uint64_t sub_1001B8CE0(uint64_t a1)
{
  v2 = sub_1001B9090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B8D1C(uint64_t a1)
{
  v2 = sub_1001B9090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B8D58()
{
  if (*v0)
  {
    result = 0x4449656D6F68;
  }

  else
  {
    result = 0x726F737365636361;
  }

  *v0;
  return result;
}

uint64_t sub_1001B8D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F737365636361 && a2 == 0xEB00000000444979;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656D6F68 && a2 == 0xE600000000000000)
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

uint64_t sub_1001B8E74(uint64_t a1)
{
  v2 = sub_1001B919C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B8EB0(uint64_t a1)
{
  v2 = sub_1001B919C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B8EEC()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1001B8F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_1001B8FE8(uint64_t a1)
{
  v2 = sub_1001B90E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B9024(uint64_t a1)
{
  v2 = sub_1001B90E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001B9090()
{
  result = qword_10034AEE8;
  if (!qword_10034AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AEE8);
  }

  return result;
}

unint64_t sub_1001B90E4()
{
  result = qword_10034AEF0;
  if (!qword_10034AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AEF0);
  }

  return result;
}

uint64_t sub_1001B9138(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardInfoOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B919C()
{
  result = qword_10034AEF8;
  if (!qword_10034AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AEF8);
  }

  return result;
}

uint64_t sub_1001B91F0(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardInfoOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B9288()
{
  result = qword_10034AF18;
  if (!qword_10034AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF18);
  }

  return result;
}

unint64_t sub_1001B92E0()
{
  result = qword_10034AF20;
  if (!qword_10034AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF20);
  }

  return result;
}

unint64_t sub_1001B9338()
{
  result = qword_10034AF28;
  if (!qword_10034AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF28);
  }

  return result;
}

unint64_t sub_1001B9390()
{
  result = qword_10034AF30;
  if (!qword_10034AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF30);
  }

  return result;
}

unint64_t sub_1001B93E8()
{
  result = qword_10034AF38;
  if (!qword_10034AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF38);
  }

  return result;
}

unint64_t sub_1001B9440()
{
  result = qword_10034AF40;
  if (!qword_10034AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF40);
  }

  return result;
}

unint64_t sub_1001B9498()
{
  result = qword_10034AF48;
  if (!qword_10034AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF48);
  }

  return result;
}

unint64_t sub_1001B94F0()
{
  result = qword_10034AF50;
  if (!qword_10034AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF50);
  }

  return result;
}

unint64_t sub_1001B9548()
{
  result = qword_10034AF58;
  if (!qword_10034AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034AF58);
  }

  return result;
}

uint64_t RPIdentityType.description.getter(unsigned int a1)
{
  sub_100016BB0(a1);

  return String.init(cString:)();
}

uint64_t sub_1001B95C4()
{
  sub_100016BB0(*v0);

  return String.init(cString:)();
}

uint64_t sub_1001B95F0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034AF60);
  sub_100003078(v0, qword_10034AF60);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001B9670()
{
  type metadata accessor for HandoffFeedbackManager_Legacy();
  swift_allocObject();
  result = sub_1001B96AC();
  qword_10038B458 = result;
  return result;
}

uint64_t sub_1001B96AC()
{
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  v1 = sub_100035D04(&qword_10033D8D8, &qword_100273D18);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 32) = PassthroughSubject.init()();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = &_swiftEmptySetSingleton;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0x3FF0000000000000;
  *(v0 + 184) = 18;
  *(v0 + 192) = 0;
  *(v0 + 196) = 1;
  *(v0 + 197) = 0;
  return v0;
}

uint64_t sub_1001B9758()
{
  v1 = v0;
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034AF60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Clearing state", v5, 2u);
  }

  v6 = *(v1 + 152);
  *(v1 + 152) = &_swiftEmptySetSingleton;

  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 197) = 0;
  return result;
}

id sub_1001B9858()
{
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034AF60);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating alert", v3, 2u);
  }

  v4 = [objc_allocWithZone(CUUserAlert) init];
  v5 = swift_allocObject();
  swift_weakInit();
  v17 = sub_1001BC088;
  v18 = v5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1001B9C18;
  v16 = &unk_100310508;
  v6 = _Block_copy(&v13);

  [v4 setActionHandler:v6];
  _Block_release(v6);
  v7 = String._bridgeToObjectiveC()();
  [v4 setAlternativeButtonTitleKey:v7];

  v8 = String._bridgeToObjectiveC()();
  [v4 setDefaultButtonTitleKey:v8];

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  [v4 setDispatchQueue:qword_10038B5B8];
  v17 = sub_1001B9C6C;
  v18 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100018AB8;
  v16 = &unk_100310530;
  v9 = _Block_copy(&v13);
  [v4 setInvalidationHandler:v9];
  _Block_release(v9);
  v10 = String._bridgeToObjectiveC()();
  [v4 setTitleKey:v10];

  v11 = String._bridgeToObjectiveC()();
  [v4 setSubtitleKey:v11];

  return v4;
}

uint64_t sub_1001B9BB8(unint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001B9D54(a1);
  }

  return result;
}

uint64_t sub_1001B9C18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1001B9C6C()
{
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034AF60);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Alert invalidated", v2, 2u);
  }
}

void sub_1001B9D54(unint64_t a1)
{
  v2 = v1;
  if (qword_100339158 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034AF60);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    sub_1001BBC5C(a1);
    v9 = String.init(cString:)();
    v11 = sub_100017494(v9, v10, &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Handling action: %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  v12 = *(v2 + 32);
  v23 = a1;

  PassthroughSubject.send(_:)();

  if (a1 == 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_15;
    }

    v16 = Strong;
    sub_1001B9FFC(1);
LABEL_14:

    goto LABEL_15;
  }

  if (a1 != 1)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      sub_1001BBC5C(a1);
      v20 = String.init(cString:)();
      v22 = sub_100017494(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unhandled action: %s", v18, 0xCu);
      sub_10000903C(v19);
    }

    goto LABEL_14;
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_1001B9FFC(0);
  }

  sub_1001BB928();
LABEL_15:
  sub_1001BA2B8();
}