uint64_t sub_100051B94(int a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7 = type metadata accessor for POSIXError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  sub_10000E8B4();
  swift_arrayDestroy();

  if (a1)
  {
    Dictionary.init(dictionaryLiteral:)();
    POSIXError.init(uncheckedCode:userInfo:)();
    v13 = POSIXError._nsError.getter();
    (*(v8 + 8))(v11, v7);
    v14 = v13;
  }

  else
  {
    v13 = 0;
  }

  a4(v13);
}

void sub_100051D10()
{
  if (*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream))
  {
    type metadata accessor for NWObjcTunnelConnectionWrapper(0);
    sub_100054FE0();
    sub_10000DBDC(v1, v2);

    StreamBasedTunnelConnection.send(controlMessage:completion:)();
  }
}

uint64_t sub_100051DD4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream))
  {
    sub_10000CBD0();
    v5 = swift_allocObject();
    *(v5 + 16) = _swiftEmptyArrayStorage;
    sub_10000CBD0();
    v6 = swift_allocObject();
    swift_weakInit();
    sub_100055004();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v7[5] = v5;
    v10[4] = sub_100054EF8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10000E280;
    v10[3] = &unk_100090FF0;
    v8 = _Block_copy(v10);
    swift_unknownObjectRetain_n();

    nw_connection_receive_multiple();
    swift_unknownObjectRelease_n();
    _Block_release(v8);
  }

  else
  {
    static os_log_type_t.error.getter();

    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100051F88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v56 = a8;
  v57 = a1;
  v58 = a7;
  v59 = a6;
  v55 = a3;
  v10 = type metadata accessor for TunnelPacket();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemotePairingError();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for NWError();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    if (a2 && nw_content_context_get_is_wake_packet())
    {
      v23 = static os_log_type_t.default.getter();
      v24 = powerLog.getter();
      v52 = v23;
      if (!os_log_type_enabled(v24, v23))
      {

        if (a4)
        {
          goto LABEL_7;
        }

LABEL_9:
        v33 = NWCreateNSDataFromDispatchData();
        if (v33)
        {
          v34 = v33;
          v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          sub_10000E228(v35, v37);
          TunnelPacket.init(data:)();
          v39 = v56;
          swift_beginAccess();
          sub_100053FB8();
          v40 = *(*(v39 + 16) + 16);
          sub_100054124(v40);
          v41 = *(v39 + 16);
          *(v41 + 16) = v40 + 1;
          v42 = v53;
          v43 = v41 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v40;
          v44 = v54;
          (*(v53 + 16))(v43, v13, v54);
          *(v39 + 16) = v41;
          swift_endAccess();
          (*(v42 + 8))(v13, v44);
          if (v55)
          {
            swift_beginAccess();
            v45 = *(v39 + 16);

            v59(v46, 0);

            sub_10000DF50(v35, v37);
          }

          else
          {

            return sub_10000DF50(v35, v37);
          }
        }

        else
        {
          sub_10000DBDC(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
          static Error<>.dataCorrupted.getter();
          sub_10000DBDC(&qword_100099850, &type metadata accessor for RemotePairingError);
          v38 = swift_allocError();
          Error<>.init(_:_:)();
          v59(v38, 1);
        }
      }

      v25 = swift_slowAlloc();
      v50 = v25;
      v51 = swift_slowAlloc();
      v61 = v51;
      *v25 = 136315138;
      v60 = *(v22 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_peerConnectionsInfo);

      sub_100013414(&qword_10009B530, &qword_100078480);
      v26 = String.init<A>(describing:)();
      v28 = sub_10000C600(v26, v27, &v61);
      v48 = v24;
      v49 = v22;
      v29 = v28;

      v30 = v50;
      *(v50 + 1) = v29;
      _os_log_impl(&_mh_execute_header, v24, v52, "Received a wake packet from: %s", v30, 0xCu);
      sub_10000CADC(v51);
    }

    if (a4)
    {
LABEL_7:
      swift_unknownObjectRetain_n();
      NWError.init(_:)();
      sub_10000DBDC(&unk_10009B770, &type metadata accessor for NWError);
      v31 = swift_allocError();
      (*(v17 + 16))(v32, v20, v16);
      v59(v31, 1);

      swift_unknownObjectRelease();

      return (*(v17 + 8))(v20, v16);
    }

    goto LABEL_9;
  }

  return result;
}

void sub_100052658()
{
  if (*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream))
  {
    type metadata accessor for NWObjcTunnelConnectionWrapper(0);
    sub_100054FE0();
    sub_10000DBDC(v1, v2);

    StreamBasedTunnelConnection.receiveControlMessage(completion:)();
  }
}

uint64_t sub_100052714()
{
  nw_connection_group_cancel(*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_group));
  v1 = OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream;
  v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream);
  if (v2)
  {
    nw_connection_cancel(*(v2 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_connection));
  }

  v3 = OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream;
  v4 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
  if (v4)
  {
    nw_connection_cancel(v4);
  }

  v5 = *(v0 + v1);
  *(v0 + v1) = 0;

  v6 = *(v0 + v3);
  *(v0 + v3) = 0;
  swift_unknownObjectRelease();
  *(v0 + 16) = 3;

  return sub_100051490();
}

void sub_1000527AC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  v8 = (v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
  v9 = *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler);
  v10 = *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler + 8);
  *v8 = sub_100054D00;
  v8[1] = v7;
  v11 = a1;

  v12 = sub_100055020();
  sub_10000FAC8(v12);
  v13 = OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_group;
  v14 = *(v3 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_group);
  sub_10000CBD0();
  v15 = swift_allocObject();
  swift_weakInit();
  sub_10000CBD0();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000D090();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v28 = sub_100054D0C;
  v29 = v17;
  sub_100054FC0();
  v25 = 1107296256;
  v26 = sub_10005329C;
  v27 = &unk_100090E88;
  v18 = _Block_copy(&v24);
  swift_unknownObjectRetain();

  nw_connection_group_set_state_changed_handler(v14, v18);
  _Block_release(v18);
  swift_unknownObjectRelease();
  v19 = *(v3 + v13);
  sub_10000CBD0();
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10000D090();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v11;
  v28 = sub_100054D14;
  v29 = v21;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10000DC24;
  v27 = &unk_100090ED8;
  v22 = _Block_copy(&v24);
  v23 = v11;
  swift_unknownObjectRetain();

  nw_connection_group_set_new_connection_handler(v19, v22);
  _Block_release(v22);
  swift_unknownObjectRelease();
  nw_connection_group_set_queue(*(v3 + v13), v23);
  nw_connection_group_start(*(v3 + v13));
}

uint64_t sub_100052A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v26 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TunnelConnectionState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 16) = v22;
  *(v18 + 24) = v19;
  (*(v14 + 32))(v18 + v17, v16, v13);
  aBlock[4] = sub_100054E90;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_100090F78;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10000DBDC(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v25 + 8))(v8, v5);
  (*(v9 + 8))(v12, v24);
}

uint64_t sub_100052DAC(int a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      switch(a1)
      {
        case 0:
          if (a2)
          {
            swift_getObjectType();
            sub_10004F6F4();
          }

          else
          {
            type metadata accessor for RemotePairingError();
            sub_10000DBDC(&qword_100099850, &type metadata accessor for RemotePairingError);
            swift_allocError();
            sub_10000DBDC(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
            static Error<>.networkingError.getter();
          }

          v21 = static os_log_type_t.error.getter();
          v22 = qword_10009CED0;
          if (os_log_type_enabled(qword_10009CED0, v21))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v28 = v24;
            *v23 = 136315138;
            swift_errorRetain();
            sub_100013414(&unk_10009A930, &unk_100077080);
            v25 = String.init<A>(describing:)();
            v27 = sub_10000C600(v25, v26, &v28);

            *(v23 + 4) = v27;
            _os_log_impl(&_mh_execute_header, v22, v21, "Tunnel connection group invalid state %s", v23, 0xCu);
            sub_10000CADC(v24);
          }

          nw_connection_group_cancel(v6);
          sub_100052714();
          swift_unknownObjectRelease();

        case 1:
        case 2:
          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          goto LABEL_16;
        case 3:
          v7 = static os_log_type_t.error.getter();
          v8 = qword_10009CED0;
          if (!os_log_type_enabled(qword_10009CED0, v7))
          {
            goto LABEL_15;
          }

          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v28 = v10;
          *v9 = 136315138;
          swift_unknownObjectRetain();
          sub_100013414(&unk_10009B750, qword_100077E48);
          v15 = String.init<A>(describing:)();
          v17 = sub_10000C600(v15, v16, &v28);

          *(v9 + 4) = v17;
          v14 = "Tunnel connection group failed %s";
          goto LABEL_10;
        case 4:
          v7 = static os_log_type_t.default.getter();
          v8 = qword_10009CED0;
          if (!os_log_type_enabled(qword_10009CED0, v7))
          {
            goto LABEL_15;
          }

          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v28 = v10;
          *v9 = 136315138;
          swift_unknownObjectRetain();
          sub_100013414(&unk_10009B750, qword_100077E48);
          v11 = String.init<A>(describing:)();
          v13 = sub_10000C600(v11, v12, &v28);

          *(v9 + 4) = v13;
          v14 = "Tunnel connection group canceled %s";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v8, v7, v14, v9, 0xCu);
          sub_10000CADC(v10);

          break;
        default:
          v18 = static os_log_type_t.default.getter();
          v19 = qword_10009CED0;
          if (!os_log_type_enabled(qword_10009CED0, v18))
          {
            goto LABEL_15;
          }

          v20 = swift_slowAlloc();
          *v20 = 67109120;
          *(v20 + 4) = a1;
          _os_log_impl(&_mh_execute_header, v19, v18, "Tunnel connection group unknown state %u", v20, 8u);
          break;
      }

LABEL_15:
      nw_connection_group_cancel(v6);
      sub_100052714();
LABEL_16:
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000532A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10005331C(NSObject *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000533C0(a1, a3);
  }

  return result;
}

void sub_1000533C0(NSObject *a1, NSObject *a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  v8[4] = sub_100054D60;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100050144;
  v8[3] = &unk_100090F28;
  v7 = _Block_copy(v8);
  swift_unknownObjectRetain();

  nw_connection_set_state_changed_handler(a1, v7);
  _Block_release(v7);
  nw_connection_set_queue(a1, a2);
  nw_connection_start(a1);
}

uint64_t sub_1000534C0(int a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  switch(a1)
  {
    case 1:
      goto LABEL_2;
    case 2:
      static os_log_type_t.default.getter();

      return os_log(_:dso:log:_:_:)();
    case 3:
      swift_getObjectType();
      if (sub_10004F940() && *(a4 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection__allowLocalConnectionsOnly) != 1)
      {
LABEL_2:
        static os_log_type_t.error.getter();
LABEL_4:
        os_log(_:dso:log:_:_:)();
LABEL_24:
        nw_connection_cancel(a3);
        return sub_100052714();
      }

      else
      {
        v6 = sub_10004FA4C();
        v7 = static os_log_type_t.default.getter();
        v8 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v7))
        {
          v9 = swift_slowAlloc();
          *v9 = 67109120;
          *(v9 + 4) = v6 & 1;
          _os_log_impl(&_mh_execute_header, v8, v7, "Tunnel stream (datagram=%{BOOL}d) connection established", v9, 8u);
        }

        if (v6)
        {
          v10 = *(a4 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
          *(a4 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream) = a3;
          swift_unknownObjectRelease();
          if ((*(a4 + 16) & 0xFE) != 2)
          {
            if ((*(a4 + 16) & 0x100) != 0)
            {
              v11 = 2;
            }

            else
            {
              v11 = 1;
            }

            *(a4 + 16) = v11;
          }

          swift_unknownObjectRetain();
        }

        else
        {
          v24 = type metadata accessor for NWObjcTunnelConnectionWrapper(0);
          v25 = *(v24 + 48);
          v26 = *(v24 + 52);
          v27 = swift_allocObject();
          v28 = swift_unknownObjectRetain();
          sub_1000502DC(v28, 0, 0);
          v29 = *(a4 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream);
          *(a4 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream) = v27;

          v30 = *(a4 + 16);
          if ((v30 & 0xFE) != 2)
          {
            if (v30)
            {
              v31 = 2;
            }

            else
            {
              v31 = 256;
            }

            *(a4 + 16) = v31;
          }
        }

        return sub_100051490();
      }

    case 4:
      v12 = static os_log_type_t.error.getter();
      v13 = qword_10009CED0;
      if (!os_log_type_enabled(qword_10009CED0, v12))
      {
        goto LABEL_24;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136315138;
      swift_unknownObjectRetain();
      sub_100013414(&unk_10009B750, qword_100077E48);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000C600(v16, v17, &v32);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v13, v12, "Tunnel stream connection failed, error: %s", v14, 0xCu);
      sub_10000CADC(v15);

      goto LABEL_23;
    case 5:
      static os_log_type_t.default.getter();
      goto LABEL_4;
    default:
      v21 = static os_log_type_t.default.getter();
      v22 = qword_10009CED0;
      if (!os_log_type_enabled(qword_10009CED0, v21))
      {
        goto LABEL_24;
      }

      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v22, v21, "Tunnel stream unknown connection state %u", v23, 8u);
LABEL_23:

      goto LABEL_24;
  }
}

uint64_t sub_1000538DC()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_identifier;
  v2 = sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CC04(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_group);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_nonDatagramStream);

  v6 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_datagramStream);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_peerConnectionsInfo);

  v8 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler + 8);
  sub_10000FAC8(*(v0 + OBJC_IVAR____TtC20remotepairingdeviced22NWQUICTunnelConnection_stateChangeHandler));
  return v0;
}

uint64_t sub_1000539AC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

void sub_100053A30()
{
  sub_100019960();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unsigned __int8 *getEnumTagSinglePayload for NWQUICTunnelConnection.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 1);
      }
    }

    return 0;
  }

  v2 = a2 + 65283;
  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[2];
      if (!result[2])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 2);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 16)) - 65283);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for NWQUICTunnelConnection.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_WORD *sub_100053CA0(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100053E54(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100053EE4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_100053F54()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_100054698();
    *v0 = v4;
  }
}

void sub_100053FB8()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10005431C(0, *(v1 + 16) + 1, 1, v1, &qword_10009B780, &qword_100078780, &type metadata accessor for TunnelPacket, &type metadata accessor for TunnelPacket);
    *v0 = v3;
  }
}

uint64_t sub_100054080(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1000540DC(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_100054698();
    *v1 = v2;
  }
}

void sub_100054124(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    sub_10005431C(v2 > 1, a1 + 1, 1, *v1, &qword_10009B780, &qword_100078780, &type metadata accessor for TunnelPacket, &type metadata accessor for TunnelPacket);
    *v1 = v3;
  }
}

void sub_10005419C()
{
  sub_100054FF8();
  if (v5)
  {
    sub_10000CC94();
    if (v7 != v8)
    {
      sub_10000D994();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100054FB0(v6);
  if (v3)
  {
    sub_100013414(&unk_10009A950, qword_100077DA0);
    v9 = swift_allocObject();
    sub_10000EB24(v9);
    v3[2] = v2;
    v3[3] = 2 * (v10 / 40);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || &v0[5 * v2 + 4] <= v3 + 4)
    {
      v12 = sub_100055020();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100013414(&qword_10009B7E0, &qword_1000787D8);
    sub_100055020();
    swift_arrayInitWithCopy();
  }
}

void sub_10005431C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    sub_10000CC94();
    if (v13 != v14)
    {
      sub_10000D994();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_100054934(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_100054A50(a4 + v18, v15, &v16[v18], a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100054418()
{
  sub_100054FF8();
  if (v3)
  {
    sub_10000CC94();
    if (v5 != v6)
    {
      sub_10000D994();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100013414(&qword_10009B7C0, &qword_1000787B8);
    v9 = sub_10005502C();
    v10 = j__malloc_size(v9);
    v9[2] = v7;
    v9[3] = (2 * ((v10 - 32) / 8));
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

void sub_1000544F8()
{
  sub_100054FF8();
  if (v5)
  {
    sub_10000CC94();
    if (v7 != v8)
    {
      sub_10000D994();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100054FB0(v6);
  if (v3)
  {
    sub_100013414(&qword_10009B7F0, &qword_1000787E8);
    v9 = sub_10005502C();
    sub_10000EB24(v9);
    sub_100055010(v10);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v11 = v3 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000545C8()
{
  sub_100054FF8();
  if (v5)
  {
    sub_10000CC94();
    if (v7 != v8)
    {
      sub_10000D994();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100054FB0(v6);
  if (v3)
  {
    sub_100013414(&qword_10009B7F8, qword_1000787F0);
    v9 = sub_10005502C();
    sub_10000EB24(v9);
    sub_100055010(v10);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v11 = v3 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v3 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100054698()
{
  sub_100054FF8();
  if (v5)
  {
    sub_10000CC94();
    if (v7 != v8)
    {
      sub_10000D994();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100054FB0(v6);
  if (v3)
  {
    sub_100013414(v9, v10);
    v11 = sub_10005502C();
    sub_10000EB24(v11);
    sub_100055010(v12);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || &v0[16 * v2 + 32] <= v3 + 32)
    {
      v14 = sub_100055020();
      memmove(v14, v15, v16);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_100013414(&unk_100099DC0, &unk_100077860);
    sub_100055020();
    swift_arrayInitWithCopy();
  }
}

void sub_100054780()
{
  sub_100054FF8();
  if (v5)
  {
    sub_10000CC94();
    if (v7 != v8)
    {
      sub_10000D994();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100054FB0(v6);
  if (v3)
  {
    sub_100013414(&qword_10009B7B0, &qword_1000787A8);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = (2 * v10 - 64);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_100054854()
{
  sub_100054FF8();
  if (v3)
  {
    sub_10000CC94();
    if (v5 != v6)
    {
      sub_10000D994();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000EE8C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100013414(&qword_10009B7B8, &qword_1000787B0);
    v9 = sub_10005502C();
    v10 = j__malloc_size(v9);
    v9[2] = v7;
    v9[3] = (2 * ((v10 - 32) / 4));
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[4 * v7] <= v11)
    {
      memmove(v11, v12, 4 * v7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v7);
  }
}

char *sub_100054934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100013414(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100054A30(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_10000D30C(a3, result);
  }

  return result;
}

uint64_t sub_100054A50(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_10000CC04(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = sub_100055044();

    return _swift_arrayInitWithTakeFrontToBack(v12);
  }

  else if (a3 != a1)
  {
    v11 = sub_100055044();

    return _swift_arrayInitWithTakeBackToFront(v11);
  }

  return result;
}

uint64_t sub_100054B10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100054B40(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_100054B64(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100054B9C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000C600(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100054BF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100013414(&unk_10009B740, &unk_100078770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100054D0C(int a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100052DAC(a1, a2);
}

uint64_t sub_100054D1C(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  sub_10000D090();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100054D68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_100054DEC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100054E60@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100054E90()
{
  v1 = *(type metadata accessor for TunnelConnectionState() - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_100054F04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100013414(a3, a4);
  sub_10000CC04(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

void sub_100054FB0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_10005502C()
{

  return swift_allocObject();
}

uint64_t sub_1000550A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lastUnlockDate;
  v12 = type metadata accessor for Date();
  sub_1000223E8(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers) = &_swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager____lazy_storage___firstUnlockHasCompleted) = 2;
  *(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__keybagLockStatusChangedNotificationToken) = -1;
  *(v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue) = a1;
  v13 = (v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lockStateChangeNotificationName);
  *v13 = a2;
  v13[1] = a3;
  v14 = (v5 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc);
  *v14 = a4;
  v14[1] = a5;
  return v5;
}

uint64_t sub_100055170()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_10000CBBC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000EE9C();
  v6 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v6;
  v7 = sub_100036508();
  v8(v7);
  v9 = v6;
  _dispatchPreconditionTest(_:)();
  v10 = sub_1000581C0();
  result = v11(v10, v2);
  if (v6)
  {
    sub_10005581C();
    result = sub_1000557BC();
    if (result)
    {
      return sub_100055D2C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000552F4()
{
  sub_1000582A4();
  if (sub_1000557BC())
  {
    sub_100044C50();
    sub_100045C80();
  }

  else
  {
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(qword_10009CED0, v2))
    {
      v3 = sub_10000D030();
      v14 = sub_10000D464();
      *v3 = 136446210;
      v4 = sub_1000229A0();
      *(v3 + 4) = sub_10000C600(v4, v5, v6);
      sub_1000583A0(&_mh_execute_header, v7, v8, "Deferring task %{public}s until after first unlock");
      sub_10000CADC(v14);
      sub_10000D8D4();
      sub_10000D8D4();
    }

    sub_10000D090();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100058128;
    *(v9 + 24) = v0;
    v10 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers;
    sub_1000582E4();

    sub_100053EA0();
    sub_10000D640();
    sub_100058318();
    *(v11 + 32) = sub_1000581BC;
    *(v11 + 40) = v9;
    *(v1 + v10) = v12;
    swift_endAccess();
  }
}

uint64_t sub_100055448()
{
  sub_1000582A4();
  if (sub_1000557BC())
  {
    sub_100039310();
  }

  else
  {
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(qword_10009CED0, v2))
    {
      v3 = sub_10000D030();
      v14 = sub_10000D464();
      *v3 = 136446210;
      v4 = sub_1000229A0();
      *(v3 + 4) = sub_10000C600(v4, v5, v6);
      sub_1000583A0(&_mh_execute_header, v7, v8, "Deferring task %{public}s until after first unlock");
      sub_10000CADC(v14);
      sub_10000D8D4();
      sub_10000D8D4();
    }

    sub_10000D090();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100058130;
    *(v9 + 24) = v0;
    v10 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers;
    sub_1000582E4();

    sub_100053EA0();
    sub_10000D640();
    sub_100058318();
    *(v11 + 32) = sub_1000581BC;
    *(v11 + 40) = v9;
    *(v1 + v10) = v12;
    swift_endAccess();
  }
}

uint64_t sub_100055628(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{

  if (sub_1000557BC())
  {
    a5();
  }

  else
  {
    v15 = static os_log_type_t.default.getter();
    v16 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v15))
    {
      v25 = a8;
      v17 = sub_10000D030();
      v18 = sub_10000D464();
      v26 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10000C600(a1, a2, &v26);
      _os_log_impl(&_mh_execute_header, v16, v15, "Deferring task %{public}s until after first unlock", v17, 0xCu);
      sub_10000CADC(v18);
      sub_10000D8D4();
      a8 = v25;
      sub_10000D8D4();
    }

    sub_10000D090();
    v19 = swift_allocObject();
    *(v19 + 16) = a7;
    *(v19 + 24) = a4;
    v20 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers;
    sub_1000582E4();

    sub_100053EA0();
    v21 = *(*(a3 + v20) + 16);
    sub_10005403C(v21);
    v22 = *(a3 + v20);
    *(v22 + 16) = v21 + 1;
    v23 = v22 + 16 * v21;
    *(v23 + 32) = a8;
    *(v23 + 40) = v19;
    *(a3 + v20) = v22;
    swift_endAccess();
  }
}

uint64_t sub_1000557BC()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager____lazy_storage___firstUnlockHasCompleted;
  v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager____lazy_storage___firstUnlockHasCompleted);
  if (v2 == 2)
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc);
    v5 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc + 8);
    LOBYTE(v2) = v4();
    *(v3 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_10005581C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = sub_10000CBBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v9 = v8 - v7;
  v10 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *(v8 - v7) = v10;
  (*(v4 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v1);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v9, v1);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v14 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lockStateChangeNotificationName);
  v15 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lockStateChangeNotificationName + 8);
  v16 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100058120;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005014C;
  aBlock[3] = &unk_100091130;
  v17 = _Block_copy(aBlock);

  v18 = String.utf8CString.getter();
  v19 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__keybagLockStatusChangedNotificationToken;
  swift_beginAccess();
  v20 = notify_register_dispatch((v18 + 32), (v0 + v19), v11, v17);
  swift_endAccess();

  _Block_release(v17);
  if (v20)
  {
    v21 = static os_log_type_t.fault.getter();
    result = sub_10000CD2C(v21);
    if (!result)
    {
      return result;
    }

    v22 = swift_slowAlloc();
    v23 = sub_10000D464();
    aBlock[0] = v23;
    *v22 = 136446466;
    sub_100058280();
    v26 = sub_100058300(v24, v25, aBlock);
    sub_10000CD44(v26);
    sub_100058340(&_mh_execute_header, v27, v28, "Failed to register for %{public}s darwin notification. Received error code %u from notify_register_dispatch");
    sub_10000CADC(v23);
    sub_10000D8D4();
  }

  else
  {
    v29 = static os_log_type_t.default.getter();
    result = os_log_type_enabled(qword_10009CED0, v29);
    if (!result)
    {
      return result;
    }

    v30 = sub_10000D030();
    v31 = sub_10000D464();
    aBlock[0] = v31;
    *v30 = 136446210;
    sub_100058280();
    *(v30 + 4) = sub_100058300(v32, v33, aBlock);
    sub_100058380(&_mh_execute_header, v34, v35, "Registered for %{public}s notification");
    sub_10000CADC(v31);
    sub_100049A00();
  }

  return sub_10000D8D4();
}

uint64_t sub_100055B24()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100055B7C();
  }

  return result;
}

uint64_t sub_100055B7C()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_10000CBBC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000EE9C();
  v7 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v7;
  v8 = sub_100036508();
  v9(v8);
  v10 = v7;
  _dispatchPreconditionTest(_:)();
  v11 = sub_1000581C0();
  result = v12(v11, v3);
  if (v7)
  {
    if (sub_1000557BC())
    {
      return sub_100055D2C();
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc + 8);
      if ((*(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc))())
      {
        sub_100055D2C();
        return sub_1000560B0();
      }

      else
      {
        v15 = static os_log_type_t.debug.getter();
        result = os_log_type_enabled(qword_10009CED0, v15);
        if (result)
        {
          v16 = sub_10000D030();
          v17 = sub_10000D464();
          v22 = v17;
          *v16 = 136446210;
          sub_100058280();
          *(v16 + 4) = sub_100058300(v18, v19, &v22);
          sub_100058380(&_mh_execute_header, v20, v21, "Ignoring %{public}s notification since device has not yet passed first unlock");
          sub_10000CADC(v17);
          sub_100049A00();
          return sub_10000D8D4();
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

uint64_t sub_100055D2C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_10000CBBC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000EE9C();
  v6 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v6;
  v7 = sub_100036508();
  v8(v7);
  v9 = v6;
  _dispatchPreconditionTest(_:)();
  v10 = sub_1000581C0();
  result = v11(v10, v2);
  if (v6)
  {
    v13 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__keybagLockStatusChangedNotificationToken;
    swift_beginAccess();
    result = *(v0 + v13);
    if (result != -1)
    {
      if (notify_cancel(result))
      {
        v14 = static os_log_type_t.fault.getter();
        result = sub_10000CD2C(v14);
        if (result)
        {
          v15 = swift_slowAlloc();
          v16 = sub_10000D464();
          v28 = v16;
          *v15 = 136446466;
          sub_100058280();
          v19 = sub_100058300(v17, v18, &v28);
          sub_10000CD44(v19);
          sub_100058340(&_mh_execute_header, v20, v21, "Failed to cancel %{public}s notification. Received error code %u from notify_cancel");
          sub_10000CADC(v16);
          sub_10000D8D4();
          return sub_100049A00();
        }
      }

      else
      {
        v22 = static os_log_type_t.default.getter();
        v23 = qword_10009CED0;
        result = os_log_type_enabled(qword_10009CED0, v22);
        if (result)
        {
          v24 = sub_10000D030();
          v25 = sub_10000D464();
          v28 = v25;
          *v24 = 136446210;
          sub_100058280();
          *(v24 + 4) = sub_100058300(v26, v27, &v28);
          _os_log_impl(&_mh_execute_header, v23, v22, "Unregistered for %{public}s notification", v24, 0xCu);
          sub_10000CADC(v25);
          sub_10000D8D4();
          result = sub_100049A00();
        }

        *(v0 + v13) = -1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100055F64()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_10000CBBC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000EE9C();
  v7 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v7;
  v8 = sub_100036508();
  v9(v8);
  v10 = v7;
  _dispatchPreconditionTest(_:)();
  v11 = sub_1000581C0();
  result = v12(v11, v3);
  if (v7)
  {
    result = sub_1000557BC();
    if ((result & 1) == 0)
    {
      v14 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc + 8);
      if ((*(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc))())
      {
        return sub_1000560B0();
      }

      else
      {
        static os_log_type_t.fault.getter();
        return os_log(_:dso:log:_:_:)();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000560B0()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_10000CBBC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000EE9C();
  v7 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v7;
  v8 = sub_100036508();
  v9(v8);
  v10 = v7;
  _dispatchPreconditionTest(_:)();
  v11 = sub_1000581C0();
  result = v12(v11, v3);
  if (v7)
  {
    *(v2 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager____lazy_storage___firstUnlockHasCompleted) = 1;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v14 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers;
    swift_beginAccess();
    v15 = *(v2 + v14);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *(v2 + v14);

      v18 = (v15 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;

        v20(v21);

        v18 += 2;
        --v16;
      }

      while (v16);

      v22 = *(v2 + v14);
    }

    *(v2 + v14) = _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005625C(uint64_t *a1)
{
  v2 = v1;
  v105 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_10000CBBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v11 = *(v1 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *(v10 - v9) = v11;
  (*(v6 + 104))(v10 - v9, enum case for DispatchPredicate.onQueue(_:), v3);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v14 = sub_10000EB40();
  result = v15(v14);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v17 = type metadata accessor for Date();
  v18 = sub_10000CBBC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_100058218();
  v104 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v23 = *(v104[-1].isa + 8);
  __chkstk_darwin(v104);
  v25 = &v100[-v24];
  v26 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lastUnlockDate;
  swift_beginAccess();
  sub_10005775C(v2 + v26, v25);
  if (sub_100022484(v25, 1, v17) == 1)
  {
    v103 = v20;
    sub_1000577CC(v25);
    goto LABEL_8;
  }

  v27 = sub_10005832C(v20);
  v28(v27);
  if (!sub_100056C30(v105))
  {
    v103 = v20;
    v46 = *(v20 + 8);
    v47 = sub_100058264();
    v48(v47);
LABEL_8:
    v49 = MKBGetDeviceLockState();
    if (v49 <= 3 && v49 != 1)
    {
      return 1;
    }

    if (&_BiomeLibrary)
    {
      v51 = [BiomeLibrary() Device];
      swift_unknownObjectRelease();
      v52 = [v51 KeybagLocked];
      swift_unknownObjectRelease();
      v53 = [objc_opt_self() reversed];
      v54 = [v52 publisherWithOptions:v53];

      v110 = sub_100056FD4;
      v111 = 0;
      aBlock = _NSConcreteStackBlock;
      v107 = 1107296256;
      v108 = sub_10000C200;
      v109 = &unk_1000910B8;
      v55 = _Block_copy(&aBlock);
      v110 = sub_100057834;
      v111 = v2;
      aBlock = _NSConcreteStackBlock;
      v107 = 1107296256;
      v108 = sub_1000573C0;
      v109 = &unk_1000910E0;
      v56 = _Block_copy(&aBlock);

      v57 = [v54 sinkWithCompletion:v55 shouldContinue:v56];
      _Block_release(v56);
      _Block_release(v55);

      __chkstk_darwin(v58);
      sub_100058218();
      __chkstk_darwin(v59);
      sub_10005775C(v2 + v26, &v100[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      if (sub_100022484(&v100[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)], 1, v17) == 1)
      {
        sub_1000577CC(&v100[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)]);
        v60 = static os_log_type_t.error.getter();
        v61 = qword_10009CED0;
        result = sub_10000CD2C(v60);
        if (!result)
        {
          return result;
        }

        v62 = sub_10000D030();
        *v62 = 134217984;
        *(v62 + 4) = v105;
        _os_log_impl(&_mh_execute_header, v61, v60, "Could not find last unlock event. Unable to confirm whether device was unlocked within requested %ld hours. Will return false", v62, 0xCu);
        sub_100049A00();
        return 0;
      }

      v66 = v103;
      v67 = sub_10005832C(v103);
      v68(v67);
      if (sub_100056C30(v105))
      {
        v104 = v100;
        v69 = static os_log_type_t.info.getter();
        v70 = v69;
        v71 = qword_10009CED0;
        __chkstk_darwin(v69);
        sub_100058218();
        v72 = sub_10000D0AC(v66);
        v73(v72);
        v74 = v66;
        if (os_log_type_enabled(v71, v70))
        {
          v75 = swift_slowAlloc();
          v76 = sub_10000D464();
          v102 = v100;
          v77 = v76;
          aBlock = v76;
          *v75 = 136446466;
          sub_1000581D0();
          sub_10005815C(v78, v79);
          v80 = dispatch thunk of CustomStringConvertible.description.getter();
          v82 = v81;
          v101 = v70;
          v83 = *(v74 + 8);
          v84 = sub_10000EB40();
          v83(v84);
          v85 = sub_10000C600(v80, v82, &aBlock);

          *(v75 + 4) = v85;
          *(v75 + 12) = 2048;
          *(v75 + 14) = v105;
          _os_log_impl(&_mh_execute_header, v71, v101, "Last unlock date %{public}s is within %ld", v75, 0x16u);
          sub_10000CADC(v77);
          sub_10000D8D4();
          sub_10000D8D4();
          v86 = sub_100058264();
          v83(v86);
        }

        else
        {
          v97 = *(v66 + 8);
          v98 = sub_10000EB40();
          v97(v98);
          v99 = sub_100058264();
          v97(v99);
        }

        return 1;
      }

      v103 = v66;
      v87 = static os_log_type_t.default.getter();
      v88 = qword_10009CED0;
      if (sub_10000CD2C(v87))
      {
        v89 = swift_slowAlloc();
        v90 = sub_10000D464();
        v102 = v100;
        aBlock = v90;
        *v89 = 136315394;
        __chkstk_darwin(v90);
        sub_10005775C(v2 + v26, &v100[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)]);
        v91 = String.init<A>(describing:)();
        v93 = sub_10000C600(v91, v92, &aBlock);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2048;
        *(v89 + 14) = v105;
        _os_log_impl(&_mh_execute_header, v88, v87, "Last unlock was at date %s, which is not within %ld", v89, 0x16u);
        sub_10000CADC(v90);
        sub_10000D8D4();
        sub_10000D8D4();
      }

      v94 = *(v103 + 8);
      v95 = sub_100058264();
      v96(v95);
    }

    else
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    return 0;
  }

  v29 = static os_log_type_t.debug.getter();
  v30 = v29;
  v31 = qword_10009CED0;
  __chkstk_darwin(v29);
  sub_100058218();
  v32 = sub_10000D0AC(v20);
  v33(v32);
  v34 = v20;
  if (os_log_type_enabled(v31, v30))
  {
    v35 = sub_10000D030();
    v105 = sub_10000D464();
    aBlock = v105;
    *v35 = 136446210;
    sub_1000581D0();
    sub_10005815C(v36, v37);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v103) = v30;
    v39 = v38;
    v104 = v31;
    v41 = v40;
    v42 = *(v34 + 8);
    v43 = sub_10000EB40();
    v42(v43);
    v44 = sub_10000C600(v39, v41, &aBlock);

    *(v35 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v104, v103, "Previously fetched last unlock date %{public}s is still recent", v35, 0xCu);
    sub_10000CADC(v105);
    sub_10000D8D4();
    sub_10000D8D4();
    v45 = sub_100058264();
    v42(v45);
  }

  else
  {
    v63 = *(v20 + 8);
    v64 = sub_10000EB40();
    v63(v64);
    v65 = sub_100058264();
    v63(v65);
  }

  return 1;
}

BOOL sub_100056C30(uint64_t a1)
{
  v47 = type metadata accessor for Date();
  v1 = sub_10000CBBC(v47);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000CBDC();
  v8 = v7 - v6;
  v48 = type metadata accessor for DateComponents();
  v9 = sub_10000CBBC(v48);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v16 = v15 - v14;
  v17 = type metadata accessor for Calendar.Identifier();
  v18 = sub_10000CBBC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10000CBDC();
  v25 = v24 - v23;
  v46 = type metadata accessor for Calendar();
  v26 = sub_10000CBBC(v46);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_10000CBDC();
  v33 = v32 - v31;
  (*(v20 + 104))(v25, enum case for Calendar.Identifier.gregorian(_:), v17);
  Calendar.init(identifier:)();
  (*(v20 + 8))(v25, v17);
  sub_100013414(&qword_10009B9B8, &qword_1000788A0);
  v34 = type metadata accessor for Calendar.Component();
  sub_10000CBBC(v34);
  v36 = v35;
  v38 = *(v37 + 72);
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100077360;
  (*(v36 + 104))(v40 + v39, enum case for Calendar.Component.hour(_:), v34);
  sub_100057D6C(v40);
  static Date.now.getter();
  Calendar.dateComponents(_:from:to:)();

  (*(v3 + 8))(v8, v47);
  v41 = DateComponents.hour.getter();
  if (v42)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v43 = 0;
  }

  else
  {
    v43 = v41 < a1;
  }

  (*(v11 + 8))(v16, v48);
  (*(v28 + 8))(v33, v46);
  return v43;
}

void sub_100056FD4(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v10 = v1;
    v2 = static os_log_type_t.error.getter();
    v3 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136315138;
      v6 = v10;
      sub_100013414(&unk_10009A930, &unk_100077080);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000C600(v7, v8, &v11);

      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v2, "Failed to subscribe for keybag events from Biome due to error: %s", v4, 0xCu);
      sub_10000CADC(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100057148(void *a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  v16 = [a1 eventBody];
  if (v16)
  {
    v17 = v16;
    if ([v16 starting])
    {
    }

    else
    {
      [a1 timestamp];
      Date.init(timeIntervalSinceReferenceDate:)();
      static Date.now.getter();
      sub_10005815C(&qword_10009B9D8, &type metadata accessor for Date);
      v18 = dispatch thunk of static Comparable.< infix(_:_:)();

      v19 = *(v9 + 8);
      v19(v13, v8);
      if ((v18 & 1) == 0)
      {
        (*(v9 + 32))(v7, v15, v8);
        sub_1000223E8(v7, 0, 1, v8);
        v21 = OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lastUnlockDate;
        swift_beginAccess();
        sub_1000580B0(v7, a2 + v21);
        swift_endAccess();
        return 0;
      }

      v19(v15, v8);
    }
  }

  return 1;
}

uint64_t sub_1000573C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_100057418()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_10000CBBC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000EE9C();
  v6 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager_queue);
  *v1 = v6;
  v7 = sub_100036508();
  v8(v7);
  v9 = v6;
  _dispatchPreconditionTest(_:)();
  v10 = sub_1000581C0();
  result = v11(v10, v2);
  if (v6)
  {
    return sub_1000557BC() & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100057504()
{
  sub_1000577CC(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lastUnlockDate);
  v1 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__registeredFirstUnlockHandlers);

  v2 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__lockStateChangeNotificationName + 8);

  v3 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced16LockStateManager__unlockedSinceBootFunc + 8);

  return v0;
}

uint64_t sub_100057574()
{
  sub_100057504();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LockStateManager()
{
  result = qword_10009B850;
  if (!qword_10009B850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100057620()
{
  sub_1000576FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000576FC()
{
  if (!qword_10009B860)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10009B860);
    }
  }
}

uint64_t sub_10005775C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000577CC(uint64_t a1)
{
  v2 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10005783C(uint64_t a1)
{
  v2 = a1;
  if (sub_100049430(a1))
  {
    sub_100013414(&qword_10009BE20, &qword_100078B50);
    v3 = sub_1000582C8();
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v18 = sub_10004997C(v2);
  if (v18)
  {
    sub_100058228();
    while (1)
    {
      v4 = sub_100058270();
      sub_100058138(v4, v5, v2);
      if (v17)
      {
        sub_1000229A0();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v15 + 8 * v1);
      }

      v7 = __OFADD__(v1++, 1);
      if (v7)
      {
        break;
      }

      v8 = v3[5];
      type metadata accessor for ControlChannelConnection();
      sub_100058200();
      sub_10005815C(&unk_10009BE10, v9);
      sub_100058360();
      sub_10000D4DC();
      while (1)
      {
        sub_10005828C(v10);
        if (v12)
        {
          break;
        }

        v19 = *(v3[6] + 8 * v2);
        sub_100058200();
        sub_10005815C(&qword_10009B9E0, v13);
        if (sub_10000D3D0())
        {

          goto LABEL_17;
        }

        v10 = v2 + 1;
      }

      sub_100058248(v11);
      if (v7)
      {
        goto LABEL_20;
      }

      v3[2] = v14;
LABEL_17:
      v2 = v16;
      if (v1 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1000579D4(uint64_t a1)
{
  v2 = a1;
  if (sub_100049430(a1))
  {
    sub_100013414(&qword_10009BE80, &unk_1000788B0);
    v3 = sub_1000582C8();
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v18 = sub_10004997C(v2);
  if (v18)
  {
    sub_100058228();
    while (1)
    {
      v4 = sub_100058270();
      sub_100058138(v4, v5, v2);
      if (v17)
      {
        sub_1000229A0();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v15 + 8 * v1);
      }

      v7 = __OFADD__(v1++, 1);
      if (v7)
      {
        break;
      }

      v8 = v3[5];
      type metadata accessor for SystemXPCPeerConnection();
      sub_10000D9A0();
      sub_10005815C(&unk_10009A0E0, v9);
      sub_100058360();
      sub_10000D4DC();
      while (1)
      {
        sub_10005828C(v10);
        if (v12)
        {
          break;
        }

        v19 = *(v3[6] + 8 * v2);
        sub_10000D9A0();
        sub_10005815C(&qword_10009B9E8, v13);
        if (sub_10000D3D0())
        {

          goto LABEL_17;
        }

        v10 = v2 + 1;
      }

      sub_100058248(v11);
      if (v7)
      {
        goto LABEL_20;
      }

      v3[2] = v14;
LABEL_17:
      v2 = v16;
      if (v1 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_100057B6C(uint64_t a1)
{
  v1 = a1;
  if (sub_100049430(a1))
  {
    sub_100013414(&qword_10009B9F0, &qword_100078BD0);
    v2 = sub_1000582C8();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v24 = sub_10004997C(v1);
  if (v24)
  {
    v3 = 0;
    v4 = v2 + 7;
    v22 = v1;
    v23 = v1 & 0xC000000000000001;
    v21 = v1 + 32;
    while (1)
    {
      v5 = sub_100058270();
      sub_100058138(v5, v6, v1);
      if (v23)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v21 + 8 * v3);
      }

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

      v9 = v2[5];
      Hasher.init(_seed:)();
      type metadata accessor for PairableHostsBrowseRegistration();
      sub_10005815C(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration);
      HashableByObjectIdentity.hash(into:)();
      Hasher._finalize()();
      sub_10000D4DC();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = v4[v14];
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = *(v2[6] + 8 * v13);

        v18 = static HashableByObjectIdentity.== infix(_:_:)();

        if (v18)
        {

          goto LABEL_17;
        }

        v10 = v13 + 1;
      }

      v4[v14] = v16 | v15;
      *(v2[6] + 8 * v13) = v7;
      v19 = v2[2];
      v8 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v8)
      {
        goto LABEL_20;
      }

      v2[2] = v20;
LABEL_17:
      v1 = v22;
      if (v3 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_100057D6C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_100013414(&qword_10009B9C0, &qword_1000788A8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = v9[5];
    sub_10005815C(&qword_10009B9C8, &type metadata accessor for Calendar.Component);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, v9[6] + v18 * v13, v2);
      sub_10005815C(&qword_10009B9D0, &type metadata accessor for Calendar.Component);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(v9[6] + v18 * v13, v25, v2);
    v26 = v9[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    v9[2] = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000580B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100058138(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005815C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100058248(uint64_t a1@<X8>)
{
  *(v5 + 8 * a1) = v2 | v1;
  *(*(v3 + 48) + 8 * v4) = v6;
  v7 = *(v3 + 16);
}

uint64_t sub_1000582A4()
{
}

uint64_t sub_1000582C8()
{

  return static _SetStorage.allocate(capacity:)();
}

uint64_t sub_1000582E4()
{

  return swift_beginAccess();
}

uint64_t sub_100058300(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_10000C600(0xD000000000000024, a2, a3);
}

void sub_100058340(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t sub_100058360()
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

void sub_100058380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1000583A0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1000583C0()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  v3 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v2);
  if (result)
  {

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    v6 = *(v1 + 16);
    if ((v6 & 0xC000000000000001) != 0)
    {
      if (v6 < 0)
      {
        v7 = *(v1 + 16);
      }

      v8 = *(v1 + 16);

      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *(v6 + 16);
    }

    *(v5 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v3, v2, "Network pairing peers updated. Total count: %ld", v5, 0xCu);
  }

  return result;
}

uint64_t sub_1000584CC()
{
  sub_10000D488();
  v1 = *(v0 + 16);
}

void sub_1000584FC()
{
  sub_10000D060();
  v1 = v0;
  v2 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  v12 = v0 + 24;
  v11 = *(v0 + 24);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (*(v12 + 24))
  {
    if (v14 == 1)
    {

      NWListener.cancel()();

      v11 = *(v1 + 24);
      v13 = *(v1 + 40);
      LOBYTE(v14) = *(v1 + 48);
    }

    else
    {
      if (v11 | *(v1 + 32) | v13)
      {
        v11 = 1;
      }

      LOBYTE(v14) = 2;
    }
  }

  v15 = *(v1 + 32);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v1 + 48) = 2;
  sub_10005AC9C(v11, v15, v13, v14);
  v29 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
  v16 = (v5 + 104);
  for (i = (v5 + 8); ; (*i)(v10, v2))
  {
    swift_beginAccess();
    v18 = *(v1 + 16);
    v19 = v18 & 0xC000000000000001;
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v20 = *(v1 + 16);
      }

      if (!__CocoaSet.count.getter())
      {
LABEL_18:
        v27 = 0;
        goto LABEL_22;
      }

      v21 = __CocoaSet.startIndex.getter();
      v23 = v22;
    }

    else
    {
      if (!*(v18 + 16))
      {
        goto LABEL_18;
      }

      v24 = 0;
      v25 = (v18 + 56);
      v21 = 1 << *(v18 + 32);
      v26 = (v21 + 63) >> 6;
      if (v26)
      {
        while (!*v25)
        {
          v24 -= 64;
          --v26;
          ++v25;
          if (!v26)
          {
            goto LABEL_20;
          }
        }

        v21 = __clz(__rbit64(*v25)) - v24;
      }

LABEL_20:
      v23 = *(v18 + 36);
    }

    v28 = v19 != 0;
    v27 = sub_10005AD04(v21, v23, v19 != 0);
    sub_100024E0C(v21, v23, v28);
LABEL_22:
    swift_endAccess();
    sub_1000583C0();
    if (!v27)
    {
      break;
    }

    (*v16)(v10, v29, v2);
    dispatch thunk of ControlChannelConnection.invalidate(for:)();
  }

  sub_1000135A0();
}

void sub_10005875C()
{
  sub_10000D060();
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for UUID();
  v12 = sub_10000CBBC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000CBDC();
  v19 = v18 - v17;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (*(v1 + 48) < 2u || *(v1 + 32) | *(v1 + 40) | *(v1 + 24))
  {
    static os_log_type_t.default.getter();
    sub_1000135A0();

    os_log(_:dso:log:_:_:)();
  }

  else
  {
    UUID.init()();
    v21 = UUID.uuidString.getter();
    v23 = v22;
    (*(v14 + 8))(v19, v11);
    static String.Encoding.utf8.getter();
    v24 = String.data(using:allowLossyConversion:)();
    v26 = v25;
    (*(v5 + 8))(v10, v2);
    if (v26 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v27 = *(v1 + 24);
      v28 = *(v1 + 32);
      v29 = *(v1 + 40);
      *(v1 + 24) = v21;
      *(v1 + 32) = v23;
      *(v1 + 40) = 0;
      v30 = *(v1 + 48);
      *(v1 + 48) = 0;
      sub_10005AC9C(v27, v28, v29, v30);
      v31 = *(v1 + 104);
      sub_10000CCD8();
      v32 = swift_allocObject();
      v32[2] = v1;
      v32[3] = v24;
      v32[4] = v26;
      v33 = sub_10000CC14();
      sub_10000EC4C(v33, v34);
      v35 = sub_10000CC14();
      sub_10000EC4C(v35, v36);
      v37 = swift_allocObject();
      v37[2] = v24;
      v37[3] = v26;
      v37[4] = sub_10005ACF4;
      v37[5] = v32;
      v38 = sub_10000CC14();
      sub_10000EC4C(v38, v39);

      v40 = sub_10000CC14();
      sub_10000EC4C(v40, v41);

      v42 = sub_10000CC14();
      sub_10000EC4C(v42, v43);

      sub_1000215B4();
      v52 = sub_10001C2A4();
      sub_10000CC14();
      v53 = CUPairingIdentity.authTag(for:type:)();
      v55 = v54;
      sub_10000CC14();
      sub_100058DA0();
      sub_10000ED08(v53, v55, 0);

      v44 = sub_10000CC14();
      sub_10000ECF4(v44, v45);

      v46 = sub_10000CC14();
      sub_10000ECF4(v46, v47);

      v48 = sub_10000CC14();
      sub_10000ECF4(v48, v49);
      v50 = sub_10000CC14();
      sub_10000ECF4(v50, v51);
      sub_1000135A0();
    }
  }
}

uint64_t sub_100058CF0()
{
  if (*(v0 + 48) == 1)
  {
    v2 = v0 + 32;
    v0 = *(v0 + 32);
    v1 = *(v2 + 8);
  }

  else
  {
    type metadata accessor for RemotePairingError();
    sub_10000D1B8(&qword_100099850, &type metadata accessor for RemotePairingError);
    swift_allocError();
    static RemotePairingError.invalidOperation.getter();
    swift_willThrow();
  }

  return v0;
}

void sub_100058DA0()
{
  sub_10000D060();
  LODWORD(v130) = v1;
  v131 = v2;
  v127 = v4;
  v128 = v3;
  v129 = v5;
  v6 = type metadata accessor for BonjourService();
  v7 = sub_10000CBBC(v6);
  v124 = v8;
  v125 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v13 = v12 - v11;
  v14 = sub_100013414(&qword_10009BB28, &qword_1000789C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v117 - v16;
  v18 = type metadata accessor for NWEndpoint.Port();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_10000CBDC();
  v22 = v21 - v20;
  v23 = type metadata accessor for NWTXTRecord();
  v24 = sub_10000CBBC(v23);
  v126 = v25;
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v24);
  v30 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v117 - v31;
  v33 = type metadata accessor for String.Encoding();
  v34 = sub_10000CBBC(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_10000CBDC();
  v41 = v40 - v39;
  if (*(v0 + 48))
  {
    v42 = static os_log_type_t.default.getter();
    v43 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v42))
    {
      v44 = swift_slowAlloc();
      v45 = sub_10000D464();
      v134 = v45;
      *v44 = 136446210;
      v132[0] = sub_10005AFFC();
      v132[1] = v46;
      v132[2] = v47;
      v133 = v48;
      sub_10005AC3C(v132[0], v46, v47, v48);
      v49 = String.init<A>(describing:)();
      v51 = sub_10000C600(v49, v50, &v134);

      *(v44 + 4) = v51;
      v52 = "NetworkPairingService finished auth tag generation, but current state (%{public}s) is not valid to use the data";
      v53 = v42;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v43, v53, v52, v44, 0xCu);
      sub_10000CADC(v45);
      sub_10000D8D4();
      sub_10000D8D4();
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v117 = v22;
  v118 = v30;
  v119 = v13;
  v120 = v17;
  v121 = v0;
  v122 = v23;
  v55 = *(v0 + 24);
  v54 = *(v0 + 32);
  v123 = *(v0 + 40);

  static String.Encoding.utf8.getter();
  v56 = v55;
  v57 = v54;
  v58 = String.data(using:allowLossyConversion:)();
  v60 = v59;
  (*(v36 + 8))(v41, v33);
  if (v60 >> 60 != 15)
  {
    v61 = static Data.== infix(_:_:)();
    sub_10000ECF4(v58, v60);
    if ((v61 & 1) == 0)
    {
      sub_10005AFEC();
      sub_10005AC9C(v73, v74, v75, v76);
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      goto LABEL_19;
    }

    v62 = v56;
    if ((v130 & 1) == 0)
    {
      v77 = v32;
      sub_10005AB0C(&_swiftEmptyArrayStorage);
      NWTXTRecord.init(_:)();
      static NetworkPairingKeys.identifier.getter();

      NWTXTRecord.subscript.setter();
      static NetworkPairingKeys.authTag.getter();
      Data.base64EncodedString(options:)(0);
      NWTXTRecord.subscript.setter();
      static NetworkPairingKeys.model.getter();
      v78 = String._bridgeToObjectiveC()();
      v79 = MGCopyAnswer();

      if (v79)
      {
        v134 = v79;
        sub_10005B00C();
      }

      NWTXTRecord.subscript.setter();
      static NetworkPairingKeys.name.getter();
      v80 = String._bridgeToObjectiveC()();
      v81 = MGCopyAnswer();

      if (v81)
      {
        v134 = v81;
        sub_10005B00C();
      }

      NWTXTRecord.subscript.setter();
      type metadata accessor for ControlChannelConnectionWireProtocolVersion();
      v82 = static ControlChannelConnectionWireProtocolVersion.current.getter();
      v83 = [v82 description];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static NetworkPairingKeys.wireProtocolVersion.getter();
      NWTXTRecord.subscript.setter();
      v84 = static ControlChannelConnectionWireProtocolVersion.minimumSupportedForWirelessPairing.getter();
      v85 = [v84 description];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static NetworkPairingKeys.minimumSupportedWireProtocolVersion.getter();
      NWTXTRecord.subscript.setter();
      type metadata accessor for NWParameters();
      static NWParameters.tcp.getter();
      static NWEndpoint.Port.any.getter();
      v86 = type metadata accessor for NWListener();
      v87 = *(v86 + 48);
      v88 = *(v86 + 52);
      v129 = v86;
      swift_allocObject();
      v89 = NWListener.init(using:on:)();
      v90 = v121;
      v91 = v121[3];
      v92 = v121[4];
      v93 = v121[5];
      v121[3] = v89;
      v90[4] = v62;
      v90[5] = v57;
      LOBYTE(v83) = *(v90 + 48);
      *(v90 + 48) = 1;
      sub_10005AFEC();
      sub_10005AC3C(v94, v95, v96, v97);

      sub_10005AC9C(v91, v92, v93, v83);
      v99 = v124;
      v98 = v125;
      v100 = v119;
      (*(v124 + 104))(v119, enum case for BonjourService.pairSetup(_:), v125);
      BonjourService.rawValue.getter();
      (*(v99 + 8))(v100, v98);
      v130 = v62;
      v131 = v57;
      v101 = v126;
      (*(v126 + 16))(v118, v77, v122);
      v102 = v120;
      NWListener.Service.init(name:type:domain:txtRecord:)();
      v103 = type metadata accessor for NWListener.Service();
      sub_1000223E8(v102, 0, 1, v103);
      NWListener.service.setter();
      sub_100010E30(sub_100059800);
      NWListener.stateUpdateHandler.setter();
      sub_10000CBD0();
      v104 = swift_allocObject();
      swift_weakInit();
      sub_10000CBD0();
      v105 = swift_allocObject();
      swift_weakInit();
      sub_10000D090();
      v106 = swift_allocObject();
      *(v106 + 16) = v104;
      *(v106 + 24) = v105;

      sub_100010E30(sub_10005ACEC);
      NWListener.newConnectionHandler.setter();

      v107 = v90[7];
      NWListener.start(queue:)();
      v108 = static os_log_type_t.default.getter();
      v109 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v108))
      {
        v110 = swift_slowAlloc();
        v132[0] = swift_slowAlloc();
        *v110 = 136315394;
        v134 = v89;

        v111 = String.init<A>(describing:)();
        v113 = sub_10000C600(v111, v112, v132);

        *(v110 + 4) = v113;
        *(v110 + 12) = 2080;
        v115 = v130;
        v114 = v131;
        v116 = sub_10000C600(v130, v131, v132);
        sub_10005AC9C(v115, v114, v123, 0);
        *(v110 + 14) = v116;
        _os_log_impl(&_mh_execute_header, v109, v108, "Started listening for network pairing with listener %s, session ID: %s", v110, 0x16u);
        swift_arrayDestroy();
        sub_10000D8D4();
        sub_10000D8D4();
      }

      else
      {
        sub_10005AC9C(v130, v131, v123, 0);
      }

      (*(v101 + 8))(v77, v122);
      goto LABEL_19;
    }

    sub_10005AFEC();
    sub_10005AC9C(v63, v64, v65, v66);
    v67 = static os_log_type_t.error.getter();
    v43 = qword_10009CED0;
    v68 = os_log_type_enabled(qword_10009CED0, v67);
    v69 = v127;
    if (v68)
    {
      v44 = swift_slowAlloc();
      v45 = sub_10000D464();
      v132[0] = v45;
      *v44 = 136446210;
      v134 = v69;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v70 = String.init<A>(describing:)();
      v72 = sub_10000C600(v70, v71, v132);

      *(v44 + 4) = v72;
      v52 = "Unable to start network pairing service. Failed to generate auth tag with error: %{public}s";
      v53 = v67;
      goto LABEL_4;
    }

LABEL_19:
    sub_1000135A0();
    return;
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_100059800(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  sub_100013414(&qword_1000999F0, &unk_100077530);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100077360;
  (*(v3 + 16))(v6, a1, v2);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100022420();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10005996C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v3 = Strong;
    if (*(v1 + 48) == 1)
    {
      v4 = *(v1 + 24);

      if (v3 == v4)
      {
        sub_100059DD0();
      }
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
  }

  return result;
}

void sub_100059A7C()
{
  sub_10000D060();
  v1 = v0;
  v36 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v2 = sub_10000CBBC(v36);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v35 = v8 - v7;
  v9 = *(v0 + 24);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  if (*(v1 + 48))
  {
    if (v11 == 1)
    {

      NWListener.cancel()();

      v9 = *(v1 + 24);
      v10 = *(v1 + 40);
      LOBYTE(v11) = *(v1 + 48);
    }

    else
    {
      if (v9 == 1 && *(v1 + 32) == 0)
      {
        static os_log_type_t.error.getter();
        sub_1000135A0();

        os_log(_:dso:log:_:_:)();
        return;
      }

      LOBYTE(v11) = 2;
    }
  }

  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 1;
  *(v1 + 48) = 2;
  sub_10005AC9C(v9, v13, v10, v11);
  sub_10000D488();
  v14 = *(v1 + 16);
  if ((v14 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10005AFD4();
    sub_10000D1B8(v15, v16);
    Set.Iterator.init(_cocoa:)();
    v14 = v38;
    v17 = v39;
    v18 = v40;
    v19 = v41;
    v20 = v42;
  }

  else
  {
    v17 = v14 + 56;
    v21 = *(v14 + 56);
    v18 = ~(-1 << *(v14 + 32));
    sub_10000D89C();
    v20 = v22 & v23;

    v19 = 0;
  }

  v24 = (v18 + 64) >> 6;
  v34 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
  v25 = (v4 + 104);
  v26 = (v4 + 8);
  if (v14 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = v19;
    v28 = v20;
    v29 = v19;
    if (!v20)
    {
      break;
    }

LABEL_17:
    v30 = __clz(__rbit64(v28));
    v31 = (v28 - 1) & v28;
    v32 = *(v14 + 48);
    sub_10000D3B0(v30);
    if (!v18)
    {
LABEL_23:
      sub_1000134CC();
      sub_1000135A0();
      return;
    }

    while (1)
    {
      (*v25)(v35, v34, v36);
      dispatch thunk of ControlChannelConnection.invalidate(for:)();

      (*v26)(v35, v36);
      v19 = v29;
      v20 = v31;
      if ((v14 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ControlChannelConnection();
        swift_dynamicCast();
        v18 = v37;
        v29 = v19;
        v31 = v20;
        if (v37)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      goto LABEL_23;
    }

    v28 = *(v17 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_100059DD0()
{
  sub_10000D060();
  v1 = v0;
  v2 = type metadata accessor for ControlChannelConnection.Options();
  v3 = sub_10000CBBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v10 = v9 - v8;
  v11 = sub_100013414(&qword_100099B50, &qword_1000779B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for ControlChannelConnection.Options.Device();
  v16 = sub_10000CBBC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_10000CBDC();
  v24 = v23 - v22;
  if (*(v0 + 48) == 1)
  {
    v25 = v21;
    v46 = v24;
    v47 = v18;
    ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
    v26 = type metadata accessor for DiscoveredBonjourAdvert();
    sub_1000223E8(v14, 1, 1, v26);
    v27 = type metadata accessor for NWConnectionControlChannelTransport();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();

    v30 = NWConnectionControlChannelTransport.init(connection:bonjourEndpoint:netLinkManager:)();
    v49[3] = v27;
    v49[4] = &protocol witness table for NWConnectionControlChannelTransport;
    v49[0] = v30;
    v31 = *(v0 + 56);
    v32 = *(v18 + 16);
    v33 = v46;
    v32(v10, v46, v25);
    (*(v5 + 104))(v10, enum case for ControlChannelConnection.Options.device(_:), v2);
    v34 = *(v0 + 104);
    v48[3] = type metadata accessor for SystemKeychainPairingManager();
    v48[4] = sub_10000D1B8(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager);
    v48[0] = v34;
    v35 = type metadata accessor for ControlChannelConnection();

    v36 = v31;

    static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
    v37 = *(v35 + 48);
    v38 = *(v35 + 52);
    swift_allocObject();
    v39 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
    sub_100022260(v1 + 64, v49);
    dispatch thunk of ControlChannelConnection.userInteractionProvider.setter();
    swift_beginAccess();

    sub_10006463C(v48, v39);
    swift_endAccess();

    sub_1000583C0();
    sub_10000CBD0();
    v40 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v41 = swift_allocObject();
    swift_weakInit();
    sub_10000D090();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = v41;

    dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

    sub_10000CBD0();
    v43 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v44 = swift_allocObject();
    swift_weakInit();

    sub_10000D090();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v43;

    dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

    dispatch thunk of ControlChannelConnection.start()();

    (*(v47 + 8))(v33, v25);
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    NWConnection.cancel()();
  }

  sub_1000135A0();
}

uint64_t sub_10005A2B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      sub_10000CE94();
      swift_endAccess();

      sub_1000583C0();
    }
  }

  return result;
}

uint64_t sub_10005A37C()
{
  v0 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v6)
      {
        v7 = v6;
        sub_100062620();
        if ((v8 & 1) == 0)
        {
          (*(v1 + 104))(v4, enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:), v0);
          dispatch thunk of ControlChannelConnection.invalidate(for:)();

          return (*(v1 + 8))(v4, v0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10005A514(NSObject *a1)
{
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a1, v3))
  {
    v4 = a1;
    swift_retain_n();
    v5 = swift_slowAlloc();
    v6 = sub_10000D464();
    v48 = v6;
    *v5 = 136446466;
    v49 = sub_10005AFFC();
    v50 = v7;
    v51 = v8;
    LOBYTE(v52) = v9;
    sub_10005AC3C(v49, v7, v8, v9);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000C600(v10, v11, &v48);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2048;
    sub_10000D488();
    v13 = *(v1 + 16);
    if ((v13 & 0xC000000000000001) != 0)
    {
      if (v13 < 0)
      {
        v14 = *(v1 + 16);
      }

      v15 = *(v1 + 16);

      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *(v13 + 16);
    }

    *(v5 + 14) = v16;

    a1 = v4;
    _os_log_impl(&_mh_execute_header, v4, v3, "State dump: NetworkPairingService state = %{public}s, connection count = %ld", v5, 0x16u);
    sub_10000CADC(v6);
    sub_10000D8D4();
    sub_10000D8D4();
  }

  sub_10000D488();
  v17 = *(v1 + 16);
  if ((v17 & 0xC000000000000001) != 0)
  {
    if (v17 < 0)
    {
      v18 = *(v1 + 16);
    }

    v1 = __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10005AFD4();
    sub_10000D1B8(v19, v20);
    result = Set.Iterator.init(_cocoa:)();
    v17 = v49;
    v22 = v50;
    v23 = v51;
    v24 = v52;
    v25 = v53;
  }

  else
  {
    v22 = v17 + 56;
    v26 = *(v17 + 56);
    v23 = ~(-1 << *(v17 + 32));
    sub_10000D89C();
    v25 = v27 & v28;

    v24 = 0;
  }

  v29 = (v23 + 64) >> 6;
  while (v17 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000134CC();
    }

    type metadata accessor for ControlChannelConnection();
    swift_dynamicCast();
    v1 = v47;
    v32 = v24;
    v34 = v25;
    if (!v47)
    {
      return sub_1000134CC();
    }

LABEL_23:
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v36))
    {
      v37 = swift_slowAlloc();
      v46 = sub_10000D464();
      v47 = v46;
      *v37 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v38 = String.init<A>(describing:)();
      v45 = v34;
      v40 = v29;
      v41 = v22;
      v42 = v17;
      v43 = a1;
      v44 = sub_10000C600(v38, v39, &v47);

      *(v37 + 4) = v44;
      a1 = v43;
      v17 = v42;
      v22 = v41;
      v29 = v40;
      _os_log_impl(&_mh_execute_header, a1, v36, "State dump: NetworkPairingService control channel connection: %{public}s", v37, 0xCu);
      sub_10000CADC(v46);
      sub_10000D8D4();
      sub_10000D8D4();

      v24 = v32;
      v25 = v45;
    }

    else
    {

      v24 = v32;
      v25 = v34;
    }
  }

  v30 = v24;
  v31 = v25;
  v32 = v24;
  if (v25)
  {
LABEL_19:
    v33 = __clz(__rbit64(v31));
    v34 = (v31 - 1) & v31;
    v35 = *(v17 + 48);
    sub_10000D3B0(v33);
    if (!v1)
    {
      return sub_1000134CC();
    }

    goto LABEL_23;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      return sub_1000134CC();
    }

    v31 = *(v22 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A924()
{
  v1 = *(v0 + 16);

  v2 = sub_10005AFFC();
  sub_10005AC9C(v2, v3, v4, v5);

  sub_10000CADC((v0 + 64));
  v6 = *(v0 + 104);

  return v0;
}

uint64_t sub_10005A964()
{
  sub_10005A924();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_10005A9BC(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_10005A9D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10005A9EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005AA2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005AA74(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_10005AB0C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v2;
  }

  sub_100013414(&qword_10009BB30, &qword_1000789C8);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_9;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v5 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v7 = *i;

    result = sub_10004FEF0(v5, v6);
    if (v10)
    {
      break;
    }

    *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v2[6] + 16 * result);
    *v11 = v5;
    v11[1] = v6;
    v12 = (v2[7] + 16 * result);
    *v12 = v8;
    v12[1] = v7;
    v13 = v2[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_12;
    }

    v2[2] = v15;
    if (!--v3)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10005AC3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_10005AC8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10005A2B4();
}

uint64_t sub_10005AC94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10005A37C();
}

uint64_t sub_10005AC9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_10005ACEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10005996C();
}

void sub_10005ACF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_100058CB0();
}

uint64_t sub_10005AD04(uint64_t result, int a2, char a3)
{
  v4 = v3;
  v7 = result;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    v11 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    if (a3)
    {
      type metadata accessor for ControlChannelConnection();
      if (__CocoaSet.Index.age.getter() == *(v13 + 36))
      {
        __CocoaSet.Index.element.getter();
        swift_dynamicCast();
        v14 = *(v13 + 40);
        sub_10000D1B8(&unk_10009BE10, &type metadata accessor for ControlChannelConnection);
        v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v16 = ~(-1 << *(v13 + 32));
        while (1)
        {
          v7 = v15 & v16;
          if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            goto LABEL_25;
          }

          v17 = *(*(v13 + 48) + 8 * v7);
          sub_10000D1B8(&qword_10009B9E0, &type metadata accessor for ControlChannelConnection);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            goto LABEL_17;
          }

          v15 = v7 + 1;
        }
      }

      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0 && 1 << *(v13 + 32) > v7)
    {
      if ((*(v13 + 8 * (v7 >> 6) + 56) >> v7))
      {
        if (*(v13 + 36) != a2)
        {
          __break(1u);
LABEL_17:
        }

        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000669E4();
        }

        v10 = *(*(v13 + 48) + 8 * v7);
        sub_1000681B4();
        *v4 = v13;
        return v10;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (a3)
  {
    if (*v4 < 0)
    {
      v8 = *v4;
    }

    __CocoaSet.member(for:)();
    type metadata accessor for ControlChannelConnection();

    swift_dynamicCast();
    sub_100067A0C();
    v10 = v9;

    return v10;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10005AFFC()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return result;
}

uint64_t sub_10005B00C()
{

  return swift_dynamicCast();
}

void sub_10005B02C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10005B0A4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      v16 = v14;

      v15 = a1(&v16);
      if (v3)
      {

        return v14;
      }

      if (v15)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return 0;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005B1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100013414(&qword_10009A4B0, &qword_100077B90);
  sub_10000CC04(v4);
  v6 = *(v5 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  result = sub_100024DCC(a1);
  if (v12)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v11)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return sub_1000223E8(a2, 1, 1, v4);
  }

  else
  {
    v13 = sub_100061420(v9, result, v11, 0, a1);
    v15 = v14;
    v16 = type metadata accessor for UUID();
    sub_10000CC04(v16);
    (*(v17 + 32))(a2, v9);
    v18 = (a2 + *(v4 + 48));
    *v18 = v13;
    v18[1] = v15;
    return sub_1000223E8(a2, 0, 1, v4);
  }
}

uint64_t sub_10005B350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100013414(&qword_10009BC68, &qword_100078A50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  result = sub_100024DCC(a1);
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return sub_1000223E8(a2, 1, 1, v4);
  }

  else
  {
    v11 = sub_1000614F4(v7, result, v9, 0, a1);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 32))(a2, v7, v12);
    *(a2 + *(v4 + 48)) = v11;
    return sub_1000223E8(a2, 0, 1, v4);
  }
}

BOOL sub_10005B4B8(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_10005B4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v36 = a4;
  v37 = a1;
  v6 = (sub_100013414(&qword_100099488, &unk_100077650) - 8);
  v7 = *(*v6 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v8);
  sub_100061F84();
  v9 = type metadata accessor for XPCDictionary();
  v10 = sub_10000CBBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000EDF0();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  sub_100061E48(a2, v4, &qword_100099488, &unk_100077650);
  v21 = *v4;
  (*(v12 + 32))(v20, &v4[v6[14]], v9);
  static os_log_type_t.default.getter();
  v22 = qword_10009CED0;
  os_log(_:dso:log:_:_:)();
  XPCDictionary.auditToken.getter();
  XPCDictionary.entitlements.getter();
  v23 = v39;
  sub_1000602A8(v37);
  v24 = (v12 + 8);
  if (v23)
  {
    v39 = v21;
    v25 = *v24;
    (*v24)(v17, v9);
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v26))
    {
      v27 = swift_slowAlloc();
      v37 = v27;
      sub_10000CCCC();
      v38 = swift_slowAlloc();
      v41 = v38;
      *v27 = 136315138;
      v40 = v23;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v28 = String.init<A>(describing:)();
      v30 = sub_10000C600(v28, v29, &v41);

      v31 = v37;
      *(v37 + 1) = v30;
      _os_log_impl(&_mh_execute_header, v22, v26, "Pairing deletion failed with error: %s", v31, 0xCu);
      sub_10000CADC(v38);
      sub_100015FBC();

      sub_100015FBC();
    }

    swift_willThrow();

    v32 = sub_10000D288();
    return (v25)(v32);
  }

  else
  {

    v34 = *v24;
    (*v24)(v17, v9);
    v35 = sub_10000D288();
    return v34(v35);
  }
}

void sub_10005B81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000D060();
  v24 = v23;
  v152 = v25;
  v147 = v26;
  v145 = v27;
  v139 = v28;
  v140 = v29;
  v138 = v30;
  v137 = v31;
  v134 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000CC04(v134);
  v33 = *(v32 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v34);
  sub_100061F84();
  v35 = type metadata accessor for RemotePairingError();
  v36 = sub_10000CC04(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_10000CBDC();
  v142 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  sub_10000CC04(v142);
  v40 = *(v39 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v41);
  v43 = (&v130 - v42);
  v148 = type metadata accessor for UUID();
  v44 = sub_10000CBBC(v148);
  v151 = v45;
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v44);
  v136 = &v130 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  sub_100061F58();
  v135 = v49;
  __chkstk_darwin(v50);
  sub_100061F58();
  v144 = v51;
  v53 = __chkstk_darwin(v52);
  v55 = &v130 - v54;
  __chkstk_darwin(v53);
  sub_100061F58();
  v150 = v56;
  v57 = swift_allocObject();
  *(v57 + 2) = v24;
  *(v57 + 3) = a21;
  v143 = a21;
  v149 = v57;
  *(v57 + 4) = a22;
  v58 = v24;
  v146 = a22;

  if (remotePairingIsEnabled())
  {
    is_darwinos = os_variant_is_darwinos();
    v60 = v152;
    if (is_darwinos & 1) != 0 || (v76 = *sub_10001355C(v152 + 5, v152[8]), (sub_100057418()) && (v76 = *sub_10001355C(v60 + 5, v60[8]), (sub_10005625C(0x18)))
    {
      v61 = v147;
      v141 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v141)
      {
        v62 = v150;
        UUID.init()();
        v63 = static os_log_type_t.default.getter();
        v64 = qword_10009CED0;
        v65 = *(v151 + 16);
        v143 = v151 + 16;
        v132 = v65;
        v65(v55, v62, v148);
        LODWORD(v131) = v63;
        if (os_log_type_enabled(v64, v63))
        {
          v130 = v64;
          v66 = swift_slowAlloc();
          v153[0] = swift_slowAlloc();
          *v66 = 136446978;
          v67 = UUID.uuidString.getter();
          v69 = v68;
          v70 = sub_100061F70();
          v71(v70);
          v72 = sub_10000C600(v67, v69, v153);

          *(v66 + 4) = v72;
          *(v66 + 12) = 2080;
          v73 = [v141 identifier];
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

          sub_1000223E8(v22, v75, 1, v148);
          v84 = String.init<A>(describing:)();
          v86 = sub_10000C600(v84, v85, v153);

          *(v66 + 14) = v86;
          *(v66 + 22) = 2080;
          v87 = sub_10003DDB0(v141);
          if (v88)
          {
            v89 = v88;
          }

          else
          {
            v87 = 0x6E776F6E6B6E553CLL;
            v89 = 0xE90000000000003ELL;
          }

          v90 = sub_10000C600(v87, v89, v153);

          *(v66 + 24) = v90;
          *(v66 + 32) = 2080;
          type metadata accessor for PeerConnectionInfo();

          v91 = Array.description.getter();
          v93 = v92;

          v94 = sub_10000C600(v91, v93, v153);

          *(v66 + 34) = v94;
          _os_log_impl(&_mh_execute_header, v130, v131, "Creating tunnel %{public}s for host %s (%s) with peer info: %s", v66, 0x2Au);
          swift_arrayDestroy();
          sub_100015FBC();

          sub_100015FBC();

          v60 = v152;
        }

        else
        {
          v82 = sub_100061F70();
          v83(v82);
        }

        v95 = static os_log_type_t.default.getter();
        v96 = powerLog.getter();
        v97 = os_log_type_enabled(v96, v95);
        v133 = v58;
        if (v97)
        {
          v98 = swift_slowAlloc();
          sub_10000CCCC();
          v99 = swift_slowAlloc();
          v153[0] = v99;
          *v98 = 136315138;
          type metadata accessor for PeerConnectionInfo();

          v100 = Array.description.getter();
          v102 = v101;

          v103 = sub_10000C600(v100, v102, v153);

          *(v98 + 4) = v103;
          _os_log_impl(&_mh_execute_header, v96, v95, "Will create a tunnel with peer info: %s", v98, 0xCu);
          sub_10000CADC(v99);
          v60 = v152;
          sub_100015FBC();

          sub_100015FBC();
        }

        v104 = v150;
        v105 = v148;
        v106 = v132;
        v132(v144, v150, v148);
        v134 = v60[4];
        v107 = swift_allocObject();
        swift_weakInit();
        v108 = v135;
        v109 = v104;
        v110 = v105;
        v106(v135, v109, v105);
        v111 = v151;
        v112 = (*(v151 + 80) + 24) & ~*(v151 + 80);
        v131 = v112 + v47;
        v113 = swift_allocObject();
        *(v113 + 16) = v107;
        v114 = v111 + 32;
        v115 = *(v111 + 32);
        v151 = v114;
        v115(v113 + v112, v108, v110);
        v116 = (v113 + ((v112 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
        v117 = v149;
        *v116 = sub_100061D98;
        v116[1] = v117;
        v118 = swift_allocObject();
        swift_weakInit();
        v119 = v136;
        v106(v136, v150, v110);
        v120 = swift_allocObject();
        *(v120 + 16) = v118;
        v115(v120 + v112, v119, v110);
        v121 = type metadata accessor for Tunnel();
        v122 = *(v121 + 48);
        v123 = *(v121 + 52);
        swift_allocObject();
        v124 = v141;
        v125 = v134;

        sub_10006B578();
        v126 = v152;
        sub_100061F98();

        v127 = v126[3];
        swift_isUniquelyReferenced_nonNull_native();
        v154 = v126[3];
        v128 = v150;
        sub_10006931C();
        v126[3] = v154;
        swift_endAccess();
        OS_dispatch_queue.assertOnQueueHierarchy()();
        v129 = *(v126 + 80);
        ControlChannelConnection.transport.getter();
        sub_10001355C(v153, v153[3]);
        dispatch thunk of ControlChannelTransport.physicallyConnected.getter();
        sub_10006BFF4();

        v142(v128, v148);
        sub_10000CADC(v153);

        goto LABEL_22;
      }

      static RemotePairingError.tunnelError.getter();
      v77 = v58;
      sub_10000EEB4();
      sub_100061C00(v80, v61);
      sub_10000D5AC();
      sub_100061F64();
      sub_10000D294();
      sub_100061C00(v81, v61);
    }

    else
    {
      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      static RemotePairingError.unlockRequired.getter();
      v77 = v58;
      sub_10000EEB4();
      sub_100061C00(v78, v76);
      sub_10000D5AC();
      sub_100061F64();
      sub_10000D294();
      sub_100061C00(v79, v76);
    }

    Error<>.init(_:_:)();
    *v43 = v47;
    swift_storeEnumTagMultiPayload();
    sub_10003AC04();
    sub_100022560(v43, &qword_10009A908, &qword_100078DC0);

LABEL_22:

    sub_1000135A0();
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005C3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v15[-v9];
  sub_100061E48(a1, &v15[-v9], &qword_10009A908, &qword_100078DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100022560(v10, &qword_10009A908, &qword_100078DC0);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      swift_beginAccess();
      sub_100068404(a3);
      swift_endAccess();

      v13 = *(v12 + 32);
      OS_dispatch_queue.assertOnQueueHierarchy()();
    }
  }

  else
  {
    sub_100022560(v10, &qword_10009A908, &qword_100078DC0);
  }

  return a4(a1);
}

void sub_10005C570()
{
  v1 = v0;
  v10 = sub_10002F6B0();
  v11 = v2;
  v16 = 0xD000000000000028;
  v17 = 0x8000000100081580;
  sub_10002F90C();
  v3 = StringProtocol.contains<A>(_:)();

  if (v3)
  {
    IsEnabled = remotePairingIsEnabled();
  }

  else
  {
    IsEnabled = 0;
  }

  static RemoteServiceNames.deviceComputeService.getter();
  v5 = *(v1 + 32);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = IsEnabled;
  v14 = sub_1000615C4;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100062D54;
  v13 = &unk_100091498;
  v8 = _Block_copy(&v10);

  String.utf8CString.getter();

  remote_service_listen_with_device();

  _Block_release(v8);
  if (sub_10006ACDC())
  {
    static RemoteServiceNames.deviceComputeService.getter();
    v14 = sub_1000615D0;
    v15 = v1;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_10005B02C;
    v13 = &unk_1000914C0;
    v9 = _Block_copy(&v10);

    String.utf8CString.getter();

    lockdown_checkin_xpc();

    _Block_release(v9);
  }
}

uint64_t sub_10005C7D8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  sub_100013414(&qword_10009BCB8, &unk_100078AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077390;
  *(inited + 32) = static remote_device_type_t.ncmHost.getter();
  *(inited + 36) = static remote_device_type_t.ncmDevice.getter();
  type = remote_device_get_type();
  v8 = sub_10005B4B8(type, inited);
  swift_setDeallocating();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a4 & v8)
    {
      sub_10005CAB4(result, a2);
    }

    else
    {
      v10 = static os_log_type_t.error.getter();
      v11 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v10))
      {
        v12 = swift_slowAlloc();
        *v12 = 67109376;
        *(v12 + 4) = a4 & 1;
        *(v12 + 8) = 1024;
        *(v12 + 10) = v8;
        _os_log_impl(&_mh_execute_header, v11, v10, "RSD tunnel listener not accepting connection, enabled: %{BOOL}d, NCM: %{BOOL}d", v12, 0xEu);
      }

      close(a2);
    }
  }

  return result;
}

uint64_t (*sub_10005C950(uint64_t *a1, void *a2, uint64_t a3, int a4))()
{
  v7 = type metadata accessor for SocketTunnelConnection();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = a2;
  v11 = SocketTunnelConnection.init(socket:queue:logPrefix:takeOwnershipOfSocket:)();
  *(swift_allocObject() + 16) = a4;
  *a1 = v11;
  return sub_100061EE0;
}

uint64_t sub_10005C9FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return sub_10005CC24(a3, result);
  }

  return result;
}

uint64_t (*sub_10005CA10(uint64_t *a1, void *a2, char a3, uint64_t a4))()
{
  v8 = type metadata accessor for LockdownTunnelConnection();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_1000160A0(a4, a2, a3);
  *(swift_allocObject() + 16) = a4;
  *a1 = v11;
  return sub_100061ED4;
}

uint64_t sub_10005CAB4(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 32);
  v6 = type metadata accessor for SocketTunnelConnection();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = v5;
  v10 = SocketTunnelConnection.init(socket:queue:logPrefix:takeOwnershipOfSocket:)();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = sub_100061CA8;
  v12[4] = v11;
  v12[5] = a1;
  v12[6] = sub_100061CA0;
  v12[7] = v4;

  dispatch thunk of TunnelConnection.receiveControlMessage(completion:)();
}

uint64_t sub_10005CC24(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 32);
  v6 = type metadata accessor for LockdownTunnelConnection();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1000160A0(a2, v5, 0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = sub_100013504;
  v11[4] = v10;
  v11[5] = a1;
  v11[6] = sub_1000615D8;
  v11[7] = v4;
  sub_100061C00(&qword_10009BC80, type metadata accessor for LockdownTunnelConnection);

  StreamBasedTunnelConnection.receiveControlMessage(completion:)();
}

uint64_t sub_10005CDBC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v165 = a7;
  v166 = a6;
  v168 = a5;
  v173 = a4;
  v174 = a3;
  v175 = a1;
  v8 = sub_100013414(&qword_10009B730, &unk_100078A80);
  v170 = *(v8 - 8);
  v171 = v8;
  v9 = *(v170 + 64);
  __chkstk_darwin(v8);
  v169 = &v149 - v10;
  v163 = type metadata accessor for UUID();
  v162 = *(v163 - 8);
  v11 = *(v162 + 64);
  v12 = __chkstk_darwin(v163);
  v160 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v161 = &v149 - v15;
  v159 = v16;
  __chkstk_darwin(v14);
  v167 = (&v149 - v17);
  v158 = type metadata accessor for OS_dispatch_queue.Attributes();
  v18 = *(*(v158 - 1) + 64);
  __chkstk_darwin(v158);
  v157 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v154 = *(v155 - 8);
  v20 = *(v154 + 64);
  __chkstk_darwin(v155);
  v156 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v152 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  v24 = *(*(v152 - 8) + 64);
  v25 = __chkstk_darwin(v152);
  v151 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v153 = &v149 - v28;
  __chkstk_darwin(v27);
  v164 = &v149 - v29;
  v30 = sub_100013414(&qword_10009BC90, &unk_100078A70);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = (&v149 - v32);
  v34 = type metadata accessor for TunnelMessage();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v39 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v149 - v40;
  v172 = a2;
  v179[1] = a2;
  sub_100061E48(v175, v33, &qword_10009BC90, &unk_100078A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = *v33;
    v178[0] = *v33;
    sub_100013414(&unk_10009A930, &unk_100077080);
    swift_willThrowTypedImpl();
    v43 = static os_log_type_t.error.getter();
    v44 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v43))
    {
      v45 = v172;

      v46 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v178[0] = v175;
      *v46 = 136446466;
      v179[0] = v45;
      type metadata accessor for SocketTunnelConnection();
      v47 = v169;
      dispatch thunk of TunnelConnection.identifier.getter();
      v48 = v171;
      v49 = Identifier.description.getter();
      v51 = v50;

      (*(v170 + 8))(v47, v48);
      v52 = sub_10000C600(v49, v51, v178);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      v179[0] = v42;
      swift_errorRetain();
      v53 = String.init<A>(describing:)();
      v55 = sub_10000C600(v53, v54, v178);

      *(v46 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v44, v43, "Received error reading initial message from device compute tunnel connection %{public}s: %s", v46, 0x16u);
      swift_arrayDestroy();
    }

    type metadata accessor for SocketTunnelConnection();
    v56 = dispatch thunk of TunnelConnection.cancel()();
    (v174)(v56);
  }

  else
  {
    (*(v35 + 32))(v41, v33, v34);
    v150 = *(v35 + 16);
    v150(v39, v41, v34);
    v58 = (*(v35 + 88))(v39, v34);
    v59 = v39;
    v175 = v41;
    if (v58 == enum case for TunnelMessage.additionalConnectionHello(_:))
    {
      (*(v35 + 96))(v39, v34);
      v60 = sub_100013414(&qword_10009BCA0, &unk_100078A98);
      v61 = v164;
      sub_100061B64(&v39[*(v60 + 48)], v164, &qword_10009BC88, &qword_100078A68);
      v62 = v168;
      v63 = swift_beginAccess();
      v64 = *(v62 + 24);
      __chkstk_darwin(v63);
      *(&v149 - 2) = v61;

      v65 = sub_10005B0A4(sub_100061EAC, (&v149 - 4), v64);

      if (v65)
      {
        v174 = v35;
        v66 = *(v65 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
        (v166)(v179, v66, 1);

        v67 = static os_log_type_t.default.getter();
        v68 = qword_10009CED0;
        v69 = v179[0];
        if (os_log_type_enabled(qword_10009CED0, v67))
        {

          v70 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v177 = v167;
          *v70 = 136315394;
          v176 = v69;
          type metadata accessor for SocketTunnelConnection();
          v153 = v34;
          v166 = v68;
          v168 = v69;
          v71 = v169;
          dispatch thunk of TunnelConnection.identifier.getter();
          LODWORD(v165) = v67;
          v72 = v171;
          v73 = Identifier.description.getter();
          v75 = v74;
          v173 = v59;
          v76 = *(v170 + 8);
          v76(v71, v72);
          v77 = sub_10000C600(v73, v75, &v177);

          *(v70 + 4) = v77;
          *(v70 + 12) = 2080;
          v176 = v172;
          dispatch thunk of TunnelConnection.identifier.getter();
          v78 = Identifier.description.getter();
          v80 = v79;

          v76(v71, v72);
          v59 = v173;
          v81 = sub_10000C600(v78, v80, &v177);
          v34 = v153;

          *(v70 + 14) = v81;
          _os_log_impl(&_mh_execute_header, v166, v165, "Created new tunnel connection %s for active tunnel from initial connection %s", v70, 0x16u);
          swift_arrayDestroy();

          v61 = v164;
        }

        type metadata accessor for SocketTunnelConnection();
        dispatch thunk of TunnelConnection.cancel()();
        sub_100013414(&qword_10009BC98, &qword_100078A90);
        v82 = v174;
        v83 = *(v174 + 72);
        v84 = (*(v174 + 80) + 32) & ~*(v174 + 80);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_100077360;
        v86 = v85 + v84;
        v87 = v175;
        v150(v86, v175, v34);
        sub_1000615E8();

        (*(v82 + 8))(v87, v34);
      }

      else
      {
        v129 = static os_log_type_t.error.getter();
        v130 = qword_10009CED0;
        v131 = v153;
        sub_100061E48(v61, v153, &qword_10009BC88, &qword_100078A68);
        if (os_log_type_enabled(v130, v129))
        {
          v132 = v172;

          v133 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v179[0] = v168;
          *v133 = 136315394;
          LODWORD(v166) = v129;
          v167 = v130;
          sub_100061E48(v131, v151, &qword_10009BC88, &qword_100078A68);
          v134 = v35;
          v135 = String.init<A>(describing:)();
          v136 = v34;
          v138 = v137;
          sub_100022560(v131, &qword_10009BC88, &qword_100078A68);
          v139 = v135;
          v35 = v134;
          v140 = sub_10000C600(v139, v138, v179);
          v34 = v136;

          *(v133 + 4) = v140;
          *(v133 + 12) = 2080;
          v177 = v132;
          type metadata accessor for SocketTunnelConnection();
          v141 = v169;
          dispatch thunk of TunnelConnection.identifier.getter();
          v142 = v171;
          v143 = Identifier.description.getter();
          v145 = v144;

          (*(v170 + 8))(v141, v142);
          v146 = sub_10000C600(v143, v145, v179);

          *(v133 + 14) = v146;
          _os_log_impl(&_mh_execute_header, v167, v166, "Received additional connection hello for tunnel with address %s from connection %s but could not find an active tunnel with that address. Discarding connection", v133, 0x16u);
          swift_arrayDestroy();

          v61 = v164;
        }

        else
        {
          sub_100022560(v131, &qword_10009BC88, &qword_100078A68);
        }

        type metadata accessor for SocketTunnelConnection();
        v147 = dispatch thunk of TunnelConnection.cancel()();
        (v174)(v147);
        (*(v35 + 8))(v175, v34);
      }

      sub_100022560(v61, &qword_10009BC88, &qword_100078A68);
      v148 = type metadata accessor for TunnelConnectionPriority();
      return (*(*(v148 - 8) + 8))(v59, v148);
    }

    else
    {
      v164 = v35 + 16;
      v174 = v35;
      v153 = v34;
      v173 = v39;
      sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
      static DispatchQoS.userInteractive.getter();
      (*(v154 + 104))(v156, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v155);
      v178[0] = _swiftEmptyArrayStorage;
      sub_100061C00(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_100013414(&qword_10009A960, &unk_100077B40);
      sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v88 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      UUID.init()();
      v158 = v88;
      (v166)(v179, v88, 1);

      v89 = static os_log_type_t.default.getter();
      v90 = qword_10009CED0;
      v166 = v179[0];
      if (os_log_type_enabled(qword_10009CED0, v89))
      {
        v91 = v172;

        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v165 = v93;
        *v92 = 136315394;
        v177 = v166;
        v178[0] = v93;
        type metadata accessor for SocketTunnelConnection();
        v94 = v169;
        dispatch thunk of TunnelConnection.identifier.getter();
        v95 = v171;
        v96 = Identifier.description.getter();
        v98 = v97;
        LODWORD(v157) = v89;
        v99 = *(v170 + 8);
        v99(v94, v95);
        v100 = sub_10000C600(v96, v98, v178);

        *(v92 + 4) = v100;
        *(v92 + 12) = 2080;
        v177 = v91;
        dispatch thunk of TunnelConnection.identifier.getter();
        v101 = Identifier.description.getter();
        v103 = v102;

        v99(v94, v95);
        v104 = sub_10000C600(v101, v103, v178);

        *(v92 + 14) = v104;
        _os_log_impl(&_mh_execute_header, v90, v157, "Created new tunnel connection %s for active tunnel from initial connection %s", v92, 0x16u);
        swift_arrayDestroy();
      }

      type metadata accessor for SocketTunnelConnection();
      dispatch thunk of TunnelConnection.cancel()();
      v105 = v162;
      v106 = *(v162 + 16);
      v107 = v167;
      v108 = v163;
      v106(v161, v167, v163);
      v109 = v168;
      v110 = *(v168 + 32);
      v111 = swift_allocObject();
      swift_weakInit();
      v112 = v160;
      v106(v160, v107, v108);
      v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
      v114 = swift_allocObject();
      *(v114 + 16) = v111;
      (*(v105 + 32))(v114 + v113, v112, v108);
      v115 = type metadata accessor for Tunnel();
      v116 = *(v115 + 48);
      v117 = *(v115 + 52);
      swift_allocObject();
      v118 = v158;
      v119 = v110;
      sub_10006B578();
      swift_beginAccess();

      v120 = *(v109 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v177 = *(v109 + 24);
      sub_10006931C();
      *(v109 + 24) = v177;
      swift_endAccess();
      OS_dispatch_queue.assertOnQueueHierarchy()();
      sub_100013414(&qword_10009BC98, &qword_100078A90);
      v121 = v174;
      v122 = *(v174 + 72);
      v123 = (*(v174 + 80) + 32) & ~*(v174 + 80);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_100077360;
      v125 = v124 + v123;
      v126 = v175;
      v127 = v153;
      v150(v125, v175, v153);
      sub_1000615E8();

      (*(v105 + 8))(v107, v108);
      v128 = *(v121 + 8);
      v128(v126, v127);

      return (v128)(v173, v127);
    }
  }
}

uint64_t sub_10005E148(void (*a1)(char *, char *, uint64_t), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, id, uint64_t), uint64_t a7)
{
  v135 = a7;
  v136 = a6;
  v139 = a5;
  v140 = a4;
  v141 = a3;
  v142 = a1;
  v143 = a2;
  v7 = type metadata accessor for UUID();
  v133 = *(v7 - 8);
  v134 = v7;
  v8 = *(v133 + 64);
  v9 = __chkstk_darwin(v7);
  v131 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v132 = &v123 - v11;
  __chkstk_darwin(v10);
  v138 = &v123 - v12;
  v130 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v130 - 1) + 64);
  __chkstk_darwin(v130);
  v129 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v126 = *(v127 - 8);
  v15 = *(v126 + 64);
  __chkstk_darwin(v127);
  v128 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v124 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  v19 = *(*(v124 - 8) + 64);
  v20 = __chkstk_darwin(v124);
  v123 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v125 = &v123 - v23;
  __chkstk_darwin(v22);
  v137 = &v123 - v24;
  v25 = sub_100013414(&qword_10009BC90, &unk_100078A70);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v123 - v27);
  v29 = type metadata accessor for TunnelMessage();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v34 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v123 - v35;
  sub_100061E48(v142, v28, &qword_10009BC90, &unk_100078A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v28;
    v145[0] = *v28;
    sub_100013414(&unk_10009A930, &unk_100077080);
    swift_willThrowTypedImpl();
    v38 = static os_log_type_t.error.getter();
    v39 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v38))
    {
      v40 = swift_slowAlloc();
      v145[0] = swift_slowAlloc();
      *v40 = 136446466;
      sub_100013414(&qword_10009B730, &unk_100078A80);
      v41 = Identifier.description.getter();
      v43 = sub_10000C600(v41, v42, v145);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v146[0] = v37;
      swift_errorRetain();
      v44 = String.init<A>(describing:)();
      v46 = sub_10000C600(v44, v45, v145);

      *(v40 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v39, v38, "Received error reading initial message from device compute tunnel connection %{public}s: %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    sub_100019290();
    v141();
  }

  else
  {
    (*(v30 + 32))(v36, v28, v29);
    v142 = *(v30 + 16);
    v142(v34, v36, v29);
    v48 = v29;
    if ((*(v30 + 88))(v34, v29) == enum case for TunnelMessage.additionalConnectionHello(_:))
    {
      (*(v30 + 96))(v34, v29);
      v49 = sub_100013414(&qword_10009BCA0, &unk_100078A98);
      v50 = v137;
      sub_100061B64(&v34[*(v49 + 48)], v137, &qword_10009BC88, &qword_100078A68);
      v51 = v139;
      v52 = swift_beginAccess();
      v53 = *(v51 + 24);
      __chkstk_darwin(v52);
      *(&v123 - 2) = v50;

      v54 = sub_10005B0A4(sub_100061BB4, (&v123 - 4), v53);

      if (v54)
      {
        v140 = v30 + 16;
        v141 = v36;
        v55 = *(v54 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
        v136(v146, v55, 1);

        v56 = static os_log_type_t.default.getter();
        v57 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v56))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v125 = v48;
          v144 = v59;
          *v58 = 136315394;
          sub_100013414(&qword_10009B730, &unk_100078A80);
          v124 = v30;
          v60 = Identifier.description.getter();
          v62 = sub_10000C600(v60, v61, &v144);

          *(v58 + 4) = v62;
          *(v58 + 12) = 2080;
          v63 = Identifier.description.getter();
          v65 = sub_10000C600(v63, v64, &v144);

          *(v58 + 14) = v65;
          v30 = v124;
          _os_log_impl(&_mh_execute_header, v57, v56, "Created new tunnel connection %s for active tunnel from initial connection %s", v58, 0x16u);
          swift_arrayDestroy();
          v48 = v125;
        }

        sub_100019290();
        sub_100013414(&qword_10009BC98, &qword_100078A90);
        v66 = *(v30 + 72);
        v67 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_100077360;
        v69 = v68 + v67;
        v70 = v141;
        v142(v69, v141, v48);
        sub_10006187C();

        (*(v30 + 8))(v70, v48);

        v71 = v137;
      }

      else
      {
        v106 = static os_log_type_t.error.getter();
        v107 = qword_10009CED0;
        v108 = v125;
        sub_100061E48(v50, v125, &qword_10009BC88, &qword_100078A68);
        if (os_log_type_enabled(v107, v106))
        {
          v109 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v146[0] = v142;
          *v109 = 136315394;
          LODWORD(v139) = v106;
          sub_100061E48(v108, v123, &qword_10009BC88, &qword_100078A68);
          v110 = v48;
          v111 = String.init<A>(describing:)();
          v112 = v108;
          v113 = v36;
          v114 = v30;
          v116 = v115;
          sub_100022560(v112, &qword_10009BC88, &qword_100078A68);
          v117 = v111;
          v48 = v110;
          v50 = v137;
          v118 = sub_10000C600(v117, v116, v146);
          v30 = v114;
          v36 = v113;

          *(v109 + 4) = v118;
          *(v109 + 12) = 2080;
          sub_100013414(&qword_10009B730, &unk_100078A80);
          v119 = Identifier.description.getter();
          v121 = sub_10000C600(v119, v120, v146);

          *(v109 + 14) = v121;
          _os_log_impl(&_mh_execute_header, v107, v139, "Received additional connection hello for tunnel with address %s from connection %s but could not find an active tunnel with that address. Discarding connection", v109, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100022560(v108, &qword_10009BC88, &qword_100078A68);
        }

        sub_100019290();
        v141();
        (*(v30 + 8))(v36, v48);
        v71 = v50;
      }

      sub_100022560(v71, &qword_10009BC88, &qword_100078A68);
      v122 = type metadata accessor for TunnelConnectionPriority();
      return (*(*(v122 - 8) + 8))(v34, v122);
    }

    else
    {
      v140 = v30 + 16;
      v141 = v36;
      v124 = v30;
      v125 = v29;
      v137 = v34;
      sub_1000118F0(0, &qword_10009A990, OS_dispatch_queue_ptr);
      static DispatchQoS.userInteractive.getter();
      (*(v126 + 104))(v128, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v127);
      v145[0] = _swiftEmptyArrayStorage;
      sub_100061C00(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_100013414(&qword_10009A960, &unk_100077B40);
      sub_100028120(&qword_100099DB8, &qword_10009A960, &unk_100077B40);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v72 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      UUID.init()();
      v130 = v72;
      v136(v146, v72, 1);

      v73 = static os_log_type_t.default.getter();
      v74 = qword_10009CED0;
      v75 = v146[0];
      if (os_log_type_enabled(qword_10009CED0, v73))
      {
        v76 = swift_slowAlloc();
        v145[0] = swift_slowAlloc();
        *v76 = 136315394;
        sub_100013414(&qword_10009B730, &unk_100078A80);
        v77 = Identifier.description.getter();
        v79 = sub_10000C600(v77, v78, v145);

        *(v76 + 4) = v79;
        *(v76 + 12) = 2080;
        v80 = Identifier.description.getter();
        v82 = sub_10000C600(v80, v81, v145);

        *(v76 + 14) = v82;
        _os_log_impl(&_mh_execute_header, v74, v73, "Created new tunnel connection %s for active tunnel from initial connection %s", v76, 0x16u);
        swift_arrayDestroy();
      }

      sub_100019290();
      v84 = v133;
      v83 = v134;
      v85 = *(v133 + 16);
      v143 = v75;
      v86 = v138;
      v85(v132, v138, v134);
      v87 = v139;
      v136 = *(v139 + 32);
      v88 = swift_allocObject();
      swift_weakInit();
      v89 = v131;
      v85(v131, v86, v83);
      v90 = (*(v84 + 80) + 24) & ~*(v84 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = v88;
      (*(v84 + 32))(v91 + v90, v89, v83);
      v92 = type metadata accessor for Tunnel();
      v93 = *(v92 + 48);
      v94 = *(v92 + 52);
      swift_allocObject();
      v95 = v130;
      v96 = v136;
      sub_10006B578();
      swift_beginAccess();

      v97 = *(v87 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      v144 = *(v87 + 24);
      sub_10006931C();
      *(v87 + 24) = v144;
      swift_endAccess();
      OS_dispatch_queue.assertOnQueueHierarchy()();
      sub_100013414(&qword_10009BC98, &qword_100078A90);
      v98 = v124;
      v99 = *(v124 + 72);
      v100 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_100077360;
      v102 = v101 + v100;
      v103 = v141;
      v104 = v125;
      v142(v102, v141, v125);
      sub_10006187C();

      (*(v84 + 8))(v86, v83);
      v105 = *(v98 + 8);
      v105(v103, v104);

      return (v105)(v137, v104);
    }
  }
}

uint64_t sub_10005F228(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for IPv6Address();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100013414(&qword_10009BCA8, &qword_100078AA8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = *(*a1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = *(v7 + 56);
  sub_100061E48(v17, v10, &qword_10009BC88, &qword_100078A68);
  sub_100061E48(v27, &v10[v19], &qword_10009BC88, &qword_100078A68);
  if (sub_100022484(v10, 1, v3) != 1)
  {
    sub_100061E48(v10, v15, &qword_10009BC88, &qword_100078A68);
    if (sub_100022484(&v10[v19], 1, v3) != 1)
    {
      v22 = v25;
      v21 = v26;
      (*(v26 + 32))(v25, &v10[v19], v3);
      sub_100061C00(&qword_10009BCB0, &type metadata accessor for IPv6Address);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v21 + 8);
      v23(v22, v3);
      sub_100022560(v17, &qword_10009BC88, &qword_100078A68);
      v23(v15, v3);
      sub_100022560(v10, &qword_10009BC88, &qword_100078A68);
      return v20 & 1;
    }

    sub_100022560(v17, &qword_10009BC88, &qword_100078A68);
    (*(v26 + 8))(v15, v3);
    goto LABEL_6;
  }

  sub_100022560(v17, &qword_10009BC88, &qword_100078A68);
  if (sub_100022484(&v10[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_100022560(v10, &qword_10009BCA8, &qword_100078AA8);
    v20 = 0;
    return v20 & 1;
  }

  sub_100022560(v10, &qword_10009BC88, &qword_100078A68);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_10005F5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000EB00();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100061F98();
    sub_100068404(a3);
    swift_endAccess();

    v6 = *(v5 + 32);
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }

  return result;
}

uint64_t sub_10005F680()
{
  v1 = v0;
  static os_log_type_t.default.getter();
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_10000EB00();
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 64);
  v5 = *(v3 + 32);
  sub_10004C218();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  while (v8)
  {
LABEL_7:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    if (*(*(*(v3 + 56) + ((v12 << 9) | (8 * v14))) + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator))
    {

      sub_10006C704();
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v8 = *(v3 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_10005F7D4()
{
  sub_10000D060();
  v1 = v0;
  v2 = sub_100013414(&qword_10009BC60, &qword_100078A48);
  sub_10000D368(v2);
  v4 = *(v3 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v5);
  v7 = &v26[-v6];
  v8 = sub_100013414(&qword_10009BC68, &qword_100078A50);
  sub_10000CC04(v8);
  v10 = *(v9 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v11);
  v13 = &v26[-v12];
  static os_log_type_t.default.getter();
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v15 = *(v1 + 32);
  while (1)
  {
    sub_100061F98();
    v16 = *(v1 + 24);
    if (*(v16 + 16))
    {
      v17 = 0;
      v18 = (v16 + 64);
      v19 = ((1 << *(v16 + 32)) + 63) >> 6;
      if (v19)
      {
        while (!*v18)
        {
          v17 -= 64;
          --v19;
          ++v18;
          if (!v19)
          {
            goto LABEL_9;
          }
        }

        v22 = __clz(__rbit64(*v18)) - v17;
      }

LABEL_9:
      v23 = *(v8 + 48);
      v24 = *(v16 + 36);
      sub_100013414(&qword_10009BC78, &qword_100078A60);
      Dictionary._Variant.remove(at:)();
      v20 = v7;
      v21 = 0;
    }

    else
    {
      v20 = v7;
      v21 = 1;
    }

    sub_1000223E8(v20, v21, 1, v8);
    swift_endAccess();
    OS_dispatch_queue.assertOnQueueHierarchy()();
    if (sub_100022484(v7, 1, v8) == 1)
    {
      break;
    }

    sub_100061B64(v7, v13, &qword_10009BC68, &qword_100078A50);
    v25 = *&v13[*(v8 + 48)];
    sub_10006C704();
    sub_100022560(v13, &qword_10009BC68, &qword_100078A50);
  }

  sub_100022560(v7, &qword_10009BC60, &qword_100078A48);
  sub_1000135A0();
}

void sub_10005FA30()
{
  sub_10000D060();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = sub_10000CBBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000EDF0();
  v88 = v9 - v10;
  __chkstk_darwin(v11);
  sub_100061F58();
  v86 = v12;
  v94 = sub_100013414(&qword_10009A8F8, &unk_100077D70);
  sub_10000CC04(v94);
  v14 = *(v13 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v15);
  v95 = &v82[-v16];
  v17 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v18 = sub_10000D368(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000EDF0();
  v91 = v21 - v22;
  v24 = __chkstk_darwin(v23);
  v26 = &v82[-v25];
  __chkstk_darwin(v24);
  sub_100061F58();
  v98 = v27;
  sub_10000EB00();
  swift_beginAccess();
  v28 = *(v0 + 24);
  v30 = *(v28 + 64);
  v29 = v28 + 64;
  v31 = *(*(v0 + 24) + 32);
  sub_10004C218();
  v34 = v33 & v32;
  v89 = v0;
  v90 = (v35 + 63) >> 6;
  v96 = (v6 + 16);
  v85 = (v6 + 32);
  v92 = (v6 + 8);
  v101 = v36;

  v37 = 0;
  *&v38 = 136315138;
  v84 = v38;
  v97 = v2;
  while (v34)
  {
LABEL_7:
    v40 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v41 = *(*(v101 + 56) + ((v37 << 9) | (8 * v40)));
    v42 = *(v41 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator);
    if (v42)
    {

      v99 = v42;
      v43 = [v99 identifier];
      v100 = v41;
      if (v43)
      {
        v44 = v43;
        v45 = v98;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = 0;
      }

      else
      {
        v46 = 1;
        v45 = v98;
      }

      sub_1000223E8(v45, v46, 1, v3);
      v93 = *v96;
      (v93)(v26, v2, v3);
      sub_1000223E8(v26, 0, 1, v3);
      v47 = v95;
      v48 = *(v94 + 48);
      sub_100061E48(v45, v95, &qword_1000999E8, &unk_100077D60);
      sub_100061E48(v26, &v47[v48], &qword_1000999E8, &unk_100077D60);
      sub_100061FB0(v47);
      if (v50)
      {
        sub_100022560(v26, &qword_1000999E8, &unk_100077D60);
        sub_100022560(v45, &qword_1000999E8, &unk_100077D60);
        sub_100061FB0(&v47[v48]);
        if (!v50)
        {
          goto LABEL_19;
        }

        sub_100022560(v47, &qword_1000999E8, &unk_100077D60);
        v2 = v97;
LABEL_21:
        v87 = v26;
        v66 = static os_log_type_t.default.getter();
        v67 = v88;
        (v93)(v88, v2, v3);
        sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
        v68 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v68, v66))
        {
          v69 = swift_slowAlloc();
          sub_10000CCCC();
          v93 = swift_slowAlloc();
          v102 = v93;
          *v69 = v84;
          sub_100061F20();
          sub_100061C00(&qword_10009B0E0, v70);
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v72 = v3;
          v74 = v73;
          v75 = v67;
          v76 = v66;
          v77 = v72;
          (*v92)(v75, v72);
          v78 = sub_10000C600(v71, v74, &v102);

          *(v69 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v68, v76, "Cancelling tunnel associated with host %s", v69, 0xCu);
          sub_10000CADC(v93);
          sub_100015FBC();

          sub_100015FBC();
        }

        else
        {

          v77 = v3;
          (*v92)(v67, v3);
        }

        v79 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_identifier;
        v80 = v89;
        sub_100061F98();
        sub_100068404(v100 + v79);
        swift_endAccess();

        v81 = *(v80 + 32);
        OS_dispatch_queue.assertOnQueueHierarchy()();
        sub_10006C704();
        v2 = v97;
        v3 = v77;
        v26 = v87;
        goto LABEL_25;
      }

      v49 = v91;
      sub_100061E48(v47, v91, &qword_1000999E8, &unk_100077D60);
      sub_100061FB0(&v47[v48]);
      if (v50)
      {
        sub_10000D4EC();
        sub_100022560(v51, v52, v53);
        sub_10000D4EC();
        sub_100022560(v54, v55, v56);
        (*v92)(v49, v3);
LABEL_19:
        sub_100022560(v47, &qword_10009A8F8, &unk_100077D70);
        v2 = v97;
        goto LABEL_25;
      }

      v57 = v86;
      (*v85)(v86, &v47[v48], v3);
      sub_100061F20();
      sub_100061C00(&qword_10009A900, v58);
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v59 = *v92;
      (*v92)(v57, v3);
      sub_10000D4EC();
      sub_100022560(v60, v61, v62);
      sub_10000D4EC();
      sub_100022560(v63, v64, v65);
      v59(v91, v3);
      v2 = v97;
      sub_100022560(v95, &qword_1000999E8, &unk_100077D60);
      if (v83)
      {
        goto LABEL_21;
      }

LABEL_25:
    }
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v90)
    {

      sub_1000135A0();
      return;
    }

    v34 = *(v29 + 8 * v39);
    ++v37;
    if (v34)
    {
      v37 = v39;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_100060154()
{
  v0 = type metadata accessor for RemotePairingError();
  v1 = sub_10000CC04(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10001ACC4();
  result = XPCDictionary.subscript.getter();
  if (result == 2 || (result & 1) == 0)
  {
    sub_100061C00(&unk_10009A0D0, &type metadata accessor for RemotePairingError);
    static Error<>.permissionDenied.getter();
    sub_100061C00(&qword_100099850, &type metadata accessor for RemotePairingError);
    sub_100061F38();
    Error<>.init(_:_:)();
    return swift_willThrow();
  }

  return result;
}

void sub_1000602A8(uint64_t a1)
{
  v4 = type metadata accessor for RemotePairingError();
  v5 = sub_10000CC04(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10001ACC4();
  v8 = sub_100013414(&qword_10009BC60, &qword_100078A48);
  sub_10000D368(v8);
  v10 = *(v9 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100060154();
  if (!v2)
  {
    sub_10000EB00();
    v14 = swift_beginAccess();
    v15 = *(v1 + 24);
    __chkstk_darwin(v14);
    *(&v30 - 2) = a1;

    v16 = sub_100060BEC(sub_100060BCC, &v30 - 4, v15);

    sub_10005B350(v16, v13);

    v17 = sub_100013414(&qword_10009BC68, &qword_100078A50);
    if (sub_100022484(v13, 1, v17) == 1)
    {
      sub_100022560(v13, &qword_10009BC60, &qword_100078A48);
      static RemotePairingError.deviceNotFound.getter();
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v31 = 0xD00000000000001ALL;
      v32 = 0x8000000100081420;
      v18._countAndFlagsBits = RemoteUnlockDeviceKeyForTunnelRequest.tunnelDeviceName.getter();
      String.append(_:)(v18);

      sub_100061C00(&qword_100099850, &type metadata accessor for RemotePairingError);
      sub_100061F38();
      sub_10000D294();
      sub_100061C00(v19, &type metadata accessor for RemotePairingError);
      Error<>.init(_:_:)();
      swift_willThrow();
    }

    else
    {
      v20 = *&v13[*(v17 + 48)];
      v21 = type metadata accessor for UUID();
      sub_10000CC04(v21);
      (*(v22 + 8))(v13);
      v23 = *(v20 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator);
      if (v23)
      {
        v24 = v23;
        CUPairedPeer.remoteUnlockKey.getter();
        if (v25 >> 60 == 15)
        {
          static RemotePairingError.pairingRecordMissingInfo.getter();
          sub_10000EEB4();
          sub_100061C00(v26, v24);
          sub_100061F38();
          sub_100061F64();
          sub_10000D294();
          sub_100061C00(v27, v24);
          sub_10000D0C0();
          swift_willThrow();
        }

        else
        {
          RemoteUnlockDeviceKeyForTunnelResponse.init(deviceKey:)();
        }
      }

      else
      {
        static RemotePairingError.invalidOperation.getter();
        sub_10000EEB4();
        sub_100061C00(v28, v17);
        sub_100061F38();
        sub_100061F64();
        sub_10000D294();
        sub_100061C00(v29, v17);
        sub_10000D0C0();
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1000606C4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100013414(&qword_10009BC68, &qword_100078A50);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = *a2;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  *&v11[*(v5 + 56)] = v12;
  sub_100061E48(v11, v9, &qword_10009BC68, &qword_100078A50);
  v15 = *&v9[*(v5 + 56)];

  v16 = sub_10006B244();
  v18 = v17;

  v19 = RemoteUnlockDeviceKeyForTunnelRequest.tunnelDeviceName.getter();
  if (v18)
  {
    if (v16 == v19 && v18 == v20)
    {
      v22 = 1;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_100022560(v11, &qword_10009BC68, &qword_100078A50);
  }

  else
  {
    sub_100022560(v11, &qword_10009BC68, &qword_100078A50);

    v22 = 0;
  }

  (*(v14 + 8))(v9, v13);
  return v22 & 1;
}

uint64_t sub_1000608D8(NSObject *a1)
{
  sub_10000EB00();
  swift_beginAccess();
  v3 = *(v1 + 24);
  v5 = v3 + 64;
  v4 = *(v3 + 64);
  v6 = *(v3 + 32);
  sub_10004C218();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v13 = 0;
  v30 = v3;
  log = a1;
  if (!v9)
  {
    goto LABEL_3;
  }

  do
  {
    v14 = v13;
LABEL_6:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = *(*(v3 + 56) + ((v14 << 9) | (8 * v15)));

    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v17))
    {
      sub_10000CCCC();
      v18 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v18 = 136446722;
      v19 = UUID.uuidString.getter();
      v21 = sub_10000C600(v19, v20, &v32);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      v22 = *(v16 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator);
      v23 = String.init<A>(describing:)();
      v25 = sub_10000C600(v23, v24, &v32);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2082;
      v26 = sub_10006B244();
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v26 = 0x296C6C756E28;
        v28 = 0xE600000000000000;
      }

      v29 = sub_10000C600(v26, v28, &v32);
      v3 = v30;

      *(v18 + 24) = v29;
      a1 = log;
      _os_log_impl(&_mh_execute_header, log, v17, "State dump: %{public}s initiated by %{public}s, RSD name %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      sub_100015FBC();

      sub_100015FBC();
    }

    v13 = v14;
  }

  while (v9);
LABEL_3:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v9 = *(v5 + 8 * v14);
    ++v13;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100060B3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_10000CADC((v0 + 40));
  return v0;
}

uint64_t sub_100060B74()
{
  sub_100060B3C();

  return _swift_deallocClassInstance(v0, 81, 7);
}

unint64_t *sub_100060BEC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_100060FF8(v12, v8, a3, v6);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_100066980(0, v8, v9);
  v10 = sub_100060D70(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

uint64_t sub_100060D70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *))
{
  v32 = a4;
  v25 = a2;
  v26 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  result = __chkstk_darwin(v5);
  v33 = a3;
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a3 + 64);
  v27 = 0;
  v28 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v30 = v8 + 16;
  v31 = v8;
  v29 = (v8 + 8);
  while (v14)
  {
    v35 = (v14 - 1) & v14;
    v16 = __clz(__rbit64(v14)) | (v10 << 6);
    v17 = v34;
LABEL_11:
    v20 = v33;
    (*(v31 + 16))(v17, v33[6] + *(v31 + 72) * v16, v5);
    v37 = *(v20[7] + 8 * v16);

    v21 = v36;
    v22 = v32(v17, &v37);
    v36 = v21;
    if (v21)
    {

      return (*v29)(v17, v5);
    }

    v23 = v22;

    result = (*v29)(v17, v5);
    v14 = v35;
    if (v23)
    {
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_100061088(v26, v25, v27, v33);
      }
    }
  }

  v18 = v10;
  v17 = v34;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      return sub_100061088(v26, v25, v27, v33);
    }

    v19 = *(v28 + 8 * v10);
    ++v18;
    if (v19)
    {
      v35 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100060FF8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100060D70(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100061088(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = type metadata accessor for UUID();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v48);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v35 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100013414(&qword_10009BC70, &qword_100078A58);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_100061C00(&unk_10009BE40, &type metadata accessor for UUID);
    v44 = v24;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_25:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100061420(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 48);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = (*(a5 + 56) + 16 * a2);
    v11 = *v10;
    v12 = v10[1];

    return v11;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000614F4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);
}

void sub_1000615E8()
{
  sub_10000D060();
  v31 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = sub_10000CBBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10001ACC4();
  v33 = type metadata accessor for DispatchQoS();
  v15 = sub_10000CBBC(v33);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10000CBDC();
  v22 = v21 - v20;
  v36[3] = type metadata accessor for SocketTunnelConnection();
  v36[4] = &protocol witness table for SocketTunnelConnection;
  v36[0] = v8;
  v32 = *(v4 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  sub_100022260(v36, v35);
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  sub_100010E18(v35, v23 + 24);
  *(v23 + 64) = v6;
  v34[4] = v2;
  v34[5] = v23;
  sub_10000D9B8();
  sub_100061EF0(COERCE_DOUBLE(1107296256));
  v34[2] = v24;
  v34[3] = v31;
  v25 = _Block_copy(v34);

  static DispatchQoS.unspecified.getter();
  sub_100061F08();
  sub_100061C00(v26, v27);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000D4EC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  v28 = *(v12 + 8);
  v29 = sub_10000D288();
  v30(v29);
  (*(v17 + 8))(v22, v33);

  sub_10000CADC(v36);
  sub_1000135A0();
}

void sub_10006187C()
{
  sub_10000D060();
  v32 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = sub_10000CBBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10001ACC4();
  v33 = type metadata accessor for DispatchQoS();
  v15 = sub_10000CBBC(v33);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10000CBDC();
  v22 = v21 - v20;
  v36[3] = type metadata accessor for LockdownTunnelConnection();
  v36[4] = sub_100061C00(&unk_100099820, type metadata accessor for LockdownTunnelConnection);
  v36[0] = v8;
  v31 = *(v4 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  sub_100022260(v36, v35);
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  sub_100010E18(v35, v23 + 24);
  *(v23 + 64) = v6;
  v34[4] = v2;
  v34[5] = v23;
  sub_10000D9B8();
  sub_100061EF0(COERCE_DOUBLE(1107296256));
  v34[2] = v24;
  v34[3] = v32;
  v25 = _Block_copy(v34);

  static DispatchQoS.unspecified.getter();
  sub_100061F08();
  sub_100061C00(v26, v27);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100028120(&qword_10009A8F0, &unk_100099840, &unk_100077350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000D4EC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  v28 = *(v12 + 8);
  v29 = sub_10000D288();
  v30(v29);
  (*(v17 + 8))(v22, v33);

  sub_10000CADC(v36);
  sub_1000135A0();
}

uint64_t sub_100061B64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100040170(a1, a2, a3, a4);
  sub_10000CC04(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

void sub_100061BD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  sub_10006C460();
}

uint64_t sub_100061C00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100061C48()
{
  v1 = v0[2];

  sub_10000CADC(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100061C90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  return sub_10006C368();
}

uint64_t sub_100061CB0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100061D34(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_10000D368(v3);
  return sub_10005F5F0(a1, *(v1 + 16), v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
}

void sub_100061D98()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_10003AC04();
}

uint64_t sub_100061DA4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_10005C3F8(a1, v5, v1 + v4, v7);
}

uint64_t sub_100061E48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100040170(a1, a2, a3, a4);
  sub_10000CC04(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_100061F38()
{

  return swift_allocError();
}

uint64_t sub_100061F70()
{
  result = v1;
  *(v2 - 224) = *(v0 + 8);
  return result;
}

uint64_t sub_100061F98()
{

  return swift_beginAccess();
}

uint64_t sub_100061FD0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_100061FF0()
{
  sub_10000D060();
  v3 = v2;
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000CC04(v4);
  v6 = *(v5 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v7);
  sub_10006A274();
  v8 = *(v0 + 80);
  sub_10001CE74();
  v10 = sub_10006A2E0(v9);
  if (v10)
  {
    v11 = v10;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = [v3 *(v1 + 2424)];
  if (!v12)
  {
    sub_10006A1BC();
    if (!(!v17 & v16))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v13 = v12;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006A1BC();
  if (!v17 & v16)
  {
    sub_10006A1B0();
    if (!(!v17 & v16))
    {
      goto LABEL_15;
    }

LABEL_10:
    v14 = sub_10000D5CC();
    sub_10000ECF4(v14, v15);
    goto LABEL_11;
  }

  sub_10006A1B0();
  if (!(!v17 & v16))
  {
    v18 = sub_10000D5CC();
    sub_10000EC4C(v18, v19);
    v20 = sub_100040164();
    sub_10000EC4C(v20, v21);
    sub_10000D5CC();
    static Data.== infix(_:_:)();
    sub_100069EDC();
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_100021370(v3);

    goto LABEL_22;
  }

LABEL_15:
  v22 = sub_10000D5CC();
  sub_10000ECF4(v22, v23);
  v24 = sub_100040164();
  sub_10000ECF4(v24, v25);
LABEL_16:
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(qword_10009CED0, v26))
  {
    v27 = sub_10000D030();
    v28 = sub_10000D464();
    v41 = v28;
    *v27 = 136315138;
    v29 = [v3 identifier];
    if (v29)
    {
      v30 = v29;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = type metadata accessor for UUID();
      v33 = v31;
      v34 = 0;
    }

    else
    {
      v31 = type metadata accessor for UUID();
      v33 = v31;
      v34 = 1;
    }

    v35 = sub_10006A230(v31, v34, v32, v33);
    v37 = sub_10000C600(v35, v36, &v41);

    *(v27 + 4) = v37;
    sub_10006A190(&_mh_execute_header, v38, v39, "Newly configured connection's resolved peer %s no longer exists in the keychain");
    sub_10000CADC(v28);
    sub_10000D8D4();
    sub_10000D8D4();
  }

LABEL_22:
  sub_1000135A0();
}

void sub_100062308()
{
  sub_10000D060();
  v3 = v2;
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000CC04(v4);
  v6 = *(v5 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v7);
  sub_10006A274();
  v8 = *(v0 + 136);
  sub_10001CE74();
  v10 = sub_10006A2E0(v9);
  if (v10)
  {
    v11 = v10;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = [v3 *(v1 + 2424)];
  if (!v12)
  {
    sub_10006A1BC();
    if (!(!v17 & v16))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v13 = v12;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006A1BC();
  if (!v17 & v16)
  {
    sub_10006A1B0();
    if (!(!v17 & v16))
    {
      goto LABEL_15;
    }

LABEL_10:
    v14 = sub_10000D5CC();
    sub_10000ECF4(v14, v15);
    goto LABEL_11;
  }

  sub_10006A1B0();
  if (!(!v17 & v16))
  {
    v18 = sub_10000D5CC();
    sub_10000EC4C(v18, v19);
    v20 = sub_100040164();
    sub_10000EC4C(v20, v21);
    sub_10000D5CC();
    static Data.== infix(_:_:)();
    sub_100069EDC();
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_100021370(v3);

    goto LABEL_22;
  }

LABEL_15:
  v22 = sub_10000D5CC();
  sub_10000ECF4(v22, v23);
  v24 = sub_100040164();
  sub_10000ECF4(v24, v25);
LABEL_16:
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(qword_10009CED0, v26))
  {
    v27 = sub_10000D030();
    v28 = sub_10000D464();
    v41 = v28;
    *v27 = 136315138;
    v29 = [v3 identifier];
    if (v29)
    {
      v30 = v29;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = type metadata accessor for UUID();
      v33 = v31;
      v34 = 0;
    }

    else
    {
      v31 = type metadata accessor for UUID();
      v33 = v31;
      v34 = 1;
    }

    v35 = sub_10006A230(v31, v34, v32, v33);
    v37 = sub_10000C600(v35, v36, &v41);

    *(v27 + 4) = v37;
    sub_10006A190(&_mh_execute_header, v38, v39, "Newly configured connection's resolved peer %s no longer exists in the keychain");
    sub_10000CADC(v28);
    sub_10000D8D4();
    sub_10000D8D4();
  }

LABEL_22:
  sub_1000135A0();
}

void sub_100062620()
{
  sub_10000D060();
  v3 = v2;
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000CC04(v4);
  v6 = *(v5 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v7);
  sub_10006A274();
  v8 = *(v0 + 104);
  sub_10001CE74();
  v10 = sub_10006A2E0(v9);
  if (v10)
  {
    v11 = v10;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = [v3 *(v1 + 2424)];
  if (!v12)
  {
    sub_10006A1BC();
    if (!(!v17 & v16))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v13 = v12;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006A1BC();
  if (!v17 & v16)
  {
    sub_10006A1B0();
    if (!(!v17 & v16))
    {
      goto LABEL_15;
    }

LABEL_10:
    v14 = sub_10000D5CC();
    sub_10000ECF4(v14, v15);
    goto LABEL_11;
  }

  sub_10006A1B0();
  if (!(!v17 & v16))
  {
    v18 = sub_10000D5CC();
    sub_10000EC4C(v18, v19);
    v20 = sub_100040164();
    sub_10000EC4C(v20, v21);
    sub_10000D5CC();
    static Data.== infix(_:_:)();
    sub_100069EDC();
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_100021370(v3);

    goto LABEL_22;
  }

LABEL_15:
  v22 = sub_10000D5CC();
  sub_10000ECF4(v22, v23);
  v24 = sub_100040164();
  sub_10000ECF4(v24, v25);
LABEL_16:
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(qword_10009CED0, v26))
  {
    v27 = sub_10000D030();
    v28 = sub_10000D464();
    v41 = v28;
    *v27 = 136315138;
    v29 = [v3 identifier];
    if (v29)
    {
      v30 = v29;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = type metadata accessor for UUID();
      v33 = v31;
      v34 = 0;
    }

    else
    {
      v31 = type metadata accessor for UUID();
      v33 = v31;
      v34 = 1;
    }

    v35 = sub_10006A230(v31, v34, v32, v33);
    v37 = sub_10000C600(v35, v36, &v41);

    *(v27 + 4) = v37;
    sub_10006A190(&_mh_execute_header, v38, v39, "Newly configured connection's resolved peer %s no longer exists in the keychain");
    sub_10000CADC(v28);
    sub_10000D8D4();
    sub_10000D8D4();
  }

LABEL_22:
  sub_1000135A0();
}

uint64_t sub_100062938(void *a1)
{
  v3 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = *(v1 + 184);
  sub_10001CE74();
  v32 = v8;
  v9 = [v8 publicKey];
  if (v9)
  {
    v10 = v9;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = [a1 publicKey];
  if (v14)
  {
    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v13 >> 60 == 15)
    {
      if (v18 >> 60 != 15)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if (v18 >> 60 != 15)
    {
      sub_10000EC4C(v11, v13);
      sub_10000EC4C(v16, v18);
      v19 = static Data.== infix(_:_:)();
      sub_10000ECF4(v16, v18);
      sub_10000ECF4(v16, v18);
      sub_10000ECF4(v11, v13);
      sub_10000ECF4(v11, v13);
      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_10:
      sub_100021370(a1);

      return 1;
    }
  }

  else
  {
    if (v13 >> 60 == 15)
    {
LABEL_9:
      sub_10000ECF4(v11, v13);
      goto LABEL_10;
    }

    v16 = 0;
    v18 = 0xF000000000000000;
  }

LABEL_15:
  sub_10000ECF4(v11, v13);
  sub_10000ECF4(v16, v18);
LABEL_16:
  v20 = static os_log_type_t.default.getter();
  v21 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v20))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    v24 = [a1 identifier];
    if (v24)
    {
      v25 = v24;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = type metadata accessor for UUID();
      v27 = 0;
    }

    else
    {
      v26 = type metadata accessor for UUID();
      v27 = 1;
    }

    sub_1000223E8(v6, v27, 1, v26);
    v29 = String.init<A>(describing:)();
    v31 = sub_10000C600(v29, v30, &v33);

    *(v22 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v20, "Newly configured connection's resolved peer %s no longer exists in the keychain", v22, 0xCu);
    sub_10000CADC(v23);
  }

  return 0;
}

void sub_100062D54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100062DC8()
{
  sub_10000D060();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ControlChannelConnection.Options();
  v5 = sub_10000CBBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for ControlChannelConnection.Options.Device();
  v14 = sub_10000CBBC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000CBDC();
  v22 = v21 - v20;
  if ((*(v1 + 176) & 1) != 0 || (v53 = v19, sub_10000D488(), v23 = *(v1 + 24), v24 = , v25 = sub_100061FD0(v24), , v25 > 49))
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    dispatch thunk of XPCConnection.cancel()();
  }

  else
  {
    swift_beginAccess();
    v26 = v3;
    v27 = *(v1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58[0] = *(v1 + 32);
    sub_10006983C(v26, v26, isUniquelyReferenced_nonNull_native);
    *(v1 + 32) = v58[0];
    swift_endAccess();
    ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
    v29 = type metadata accessor for RemoteXPCControlChannelTransport();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();

    v55 = v29;
    v56 = &protocol witness table for RemoteXPCControlChannelTransport;
    v54[0] = RemoteXPCControlChannelTransport.init(xpcConnection:to:)();
    v32 = *(v1 + 40);
    (*(v16 + 16))(v12, v22, v53);
    (*(v7 + 104))(v12, enum case for ControlChannelConnection.Options.device(_:), v4);
    v33 = *(v1 + 184);
    v58[3] = type metadata accessor for SystemKeychainPairingManager();
    v58[4] = sub_10000D200(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager);
    v58[0] = v33;
    v34 = type metadata accessor for ControlChannelConnection();

    v35 = v32;

    static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
    v36 = *(v34 + 48);
    v37 = *(v34 + 52);
    swift_allocObject();
    v38 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
    v39 = *(v1 + 168);
    type metadata accessor for MetadataService();
    sub_10000D200(&qword_10009B090, type metadata accessor for MetadataService);

    dispatch thunk of ControlChannelConnection.customDeviceMetadataProvider.setter();
    sub_10000CBD0();
    v40 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v41 = swift_allocObject();
    swift_weakInit();
    sub_10000CCD8();
    v42 = swift_allocObject();
    v42[2] = v26;
    v42[3] = v40;
    v42[4] = v41;
    v56 = sub_10000C268;
    v57 = v42;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 1107296256;
    v54[2] = sub_10000C200;
    v55 = &unk_100091900;
    v43 = _Block_copy(v54);
    v44 = v26;

    remote_device_set_disconnected_callback();
    _Block_release(v43);
    sub_100022260(v1 + 48, v54);
    dispatch thunk of ControlChannelConnection.userInteractionProvider.setter();
    sub_100022260(v1 + 88, v54);
    dispatch thunk of ControlChannelConnection.tunnelListenerCreator.setter();
    swift_beginAccess();

    sub_10006463C(v58, v38);
    swift_endAccess();

    sub_10000D9E8();
    sub_10000CBD0();
    v45 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v46 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000CCD8();
    v48 = swift_allocObject();
    v48[2] = v45;
    v48[3] = v46;
    v48[4] = v47;

    dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

    sub_10000CBD0();
    v49 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v50 = swift_allocObject();
    swift_weakInit();

    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = v49;

    dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

    v52 = *sub_10001355C((v1 + 128), *(v1 + 152));

    sub_1000555E0();

    (*(v16 + 8))(v22, v53);
  }

  sub_1000135A0();
}

uint64_t sub_1000634C0()
{
  v0 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v6)
      {
        v7 = v6;
        if ((sub_100062938(v6) & 1) == 0)
        {
          (*(v1 + 104))(v4, enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:), v0);
          dispatch thunk of ControlChannelConnection.invalidate(for:)();

          return (*(v1 + 8))(v4, v0);
        }
      }
    }
  }

  return result;
}

void sub_100063658()
{
  static RemoteServiceNames.tunnelService.getter();
  v1 = *(v0 + 40);
  sub_10000CBD0();
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_100064634;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100062D54;
  v4[3] = &unk_100091888;
  v3 = _Block_copy(v4);

  sub_10001AD28();
  String.utf8CString.getter();

  remote_service_listen_with_device();

  _Block_release(v3);
}

uint64_t sub_10006375C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    xpc_remote_connection_version_flags = remote_device_get_xpc_remote_connection_version_flags();
    if (xpc_remote_connection_version_flags)
    {
      if ((xpc_remote_connection_version_flags & 0x8000000000000000) == 0)
      {
LABEL_6:
        v3 = *(v1 + 40);
        v4 = xpc_remote_connection_create_with_connected_fd();
        xpc_remote_connection_set_local_service_version();
        type metadata accessor for RemoteXPCPeerConnection();
        static RemoteXPCConnection.unsafePeer(from:)();
        swift_dynamicCastClassUnconditional();

        sub_100062DC8();
      }

      __break(1u);
    }

    result = _remotepairing_xpc_remote_connection_get_failsafe_version_flags();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

void sub_10006386C()
{
  sub_10000D060();
  v34 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v1 = sub_10000CBBC(v34);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000CBDC();
  v33 = v7 - v6;
  if (*(v0 + 176))
  {
    static os_log_type_t.error.getter();
    sub_1000135A0();

    os_log(_:dso:log:_:_:)();
  }

  else
  {
    *(v0 + 176) = 1;
    sub_10000D488();
    v9 = *(v0 + 24);
    if ((v9 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v10 = *(v0 + 24);
      }

      __CocoaSet.makeIterator()();
      type metadata accessor for ControlChannelConnection();
      sub_10000D31C();
      sub_10000D200(v11, v12);
      sub_10000D048();
      Set.Iterator.init(_cocoa:)();
      v9 = v36;
      v13 = v37;
      v15 = v38;
      v14 = v39;
      v16 = v40;
    }

    else
    {
      v17 = *(v9 + 32);
      sub_10006A00C();
      v13 = v9 + 56;
      v18 = *(v9 + 56);
      v15 = ~v19;
      sub_10000D89C();
      v16 = v20 & v21;

      v14 = 0;
    }

    v22 = (v15 + 64) >> 6;
    v32 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
    v23 = (v3 + 104);
    v24 = (v3 + 8);
    if (v9 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v25 = v14;
      v26 = v14;
      if (!v16)
      {
        break;
      }

LABEL_15:
      sub_100040048();
      v29 = v28 & v27;
      v31 = *(*(v9 + 48) + ((v26 << 9) | (8 * v30)));

      if (!v31)
      {
LABEL_21:
        sub_10000CC14();
        sub_1000134CC();
        sub_1000135A0();
        return;
      }

      while (1)
      {
        (*v23)(v33, v32, v34);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v24)(v33, v34);
        v14 = v26;
        v16 = v29;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for ControlChannelConnection();
          swift_dynamicCast();
          v26 = v14;
          v29 = v16;
          if (v35)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        goto LABEL_21;
      }

      ++v25;
      if (*(v13 + 8 * v26))
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100063B54(NSObject *a1)
{
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(a1, v3))
  {

    v4 = sub_10000D030();
    *v4 = 134217984;
    sub_10000D488();
    v5 = *(v1 + 24);
    if ((v5 & 0xC000000000000001) != 0)
    {
      if (v5 < 0)
      {
        v6 = *(v1 + 24);
      }

      v7 = *(v1 + 24);

      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v5 + 16);
    }

    *(v4 + 4) = v8;

    _os_log_impl(&_mh_execute_header, a1, v3, "State dump: NetworkPairingService connection count = %ld", v4, 0xCu);
    sub_10000D8D4();
  }

  sub_10000D488();
  v9 = *(v1 + 24);
  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_10006A374();
    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10000D31C();
    sub_10000D200(v10, v11);
    result = Set.Iterator.init(_cocoa:)();
    v9 = v35[4];
    v13 = v35[5];
    v14 = v35[6];
    v15 = v35[7];
    v16 = v35[8];
  }

  else
  {
    v17 = *(v9 + 32);
    sub_10006A00C();
    v13 = v9 + 56;
    v18 = *(v9 + 56);
    v14 = ~v19;
    sub_10000D89C();
    v16 = v20 & v21;

    v15 = 0;
  }

  v22 = (v14 + 64) >> 6;
  while (v9 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for ControlChannelConnection(), swift_dynamicCast(), v24 = v15, v27 = v16, !v35[0]))
    {
LABEL_25:
      sub_10001AD28();
      return sub_1000134CC();
    }

LABEL_21:
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v30))
    {
      v31 = sub_10000D030();
      v34 = sub_10000D464();
      v35[0] = v34;
      *v31 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v32 = String.init<A>(describing:)();
      sub_10000C600(v32, v33, v35);
      sub_10006A394();
      *(v31 + 4) = a1;
      _os_log_impl(&_mh_execute_header, a1, v30, "State dump: RSDService control channel connection: %{public}s", v31, 0xCu);
      sub_10000CADC(v34);
      sub_10000D8D4();
      sub_10000D8D4();
    }

    v15 = v24;
    v16 = v27;
  }

  v23 = v15;
  v24 = v15;
  if (v16)
  {
LABEL_17:
    sub_100040048();
    v27 = v26 & v25;
    v29 = *(*(v9 + 48) + ((v24 << 9) | (8 * v28)));

    if (!v29)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      goto LABEL_25;
    }

    ++v23;
    if (*(v13 + 8 * v24))
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100063EBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_10000CADC((v0 + 48));
  sub_10000CADC((v0 + 88));
  sub_10000CADC((v0 + 128));
  v3 = *(v0 + 168);

  v4 = *(v0 + 184);

  return v0;
}

uint64_t sub_100063F14()
{
  sub_100063EBC();

  return _swift_deallocClassInstance(v0, 192, 7);
}

unint64_t sub_100063FD8()
{
  sub_10000D890();
  v2 = AnyHashable._rawHashValue(seed:)(*(v0 + 40));

  return sub_1000642A4(v1, v2);
}

void sub_100064018()
{
  sub_10000D890();
  v1 = *(v0 + 40);
  type metadata accessor for UUID();
  sub_10000D200(&unk_10009BE40, &type metadata accessor for UUID);
  sub_10001AD28();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000644C0();
}

unint64_t sub_1000640E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  type metadata accessor for SystemXPCPeerConnection();
  sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection);
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100064368(a1, v4);
}

unint64_t sub_100064190(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_100064460(a1, v4);
}

void sub_1000641D8()
{
  sub_10000D890();
  v1 = *(v0 + 40);
  type metadata accessor for XPCEventPublisher.Token();
  sub_10000D200(&qword_10009BE50, &type metadata accessor for XPCEventPublisher.Token);
  sub_10001AD28();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000644C0();
}

unint64_t sub_1000642A4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100069E34(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10002269C(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100064368(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    type metadata accessor for SystemXPCPeerConnection();
    v6 = *(*(v2 + 48) + 8 * i);
    sub_10000D200(&qword_10009B9E8, &type metadata accessor for SystemXPCPeerConnection);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100064460(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1000644C0()
{
  sub_10000D060();
  v24 = v1;
  v25 = v2;
  v23 = v3;
  v5 = v4;
  v21 = v6;
  v8 = v7(0);
  sub_10000CBBC(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_10000D8B0();
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v26 = v0 + 64;
  v22 = v0;
  v16 = *(v0 + 32);
  sub_10006A00C();
  v18 = ~v17;
  for (i = v5 & ~v17; ((1 << i) & *(v26 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v18)
  {
    (*(v10 + 16))(v15, *(v22 + 48) + *(v10 + 72) * i, v8);
    sub_10000D200(v23, v24);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v15, v8);
    if (v20)
    {
      break;
    }
  }

  sub_1000135A0();
}

uint64_t sub_10006480C(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    sub_10000CD58();

    sub_10006A2BC();
    __CocoaSet.member(for:)();
    sub_10006A3CC();
    if (v3)
    {

      type metadata accessor for PairableHostsBrowseRegistration();
      v8 = swift_dynamicCast();
      return sub_10006A0B8(v8, v9, v10, v11, v12, v13, v14, v15, v35, v36, v38);
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_100064FE4(v2, result + 1);
        sub_100069F80(v27);
        if (!(!v30 & v29))
        {
          v31 = sub_10006A368(v28);
          sub_1000658BC(v31);
          v2 = v38;
        }

        sub_100066070(v32, v2);

        *v4 = v2;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v17 = *(v7 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for PairableHostsBrowseRegistration();
    sub_10000D3F4();
    sub_10000D200(v18, v19);
    HashableByObjectIdentity.hash(into:)();
    Hasher._finalize()();
    v20 = *(v7 + 32);
    sub_10006A00C();
    v23 = ~v22;
    while (1)
    {
      v24 = v21 & v23;
      if (((*(v7 + 56 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
      {
        v33 = *v4;
        swift_isUniquelyReferenced_nonNull_native();
        v34 = sub_10006A03C();
        sub_1000663FC(v34, v24, v7);
        *v4 = v38;
        *a1 = a2;
        return 1;
      }

      v25 = *(*(v7 + 48) + 8 * v24);

      v26 = static HashableByObjectIdentity.== infix(_:_:)();

      if (v26)
      {
        break;
      }

      v21 = v24 + 1;
    }

    *a1 = *(*(v7 + 48) + 8 * v24);

    return 0;
  }

  return result;
}

uint64_t sub_100064DD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&qword_10009BE20, &qword_100078B50);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for ControlChannelConnection();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_10006562C(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      sub_10000D200(&unk_10009BE10, &type metadata accessor for ControlChannelConnection);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_100064FE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&qword_10009B9F0, &qword_100078BD0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for PairableHostsBrowseRegistration();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1000658BC(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      Hasher.init(_seed:)();
      sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration);
      HashableByObjectIdentity.hash(into:)();
      result = Hasher._finalize()();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100065204(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&unk_10009BF20, &unk_100078BC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for BluetoothLEConnectionControlChannelTransport();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_100065B50(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100065418(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013414(&qword_10009BE80, &unk_1000788B0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for SystemXPCPeerConnection();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_100065DE0(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10006562C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100013414(&qword_10009BE20, &qword_100078B50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v29 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_100066980(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    type metadata accessor for ControlChannelConnection();
    sub_10000D200(&unk_10009BE10, &type metadata accessor for ControlChannelConnection);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    v3 = v29;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000658BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100013414(&qword_10009B9F0, &qword_100078BD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_100066980(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for PairableHostsBrowseRegistration();
    sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration);
    HashableByObjectIdentity.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100065B50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100013414(&unk_10009BF20, &unk_100078BC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v29 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_100066980(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    type metadata accessor for BluetoothLEConnectionControlChannelTransport();
    sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    v3 = v29;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100065DE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100013414(&qword_10009BE80, &unk_1000788B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v29 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_100066980(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    type metadata accessor for SystemXPCPeerConnection();
    sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    v3 = v29;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_100066070(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for PairableHostsBrowseRegistration();
  sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration);
  HashableByObjectIdentity.hash(into:)();
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10006615C()
{
  sub_10006A318();
  v1 = v0;
  v3 = v2;
  v4 = *(v0 + 40);
  v5(0);
  v6 = sub_10006A2BC();
  sub_10000D200(v6, v7);
  sub_10006A030();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = *(v1 + 32);
  sub_10006A00C();
  v9 = _HashTable.nextHole(atOrAfter:)();
  *(v1 + 56 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
  *(*(v1 + 48) + 8 * v9) = v3;
  ++*(v1 + 16);
  sub_10006A330();
}

void sub_10006621C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10006562C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100066B28(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      type metadata accessor for ControlChannelConnection();
      sub_10000D200(&unk_10009BE10, &type metadata accessor for ControlChannelConnection);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v16 = *(*(v12 + 48) + 8 * a2);
        sub_10000D200(&qword_10009B9E0, &type metadata accessor for ControlChannelConnection);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1000669F8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1000663FC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000658BC(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_100066D9C(v7 + 1);
LABEL_10:
      v13 = *v3;
      v14 = *(*v3 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for PairableHostsBrowseRegistration();
      sub_10000D200(&unk_10009BF30, type metadata accessor for PairableHostsBrowseRegistration);
      HashableByObjectIdentity.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = *(*(v13 + 48) + 8 * a2);

        v18 = static HashableByObjectIdentity.== infix(_:_:)();

        if (v18)
        {
          goto LABEL_15;
        }

        v15 = a2 + 1;
      }
    }

    sub_1000669F8();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = a1;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }
}

void sub_1000665C0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100065B50(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100067010(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      type metadata accessor for BluetoothLEConnectionControlChannelTransport();
      sub_10000D200(&qword_10009BF10, &type metadata accessor for BluetoothLEConnectionControlChannelTransport);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v16 = *(*(v12 + 48) + 8 * a2);
        sub_10000D200(&qword_10009BF18, &type metadata accessor for BluetoothLEConnectionControlChannelTransport);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1000669F8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1000667A0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100065DE0(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100067284(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      type metadata accessor for SystemXPCPeerConnection();
      sub_10000D200(&unk_10009A0E0, &type metadata accessor for SystemXPCPeerConnection);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v16 = *(*(v12 + 48) + 8 * a2);
        sub_10000D200(&qword_10009B9E8, &type metadata accessor for SystemXPCPeerConnection);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_1000669F8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_100066980(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100078AC0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}