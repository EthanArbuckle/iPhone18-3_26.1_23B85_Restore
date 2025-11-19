uint64_t sub_1005D1D0C(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v7 = a3[3];
  v8 = a3[4];
  sub_10002CDC0(a3, v7);
  result = (*(v8 + 8))(v7, v8);
  if (v10)
  {
    v11 = sub_1005D064C(a1, a2, result, v10, a4);

    return v11 | ((HIDWORD(v11) & 1) << 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005D1E14()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1005D1E98(void *a1)
{
  v28 = 0;
  v2 = [objc_opt_self() sharedManager];
  if (!v2)
  {
LABEL_15:
    if (!v28)
    {
      return v2;
    }

    goto LABEL_16;
  }

  v3 = [a1 encryptedPayload];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v5, v7);
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [a1 authTag];
  if (v9)
  {
    v10 = v9;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v11, v13);
  }

  else
  {
    v14.super.isa = 0;
  }

  v15 = [a1 nonce];
  if (v15)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v17, v19);
  }

  else
  {
    v20.super.isa = 0;
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v22 = [v2 decryptMessage:v8.super.isa authTag:v14.super.isa nonce:v20.super.isa bluetoothID:isa cachedDevices:1 errorCode:&v28];

  if (!v22)
  {
    v2 = 0;
    goto LABEL_15;
  }

  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v28)
  {
    return v2;
  }

LABEL_16:
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_100984EF0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to decrypt message", v26, 2u);
  }

  return v2;
}

void sub_1005D2170()
{
  v1 = v0;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Configuring CBServer", v5, 2u);
  }

  v6 = *(v1 + 16);
  v7 = *(v1 + 48);
  [v7 setDispatchQueue:v6];
  if (qword_100973B20 != -1)
  {
    swift_once();
  }

  [v7 setBleListenPSM:word_1009A0CB8];
  v8 = swift_allocObject();
  swift_weakInit();
  v15 = sub_1005D7EF0;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1005D2AC8;
  v14 = &unk_1008E96F0;
  v9 = _Block_copy(&v11);

  [v7 setAcceptHandler:v9];
  _Block_release(v9);
  v15 = sub_1005D2BE4;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1005CC610;
  v14 = &unk_1008E9718;
  v10 = _Block_copy(&v11);
  [v7 activateWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_1005D23E4(void *a1, void (*a2)(void))
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100984EF0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Accepted connection", v7, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v9 = *(Strong + 72);
  v10 = v9;

  if (!v9 || (sub_1000276B4(0, &unk_100985A20, CBConnection_ptr), v11 = a1, v12 = static NSObject.== infix(_:_:)(), v10, v11, (v12 & 1) == 0))
  {
LABEL_8:
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "New connection", v15, 2u);
    }

    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    if (v16)
    {
      v17 = *(v16 + 72);
      *(v16 + 72) = a1;

      v18 = a1;
    }

    swift_beginAccess();
    v19 = swift_weakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + 16);

      swift_beginAccess();
      v21 = swift_weakLoadStrong();
      if (v21)
      {
        v22 = *(v21 + 72);
        if (v22)
        {
          v23 = v22;

          [v23 setDispatchQueue:v20];
        }

        else
        {
        }
      }
    }
  }

  a2(0);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v27 = 136315394;
    v28 = [v24 peerDevice];
    v29 = [v28 identifier];

    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 0xD000000000000015;
      v32 = 0x8000000100789F30;
    }

    v33 = sub_10000C4E4(v30, v32, v46);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    v34 = [v24 peerDevice];
    v35 = [v34 idsDeviceID];

    if (v35)
    {
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0xD000000000000015;
      v38 = 0x8000000100789F30;
    }

    v39 = sub_10000C4E4(v36, v38, v46);

    *(v27 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v25, v26, "connection peer device: %s, idsID: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v40 = swift_weakLoadStrong();
  if (v40)
  {
    *(v40 + 24) = 1;
  }

  swift_beginAccess();
  v41 = swift_weakLoadStrong();
  if (v41)
  {
    if (*(v41 + 32))
    {
      v42 = *(v41 + 40);
      v43 = *(v41 + 32);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      (*(v42 + 24))(ObjectType, v42);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005D296C(v24);
  }

  return result;
}

void sub_1005D296C(void *a1)
{
  v3 = [objc_allocWithZone(CBReadRequest) init];
  [v3 setMinLength:1];
  [v3 setMaxLength:500];
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = a1;
  v10[4] = sub_1005D7F00;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100011678;
  v10[3] = &unk_1008E9790;
  v5 = _Block_copy(v10);
  v6 = v3;

  v7 = a1;

  [v6 setCompletion:v5];
  _Block_release(v5);
  v8 = *(v1 + 72);
  if (v8)
  {
    v9 = v8;
    [v9 readWithCBReadRequest:v6];
  }
}

void sub_1005D2AC8(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

void sub_1005D2B80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1005D2BE4(uint64_t a1)
{
  if (a1)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100984EF0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Encountered error while activating CBServer %@", v3, 0xCu);
      sub_100005508(v4, &qword_100975400, &qword_1007F65D0);

LABEL_10:
    }
  }

  else
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100984EF0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Activated CBServer", v8, 2u);
      goto LABEL_10;
    }
  }
}

void sub_1005D2DE0(void *a1, uint64_t *a2, NSObject *a3)
{
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &ObjectType - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &ObjectType - v16;
  v18 = [a1 error];
  if (v18)
  {

    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100984EF0);
    v20 = a1;
    v108 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v108, v21))
    {
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = [v20 error];
    if (v24)
    {
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    *(v22 + 4) = v24;
    *v23 = v25;
    _os_log_impl(&_mh_execute_header, v108, v21, "Encountered error while trying to read: %@", v22, 0xCu);
    sub_100005508(v23, &qword_100975400, &qword_1007F65D0);

LABEL_18:

LABEL_19:
    v35 = v108;
LABEL_20:

    return;
  }

  v26 = [a1 data];
  if (!v26)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100984EF0);
    v108 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v108, v33))
    {
      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v108, v33, "data is nil!", v34, 2u);
    goto LABEL_18;
  }

  v107 = a3;
  v27 = v26;
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v30 >> 62;
  v108 = v28;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_35;
    }

    isa = v28[2].isa;
    v36 = v28[3].isa;
    v38 = __OFSUB__(v36, isa);
    v39 = v36 - isa;
    if (!v38)
    {
      if (v39)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v31)
  {
    if (!__OFSUB__(HIDWORD(v28), v28))
    {
      if (HIDWORD(v28) != v28)
      {
        goto LABEL_26;
      }

LABEL_35:
      if (qword_100973B10 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000C4AC(v51, qword_100984EF0);
      v107 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v107, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v107, v52, "data is length 0!", v53, 2u);
      }

      sub_100026AC0(v108, v30);
      v35 = v107;
      goto LABEL_20;
    }

    goto LABEL_75;
  }

  if (!BYTE6(v30))
  {
    goto LABEL_35;
  }

LABEL_26:
  v106 = a2;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_10000C4AC(v40, qword_100984EF0);
  sub_100294008(v28, v30);
  v42 = v28;
  v105 = v41;
  v43 = Logger.logObject.getter();
  v44 = v30;
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v45))
  {
    v104 = v11;
    v46 = v44;
    v47 = swift_slowAlloc();
    v48 = v47;
    *v47 = 134217984;
    if (v31 == 2)
    {
      v58 = v108[2].isa;
      v57 = v108[3].isa;
      v38 = __OFSUB__(v57, v58);
      v50 = v57 - v58;
      v49 = v106;
      if (!v38)
      {
        goto LABEL_45;
      }

      __break(1u);
    }

    else
    {
      v49 = v106;
      if (v31 == 1)
      {
        LODWORD(v50) = HIDWORD(v108) - v108;
        if (!__OFSUB__(HIDWORD(v108), v108))
        {
          v50 = v50;
LABEL_45:
          *(v47 + 4) = v50;
          sub_100026AC0(v108, v46);
          v59 = v45;
          v54 = v46;
          _os_log_impl(&_mh_execute_header, v43, v59, "Got data of length %ld", v48, 0xCu);

          v56 = v104;
          v55 = v49;
          goto LABEL_46;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }
    }

    v50 = BYTE6(v46);
    goto LABEL_45;
  }

  sub_100026AC0(v42, v44);
  v54 = v44;
  v55 = v106;
  v56 = v11;
LABEL_46:

  v60 = v55[9];
  if (v60)
  {
    v61 = [v60 peerDevice];
    v62 = [v61 identifier];

    if (v62)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  UUID.init(uuidString:)();

  if ((*(v56 + 48))(v9, 1, v10) == 1)
  {
    sub_100005508(v9, &unk_100976120, &qword_1007F9260);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Connection with no peer device? Check whether you set self.connection for CBServer", v65, 2u);
    }

    sub_100026AC0(v108, v54);

    return;
  }

  (*(v56 + 32))(v17, v9, v10);
  v66 = [objc_opt_self() sharedTransport];
  if (!v66)
  {
LABEL_77:
    __break(1u);
    return;
  }

  v67 = v66;
  v68 = UUID._bridgeToObjectiveC()().super.isa;
  v69 = [v67 idsDeviceForBluetoothID:v68];

  if (!v69)
  {
    v107 = v54;
    (*(v56 + 16))(v15, v17, v10);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v109[0] = v106;
      *v84 = 136315138;
      sub_1000054C0(&qword_100978CE0, &type metadata accessor for UUID);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v88 = *(v56 + 8);
      v88(v15, v10);
      v89 = sub_10000C4E4(v85, v87, v109);

      *(v84 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v82, v83, "Could not find IDS device for BT UUID %s", v84, 0xCu);
      sub_10000C60C(v106);

      sub_100026AC0(v108, v107);
      v88(v17, v10);
    }

    else
    {

      sub_100026AC0(v108, v107);
      v90 = *(v56 + 8);
      v90(v15, v10);
      v90(v17, v10);
    }

    return;
  }

  v104 = v56;
  v70 = objc_allocWithZone(SDAutoUnlockSessionWrapper);
  v71 = v108;
  sub_100294008(v108, v54);
  v72 = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v71, v54);
  v73 = [v70 initWithData:v72];

  if (!v73)
  {
    goto LABEL_59;
  }

  if (![v73 hasEncryptedPayload] || (v74 = v55[7], v75 = v55[8], , v76 = v74(v73, v17), v78 = v77, , v78 >> 60 == 15))
  {

LABEL_59:
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Received corrupt wrapper", v81, 2u);

      sub_100026AC0(v108, v54);
    }

    else
    {
      sub_100026AC0(v108, v54);
    }

    (*(v104 + 8))(v17, v10);
    return;
  }

  v91 = sub_1004FFD78([v73 messageType]);
  if (v91 == 13)
  {
    v92 = v73;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v107 = v78;
      v96 = v95;
      *v95 = 67109120;
      *(v95 + 1) = [v92 messageType];

      _os_log_impl(&_mh_execute_header, v93, v94, "Received unknown message type %u", v96, 8u);
      v97 = v104;

      sub_10028BCC0(v76, v107);

      sub_100026AC0(v108, v54);
    }

    else
    {
      sub_100026AC0(v108, v54);

      sub_10028BCC0(v76, v78);
      v97 = v104;
    }

    (*(v97 + 8))(v17, v10);
  }

  else
  {
    v98 = v104;
    if (v55[4])
    {
      v105 = v55[5];
      v103 = v91;
      ObjectType = swift_getObjectType();
      v109[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
      v109[4] = &off_1008EA2C0;
      v109[0] = v69;
      v99 = v54;
      v100 = *(v105 + 8);
      swift_unknownObjectRetain();
      v101 = v69;
      v100(v76, v78, v103, v109, ObjectType, v105);
      v54 = v99;
      v98 = v104;
      swift_unknownObjectRelease();
      sub_10000C60C(v109);
    }

    sub_1005D296C(v107);
    sub_10028BCC0(v76, v78);

    sub_100026AC0(v108, v54);
    (*(v98 + 8))(v17, v10);
  }
}

uint64_t sub_1005D3AEC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1005D3B0C, 0, 0);
}

uint64_t sub_1005D3B0C()
{
  v1 = v0[19];
  [*(v1 + 72) invalidate];
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[20] = sub_10000C4AC(v2, qword_100984EF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating CBConnection", v5, 2u);
  }

  v6 = [objc_allocWithZone(CBConnection) init];
  v7 = *(v1 + 72);
  *(v1 + 72) = v6;

  v8 = *(v1 + 72);
  if (v8 && ([v8 setDispatchQueue:*(v0[19] + 16)], (v9 = *(v1 + 72)) != 0))
  {
    v10 = v0[19];
    [v9 setUseCase:131088];
    v11 = *(v1 + 72);
    v0[21] = v11;
    *(v10 + 88) = 0;
    if (v11)
    {
      v12 = v0[18];
      v13 = v11;
      [v13 setConnectionFlags:256];
      [v13 setPeerDevice:v12];
      [v13 setConnectTimeoutSeconds:4.0];
      if (qword_100973B20 != -1)
      {
        swift_once();
      }

      [v13 setBlePSM:word_1009A0CB8];
      v0[2] = v0;
      v0[3] = sub_1005D3E98;
      v14 = swift_continuation_init();
      v0[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100638A98;
      v0[13] = &unk_1008E9948;
      v0[14] = v14;
      [v13 activateWithCompletion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  else
  {
    *(v0[19] + 88) = 0;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create CBConnection", v17, 2u);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005D3E98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1005D4094;
  }

  else
  {
    v3 = sub_1005D3FA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005D3FA8()
{
  v1 = v0[20];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully activated CBConnection!!!", v4, 2u);
  }

  v5 = v0[21];
  v6 = v0[19];

  *(v6 + 88) = 1;
  sub_1005D4104();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005D4094()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

void sub_1005D4104()
{
  v1 = v0;
  v2 = *v0;
  if (!v0[9] || *(v0 + 88) != 1)
  {
LABEL_46:
    if (qword_100973B10 != -1)
    {
LABEL_58:
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100984EF0);

    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;

      v25 = String.init<A>(describing:)();
      v27 = sub_10000C4E4(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, oslog, v22, "%s: Not connected yet", v23, 0xCu);
      sub_10000C60C(v24);
    }

    else
    {
    }

    return;
  }

  swift_beginAccess();
  while (1)
  {
    v3 = v1[10];
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v17 = v1[10];
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        return;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    swift_beginAccess();
    v4 = v1[10];
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      break;
    }

    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_9:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v6 = *(v4 + 32);
    }

    v7 = v6;
    if (v5)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_56;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_57;
      }

      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_56;
      }
    }

    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_55;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v1[10] = v4;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v5)
      {
        goto LABEL_26;
      }

      v11 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v5)
      {
LABEL_26:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_27;
      }

      v11 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_27:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v1[10] = v4;
    v11 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_28:

    if (v4 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_61;
      }

      memmove((v11 + 32), (v11 + 40), 8 * (v19 - 1));
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v20 - 1;
      if (__OFSUB__(v20, 1))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    else
    {
      v13 = *(v11 + 16);
      memmove((v11 + 32), (v11 + 40), 8 * v13 - 8);
      v14 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_45;
      }
    }

    *(v11 + 16) = v14;
    v1[10] = v4;
    swift_endAccess();
    v15 = v1[9];
    if (v15)
    {
      v16 = v15;
      [v16 writeWithCBWriteRequest:v7];
    }
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    v18 = v1[10];
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_60;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

unint64_t sub_1005D4540(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v89 = a1;
  v90 = a2;
  v88 = *v4;
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v83 - v10;
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v83 - v14;
  v16 = v4[9];
  if (v16 && (v17 = [v16 peerDevice], v18 = objc_msgSend(v17, "idsDeviceID"), v17, v18))
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = a3[3];
  v23 = a3[4];
  sub_10002CDC0(a3, v22);
  v24 = (*(v23 + 8))(v22, v23);
  v26 = &selRef_finishedEventForRecordID_withResults_;
  if (v21)
  {
    if (v25)
    {
      if (v19 == v24 && v21 == v25)
      {

        goto LABEL_34;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v86 = v6;
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000C4AC(v29, qword_100984EF0);
    sub_1002A9938(a3, aBlock);

    v6 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v6, v30);
    v87 = v11;
    if (v31)
    {
      v85 = v30;
      v32 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v95 = v84;
      *v32 = 136315394;
      v33 = v5[9];
      if (v33 && (v34 = [v33 peerDevice], v35 = objc_msgSend(v34, "idsDeviceID"), v34, v35))
      {
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
      }

      else
      {
        v36 = 0xD000000000000015;
        v38 = 0x8000000100789F30;
      }

      v39 = sub_10000C4E4(v36, v38, &v95);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      v40 = v92;
      v41 = v93;
      sub_10002CDC0(aBlock, v92);
      v42 = (*(v41 + 1))(v40, v41);
      if (v43)
      {
        v44 = v42;
      }

      else
      {
        v44 = 0xD000000000000015;
      }

      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0x8000000100789F30;
      }

      sub_10000C60C(aBlock);
      v46 = sub_10000C4E4(v44, v45, &v95);

      *(v32 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v6, v85, "peer device changed from %s to %s. Invalidating old BT connection", v32, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v6) = v86;
      v26 = &selRef_finishedEventForRecordID_withResults_;
    }

    else
    {

      sub_10000C60C(aBlock);
      LOBYTE(v6) = v86;
    }
  }

  else
  {
    if (!v25)
    {
      goto LABEL_34;
    }

    v87 = v11;
  }

  v47 = v26;
  v48 = [objc_allocWithZone(CBDevice) v26[486]];
  v49 = a3[3];
  v50 = a3[4];
  sub_10002CDC0(a3, v49);
  (*(v50 + 48))(v49, v50);
  v51 = type metadata accessor for UUID();
  v52 = *(v51 - 8);
  result = (*(v52 + 48))(v15, 1, v51);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  UUID.uuidString.getter();
  v54 = String._bridgeToObjectiveC()();

  (*(v52 + 8))(v15, v51);
  [v48 setIdentifier:v54];

  v55 = type metadata accessor for TaskPriority();
  v56 = v87;
  (*(*(v55 - 8) + 56))(v87, 1, 1, v55);
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = v5;
  *(v57 + 40) = v48;
  v59 = v89;
  v58 = v90;
  *(v57 + 48) = v89;
  *(v57 + 56) = v58;
  *(v57 + 64) = v6;

  sub_100294008(v59, v58);
  sub_1002B3098(0, 0, v56, &unk_10080CDA0, v57);

  v26 = v47;
LABEL_34:
  v60 = sub_1005D5620(v89, v90, a3, v6);
  v62 = v61 >> 60;
  if (v61 >> 60 == 15)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000C4AC(v72, qword_100984EF0);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v75 = 136315138;
      v95 = v5;

      v77 = String.init<A>(describing:)();
      v79 = sub_10000C4E4(v77, v78, aBlock);

      *(v75 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v73, v74, "%s: Error encrypting message", v75, 0xCu);
      sub_10000C60C(v76);
    }

    if (v5[4])
    {
      v80 = v5[5];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v71 = 1;
      v81 = sub_100010F88(1, 0xD000000000000018, 0x8000000100798200);
      (*(v80 + 16))(v81);

      swift_unknownObjectRelease();
    }

    else
    {
      v71 = 1;
    }
  }

  else
  {
    v63 = v60;
    v64 = v61;
    v65 = [objc_allocWithZone(CBWriteRequest) v26[486]];
    sub_10028088C(&unk_100985A50, &qword_1007F8340);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1007F5670;
    *(v66 + 32) = v63;
    *(v66 + 40) = v64;
    sub_100294008(v63, v64);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v65 setDataArray:isa];

    v68 = swift_allocObject();
    *(v68 + 16) = v63;
    *(v68 + 24) = v64;
    v93 = sub_1005D8008;
    v94 = v68;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    v92 = &unk_1008E98D0;
    v69 = _Block_copy(aBlock);
    sub_100294008(v63, v64);

    [v65 setCompletion:v69];
    _Block_release(v69);
    swift_beginAccess();
    v70 = v65;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v5[10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v82 = *((v5[10] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10028BCC0(v63, v64);

    v71 = 0;
  }

  LOBYTE(aBlock[0]) = v62 < 0xF;
  return v71 | ((v62 < 0xF) << 32);
}

uint64_t sub_1005D4F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 160) = a8;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 72) = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 96) = v10;
  v11 = *(v10 - 8);
  *(v8 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v13 = type metadata accessor for DispatchQoS();
  *(v8 + 120) = v13;
  v14 = *(v13 - 8);
  *(v8 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v8 + 144) = v16;
  *v16 = v8;
  v16[1] = sub_1005D5084;

  return sub_1005D3AEC(a5);
}

uint64_t sub_1005D5084()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005D51CC, 0, 0);
  }

  else
  {
    v4 = v3[17];
    v5 = v3[14];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1005D51CC()
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "CBConnection activation failed with error: %@. Is the other device running CBServer?", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v9 = v0[9];

  v10 = *(v9 + 72);
  if (v10)
  {
    [v10 invalidate];
  }

  v11 = v0[19];
  v12 = v0[14];
  v28 = v0[16];
  v29 = v0[15];
  v14 = v0[12];
  v13 = v0[13];
  v15 = *(v0 + 160);
  v16 = v0[10];
  v17 = v0[11];
  v18 = v0[9];
  v26 = v0[17];
  v27 = *(v18 + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v11;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  *(v19 + 48) = v15;
  v0[6] = sub_1005D8010;
  v0[7] = v19;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E9920;
  v20 = _Block_copy(v0 + 2);
  swift_errorRetain();

  sub_100294008(v16, v17);
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1000054C0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v13 + 8))(v12, v14);
  (*(v28 + 8))(v26, v29);
  v21 = v0[7];

  v22 = v0[17];
  v23 = v0[14];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1005D554C(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = *(result + 40);
    v2 = *(result + 32);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = _convertErrorToNSError(_:)();
    v4 = sub_1004FFBC4(v3, 25);
    (*(v1 + 16))(v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005D5620(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v5 = v4;
  v9 = *v4;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100984EF0);
  sub_1002A9938(a3, v49);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v46 = a2;
    v47 = v4;
    v48 = swift_slowAlloc();
    *v13 = 136315394;

    v14 = String.init<A>(describing:)();
    v16 = sub_10000C4E4(v14, v15, &v48);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = v50;
    v18 = v51;
    sub_10002CDC0(v49, v50);
    v19 = (*(v18 + 8))(v17, v18);
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xD000000000000015;
    }

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0x8000000100789F30;
    }

    sub_10000C60C(v49);
    v23 = sub_10000C4E4(v21, v22, &v48);

    *(v13 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: Beginning encryption with key for device %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000C60C(v49);
  }

  v24 = [objc_opt_self() sharedManager];
  if (!v24)
  {
    v30 = 0;
    goto LABEL_16;
  }

  v25.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v26 = a3[3];
  v27 = a3[4];
  sub_10002CDC0(a3, v26);
  (*(v27 + 8))(v26, v27);
  if (v28)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v48 = 0;
  v49[0] = 0;
  v47 = 0;
  v34 = [v24 encryptMessageData:v25.super.isa deviceID:v29 encryptedMessage:v49 authTag:&v48 nonce:{&v47, v46}];

  v35 = v47;
  v24 = v48;
  v30 = v49[0];
  if (!v34)
  {
    v31 = v47;
    v24 = v24;
    goto LABEL_27;
  }

  if (!v49[0])
  {
    v31 = v47;
    v24 = v24;
    if (v5[4])
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (!v48)
  {
    v31 = v47;
LABEL_27:
    v30 = v30;
    if (v5[4])
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (!v47)
  {
    v24 = v48;
    v30 = v30;
LABEL_16:
    v31 = 0;
    if (v5[4])
    {
LABEL_17:
      v32 = v5[5];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v33 = sub_100010F88(1, 0xD000000000000019, 0x8000000100798220);
      (*(v32 + 16))(v33);

      swift_unknownObjectRelease();
LABEL_29:

      return 0;
    }

LABEL_28:

    goto LABEL_29;
  }

  v36 = objc_allocWithZone(SDAutoUnlockSessionWrapper);
  v37 = v35;
  v38 = v24;
  v39 = v30;
  v40 = [v36 init];
  if (v40)
  {
    v41 = v40;
    [v40 setEncryptedPayload:v39];
    [v41 setAuthTag:v38];
    [v41 setNonce:v37];
    [v41 setMessageType:a4 + 2006];
    v42 = [v41 data];
    if (v42)
    {
      v43 = v42;
      v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v44;
    }
  }

  else
  {
  }

  return 0;
}

void sub_1005D5B98(uint64_t a1, unint64_t a2)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100984EF0);
  sub_100294008(a1, a2);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100026AC0(a1, a2);
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = Data.description.getter();
    v10 = sub_10000C4E4(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Wrote data %s", v6, 0xCu);
    sub_10000C60C(v7);
  }
}

id sub_1005D5D0C()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100984EF0);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: Disconnecting", v6, 0xCu);
    sub_10000C60C(v7);
  }

  result = v1[9];
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

uint64_t sub_1005D5EB0()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1005D5F80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1005D5FDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1005D6028()
{
  v1 = v0;
  if (!*(v0 + 32) || (, isCancelled = swift_task_isCancelled(), result = , (isCancelled & 1) == 0))
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100984EF0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      type metadata accessor for ResponseTimer();

      v9 = String.init<A>(describing:)();
      v11 = sub_10000C4E4(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Timer cancelled", v7, 0xCu);
      sub_10000C60C(v8);
    }

    if (*(v1 + 32))
    {
      v12 = *(v1 + 32);

      Task.cancel()();

      v13 = *(v1 + 32);
    }

    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t sub_1005D6208(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005D6330, 0, 0);
}

uint64_t sub_1005D6330()
{
  v25 = v0;
  if (*(v0[4] + 32))
  {
    sub_1005D6028();
  }

  v1 = v0[11];
  ContinuousClock.init()();
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  v0[12] = sub_10000C4AC(v3, qword_100984EF0);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    v0[2] = v6;
    type metadata accessor for ResponseTimer();

    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: Starting timer for %ld sec", v8, 0x16u);
    sub_10000C60C(v9);
  }

  v13 = v0[7];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[6];
  v17 = v0[3];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v18 = *(v16 + 8);
  v0[13] = v18;
  v0[14] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v15);
  v19 = async function pointer to ContinuousClock.sleep(until:tolerance:)[1];
  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_1005D65C0;
  v21 = v0[11];
  v22 = v0[8];

  return ContinuousClock.sleep(until:tolerance:)(v22, 0, 0, 1);
}

uint64_t sub_1005D65C0()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 128) = v0;

  v4(v5, v6);
  if (v0)
  {
    v7 = sub_1005D67EC;
  }

  else
  {
    v7 = sub_1005D6740;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005D6740()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[4];
  sub_1005D6990();
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005D67EC()
{
  v1 = v0[16];
  v2 = v0[12];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ran into error creating timer: %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];
  v15 = v0[4];
  sub_1005D6990();
  (*(v11 + 8))(v10, v12);

  v16 = v0[1];

  return v16();
}

void sub_1005D6990()
{
  v1 = v0;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for ResponseTimer();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Timer fired", v5, 0xCu);
    sub_10000C60C(v6);
  }

  if (*(v1 + 16))
  {
    v10 = *(v1 + 16);
    swift_unknownObjectRetain();
    sub_100430E2C();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1005D6B1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1005D6B94()
{
  result = qword_100985A10;
  if (!qword_100985A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985A10);
  }

  return result;
}

uint64_t sub_1005D6C04(void *a1)
{
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  *(v1 + 24) = 1;
  *(v1 + 48) = sub_1005D8990;
  *(v1 + 56) = 0;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 defaultCenter];
  v6 = qword_100973B18;

  if (v6 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v1 selector:"handleBLEMessage:" name:qword_1009A0CB0 object:0];

  return v1;
}

uint64_t sub_1005D6D00(void *a1)
{
  *(v1 + 72) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  v3 = objc_allocWithZone(CBServer);
  v4 = a1;
  *(v1 + 48) = [v3 init];
  *(v1 + 80) = _swiftEmptyArrayStorage;
  *(v1 + 88) = 0;
  *(v1 + 56) = sub_1005D8990;
  *(v1 + 64) = 0;
  sub_1005D2170();
  return v1;
}

void *sub_1005D6D8C(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v3 = [objc_allocWithZone(RPCompanionLinkClient) init];
  v1[4] = v3;
  [v3 setDispatchQueue:a1];
  sub_1005CFD84(0);
  sub_1005CFD84(1);
  sub_1005CFD84(2);
  sub_1005CFD84(3);
  sub_1005CFD84(4);
  sub_1005CFD84(5);
  sub_1005CFD84(6);
  sub_1005CFD84(7);
  sub_1005CFD84(8);
  sub_1005CFD84(9);
  sub_1005CFD84(10);
  sub_1005CFD84(11);
  sub_1005CFD84(12);
  v4 = v1[4];
  v8[4] = sub_1005CFB34;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1005CC610;
  v8[3] = &unk_1008E96A0;
  v5 = _Block_copy(v8);
  v6 = v4;
  [v6 activateWithCompletion:v5];
  _Block_release(v5);

  return v1;
}

char *sub_1005D6EEC(void *a1)
{
  type metadata accessor for SDAuthenticationTransportNearbyAgent();
  swift_allocObject();
  v2 = a1;
  v3 = sub_1005D6C04(v2);
  v4 = objc_allocWithZone(type metadata accessor for SDAuthenticationTransportIDSServiceLocal());
  v5 = v2;
  sub_1005CEF70(v5);
  v7 = v6;
  v8 = objc_allocWithZone(type metadata accessor for SDAuthenticationTransportIDSServiceInternet());
  v9 = v5;
  sub_1005CEF70(v9);
  v11 = v10;
  type metadata accessor for SDAuthenticationTransportRapportBTOnly();
  v12 = swift_allocObject();
  *(v12 + 56) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  v13 = objc_allocWithZone(RPCompanionLinkClient);
  v14 = v9;
  v15 = [v13 init];
  *(v12 + 48) = v15;
  *(v12 + 16) = v14;
  *(v12 + 24) = 0;
  [v15 setDispatchQueue:v14];
  *(v12 + 64) = 0x40000600102;
  type metadata accessor for SDAuthenticationTransportRapportAWDLOnly();
  v16 = swift_allocObject();
  *(v16 + 56) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v17 = objc_allocWithZone(RPCompanionLinkClient);
  v18 = v14;
  v19 = [v17 init];
  *(v16 + 48) = v19;
  *(v16 + 16) = v18;
  *(v16 + 24) = 0;
  [v19 setDispatchQueue:v18];
  *(v16 + 64) = 0x8040000220002;
  type metadata accessor for SDAuthenticationTransportCoreBluetooth();
  swift_allocObject();
  v20 = v18;
  v21 = sub_1005D6D00(v20);

  v22 = type metadata accessor for SDAuthenticationTransportManager();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *&v23[v24] = v25;
  *&v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportInfraWiFiTransportsByIdentifier] = &_swiftEmptyDictionarySingleton;
  *&v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_queue] = v20;
  v26 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport];
  *v26 = v3;
  v26[1] = &off_1008E9640;
  v27 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport];
  *v27 = v7;
  *(v27 + 1) = &off_1008E9600;
  v28 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport];
  *v28 = v11;
  *(v28 + 1) = &off_1008E95C0;
  v29 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT];
  *v29 = v12;
  v29[1] = &off_1008E9580;
  v30 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL];
  *v30 = v16;
  v30[1] = &off_1008E9580;
  v31 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport];
  *v31 = v21;
  v31[1] = &off_1008E9540;
  type metadata accessor for SDAuthenticationTransportRapportReceiver();
  swift_allocObject();
  v32 = v20;
  *&v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportReceiver] = sub_1005D6D8C(v32);
  v67.receiver = v23;
  v67.super_class = v22;
  v33 = objc_msgSendSuper2(&v67, "init");
  v34 = *&v33[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport];
  v35 = *&v33[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport + 8];
  ObjectType = swift_getObjectType();
  v37 = *(v35 + 16);
  v38 = v33;
  swift_unknownObjectRetain();
  v37(v33, &off_1008E9680, ObjectType, v35);
  swift_unknownObjectRelease();
  v39 = *&v38[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport];
  v40 = *&v38[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport + 8];
  v41 = swift_getObjectType();
  v42 = *(v40 + 16);
  v43 = v38;
  swift_unknownObjectRetain();
  v42(v33, &off_1008E9680, v41, v40);
  swift_unknownObjectRelease();
  v44 = *&v43[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport];
  v45 = *&v43[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport + 8];
  v46 = swift_getObjectType();
  v47 = *(v45 + 16);
  v48 = v43;
  swift_unknownObjectRetain();
  v47(v33, &off_1008E9680, v46, v45);
  swift_unknownObjectRelease();
  v49 = *&v48[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT];
  v50 = *&v48[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT + 8];
  v51 = swift_getObjectType();
  v52 = *(v50 + 16);
  v53 = v48;
  swift_unknownObjectRetain();
  v52(v33, &off_1008E9680, v51, v50);
  swift_unknownObjectRelease();
  v54 = *&v53[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL];
  v55 = *&v53[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL + 8];
  v56 = swift_getObjectType();
  v57 = *(v55 + 16);
  v58 = v53;
  swift_unknownObjectRetain();
  v57(v33, &off_1008E9680, v56, v55);
  swift_unknownObjectRelease();
  v59 = *&v58[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport];
  v60 = *&v58[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport + 8];
  v61 = swift_getObjectType();
  v62 = *(v60 + 16);
  v63 = v58;
  swift_unknownObjectRetain();
  v62(v33, &off_1008E9680, v61, v60);
  swift_unknownObjectRelease();

  v64 = *&v63[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportReceiver];

  v65 = *(v64 + 16);
  *(v64 + 16) = v33;
  *(v64 + 24) = &off_1008E9680;

  swift_unknownObjectRelease();
  return v63;
}

unint64_t sub_1005D745C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v53 - v8;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100984EF0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Beginning encryption", v13, 2u);
  }

  v14 = [objc_opt_self() sharedManager];
  if (!v14)
  {
    v20 = 0;
    v21 = 0;
LABEL_24:
    v26 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v26, v48, "Error converting message to data", v49, 2u);
    }

    v47 = 0;
    v46 = 10;
    goto LABEL_27;
  }

  v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = a3[3];
  v17 = a3[4];
  sub_10002CDC0(a3, v16);
  (*(v17 + 8))(v16, v17);
  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  aBlock[0] = 0;
  v57 = 0;
  v58 = 0;
  v22 = [v14 encryptMessageData:v15.super.isa deviceID:v19 encryptedMessage:aBlock authTag:&v58 nonce:&v57];

  v21 = v57;
  v23 = v58;
  v14 = aBlock[0];
  if (!v22)
  {
    v21 = v57;
LABEL_21:
    v20 = v23;
    v14 = v14;
    goto LABEL_24;
  }

  if (!aBlock[0])
  {
    v21 = v57;
    v20 = v23;
    goto LABEL_24;
  }

  if (!v58)
  {
    v21 = v57;
    v14 = v14;
    v20 = 0;
    goto LABEL_24;
  }

  if (!v57)
  {
    goto LABEL_21;
  }

  v24 = objc_allocWithZone(SDAutoUnlockSessionWrapper);
  v21 = v21;
  v20 = v23;
  v14 = v14;
  v25 = [v24 init];
  v26 = v25;
  if (!v25 || ([v25 setEncryptedPayload:v14], [v26 setAuthTag:v20], [v26 setNonce:v21], [v26 setMessageType:a4 + 2006], (v27 = [v26 data]) == 0))
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Error encrypting message", v52, 2u);
    }

    v47 = 0;
    v46 = 10;
    v14 = v20;
    v20 = v21;
    v21 = v50;
    goto LABEL_27;
  }

  v28 = v27;
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v30;
  v55 = v29;

  v53 = [objc_allocWithZone(SFBLEDevice) init];
  v32 = a3[3];
  v31 = a3[4];
  sub_10002CDC0(a3, v32);
  (*(v31 + 48))(v32, v31);
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  result = (*(v34 + 48))(v9, 1, v33);
  if (result != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v34 + 8))(v9, v33);
    v37 = v53;
    [v53 setIdentifier:isa];

    [v37 setUseBTPipe:1];
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Sending data", v40, 2u);
    }

    v41 = [objc_opt_self() sharedNearbyAgent];
    v43 = v54;
    v42 = v55;
    v44 = Data._bridgeToObjectiveC()().super.isa;
    aBlock[4] = sub_1005CDEB4;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005CC610;
    aBlock[3] = &unk_1008E9858;
    v45 = _Block_copy(aBlock);
    [v41 sendUnlockData:v44 toBLEDevice:v37 completion:v45];
    _Block_release(v45);

    sub_100026AC0(v42, v43);
    v46 = 0;
    v47 = 1;
LABEL_27:

    LOBYTE(aBlock[0]) = v47;
    return v46 | (v47 << 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005D7B38()
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100984EF0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Cannot send message over unsupported transport", v3, 2u);
  }

  return 0x100000000;
}

void sub_1005D7C28()
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100984EF0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Cannot disconnect over unsupported transport", v2, 2u);
  }
}

unint64_t sub_1005D7D10(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D8160, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005D7D5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_100012854(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100577CA0(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_100012854(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1002D2190();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = *v23;
    *v23 = a1;
    v23[1] = &off_1008E9580;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  v27 = (v22[7] + 16 * v11);
  *v27 = a1;
  v27[1] = &off_1008E9580;
  v28 = v22[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v29;
}

uint64_t sub_1005D7F2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005C04;

  return sub_1005D4F28(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1005D8010()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return sub_1005D554C(*(v0 + 16));
}

unint64_t sub_1005D808C()
{
  result = qword_100985A80;
  if (!qword_100985A80)
  {
    sub_100280938(&qword_100975100, &qword_1007FBA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985A80);
  }

  return result;
}

void sub_1005D8108(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v52[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (qword_100973B10 == -1)
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
  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100984EF0);
  v18 = a2;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v51 = v5;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = a1;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v52[0] = v25;
    *v22 = 138412546;
    *(v22 + 4) = v18;
    *v24 = v18;
    *(v22 + 12) = 2080;
    v26 = v18;
    *(v22 + 14) = sub_10000C4E4(a3, a4, v52);
    _os_log_impl(&_mh_execute_header, v19, v20, "Received: %@ from: %s", v22, 0x16u);
    sub_100005508(v24, &qword_100975400, &qword_1007F65D0);
    a1 = v23;

    sub_10000C60C(v25);
  }

  v27 = [v18 type];
  v28 = v27;
  v29 = sub_1004FFD78(v27);
  if (v29 == 13)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 33554688;
      *(v32 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received unknown message type %hu", v32, 6u);
    }
  }

  else
  {
    v33 = v29;
    v34 = a3;
    v35 = String._bridgeToObjectiveC()();
    v36 = [a1 deviceForFromID:v35];

    if (v36)
    {
      v37 = v51 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v38 = *(v37 + 8);
        v39 = [v18 data];
        if (v39)
        {
          v40 = v39;
          ObjectType = swift_getObjectType();
          v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          v52[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
          v52[4] = &off_1008EA2C0;
          v52[0] = v36;
          v45 = *(v38 + 8);
          v46 = v36;
          v45(v42, v44, v33, v52, ObjectType, v38);

          sub_100026AC0(v42, v44);
          swift_unknownObjectRelease();
          sub_10000C60C(v52);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v52[0] = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_10000C4E4(v34, a4, v52);
        _os_log_impl(&_mh_execute_header, v47, v48, "Could not find same account device matching fromID %s", v49, 0xCu);
        sub_10000C60C(v50);
      }
    }
  }
}

void sub_1005D8644(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_100973B10 == -1)
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
  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100984EF0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_10000C4E4(a1, a2, &v20);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received confirmation that message: %s sent success: %{BOOL}d", v17, 0x12u);
    sub_10000C60C(v18);
  }
}

uint64_t sub_1005D8888(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1005D8990(void *a1)
{

  return sub_1000469B8(a1);
}

uint64_t sub_1005D89EC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100985A90);
  v1 = sub_10000C4AC(v0, qword_100985A90);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005D8AB4()
{
  v1 = *(_s22GuestModeUnlockPairingV17InitialKeyContextVMa(0) + 24);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationPrePairingRequest) init];
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

id sub_1005D8B88(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005D8C08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007FA7E0;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v7 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v7 + 64) = &off_10097BD58;
  *(v7 + 96) = &type metadata for SDAuthentication.Operation.UnpairOtherDevicesForSameFeature;
  *(v7 + 104) = &off_10097BF58;
  *(v7 + 136) = &type metadata for SDAuthentication.Operation.IncludeLongTermKeyAndAKSTokenInMessage;
  *(v7 + 144) = &off_10097BFE8;
  *(v7 + 176) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v7 + 184) = &off_10097BE18;
  *a3 = v7;
  v8 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa(0);
  *(a3 + *(v8 + 28)) = 0;
  v36 = v8;
  *(a3 + *(v8 + 32)) = 4;
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100985A90);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v33 = a3;
    v34 = v3;
    v35 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315138;
    v15 = [v10 sessionID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0xD000000000000015;
      v19 = 0x8000000100789F30;
    }

    v20 = sub_10000C4E4(v17, v19, &v37);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Process PairingRequest SessionID: %s", v13, 0xCu);
    sub_10000C60C(v14);

    a2 = v35;
    a3 = v33;
  }

  else
  {
  }

  v21 = [v10 longTermKey];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = (a3 + *(v36 + 24));
    *v26 = v23;
    v26[1] = v25;
    v27 = _s22GuestModeUnlockPairingV17InitialKeyContextVMa(0);
    sub_1005DB85C(a2 + *(v27 + 20), a3 + *(v36 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);
  }

  else
  {
    v29 = sub_100010F88(10, 0xD000000000000015, 0x800000010078CD90);
    v31 = v30;
    sub_1000115C8();
    swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v31;
    swift_willThrow();

    sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);
  }
}

id sub_1005D8FF8()
{
  v1 = *(_s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationPairingCreateSecret) init];
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

uint64_t sub_1005D9068@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.SignAndStoreRemoteLTK;
  *(v6 + 64) = &off_10097BFD0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.EnableDynamicStore;
  *(v6 + 144) = &off_10097BFB8;
  *a3 = v6;
  v7 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa(0);
  v44 = a3 + v7[6];
  *v44 = xmmword_1007F8A80;
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 6;
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100985A90);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v9;
    *v14 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling authentication pairing response: %@", v13, 0xCu);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

    a2 = v12;
  }

  v16 = [v9 token];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v9 longTermKey];
    if (v21)
    {
      v22 = v21;
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = a2;
      v26 = v25;

      v27 = (a3 + v7[8]);
      *v27 = v18;
      v27[1] = v20;
      v28 = (a3 + v7[7]);
      *v28 = v23;
      v28[1] = v26;
      v29 = _s22GuestModeUnlockPairingV18InitialLockContextVMa(0);
      v30 = (v24 + *(v29 + 24));
      v31 = *v30;
      v32 = v30[1];
      v33 = *v44;
      v34 = *(v44 + 1);
      sub_1002A9924(*v30, v32);
      sub_10028BCC0(v33, v34);
      *v44 = v31;
      *(v44 + 1) = v32;
      sub_1005DB85C(v24 + *(v29 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
      return sub_1005DB8C4(v24, _s22GuestModeUnlockPairingV18InitialLockContextVMa);
    }

    v40 = sub_100010F88(10, 0xD000000000000013, 0x800000010078CDB0);
    v42 = v41;
    sub_1000115C8();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v42;
    swift_willThrow();
    sub_100026AC0(v18, v20);
  }

  else
  {
    v36 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v38 = v37;
    sub_1000115C8();
    swift_allocError();
    *v39 = v36;
    *(v39 + 8) = v38;
    swift_willThrow();
  }

  sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV18InitialLockContextVMa);

  return sub_10028BCC0(*v44, *(v44 + 1));
}

uint64_t sub_1005D94DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepPairingCreateSecret;
  *(v6 + 64) = &off_10097BFA0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordPairing;
  *(v6 + 144) = &off_10097BF88;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.EnableDynamicStore;
  *(v6 + 184) = &off_10097BFB8;
  *a3 = v6;
  SecretContextVMa = _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa(0);
  *(a3 + *(SecretContextVMa + 28)) = 0;
  v35 = SecretContextVMa;
  *(a3 + *(SecretContextVMa + 32)) = 5;
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100985A90);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = a3;
    v34 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = [v9 sessionID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0x8000000100789F30;
      v16 = 0xD000000000000015;
    }

    v19 = sub_10000C4E4(v16, v18, &v36);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received authentication pairing create secret: %@ for sessionID %s", v12, 0x16u);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v32);

    a2 = v34;
    a3 = v33;
  }

  else
  {
  }

  v20 = [v9 token];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = (a3 + *(v35 + 24));
    *v25 = v22;
    v25[1] = v24;
    v26 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa(0);
    sub_1005DB85C(a2 + *(v26 + 20), a3 + *(v35 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);
  }

  else
  {
    v28 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);
  }
}

uint64_t sub_1005D991C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1005D8B88(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

id sub_1005D99F4()
{
  v1 = *(_s22GuestModeUnlockPairingV32HandlePairingCreateRecordContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
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

uint64_t sub_1005D9A64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepPairingCreateRecordWithPasscode;
  *(v6 + 64) = &off_10097BF70;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordPairing;
  *(v6 + 104) = &off_10097BF88;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *a3 = v6;
  RecordContextVMa = _s22GuestModeUnlockPairingV32HandlePairingCreateRecordContextVMa(0);
  v8 = (a3 + RecordContextVMa[6]);
  *v8 = xmmword_1007F8A80;
  *(a3 + RecordContextVMa[8]) = 0;
  v43 = a3;
  *(a3 + RecordContextVMa[9]) = 2;
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100985A90);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v41 = v8;
    v42 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    v39 = v14;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v15 = [v10 sessionID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0xD000000000000015;
      v19 = 0x8000000100789F30;
    }

    v20 = sub_10000C4E4(v17, v19, &v44);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received authentication pairing create record: %@ for sessionID %s", v13, 0x16u);
    sub_100005508(v39, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v40);

    v8 = v41;
    a2 = v42;
  }

  else
  {
  }

  v21 = [v10 token];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = (v43 + RecordContextVMa[7]);
    *v26 = v23;
    v26[1] = v25;
    v27 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa(0);
    v28 = (a2 + *(v27 + 24));
    v29 = *v28;
    v30 = v28[1];
    v31 = v8;
    v32 = *v8;
    v33 = v31[1];
    sub_1002A9924(*v28, v30);
    sub_10028BCC0(v32, v33);
    *v31 = v29;
    v31[1] = v30;
    sub_1005DB85C(a2 + *(v27 + 20), v43 + RecordContextVMa[5], type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);
  }

  else
  {
    v35 = sub_100010F88(10, 0xD000000000000053, 0x800000010078CDD0);
    v37 = v36;
    sub_1000115C8();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    swift_willThrow();

    sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);

    return sub_10028BCC0(*v8, v8[1]);
  }
}

uint64_t sub_1005D9EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

uint64_t sub_1005D9FB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa(0) + 20);
    v8 = _s22GuestModeUnlockPairingV25HandleConfirmationContextVMa(0);
    sub_1005DB85C(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);
  }

  return result;
}

uint64_t sub_1005DA17C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput();
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v35[-v12];
  __chkstk_darwin(v11);
  v15 = &v35[-v14];
  v16 = _s22GuestModeUnlockPairingV4FlowVMa(0);
  *(a3 + v16[6]) = _swiftEmptyArrayStorage;
  *(a3 + v16[7]) = _swiftEmptyArrayStorage;
  sub_1002A9938(a1, a3 + v16[5]);
  sub_1005DB85C(a2, a3, type metadata accessor for SDAuthenticationCommonOperationInput);
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100985A90);
  sub_1005DB85C(a2, v15, type metadata accessor for SDAuthenticationCommonOperationInput);
  sub_1005DB85C(a2, v13, type metadata accessor for SDAuthenticationCommonOperationInput);
  sub_1005DB85C(a2, v10, type metadata accessor for SDAuthenticationCommonOperationInput);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v20 = 136315650;
    v21 = v6[6];
    type metadata accessor for UUID();
    v36 = v19;
    sub_100349CFC();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = a1;
    v24 = v23;
    sub_1005DB8C4(v15, type metadata accessor for SDAuthenticationCommonOperationInput);
    v25 = sub_10000C4E4(v22, v24, &v39);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = *&v13[v6[7]];
    v27 = sub_100027340();
    v29 = v28;
    sub_1005DB8C4(v13, type metadata accessor for SDAuthenticationCommonOperationInput);
    v30 = sub_10000C4E4(v27, v29, &v39);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    if (v10[v6[8]])
    {
      v31 = 7955787;
    }

    else
    {
      v31 = 1801678668;
    }

    if (v10[v6[8]])
    {
      v32 = 0xE300000000000000;
    }

    else
    {
      v32 = 0xE400000000000000;
    }

    sub_1005DB8C4(v10, type metadata accessor for SDAuthenticationCommonOperationInput);
    v33 = sub_10000C4E4(v31, v32, &v39);

    *(v20 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v18, v36, "Begin SDAuthenticationPairingFlow %s with %s role %s", v20, 0x20u);
    swift_arrayDestroy();

    sub_1005DB8C4(a2, type metadata accessor for SDAuthenticationCommonOperationInput);
    return sub_10000C60C(v38);
  }

  else
  {

    sub_1005DB8C4(a2, type metadata accessor for SDAuthenticationCommonOperationInput);
    sub_10000C60C(a1);
    sub_1005DB8C4(v10, type metadata accessor for SDAuthenticationCommonOperationInput);
    sub_1005DB8C4(v13, type metadata accessor for SDAuthenticationCommonOperationInput);
    return sub_1005DB8C4(v15, type metadata accessor for SDAuthenticationCommonOperationInput);
  }
}

void sub_1005DA56C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v148 = a2;
  v143 = a3;
  v121 = _s22GuestModeUnlockPairingV25HandleConfirmationContextVMa(0);
  v4 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v125 = (&v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_100985CC8, &qword_10080CF38);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v130 = &v121 - v8;
  RecordContextVMa = _s22GuestModeUnlockPairingV32HandlePairingCreateRecordContextVMa(0);
  v9 = *(*(RecordContextVMa - 8) + 64);
  __chkstk_darwin(RecordContextVMa);
  v129 = (&v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&qword_100985CD0, &qword_10080CF40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v136 = &v121 - v13;
  SecretContextVMa = _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa(0);
  v128 = *(SecretContextVMa - 8);
  v14 = *(v128 + 64);
  v15 = __chkstk_darwin(SecretContextVMa);
  v123 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v124 = &v121 - v18;
  __chkstk_darwin(v17);
  v135 = (&v121 - v19);
  v20 = sub_10028088C(&qword_100985CD8, &qword_10080CF48);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v142 = &v121 - v22;
  v137 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa(0);
  v134 = *(v137 - 8);
  v23 = *(v134 + 64);
  v24 = __chkstk_darwin(v137);
  v126 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v127 = &v121 - v27;
  __chkstk_darwin(v26);
  v141 = (&v121 - v28);
  v29 = sub_10028088C(&qword_100985CE0, &qword_10080CF50);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v121 - v31;
  v33 = _s22GuestModeUnlockPairingV18InitialLockContextVMa(0);
  v145 = *(v33 - 8);
  v146 = v33;
  v34 = *(v145 + 64);
  v35 = __chkstk_darwin(v33);
  v139 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v140 = &v121 - v37;
  v144 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa(0);
  v138 = *(v144 - 8);
  v38 = *(v138 + 64);
  v39 = __chkstk_darwin(v144);
  v132 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v133 = &v121 - v42;
  __chkstk_darwin(v41);
  v44 = (&v121 - v43);
  v45 = sub_10028088C(&qword_100985CE8, &qword_10080CF58);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v121 - v47;
  v49 = _s22GuestModeUnlockPairingV17InitialKeyContextVMa(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v54 = &v121 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v56 = &v121 - v55;
  sub_1002A9938(a1, v149);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_100979C38, off_1008C8D28);
  if (swift_dynamicCast())
  {
    v57 = v150;
    sub_1002A9938(v148, v149);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v58 = swift_dynamicCast();
    v59 = *(v50 + 56);
    if (!v58)
    {
      v59(v48, 1, 1, v49);
      sub_100005508(v48, &qword_100985CE8, &qword_10080CF58);
      v73 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v75 = v74;
      sub_1000115C8();
      swift_allocError();
      *v76 = v73;
      *(v76 + 8) = v75;
      swift_willThrow();

      return;
    }

    v59(v48, 0, 1, v49);
    sub_1005DB924(v48, v56, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);
    sub_1005DB85C(v56, v54, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);
    v60 = v57;
    v61 = v147;
    sub_1005D8C08(v60, v54, v44);
    if (v61)
    {
      sub_1005DB8C4(v56, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);

      return;
    }

    v93 = v143;
    v143[3] = v144;
    v93[4] = &off_1008E9F60;
    v94 = sub_10002F604(v93);
    sub_1005DB924(v44, v94, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);

    v95 = _s22GuestModeUnlockPairingV17InitialKeyContextVMa;
    v96 = v56;
    goto LABEL_35;
  }

  v62 = v148;
  sub_1002A9938(a1, v149);
  sub_1000276B4(0, &qword_100979D78, off_1008C8D30);
  if (swift_dynamicCast())
  {
    v63 = v150;
    sub_1002A9938(v62, v149);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v64 = v146;
    v65 = swift_dynamicCast();
    v66 = *(v145 + 56);
    if (v65)
    {
      v66(v32, 0, 1, v64);
      v67 = v140;
      sub_1005DB924(v32, v140, _s22GuestModeUnlockPairingV18InitialLockContextVMa);
      v68 = v139;
      sub_1005DB85C(v67, v139, _s22GuestModeUnlockPairingV18InitialLockContextVMa);
      v69 = v63;
      v70 = v141;
      v71 = v147;
      sub_1005D9068(v69, v68, v141);
      if (v71)
      {
        v72 = _s22GuestModeUnlockPairingV18InitialLockContextVMa;
LABEL_25:
        sub_1005DB8C4(v67, v72);

        return;
      }

      v104 = v143;
      v143[3] = v137;
      v104[4] = &off_1008E9F78;
      v105 = sub_10002F604(v104);
      sub_1005DB924(v70, v105, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);

      v106 = _s22GuestModeUnlockPairingV18InitialLockContextVMa;
      goto LABEL_34;
    }

    v66(v32, 1, 1, v64);
    sub_100005508(v32, &qword_100985CE0, &qword_10080CF50);
    v84 = "sult, message may be replayed";
    v85 = 0xD000000000000047;
LABEL_31:
    v113 = sub_100010F88(10, v85, v84 | 0x8000000000000000);
    v115 = v114;
    sub_1000115C8();
    swift_allocError();
    *v116 = v113;
    *(v116 + 8) = v115;
    swift_willThrow();

    return;
  }

  sub_1002A9938(a1, v149);
  sub_1000276B4(0, &qword_100979D80, off_1008C8D18);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v149);
    sub_1000276B4(0, &qword_100979D88, off_1008C8D10);
    if (swift_dynamicCast())
    {
      v63 = v150;
      sub_1002A9938(v62, v149);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v87 = v136;
      v86 = v137;
      v88 = swift_dynamicCast();
      v89 = *(v134 + 56);
      if (v88)
      {
        v89(v87, 0, 1, v86);
        v67 = v127;
        sub_1005DB924(v87, v127, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);
        v90 = v126;
        sub_1005DB85C(v67, v126, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);
        v69 = v63;
        v91 = v129;
        v92 = v147;
        sub_1005D9A64(v69, v90, v129);
        if (v92)
        {
          v72 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa;
          goto LABEL_25;
        }

        v117 = v143;
        v143[3] = RecordContextVMa;
        v117[4] = &off_1008E9FA8;
        v118 = sub_10002F604(v117);
        sub_1005DB924(v91, v118, _s22GuestModeUnlockPairingV32HandlePairingCreateRecordContextVMa);

        v106 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa;
        goto LABEL_34;
      }

      v89(v87, 1, 1, v86);
      sub_100005508(v87, &qword_100985CD0, &qword_10080CF40);
      v84 = "ssage may be replayed";
      v85 = 0xD000000000000051;
    }

    else
    {
      sub_1002A9938(a1, v149);
      sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
      if (!swift_dynamicCast())
      {
        v107 = sub_100010F88(10, 0xD00000000000003ALL, 0x8000000100798340);
        v109 = v108;
        sub_1000115C8();
        swift_allocError();
        *v110 = v107;
        *(v110 + 8) = v109;
        swift_willThrow();
        return;
      }

      v63 = v150;
      sub_1002A9938(v62, v149);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v97 = v130;
      v98 = SecretContextVMa;
      v99 = swift_dynamicCast();
      v100 = *(v128 + 56);
      if (v99)
      {
        v100(v97, 0, 1, v98);
        v67 = v124;
        sub_1005DB924(v97, v124, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);
        v101 = v123;
        sub_1005DB85C(v67, v123, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);
        v69 = v63;
        v102 = v125;
        v103 = v147;
        sub_1005D9FB4(v69, v101, v125);
        if (v103)
        {
          v72 = _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa;
          goto LABEL_25;
        }

        v119 = v143;
        v143[3] = v121;
        v119[4] = &off_1008E9FC0;
        v120 = sub_10002F604(v119);
        sub_1005DB924(v102, v120, _s22GuestModeUnlockPairingV25HandleConfirmationContextVMa);

        v106 = _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa;
        goto LABEL_34;
      }

      v100(v97, 1, 1, v98);
      sub_100005508(v97, &qword_100985CC8, &qword_10080CF38);
      v84 = "for VisionUnlockiOSPairing";
      v85 = 0xD000000000000055;
    }

    goto LABEL_31;
  }

  v63 = v150;
  sub_1002A9938(v62, v149);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v77 = v142;
  v78 = v144;
  v79 = swift_dynamicCast();
  v80 = *(v138 + 56);
  if (!v79)
  {
    v80(v77, 1, 1, v78);
    sub_100005508(v77, &qword_100985CD8, &qword_10080CF48);
    v84 = "e may be replayed";
    v85 = 0xD000000000000050;
    goto LABEL_31;
  }

  v80(v77, 0, 1, v78);
  v67 = v133;
  sub_1005DB924(v77, v133, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);
  v81 = v132;
  sub_1005DB85C(v67, v132, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);
  v69 = v63;
  v82 = v135;
  v83 = v147;
  sub_1005D94DC(v69, v81, v135);
  if (v83)
  {
    v72 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa;
    goto LABEL_25;
  }

  v111 = v143;
  v143[3] = SecretContextVMa;
  v111[4] = &off_1008E9F90;
  v112 = sub_10002F604(v111);
  sub_1005DB924(v82, v112, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);

  v106 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa;
LABEL_34:
  v95 = v106;
  v96 = v67;
LABEL_35:
  sub_1005DB8C4(v96, v95);
}

void sub_1005DB700()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6C94(319, &qword_100979CE0, &unk_100979CE8, off_1008C8D38);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1005DB85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005DB8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005DB924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005DBA78()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100986090);
  v1 = sub_10000C4AC(v0, qword_100986090);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005DBE28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10028088C(&qword_100986248, &qword_10080D420);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1005DBF54(uint64_t a1, uint64_t a2)
{
  sub_10028088C(&qword_100986248, &qword_10080D420);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

char *sub_1005DC1B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for SFAirDropClient.Identifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___SDShareSheetAirDropController_browser] = 0;
  v13 = &v3[OBJC_IVAR___SDShareSheetAirDropController_realName];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR___SDShareSheetAirDropController_lockStateMonitor;
  v17 = type metadata accessor for SFLockStateMonitor();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v4[v16] = SFLockStateMonitor.init()();
  v20 = &v4[OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v4[OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v4[OBJC_IVAR___SDShareSheetAirDropController_availableNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask] = 0;
  v22 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
  v23 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  v24 = &v4[OBJC_IVAR___SDShareSheetAirDropController_sessionID];
  *v24 = a1;
  *(v24 + 1) = a2;
  *&v4[OBJC_IVAR___SDShareSheetAirDropController_queue] = a3;
  type metadata accessor for SFAirDropClient();
  (*(v9 + 104))(v12, enum case for SFAirDropClient.Identifier.shareSheet(_:), v8);
  v25 = a3;
  *&v4[OBJC_IVAR___SDShareSheetAirDropController_airDropClient] = SFAirDropClient.__allocating_init(identifier:)();
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v32, "init");
  v27 = *&v26[OBJC_IVAR___SDShareSheetAirDropController_lockStateMonitor];
  sub_1005E6290(&qword_100986258, type metadata accessor for ShareSheetAirDropController);
  v28 = v26;

  dispatch thunk of SFLockStateMonitor.delegate.setter();

  return v28;
}

uint64_t sub_1005DC514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100986090);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Beginning activate of AirDrop browser for share sheet", v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = qword_1009735E0;
  v16 = v3;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  v18 = sub_1005E6290(&qword_100977C00, type metadata accessor for AirDropActor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v16;
  v19[5] = a1;
  v19[6] = a2;

  sub_1002B3098(0, 0, v9, &unk_10080D408, v19);
}

uint64_t sub_1005DC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = type metadata accessor for NWBrowser.Descriptor();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = *(*(type metadata accessor for NWBrowser.Descriptor.Options.Scope() - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = type metadata accessor for NWBrowser.Descriptor.Options();
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005DC930, v15, 0);
}

uint64_t sub_1005DC930()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___SDShareSheetAirDropController_browser;
  if (*(v1 + OBJC_IVAR___SDShareSheetAirDropController_browser))
  {
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100986090);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "We already have a AirDrop browser for Share Sheet, ignoring", v6, 2u);
    }
  }

  else
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v11 = v0[7];
    v10 = v0[8];
    v40 = v0[10];
    v41 = v0[6];
    v12 = v0[3];
    v13 = v0[4];
    type metadata accessor for NWParameters();
    static NWParameters.airDropClientBrowserParameters(domain:type:bundleID:)();
    static NWBrowser.Descriptor.Options.Scope.all.getter();
    NWBrowser.Descriptor.Options.init(scope:)();
    NWBrowser.Descriptor.Options.applicationServiceEndpointsOnly.setter();
    v14 = *(sub_10028088C(&qword_100986240, &qword_10080D410) + 48);
    *v10 = 0x706F7264726961;
    *(v10 + 1) = 0xE700000000000000;
    (*(v8 + 16))(&v10[v14], v7, v40);
    (*(v11 + 104))(v10, enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:), v41);
    v15 = type metadata accessor for NWBrowser();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();

    v18 = NWBrowser.init(for:using:)();
    v19 = *(v1 + v2);
    *(v1 + v2) = v18;

    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_100986090);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Activating AirDrop browser for share sheet", v23, 2u);
    }

    if (*(v1 + v2))
    {
      v24 = v0[2];
      swift_allocObject();
      swift_unknownObjectWeakInit();

      NWBrowser.browseResultsChangedHandler.setter();

      if (*(v1 + v2))
      {
        v25 = *(v0[2] + OBJC_IVAR___SDShareSheetAirDropController_queue);
        v26 = *(v1 + v2);

        NWBrowser.start(queue:)();
      }
    }

    v28 = v0[11];
    v27 = v0[12];
    v29 = v0[10];
    v30 = v0[5];
    v31 = v0[2];
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v31;
    v31;
    sub_1002B281C(0, 0, v30, &unk_10080D418, v33);

    sub_1005E3058();

    (*(v28 + 8))(v27, v29);
  }

  v34 = v0[12];
  v35 = v0[8];
  v36 = v0[9];
  v37 = v0[5];

  v38 = v0[1];

  return v38();
}

void sub_1005DCDF0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005DCE4C(a1);
  }
}

void sub_1005DCE4C(void *a1)
{
  v122 = type metadata accessor for UUID();
  v2 = *(v122 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v122);
  v119 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v121 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = &v113 - v9;
  v10 = type metadata accessor for NWEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v126 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v113 - v16;
  v18 = __chkstk_darwin(v15);
  v142 = &v113 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v113 - v21;
  __chkstk_darwin(v20);
  v143 = &v113 - v23;
  v24 = type metadata accessor for NWBrowser.Result();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v144 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v136 = &v113 - v29;
  v31 = a1 + 7;
  v30 = a1[7];
  v32 = 1 << *(a1 + 32);
  v123 = _swiftEmptyArrayStorage;
  v146 = _swiftEmptyArrayStorage;
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v30;
  v125 = OBJC_IVAR___SDShareSheetAirDropController_helperConnection;
  v134 = v28 + 32;
  v135 = v28 + 16;
  v140 = (v32 + 63) >> 6;
  v141 = (v11 + 8);
  v130 = (v11 + 16);
  v137 = v28;
  v133 = (v28 + 8);
  v120 = (v2 + 48);
  v118 = (v2 + 32);
  v117 = (v2 + 8);
  v116 = 0x8000000100798980;

  v35 = 0;
  *&v36 = 136315138;
  v127 = v36;
  v128 = a1;
  v132 = v10;
  v129 = v17;
  v138 = v24;
  v139 = v22;
  while (v34)
  {
LABEL_11:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v40 = v136;
    v39 = v137;
    (*(v137 + 16))(v136, a1[6] + *(v137 + 72) * (v38 | (v35 << 6)), v24);
    (*(v39 + 32))(v144, v40, v24);
    NWBrowser.Result.endpoint.getter();
    if (!NWEndpoint.nw.getter())
    {
      if (qword_100973630 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000C4AC(v49, qword_100978E38);
      (*v130)(v22, v143, v10);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v145 = v53;
        *v52 = v127;
        v54 = NWEndpoint.debugDescription.getter();
        v56 = v55;
        v57 = v22;
        v58 = v141;
        (*v141)(v57, v132);
        v59 = sub_10000C4E4(v54, v56, &v145);
        a1 = v128;

        *(v52 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v50, v51, "Could not convert endpoint to nw_endpoint %s", v52, 0xCu);
        sub_10000C60C(v53);
        v10 = v132;

        v42 = v58;
      }

      else
      {

        v42 = v141;
        (*v141)(v22, v10);
      }

      goto LABEL_26;
    }

    device_model = nw_endpoint_get_device_model();
    v42 = v141;
    if (!device_model)
    {
      swift_unknownObjectRelease();
LABEL_26:
      v47 = v142;
      v48 = *v42;
      (*v42)(v143, v10);
      goto LABEL_27;
    }

    v43 = String.init(cString:)();
    v45 = v44;
    swift_unknownObjectRelease();
    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {

      goto LABEL_26;
    }

    v47 = v142;
    if (v43 == 63 && v45 == 0xE100000000000000)
    {
      v48 = *v42;
      (*v42)(v143, v10);
    }

    else
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v48 = *v42;
      (*v42)(v143, v10);

      if ((v75 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_27:
    NWBrowser.Result.endpoint.getter();
    if (!NWEndpoint.nw.getter())
    {
      if (qword_100973630 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_10000C4AC(v64, qword_100978E38);
      v65 = v129;
      (*v130)(v129, v47, v10);
      v66 = Logger.logObject.getter();
      v67 = v47;
      v68 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v66, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v145 = v70;
        *v69 = v127;
        v71 = NWEndpoint.debugDescription.getter();
        v73 = v72;
        v48(v129, v132);
        v74 = sub_10000C4E4(v71, v73, &v145);
        a1 = v128;

        *(v69 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v66, v68, "Could not convert endpoint to nw_endpoint %s", v69, 0xCu);
        sub_10000C60C(v70);
        v10 = v132;

        v48(v142, v10);
      }

      else
      {

        v48(v65, v10);
        v48(v67, v10);
        a1 = v128;
      }

      goto LABEL_5;
    }

    if (!nw_endpoint_get_contact_id())
    {
      v48(v47, v10);
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    v60 = String.init(cString:)();
    v62 = v61;
    swift_unknownObjectRelease();
    v48(v142, v10);

    v63 = HIBYTE(v62) & 0xF;
    if ((v62 & 0x2000000000000000) == 0)
    {
      v63 = v60 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
LABEL_39:
      v76 = v126;
      NWBrowser.Result.endpoint.getter();
      Strong = swift_unknownObjectWeakLoadStrong();
      v78 = objc_allocWithZone(type metadata accessor for ShareSheetAirDropNode(0));
      v79 = sub_1005E6D78(v76, Strong);

      v80 = *&v79[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName + 8];
      if (!v80)
      {
        __break(1u);
        return;
      }

      if ((v80 & 0x2000000000000000) != 0)
      {
        v81 = HIBYTE(v80) & 0xF;
      }

      else
      {
        v81 = *&v79[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName] & 0xFFFFFFFFFFFFLL;
      }

      v22 = v139;
      if (v81)
      {
        v99 = v79;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = v138;
        if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v100 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v138;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v133)(v144, v24);
        v123 = v146;
      }

      else
      {
        if (qword_100973B38 != -1)
        {
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        sub_10000C4AC(v82, qword_100986090);
        v83 = v79;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v84, v85))
        {
          v115 = v85;
          v86 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v145 = v114;
          *v86 = v127;
          v87 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_nodeIdentifier;
          swift_beginAccess();
          v88 = v124;
          sub_10000FF90(&v83[v87], v124, &unk_100976120, &qword_1007F9260);
          v89 = v88;
          v90 = v121;
          sub_10000FF90(v89, v121, &unk_100976120, &qword_1007F9260);
          v91 = v122;
          if ((*v120)(v90, 1, v122) == 1)
          {
            v92 = 0xD000000000000013;
            v93 = v116;
          }

          else
          {
            v94 = v119;
            (*v118)(v119, v90, v91);
            sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID);
            v95 = v91;
            v92 = dispatch thunk of CustomStringConvertible.description.getter();
            v93 = v96;
            v97 = v95;
            v22 = v139;
            (*v117)(v94, v97);
          }

          v10 = v132;
          sub_100005508(v124, &unk_100976120, &qword_1007F9260);
          v98 = sub_10000C4E4(v92, v93, &v145);

          *(v86 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v84, v115, "Skipping node with no display name: %s", v86, 0xCu);
          sub_10000C60C(v114);

          v24 = v138;
          (*v133)(v144, v138);
          a1 = v128;
        }

        else
        {

          v24 = v138;
          (*v133)(v144, v138);
        }
      }
    }

    else
    {
LABEL_5:
      v24 = v138;
      (*v133)(v144, v138);
      v22 = v139;
    }
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v37 >= v140)
    {
      break;
    }

    v34 = v31[v37];
    ++v35;
    if (v34)
    {
      v35 = v37;
      goto LABEL_11;
    }
  }

  v101 = *(v131 + OBJC_IVAR___SDShareSheetAirDropController_availableNodes);
  a1 = v123;
  *(v131 + OBJC_IVAR___SDShareSheetAirDropController_availableNodes) = v123;

  if (qword_100973B38 == -1)
  {
    goto LABEL_56;
  }

LABEL_62:
  swift_once();
LABEL_56:
  v102 = type metadata accessor for Logger();
  sub_10000C4AC(v102, qword_100986090);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v145 = v106;
    *v105 = v127;

    sub_10028088C(&qword_100986248, &qword_10080D420);
    v107 = Array.description.getter();
    v109 = v108;

    v110 = sub_10000C4E4(v107, v109, &v145);

    *(v105 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v103, v104, "Share sheet AirDrop nodes changed: %s", v105, 0xCu);
    sub_10000C60C(v106);
  }

  v111 = *(v131 + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler);
  if (v111)
  {
    v112 = *(v131 + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler + 8);

    sub_1000387D0(v111);
    v111(a1);
    sub_100015D04(v111);
  }
}

uint64_t sub_1005DDDD8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100986090);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Beginning invalidation of AirDrop browser for share sheet", v9, 2u);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = qword_1009735E0;
  v12 = v1;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v14 = sub_1005E6290(&qword_100977C00, type metadata accessor for AirDropActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v12;

  sub_1002B3098(0, 0, v5, &unk_10080D3F8, v15);
}

uint64_t sub_1005DE01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005DE0B8, v5, 0);
}

uint64_t sub_1005DE0B8()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___SDShareSheetAirDropController_browser;
  if (*(v1 + OBJC_IVAR___SDShareSheetAirDropController_browser))
  {
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100986090);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Invalidating AirDrop browser for share sheet", v6, 2u);
    }

    if (*(v1 + v2))
    {
      v7 = *(v1 + v2);

      NWBrowser.cancel()();

      v8 = *(v1 + v2);
    }

    v9 = *(v0 + 16);
    *(v1 + v2) = 0;

    sub_1005DE220();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1005DE220()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask;
  if (*&v0[OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask])
  {
    v6 = *&v0[OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask];

    Task.cancel()();

    v7 = *&v0[v5];
  }

  *&v0[v5] = 0;

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;
  v10 = v0;
  sub_1002B281C(0, 0, v4, &unk_10080D380, v9);
}

uint64_t sub_1005DE3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v21;
  v8[13] = v22;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v9 = type metadata accessor for SFAirDropSend.Transfer();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();
  v12 = *(*(sub_10028088C(&unk_100977BE0, &unk_1007FAE40) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v13 = sub_10028088C(&unk_100976280, &qword_1007F93F0);
  v8[18] = v13;
  v14 = *(v13 - 8);
  v8[19] = v14;
  v15 = *(v14 + 64) + 15;
  v8[20] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v8[21] = v16;
  v17 = *(v16 - 8);
  v8[22] = v17;
  v18 = *(v17 + 64) + 15;
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1005DE590, 0, 0);
}

uint64_t sub_1005DE590()
{
  v34 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = UUID.uuidString.getter();
  v4 = (v1 + OBJC_IVAR___SDShareSheetAirDropController_realName);
  v5 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_realName + 8);
  *v4 = v3;
  v4[1] = v6;

  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v10 = v0[8];
  v11 = v0[9];
  v12 = type metadata accessor for Logger();
  v0[24] = sub_10000C4AC(v12, qword_100986090);
  (*(v8 + 16))(v7, v10, v9);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[22];
  v16 = v0[23];
  v18 = v0[21];
  if (v15)
  {
    v19 = v0[9];
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v20 = 136315394;
    type metadata accessor for URL();
    v21 = Array.description.getter();
    v23 = sub_10000C4E4(v21, v22, &v33);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v17 + 8))(v16, v18);
    v27 = sub_10000C4E4(v24, v26, &v33);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sending URLs: %s to %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v0[5] = v0[9];
  v28 = async function pointer to Sequence<>.coordinateRead(withSaveToTempDir:options:)[1];
  v29 = swift_task_alloc();
  v0[25] = v29;
  v30 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  v31 = sub_100011630(&qword_10097B1D8, &qword_100975610, &qword_1007F89B0);
  *v29 = v0;
  v29[1] = sub_1005DE8E8;

  return Sequence<>.coordinateRead(withSaveToTempDir:options:)(1, 1, v30, v31);
}

uint64_t sub_1005DE8E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_1005DEF30;
  }

  else
  {
    v5 = sub_1005DE9FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005DE9FC()
{
  v0[28] = *(v0[7] + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);
  v1 = async function pointer to SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)[1];

  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1005DEAC8;
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[8];

  return SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)(v4, v3, v9, v7, v8, v5, v6, 0);
}

uint64_t sub_1005DEAC8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 208);
  if (v0)
  {

    v7 = sub_1005DF0E4;
  }

  else
  {

    v7 = sub_1005DEC2C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005DEC2C()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[7];
  SFXPCProgressTask.initialValue.getter();
  SFAirDropSend.Transfer.id.getter();
  (*(v5 + 8))(v4, v6);
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  swift_beginAccess();
  sub_10000C788(v3, v7 + v9, &unk_100977BE0, &unk_1007FAE40);
  swift_endAccess();
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_1005DED94;
  v11 = v0[20];
  v12 = v0[7];

  return sub_1005DF298(v11);
}

uint64_t sub_1005DED94()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_1005DEE90, 0, 0);
}

uint64_t sub_1005DEE90()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[23];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1005DEF30()
{
  v17 = v0;
  v1 = v0[27];
  v2 = v0[24];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v0[6] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to send URLs: %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  else
  {
  }

  v10 = v0[23];
  v11 = v0[20];
  v13 = v0[16];
  v12 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005DF0E4()
{
  v17 = v0;
  v1 = v0[30];
  v2 = v0[24];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v0[6] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to send URLs: %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  else
  {
  }

  v10 = v0[23];
  v11 = v0[20];
  v13 = v0[16];
  v12 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005DF298(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v2[19] = *(v8 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&unk_100977BE0, &unk_1007FAE40) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Failure();
  v2[24] = v10;
  v11 = *(v10 - 8);
  v2[25] = v11;
  v12 = *(v11 + 64) + 15;
  v2[26] = swift_task_alloc();
  v13 = *(*(sub_10028088C(&qword_1009861D0, &qword_10080D3C0) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v14 = *(*(sub_10028088C(&qword_10097B1B0, &unk_10080DD40) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDrop.Progress();
  v2[32] = v15;
  v16 = *(v15 - 8);
  v2[33] = v16;
  v17 = *(v16 + 64) + 15;
  v2[34] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[35] = v18;
  v19 = *(v18 - 8);
  v2[36] = v19;
  v20 = *(v19 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDropSend.Transfer();
  v2[39] = v21;
  v22 = *(v21 - 8);
  v2[40] = v22;
  v23 = *(v22 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v24 = *(*(sub_10028088C(&qword_100976460, &qword_1007F9730) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v25 = sub_10028088C(&qword_1009861D8, &qword_10080D3C8);
  v2[44] = v25;
  v26 = *(v25 - 8);
  v2[45] = v26;
  v27 = *(v26 + 64) + 15;
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_1005DF700, 0, 0);
}

uint64_t sub_1005DF700()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 88);
  *(v0 + 376) = sub_10028088C(&unk_100976280, &qword_1007F93F0);
  SFXPCProgressTask.makeAsyncIterator()();
  v3 = OBJC_IVAR___SDShareSheetAirDropController_sessionID;
  *(v0 + 384) = OBJC_IVAR___SDShareSheetAirDropController_realName;
  *(v0 + 392) = v3;
  *(v0 + 400) = OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler;
  *(v0 + 440) = enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:);
  *(v0 + 444) = enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:);
  *(v0 + 448) = enum case for SFAirDropSend.Transfer.State.transferring(_:);
  *(v0 + 452) = enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:);
  *(v0 + 456) = enum case for SFAirDropSend.Transfer.State.exchanging(_:);
  *(v0 + 460) = enum case for SFAirDropSend.Transfer.State.waitingForImportContactResponse(_:);
  *(v0 + 464) = enum case for SFAirDropSend.Transfer.State.transferFailed(_:);
  *(v0 + 468) = enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:);
  *(v0 + 472) = enum case for SFAirDropSend.Transfer.State.created(_:);
  *(v0 + 476) = enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:);
  v4 = sub_100011630(&unk_1009861E0, &qword_1009861D8, &qword_10080D3C8);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  *(v0 + 408) = v6;
  *v6 = v0;
  v6[1] = sub_1005DF8BC;
  v7 = *(v0 + 368);
  v8 = *(v0 + 344);
  v9 = *(v0 + 352);

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_1005DF8BC()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1005E024C;
  }

  else
  {
    v3 = sub_1005DF9D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005DF9D0()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
    v4 = async function pointer to SFXPCProgressTask.finalValue.getter[1];
    v5 = swift_task_alloc();
    *(v0 + 424) = v5;
    *v5 = v0;
    v5[1] = sub_1005E04E8;
    v6 = *(v0 + 376);
    v7 = *(v0 + 328);
    v8 = *(v0 + 88);

    return SFXPCProgressTask.finalValue.getter(v7, v6);
  }

  v9 = *(v0 + 440);
  v10 = *(v0 + 304);
  v11 = *(v0 + 280);
  v12 = *(v0 + 288);
  (*(v3 + 32))(*(v0 + 336), v1, v2);
  SFAirDropSend.Transfer.state.getter();
  v13 = (*(v12 + 88))(v10, v11);
  if (v13 == v9)
  {
    v14 = *(v0 + 304);
    (*(*(v0 + 288) + 96))(v14, *(v0 + 280));
    v15 = *v14;

    v16 = *(sub_10028088C(&unk_100986230, &qword_1007FE6B0) + 64);
    v17 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v17 - 8) + 8))(&v14[v16], v17);
    v18 = 0.0;
    v19 = 3;
LABEL_7:
    v20 = *(v0 + 96);
    v21 = (v20 + *(v0 + 384));
    v22 = v21[1];
    if (v22)
    {
      v23 = *(v0 + 400);
      v24 = (v20 + *(v0 + 392));
      v25 = *v21;
      v27 = *v24;
      v26 = v24[1];
      v28 = type metadata accessor for ShareSheetAirDropTransferUpdate();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = 1;
      *&v29[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = 0;
      v30 = &v29[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_sessionID];
      *v30 = v27;
      *(v30 + 1) = v26;
      v31 = &v29[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_realName];
      *v31 = v25;
      *(v31 + 1) = v22;
      *(v0 + 64) = v29;
      *(v0 + 72) = v28;

      v32 = objc_msgSendSuper2((v0 + 64), "init");
      *&v32[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = v19;
      *&v32[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = v18;
      v33 = *(v20 + v23);
      if (v33)
      {
        v34 = *(v0 + 336);
        v35 = *(v0 + 312);
        v36 = *(v0 + 320);
        v37 = *(*(v0 + 96) + *(v0 + 400) + 8);

        v33(v32);
        sub_100015D04(v33);

        (*(v36 + 8))(v34, v35);
      }

      else
      {
        (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
      }
    }

    else
    {
      (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
    }

    goto LABEL_25;
  }

  if (v13 != *(v0 + 444))
  {
    if (v13 == *(v0 + 448))
    {
      v44 = *(v0 + 304);
      v46 = *(v0 + 264);
      v45 = *(v0 + 272);
      v47 = *(v0 + 256);
      (*(*(v0 + 288) + 96))(v44, *(v0 + 280));
      v48 = *(v44 + 8);

      v49 = sub_10028088C(&qword_10097B2C8, &qword_1007FE680);
      v50 = v49[12];
      v51 = *(v44 + 8 + v49[16]);

      (*(v46 + 32))(v45, v44 + v50, v47);
      v52 = COERCE_DOUBLE(SFAirDrop.Progress.percent.getter());
      LOBYTE(v50) = v53;
      (*(v46 + 8))(v45, v47);
      v54 = v49[20];
      if (v50)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v52 * 100.0;
      }

      v55 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v55 - 8) + 8))(v44 + v54, v55);
      v19 = 7;
      goto LABEL_7;
    }

    if (v13 == *(v0 + 452))
    {
      v56 = *(v0 + 304);
      v57 = *(v0 + 280);
      v58 = *(v0 + 288);
      (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
      (*(v58 + 96))(v56, v57);
      v59 = *(sub_10028088C(&unk_100986200, &unk_1007FE580) + 48);
      v60 = &unk_10097C660;
      v61 = &unk_10080D3E0;
    }

    else
    {
      if (v13 == *(v0 + 456))
      {
        v56 = *(v0 + 304);
        v64 = *(v0 + 280);
        v65 = *(v0 + 288);
        (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
        (*(v65 + 96))(v56, v64);
        v63 = type metadata accessor for SFAirDrop.ContactRequest();
        goto LABEL_24;
      }

      if (v13 != *(v0 + 460))
      {
        if (v13 == *(v0 + 464))
        {
          v74 = *(v0 + 304);
          v75 = *(v0 + 192);
          v76 = *(v0 + 200);
          (*(*(v0 + 288) + 96))(v74, *(v0 + 280));
          v77 = sub_10028088C(&unk_100986210, &unk_1008042C0);
          (*(v76 + 8))(v74 + *(v77 + 48), v75);
          v78 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
          (*(*(v78 - 8) + 8))(v74, v78);
          v18 = 0.0;
          v19 = 10;
        }

        else if (v13 == *(v0 + 468))
        {
          (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
          v18 = 100.0;
          v19 = 9;
        }

        else
        {
          v18 = 0.0;
          v19 = 3;
          if (v13 != *(v0 + 472) && v13 != *(v0 + 476))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }
        }

        goto LABEL_7;
      }

      v56 = *(v0 + 304);
      v72 = *(v0 + 280);
      v73 = *(v0 + 288);
      (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
      (*(v73 + 96))(v56, v72);
      v59 = *(sub_10028088C(&unk_1009861F0, &unk_1007FE5B0) + 48);
      v60 = &qword_10097B218;
      v61 = &unk_100809050;
    }

    v62 = sub_10028088C(v60, v61);
    (*(*(v62 - 8) + 8))(v56 + v59, v62);
    v63 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_24:
    (*(*(v63 - 8) + 8))(v56, v63);
    goto LABEL_25;
  }

  v38 = *(v0 + 304);
  v39 = *(v0 + 280);
  v40 = *(v0 + 288);
  (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
  (*(v40 + 96))(v38, v39);
  v41 = *v38;

  v42 = *(sub_10028088C(&unk_100986220, &qword_1007FE6C0) + 48);
  v43 = sub_10028088C(&qword_10097B2E0, &qword_1007FE690);
  (*(*(v43 - 8) + 8))(&v38[v42], v43);
LABEL_25:
  v66 = sub_100011630(&unk_1009861E0, &qword_1009861D8, &qword_10080D3C8);
  v67 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v68 = swift_task_alloc();
  *(v0 + 408) = v68;
  *v68 = v0;
  v68[1] = sub_1005DF8BC;
  v69 = *(v0 + 368);
  v70 = *(v0 + 344);
  v71 = *(v0 + 352);

  return dispatch thunk of AsyncIteratorProtocol.next()(v70, v71, v66);
}

uint64_t sub_1005E024C()
{
  *(v0 + 80) = *(v0 + 416);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1005E02E0, 0, 0);
}

uint64_t sub_1005E02E0()
{
  (*(v0[45] + 8))(v0[46], v0[44]);
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100986090);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[52];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Transfer failed {error: %@}", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v9 = v0[52];
  v10 = v0[12];

  sub_1005E1EA8(10, 0.0);

  v11 = async function pointer to SFXPCProgressTask.finalValue.getter[1];
  v12 = swift_task_alloc();
  v0[53] = v12;
  *v12 = v0;
  v12[1] = sub_1005E04E8;
  v13 = v0[47];
  v14 = v0[41];
  v15 = v0[11];

  return SFXPCProgressTask.finalValue.getter(v14, v13);
}

uint64_t sub_1005E04E8()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_1005E0E38;
  }

  else
  {
    v3 = sub_1005E05FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005E05FC()
{
  v1 = v0[41];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[27];
  SFAirDropSend.Transfer.state.getter();
  SFAirDropSend.Transfer.State.metrics.getter();
  (*(v3 + 8))(v2, v4);
  v6 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = v0[30];
  v10 = v0[27];
  if (v8 == 1)
  {
    sub_100005508(v0[27], &qword_1009861D0, &qword_10080D3C0);
    v11 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  else
  {
    v12 = v0[30];
    SFAirDropSend.Transfer.Metrics.result.getter();
    (*(v7 + 8))(v10, v6);
    v11 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v9, 1, v11) != 1)
    {
      v17 = v0[31];
      (*(v13 + 32))(v17, v0[30], v11);
      (*(v13 + 56))(v17, 0, 1, v11);
      goto LABEL_7;
    }
  }

  v15 = v0[30];
  v14 = v0[31];
  type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v16 = *(v11 - 8);
  (*(v16 + 56))(v14, 1, 1, v11);
  if ((*(v16 + 48))(v15, 1, v11) != 1)
  {
    sub_100005508(v0[30], &qword_10097B1B0, &unk_10080DD40);
  }

LABEL_7:
  v18 = v0[29];
  sub_10000FF90(v0[31], v18, &qword_10097B1B0, &unk_10080DD40);
  type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v19 = *(v11 - 8);
  if ((*(v19 + 48))(v18, 1, v11) == 1)
  {
    v20 = v0[12];
    v21 = 0.0;
    v22 = 10;
  }

  else
  {
    v23 = v0[28];
    sub_10000FF90(v0[29], v23, &qword_10097B1B0, &unk_10080DD40);
    v24 = (*(v19 + 88))(v23, v11);
    if (v24 == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:))
    {
      v25 = v0[28];
      v27 = v0[25];
      v26 = v0[26];
      v28 = v0[24];
      v29 = v0[12];
      (*(v19 + 96))(v25, v11);
      (*(v27 + 32))(v26, v25, v28);
      sub_1005E1FE4(v26);
      (*(v27 + 8))(v26, v28);
      goto LABEL_12;
    }

    if (v24 != enum case for SFAirDropSend.Transfer.Metrics.TransferResult.success(_:))
    {
      (*(v19 + 8))(v0[28], v11);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v65 = v0[12];
    v21 = 100.0;
    v22 = 9;
  }

  sub_1005E1EA8(v22, v21);
LABEL_12:
  v31 = v0[40];
  v30 = v0[41];
  v32 = v0[39];
  v33 = v0[29];
  sub_100005508(v0[31], &qword_10097B1B0, &unk_10080DD40);
  (*(v31 + 8))(v30, v32);
  sub_100005508(v33, &qword_10097B1B0, &unk_10080DD40);
  v34 = v0[23];
  v35 = v0[14];
  v36 = v0[15];
  v37 = v0[12];
  v38 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
  v39 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  swift_beginAccess();
  sub_10000C788(v34, v37 + v39, &unk_100977BE0, &unk_1007FAE40);
  swift_endAccess();
  v40 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
  swift_beginAccess();
  if (!(*(v36 + 48))(v37 + v40, 1, v35))
  {
    v42 = v0[21];
    v41 = v0[22];
    v73 = v0[20];
    v75 = v0[19];
    v43 = v0[17];
    v44 = v0[18];
    v46 = v0[15];
    v45 = v0[16];
    v47 = v0[14];
    v70 = v0[13];
    v77 = v0[12];
    (*(v46 + 16))(v45, v37 + v40, v47);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v46 + 8))(v45, v47);
    v48 = *(v44 + 32);
    v48(v41, v42, v43);
    v49 = type metadata accessor for TaskPriority();
    (*(*(v49 - 8) + 56))(v70, 1, 1, v49);
    (*(v44 + 16))(v73, v41, v43);
    v50 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    v48(v51 + v50, v73, v43);
    *(v51 + ((v75 + v50 + 7) & 0xFFFFFFFFFFFFFFF8)) = v77;
    v52 = v77;
    sub_1002B281C(0, 0, v70, &unk_10080D3D8, v51);

    (*(v44 + 8))(v41, v43);
  }

  v53 = v0[46];
  v55 = v0[42];
  v54 = v0[43];
  v56 = v0[41];
  v57 = v0[37];
  v58 = v0[38];
  v59 = v0[34];
  v61 = v0[30];
  v60 = v0[31];
  v62 = v0[29];
  v66 = v0[28];
  v67 = v0[27];
  v68 = v0[26];
  v69 = v0[23];
  v71 = v0[22];
  v72 = v0[21];
  v74 = v0[20];
  v76 = v0[16];
  v78 = v0[13];

  v63 = v0[1];

  return v63();
}

uint64_t sub_1005E0E38()
{
  v1 = v0[54];

  v2 = v0[23];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  swift_beginAccess();
  sub_10000C788(v2, v5 + v7, &unk_100977BE0, &unk_1007FAE40);
  swift_endAccess();
  v8 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
  swift_beginAccess();
  if (!(*(v4 + 48))(v5 + v8, 1, v3))
  {
    v10 = v0[21];
    v9 = v0[22];
    v40 = v0[20];
    v42 = v0[19];
    v11 = v0[17];
    v12 = v0[18];
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    v37 = v0[13];
    v44 = v0[12];
    (*(v14 + 16))(v13, v5 + v8, v15);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v14 + 8))(v13, v15);
    v16 = *(v12 + 32);
    v16(v9, v10, v11);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v37, 1, 1, v17);
    (*(v12 + 16))(v40, v9, v11);
    v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    v16(v19 + v18, v40, v11);
    *(v19 + ((v42 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v44;
    v20 = v44;
    sub_1002B281C(0, 0, v37, &unk_10080D3D8, v19);

    (*(v12 + 8))(v9, v11);
  }

  v21 = v0[46];
  v23 = v0[42];
  v22 = v0[43];
  v24 = v0[41];
  v25 = v0[37];
  v26 = v0[38];
  v27 = v0[34];
  v29 = v0[30];
  v28 = v0[31];
  v30 = v0[29];
  v33 = v0[28];
  v34 = v0[27];
  v35 = v0[26];
  v36 = v0[23];
  v38 = v0[22];
  v39 = v0[21];
  v41 = v0[20];
  v43 = v0[16];
  v45 = v0[13];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1005E1518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(sub_10028088C(&unk_100977BE0, &unk_1007FAE40) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005E1628, 0, 0);
}

uint64_t sub_1005E1628()
{
  v38 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  v0[15] = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v3, &unk_100977BE0, &unk_1007FAE40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[10], &unk_100977BE0, &unk_1007FAE40);
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100986090);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to cancel but no transfer found.", v9, 2u);
    }

    v11 = v0[13];
    v10 = v0[14];
    v13 = v0[9];
    v12 = v0[10];

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v0[12] + 32))(v0[14], v0[10], v0[11]);
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v16 = v0[13];
    v17 = v0[14];
    v18 = v0[11];
    v19 = v0[12];
    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_100986090);
    (*(v19 + 16))(v16, v17, v18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[11];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v27 = 136315138;
      sub_1005E6290(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v24, v26);
      v32 = sub_10000C4E4(v28, v30, &v37);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Canceling transfer with ID: %s", v27, 0xCu);
      sub_10000C60C(v36);
    }

    else
    {

      v31 = *(v25 + 8);
      v31(v24, v26);
    }

    v0[16] = v31;
    v0[17] = *(v0[8] + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);
    v33 = async function pointer to SFAirDropClient.cancelTransfer(_:)[1];

    v34 = swift_task_alloc();
    v0[18] = v34;
    *v34 = v0;
    v34[1] = sub_1005E1A78;
    v35 = v0[14];

    return SFAirDropClient.cancelTransfer(_:)(v35);
  }
}

uint64_t sub_1005E1A78()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1005E1CB4;
  }

  else
  {
    v4 = sub_1005E1BA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005E1BA8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  (*(v0 + 128))(*(v0 + 112), v2);
  (*(v3 + 56))(v4, 1, 1, v2);
  swift_beginAccess();
  sub_10000C788(v4, v5 + v1, &unk_100977BE0, &unk_1007FAE40);
  swift_endAccess();
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1005E1CB4()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 96) + 8;
  (*(v0 + 128))(*(v0 + 112), *(v0 + 88));

  v5 = *(v0 + 8);
  v6 = *(v0 + 152);

  return v5();
}

void sub_1005E1EA8(uint64_t a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_realName + 8);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_realName);
    v8 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_sessionID);
    v7 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_sessionID + 8);
    v9 = type metadata accessor for ShareSheetAirDropTransferUpdate();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = 1;
    *&v10[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = 0;
    v11 = &v10[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_sessionID];
    *v11 = v8;
    *(v11 + 1) = v7;
    v12 = &v10[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_realName];
    *v12 = v6;
    *(v12 + 1) = v3;
    v16.receiver = v10;
    v16.super_class = v9;

    v13 = objc_msgSendSuper2(&v16, "init");
    *&v13[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = a1;
    *&v13[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = a2;
    v14 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
    if (v14)
    {
      v15 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler + 8);

      v14(v13);
      sub_100015D04(v14);
    }
  }
}

void sub_1005E1FE4(uint64_t a1)
{
  v3 = type metadata accessor for SFAirDropSend.Failure();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for SFAirDropSend.Failure.receiverDeclined(_:) || v8 == enum case for SFAirDropSend.Failure.cancelled(_:))
  {
    v10 = 4;
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    v10 = 10;
  }

  v11 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_realName + 8);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_realName);
    v14 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_sessionID);
    v13 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_sessionID + 8);
    v15 = type metadata accessor for ShareSheetAirDropTransferUpdate();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = 1;
    *&v16[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = 0;
    v17 = &v16[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_sessionID];
    *v17 = v14;
    *(v17 + 1) = v13;
    v18 = &v16[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_realName];
    *v18 = v12;
    *(v18 + 1) = v11;
    v22.receiver = v16;
    v22.super_class = v15;

    v19 = objc_msgSendSuper2(&v22, "init");
    *&v19[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = v10;
    *&v19[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = 0;
    v20 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
    if (v20)
    {
      v21 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler + 8);

      v20(v19);
      sub_100015D04(v20);
    }
  }
}

uint64_t sub_1005E2210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005E2338, 0, 0);
}

uint64_t sub_1005E2338()
{
  v25 = v0;
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[11] = sub_10000C4AC(v5, qword_100986090);
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 136315138;
    sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000C4E4(v14, v16, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "will end currentNearbySharingInteraction:%s", v13, 0xCu);
    sub_10000C60C(v23);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[14] = v17;
  v19 = v0[6];
  static Clock<>.continuous.getter();
  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_1005E25F4;
  v21 = v0[6];

  return sub_10002ED10(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1005E25F4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = v2[6];
  v6 = v2[5];
  v7 = v2[4];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1005E73F8;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005E278C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005E278C()
{
  v0[16] = *(v0[3] + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);
  v1 = async function pointer to SFAirDropClient.endNearbySharingInteraction(_:)[1];

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1005E2844;
  v3 = v0[2];

  return SFAirDropClient.endNearbySharingInteraction(_:)(v3);
}

uint64_t sub_1005E2844()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1005E2B64;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1005E2960;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005E2960()
{
  v23 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 16), *(v0 + 56));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 112);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 56);
  if (v5)
  {
    v21 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v21(v7, v9);
    v15 = sub_10000C4E4(v12, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "did end currentNearbySharingInteraction:%s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  else
  {

    v6(v7, v9);
  }

  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1005E2B64()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_1005E2BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.PollingType();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005E2D0C, 0, 0);
}

uint64_t sub_1005E2D0C()
{
  v1 = v0[8];
  v2 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for SFAirDrop.NearbySharingDiscovery.PollingType.automatic(_:), v0[3]);
  SFAirDrop.NearbySharingDiscovery.Request.init(pollingType:applicationLabel:)();
  v0[9] = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);
  v3 = async function pointer to SFAirDropClient.startNearbySharingDiscovery(request:)[1];

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1005E2E18;
  v5 = v0[8];

  return SFAirDropClient.startNearbySharingDiscovery(request:)(v5);
}

uint64_t sub_1005E2E18()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1005E2FD0;
  }

  else
  {
    v4 = sub_1005E2F48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005E2F48()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005E2FD0()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

void sub_1005E3058()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  sub_10039D0AC();
  v6 = static NSUserDefaults.airdrop.getter();
  v7 = SFAirDropUserDefaults.boopToAirDropEnabled.getter();

  if (v7)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v9;
    v12[5] = v10;

    v13 = sub_1002B3098(0, 0, v5, &unk_10080D358, v12);
    v14 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask);
    *(v1 + OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask) = v13;
  }
}

uint64_t sub_1005E3220()
{
  v0[3] = *(v0[2] + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);
  v1 = async function pointer to SFAirDropClient.stopNearbySharingDiscovery(applicationLabel:)[1];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1005E32EC;

  return SFAirDropClient.stopNearbySharingDiscovery(applicationLabel:)(0x6568736572616873, 0xEA00000000007465);
}

uint64_t sub_1005E32EC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005E3428, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1005E3428()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1005E348C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v6 = sub_10028088C(&unk_1009861B0, &unk_10080D360);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v5[12] = v9;
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v10 = async function pointer to SFAirDropClient.nearbySharingInteractions()[1];
  v11 = swift_task_alloc();
  v5[15] = v11;
  *v11 = v5;
  v11[1] = sub_1005E35BC;

  return SFAirDropClient.nearbySharingInteractions()(v9);
}

uint64_t sub_1005E35BC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[16] = v2;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v8;
  v3[18] = v7;
  if (v2)
  {
    v9 = sub_1005E3E8C;
  }

  else
  {
    v9 = sub_1005E371C;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1005E371C()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v0[6] = SFXPCResilientAsyncSequence.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[13];
  v0[19] = static MainActor.shared.getter();
  v5 = sub_10028088C(&qword_1009861C0, &qword_10080D370);
  v6 = sub_100011630(&qword_1009861C8, &qword_1009861C0, &qword_10080D370);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1005E3848;

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 7, v5, v6);
}

uint64_t sub_1005E3848()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1005E3BEC;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1005E39E0;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1005E39E0()
{
  v1 = v0[19];

  v0[22] = v0[7];
  v2 = v0[17];
  v3 = v0[18];

  return _swift_task_switch(sub_1005E3A4C, v2, v3);
}

uint64_t sub_1005E3A4C()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[9];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1005E4068(v1);
    }

    v5 = v0[13];
    v0[19] = static MainActor.shared.getter();
    v6 = sub_10028088C(&qword_1009861C0, &qword_10080D370);
    v7 = sub_100011630(&qword_1009861C8, &qword_1009861C0, &qword_10080D370);
    v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_1005E3848;

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 7, v6, v7);
  }

  else
  {
    v10 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];

    v14 = v0[6];

    (*(v12 + 8))(v11, v13);
    v15 = v0[12];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1005E3BEC()
{
  v1 = v0[19];
  v0[8] = v0[21];
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_willThrowTypedImpl();

  v2 = v0[17];
  v3 = v0[18];

  return _swift_task_switch(sub_1005E3C88, v2, v3);
}

uint64_t sub_1005E3C88()
{
  v19 = v0;
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[6];

  (*(v3 + 8))(v2, v4);
  v6 = v0[21];
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100986090);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v0[5] = v6;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v12 = String.init<A>(reflecting:)();
    v14 = sub_10000C4E4(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error registering for updates to nearby sharing interactions: %s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  else
  {
  }

  v15 = v0[12];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005E3E8C()
{
  v15 = v0;
  v1 = v0[14];

  v2 = v0[16];
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100986090);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[5] = v2;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_10000C4E4(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error registering for updates to nearby sharing interactions: %s", v6, 0xCu);
    sub_10000C60C(v7);
  }

  else
  {
  }

  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

void sub_1005E4068(uint64_t a1)
{
  v2 = type metadata accessor for DeviceLockState();
  v3 = *(v2 - 8);
  v70 = v2;
  v71 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v68 - v7;
  v77 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v75 = *(v77 - 8);
  v8 = *(v75 + 64);
  v9 = __chkstk_darwin(v77);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v68 - v11;
  v12 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v68 - v14;
  v16 = type metadata accessor for UUID();
  v83 = *(v16 - 8);
  v17 = *(v83 + 64);
  __chkstk_darwin(v16);
  v78 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v82 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v85 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v81 = &v68 - v29;
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000C4AC(v30, qword_100986090);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v79 = v24;
  v80 = v23;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v88[0] = v35;
    *v34 = 136315138;
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v36 = Array.description.getter();
    v69 = v16;
    v38 = v20;
    v39 = v19;
    v40 = v15;
    v41 = a1;
    v42 = sub_10000C4E4(v36, v37, v88);
    v16 = v69;

    *(v34 + 4) = v42;
    a1 = v41;
    v15 = v40;
    v19 = v39;
    v20 = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Boop2ShareSheet: Nearby sharing interactions changed: %s", v34, 0xCu);
    sub_10000C60C(v35);
  }

  v43 = v85;
  if (*(a1 + 16))
  {
    v44 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v45 = *(v44 - 8);
    v46 = v81;
    (*(v45 + 16))(v81, a1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v44);
    (*(v45 + 56))(v46, 0, 1, v44);
    v47 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
    v48 = v84;
    swift_beginAccess();
    sub_10000C788(v46, v48 + v47, &unk_100975F60, &unk_1007F91B0);
    swift_endAccess();
    v49 = v82;
    SFAirDrop.NearbySharingInteraction.state.getter();
    if ((*(v20 + 88))(v49, v19) != enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
    {
      (*(v20 + 8))(v49, v19);
      return;
    }

    (*(v20 + 96))(v49, v19);
    v50 = v79;
    v51 = v49;
    v52 = v80;
    (*(v79 + 32))(v43, v51, v80);
    SFAirDrop.NearbySharingInteraction.ConnectionContext.endpointIdentifier.getter();
    if ((*(v83 + 48))(v15, 1, v16) == 1)
    {
      (*(v50 + 8))(v43, v52);
      sub_100005508(v15, &unk_100976120, &qword_1007F9260);
      return;
    }

    (*(v83 + 32))(v78, v15, v16);
    SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
    (*(v75 + 104))(v74, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:), v77);
    sub_1005E6290(&qword_100976260, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v88[0] == v86 && v88[1] == v87)
    {
      v53 = *(v75 + 8);
      v54 = v77;
      v53(v74, v77);
      v53(v76, v54);
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v56 = *(v75 + 8);
      v57 = v77;
      v56(v74, v77);
      v56(v76, v57);

      if ((v55 & 1) == 0)
      {
        (*(v83 + 8))(v78, v16);
        (*(v79 + 8))(v43, v80);
        return;
      }
    }

    v58 = *(v84 + OBJC_IVAR___SDShareSheetAirDropController_lockStateMonitor);
    v59 = v72;
    dispatch thunk of SFLockStateMonitor.lockState.getter();
    v60 = v70;
    v61 = v71;
    v62 = v73;
    (*(v71 + 104))(v73, enum case for DeviceLockState.unlocked(_:), v70);
    v63 = static DeviceLockState.== infix(_:_:)();
    v64 = *(v61 + 8);
    v64(v62, v60);
    v64(v59, v60);
    if (v63)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v66 = Strong;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v66 didConnectNearbySharingInteractionWithEndpointUUID:isa];
        swift_unknownObjectRelease();
      }
    }

    (*(v83 + 8))(v78, v16);
    (*(v79 + 8))(v85, v80);
  }
}

void sub_1005E4B7C()
{
  sub_1005E6014(319, &qword_10097F178, &type metadata accessor for SFAirDrop.TransferIdentifier);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1005E6014(319, &qword_100986120, &type metadata accessor for SFAirDrop.NearbySharingInteraction);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005E4CE0()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for DeviceLockState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for DeviceLockState.unlocked(_:), v5);
  v10 = static DeviceLockState.== infix(_:_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v0;
    v13 = v0;
    sub_1002B281C(0, 0, v4, &unk_10080D348, v12);

    sub_1005E3058();
  }

  else
  {
    sub_1005DE220();
  }
}

id sub_1005E5378(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1005E53F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  v9 = v8[1];
  *v8 = v6;
  v8[1] = v7;
}

id sub_1005E5590(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

uint64_t sub_1005E5B7C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v16 = v14;
  v17 = v15;
  v7._object = 0x8000000100798870;
  v7._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v7);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_endpointUUID;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  (*(v3 + 8))(v6, v2);
  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v13 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return v16;
}

void sub_1005E5EE0()
{
  sub_1005E6014(319, &qword_100975F70, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005E6014(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005E6068(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005E2BF0(a1, v4, v5, v6);
}

uint64_t sub_1005E611C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1005E348C(a1, v4, v5, v7, v6);
}

uint64_t sub_1005E61DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005E3200(a1, v4, v5, v6);
}

uint64_t sub_1005E6290(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005E62D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005E1518(a1, v4, v5, v6);
}

uint64_t sub_1005E638C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[3];
  v18 = v1[2];
  v10 = v1[4];
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v15 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100005C00;

  return sub_1005DE3C0(a1, v18, v9, v10, v1 + v5, v11, v12, v13);
}

uint64_t sub_1005E64F8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005E2210(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1005E6618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005DE01C(a1, v4, v5, v6);
}

uint64_t sub_1005E66CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005DC774(a1, v4, v5, v6, v7, v8);
}

id sub_1005E679C(uint64_t a1, unint64_t a2)
{
  if (&protocol conformance descriptor for iosmacHardware)
  {
    v2 = &protocol conformance descriptor for iosmacHardware == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || &type metadata accessor for iosmacHardware == 0 || &nominal type descriptor for iosmacHardware == 0 || &type metadata for iosmacHardware == 0)
  {
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100986090);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_21;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "ProductKit not available on this platform", v17, 2u);
  }

  else
  {
    v8 = sub_10028088C(&qword_100986250, &qword_10080D428);
    v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v8 - 8);
    v11 = &v41 - v10;

    iosmacHardware.init(_:)();
    v12 = type metadata accessor for iosmacHardware();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_100005508(v11, &qword_100986250, &qword_10080D428);
LABEL_26:
      if (qword_100973B38 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000C4AC(v27, qword_100986090);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v42 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_10000C4E4(a1, a2, &v42);
        _os_log_impl(&_mh_execute_header, v28, v29, "Missing image for device model %s", v30, 0xCu);
        sub_10000C60C(v31);
      }

      return 0;
    }

    v18 = iosmacHardware.imageName.getter();
    v20 = v19;
    (*(v13 + 8))(v11, v12);
    if (!v20)
    {
      goto LABEL_26;
    }

    type metadata accessor for ProductKitCatalog();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v23 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() imageNamed:v23 inBundle:v22];

    if (v15)
    {

      v24 = [v15 CGImage];
      if (v24)
      {
        v25 = v24;

        return v25;
      }

      if (qword_100973B38 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000C4AC(v37, qword_100986090);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Failed to create CGImage", v40, 2u);
      }

      goto LABEL_21;
    }

    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100986090);

    v15 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v15, v33))
    {

      goto LABEL_21;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v34 = 136315138;
    v36 = sub_10000C4E4(v18, v20, &v42);

    *(v34 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v15, v33, "Missing image in catalog %s", v34, 0xCu);
    sub_10000C60C(v35);
  }

LABEL_21:

  return 0;
}

id sub_1005E6D78(uint64_t a1, void *a2)
{
  v3 = v2;
  v68 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 56))(&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_nodeIdentifier], 1, 1, v5);
  v10 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contactIdentifier];
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contactIdentifier] = xmmword_10080D220;
  v11 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName];
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName] = xmmword_10080D220;
  v12 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_realName];
  *v12 = 0;
  v12[1] = 0;
  v66 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_model];
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_model] = xmmword_10080D220;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_formattedHandles] = _swiftEmptySetSingleton;
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_suggestionIndex;
  *&v3[v13] = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v14 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_transportBundleID];
  *v14 = 0xD000000000000020;
  v14[1] = 0x80000001007989A0;
  v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_isClassroom] = 0;
  v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_isDisabled] = 0;
  v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_isSuggestion] = 0;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_selectionReason] = 0;
  v65 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayIcon;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayIcon] = 0;
  v67 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contact;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contact] = 0;
  v15 = sub_100337A34(a1);
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  v19 = v11[1];
  if (v16)
  {
    v18 = v16;
  }

  *v11 = v17;
  v11[1] = v18;

  NWEndpoint.endpointUUID()();
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_endpointUUID;
  (*(v6 + 32))(&v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_endpointUUID], v9, v5);
  swift_beginAccess();
  (*(v6 + 16))(v9, &v3[v20], v5);
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v6 + 8))(v9, v5);
  v24 = v12[1];
  *v12 = v21;
  v12[1] = v23;

  v25 = sub_100337A4C(a1);
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    if ((v25 != 63 || v26 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v54 = v66;
      v55 = v66[1];
      *v66 = v27;
      v54[1] = v28;

      if (!v68)
      {

        goto LABEL_30;
      }

      v52 = sub_1005E679C(v27, v28);

      goto LABEL_21;
    }
  }

  v29 = sub_100337A1C(a1);
  if (!v30)
  {
LABEL_30:
    v71.receiver = v3;
    v71.super_class = ObjectType;
    v62 = objc_msgSendSuper2(&v71, "init");
    v63 = type metadata accessor for NWEndpoint();
    (*(*(v63 - 8) + 8))(a1, v63);
    return v62;
  }

  v31 = v29;
  v32 = v30;
  v33 = v10[1];
  *v10 = v29;
  v10[1] = v30;

  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v35 = result;
    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 contactWithContactIdentifier:v36];

    if (v37)
    {
      v38 = [objc_opt_self() stringFromContact:v37 style:0];
      if (v38)
      {
        v39 = v38;

        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = *&v3[v67];
        *&v3[v67] = v37;
        v44 = v37;

        v45 = v11[1];
        *v11 = v40;
        v11[1] = v42;

        if (v68)
        {
          v46 = sub_1000906C0(v44, 1, 0, v68);

          if (v46)
          {
            v47 = v46;
            v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;

            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100026AC0(v48, v50);
            v52 = SFCreateCGImageFromData();

            if (v52)
            {
              v53 = v52;

LABEL_21:
              v56 = *&v3[v65];
              *&v3[v65] = v52;

              goto LABEL_30;
            }
          }
        }

        else
        {
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000C4AC(v57, qword_100986090);

    v44 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v60;
      *v59 = 136315138;
      v61 = sub_10000C4E4(v31, v32, &v70);

      *(v59 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v44, v58, "Failed to find contact with identifier and displayName - %s", v59, 0xCu);
      sub_10000C60C(v60);
    }

    else
    {
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

unint64_t sub_1005E7414()
{
  result = qword_100986260;
  if (!qword_100986260)
  {
    sub_100280938(&qword_100986268, qword_10080D438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986260);
  }

  return result;
}

uint64_t sub_1005E7478(unsigned __int8 a1)
{
  v2 = SFDeviceClassCodeGet();
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = sub_10000CB70(off_1008EA298[a1]);
  v5 = sub_10000EF9C(v3, v4);

  if (v5)
  {
    return 1;
  }

  v7 = 1;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return 2;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v7 = 8;
    }

    else
    {
      v7 = 1;
    }

    if (a1 == 2)
    {
      v7 = 8;
    }
  }

  if (v3 == v7 || (a1 & 0xFE) == 2 && (SFDeviceIsRealityDevice() & 1) != 0)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_1005E7540(unsigned __int8 a1)
{
  v2 = sub_1005E7478(a1);
  if (v2 == 2)
  {
    return 0;
  }

  v4 = 13;
  v5 = 22;
  if (a1 != 4)
  {
    v5 = 0;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 23;
  if (a1 != 4)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    v7 = 12;
  }

  else
  {
    v7 = v6;
  }

  if (v2)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_1005E75E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005E76F0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1005E77EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005E78F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005E7BD4(*a1);
  *a2 = result;
  return result;
}

void sub_1005E7928(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEC00000043737361;
  v6 = 0x6C436B636F6C6E75;
  v7 = 0xEF6B636F6C6E5565;
  v8 = 0x646F4D7473657567;
  if (v2 != 3)
  {
    v8 = 0x6E556E6F69736976;
    v7 = 0xEF534F696B636F6CLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636F6C6E5563616DLL;
    v3 = 0xEE00656E6F68506BLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1005E7AB8()
{
  result = qword_100986270;
  if (!qword_100986270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986270);
  }

  return result;
}

uint64_t sub_1005E7B0C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C436B636F6C6E75;
  v4 = 0x646F4D7473657567;
  if (v1 != 3)
  {
    v4 = 0x6E556E6F69736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636F6C6E5563616DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005E7BD4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D8228, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005E7C20()
{
  result = qword_100986278;
  if (!qword_100986278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986278);
  }

  return result;
}

void sub_1005E7C74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for AuthenticationDevice();
  v13 = v12[9];
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(a4 + v13, 1, 1, v14);
  *a4 = a1;
  *(a4 + 8) = a2;
  if (!a3)
  {
    v34 = 0u;
    v35 = 0u;

    goto LABEL_9;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v15;

  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v16 = sub_100570754(&v32), (v17 & 1) == 0))
  {

    sub_100285E74(&v32);
    v34 = 0u;
    v35 = 0u;
    goto LABEL_9;
  }

  sub_10000C5B0(*(a3 + 56) + 32 * v16, &v34);
  sub_100285E74(&v32);

  if (!*(&v35 + 1))
  {
LABEL_9:
    sub_100456B48(&v34);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v18 = v32;
    v19 = v33;
    goto LABEL_11;
  }

LABEL_10:
  v19 = 0x8000000100798A00;
  v18 = 0xD000000000000010;
LABEL_11:
  *(a4 + 16) = v18;
  *(a4 + 24) = v19;
  *(a4 + 32) = xmmword_10080D590;
  *(a4 + 48) = 0;
  UUID.init(uuidString:)();
  sub_1005E884C(v11, a4 + v13);
  if (!a3)
  {
LABEL_18:
    v34 = 0u;
    v35 = 0u;
    goto LABEL_19;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v20;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v21 = sub_100570754(&v32), (v22 & 1) == 0))
  {

    sub_100285E74(&v32);
    goto LABEL_18;
  }

  sub_10000C5B0(*(a3 + 56) + 32 * v21, &v34);
  sub_100285E74(&v32);

  if (!*(&v35 + 1))
  {
LABEL_19:
    sub_100456B48(&v34);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v24 = 0x8000000100798A00;
    v23 = 0xD000000000000010;
    goto LABEL_21;
  }

  v23 = v32;
  v24 = v33;
LABEL_21:
  v25 = (a4 + v12[10]);
  *v25 = v23;
  v25[1] = v24;
  v26 = (a4 + v12[11]);
  *v26 = 0;
  v26[1] = 0;
  v26[2] = 0;
  v27 = [objc_allocWithZone(RPCompanionLinkDevice) init];
  v28 = String._bridgeToObjectiveC()();

  [v27 setIdentifier:v28];

  *(a4 + v12[12]) = v27;
}

uint64_t sub_1005E8044@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 nsuuid];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1005E80F4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1005E8190()
{
  v1 = [*v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t type metadata accessor for AuthenticationDevice()
{
  result = qword_1009862D8;
  if (!qword_1009862D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005E825C()
{
  sub_1005E8328();
  if (v0 <= 0x3F)
  {
    sub_100383ECC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OperatingSystemVersion(319);
      if (v2 <= 0x3F)
      {
        sub_1005E8378();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1005E8328()
{
  if (!qword_1009771F0[0])
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_1009771F0);
    }
  }
}

unint64_t sub_1005E8378()
{
  result = qword_100979A18;
  if (!qword_100979A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100979A18);
  }

  return result;
}

double sub_1005E83C4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0xE90000000000003ELL;
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for AuthenticationDevice();
  v10 = v9[9];
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  *(a2 + v9[12]) = a1;
  v12 = a1;
  v13 = [v12 name];
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v44 = v15;
  }

  else
  {
    *&v44 = 0xE90000000000003ELL;
  }

  v16 = 0x676E697373696D3CLL;
  v17 = [v12 idsDeviceIdentifier];
  v18 = 0x676E697373696D3CLL;
  v19 = 0xE90000000000003ELL;
  if (v17)
  {
    v20 = v17;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v21;
  }

  *a2 = v18;
  *(a2 + 8) = v19;
  v22 = [v12 model];
  v23 = 0x676E697373696D3CLL;
  v24 = 0xE90000000000003ELL;
  if (v22)
  {
    v25 = v22;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v26;
  }

  *(a2 + 16) = v23;
  *(a2 + 24) = v24;
  v27 = [v12 sourceVersion];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *&v45 = 0x2D74726F70706152;
    *(&v45 + 1) = 0xE800000000000000;
    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v4 = *(&v45 + 1);
    v16 = v45;
  }

  *(a2 + 32) = v16;
  *(a2 + 40) = v4;
  *(a2 + 48) = 0;
  v33 = [v12 idsDeviceIdentifier];
  if (v33)
  {
    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  UUID.init(uuidString:)();

  sub_1005E884C(v8, a2 + v10);
  v35 = [v12 name];
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {

    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v40 = (a2 + v9[10]);
  *v40 = v37;
  v40[1] = v39;
  [v12 operatingSystemVersion];
  v41 = v46;
  v44 = v45;

  v42 = a2 + v9[11];
  result = *&v44;
  *v42 = v44;
  *(v42 + 16) = v41;
  return result;
}

uint64_t sub_1005E86E8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1005E8718()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1005E8748()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1005E8790(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  result = *v2;
  v4 = v2[1];
  v5 = v2[2];
  return result;
}

uint64_t sub_1005E87A4(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 48)) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1005E8800(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_1005E884C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E88BC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100986330);
  v1 = sub_10000C4AC(v0, qword_100986330);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005E8984(uint64_t a1)
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
  v9 = type metadata accessor for URL();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.TransferType();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005E8B90, v15, 0);
}

uint64_t sub_1005E8B90()
{
  v63 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = v0[11];
  v6 = v0[2];
  v7 = SFAirDropReceive.AskRequest.urlItems.getter();
  v8 = v7;
  v9 = 0;
  v10 = v7 + 56;
  v11 = -1;
  v12 = -1 << *(v7 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v7 + 56);
  v14 = (63 - v12) >> 6;
  while (v13)
  {
    v15 = v9;
LABEL_11:
    v16 = v0[12];
    v17 = v0[10];
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v5 + 16))(v16, *(v8 + 48) + *(v5 + 72) * (v18 | (v15 << 6)), v17);
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    (*(v5 + 8))(v16, v17);
    LOBYTE(v16) = SFIsNewsLink();

    if ((v16 & 1) == 0)
    {

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      v22 = objc_allocWithZone(LSApplicationRecord);
      v23 = sub_10066F3F8(0x6C7070612E6D6F63, 0xEE007377656E2E65, 1);
      v44 = v0[3];
      v45 = *(v44 + 16);
      *(v44 + 16) = v23;

      goto LABEL_17;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  swift_once();
  v25 = v0[8];
  v24 = v0[9];
  v26 = v0[7];
  v27 = v0[2];
  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_100986330);
  (*(v25 + 16))(v24, v27, v26);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[8];
  v33 = v0[9];
  v34 = v0[7];
  if (v31)
  {
    v36 = v0[5];
    v35 = v0[6];
    v37 = v0[4];
    v60 = v30;
    v38 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = v61;
    *v38 = 136315394;
    v58 = v29;
    SFAirDropReceive.AskRequest.id.getter();
    sub_1002891F4();
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v34;
    v41 = v40;
    (*(v36 + 8))(v35, v37);
    (*(v32 + 8))(v33, v39);
    v42 = sub_10000C4E4(v57, v41, &v62);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2112;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v43;
    *v59 = v43;
    _os_log_impl(&_mh_execute_header, v58, v60, "Failed to get News app for ask request %s: %@", v38, 0x16u);
    sub_100005508(v59, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v61);
  }

  else
  {

    (*(v32 + 8))(v33, v34);
  }

LABEL_17:
  v46 = *(v0[3] + 16);
  if (v46 && (v47 = v46, v48 = [v47 applicationState], v49 = objc_msgSend(v48, "isInstalled"), v47, v48, (v49 & 1) != 0))
  {
    v50 = 1;
  }

  else
  {
LABEL_20:
    v50 = 0;
  }

  v51 = v0[15];
  v52 = v0[12];
  v53 = v0[9];
  v54 = v0[6];

  v55 = v0[1];

  return v55(v50);
}

uint64_t sub_1005E9078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1005E94E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerNewsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1005E951C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1005E8984(a1);
}

void sub_1005E95DC(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x4E494C5F5357454ELL;
  v5 = inited + 32;
  *(inited + 40) = 0xE90000000000004BLL;
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

uint64_t sub_1005E9764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1005E978C, v4, 0);
}

uint64_t sub_1005E978C()
{
  v31 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_100973B48 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100986420);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No record data received for contact lookup", v5, 2u);
    }

    v6 = v0[1];

    return v6(0, 0, 0, 0);
  }

  else
  {
    v8 = v0[6];
    v9 = v0[2];
    v0[7] = *(v8 + 112);
    v10 = *(v8 + 120);
    sub_100294008(v9, v1);
    sub_10046BDE0(v10, v29);
    v11 = v29[1];
    v12 = v29[2];
    v13 = v29[3];
    v0[8] = v29[0];
    v0[9] = v12;
    v14 = v30;
    v0[10] = v30;
    if (qword_100973B48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v0[11] = sub_10000C4AC(v15, qword_100986420);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315394;
      if (v12)
      {
        v20 = v11;
      }

      else
      {
        v20 = 0xD000000000000015;
      }

      v28 = v11;
      v29[0] = v19;
      if (v12)
      {
        v21 = v12;
      }

      else
      {
        v21 = 0x8000000100789F30;
      }

      v22 = sub_10000C4E4(v20, v21, v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      if (v14)
      {
        v23 = v13;
      }

      else
      {
        v23 = 0xD000000000000015;
      }

      if (v14)
      {
        v24 = v14;
      }

      else
      {
        v24 = 0x8000000100789F30;
      }

      v25 = sub_10000C4E4(v23, v24, v29);

      *(v18 + 14) = v25;
      v11 = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "Hash lookup complete: email hash - %s phone hash - %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    v26 = swift_task_alloc();
    v0[12] = v26;
    *v26 = v0;
    v26[1] = sub_1005E9B6C;
    v27 = v0[6];

    return sub_1005EA27C(v11, v12, v13, v14);
  }
}

uint64_t sub_1005E9B6C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return _swift_task_switch(sub_1005E9C84, v5, 0);
}

uint64_t sub_1005E9C84()
{
  v68 = v0;
  if (v0[14])
  {
    v1 = v0[13];
    v2 = v0[7];
    v3 = v0[14];
    v4 = String._bridgeToObjectiveC()();

    v5 = [v2 verifiedIdentityForAppleID:v4];

    v6 = v0[11];
    if (v5)
    {
      v7 = v5;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v7;
        *v11 = v5;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, v9, "Confirmed verified identity %@", v10, 0xCu);
        sub_10028924C(v11);
      }

      v14 = v0[9];
      v13 = v0[10];
      v16 = v0[7];
      v15 = v0[8];

      sub_100389A64();
      sub_1002D7FB0();
      isa = Set._bridgeToObjectiveC()().super.isa;

      v18 = [v16 contactWithPreferredIdentifierForContacts:isa];

      if (v18)
      {
        v19 = [v18 identifier];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = [objc_allocWithZone(CNContactFormatter) init];
        v23 = [v22 stringFromContact:v18];

        if (v23)
        {
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v25;
          v66 = v24;
        }

        else
        {
          v65 = 0;
          v66 = 0;
        }

        v51 = v0[11];
        v52 = v0[5];

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v56 = v0[4];
          v55 = v0[5];
          v62 = v0[2];
          v63 = v0[3];
          v57 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v57 = 136315394;
          *(v57 + 4) = sub_10000C4E4(v56, v55, &v67);
          *(v57 + 12) = 2080;
          *(v57 + 14) = sub_10000C4E4(v64, v21, &v67);
          _os_log_impl(&_mh_execute_header, v53, v54, "Matched serviceName %s to contactID %s", v57, 0x16u);
          swift_arrayDestroy();

          sub_10028BCC0(v62, v63);
        }

        else
        {
          v59 = v0[2];
          v58 = v0[3];

          sub_10028BCC0(v59, v58);
        }

        v32 = v64;
        v31 = v65;
        v33 = v66;
        goto LABEL_21;
      }

      v45 = v0[11];
      v37 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      v47 = os_log_type_enabled(v37, v46);
      v49 = v0[2];
      v48 = v0[3];
      if (v47)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v37, v46, "No matching contacts found", v50, 2u);
      }

      v43 = v49;
      v44 = v48;
    }

    else
    {
      v35 = v0[9];
      v34 = v0[10];
      v36 = v0[8];

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      v39 = os_log_type_enabled(v37, v38);
      v41 = v0[2];
      v40 = v0[3];
      if (v39)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "No Verified identity found", v42, 2u);
      }

      v43 = v41;
      v44 = v40;
    }

    sub_10028BCC0(v43, v44);

    v32 = 0;
    v21 = 0;
    v33 = 0;
    v31 = 0;
  }

  else
  {
    v26 = v0[9];
    v27 = v0[10];
    v28 = v0[8];
    v30 = v0[2];
    v29 = v0[3];

    sub_10028BCC0(v30, v29);
    v21 = 0;
    v31 = 0;
    v32 = v0[13];
    v33 = v32;
  }

LABEL_21:
  v60 = v0[1];

  return v60(v32, v21, v33, v31);
}

uint64_t sub_1005EA1B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100986420);
  v1 = sub_10000C4AC(v0, qword_100986420);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005EA27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1005EA2A4, v4, 0);
}

uint64_t sub_1005EA2A4()
{
  v1 = *(v0[6] + 112);
  if (v0[3])
  {
    v2 = v0[2];
    v3 = String._bridgeToObjectiveC()();
    if (v0[5])
    {
LABEL_3:
      v4 = v0[4];
      v5 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    if (v0[5])
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [v1 emailOrPhoneForEmailHash:v3 phoneHash:v5];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = v0[1];

  return v10(v7, v9);
}

uint64_t sub_1005EA3D4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005EA438()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar.Component();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Calendar();
  v53 = *(v55 - 8);
  v8 = *(v53 + 64);
  __chkstk_darwin(v55);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v51 - v15;
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = sub_10028088C(&unk_1009865A0, &unk_10080D788);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = (&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v21);
  v26 = &v51 - v25;
  v27 = *(v24 + 48);
  swift_beginAccess();
  v28 = sub_10002C5AC();
  sub_10002CDC0((v0 + 96), *(v0 + 120));
  sub_10002C988(v18);
  swift_endAccess();
  if (sub_1005EFFF8(v28, v18))
  {
    sub_10044DBD8(v18, &v26[v27]);
  }

  else
  {
    sub_100005508(v18, &qword_10097A7F0, &unk_1007FB600);

    (*(v2 + 56))(&v26[v27], 1, 1, v1);
    v28 = 0;
  }

  v29 = v2;
  *v26 = v28;
  if ((*(v2 + 48))(&v26[v27], 1, v1) == 1)
  {
    static Calendar.current.getter();
    (*(v58 + 104))(v57, enum case for Calendar.Component.second(_:), v59);
    sub_1004BAD44();
    if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v30 > -9.22337204e18)
    {
      if (v30 < 9.22337204e18)
      {
        v31 = v52;
        static Date.now.getter();
        v51 = v19;
        v32 = v16;
        v33 = v57;
        v34 = v29;
        v35 = v0;
        v36 = v56;
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        (*(v34 + 8))(v31, v1);
        (*(v58 + 8))(v33, v59);
        (*(v53 + 8))(v36, v55);
        v37 = v54;
        sub_10000FF90(v32, v54, &qword_10097A7F0, &unk_1007FB600);
        swift_beginAccess();
        v38 = *(v35 + 120);
        v39 = *(v35 + 128);
        sub_10002F5B4(v35 + 96, v38);
        (*(v39 + 40))(v37, v38, v39);
        swift_endAccess();
        sub_1005EB820(v32);
        v40 = v32;
        v19 = v51;
        sub_100005508(v40, &qword_10097A7F0, &unk_1007FB600);
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      swift_once();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_9:
  sub_10000FF90(v26, v23, &unk_1009865A0, &unk_10080D788);
  v41 = *v23;
  v42 = *(v19 + 48);
  if (*v23)
  {
    v43 = [*v23 URI];
    v44 = [v43 prefixedURI];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100005508(v23 + v42, &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_15;
  }

  sub_100005508(v23 + v42, &qword_10097A7F0, &unk_1007FB600);
  if (qword_100973B50 != -1)
  {
    goto LABEL_19;
  }

LABEL_12:
  v46 = type metadata accessor for Logger();
  sub_10000C4AC(v46, qword_100986460);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Pseudonym not present for request", v49, 2u);
  }

  v45 = 0;
LABEL_15:
  sub_100005508(v26, &unk_1009865A0, &unk_10080D788);
  return v45;
}

uint64_t sub_1005EAAE8()
{
  v1[5] = v0;
  v2 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_10028088C(&unk_1009865A0, &unk_10080D788);
  v1[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EAC28, v5, 0);
}

uint64_t sub_1005EAC28()
{
  v62 = v0;
  if (sub_1004E701C())
  {
    v1 = sub_1005F06F4();
    if (v1)
    {
      v2 = v0[5];

      if ([*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_deviceStatus) deviceWasUnlockedOnce])
      {
        if (qword_100973B50 != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for Logger();
        sub_10000C4AC(v3, qword_100986460);
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v4, v5, "Checking pseudonym service for valid state", v6, 2u);
        }

        v7 = v0[12];
        v8 = v0[7];
        v9 = v0[8];
        v10 = v0[5];

        v11 = *(v9 + 48);
        swift_beginAccess();
        v12 = sub_10002C5AC();
        sub_10002CDC0((v10 + 96), *(v10 + 120));
        sub_10002C988(v8);
        swift_endAccess();
        v13 = sub_1005EFFF8(v12, v8);
        v14 = v0[7];
        if (v13)
        {
          sub_10044DBD8(v14, v7 + v11);
        }

        else
        {
          sub_100005508(v14, &qword_10097A7F0, &unk_1007FB600);

          v15 = type metadata accessor for Date();
          (*(*(v15 - 8) + 56))(v7 + v11, 1, 1, v15);
          v12 = 0;
        }

        v17 = v0[11];
        v16 = v0[12];
        *v16 = v12;
        sub_10000FF90(v16, v17, &unk_1009865A0, &unk_10080D788);
        v18 = *v17;
        v19 = *(v9 + 48);
        if (*v17)
        {
          v20 = v0[12];
          v21 = v0[10];
          sub_100005508(v17 + v19, &qword_10097A7F0, &unk_1007FB600);
          sub_10000FF90(v20, v21, &unk_1009865A0, &unk_10080D788);
          v22 = v18;
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v60 = v24;
            v25 = v0[9];
            v59 = v0[10];
            v26 = v0[6];
            v27 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            *v27 = 136315394;
            v28 = [v22 URI];
            v29 = [v28 prefixedURI];

            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            v33 = sub_10000C4E4(v30, v32, &v61);

            *(v27 + 4) = v33;
            *(v27 + 12) = 2080;
            sub_10000FF90(v59, v25, &unk_1009865A0, &unk_10080D788);

            sub_10044DBD8(v25 + *(v9 + 48), v26);
            v34 = type metadata accessor for Date();
            v35 = *(v34 - 8);
            v36 = (*(v35 + 48))(v26, 1, v34);
            v37 = v0[6];
            if (v36 == 1)
            {
              sub_100005508(v0[6], &qword_10097A7F0, &unk_1007FB600);
              v38 = 0xE600000000000000;
              v39 = 0x3E656E6F6E3CLL;
            }

            else
            {
              v39 = Date.description.getter();
              v38 = v48;
              (*(v35 + 8))(v37, v34);
            }

            v49 = v0[12];
            sub_100005508(v0[10], &unk_1009865A0, &unk_10080D788);
            v50 = sub_10000C4E4(v39, v38, &v61);

            *(v27 + 14) = v50;
            _os_log_impl(&_mh_execute_header, v23, v60, "Current AirDrop pseudonym %s - afterFirstUseExpirationDate %s", v27, 0x16u);
            swift_arrayDestroy();

            v45 = v49;
          }

          else
          {
            v46 = v0[12];
            v47 = v0[10];

            sub_100005508(v47, &unk_1009865A0, &unk_10080D788);
            v45 = v46;
          }
        }

        else
        {
          sub_100005508(v17 + v19, &qword_10097A7F0, &unk_1007FB600);
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&_mh_execute_header, v40, v41, "Pseudonym is missing, triggering state update", v42, 2u);
          }

          v43 = v0[12];
          v44 = v0[5];

          sub_1005EB438();
          v45 = v43;
        }

        sub_100005508(v45, &unk_1009865A0, &unk_10080D788);
      }
    }
  }

  v52 = v0[11];
  v51 = v0[12];
  v54 = v0[9];
  v53 = v0[10];
  v56 = v0[6];
  v55 = v0[7];

  v57 = v0[1];

  return v57();
}

uint64_t sub_1005EB25C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100986460);
  v1 = sub_10000C4AC(v0, qword_100986460);
  if (qword_100973700 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0948);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005EB324()
{
  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100986460);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Pseudonym service network path monitor is reachable", v3, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005EB438();
  }

  return result;
}

uint64_t sub_1005EB438()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v29 - v3;
  v5 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  sub_1005EBB7C();
  swift_beginAccess();
  v12 = sub_10002C5AC();
  sub_10002CDC0((v0 + 96), *(v0 + 120));
  sub_10002C988(v11);
  swift_endAccess();
  if (sub_1005EFFF8(v12, v11))
  {
    if (v12)
    {
      v13 = v12;
      v14 = [v13 properties];
      v15 = [v14 expirationDate];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 56))(v9, v16, 1, v22);
    sub_1005EBC3C(v9);
    sub_100005508(v9, &qword_10097A7F0, &unk_1007FB600);
    sub_1005EB820(v11);
  }

  else
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = qword_1009735E0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = static AirDropActor.shared;
    v20 = sub_10002CE80();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v0;

    sub_1002B3098(0, 0, v4, &unk_10080D800, v21);
  }

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  v24 = qword_1009735E0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = static AirDropActor.shared;
  v26 = sub_10002CE80();
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v26;
  v27[4] = v0;

  sub_1002B3098(0, 0, v4, &unk_10080D810, v27);

  return sub_100005508(v11, &qword_10097A7F0, &unk_1007FB600);
}

uint64_t sub_1005EB820(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v31 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_10000FF90(a1, v10, &qword_10097A7F0, &unk_1007FB600);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100005508(v10, &qword_10097A7F0, &unk_1007FB600);
  }

  v30 = *(v12 + 32);
  v30(v16, v10, v11);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  (*(v12 + 16))(v31, v16, v11);
  v19 = qword_1009735E0;

  v29 = v6;
  v20 = v1;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = static AirDropActor.shared;
  v22 = sub_10002CE80();
  v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = v22;
  v30((v25 + v23), v31, v11);
  *(v25 + v24) = v20;

  v26 = sub_1002B3098(0, 0, v29, &unk_10080D7A0, v25);
  (*(v12 + 8))(v16, v11);
  v27 = *(v20 + 184);
  *(v20 + 184) = v26;
}

uint64_t sub_1005EBB7C()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);

    Task.cancel()();

    v2 = *(v0 + 176);
  }

  *(v0 + 176) = 0;

  if (*(v0 + 184))
  {
    v3 = *(v0 + 184);

    Task.cancel()();

    v4 = *(v0 + 184);
  }

  *(v0 + 184) = 0;
}

uint64_t sub_1005EBC3C(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v31 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_10000FF90(a1, v10, &qword_10097A7F0, &unk_1007FB600);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100005508(v10, &qword_10097A7F0, &unk_1007FB600);
  }

  v30 = *(v12 + 32);
  v30(v16, v10, v11);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  (*(v12 + 16))(v31, v16, v11);
  v19 = qword_1009735E0;

  v29 = v6;
  v20 = v1;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = static AirDropActor.shared;
  v22 = sub_10002CE80();
  v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = v22;
  v30((v25 + v23), v31, v11);
  *(v25 + v24) = v20;

  v26 = sub_1002B3098(0, 0, v29, &unk_10080D7E8, v25);
  (*(v12 + 8))(v16, v11);
  v27 = *(v20 + 176);
  *(v20 + 176) = v26;
}

uint64_t sub_1005EBF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EC034, v5, 0);
}

uint64_t sub_1005EC034()
{
  v1 = sub_10002E624();
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1005F11D8;
  v3 = v0[2];

  return sub_1005EC0D4(v1);
}

uint64_t sub_1005EC0D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EC174, v3, 0);
}

uint64_t sub_1005EC174()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_13:
    v14 = *(v0 + 8);

    return v14();
  }

  v2 = *(v1 + 32);
  *(v0 + 72) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (!v5)
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

  v7 = 0;
LABEL_9:
  *(v0 + 40) = v5;
  *(v0 + 48) = v7;
  v9 = *(*(v6 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
  *(v0 + 56) = v9;
  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_1005EC2D8;
  v12 = *(v0 + 24);

  return sub_1005EF2EC(v10);
}

uint64_t sub_1005EC2D8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1005EC3E8, v2, 0);
}

void sub_1005EC3E8()
{
  v1 = *(v0 + 48);
  v2 = (*(v0 + 40) - 1) & *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 16);
LABEL_7:
    *(v0 + 40) = v2;
    *(v0 + 48) = v1;
    v5 = *(*(v3 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v2)))));
    *(v0 + 56) = v5;
    v6 = v5;
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_1005EC2D8;
    v8 = *(v0 + 24);

    sub_1005EF2EC(v6);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 16);
      if (v4 >= (((1 << *(v0 + 72)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 8);

    v9();
  }
}