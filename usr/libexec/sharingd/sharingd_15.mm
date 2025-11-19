uint64_t sub_100308F00()
{
  v1 = *(v0 + 264);
  (*(v0 + 272))(*(v0 + 168), *(v0 + 144));
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100308FE4(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v10 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
  v3[23] = v10;
  v11 = *(v10 - 8);
  v3[24] = v11;
  v12 = *(v11 + 64) + 15;
  v3[25] = swift_task_alloc();
  v13 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
  v3[26] = v13;
  v14 = *(v13 - 8);
  v3[27] = v14;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;

  return _swift_task_switch(sub_100309224, v16, 0);
}

uint64_t sub_100309224()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection);
  if (v3)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v11 = v0 + 27;
    v17 = v0[27];
    v14 = v0 + 26;
    v18 = v0[26];
    v15 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
    swift_beginAccess();
    if ((*(v17 + 48))(v15, 1, v18))
    {
      goto LABEL_27;
    }

    v16 = 28;
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection);
    if (v5)
    {
      v6 = v2 == v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v11 = v0 + 24;
      v19 = v0[24];
      v14 = v0 + 23;
      v20 = v0[23];
      v15 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
      swift_beginAccess();
      if ((*(v19 + 48))(v15, 1, v20))
      {
        goto LABEL_27;
      }

      v16 = 25;
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);
      if (v7)
      {
        v8 = v2 == v7;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v11 = v0 + 21;
        v21 = v0[21];
        v14 = v0 + 20;
        v22 = v0[20];
        v15 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
        swift_beginAccess();
        if ((*(v21 + 48))(v15, 1, v22))
        {
          goto LABEL_27;
        }

        v16 = 22;
      }

      else
      {
        v9 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection);
        if (v9)
        {
          v10 = v2 == v9;
        }

        else
        {
          v10 = 0;
        }

        if (!v10)
        {
          goto LABEL_27;
        }

        v11 = v0 + 18;
        v12 = v0[18];
        v14 = v0 + 17;
        v13 = v0[17];
        v15 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
        swift_beginAccess();
        if ((*(v12 + 48))(v15, 1, v13))
        {
          goto LABEL_27;
        }

        v16 = 19;
      }
    }
  }

  v23 = v0[v16];
  v24 = *v14;
  v25 = *v11;
  v26 = v0[15];
  (*(v25 + 16))(v23, v15, v24);
  SFProgressContinuation.fail(with:)();
  (*(v25 + 8))(v23, v24);
LABEL_27:
  v27 = v0[28];
  v28 = v0[25];
  v29 = v0[22];
  v30 = v0[19];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1003094D4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005CF8;

  return sub_10030658C();
}

uint64_t sub_100309594(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Failure();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v2[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_100309754, v12, 0);
}

uint64_t sub_100309754()
{
  v1 = *(v0 + 112);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_100309820;
  v3 = *(v0 + 112);

  return sub_10002ED10(0x8155A43676E00000, 6, 0, 0, 1);
}

uint64_t sub_100309820()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v6 = sub_100309CCC;
  }

  else
  {
    v6 = sub_10030999C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10030999C()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "UPLOAD response timeout", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection, "Cancelling UPLOAD connection %s");
  (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v7);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[6];
    v17 = v0[7];
    (*(v17 + 16))(v15, v10 + v11, v16);
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v13 + 16))(v18, v12, v14);
    SFProgressContinuation.fail(with:)();
    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v20 + 16))(v22, v19, v21);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);
  v23 = v0[14];
  v24 = v0[11];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100309CCC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100309D50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = &v27 - v7;
  v8 = type metadata accessor for SFAirDrop.Progress();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100977A70);
  (*(v9 + 16))(v12, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v28 = v1;
    v29 = v5;
    v30 = a1;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    SFAirDrop.Progress.percent.getter();
    if (v18)
    {
      v19 = 0x800000010078B610;
      v20 = 0xD000000000000015;
    }

    else
    {
      v20 = Double.description.getter();
      v19 = v21;
    }

    (*(v9 + 8))(v12, v8);
    v22 = sub_10000C4E4(v20, v19, &v32);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Upload progress %s", v16, 0xCu);
    sub_10000C60C(v17);

    v5 = v29;
    v2 = v28;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  result = (*(v5 + 48))(v2 + v23, 1, v4);
  if (!result)
  {
    v25 = v2 + v23;
    v26 = v31;
    (*(v5 + 16))(v31, v25, v4);
    SFProgressContinuation.yield(_:)();
    return (*(v5 + 8))(v26, v4);
  }

  return result;
}

uint64_t sub_10030A0C8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100977A70);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Send compression failed %@", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v13, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v6, v1 + v13, v2);
    SFProgressContinuation.fail(with:)();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_10030A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_10030A3D8, v6, 0);
}

uint64_t sub_10030A3D8()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = sub_1006373F8(*(v0 + 80));
    v5 = v4;
    swift_beginAccess();
    v6._countAndFlagsBits = v3;
    v6._object = v5;
    SFAirDrop.NetworkMetrics.log(receiverTLSCertDigest:)(v6);
    swift_endAccess();
  }

  **(v0 + 64) = Strong == 0;
  v7 = *(v0 + 8);

  return v7();
}

void sub_10030A4F0()
{
  v0 = type metadata accessor for SDAirDropDiscoveredEndpoint(319);
  if (v1 <= 0x3F)
  {
    v22 = *(v0 - 8) + 64;
    v2 = type metadata accessor for SFAirDropSend.Request();
    if (v3 <= 0x3F)
    {
      v23 = *(v2 - 8) + 64;
      sub_10030A8D8(319, &qword_100977B38, _s12HelloRequestVMa);
      if (v5 <= 0x3F)
      {
        v24 = *(v4 - 8) + 64;
        sub_10030A92C(319, &qword_100977B40, &qword_100977B48, &qword_1007FAD70);
        if (v7 <= 0x3F)
        {
          v25 = *(v6 - 8) + 64;
          sub_10030A8D8(319, &qword_100977B50, _s10AskRequestVMa);
          if (v9 <= 0x3F)
          {
            v26 = *(v8 - 8) + 64;
            sub_10030A92C(319, &qword_100977B58, &qword_100977B60, &qword_1007FAD78);
            if (v11 <= 0x3F)
            {
              v27 = *(v10 - 8) + 64;
              sub_10030A8D8(319, &qword_100977B68, _s13UploadRequestVMa);
              if (v13 <= 0x3F)
              {
                v28 = *(v12 - 8) + 64;
                sub_10030A92C(319, &qword_100977B70, &qword_100977B78, &qword_1007FAD80);
                if (v15 <= 0x3F)
                {
                  v29 = *(v14 - 8) + 64;
                  sub_10030A92C(319, &qword_100977B80, &qword_100977B88, &qword_1007FAD88);
                  if (v17 <= 0x3F)
                  {
                    v30 = *(v16 - 8) + 64;
                    v18 = type metadata accessor for SFAirDrop.NetworkMetrics();
                    if (v19 <= 0x3F)
                    {
                      v31 = *(v18 - 8) + 64;
                      v20 = type metadata accessor for SFNWInterfaceType();
                      if (v21 <= 0x3F)
                      {
                        v32 = *(v20 - 8) + 64;
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10030A8D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10030A92C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100280938(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10030A980(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 200) = a4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  v6 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  *(v5 + 80) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v9 = type metadata accessor for SFNWInterfaceType();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  *(v5 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  *(v5 + 120) = static AirDropActor.shared;

  return _swift_task_switch(sub_10030AAEC, v12, 0);
}

uint64_t sub_10030AAEC()
{
  v41 = v0;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000C4AC(v4, qword_100977A70);
  sub_100294008(v3, v2);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  sub_100026AC0(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v39 = *(v0 + 96);
    v10 = *(v0 + 64);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = Data.description.getter();
    v16 = sub_10000C4E4(v14, v15, v40);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_1002FCB68(v8);
    sub_1000106F0(&qword_100977BD0, &type metadata accessor for SFNWInterfaceType);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v9 + 8))(v8, v39);
    v20 = sub_10000C4E4(v17, v19, v40);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending compressed data %s on interface %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v0 + 64);
  v22 = *(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);
  *(v0 + 136) = v22;
  if (v22 && (v23 = *(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContext), (*(v0 + 144) = v23) != 0))
  {
    v24 = *(v0 + 80);
    sub_10030D7A0(v21 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, *(v0 + 88), type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    swift_unknownObjectRetain();
    v26 = off_1008DB910[EnumCaseMultiPayload];
    v27 = qword_1007FAF90[EnumCaseMultiPayload];
    sub_10030D1B4(*(v0 + 88), v26);
    v28 = swift_task_alloc();
    *(v0 + 152) = v28;
    *v28 = v0;
    v28[1] = sub_10030AF3C;
    v29 = *(v0 + 200);
    v30 = *(v0 + 40);
    v31 = *(v0 + 48);

    return sub_100633940(v23, v30, v31, v27, v29);
  }

  else
  {
    v33 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for SFAirDropSend.Failure.cancelled(_:), v33);
    swift_willThrow();
    v35 = *(v0 + 112);
    v36 = *(v0 + 88);
    v37 = *(v0 + 72);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_10030AF3C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_10030B394;
  }

  else
  {
    v6 = sub_10030B068;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10030B068()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 200);
  sub_1002FCB68(v1);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_lastActiveInterfaceType;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v6, v1, v3);
  swift_endAccess();
  if (v5 == 1)
  {
    v7 = *(v0 + 128);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 56);
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v8, v9, "Total bytes read %ld", v11, 0xCu);
    }

    v12 = *(v0 + 128);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Finished sending UPLOAD", v15, 2u);
    }

    v17 = *(v0 + 64);
    v16 = *(v0 + 72);

    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    v19 = swift_allocObject();
    *(v0 + 168) = v19;
    *(v19 + 16) = v17;
    v20 = swift_allocObject();
    *(v0 + 176) = v20;
    *(v20 + 16) = v17;
    v21 = async function pointer to concurrentRace<A>(priority:operation:against:)[1];
    v22 = v17;
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_10030B428;
    v24 = *(v0 + 72);

    return concurrentRace<A>(priority:operation:against:)();
  }

  else
  {
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    swift_unknownObjectRelease();

    v27 = *(v0 + 112);
    v28 = *(v0 + 88);
    v29 = *(v0 + 72);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_10030B394()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_unknownObjectRelease();

  v3 = v0[20];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10030B428()
{
  v2 = *v1;
  v3 = (*v1)[23];
  v4 = *v1;
  (*v1)[24] = v0;

  v5 = v2[22];
  v6 = v2[21];
  v7 = v2[15];
  sub_100005508(v2[9], &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v8 = sub_10030B64C;
  }

  else
  {
    v8 = sub_10030B5C0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10030B5C0()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_unknownObjectRelease();

  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10030B64C()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_unknownObjectRelease();

  v3 = v0[24];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10030B6E0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005C00;

  return sub_1003094D4();
}

uint64_t sub_10030B780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_100309594(a1, v4);
}

uint64_t sub_10030B820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v4[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for SDAirDropMessage();
  v4[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100977BB0, &qword_1007FADE0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v10 = _s13UploadRequestVMa();
  v4[20] = v10;
  v11 = *(v10 - 8);
  v4[21] = v11;
  v12 = *(v11 + 64) + 15;
  v4[22] = swift_task_alloc();
  v13 = *(*(sub_10028088C(&qword_100977BD8, &qword_1007FAE38) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v14 = *(*(sub_10028088C(&qword_100977BA0, &qword_1007FADD0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v15 = _s10AskRequestVMa();
  v4[25] = v15;
  v16 = *(v15 - 8);
  v4[26] = v16;
  v17 = *(v16 + 64) + 15;
  v4[27] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v4[28] = static AirDropActor.shared;

  return _swift_task_switch(sub_10030BA84, v18, 0);
}

uint64_t sub_10030BA84()
{
  v1 = v0[14];
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);
  v0[29] = v2;
  if (!v2)
  {
LABEL_4:
    v7 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for SFAirDropSend.Failure.badRequest(_:), v7);
    swift_willThrow();
    v9 = v0[27];
    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[22];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[16];

    v16 = v0[1];

    return v16();
  }

  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest;
  swift_beginAccess();
  sub_10000FF90(v1 + v6, v5, &qword_100977BA0, &qword_1007FADD0);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100005508(v0[24], &qword_100977BA0, &qword_1007FADD0);
    goto LABEL_4;
  }

  v18 = v0[27];
  v19 = v0[25];
  v20 = v0[23];
  sub_10030D808(v0[24], v18, _s10AskRequestVMa);
  sub_10000FF90(v18 + *(v19 + 20), v20, &qword_100977BD8, &qword_1007FAE38);
  v21 = type metadata accessor for SFAirDrop.TransferType();
  v22 = *(v21 - 8);
  LODWORD(v20) = (*(v22 + 48))(v20, 1, v21);

  v23 = v0[23];
  if (v20 == 1)
  {
    sub_100005508(v0[23], &qword_100977BD8, &qword_1007FAE38);
LABEL_11:
    v25 = *(v0[14] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_pseudonymService);
    v47 = sub_1005EA438();
    v45 = v26;
    v46 = sub_1005F0AC0();
    v44 = v27;
    goto LABEL_12;
  }

  v24 = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v22 + 8))(v23, v21);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
LABEL_12:
  v28 = v0[21];
  v29 = v0[22];
  v31 = v0[19];
  v30 = v0[20];
  v32 = v0[18];
  v48 = v0[17];
  v49 = v0[16];
  v50 = v0[15];
  v33 = v0[13];
  v34 = v0[14];
  v36 = v0[11];
  v35 = v0[12];
  sub_10000FF90(v0[27], v29, &unk_100977BE0, &unk_1007FAE40);
  *(v29 + v30[5]) = v36;
  v37 = (v29 + v30[6]);
  *v37 = v35;
  v37[1] = v33;
  *(v29 + v30[7]) = xmmword_1007F8A80;
  *(v29 + v30[8]) = 0;
  v38 = (v29 + v30[9]);
  *v38 = v47;
  v38[1] = v45;
  v39 = (v29 + v30[10]);
  *v39 = v46;
  v39[1] = v44;
  sub_10030D7A0(v29, v31, _s13UploadRequestVMa);
  (*(v28 + 56))(v31, 0, 1, v30);
  v40 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadRequest;
  swift_beginAccess();

  sub_10000C788(v31, v34 + v40, &qword_100977BB0, &qword_1007FADE0);
  swift_endAccess();
  sub_10030D7A0(v29, v32, _s13UploadRequestVMa);
  swift_storeEnumTagMultiPayload();
  v41 = sub_100674350();
  v0[30] = v41;
  sub_10030D1B4(v32, type metadata accessor for SDAirDropMessage);
  v42 = *(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContext);
  *(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContext) = v41;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logUploadStart(totalBytes:)(v36);
  swift_endAccess();
  sub_10030D7A0(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v49, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10030D1B4(v0[16], off_1008DB930[EnumCaseMultiPayload]);

  return _swift_task_switch(sub_10030BFE8, 0, 0);
}

uint64_t sub_10030BFE8()
{
  if (qword_100973B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = v1;
  sub_10000C4AC(v1, qword_1009873E0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %ld bytes", v4, 0xCu);
  }

  v6 = v0[29];
  v5 = v0[30];

  v7 = swift_task_alloc();
  v0[32] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = xmmword_1007FAD30;
  *(v7 + 40) = v5;
  *(v7 + 48) = 0;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_10030C1B4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10030C1B4()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_10030C4B4;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_10030C2D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10030C2EC()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  sub_10000C4AC(v0[31], qword_100977A70);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Sent Initial UPLOAD Request", v3, 2u);
  }

  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v11 = v0[18];
  v10 = v0[19];
  v14 = v0[16];

  swift_unknownObjectRelease();

  sub_10030D1B4(v9, _s13UploadRequestVMa);
  sub_10030D1B4(v6, _s10AskRequestVMa);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10030C4B4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);

  return _swift_task_switch(sub_10030C520, v2, 0);
}

uint64_t sub_10030C520()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[22];
  swift_unknownObjectRelease();

  sub_10030D1B4(v4, _s13UploadRequestVMa);
  sub_10030D1B4(v3, _s10AskRequestVMa);
  v5 = v0[34];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10030C63C(uint64_t a1)
{
  v4 = *(_s15ExchangeRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100303020(a1, v6, v1 + v5);
}

uint64_t sub_10030C71C(uint64_t a1)
{
  v4 = *(_s15ExchangeRequestVMa(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10030350C(a1, v6, v1 + v5, v7);
}

uint64_t sub_10030C838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_100303FB8(a1, v4);
}

uint64_t sub_10030C8D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1003071E0(a1);
}

uint64_t sub_10030C8E0(uint64_t a1)
{
  v4 = *(type metadata accessor for NWConnection.State() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_10030745C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10030C9E4(NSObject *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10030D7A0(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10030D808(v13, v17, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v18 = &v17[*(v14 + 40)];
    v19 = v18[1];
    if (v19)
    {
      v20 = *v18;
      v21 = sec_trust_copy_ref(a1);
      v22 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_deviceStatus);
      v23 = sub_100469580(v20, v19, v21);
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_100977A70);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = v23 & 1;
        _os_log_impl(&_mh_execute_header, v25, v26, "Validated appleID and secTrust - receiver trusted: %{BOOL}d", v27, 8u);
      }

      a2(v23 & 1);
      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = qword_1009735E0;

      v31 = v21;
      if (v30 != -1)
      {
        swift_once();
      }

      v32 = static AirDropActor.shared;
      v33 = sub_1000106F0(&qword_100977C00, type metadata accessor for AirDropActor);
      v34 = swift_allocObject();
      v34[2] = v32;
      v34[3] = v33;
      v34[4] = v29;
      v34[5] = v31;

      sub_1002B3398(0, 0, v9, &unk_1007FAEB0, v34);
    }

    else
    {
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000C4AC(v35, qword_100977A70);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "No appleID for receiver present - handling as unknown receiver", v38, 2u);
      }

      a2(1);
    }

    return sub_10030D1B4(v17, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
  }

  else
  {
    sub_10030D1B4(v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10030CF34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10030A338(a1, v4, v5, v7, v6);
}

uint64_t sub_10030CFF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1003061D8(a1, v4, v5, v6);
}

uint64_t sub_10030D0A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_100301FAC(a1, v5, v4);
}

unint64_t sub_10030D150()
{
  result = qword_100977C10;
  if (!qword_100977C10)
  {
    sub_100280938(&qword_100975610, &qword_1007F89B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C10);
  }

  return result;
}

uint64_t sub_10030D1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10030D214(uint64_t a1)
{
  v4 = *(_s12ErrorRequestVMa() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100304AB4(a1, v6, v1 + v5);
}

uint64_t sub_10030D2F4(uint64_t a1)
{
  v4 = *(_s12ErrorRequestVMa() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100305110(a1, v6, v1 + v5, v7);
}

uint64_t sub_10030D410(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1003058A0(a1, v4);
}

uint64_t sub_10030D4B0(uint64_t a1)
{
  v4 = *(_s10AskRequestVMa() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002FFB68(a1, v6, v1 + v5);
}

uint64_t sub_10030D590(uint64_t a1)
{
  v4 = *(_s10AskRequestVMa() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100300300(a1, v6, v1 + v5, v7);
}

uint64_t sub_10030D6AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_100301134(a1, v4);
}

uint64_t sub_10030D7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030D808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030D870(uint64_t a1)
{
  v4 = *(_s12HelloRequestVMa() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002FD96C(a1, v6, v1 + v5);
}

uint64_t sub_10030D950(uint64_t a1)
{
  v4 = *(_s12HelloRequestVMa() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002FE4AC(a1, v6, v1 + v5, v7);
}

uint64_t sub_10030DA6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1002FF058(a1, v4);
}

void *sub_10030DBB8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_100026AC0(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_100015E10(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_100026AC0(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10030DD34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100977C58);
  v1 = sub_10000C4AC(v0, qword_100977C58);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10030DDFC()
{
  v0 = sub_10028088C(&qword_100977C78, &qword_1007FB008);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1009A0728 = result;
  return result;
}

void sub_10030DE60()
{
  v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v1[2] = 16;
  v1[4] = 0;
  v2 = v1 + 4;
  v1[5] = 0;
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v6 & 1) == 0 && v5 && v5 < 0)
  {
    __break(1u);
  }

  else
  {
    bag_uuid = aks_get_bag_uuid();
    sub_100311810(bag_uuid, 0xD00000000000001ALL, 0x800000010078B710);
    if (v0)
    {
    }

    else
    {
      v4 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:v2];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }
}

uint64_t sub_10030DF94@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, _DWORD *a5@<X8>)
{
  v6 = a4;
  v7 = a3;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v105[0] = a1;
      LOWORD(v105[1]) = a2;
      BYTE2(v105[1]) = BYTE2(a2);
      BYTE3(v105[1]) = BYTE3(a2);
      BYTE4(v105[1]) = BYTE4(a2);
      BYTE5(v105[1]) = BYTE5(a2);
      v10 = a4 >> 62;
      v100 = a3;
      if ((a4 >> 62) <= 1)
      {
        if (!v10)
        {
          v108[0] = a3;
          LOWORD(v108[1]) = a4;
          BYTE2(v108[1]) = BYTE2(a4);
          BYTE3(v108[1]) = BYTE3(a4);
          BYTE4(v108[1]) = BYTE4(a4);
          BYTE5(v108[1]) = BYTE5(a4);
          sub_100294008(a3, a4);
          sub_100294008(v7, v6);
          if (qword_1009735C8 == -1)
          {
LABEL_6:
            TaskLocal.get()();
            if ((v107 & 1) != 0 || !v106 || (v106 & 0x80000000) == 0)
            {
              v11 = aks_remote_session();
              if (v11 == -536870211)
              {
                if (qword_1009735C0 == -1)
                {
LABEL_11:
                  v12 = type metadata accessor for Logger();
                  sub_10000C4AC(v12, qword_100977C58);
                  v13 = Logger.logObject.getter();
                  v14 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v13, v14))
                  {
                    v15 = swift_slowAlloc();
                    *v15 = 0;
                    _os_log_impl(&_mh_execute_header, v13, v14, "Received no memory error when creating session, clearing and retrying", v15, 2u);
                  }

                  v16 = aks_remote_session_reset_all();
                  if (v16)
                  {
                    v17 = v16;
                    v18 = Logger.logObject.getter();
                    v19 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v18, v19))
                    {
                      v20 = swift_slowAlloc();
                      *v20 = 67109120;
                      *(v20 + 4) = v17;
                      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to aks_remote_session_reset_all, errCode: %d", v20, 8u);
                    }
                  }

                  TaskLocal.get()();
                  if ((v107 & 1) != 0 || !v106 || (v106 & 0x80000000) == 0)
                  {
LABEL_183:
                    v43 = aks_remote_session();
                    goto LABEL_184;
                  }

                  __break(1u);
                  goto LABEL_213;
                }

LABEL_206:
                swift_once();
                goto LABEL_11;
              }

LABEL_185:
              sub_100026AC0(v100, v6);
              result = sub_100026AC0(v100, v6);
              goto LABEL_186;
            }

            goto LABEL_202;
          }

LABEL_191:
          swift_once();
          goto LABEL_6;
        }

        v42 = a3;
        if (a3 >> 32 >= a3)
        {
          sub_100294008(a3, a4);
          sub_100294008(v7, v6);
          if (!__DataStorage._bytes.getter() || !__OFSUB__(v42, __DataStorage._offset.getter()))
          {
            __DataStorage._length.getter();
            if (qword_1009735C8 == -1)
            {
              goto LABEL_64;
            }

            goto LABEL_197;
          }

          goto LABEL_200;
        }

        __break(1u);
        goto LABEL_193;
      }

      if (v10 == 2)
      {
        v39 = *(a3 + 16);
        v38 = *(a3 + 24);
        sub_100294008(a3, a4);
        sub_100294008(v7, v6);
        if (!__DataStorage._bytes.getter() || !__OFSUB__(v39, __DataStorage._offset.getter()))
        {
          if (!__OFSUB__(v38, v39))
          {
            __DataStorage._length.getter();
            if (qword_1009735C8 != -1)
            {
              swift_once();
            }

            TaskLocal.get()();
            if ((v108[0] & 0x100000000) != 0 || !LODWORD(v108[0]) || (v108[0] & 0x80000000) == 0)
            {
              v43 = aks_remote_session();
              if (v43 == -536870211)
              {
                if (qword_1009735C0 != -1)
                {
                  swift_once();
                }

                v82 = type metadata accessor for Logger();
                sub_10000C4AC(v82, qword_100977C58);
                v83 = Logger.logObject.getter();
                v84 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v83, v84))
                {
                  v85 = swift_slowAlloc();
                  *v85 = 0;
                  _os_log_impl(&_mh_execute_header, v83, v84, "Received no memory error when creating session, clearing and retrying", v85, 2u);
                }

                v86 = aks_remote_session_reset_all();
                if (v86)
                {
                  v87 = v86;
                  v88 = Logger.logObject.getter();
                  v89 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v88, v89))
                  {
                    v90 = swift_slowAlloc();
                    *v90 = 67109120;
                    *(v90 + 4) = v87;
                    _os_log_impl(&_mh_execute_header, v88, v89, "Failed to aks_remote_session_reset_all, errCode: %d", v90, 8u);
                  }
                }

                TaskLocal.get()();
                if ((v108[0] & 0x100000000) != 0 || !LODWORD(v108[0]) || (v108[0] & 0x80000000) == 0)
                {
                  goto LABEL_183;
                }

                goto LABEL_217;
              }

              goto LABEL_184;
            }

            goto LABEL_209;
          }

          __break(1u);
          goto LABEL_196;
        }

        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

LABEL_100:
      memset(v108, 0, 14);
      sub_100294008(v7, v6);
      sub_100294008(v7, v6);
      if (qword_1009735C8 == -1)
      {
LABEL_101:
        TaskLocal.get()();
        if ((v107 & 1) != 0 || !v106 || (v106 & 0x80000000) == 0)
        {
          v11 = aks_remote_session();
          if (v11 == -536870211)
          {
            if (qword_1009735C0 != -1)
            {
              swift_once();
            }

            v64 = type metadata accessor for Logger();
            sub_10000C4AC(v64, qword_100977C58);
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 0;
              _os_log_impl(&_mh_execute_header, v65, v66, "Received no memory error when creating session, clearing and retrying", v67, 2u);
            }

            v68 = aks_remote_session_reset_all();
            if (v68)
            {
              v69 = v68;
              v70 = Logger.logObject.getter();
              v71 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v70, v71))
              {
                v72 = swift_slowAlloc();
                *v72 = 67109120;
                *(v72 + 4) = v69;
                _os_log_impl(&_mh_execute_header, v70, v71, "Failed to aks_remote_session_reset_all, errCode: %d", v72, 8u);
              }
            }

            TaskLocal.get()();
            if ((v107 & 1) != 0 || !v106 || (v106 & 0x80000000) == 0)
            {
              goto LABEL_183;
            }

            goto LABEL_214;
          }

          goto LABEL_185;
        }

        goto LABEL_204;
      }

LABEL_194:
      swift_once();
      goto LABEL_101;
    }

    v102 = a5;
    v26 = a1;
    a5 = ((a1 >> 32) - a1);
    if (a1 >> 32 >= a1)
    {
      v6 = a3;
      sub_100294008(a3, a4);
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v26, __DataStorage._offset.getter()))
      {
        __DataStorage._length.getter();
        sub_10030F9A0(v6, a4, v105);
        a5 = v102;
        v23 = v6;
        v24 = a4;
        if (!v5)
        {
          result = sub_100026AC0(v6, a4);
          v11 = v105[0];
          goto LABEL_186;
        }

        goto LABEL_219;
      }

LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    __break(1u);
    goto LABEL_188;
  }

  if (v9 != 2)
  {
    v28 = a4 >> 62;
    memset(v105, 0, 14);
    v100 = a3;
    if ((a4 >> 62) > 1)
    {
      v103 = a5;
      if (v28 == 2)
      {
        v40 = *(a3 + 16);
        a5 = *(a3 + 24);
        sub_100294008(a3, a4);
        sub_100294008(v7, v6);
        if (__DataStorage._bytes.getter())
        {
          v41 = v103;
          if (__OFSUB__(v40, __DataStorage._offset.getter()))
          {
            goto LABEL_199;
          }
        }

        else
        {
          v41 = v103;
        }

        if (!__OFSUB__(a5, v40))
        {
          __DataStorage._length.getter();
          if (qword_1009735C8 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          if ((v108[0] & 0x100000000) != 0)
          {
            a5 = v41;
          }

          else
          {
            a5 = v41;
            if (LODWORD(v108[0]) && (v108[0] & 0x80000000) != 0)
            {
              goto LABEL_210;
            }
          }

          v43 = aks_remote_session();
          if (v43 == -536870211)
          {
            if (qword_1009735C0 != -1)
            {
              swift_once();
            }

            v91 = type metadata accessor for Logger();
            sub_10000C4AC(v91, qword_100977C58);
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              *v94 = 0;
              _os_log_impl(&_mh_execute_header, v92, v93, "Received no memory error when creating session, clearing and retrying", v94, 2u);
            }

            v95 = aks_remote_session_reset_all();
            if (v95)
            {
              v96 = v95;
              v97 = Logger.logObject.getter();
              v98 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v97, v98))
              {
                v99 = swift_slowAlloc();
                *v99 = 67109120;
                *(v99 + 4) = v96;
                _os_log_impl(&_mh_execute_header, v97, v98, "Failed to aks_remote_session_reset_all, errCode: %d", v99, 8u);
              }
            }

            TaskLocal.get()();
            if ((v108[0] & 0x100000000) != 0 || !LODWORD(v108[0]) || (v108[0] & 0x80000000) == 0)
            {
              goto LABEL_183;
            }

LABEL_218:
            __break(1u);
          }

          goto LABEL_184;
        }

LABEL_196:
        __break(1u);
LABEL_197:
        swift_once();
LABEL_64:
        TaskLocal.get()();
        if ((v108[0] & 0x100000000) != 0 || !LODWORD(v108[0]) || (v108[0] & 0x80000000) == 0)
        {
          v43 = aks_remote_session();
          if (v43 == -536870211)
          {
            if (qword_1009735C0 == -1)
            {
              goto LABEL_69;
            }

            goto LABEL_211;
          }

LABEL_184:
          v11 = v43;
          goto LABEL_185;
        }

        __break(1u);
        goto LABEL_208;
      }

      memset(v108, 0, 14);
      sub_100294008(a3, a4);
      sub_100294008(v7, v6);
      if (qword_1009735C8 != -1)
      {
        swift_once();
      }

      a5 = qword_1009A0728;
      TaskLocal.get()();
      if ((v107 & 1) == 0 && v106 && v106 < 0)
      {
        goto LABEL_205;
      }

      v11 = aks_remote_session();
      if (v11 != -536870211)
      {
        goto LABEL_182;
      }

      if (qword_1009735C0 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_10000C4AC(v73, qword_100977C58);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "Received no memory error when creating session, clearing and retrying", v76, 2u);
      }

      v77 = aks_remote_session_reset_all();
      if (v77)
      {
        v78 = v77;
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 67109120;
          *(v81 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v79, v80, "Failed to aks_remote_session_reset_all, errCode: %d", v81, 8u);
        }
      }

      TaskLocal.get()();
      if ((v107 & 1) == 0 && v106 && v106 < 0)
      {
        goto LABEL_215;
      }
    }

    else
    {
      if (v28)
      {
        v53 = a3;
        if (a3 >> 32 < a3)
        {
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        sub_100294008(a3, a4);
        sub_100294008(v7, v6);
        if (__DataStorage._bytes.getter() && __OFSUB__(v53, __DataStorage._offset.getter()))
        {
          goto LABEL_201;
        }

        __DataStorage._length.getter();
        if (qword_1009735C8 != -1)
        {
          swift_once();
        }

        v54 = qword_1009A0728;
        TaskLocal.get()();
        if ((v108[0] & 0x100000000) == 0 && LODWORD(v108[0]) && (v108[0] & 0x80000000) != 0)
        {
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          swift_once();
LABEL_69:
          v44 = type metadata accessor for Logger();
          sub_10000C4AC(v44, qword_100977C58);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v45, v46, "Received no memory error when creating session, clearing and retrying", v47, 2u);
          }

          v48 = aks_remote_session_reset_all();
          if (v48)
          {
            v49 = v48;
            v50 = Logger.logObject.getter();
            v51 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 67109120;
              *(v52 + 4) = v49;
              _os_log_impl(&_mh_execute_header, v50, v51, "Failed to aks_remote_session_reset_all, errCode: %d", v52, 8u);
            }
          }

          TaskLocal.get()();
          if ((v108[0] & 0x100000000) != 0 || !LODWORD(v108[0]) || (v108[0] & 0x80000000) == 0)
          {
            goto LABEL_183;
          }

          goto LABEL_216;
        }

        v104 = v54;
        v43 = aks_remote_session();
        if (v43 != -536870211)
        {
          goto LABEL_184;
        }

        if (qword_1009735C0 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_10000C4AC(v55, qword_100977C58);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Received no memory error when creating session, clearing and retrying", v58, 2u);
        }

        v59 = aks_remote_session_reset_all();
        if (v59)
        {
          v60 = v59;
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 67109120;
            *(v63 + 4) = v60;
            _os_log_impl(&_mh_execute_header, v61, v62, "Failed to aks_remote_session_reset_all, errCode: %d", v63, 8u);
          }
        }

        v7 = v104;
        TaskLocal.get()();
        if ((v108[0] & 0x100000000) != 0 || !LODWORD(v108[0]) || (v108[0] & 0x80000000) == 0)
        {
          goto LABEL_183;
        }

        __break(1u);
        goto LABEL_100;
      }

      v103 = a5;
      v108[0] = a3;
      LOWORD(v108[1]) = a4;
      BYTE2(v108[1]) = BYTE2(a4);
      BYTE3(v108[1]) = BYTE3(a4);
      BYTE4(v108[1]) = BYTE4(a4);
      BYTE5(v108[1]) = BYTE5(a4);
      sub_100294008(a3, a4);
      sub_100294008(v7, v6);
      if (qword_1009735C8 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      if ((v107 & 1) == 0 && v106 && v106 < 0)
      {
        goto LABEL_203;
      }

      v11 = aks_remote_session();
      if (v11 != -536870211)
      {
        goto LABEL_182;
      }

      if (qword_1009735C0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000C4AC(v29, qword_100977C58);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Received no memory error when creating session, clearing and retrying", v32, 2u);
      }

      v33 = aks_remote_session_reset_all();
      if (v33)
      {
        v34 = v33;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 67109120;
          *(v37 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v35, v36, "Failed to aks_remote_session_reset_all, errCode: %d", v37, 8u);
        }
      }

      TaskLocal.get()();
      if ((v107 & 1) == 0 && v106 && v106 < 0)
      {
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
        goto LABEL_218;
      }
    }

    v11 = aks_remote_session();
LABEL_182:
    sub_100026AC0(v100, v6);
    result = sub_100026AC0(v100, v6);
    a5 = v103;
    goto LABEL_186;
  }

  v101 = a5;
  a5 = *(a1 + 16);
  v21 = *(a1 + 24);
  v6 = a3;
  sub_100294008(a3, a4);
  if (__DataStorage._bytes.getter() && __OFSUB__(a5, __DataStorage._offset.getter()))
  {
    goto LABEL_189;
  }

  if (__OFSUB__(v21, a5))
  {
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  __DataStorage._length.getter();
  sub_10030F9A0(v6, a4, v105);
  v23 = v6;
  v24 = a4;
  if (!v5)
  {
    result = sub_100026AC0(v6, a4);
    v11 = v105[0];
    a5 = v101;
LABEL_186:
    *a5 = v11;
    return result;
  }

LABEL_219:
  sub_100026AC0(v23, v24);

  __break(1u);
  return result;
}

uint64_t sub_10030F9A0@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, _DWORD *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_62:
        TaskLocal.get()();
        if ((v47 & 1) != 0 || !v46 || (v46 & 0x80000000) == 0)
        {
          result = aks_remote_session();
          if (result != -536870211)
          {
            goto LABEL_85;
          }

          v45 = a3;
          if (qword_1009735C0 != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          sub_10000C4AC(v35, qword_100977C58);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "Received no memory error when creating session, clearing and retrying", v38, 2u);
          }

          v39 = aks_remote_session_reset_all();
          if (v39)
          {
            v40 = v39;
            v41 = Logger.logObject.getter();
            v42 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              *v43 = 67109120;
              *(v43 + 4) = v40;
              _os_log_impl(&_mh_execute_header, v41, v42, "Failed to aks_remote_session_reset_all, errCode: %d", v43, 8u);
            }
          }

          TaskLocal.get()();
          if (v47)
          {
            a3 = v45;
            goto LABEL_84;
          }

          a3 = v45;
          if (!v46 || (v46 & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_99;
        }

        goto LABEL_93;
      }

LABEL_87:
      swift_once();
      goto LABEL_62;
    }

    v44 = a3;
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v15, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      swift_once();
LABEL_10:
      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_100977C58);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Received no memory error when creating session, clearing and retrying", v9, 2u);
      }

      v10 = aks_remote_session_reset_all();
      if (v10)
      {
        v11 = v10;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 67109120;
          *(v14 + 4) = v11;
          _os_log_impl(&_mh_execute_header, v12, v13, "Failed to aks_remote_session_reset_all, errCode: %d", v14, 8u);
        }
      }

      TaskLocal.get()();
      if (v47)
      {
        a3 = v44;
LABEL_81:
        result = aks_remote_session();
        goto LABEL_85;
      }

      a3 = v44;
      if (!v46 || (v46 & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (__OFSUB__(v16, v15))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_25;
      }
    }

    swift_once();
LABEL_25:
    TaskLocal.get()();
    a3 = v44;
    if ((v49 & 1) == 0 && v48 && v48 < 0)
    {
      __break(1u);
      goto LABEL_96;
    }

    result = aks_remote_session();
    if (result == -536870211)
    {
      if (qword_1009735C0 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_97;
    }

    goto LABEL_85;
  }

  if (!v4)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v47 & 1) != 0 || !v46 || (v46 & 0x80000000) == 0)
    {
      result = aks_remote_session();
      if (result != -536870211)
      {
        goto LABEL_85;
      }

      v44 = a3;
      if (qword_1009735C0 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_94;
    }

    goto LABEL_92;
  }

  while (1)
  {
    v44 = a3;
    a3 = a1;
    if (a1 >> 32 < a1)
    {
      __break(1u);
      goto LABEL_87;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(a3, __DataStorage._offset.getter()))
    {
      goto LABEL_91;
    }

    a3 = v44;
    __DataStorage._length.getter();
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v49 & 1) != 0 || !v48 || (v48 & 0x80000000) == 0)
    {
      break;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
LABEL_30:
    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_100977C58);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received no memory error when creating session, clearing and retrying", v20, 2u);
    }

    v21 = aks_remote_session_reset_all();
    if (v21)
    {
      v22 = v21;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67109120;
        *(v25 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to aks_remote_session_reset_all, errCode: %d", v25, 8u);
      }
    }

    TaskLocal.get()();
    if (v49)
    {
      goto LABEL_78;
    }

    a3 = v44;
    if (!v48 || (v48 & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    __break(1u);
  }

  result = aks_remote_session();
  if (result == -536870211)
  {
    if (qword_1009735C0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100977C58);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Received no memory error when creating session, clearing and retrying", v29, 2u);
    }

    v30 = aks_remote_session_reset_all();
    if (v30)
    {
      v31 = v30;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 67109120;
        *(v34 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "Failed to aks_remote_session_reset_all, errCode: %d", v34, 8u);
      }
    }

    TaskLocal.get()();
    if (v49)
    {
LABEL_78:
      a3 = v44;
      goto LABEL_84;
    }

    a3 = v44;
    if (!v48 || (v48 & 0x80000000) == 0)
    {
LABEL_84:
      result = aks_remote_session();
      goto LABEL_85;
    }

LABEL_100:
    __break(1u);
  }

LABEL_85:
  *a3 = result;
  return result;
}

uint64_t sub_100310518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>)
{
  v81 = a8;
  v82 = a7;
  v83 = a9;
  v85 = a6;
  v86 = a5;
  v84 = a2;
  v88 = a1;
  v89 = type metadata accessor for AKSKeyClass();
  v87 = *(v89 - 8);
  v11 = *(v87 + 64);
  v12 = __chkstk_darwin(v89);
  v13 = __chkstk_darwin(v12);
  v15 = (v77 - v14);
  v16 = __chkstk_darwin(v13);
  v18 = v77 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v77 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v77 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v77 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = v77 - v29;
  __chkstk_darwin(v28);
  v33 = v77 - v32;
  v34 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v34)
    {
      v92[0] = a3;
      LOWORD(v92[1]) = a4;
      BYTE2(v92[1]) = BYTE2(a4);
      BYTE3(v92[1]) = BYTE3(a4);
      BYTE4(v92[1]) = BYTE4(a4);
      BYTE5(v92[1]) = BYTE5(a4);
      if (qword_1009735C8 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }

    v30 = a3;
    if (a3 >> 32 >= a3)
    {
      v58 = __DataStorage._bytes.getter();
      if (v58)
      {
        v59 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v59))
        {
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v58 += a3 - v59;
      }

      v60 = __DataStorage._length.getter();
      if (v60 >= (a3 >> 32) - a3)
      {
        v61 = (a3 >> 32) - a3;
      }

      else
      {
        v61 = v60;
      }

      if (qword_1009735C8 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v62 = 0;
      if ((v92[0] & 0x100000000) == 0 && LODWORD(v92[0]))
      {
        if ((v92[0] & 0x80000000) != 0)
        {
          goto LABEL_85;
        }

        v62 = -LODWORD(v92[0]);
      }

      LODWORD(v78) = v62;
      v79 = v61;
      v80 = v58;
      v63 = v87;
      v64 = *(v87 + 104);
      v65 = v89;
      v64(v21, **(&off_1008DB978 + v86), v89);
      v66 = AKSKeyClass.rawValue.getter();
      v67 = *(v63 + 8);
      v67(v21, v65);
      if (v66 >= 0xFFFFFFFF80000000)
      {
        if (v66 <= 0x7FFFFFFF)
        {
          v68 = v89;
          v64(v18, **(&off_1008DB978 + v85), v89);
          v69 = AKSKeyClass.rawValue.getter();
          v67(v18, v68);
          if (v69 >= 0xFFFFFFFF80000000)
          {
            if (v69 <= 0x7FFFFFFF)
            {
              goto LABEL_56;
            }

            goto LABEL_79;
          }

          goto LABEL_77;
        }

        goto LABEL_73;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_62;
  }

  if (v34 == 2)
  {
    v80 = v31;
    v44 = *(a3 + 16);
    v27 = *(a3 + 24);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v46 = v45;
      v47 = __DataStorage._offset.getter();
      if (__OFSUB__(v44, v47))
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v40 = (v44 - v47 + v46);
      v38 = &v27[-v44];
      if (!__OFSUB__(v27, v44))
      {
LABEL_17:
        v48 = __DataStorage._length.getter();
        if (v48 < v38)
        {
          v38 = v48;
        }

        if (qword_1009735C8 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v40 = 0;
      v38 = &v27[-v44];
      if (!__OFSUB__(v27, v44))
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_60:
    swift_once();
LABEL_4:
    TaskLocal.get()();
    v35 = 0;
    if ((v91 & 1) == 0 && v90)
    {
      if (v90 < 0)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v35 = -v90;
    }

    LODWORD(v80) = v35;
    v36 = v87;
    v37 = **(&off_1008DB978 + v86);
    v38 = v89;
    v86 = *(v87 + 104);
    v86(v27, v37, v89);
    v39 = AKSKeyClass.rawValue.getter();
    v41 = *(v36 + 8);
    v40 = (v36 + 8);
    v15 = v41;
    v41(v27, v38);
    if (v39 >= 0xFFFFFFFF80000000)
    {
      if (v39 <= 0x7FFFFFFF)
      {
        v42 = v89;
        v86(v24, **(&off_1008DB978 + v85), v89);
        v43 = AKSKeyClass.rawValue.getter();
        v15(v24, v42);
        if (v43 >= 0xFFFFFFFF80000000)
        {
          if (v43 <= 0x7FFFFFFF)
          {
            goto LABEL_56;
          }

          goto LABEL_74;
        }

        goto LABEL_70;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  memset(v92, 0, 14);
  if (qword_1009735C8 != -1)
  {
LABEL_62:
    swift_once();
  }

  TaskLocal.get()();
  v70 = 0;
  if ((v91 & 1) == 0 && v90)
  {
    if (v90 < 0)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v70 = -v90;
  }

  LODWORD(v80) = v70;
  v71 = v87;
  v15 = (v87 + 104);
  v40 = *(v87 + 104);
  v38 = v89;
  v40(v33, **(&off_1008DB978 + v86), v89);
  v72 = AKSKeyClass.rawValue.getter();
  v73 = *(v71 + 8);
  v73(v33, v38);
  if (v72 < 0xFFFFFFFF80000000)
  {
    goto LABEL_64;
  }

  if (v72 > 0x7FFFFFFF)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
LABEL_20:
    TaskLocal.get()();
    v49 = 0;
    if ((v92[0] & 0x100000000) == 0 && LODWORD(v92[0]))
    {
      if ((v92[0] & 0x80000000) != 0)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
      }

      v49 = -LODWORD(v92[0]);
    }

    v77[1] = v49;
    v78 = v38;
    v79 = v40;
    v50 = v87;
    v51 = *(v87 + 104);
    v52 = v89;
    v51(v15, **(&off_1008DB978 + v86), v89);
    v53 = AKSKeyClass.rawValue.getter();
    v54 = *(v50 + 8);
    v54(v15, v52);
    if (v53 >= 0xFFFFFFFF80000000)
    {
      if (v53 <= 0x7FFFFFFF)
      {
        v55 = v80;
        v56 = v89;
        v51(v80, **(&off_1008DB978 + v85), v89);
        v57 = AKSKeyClass.rawValue.getter();
        v54(v55, v56);
        if (v57 >= 0xFFFFFFFF80000000)
        {
          if (v57 <= 0x7FFFFFFF)
          {
            goto LABEL_56;
          }

          goto LABEL_78;
        }

        goto LABEL_76;
      }

      goto LABEL_72;
    }

    __break(1u);
    goto LABEL_69;
  }

  v74 = v89;
  v40(v30, **(&off_1008DB978 + v85), v89);
  v75 = AKSKeyClass.rawValue.getter();
  v73(v30, v74);
  if (v75 < 0xFFFFFFFF80000000)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v75 > 0x7FFFFFFF)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_56:
  result = aks_sign_signing_key();
  *v83 = result;
  return result;
}

uint64_t sub_100310E8C@<X0>(char a1@<W2>, _DWORD *a2@<X8>)
{
  v4 = type metadata accessor for AKSKeyClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  result = TaskLocal.get()();
  if ((v13 & 1) != 0 || !v12 || (v12 & 0x80000000) == 0)
  {
    (*(v5 + 104))(v8, **(&off_1008DB978 + a1), v4);
    v10 = AKSKeyClass.rawValue.getter();
    result = (*(v5 + 8))(v8, v4);
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v10 <= 0x7FFFFFFF)
    {
      result = aks_validate_local_key();
      *a2 = result;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_100311060()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003110D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_10031115C(_DWORD *a1, int *a2)
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

_DWORD *sub_10031118C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1003111B8@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_100311278@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_100283614();

  *a1 = v2;
  return result;
}

uint64_t sub_1003112B8(__int16 a1)
{
  v2 = sub_10027FC04(&off_1008D6998);
  sub_10028088C(&qword_100977C70, &unk_1007FAFF8);
  swift_arrayDestroy();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 8;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v2[8];
  v9 = (v6 + 63) >> 6;
  v10 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = v11 | (v4 << 6);
      if ((a1 & 0x7F) == *(v3[6] + 4 * v12))
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v14 = v3;
    v15 = (v3[7] + 16 * v12);
    v16 = v15[1];
    v30 = *v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10028E1C8(0, *(v10 + 2) + 1, 1, v10);
    }

    v18 = *(v10 + 2);
    v17 = *(v10 + 3);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v21 = sub_10028E1C8((v17 > 1), v18 + 1, 1, v10);
      v19 = v18 + 1;
      v10 = v21;
    }

    v3 = v14;
    *(v10 + 2) = v19;
    v20 = &v10[16 * v18];
    *(v20 + 4) = v30;
    *(v20 + 5) = v16;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_29:
      v10 = sub_10028E1C8(0, *(v10 + 2) + 1, 1, v10);
      goto LABEL_18;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = v5[v13];
    ++v4;
    if (v8)
    {
      v4 = v13;
      goto LABEL_4;
    }
  }

  if ((a1 & 0x80) == 0)
  {
    goto LABEL_21;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v23 = *(v10 + 2);
  v22 = *(v10 + 3);
  if (v23 >= v22 >> 1)
  {
    v10 = sub_10028E1C8((v22 > 1), v23 + 1, 1, v10);
  }

  *(v10 + 2) = v23 + 1;
  v24 = &v10[16 * v23];
  *(v24 + 4) = 0x74616E696769726FLL;
  *(v24 + 5) = 0xEA0000000000726FLL;
LABEL_21:
  if ((a1 & 0x100) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10028E1C8(0, *(v10 + 2) + 1, 1, v10);
    }

    v26 = *(v10 + 2);
    v25 = *(v10 + 3);
    if (v26 >= v25 >> 1)
    {
      v10 = sub_10028E1C8((v25 > 1), v26 + 1, 1, v10);
    }

    *(v10 + 2) = v26 + 1;
    v27 = &v10[16 * v26];
    *(v27 + 4) = 0x6665524D4341;
    *(v27 + 5) = 0xE600000000000000;
  }

  sub_10028088C(&unk_100976C20, &unk_1007F9D80);
  sub_1003117AC();
  v28 = BidirectionalCollection<>.joined(separator:)();

  return v28;
}

uint64_t sub_1003115C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v18 = *(a1 + 64);
    v5 = *(a1 + 72);
    v7 = *(a2 + 48);
    v6 = *(a2 + 56);
    v8 = *(a2 + 64);
    v9 = *(a2 + 72);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v10 = a1, v11 = a2, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v11, v13 = v12, a1 = v10, (v13 & 1) != 0))
    {
      v14 = (a2 + 120);
      v15 = v2 - 1;
      for (i = (a1 + 120); ; i += 48)
      {
        if (v4)
        {
          if (!v6 || (v3 != v7 || v4 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v6)
        {
          return 0;
        }

        if (v5)
        {
          if ((v9 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v9 & 1 | (v18 != v8))
        {
          return 0;
        }

        if (!v15)
        {
          break;
        }

        v3 = *(i - 3);
        v4 = *(i - 2);
        v18 = *(i - 1);
        v5 = *i;
        v7 = *(v14 - 3);
        v6 = *(v14 - 2);
        v8 = *(v14 - 1);
        v9 = *v14;
        if ((*(i - 5) != *(v14 - 5) || *(i - 4) != *(v14 - 4)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v14 += 48;
        --v15;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100311750(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003117AC()
{
  result = qword_10097F070;
  if (!qword_10097F070)
  {
    sub_100280938(&unk_100976C20, &unk_1007F9D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F070);
  }

  return result;
}

uint64_t sub_100311810(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (qword_1009735C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100977C58);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_10000C4E4(a2, a3, &v17);
      *(v9 + 12) = 1024;
      *(v9 + 14) = v5;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s, AKS errCode: %d", v9, 0x12u);
      sub_10000C60C(v10);
    }

    v17 = a2;
    v18 = a3;

    v11._countAndFlagsBits = 0x646F43727265202CLL;
    v11._object = 0xEB00000000203A65;
    String.append(_:)(v11);
    v19 = v5;
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13 = sub_100010F88(10, v17, v18);
    v15 = v14;
    sub_1000115C8();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v15;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100311A20(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_28:
        TaskLocal.get()();
        if ((v16 & 1) == 0 && v15 && v15 < 0)
        {
          goto LABEL_49;
        }

        goto LABEL_31;
      }

LABEL_40:
      swift_once();
      goto LABEL_28;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
    {
      goto LABEL_46;
    }

    if (__OFSUB__(v5, v4))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_14;
      }
    }

    swift_once();
LABEL_14:
    TaskLocal.get()();
    a1 = 0;
    if ((v18 & 1) != 0 || !v17 || (v17 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!v3)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v16 & 1) == 0 && v15 && v15 < 0)
    {
      goto LABEL_48;
    }

    goto LABEL_31;
  }

LABEL_18:
  v6 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
  {
    goto LABEL_47;
  }

  __DataStorage._length.getter();
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v18 & 1) == 0 && v17 && v17 < 0)
  {
LABEL_50:
    __break(1u);
  }

LABEL_31:
  state = aks_remote_peer_get_state();
  result = sub_100311810(state, 0xD000000000000023, 0x800000010078B750);
  if (v2)
  {
    return result;
  }

  sub_10028088C(&unk_100987410, &unk_1007FB010);
  v9 = swift_allocObject();
  v10 = j__malloc_size(v9);
  *(v9 + 16) = 3;
  *(v9 + 24) = 2 * v10 - 64;
  *(v9 + 32) = 0;
  *(v9 + 34) = 0;
  if (sub_100311750(v9, &off_1008D6A78))
  {

    return 0;
  }

  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007F8830;
  *(v11 + 56) = &type metadata for UInt8;
  *(v11 + 64) = &protocol witness table for UInt8;
  v12 = *(v9 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_44;
  }

  v13 = v11;
  *(v11 + 32) = *(v9 + 32);
  *(v11 + 96) = &type metadata for UInt8;
  *(v11 + 104) = &protocol witness table for UInt8;
  if (v12 == 1)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v11 + 72) = *(v9 + 33);
  *(v11 + 136) = &type metadata for UInt8;
  *(v11 + 144) = &protocol witness table for UInt8;
  if (v12 < 3)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v14 = *(v9 + 34);

  *(v13 + 112) = v14;
  return String.init(format:_:)();
}

uint64_t sub_100311EC0(uint64_t a1, char a2, char a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        result = 4;
        if ((a2 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        result = 11;
        if ((a2 & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {
      if (a1 == 8)
      {
        result = 12;
        if ((a2 & 1) == 0)
        {
          return result;
        }

        return result | 0x80;
      }

      if (a1 != 9)
      {
        if (a1 == 10)
        {
          result = 2;
          if ((a2 & 1) == 0)
          {
            return result;
          }

          return result | 0x80;
        }

        goto LABEL_34;
      }

      if (a3)
      {
        result = 263;
      }

      else
      {
        result = 7;
      }

      if ((a2 & 1) == 0)
      {
        return result;
      }
    }

    return result | 0x80;
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      goto LABEL_16;
    }

    if (a1 == 2)
    {
      result = 5;
      if ((a2 & 1) == 0)
      {
        return result;
      }

      return result | 0x80;
    }

LABEL_34:
    _StringGuts.grow(_:)(28);

    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      result = 1;
      if ((a2 & 1) == 0)
      {
        return result;
      }

      return result | 0x80;
    }

LABEL_16:
    result = 10;
    if ((a2 & 1) == 0)
    {
      return result;
    }

    return result | 0x80;
  }

  result = 7;
  if (a2)
  {
    return result | 0x80;
  }

  return result;
}

uint64_t sub_10031205C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_100311810(a1, a4, a5);
  if (!v5)
  {
    if (a2 && a3 >= 1)
    {
      v11 = sub_1004E53D0(a2, a3);
      free(a2);
      return v11;
    }

    else
    {
      if (qword_1009735C0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000C4AC(v12, qword_100977C58);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_10000C4E4(a4, a5, &v22);
        _os_log_impl(&_mh_execute_header, v13, v14, "%s, no AKS output", v15, 0xCu);
        sub_10000C60C(v16);
      }

      v22 = a4;
      v23 = a5;

      v17._countAndFlagsBits = 0x74756F206F6E202CLL;
      v17._object = 0xEB00000000747570;
      String.append(_:)(v17);
      v18 = sub_100010F88(10, v22, v23);
      v20 = v19;
      sub_1000115C8();
      swift_allocError();
      *v21 = v18;
      *(v21 + 8) = v20;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100312270(uint64_t a1, char a2)
{
  v3 = v2;
  v55 = a1;
  v5 = type metadata accessor for AKSRefKeyParam();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  v7 = __chkstk_darwin(v5);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v11 = type metadata accessor for AKSKeyClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v51 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  if (qword_1009735C0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000C4AC(v18, qword_100977C58);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v49 = v2;
    v50 = v12;
    v12 = v11;
    v21 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = v11;
    *v21 = 136315394;
    v22 = sub_10000C4E4(qword_1007FB228[v55], 0xE100000000000000, &v59);

    *(v21 + 4) = v22;
    *(v21 + 12) = 1024;
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v23 = 0;
    if ((v58 & 0x100000000) == 0 && v58)
    {
      if ((v58 & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

      v23 = -v58;
    }

    *(v21 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v19, v20, "Generating LTK of class %s, keybag: %d", v21, 0x12u);
    sub_10000C60C(v11);

    v11 = v12;
    v3 = v49;
    v12 = v50;
    v58 = 0;
    v59 = 0;
    if ((a2 & 1) == 0)
    {
LABEL_11:
      if (qword_1009735C8 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      if ((v57 & 1) == 0 && v56 && v56 < 0)
      {
        goto LABEL_38;
      }

      (*(v12 + 104))(v17, **(&off_1008DB978 + v55), v11);
      v24 = AKSKeyClass.rawValue.getter();
      v25 = *(v12 + 8);
      v12 += 8;
      v25(v17, v11);
      if (v24 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v24 <= 0x7FFFFFFF)
      {
        signing_key = aks_create_signing_key();
        return sub_10031205C(signing_key, v59, v58, 0xD00000000000001BLL, 0x800000010078B730);
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_28;
    }
  }

  else
  {

    v58 = 0;
    v59 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  result = sub_10041E038();
  if (v3)
  {
    return result;
  }

  v29 = result;
  v30 = v28;
  v48 = v11;
  v50 = 0;
  v31 = type metadata accessor for AKSRefKeyParams();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  AKSRefKeyParams.init()();
  v35 = v53;
  v34 = v54;
  v49 = *(v53 + 104);
  v49(v10, enum case for AKSRefKeyParam.remoteSessionSigningKeyCertificate(_:), v54);
  sub_100294008(v29, v30);
  sub_10030DBB8(v29, v30);
  v36 = v50;
  dispatch thunk of AKSRefKeyParams.set_data(key:value:)();
  v50 = v36;
  if (v36)
  {
    (*(v35 + 8))(v10, v34);
    sub_100026AC0(v29, v30);
  }

  v46 = v29;
  v47 = v30;
  v37 = *(v35 + 8);
  v37(v10, v34);

  v38 = v52;
  v49(v52, enum case for AKSRefKeyParam.remoteSessionSigningKeyType(_:), v34);
  v39 = v50;
  dispatch thunk of AKSRefKeyParams.set_number(key:value:)();
  if (v39)
  {
    v37(v38, v34);
    sub_100026AC0(v46, v47);
  }

  v11 = v12;
  v37(v38, v34);
  v12 = dispatch thunk of AKSRefKeyParams.serialize()();
  v19 = 0;
  if (qword_1009735C8 != -1)
  {
    goto LABEL_39;
  }

LABEL_28:
  TaskLocal.get()();
  v40 = v48;
  if ((v57 & 1) == 0 && v56 && v56 < 0)
  {
LABEL_42:
    __break(1u);
  }

  v41 = v51;
  (*(v11 + 104))(v51, **(&off_1008DB978 + v55), v48);
  v42 = AKSKeyClass.rawValue.getter();
  (*(v11 + 8))(v41, v40);
  if (v42 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v42 > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = *(v12 + 16);
  signing_key_with_params = aks_create_signing_key_with_params();

  v45 = sub_10031205C(signing_key_with_params, v59, v58, 0xD00000000000001BLL, 0x800000010078B730);

  result = sub_100026AC0(v46, v47);
  if (!v19)
  {
    return v45;
  }

  return result;
}

void sub_1003129F0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_28:
        TaskLocal.get()();
        if ((v12 & 1) != 0 || !v11 || (v11 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }

LABEL_39:
      swift_once();
      goto LABEL_28;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (__OFSUB__(v4, v3))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_14;
      }
    }

    swift_once();
LABEL_14:
    TaskLocal.get()();
    a1 = 0;
    if ((v14 & 1) != 0 || !v13 || (v13 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!v2)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v12 & 1) != 0 || !v11 || (v11 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

LABEL_18:
  v5 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v5, __DataStorage._offset.getter()))
  {
    goto LABEL_43;
  }

  __DataStorage._length.getter();
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v14 & 1) == 0 && v13 && v13 < 0)
  {
LABEL_46:
    __break(1u);
  }

LABEL_31:
  v6 = aks_remote_peer_drop();
  if (v6 == -536870184)
  {
    if (qword_1009735C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100977C58);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "aks_remote_peer_drop: peer already dropped (kAKSReturnNotReady)", v10, 2u);
    }
  }

  else
  {
    sub_100311810(v6, 0xD00000000000001ELL, 0x800000010078B780);
  }
}

unint64_t sub_100312E24()
{
  result = qword_100977C80;
  if (!qword_100977C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C80);
  }

  return result;
}

unint64_t sub_100312E7C()
{
  result = qword_100977C88;
  if (!qword_100977C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C88);
  }

  return result;
}

unint64_t sub_100312ED4()
{
  result = qword_100977C90;
  if (!qword_100977C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C90);
  }

  return result;
}

unint64_t sub_100312F2C()
{
  result = qword_100977C98;
  if (!qword_100977C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977C98);
  }

  return result;
}

uint64_t sub_100312F80(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      if (qword_1009735C8 == -1)
      {
LABEL_28:
        TaskLocal.get()();
        if ((v9 & 1) != 0 || !v8 || (v8 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_39;
      }

LABEL_33:
      swift_once();
      goto LABEL_28;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (__OFSUB__(v4, v3))
    {
      __break(1u);
    }

    else
    {
      __DataStorage._length.getter();
      if (qword_1009735C8 == -1)
      {
        goto LABEL_14;
      }
    }

    swift_once();
LABEL_14:
    TaskLocal.get()();
    a1 = 0;
    if ((v11 & 1) != 0 || !v10 || (v10 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!v2)
  {
    if (qword_1009735C8 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    if ((v9 & 1) != 0 || !v8 || (v8 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

LABEL_18:
  v5 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v5, __DataStorage._offset.getter()))
  {
    goto LABEL_37;
  }

  __DataStorage._length.getter();
  if (qword_1009735C8 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if ((v11 & 1) == 0 && v10 && v10 < 0)
  {
LABEL_40:
    __break(1u);
  }

LABEL_31:
  state = aks_remote_peer_get_state();
  return sub_100311810(state, 0xD000000000000023, 0x800000010078B750);
}

uint64_t sub_100313418()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100977CA0);
  v1 = sub_10000C4AC(v0, qword_100977CA0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003134E0()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100977CA0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "SDAirDropSendService start", v9, 2u);
  }

  v10 = v1[14];
  v11 = v1[15];
  sub_10002CDC0(v1 + 11, v10);
  (*(v11 + 32))(v10, v11);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = qword_1009735E0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v15 = sub_1003189C8(&qword_100977C00, type metadata accessor for AirDropActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v1;

  sub_1002B281C(0, 0, v5, &unk_1007FB2E8, v16);

  sub_100637614(0);
  v17 = v1[8];
  v1[8] = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100313770(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = *(*(sub_10028088C(&qword_100976468, &qword_1007F9738) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SFAirDrop.NetworkMetrics() - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_100977DC0, &unk_1007FB320) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.DisplayPriority();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Transfer.State();
  v3[24] = v10;
  v11 = *(v10 - 8);
  v3[25] = v11;
  v12 = *(v11 + 64) + 15;
  v3[26] = swift_task_alloc();
  v13 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDropSend.Transfer();
  v3[28] = v14;
  v15 = *(v14 - 8);
  v3[29] = v15;
  v3[30] = *(v15 + 64);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[34] = v16;
  v17 = *(v16 - 8);
  v3[35] = v17;
  v18 = *(v17 + 64) + 15;
  v3[36] = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  v3[37] = v19;
  v20 = *(v19 - 8);
  v3[38] = v20;
  v3[39] = *(v20 + 64);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDropSend.Request();
  v3[42] = v21;
  v22 = *(v21 - 8);
  v3[43] = v22;
  v3[44] = *(v22 + 64);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v23 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v24 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v25 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v3[50] = v25;
  v26 = *(v25 - 8);
  v3[51] = v26;
  v3[52] = *(v26 + 64);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v27 = type metadata accessor for SFAirDrop.TransferType();
  v3[56] = v27;
  v28 = *(v27 - 8);
  v3[57] = v28;
  v29 = *(v28 + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v30 = type metadata accessor for SFAirDropClient.Identifier();
  v3[60] = v30;
  v31 = *(v30 - 8);
  v3[61] = v31;
  v32 = *(v31 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v33 = type metadata accessor for UUID();
  v3[65] = v33;
  v34 = *(v33 - 8);
  v3[66] = v34;
  v35 = *(v34 + 64) + 15;
  v3[67] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v36 = static AirDropActor.shared;
  v3[68] = static AirDropActor.shared;

  return _swift_task_switch(sub_100313D88, v36, 0);
}

uint64_t sub_100313D88()
{
  v1 = v0[67];
  v2 = v0[16];
  v0[69] = *(v0[17] + 72);
  SFAirDropSend.Request.endpointID.getter();
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_100313E34;
  v4 = v0[67];

  return sub_10047B708(v4);
}

uint64_t sub_100313E34(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *(*v1 + 544);
  v5 = *(*v1 + 536);
  v6 = *(*v1 + 528);
  v7 = *(*v1 + 520);
  v10 = *v1;
  v2[71] = a1;

  v8 = *(v6 + 8);
  v2[72] = v8;
  v2[73] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  return _swift_task_switch(sub_100313FC0, v4, 0);
}

uint64_t sub_100313FC0()
{
  v222 = v0;
  if (*(*(v0 + 568) + 16))
  {
    if (qword_1009735D0 != -1)
    {
      swift_once();
      v127 = *(v0 + 568);
    }

    sub_10000C4AC(*(v0 + 296), qword_100977CA0);

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 568);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v221[0] = v5;
      *v4 = 136315138;
      type metadata accessor for SDAirDropDiscoveredEndpoint(0);
      sub_1003189C8(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v6 = Set.description.getter();
      v8 = sub_10000C4E4(v6, v7, v221);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v1, v2, "Starting send to %s", v4, 0xCu);
      sub_10000C60C(v5);
    }

    v9 = *(v0 + 136);
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = *(v0 + 512);
    if (Strong)
    {
      v12 = *(v0 + 504);
      v13 = *(v0 + 480);
      v14 = *(v0 + 488);
      sub_10043A598(v12);
      swift_unknownObjectRelease();
      (*(v14 + 32))(v11, v12, v13);
    }

    else
    {
      (*(*(v0 + 488) + 104))(*(v0 + 512), enum case for SFAirDropClient.Identifier.daemon(_:), *(v0 + 480));
    }

    v32 = *(v0 + 464);
    v31 = *(v0 + 472);
    v33 = *(v0 + 448);
    v34 = *(v0 + 456);
    v35 = *(v0 + 128);
    SFAirDropSend.Request.type.getter();
    (*(v34 + 104))(v32, enum case for SFAirDrop.TransferType.peerPayment(_:), v33);
    LOBYTE(v35) = static SFAirDrop.TransferType.== infix(_:_:)();
    v36 = *(v34 + 8);
    v36(v32, v33);
    v36(v31, v33);
    if (v35)
    {
      v37 = *(v0 + 512);
      v38 = *(v0 + 480);
      v39 = *(v0 + 488);
      (*(v39 + 8))(v37, v38);
      (*(v39 + 104))(v37, enum case for SFAirDropClient.Identifier.wallet(_:), v38);
    }

    v40 = *(v0 + 584);
    v41 = *(v0 + 576);
    v214 = *(v0 + 568);
    v42 = *(v0 + 552);
    v43 = *(v0 + 536);
    v44 = *(v0 + 520);
    v45 = *(v0 + 392);
    v47 = *(v0 + 128);
    v46 = *(v0 + 136);
    SFAirDropSend.Request.endpointID.getter();
    sub_10047BC78(v43, v0 + 16);
    v41(v43, v44);
    v48 = *(v46 + 80);
    SFAirDropSend.Request.requestSource.getter();
    sub_1002FB3B4(v214, v45);
    v49 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    v50 = (*(*(v49 - 8) + 48))(v45, 1, v49);
    v51 = *(v0 + 392);
    if (v50 == 1)
    {
      sub_100005508(*(v0 + 392), &qword_1009763E0, &qword_1007F95D0);
    }

    else
    {
      v52 = *(v0 + 392);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100294130(v51);
      if (EnumCaseMultiPayload == 3)
      {
        sub_100531FBC(*(v0 + 128), *(v0 + 568), 0, 0, *(v0 + 512), *(v0 + 440));
LABEL_23:

        v153 = *(v0 + 512);
        v156 = *(v0 + 536);
        v158 = *(v0 + 504);
        v160 = *(v0 + 496);
        v150 = *(v0 + 488);
        v152 = *(v0 + 480);
        v163 = *(v0 + 472);
        v166 = *(v0 + 464);
        v97 = *(v0 + 432);
        v148 = *(v0 + 440);
        v98 = *(v0 + 424);
        v139 = *(v0 + 416);
        v100 = *(v0 + 400);
        v99 = *(v0 + 408);
        v101 = *(v0 + 384);
        v141 = v101;
        v102 = *(v0 + 376);
        v135 = v102;
        v175 = *(v0 + 360);
        v145 = *(v0 + 352);
        v103 = *(v0 + 344);
        v137 = *(v0 + 336);
        v172 = *(v0 + 328);
        v178 = *(v0 + 320);
        v181 = *(v0 + 288);
        v184 = *(v0 + 264);
        v188 = *(v0 + 256);
        v191 = *(v0 + 248);
        v196 = *(v0 + 216);
        v201 = *(v0 + 208);
        v206 = *(v0 + 184);
        v211 = *(v0 + 160);
        v216 = *(v0 + 152);
        v219 = *(v0 + 144);
        v143 = *(v0 + 136);
        v104 = *(v0 + 120);
        v105 = *(v0 + 128);
        SFProgressTask.split()();
        v106 = type metadata accessor for TaskPriority();
        (*(*(v106 - 8) + 56))(v101, 1, 1, v106);
        v107 = v98;
        (*(v99 + 16))(v98, v97, v100);
        (*(v103 + 16))(v102, v105, v137);
        v108 = (*(v99 + 80) + 16) & ~*(v99 + 80);
        v109 = (v139 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
        v110 = (*(v103 + 80) + v109 + 8) & ~*(v103 + 80);
        v111 = swift_allocObject();
        (*(v99 + 32))(v111 + v108, v107, v100);
        *(v111 + v109) = v143;
        (*(v103 + 32))(v111 + v110, v135, v137);

        static Task<>.noThrow(priority:operation:)();

        sub_100005508(v141, &qword_100976160, &qword_1007F8770);
        v112 = *(v99 + 8);
        v112(v97, v100);
        v112(v148, v100);
        sub_100005508(v0 + 16, &qword_100977DC8, &unk_1008091C0);
        (*(v150 + 8))(v153, v152);

        v113 = *(v0 + 8);
        goto LABEL_26;
      }
    }

    v162 = v48;
    v215 = *(v0 + 368);
    v54 = *(v0 + 344);
    v204 = *(v0 + 568);
    v209 = *(v0 + 336);
    v55 = *(v0 + 280);
    v56 = *(v0 + 288);
    v193 = *(v0 + 328);
    v198 = *(v0 + 272);
    v57 = *(v0 + 128);
    SFAirDropSend.Request.id.getter();
    SFAirDrop.TransferIdentifier.stringValue.getter();
    sub_10054141C(8);

    v58 = static String._fromSubstring(_:)();
    v60 = v59;

    strcpy(v221, "AirDrop.");
    BYTE1(v221[1]) = 0;
    WORD1(v221[1]) = 0;
    HIDWORD(v221[1]) = -402653184;
    v61._countAndFlagsBits = v58;
    v61._object = v60;
    String.append(_:)(v61);

    Logger.init(subsystem:category:)();
    v165 = *(v55 + 8);
    v165(v56, v198);
    v62 = v209;
    v210 = *(v54 + 16);
    v210(v215, v57, v62);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = *(v0 + 368);
      v66 = *(v0 + 344);
      v194 = *(v0 + 336);
      v199 = *(v0 + 568);
      v67 = *(v0 + 288);
      v186 = *(v0 + 272);
      v68 = swift_slowAlloc();
      v221[0] = swift_slowAlloc();
      *v68 = 136315394;
      SFAirDropSend.Request.id.getter();
      v69 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
      v71 = v70;
      v165(v67, v186);
      (*(v66 + 8))(v65, v194);
      v72 = sub_10000C4E4(v69, v71, v221);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2080;
      sub_1003189C8(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v73 = Set.description.getter();
      v75 = sub_10000C4E4(v73, v74, v221);

      *(v68 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v63, v64, "Send StateMachine START %s {initialEndpoints: %s}", v68, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v76 = *(v0 + 368);
      v77 = *(v0 + 336);
      v78 = *(v0 + 344);

      (*(v78 + 8))(v76, v77);
    }

    v136 = *(v0 + 512);
    v132 = *(v0 + 488);
    v133 = *(v0 + 496);
    v134 = *(v0 + 480);
    v149 = *(v0 + 440);
    v151 = *(v0 + 408);
    v155 = *(v0 + 400);
    v79 = *(v0 + 376);
    v146 = *(v0 + 352);
    v142 = *(v0 + 344);
    v80 = *(v0 + 336);
    v187 = v80;
    v205 = *(v0 + 328);
    v195 = *(v0 + 320);
    v144 = *(v0 + 312);
    v180 = *(v0 + 304);
    v183 = *(v0 + 296);
    v171 = *(v0 + 288);
    v138 = *(v0 + 272);
    v169 = *(v0 + 264);
    v200 = *(v0 + 256);
    v190 = *(v0 + 248);
    v140 = *(v0 + 240);
    v81 = *(v0 + 216);
    v174 = *(v0 + 232);
    v177 = *(v0 + 224);
    v83 = *(v0 + 200);
    v82 = *(v0 + 208);
    v84 = *(v0 + 192);
    v85 = *(v0 + 176);
    v128 = *(v0 + 184);
    v129 = *(v0 + 168);
    v130 = *(v0 + 160);
    v131 = *(v0 + 152);
    v147 = *(v0 + 144);
    v86 = *(v0 + 128);
    sub_1005369A0(v86, *(v0 + 568));
    SFAirDropSend.Request.id.getter();
    v210(v79, v86, v80);
    static Date.now.getter();
    (*(v83 + 104))(v82, enum case for SFAirDropSend.Transfer.State.created(_:), v84);
    (*(v85 + 104))(v128, enum case for SFAirDrop.DisplayPriority.normal(_:), v129);
    v87 = type metadata accessor for SFNWInterfaceType();
    (*(*(v87 - 8) + 56))(v130, 1, 1, v87);
    (*(v132 + 16))(v133, v136, v134);

    SFAirDrop.NetworkMetrics.init()();
    SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)();
    v221[0] = 0;
    v221[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v221, "AirDrop Send [");
    HIBYTE(v221[1]) = -18;
    SFAirDropSend.Request.id.getter();
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v88);

    v165(v171, v138);
    v89._countAndFlagsBits = 93;
    v89._object = 0xE100000000000000;
    String.append(_:)(v89);
    v90 = *(v174 + 16);
    v90(v200, v169, v177);
    v90(v190, v169, v177);
    v210(v79, v86, v80);
    (*(v180 + 16))(v195, v205, v183);
    sub_100318600(v0 + 16, v0 + 56);
    v91 = (*(v174 + 80) + 24) & ~*(v174 + 80);
    v92 = (v140 + *(v142 + 80) + v91) & ~*(v142 + 80);
    v93 = (v146 + *(v180 + 80) + v92) & ~*(v180 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v162;
    (*(v174 + 32))(v94 + v91, v190, v177);
    (*(v142 + 32))(v94 + v92, v79, v187);
    (*(v180 + 32))(v94 + v93, v195, v183);
    v95 = v94 + ((v144 + v93 + 7) & 0xFFFFFFFFFFFFFFF8);
    v96 = *(v0 + 72);
    *v95 = *(v0 + 56);
    *(v95 + 16) = v96;
    *(v95 + 32) = *(v0 + 88);

    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    SFAirDropSend.Transfer.id.getter();
    (*(v151 + 16))(v147, v149, v155);
    (*(v151 + 56))(v147, 0, 1, v155);
    swift_beginAccess();
    sub_1002B0C84(v147, v171);
    swift_endAccess();
    (*(v174 + 8))(v169, v177);
    (*(v180 + 8))(v205, v183);
    goto LABEL_23;
  }

  v15 = *(v0 + 568);

  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 360);
  v17 = *(v0 + 336);
  v18 = *(v0 + 344);
  v19 = *(v0 + 128);
  sub_10000C4AC(*(v0 + 296), qword_100977CA0);
  (*(v18 + 16))(v16, v19, v17);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 536);
    v23 = *(v0 + 520);
    v203 = *(v0 + 360);
    v208 = *(v0 + 576);
    v24 = *(v0 + 344);
    v213 = *(v0 + 336);
    v218 = *(v0 + 584);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v221[0] = v26;
    *v25 = 136315138;
    SFAirDropSend.Request.endpointID.getter();
    sub_1003189C8(&qword_100978CE0, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v208(v22, v23);
    (*(v24 + 8))(v203, v213);
    v30 = sub_10000C4E4(v27, v29, v221);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "No resolved endpoints from initial endpoint: %s", v25, 0xCu);
    sub_10000C60C(v26);
  }

  else
  {
    v114 = *(v0 + 360);
    v115 = *(v0 + 336);
    v116 = *(v0 + 344);

    (*(v116 + 8))(v114, v115);
  }

  v117 = *(v0 + 536);
  v118 = *(v0 + 504);
  v119 = *(v0 + 512);
  v120 = *(v0 + 496);
  v121 = *(v0 + 472);
  v154 = *(v0 + 464);
  v157 = *(v0 + 440);
  v159 = *(v0 + 432);
  v161 = *(v0 + 424);
  v164 = *(v0 + 392);
  v167 = *(v0 + 384);
  v168 = *(v0 + 376);
  v170 = *(v0 + 368);
  v173 = *(v0 + 360);
  v176 = *(v0 + 328);
  v179 = *(v0 + 320);
  v182 = *(v0 + 288);
  v185 = *(v0 + 264);
  v189 = *(v0 + 256);
  v192 = *(v0 + 248);
  v197 = *(v0 + 216);
  v202 = *(v0 + 208);
  v207 = *(v0 + 184);
  v212 = *(v0 + 160);
  v217 = *(v0 + 152);
  v220 = *(v0 + 144);
  v122 = *(v0 + 128);
  v123 = type metadata accessor for SFAirDropSend.Failure();
  sub_1003189C8(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  v125 = v124;
  SFAirDropSend.Request.endpointID.getter();
  (*(*(v123 - 8) + 104))(v125, enum case for SFAirDropSend.Failure.missingEndpoint(_:), v123);
  swift_willThrow();

  v113 = *(v0 + 8);
LABEL_26:

  return v113();
}

uint64_t sub_1003153F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a2;
  v5 = type metadata accessor for UUID();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.DisplayPriority();
  v4[22] = v8;
  v9 = *(v8 - 8);
  v4[23] = v9;
  v10 = *(v9 + 64) + 15;
  v4[24] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropSend.Transfer.State();
  v4[25] = v11;
  v12 = *(v11 - 8);
  v4[26] = v12;
  v13 = *(v12 + 64) + 15;
  v4[27] = swift_task_alloc();
  v14 = sub_10028088C(&qword_100977DD0, &qword_1007FB348);
  v4[28] = v14;
  v15 = *(v14 - 8);
  v4[29] = v15;
  v16 = *(v15 + 64) + 15;
  v4[30] = swift_task_alloc();
  v17 = *(*(sub_10028088C(&qword_100976460, &qword_1007F9730) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4[34] = v18;
  v19 = *(v18 - 8);
  v4[35] = v19;
  v20 = *(v19 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDropSend.Transfer();
  v4[43] = v21;
  v22 = *(v21 - 8);
  v4[44] = v22;
  v23 = *(v22 + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v24 = static AirDropActor.shared;
  v4[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_10031578C, v24, 0);
}

uint64_t sub_10031578C()
{
  v32 = v0;
  v1 = v0[48];
  v2 = v0[42];
  v3 = v0[16];
  v0[50] = sub_10028088C(&qword_100976470, &qword_1007F9740);
  SFProgressTask.initialValue.getter();
  SFAirDropSend.Transfer.id.getter();
  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[34];
  v7 = v0[35];
  v8 = type metadata accessor for Logger();
  v0[51] = sub_10000C4AC(v8, qword_100977CA0);
  v9 = *(v7 + 16);
  v0[52] = v9;
  v0[53] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v5, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[41];
  v14 = v0[34];
  v15 = v0[35];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v16 = 136315138;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v13, v14);
    v21 = sub_10000C4E4(v17, v19, &v31);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "SDAirDropSendService.transfers ADD {id: %s}", v16, 0xCu);
    sub_10000C60C(v29);
  }

  else
  {

    v20 = *(v15 + 8);
    v20(v13, v14);
  }

  v0[54] = v20;
  v22 = v0[17];
  v23 = v22[14];
  v24 = v22[15];
  sub_10002CDC0(v22 + 11, v23);
  v25 = *(v24 + 40);
  v30 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v0[55] = v27;
  *v27 = v0;
  v27[1] = sub_100315AD0;

  return v30(v23, v24);
}

uint64_t sub_100315AD0()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_100316BF4;
  }

  else
  {
    v6 = sub_100315BFC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100315BFC()
{
  v2 = v0[52];
  v1 = v0[53];
  v23 = v0[50];
  v3 = v0[48];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = v0[40];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[30];
  v11 = v0[16];
  v0[57] = *(v0[17] + 16);
  v2(v7, v6, v8);
  v12 = *(v4 + 16);
  v0[58] = v12;
  v0[59] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v9, v3, v5);
  v13 = *(v4 + 56);
  v0[60] = v13;
  v0[61] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v9, 0, 1, v5);
  v14 = CurrentValueSubject.value.modify();
  sub_1002B12F0(v9, v7);
  v14(v0 + 6, 0);
  SFProgressTask.makeAsyncIterator()();
  v15 = sub_1003189C8(&qword_100977C00, type metadata accessor for AirDropActor);
  v0[62] = v15;
  v16 = v0[49];
  v17 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v18 = swift_task_alloc();
  v0[63] = v18;
  *v18 = v0;
  v18[1] = sub_100315DDC;
  v19 = v0[32];
  v20 = v0[30];
  v21 = v0[28];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v16, v15, v21, v0 + 14);
}

uint64_t sub_100315DDC()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v7 = *v1;

  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_100317090;
  }

  else
  {
    v5 = sub_100315EF0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100315EF0()
{
  v149 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 256);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v5 = *(v0 + 424);
    v6 = *(v0 + 408);
    (*(v0 + 416))(*(v0 + 296), *(v0 + 336), *(v0 + 272));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 432);
    v11 = *(v0 + 296);
    v12 = *(v0 + 272);
    v13 = *(v0 + 280);
    if (v9)
    {
      v147 = *(v0 + 432);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v148 = v15;
      *v14 = 136315138;
      sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = v13 + 8;
      v147(v11, v12);
      v20 = sub_10000C4E4(v16, v18, &v148);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "SDAirDropSendService.transfers REMOVE {id: %s}", v14, 0xCu);
      sub_10000C60C(v15);
    }

    else
    {

      v19 = v13 + 8;
      v10(v11, v12);
    }

    *(v0 + 512) = v19;
    v51 = *(v0 + 424);
    v52 = *(v0 + 344);
    v53 = *(v0 + 352);
    v54 = *(v0 + 320);
    v55 = *(v0 + 264);
    v56 = *(v0 + 168);
    v58 = *(v0 + 136);
    v57 = *(v0 + 144);
    v59 = *(v58 + 16);
    (*(v0 + 416))(v54, *(v0 + 336), *(v0 + 272));
    (*(v53 + 56))(v55, 1, 1, v52);
    v60 = CurrentValueSubject.value.modify();
    sub_1002B12F0(v55, v54);
    v60(v0 + 16, 0);
    v61 = *(v58 + 72);
    SFAirDropSend.Request.endpointID.getter();
    v62 = swift_task_alloc();
    *(v0 + 520) = v62;
    *v62 = v0;
    v62[1] = sub_100316904;
    v63 = *(v0 + 168);

    return sub_10047C214(v63);
  }

  v144 = v4;
  log = *(v0 + 464);
  v141 = *(v0 + 472);
  v22 = *(v0 + 416);
  v21 = *(v0 + 424);
  v24 = *(v0 + 368);
  v23 = *(v0 + 376);
  v25 = *(v0 + 336);
  v26 = *(v0 + 312);
  v27 = v2;
  v28 = *(v0 + 272);
  v136 = *(v0 + 408);
  v134 = *(v27 + 32);
  v134(v23, v3, v1);
  v22(v26, v25, v28);
  (log)(v24, v23, v1);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 432);
  v33 = *(v0 + 368);
  v34 = *(v0 + 352);
  v142 = *(v0 + 344);
  v35 = *(v0 + 312);
  v36 = *(v0 + 272);
  v37 = *(v0 + 280);
  if (v31)
  {
    v131 = *(v0 + 216);
    loga = v29;
    v38 = *(v0 + 208);
    v133 = *(v0 + 200);
    v39 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    *v39 = 136315394;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v132 = v30;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v33;
    v43 = v42;
    v32(v35, v36);
    v44 = sub_10000C4E4(v40, v43, &v148);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    SFAirDropSend.Transfer.state.getter();
    sub_1003189C8(&qword_100977DD8, &type metadata accessor for SFAirDropSend.Transfer.State);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v38 + 8))(v131, v133);
    v48 = v41;
    v49 = *(v34 + 8);
    v49(v48, v142);
    v50 = sub_10000C4E4(v45, v47, &v148);

    *(v39 + 14) = v50;
    _os_log_impl(&_mh_execute_header, loga, v132, "SDAirDropSendService.transfers UPDATE {id: %s, state: %s}", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49 = *(v34 + 8);
    v49(v33, v142);
    v32(v35, v36);
  }

  v66 = *(v0 + 480);
  v65 = *(v0 + 488);
  v68 = *(v0 + 464);
  v67 = *(v0 + 472);
  v69 = *(v0 + 456);
  v70 = *(v0 + 424);
  v71 = *(v0 + 376);
  v72 = *(v0 + 344);
  v73 = *(v0 + 248);
  (*(v0 + 416))(*(v0 + 304), *(v0 + 336), *(v0 + 272));
  v68(v73, v71, v72);
  v66(v73, 0, 1, v72);
  v74 = CurrentValueSubject.value.modify();
  v76 = v75;
  if (v144(v73, 1, v72) == 1)
  {
    v146 = v74;
    v143 = v49;
    v77 = *(v0 + 432);
    v78 = *(v0 + 304);
    v79 = *(v0 + 272);
    v80 = *(v0 + 264);
    v81 = *(v0 + 280) + 8;
    sub_100005508(*(v0 + 248), &qword_100976460, &qword_1007F9730);
    sub_1002D3468(v78, v80);
    sub_100005508(v80, &qword_100976460, &qword_1007F9730);
    v77(v78, v79);
    goto LABEL_25;
  }

  v82 = *(v0 + 304);
  v134(*(v0 + 360), *(v0 + 248), *(v0 + 344));
  v83 = *v76;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v76;
  *(v0 + 120) = *v76;
  *v76 = 0x8000000000000000;
  v86 = sub_100570848(v82);
  v88 = *(v85 + 16);
  v89 = (v87 & 1) == 0;
  v90 = __OFADD__(v88, v89);
  v91 = v88 + v89;
  if (v90)
  {
    __break(1u);
    goto LABEL_29;
  }

  LOBYTE(v82) = v87;
  if (*(v85 + 24) >= v91)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

LABEL_29:
    v130 = v86;
    sub_1002CFC0C();
    v86 = v130;
    goto LABEL_20;
  }

  v92 = *(v0 + 304);
  sub_10057454C(v91, isUniquelyReferenced_nonNull_native);
  v93 = *(v0 + 120);
  v86 = sub_100570848(v92);
  if ((v82 & 1) == (v94 & 1))
  {
LABEL_20:
    v146 = v74;
    v96 = *(v0 + 120);
    v143 = v49;
    if (v82)
    {
      (*(*(v0 + 352) + 40))(v96[7] + *(*(v0 + 352) + 72) * v86, *(v0 + 360), *(v0 + 344));
    }

    else
    {
      v98 = *(v0 + 416);
      v97 = *(v0 + 424);
      v100 = *(v0 + 352);
      v99 = *(v0 + 360);
      v101 = *(v0 + 344);
      v102 = *(v0 + 304);
      v103 = *(v0 + 272);
      v104 = *(v0 + 280);
      v96[(v86 >> 6) + 8] |= 1 << v86;
      v105 = v86;
      v98(v96[6] + *(v104 + 72) * v86, v102, v103);
      v106 = v134(v96[7] + *(v100 + 72) * v105, v99, v101);
      v111 = v96[2];
      v90 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v90)
      {
        __break(1u);
        return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v106, v107, v108, v109, v110);
      }

      v96[2] = v112;
    }

    v113 = *(v0 + 280) + 8;
    (*(v0 + 432))(*(v0 + 304), *(v0 + 272));
    v114 = *v76;
    *v76 = v96;

LABEL_25:
    v115 = *(v0 + 376);
    v145 = *(v0 + 344);
    v117 = *(v0 + 208);
    v116 = *(v0 + 216);
    v118 = *(v0 + 192);
    v119 = *(v0 + 176);
    v120 = *(v0 + 184);
    v135 = v119;
    v137 = *(v0 + 200);
    v121 = *(v0 + 136);
    logb = (*(v0 + 352) + 8);
    v146();
    v122 = v121[7];
    sub_10055B900(v115);
    v123 = v121[14];
    v124 = v121[15];
    sub_10002CDC0(v121 + 11, v123);
    SFAirDropSend.Transfer.state.getter();
    SFAirDropSend.Transfer.displayPriority.getter();
    (*(v124 + 48))(v116, v118, v123, v124);
    (*(v120 + 8))(v118, v135);
    (*(v117 + 8))(v116, v137);
    v143(v115, v145);
    v125 = *(v0 + 496);
    v126 = *(v0 + 392);
    v127 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v128 = swift_task_alloc();
    *(v0 + 504) = v128;
    *v128 = v0;
    v128[1] = sub_100315DDC;
    v106 = *(v0 + 256);
    v129 = *(v0 + 240);
    v109 = *(v0 + 224);
    v110 = v0 + 112;
    v107 = v126;
    v108 = v125;

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v106, v107, v108, v109, v110);
  }

  v95 = *(v0 + 272);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100316904()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 152);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100316A70, v2, 0);
}

uint64_t sub_100316A70()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 328);
  v9 = *(v0 + 320);
  v13 = *(v0 + 312);
  v14 = *(v0 + 304);
  v15 = *(v0 + 296);
  v16 = *(v0 + 288);
  v17 = *(v0 + 264);
  v18 = *(v0 + 256);
  v19 = *(v0 + 248);
  v20 = *(v0 + 240);
  v10 = *(v0 + 216);
  v21 = *(v0 + 192);
  v22 = *(v0 + 168);
  (*(v0 + 432))(*(v0 + 336), *(v0 + 272));
  (*(v7 + 8))(v3, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100316BF4()
{
  v52 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  (*(v0 + 416))(*(v0 + 288), *(v0 + 336), *(v0 + 272));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 432);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 272);
  if (v6)
  {
    v48 = v4;
    v11 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v11 = 136315394;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v7(v8, v10);
    v15 = sub_10000C4E4(v12, v14, &v51);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v47 = v16;
    _os_log_impl(&_mh_execute_header, v48, v5, "SDAirDropSendService.transfers ERROR {id: %s, error: %@}", v11, 0x16u);
    sub_100005508(v47, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v49);
  }

  else
  {

    v7(v8, v10);
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 408);
  (*(v0 + 416))(*(v0 + 296), *(v0 + 336), *(v0 + 272));
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 432);
  v23 = *(v0 + 296);
  v24 = *(v0 + 272);
  v25 = *(v0 + 280);
  if (v21)
  {
    v50 = *(v0 + 432);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51 = v27;
    *v26 = 136315138;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v31 = v25 + 8;
    v50(v23, v24);
    v32 = sub_10000C4E4(v28, v30, &v51);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v19, v20, "SDAirDropSendService.transfers REMOVE {id: %s}", v26, 0xCu);
    sub_10000C60C(v27);
  }

  else
  {

    v31 = v25 + 8;
    v22(v23, v24);
  }

  *(v0 + 512) = v31;
  v33 = *(v0 + 424);
  v34 = *(v0 + 344);
  v35 = *(v0 + 352);
  v36 = *(v0 + 320);
  v37 = *(v0 + 264);
  v38 = *(v0 + 168);
  v40 = *(v0 + 136);
  v39 = *(v0 + 144);
  v41 = *(v40 + 16);
  (*(v0 + 416))(v36, *(v0 + 336), *(v0 + 272));
  (*(v35 + 56))(v37, 1, 1, v34);
  v42 = CurrentValueSubject.value.modify();
  sub_1002B12F0(v37, v36);
  v42(v0 + 16, 0);
  v43 = *(v40 + 72);
  SFAirDropSend.Request.endpointID.getter();
  v44 = swift_task_alloc();
  *(v0 + 520) = v44;
  *v44 = v0;
  v44[1] = sub_100316904;
  v45 = *(v0 + 168);

  return sub_10047C214(v45);
}

uint64_t sub_100317090()
{
  v52 = v0;
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  v1 = *(v0 + 112);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  (*(v0 + 416))(*(v0 + 288), *(v0 + 336), *(v0 + 272));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 432);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 272);
  if (v6)
  {
    v48 = v4;
    v11 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v11 = 136315394;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v7(v8, v10);
    v15 = sub_10000C4E4(v12, v14, &v51);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v47 = v16;
    _os_log_impl(&_mh_execute_header, v48, v5, "SDAirDropSendService.transfers ERROR {id: %s, error: %@}", v11, 0x16u);
    sub_100005508(v47, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v49);
  }

  else
  {

    v7(v8, v10);
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 408);
  (*(v0 + 416))(*(v0 + 296), *(v0 + 336), *(v0 + 272));
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 432);
  v23 = *(v0 + 296);
  v24 = *(v0 + 272);
  v25 = *(v0 + 280);
  if (v21)
  {
    v50 = *(v0 + 432);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51 = v27;
    *v26 = 136315138;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v31 = v25 + 8;
    v50(v23, v24);
    v32 = sub_10000C4E4(v28, v30, &v51);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v19, v20, "SDAirDropSendService.transfers REMOVE {id: %s}", v26, 0xCu);
    sub_10000C60C(v27);
  }

  else
  {

    v31 = v25 + 8;
    v22(v23, v24);
  }

  *(v0 + 512) = v31;
  v33 = *(v0 + 424);
  v34 = *(v0 + 344);
  v35 = *(v0 + 352);
  v36 = *(v0 + 320);
  v37 = *(v0 + 264);
  v38 = *(v0 + 168);
  v40 = *(v0 + 136);
  v39 = *(v0 + 144);
  v41 = *(v40 + 16);
  (*(v0 + 416))(v36, *(v0 + 336), *(v0 + 272));
  (*(v35 + 56))(v37, 1, 1, v34);
  v42 = CurrentValueSubject.value.modify();
  sub_1002B12F0(v37, v36);
  v42(v0 + 16, 0);
  v43 = *(v40 + 72);
  SFAirDropSend.Request.endpointID.getter();
  v44 = swift_task_alloc();
  *(v0 + 520) = v44;
  *v44 = v0;
  v44[1] = sub_100316904;
  v45 = *(v0 + 168);

  return sub_10047C214(v45);
}

uint64_t sub_100317544(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Transfer();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v2[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003176F8, v12, 0);
}

uint64_t sub_1003176F8()
{
  v34 = v0;
  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100977CA0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    sub_1003189C8(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000C4E4(v14, v16, &v33);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Canceling send transfer %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[4] + 16);
  CurrentValueSubject.value.getter();
  v19 = v0[2];
  if (*(v19 + 16) && (v20 = sub_100570848(v0[3]), (v21 & 1) != 0))
  {
    v22 = v0[7];
    v23 = v0[4];
    (*(v0[9] + 16))(v0[10], *(v19 + 56) + *(v0[9] + 72) * v20, v0[8]);

    v24 = *(v23 + 72);
    SFAirDropSend.Transfer.endpointID.getter();
    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_100317A60;
    v26 = v0[7];

    return sub_10047C214(v26);
  }

  else
  {

    v28 = *(v0[4] + 80);
    sub_100531B38(v0[3]);
    v29 = v0[13];
    v30 = v0[10];
    v31 = v0[7];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_100317A60()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100317BCC, v2, 0);
}

uint64_t sub_100317BCC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = *(v0[4] + 80);
  sub_100531B38(v0[3]);
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100317C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_10028088C(&qword_100977DA0, &unk_1007FB2F0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_10028088C(&qword_100977DA8, &unk_100806FB0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v4[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100317DF4, v11, 0);
}

uint64_t sub_100317DF4()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v0[2] = *(v0[3] + 16);
  sub_10028088C(&qword_100977DB0, &qword_1007FB300);
  sub_10031859C();
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_1003189C8(&qword_100977C00, type metadata accessor for AirDropActor);
  v0[11] = v5;
  v6 = v0[10];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100317F60;
  v8 = v0[9];

  return sub_1004C48E0(v6, v5);
}

uint64_t sub_100317F60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(*v2 + 104) = a1;

  if (!v1)
  {
    v6 = *(v3 + 80);

    return _swift_task_switch(sub_100318074, v6, 0);
  }

  return result;
}

uint64_t sub_100318074()
{
  v19 = v0;
  v1 = v0[13];
  if (v1)
  {
    if (qword_1009735D0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100977CA0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      type metadata accessor for SFAirDrop.TransferIdentifier();
      type metadata accessor for SFAirDropSend.Transfer();
      sub_1003189C8(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v7 = Dictionary.description.getter();
      v9 = sub_10000C4E4(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Send transfers updates in daemon: %s", v5, 0xCu);
      sub_10000C60C(v6);
    }

    v10 = v0[3];
    sub_100392104(v1, &_swiftEmptyDictionarySingleton);

    v11 = v0[10];
    v12 = v0[11];
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_100317F60;
    v14 = v0[9];

    return sub_1004C48E0(v11, v12);
  }

  else
  {
    v16 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100318340()
{
  v1 = *(v0 + 16);

  sub_10004C60C(v0 + 40);
  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  sub_10000C60C((v0 + 88));

  return v0;
}

uint64_t sub_1003183A8()
{
  sub_100318340();

  return swift_deallocClassInstance();
}

void sub_100318400()
{
  if (qword_1009735D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100977CA0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SDAirDropSendService stop", v2, 2u);
  }
}

uint64_t sub_1003184E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100317C84(a1, v4, v5, v6);
}

unint64_t sub_10031859C()
{
  result = qword_100977DB8;
  if (!qword_100977DB8)
  {
    sub_100280938(&qword_100977DB0, &qword_1007FB300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977DB8);
  }

  return result;
}

uint64_t sub_100318600(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100977DC8, &unk_1008091C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100318670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(type metadata accessor for SFAirDropSend.Transfer() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for SFAirDropSend.Request() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(type metadata accessor for Logger() - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v3 + 16);
  v19 = swift_task_alloc();
  *(v7 + 16) = v19;
  *v19 = v7;
  v19[1] = sub_100005C00;

  return sub_100532E40(a1, a2, a3, v18, v3 + v10, v3 + v13, v3 + v16, v3 + v17);
}

uint64_t sub_100318864(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100976470, &qword_1007F9740) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SFAirDropSend.Request() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C04;

  return sub_1003153F8(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1003189C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100318A10()
{
  v1 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_iCloudAltDSID + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_personaSession);

  sub_10000C60C((v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_volumeManager));
  v5 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_localCache);

  v6 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_deviceDiscoveryTask);

  v7 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_messageReceivingTask);

  v8 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_volumeExpirationTask);

  v9 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_volumes);

  v10 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_pairingDeviceIdentifiers);

  v11 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_performRequest + 8);

  v12 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_createDeviceSequence + 8);

  v13 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication30IndividualPersonaVolumeManager_fetchLocalLTK + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100318B48()
{
  sub_100318A10();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t _s30IndividualPersonaVolumeManagerCMa()
{
  result = qword_100977E58;
  if (!qword_100977E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100318BC8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100318CB4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978040);
  v1 = sub_10000C4AC(v0, qword_100978040);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100318D7C(uint64_t a1)
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

  return _swift_task_switch(sub_100318F88, v15, 0);
}

uint64_t sub_100318F88()
{
  v58 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
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
      LOBYTE(v16) = SFIsiCloudFamilyLink();

      if ((v16 & 1) == 0)
      {

        goto LABEL_13;
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

        sub_100319A4C();
        v23 = sub_1005C72C8(0xD000000000000010, 0x800000010078BAB0, 1);
        v44 = v0[3];
        v45 = *(v44 + 16);
        *(v44 + 16) = v23;

        goto LABEL_18;
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
    sub_10000C4AC(v28, qword_100978040);
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
      v55 = v30;
      v38 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v56;
      *v38 = 136315394;
      v53 = v29;
      SFAirDropReceive.AskRequest.id.getter();
      sub_1002891F4();
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v34;
      v41 = v40;
      (*(v36 + 8))(v35, v37);
      (*(v32 + 8))(v33, v39);
      v42 = sub_10000C4E4(v52, v41, &v57);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2112;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v43;
      *v54 = v43;
      _os_log_impl(&_mh_execute_header, v53, v55, "Failed to get iCloud Family app for ask request %s: %@", v38, 0x16u);
      sub_100005508(v54, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v56);
    }

    else
    {

      (*(v32 + 8))(v33, v34);
    }

LABEL_18:
    v22 = *(v0[3] + 16) != 0;
  }

  else
  {
LABEL_13:
    v22 = 0;
  }

  v46 = v0[15];
  v47 = v0[12];
  v48 = v0[9];
  v49 = v0[6];

  v50 = v0[1];

  return v50(v22);
}

uint64_t sub_100319424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_100319890@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriCloudFamilyLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1003198C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100318D7C(a1);
}

void sub_100319960(uint64_t a1, char a2)
{
  sub_1003D8D18(&off_1008D6D78, a2);
  sub_100005508(&unk_1008D6D98, &qword_100981D40, &unk_1007FA6C0);
  v2 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100319A4C()
{
  result = qword_100978130;
  if (!qword_100978130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100978130);
  }

  return result;
}

uint64_t *AirDropActor.shared.unsafeMutableAddressor()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  return &static AirDropActor.shared;
}

uint64_t AirDropActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100319BC0(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a3 = v4;
  return result;
}

uint64_t *IDMSActor.shared.unsafeMutableAddressor()
{
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  return &static IDMSActor.shared;
}

uint64_t sub_100319C74(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_100319D88(unint64_t *a1, void (*a2)(void))
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

uint64_t sub_100319E14(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

void *sub_100319E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028FCA0(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v28 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v29 = v7;
    v30 = *(a1 + 36);
    v10 = *(*(a1 + 56) + 8 * v6);
    v11 = v10[3];
    v12 = v10[5];
    v34 = v10[4];
    v13 = v10[8];
    v14 = v10[9];
    v15 = v10[15];
    v31 = v10[2];
    v32 = v10[14];

    v35 = v12;

    v33 = v14;
    sub_100294008(v13, v14);
    v17 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage[3];

    if (v17 >= v16 >> 1)
    {
      result = sub_10028FCA0((v16 > 1), v17 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v17 + 1;
    v18 = &_swiftEmptyArrayStorage[8 * v17];
    v18[4] = v31;
    v18[5] = v11;
    *&v19 = v13;
    *(&v19 + 1) = v33;
    *&v20 = v32;
    *(&v20 + 1) = v15;
    v18[6] = v34;
    v18[7] = v35;
    *(v18 + 4) = v19;
    *(v18 + 5) = v20;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v9);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v30 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v8 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v9 << 6;
      v24 = v9 + 1;
      v25 = (a1 + 72 + 8 * v9);
      while (v24 < (v8 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_10000CDD4(v6, v30, 0);
          v8 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_10000CDD4(v6, v30, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v8;
    if (v29 + 1 == v28)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

uint64_t sub_10031A108()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978280);
  v1 = sub_10000C4AC(v0, qword_100978280);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10031A1D0()
{
  v1 = *(v0 + 32);
  v2 = v1 == 2;
  v3 = 0x101020100uLL >> (8 * v1);
  if (*(v0 + 33))
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10031A200()
{
  v1 = *(v0 + 32);
  v2 = v1 == 2;
  v3 = 0x101020100uLL >> (8 * v1);
  if (*(v0 + 33))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10031A230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 120) == 1)
  {
    v3 = *(a1 + 72);
    v2 = *(a1 + 80);
    *a2 = v3;
    a2[1] = v2;
    return sub_100294008(v3, v2);
  }

  else
  {
    v5 = sub_100010F88(10, 0xD00000000000001ELL, 0x800000010078BC50);
    v7 = v6;
    sub_1000115C8();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    return swift_willThrow();
  }
}

uint64_t sub_10031A2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 104);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(a1 + 104);

  for (i = 0; v6; result = )
  {
    v11 = i;
LABEL_9:
    v12 = *(*(v3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v6)))));
    v6 &= v6 - 1;

    sub_1004EC7CC();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 10;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 9;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      *a2 = 0;
      a2[1] = 0xE000000000000000;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10031A458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 96);
  v2 = *(a1 + 104);
  *a2 = v3;
  a2[1] = v2;
  return sub_1002A9924(v3, v2);
}

uint64_t sub_10031A520(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_10031A574()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 33);
  v13 = *(v0 + 32);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  swift_beginAccess();
  v8 = *(v0 + 104);

  sub_100294008(v4, v5);
  sub_100294008(v6, v7);

  v10 = sub_100319E88(v9);

  v14[0] = v2;
  v14[1] = v1;
  v15 = v3;
  v16 = v13;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v10;
  if (qword_1009735F8 != -1)
  {
    swift_once();
  }

  sub_10031F988();
  v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_10031F8D0(v14);
  return v11;
}

void sub_10031A704()
{
  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100978280);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    sub_1004EC7CC();
    v8 = sub_10000C4E4(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Storing %s", v4, 0xCu);
    sub_10000C60C(v5);
  }

  v9 = *(v0 + 112);
  v11 = __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  os_unfair_lock_lock(v9 + 4);
  sub_1003206A8(v12);
  os_unfair_lock_unlock(v9 + 4);
}

uint64_t sub_10031A8E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == 1)
  {
    v3 = *(a2 + 32);
    v4 = *(a2 + 40);
    swift_beginAccess();

    v6 = *(a1 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + 104);
    *(a1 + 104) = 0x8000000000000000;
    sub_10057A8C4(a2, v3, v4, isUniquelyReferenced_nonNull_native);

    *(a1 + 104) = v13;
    swift_endAccess();
    return sub_10031D36C();
  }

  else
  {
    v9 = sub_100010F88(10, 0xD00000000000001ELL, 0x800000010078BC50);
    v11 = v10;
    sub_1000115C8();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    return swift_willThrow();
  }
}

uint64_t sub_10031AA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  return sub_10000FF90(a1 + v4, a2, &unk_100976120, &qword_1007F9260);
}

uint64_t sub_10031AA88(uint64_t a1, char *a2, NSObject *a3, unint64_t a4)
{
  v92 = a4;
  v88 = a3;
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v95 = &v84 - v8;
  v9 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v97 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v94 = &v84 - v14;
  __chkstk_darwin(v13);
  v16 = &v84 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v93 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v90 = &v84 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v84 - v25;
  v27 = __chkstk_darwin(v24);
  v91 = &v84 - v28;
  __chkstk_darwin(v27);
  v30 = &v84 - v29;
  v31 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  v32 = a1;
  sub_10000FF90(a1 + v31, v16, &unk_100976120, &qword_1007F9260);
  v96 = *(v18 + 48);
  if (v96(v16, 1, v17) == 1)
  {
    sub_100005508(v16, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    (*(v18 + 32))(v30, v16, v17);
    v89 = v30;
    v33 = a2;
    if (static UUID.== infix(_:_:)())
    {
      v34 = v94;
      (*(v18 + 56))(v94, 1, 1, v17);
      swift_beginAccess();
      sub_10000C788(v34, a1 + v31, &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      v35 = type metadata accessor for Date();
      v36 = v95;
      (*(*(v35 - 8) + 56))(v95, 1, 1, v35);
      v37 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
      swift_beginAccess();
      sub_10000C788(v36, a1 + v37, &qword_10097A7F0, &unk_1007FB600);
      swift_endAccess();
      if (qword_1009735F0 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000C4AC(v38, qword_100978280);
      v39 = v91;
      (*(v18 + 16))(v91, a2, v17);
      v40 = v92;

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v87 = v18;
        v44 = v43;
        v86 = swift_slowAlloc();
        v98[0] = v86;
        *v44 = 136315394;
        sub_1000053A0(&qword_100978CE0, &type metadata accessor for UUID);
        LODWORD(v85) = v42;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v39;
        v48 = v47;
        v90 = a2;
        v49 = *(v87 + 8);
        v49(v46, v17);
        v50 = sub_10000C4E4(v45, v48, v98);

        *(v44 + 4) = v50;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_10000C4E4(v88, v40, v98);
        _os_log_impl(&_mh_execute_header, v41, v85, "Cleared active sessionID %s with remoteDevice %s", v44, 0x16u);
        swift_arrayDestroy();

        v18 = v87;

        v49(v89, v17);
      }

      else
      {

        v73 = *(v18 + 8);
        v73(v39, v17);
        v73(v89, v17);
      }
    }

    else
    {
      v92 = v18 + 48;
      if (qword_1009735F0 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000C4AC(v51, qword_100978280);
      v52 = v18;
      v53 = *(v18 + 16);
      v54 = v89;
      v53(v26, v89, v17);
      v55 = v90;
      v53(v90, v33, v17);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = v52;
        v87 = v52;
        v60 = v58;
        v85 = v58;
        v91 = swift_slowAlloc();
        v98[0] = v91;
        *v60 = 136315394;
        sub_1000053A0(&qword_100978CE0, &type metadata accessor for UUID);
        v88 = v56;
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        LODWORD(v86) = v57;
        v63 = v62;
        v64 = *(v59 + 8);
        v64(v26, v17);
        v65 = v64;
        v66 = sub_10000C4E4(v61, v63, v98);

        v67 = v85;
        *(v85 + 4) = v66;
        *(v67 + 12) = 2080;
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        v65(v55, v17);
        v71 = sub_10000C4E4(v68, v70, v98);

        *(v67 + 14) = v71;
        v72 = v88;
        _os_log_impl(&_mh_execute_header, v88, v86, "Active sessionID %s in remoteLTK is not cleared as it doesn't match the input: %s", v67, 0x16u);
        swift_arrayDestroy();

        v65(v89, v17);
        v18 = v87;
      }

      else
      {

        v74 = *(v52 + 8);
        v74(v55, v17);
        v74(v26, v17);
        v74(v54, v17);
        v18 = v52;
      }
    }
  }

  v75 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID;
  swift_beginAccess();
  v76 = v97;
  sub_10000FF90(v32 + v75, v97, &unk_100976120, &qword_1007F9260);
  if (v96(v76, 1, v17) == 1)
  {
    return sub_100005508(v76, &unk_100976120, &qword_1007F9260);
  }

  v78 = v93;
  (*(v18 + 32))(v93, v76, v17);
  v79 = static UUID.== infix(_:_:)();
  result = (*(v18 + 8))(v78, v17);
  if (v79)
  {
    v80 = v94;
    (*(v18 + 56))(v94, 1, 1, v17);
    swift_beginAccess();
    sub_10000C788(v80, v32 + v75, &unk_100976120, &qword_1007F9260);
    swift_endAccess();
    v81 = type metadata accessor for Date();
    v82 = v95;
    (*(*(v81 - 8) + 56))(v95, 1, 1, v81);
    v83 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate;
    swift_beginAccess();
    sub_10000C788(v82, v32 + v83, &qword_10097A7F0, &unk_1007FB600);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10031B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a4;
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v84 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v76 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v85 = v13;
  v86 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v83 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = &v76 - v18;
  v19 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v76 - v25;
  __chkstk_darwin(v24);
  v28 = &v76 - v27;
  v29 = type metadata accessor for UUID();
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29);
  v32 = __chkstk_darwin(v31);
  v36 = &v76 - v35;
  if (*(a1 + 120) != 1)
  {
    v45 = 0x800000010078BC50;
    v46 = 10;
    v47 = 0xD00000000000001ELL;
LABEL_9:
    v48 = sub_100010F88(v46, v47, v45);
    v50 = v49;
    sub_1000115C8();
    swift_allocError();
    *v51 = v48;
    *(v51 + 8) = v50;
    return swift_willThrow();
  }

  v80 = v34;
  v81 = v33;
  v82 = v32;
  swift_beginAccess();
  v37 = *(a1 + 104);
  if (!*(v37 + 16))
  {
LABEL_8:
    v47 = 0x746F6D6572206F4ELL;
    v45 = 0xED00004B544C2065;
    v46 = 33;
    goto LABEL_9;
  }

  v38 = sub_100012854(a2, a3);
  if ((v39 & 1) == 0)
  {

    goto LABEL_8;
  }

  v40 = *(*(v37 + 56) + 8 * v38);

  v41 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID;
  swift_beginAccess();
  v78 = v40;
  v79 = v41;
  sub_10000FF90(v40 + v41, v28, &unk_100976120, &qword_1007F9260);
  v43 = v81;
  v42 = v82;
  v77 = *(v81 + 48);
  if (v77(v28, 1, v82) == 1)
  {
    sub_100005508(v28, &unk_100976120, &qword_1007F9260);
    v44 = v78;
  }

  else
  {
    (*(v43 + 32))(v36, v28, v42);
    v53 = static UUID.== infix(_:_:)();
    (*(v43 + 8))(v36, v42);
    v44 = v78;
    if (v53)
    {
    }
  }

  Date.init()();
  v54 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate;
  swift_beginAccess();
  sub_10000FF90(v44 + v54, v12, &qword_10097A7F0, &unk_1007FB600);
  v56 = v85;
  v55 = v86;
  if ((*(v86 + 48))(v12, 1, v85) == 1)
  {
    sub_100005508(v12, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    v78 = v54;
    v57 = v83;
    (*(v55 + 32))(v83, v12, v56);
    sub_10000FF90(v44 + v79, v26, &unk_100976120, &qword_1007F9260);
    v58 = v82;
    if (v77(v26, 1, v82) == 1)
    {
      (*(v55 + 8))(v57, v56);
      sub_100005508(v26, &unk_100976120, &qword_1007F9260);
    }

    else
    {
      (*(v81 + 32))(v80, v26, v58);
      Date.timeIntervalSince1970.getter();
      v60 = v59;
      Date.timeIntervalSince1970.getter();
      v62 = v60 - v61;
      v63 = v57;
      if (v62 >= 0.0 && v62 < 60.0)
      {
        v89 = 0;
        v90 = 0xE000000000000000;
        _StringGuts.grow(_:)(43);

        v89 = 0xD000000000000029;
        v90 = 0x800000010078BC70;
        sub_1000053A0(&qword_100978CE0, &type metadata accessor for UUID);
        v64 = v80;
        v65 = v82;
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v66);

        v67 = sub_100010F88(38, v89, v90);
        v69 = v68;
        sub_1000115C8();
        swift_allocError();
        *v70 = v67;
        *(v70 + 8) = v69;
        swift_willThrow();

        (*(v81 + 8))(v64, v65);
        v71 = *(v86 + 8);
        v71(v63, v56);
        return (v71)(v88, v56);
      }

      (*(v81 + 8))(v80, v82);
      v55 = v86;
      (*(v86 + 8))(v57, v56);
    }

    v54 = v78;
  }

  v73 = v81;
  v72 = v82;
  (*(v81 + 16))(v23, v87, v82);
  (*(v73 + 56))(v23, 0, 1, v72);
  v74 = v79;
  swift_beginAccess();
  sub_10000C788(v23, v44 + v74, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  v75 = v84;
  (*(v55 + 32))(v84, v88, v56);
  (*(v55 + 56))(v75, 0, 1, v56);
  swift_beginAccess();
  sub_10000C788(v75, v44 + v54, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
}

uint64_t sub_10031BDF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 104);

  result = sub_10028BE10(v5);
  *a2 = result;
  return result;
}

void sub_10031BE58(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v66 = &v62 - v7;
  swift_beginAccess();
  v8 = *(a1 + 104);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(a1 + 104) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v69 = *(a1 + 104);

  v16 = 0;
  v70 = _swiftEmptyArrayStorage;
  *&v17 = 138412290;
  v64 = v17;
  *&v17 = 136315138;
  v65 = v17;
  v67 = v15;
  v68 = v10;
  while (v14)
  {
LABEL_11:
    v22 = *(*(v69 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
    v24 = v22[8];
    v23 = v22[9];

    sub_100311A20(v24, v23);
    if (v3)
    {
      if (qword_100973978 != -1)
      {
        swift_once();
      }

      v71 = 0;
      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_100981470);
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = v64;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "Could not get registration ID from remote LTK: %@", v29, 0xCu);
        sub_100005508(v30, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }

    else if (v25)
    {

      v32 = sub_100311A20(v22[8], v22[9]);
      v34 = *(v22 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID + 8);
      v71 = 0;
      if (v33)
      {
        if (!v34)
        {

          goto LABEL_41;
        }

        if (v32 == *(v22 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID) && v33 == v34)
        {
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v36 & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else if (v34)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v71 = 0;
    }

    v37 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
    swift_beginAccess();
    v38 = v66;
    sub_10000FF90(v22 + v37, v66, &unk_100976120, &qword_1007F9260);
    v39 = type metadata accessor for UUID();
    LODWORD(v37) = (*(*(v39 - 8) + 48))(v38, 1, v39);
    sub_100005508(v38, &unk_100976120, &qword_1007F9260);
    if (v37 == 1)
    {
      v41 = v22[4];
      v40 = v22[5];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_10028E1C8(0, *(v70 + 2) + 1, 1, v70);
      }

      v43 = *(v70 + 2);
      v42 = *(v70 + 3);
      if (v43 >= v42 >> 1)
      {
        v70 = sub_10028E1C8((v42 > 1), v43 + 1, 1, v70);
      }

      v44 = v70;
      *(v70 + 2) = v43 + 1;
      v45 = &v44[16 * v43];
      *(v45 + 4) = v41;
      *(v45 + 5) = v40;
      if (qword_1009735F0 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000C4AC(v46, qword_100978280);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v72 = v50;
        *v49 = v65;
        v51 = v22[4];
        v52 = v22[5];

        v53 = sub_10000C4E4(v51, v52, &v72);

        *(v49 + 4) = v53;
        v54 = v48;
        v55 = v47;
        v56 = "needs registration: %s";
LABEL_4:
        _os_log_impl(&_mh_execute_header, v55, v54, v56, v49, 0xCu);
        sub_10000C60C(v50);

        goto LABEL_5;
      }

      goto LABEL_5;
    }

LABEL_41:
    if (qword_1009735F0 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000C4AC(v57, qword_100978280);

    v47 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v58))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v72 = v50;
      *v49 = v65;
      v59 = v22[4];
      v60 = v22[5];

      v61 = sub_10000C4E4(v59, v60, &v72);

      *(v49 + 4) = v61;
      v54 = v58;
      v55 = v47;
      v56 = "already registered: %s";
      goto LABEL_4;
    }

LABEL_5:

    v15 = v67;
    v10 = v68;
    v14 &= v14 - 1;
    v18 = v22[8];
    v19 = v22[9];
    sub_100294008(v18, v19);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v18, v19);
    sub_10005CB84(isa);

    v3 = v71;
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      *v63 = v70;
      return;
    }

    v14 = *(v10 + 8 * v21);
    ++v16;
    if (v14)
    {
      v16 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10031C68C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100978280);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10000C4E4(a3, a4, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "Store rangingKey for %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  v14 = __chkstk_darwin(v13);
  v15 = *(v5 + 112);
  v16 = __chkstk_darwin(v14);
  __chkstk_darwin(v16);
  os_unfair_lock_lock(v15 + 4);
  sub_1002F5418(v17);
  os_unfair_lock_unlock(v15 + 4);
}

uint64_t sub_10031C8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 104);
  if (*(v9 + 16))
  {

    v10 = sub_100012854(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v14 = *(v12 + 112);
      v13 = *(v12 + 120);

      *a4 = v14;
      a4[1] = v13;
      return result;
    }
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_10031C988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 104);
  if (*(v7 + 16))
  {
    v8 = *(a1 + 104);

    v9 = sub_100012854(a2, a3);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      sub_10031DC0C(v11);
    }

    else
    {
    }
  }

  return result;
}

void sub_10031CA48(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    v15 = 0xD00000000000001DLL;
    v16 = 0x800000010078BCF0;
    v17 = 10;
LABEL_14:
    v18 = sub_100010F88(v17, v15, v16);
    v20 = v19;
    sub_1000115C8();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    swift_willThrow();
    return;
  }

  v10 = *(a1 + 112) == a2 && v6 == a3;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v16 = 0x800000010078BD10;
    v17 = 1;
    v15 = 0xD000000000000012;
    goto LABEL_14;
  }

  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100978280);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_10000C4E4(a4, a5, &v23);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10000C4E4(a2, a3, &v23);
    _os_log_impl(&_mh_execute_header, v12, v13, "Removing remoteLTK for %s, pairingID=%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  sub_10031DC0C(a1);
}

uint64_t sub_10031CCA8(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  sub_10000C788(v5, a1 + v7, &unk_100976120, &qword_1007F9260);
  return swift_endAccess();
}

uint64_t sub_10031CDB8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  if ((a2 & 1) == 0)
  {
    sub_100312F80(a1[8], a1[9]);
    if (v4)
    {
    }
  }

  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  sub_10000C788(v12, a1 + v14, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  v15 = a1[15];
  a1[14] = a3;
  a1[15] = a4;

  return sub_10031D36C();
}

uint64_t sub_10031CF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 104);
  if (*(v9 + 16))
  {

    v10 = sub_100012854(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = sub_1004EB2C4();
      v15 = v14;

      *a4 = v13;
      a4[1] = v15;
      return result;
    }
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_10031CFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = swift_beginAccess();
  if (*(*(a1 + 104) + 16))
  {

    sub_100012854(a2, a3);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10 & 1;
  return result;
}

uint64_t sub_10031D088()
{
  v2 = **(&off_1008DBC18 + sub_10031A1D0());
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = [objc_allocWithZone(SDAutoUnlockLTKInfo) init];
  if (v6)
  {
    v7 = v6;
    v37[23] = v1;
    v8 = v0[9];
    v9 = v0[10];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v7 setLtk:isa];

    v11 = v0[11];
    v12 = v0[12];
    v13 = Data._bridgeToObjectiveC()().super.isa;
    [v7 setLtkID:v13];

    [v7 setVersion:2];
    sub_10028088C(&qword_100978508, &unk_1007FB610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F8830;
    *(inited + 32) = kSecValueData;
    v15 = kSecValueData;
    v16 = [v7 data];
    if (v16)
    {
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xF000000000000000;
    }

    v26 = sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
    *(inited + 40) = v18;
    *(inited + 48) = v20;
    *(inited + 64) = v26;
    *(inited + 72) = kSecAttrAccessible;
    *(inited + 80) = v3;
    *(inited + 88) = v5;
    *(inited + 104) = &type metadata for String;
    *(inited + 112) = kSecAttrLabel;
    strcpy(v37, "Auto Unlock: ");
    HIWORD(v37[1]) = -4864;
    v27 = v0[2];
    v28 = v0[3];
    v29 = kSecAttrAccessible;
    v30 = kSecAttrLabel;
    v31._countAndFlagsBits = v27;
    v31._object = v28;
    String.append(_:)(v31);
    v32 = v37[0];
    v33 = v37[1];
    *(inited + 144) = &type metadata for String;
    *(inited + 120) = v32;
    *(inited + 128) = v33;
    v34 = sub_100281720(inited);
    swift_setDeallocating();
    sub_10028088C(&qword_100974638, &qword_1007FB620);
    swift_arrayDestroy();
    v35 = sub_10000F0D8();
    v36 = sub_100010204(v35);

    sub_10028776C(v36, v34);
  }

  else
  {

    v21 = sub_100010F88(10, 0xD000000000000026, 0x800000010078BCC0);
    v23 = v22;
    sub_1000115C8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    return swift_willThrow();
  }
}

uint64_t sub_10031D36C()
{
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v54 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10031A574();
  if (v12 >> 60 == 15)
  {
    if (qword_1009735F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100978280);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to serialize LocalLTK to plist", v16, 2u);
    }

    v17 = sub_100010F88(10, 0xD00000000000001CLL, 0x800000010078BCA0);
    v19 = v18;
    sub_1000115C8();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    return swift_willThrow();
  }

  v54[1] = v1;
  v55 = v10;
  v56 = v11;
  v57 = v12;
  v22 = v0[5];
  v23 = v0[6];
  v25 = v0[2];
  v24 = v0[3];
  v26 = sub_10031A1D0();

  v22(v25, v24, v26);
  v27 = v7;

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
    if (qword_1009735F0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_100978280);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to get cache directory", v31, 2u);
    }

    v32 = sub_100010F88(10, 0xD00000000000001CLL, 0x800000010078BCA0);
    v34 = v33;
    sub_1000115C8();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    swift_willThrow();
    v36 = v56;
    v37 = v57;
    return sub_10028BCC0(v36, v37);
  }

  v38 = *(v7 + 32);
  v39 = v55;
  v38(v55, v5, v6);
  v41 = v0[7];
  v40 = v0[8];
  v42 = sub_10031A1D0();

  v41(v42);
  LOBYTE(v41) = v43;

  if ((v41 & 1) == 0)
  {
    v52 = v56;
    v53 = v57;
    Data.write(to:options:)();
    (*(v27 + 8))(v39, v6);
    v36 = v52;
    v37 = v53;
    return sub_10028BCC0(v36, v37);
  }

  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_10000C4AC(v44, qword_100978280);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Failed to get protection class", v47, 2u);
  }

  v48 = sub_100010F88(10, 0xD00000000000001CLL, 0x800000010078BCA0);
  v50 = v49;
  sub_1000115C8();
  swift_allocError();
  *v51 = v48;
  *(v51 + 8) = v50;
  swift_willThrow();
  sub_10028BCC0(v56, v57);
  return (*(v27 + 8))(v39, v6);
}

uint64_t sub_10031D924()
{
  v1 = *(v0 + 112);
  os_unfair_lock_lock(v1 + 4);
  sub_1002F5418(v2);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_10031D9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
  swift_beginAccess();
  sub_10000C788(v13, a1 + v16, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  Date.init()();
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
  swift_beginAccess();
  sub_10000C788(v9, a1 + v18, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  *a3 = v19;
  a3[1] = v20;
  return sub_100294008(v19, v20);
}

void sub_10031DC0C(uint64_t a1)
{
  if (qword_1009735F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100978280);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000C4E4(*(a1 + 32), *(a1 + 40), v13);
    *(v7 + 12) = 2080;
    sub_1004EC7CC();
    v10 = sub_10000C4E4(v8, v9, v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing remoteLTK for %s: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1003129F0(*(a1 + 64), *(a1 + 72));
  if (!v2)
  {
    sub_1004EB7E4();
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    swift_beginAccess();

    sub_1002B151C(0, v12, v11);
    swift_endAccess();
    if (*(*(v1 + 104) + 16))
    {
      sub_10031D36C();
    }

    else
    {
      sub_10031DE20();
    }
  }
}

void sub_10031DE20()
{
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v76 = &v75 - v5;
  v80 = type metadata accessor for URL();
  v77 = *(v80 - 8);
  v6 = *(v77 + 64);
  v7 = __chkstk_darwin(v80);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = &v75 - v9;
  *(v0 + 120) = 0;
  swift_beginAccess();
  v83 = v0;
  v10 = *(v0 + 104);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = *(v0 + 104);

  v17 = 0;
  *&v18 = 138412546;
  v81 = v18;
  v84 = v10;
  if (v14)
  {
    while (1)
    {
      v19 = v17;
LABEL_8:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v2 = *(*(v10 + 56) + ((v19 << 9) | (8 * v20)));

      v1 = sub_1004EB444();
      type metadata accessor for CFString(0);
      v22 = v21;
      sub_1000053A0(&qword_100975630, type metadata accessor for CFString);
      v86 = v22;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v24 = SecItemDelete(isa);

      v85 = v24;
      if (v24)
      {
        if (qword_100973978 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_10000C4AC(v25, qword_100981470);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v82 = v26;
          v30 = v29;
          *v28 = v81;
          v31 = Dictionary._bridgeToObjectiveC()().super.isa;

          *(v28 + 4) = v31;
          *v30 = v31;
          *(v28 + 12) = 1024;
          *(v28 + 14) = v85;
          v32 = v82;
          _os_log_impl(&_mh_execute_header, v82, v27, "Failed to delete keychain item: %@, error: %d", v28, 0x12u);
          sub_100005508(v30, &qword_100975400, &qword_1007F65D0);
        }

        else
        {
        }

        v17 = v19;
        v10 = v84;
        if (!v14)
        {
          goto LABEL_5;
        }
      }

      else
      {

        v17 = v19;
        if (!v14)
        {
          goto LABEL_5;
        }
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_20;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  v1 = v83[2];
  v11 = v83[3];
  sub_10000F0D8();
  type metadata accessor for CFString(0);
  sub_1000053A0(&qword_100975630, type metadata accessor for CFString);
  v33 = Dictionary._bridgeToObjectiveC()().super.isa;
  LODWORD(v2) = SecItemDelete(v33);

  if (!v2)
  {

    goto LABEL_25;
  }

  if (qword_1009735F0 != -1)
  {
    goto LABEL_39;
  }

LABEL_20:
  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_100978280);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = v81;
    v39 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v37 + 4) = v39;
    *v38 = v39;
    *(v37 + 12) = 1024;
    *(v37 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v35, v36, "Failed to delete keychain item: %@, error:%d", v37, 0x12u);
    sub_100005508(v38, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

LABEL_25:
  v40 = v78;
  v42 = v83[5];
  v41 = v83[6];
  v43 = sub_10031A1D0();

  v44 = v76;
  v42(v1, v11, v43);

  v45 = v77;
  v46 = v80;
  v47 = (*(v77 + 48))(v44, 1, v80);
  v48 = v79;
  if (v47 == 1)
  {
    sub_100005508(v44, &unk_100974E00, &qword_1007F8940);
    if (qword_1009735F0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000C4AC(v49, qword_100978280);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to get LocalLTK plist path", v52, 2u);
    }
  }

  else
  {
    (*(v45 + 32))(v79, v44, v46);
    v53 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v54);
    v56 = v55;
    v87 = 0;
    v57 = [v53 removeItemAtURL:v55 error:&v87];

    if (v57)
    {
      v58 = *(v45 + 8);
      v59 = v87;
      v58(v48, v46);
    }

    else
    {
      v60 = v87;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1009735F0 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_10000C4AC(v61, qword_100978280);
      (*(v45 + 16))(v40, v48, v46);
      swift_errorRetain();
      v62 = Logger.logObject.getter();
      v63 = v48;
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v64))
      {
        v65 = v40;
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v87 = v86;
        *v66 = 136315394;
        sub_1000053A0(&qword_100975160, &type metadata accessor for URL);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        v71 = *(v45 + 8);
        v71(v65, v46);
        v72 = sub_10000C4E4(v68, v70, &v87);

        *(v66 + 4) = v72;
        *(v66 + 12) = 2112;
        swift_errorRetain();
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 14) = v73;
        *v67 = v73;
        _os_log_impl(&_mh_execute_header, v62, v64, "Failed to delete %s, error: %@", v66, 0x16u);
        sub_100005508(v67, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v86);

        v71(v79, v80);
      }

      else
      {

        v74 = *(v45 + 8);
        v74(v40, v46);
        v74(v63, v46);
      }
    }
  }
}

void *sub_10031E898()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  sub_100026AC0(v0[9], v0[10]);
  sub_100026AC0(v0[11], v0[12]);
  v4 = v0[13];

  v5 = v0[14];

  return v0;
}

uint64_t sub_10031E8E8()
{
  sub_10031E898();

  return swift_deallocClassInstance();
}

uint64_t sub_10031EDD4(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100978550, &qword_1007FB7A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1003200F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v17) = *(v3 + 16);
    v15[0] = 1;
    sub_100320280();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + 17);
    v15[0] = 2;
    sub_1003202D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(v3 + 3);
    v17 = *(v3 + 3);
    v16 = 3;
    sub_100320328(&v19, v15);
    sub_1002F3198();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v17, *(&v17 + 1));
    v17 = *(v3 + 5);
    v18 = v17;
    v16 = 4;
    sub_100320328(&v18, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v17, *(&v17 + 1));
    *&v17 = v3[7];
    v15[0] = 5;
    sub_10028088C(&qword_100978538, &qword_1007FB7A0);
    sub_100320384(&qword_100978568, sub_1003203FC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10031F0C8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6174614479656BLL;
  v4 = 0x496174614479656BLL;
  if (v1 != 4)
  {
    v4 = 0x544C65746F6D6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701605234;
  if (v1 != 1)
  {
    v5 = 0x65727574616566;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10031F184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10031FA98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10031F1AC(uint64_t a1)
{
  v2 = sub_1003200F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031F1E8(uint64_t a1)
{
  v2 = sub_1003200F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10031F224@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10031FCA8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

void *sub_10031F29C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_10031F2E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100973600 != -1)
  {
    swift_once();
  }

  sub_10031F87C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v6)
  {
    return sub_100026AC0(a1, a2);
  }

  v45 = a1;
  v46 = a2;
  v62[0] = v64;
  v62[1] = v65;
  v62[2] = v66;
  v63 = v67;
  v12 = v64;
  v13 = BYTE1(v65);
  v14 = v65;
  v15 = *(&v65 + 1);
  v17 = v66;
  v16 = v67;
  _s8LocalLTKCMa();
  v18 = swift_allocObject();
  *(v18 + 104) = &_swiftEmptyDictionarySingleton;
  v48 = (v18 + 104);
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 112) = v19;
  *(v18 + 120) = 1;
  *(v18 + 16) = v12;
  *(v18 + 32) = v13;
  *(v18 + 33) = v14;
  *(v18 + 72) = v15;
  *(v18 + 80) = v17;
  *(v18 + 96) = v16;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  *(v18 + 56) = a5;
  *(v18 + 64) = a6;
  v44 = v18;
  if (*(*(&v63 + 1) + 16))
  {
    v20 = *(*(&v63 + 1) + 16);

    sub_100294008(v15, v17);
    sub_100294008(*(&v17 + 1), v16);
    if (v13 == 2)
    {
      v21 = v14;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = &kSecAttrAccessibleAfterFirstUnlock;
    }

    else
    {
      v22 = &kSecAttrAccessibleAlways;
    }

    v47 = *v22;
    v23 = (*(&v63 + 1) + 48);
    do
    {
      v52 = *v23;
      v53 = *(v23 - 2);
      v59 = v23[1];
      v61 = *(v23 - 1);
      v55 = v23[2];
      v56 = v20;
      v54 = v23[3];
      v51 = v23[4];
      v57 = v23[5];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v25;
      v50 = v24;
      v26 = _s9RemoteLTKCMa();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      *(v29 + 80) = xmmword_1007F8A80;
      *(v29 + 96) = xmmword_1007F8A80;
      *(v29 + 112) = 0;
      *(v29 + 120) = 0;
      v30 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionID;
      v31 = type metadata accessor for UUID();
      v32 = *(*(v31 - 8) + 56);
      v32(v29 + v30, 1, 1, v31);
      v33 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_activeSessionStartDate;
      v34 = type metadata accessor for Date();
      v35 = *(*(v34 - 8) + 56);
      v35(v29 + v33, 1, 1, v34);
      v32(v29 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationSessionID, 1, 1, v31);
      v35(v29 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_registrationStartDate, 1, 1, v34);
      v36 = (v29 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_invalidRegistrationID);
      *v36 = 0;
      v36[1] = 0;
      *(v29 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication9RemoteLTK_sessionKey) = xmmword_1007F8A80;
      *(v29 + 16) = v53;
      *(v29 + 24) = v61;
      *(v29 + 32) = v52;
      *(v29 + 40) = v59;
      *(v29 + 112) = v51;
      *(v29 + 120) = v57;
      *(v29 + 64) = v55;
      *(v29 + 72) = v54;
      *(v29 + 48) = v50;
      *(v29 + 56) = v49;

      sub_100294008(v55, v54);

      sub_100294008(v55, v54);
      swift_bridgeObjectRetain_n();

      sub_100294008(v55, v54);
      sub_1004EC118();
      sub_1004EB444();
      v37 = sub_100010858();
      v39 = v38;

      sub_1004EB168(v37, v39);

      sub_100026AC0(v55, v54);

      v40 = *(v29 + 32);
      v41 = *(v29 + 40);
      swift_beginAccess();

      v42 = *v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *v48;
      sub_10057A8C4(v29, v40, v41, isUniquelyReferenced_nonNull_native);

      *v48 = v68;
      swift_endAccess();

      sub_100026AC0(v55, v54);

      v23 += 8;
      --v20;
    }

    while (v56 != 1);
  }

  else
  {

    sub_100294008(v15, v17);
    sub_100294008(*(&v17 + 1), v16);
  }

  sub_100026AC0(v45, v46);
  sub_10031F8D0(v62);

  return v44;
}

unint64_t sub_10031F87C()
{
  result = qword_100978500;
  if (!qword_100978500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978500);
  }

  return result;
}

unint64_t sub_10031F988()
{
  result = qword_100978510;
  if (!qword_100978510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978510);
  }

  return result;
}

__n128 sub_10031F9DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10031F9F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10031FA38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10031FA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614479656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496174614479656BLL && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x544C65746F6D6572 && a2 == 0xEA0000000000734BLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10031FCA8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10028088C(&qword_100978518, &qword_1007FB798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1003200F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v36) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v31 = v11;
  LOBYTE(v32) = 1;
  sub_10032014C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v36;
  LOBYTE(v32) = 2;
  sub_1003201A0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v36;
  v30 = v14;
  LOBYTE(v32) = 3;
  sub_1002F309C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v36;
  v28 = v37;
  LOBYTE(v32) = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v36;
  v26 = v37;
  sub_10028088C(&qword_100978538, &qword_1007FB7A0);
  v45 = 5;
  sub_100320384(&qword_100978540, sub_1003201F4);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v24 = v46;
  v15 = v31;
  *&v32 = v31;
  *(&v32 + 1) = v13;
  v16 = v29;
  v17 = v30;
  LOBYTE(v33) = v30;
  BYTE1(v33) = v29;
  v19 = v27;
  v18 = v28;
  *(&v33 + 1) = v27;
  *&v34 = v28;
  *(&v34 + 1) = v25;
  *&v35 = v26;
  *(&v35 + 1) = v46;
  sub_100320248(&v32, &v36);
  sub_10000C60C(a1);
  v36 = v15;
  v37 = v13;
  v38 = v17;
  v39 = v16;
  v40 = v19;
  v41 = v18;
  v42 = v25;
  v43 = v26;
  v44 = v24;
  result = sub_10031F8D0(&v36);
  v21 = v33;
  *a2 = v32;
  a2[1] = v21;
  v22 = v35;
  a2[2] = v34;
  a2[3] = v22;
  return result;
}

unint64_t sub_1003200F8()
{
  result = qword_100978520;
  if (!qword_100978520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978520);
  }

  return result;
}

unint64_t sub_10032014C()
{
  result = qword_100978528;
  if (!qword_100978528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978528);
  }

  return result;
}

unint64_t sub_1003201A0()
{
  result = qword_100978530;
  if (!qword_100978530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978530);
  }

  return result;
}

unint64_t sub_1003201F4()
{
  result = qword_100978548;
  if (!qword_100978548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978548);
  }

  return result;
}

unint64_t sub_100320280()
{
  result = qword_100978558;
  if (!qword_100978558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978558);
  }

  return result;
}

unint64_t sub_1003202D4()
{
  result = qword_100978560;
  if (!qword_100978560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978560);
  }

  return result;
}

uint64_t sub_100320384(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&qword_100978538, &qword_1007FB7A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003203FC()
{
  result = qword_100978570;
  if (!qword_100978570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978570);
  }

  return result;
}

uint64_t _s8LocalLTKC18FileRepresentationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8LocalLTKC18FileRepresentationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003205A4()
{
  result = qword_100978578;
  if (!qword_100978578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978578);
  }

  return result;
}

unint64_t sub_1003205FC()
{
  result = qword_100978580;
  if (!qword_100978580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978580);
  }

  return result;
}

unint64_t sub_100320654()
{
  result = qword_100978588;
  if (!qword_100978588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978588);
  }

  return result;
}

uint64_t sub_1003206C0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100978590);
  v1 = sub_10000C4AC(v0, qword_100978590);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003207AC()
{
  v0 = sub_10028088C(&qword_1009787A8, &unk_1007FB990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v106 = &v100 - v2;
  v3 = type metadata accessor for IPv6Address();
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  __chkstk_darwin(v3);
  v111 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&unk_10097F330, &qword_1007F9410);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v100 - v8;
  v10 = type metadata accessor for NWEndpoint.Host();
  v109 = *(v10 - 8);
  v110 = v10;
  v11 = *(v109 + 64);
  v12 = __chkstk_darwin(v10);
  v105 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = &v100 - v15;
  __chkstk_darwin(v14);
  v112 = &v100 - v17;
  v18 = type metadata accessor for NWInterface.InterfaceSubtype();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10028088C(&qword_1009787B0, &qword_1007FB9A0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v100 - v25;
  v27 = type metadata accessor for NWPath();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWConnection.currentPath.getter();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100005508(v26, &qword_1009787B0, &qword_1007FB9A0);
    if (qword_100973608 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100978590);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Missing current path", v35, 2u);
    }

    return 0;
  }

  v103 = v28;
  (*(v28 + 32))(v31, v26, v27);
  (*(v19 + 104))(v22, enum case for NWInterface.InterfaceSubtype.wifiAWDL(_:), v18);
  v36 = NWPath.usesInterfaceSubtype(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v36 & 1) == 0)
  {
    if (qword_100973608 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000C4AC(v39, qword_100978590);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_25;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Current path is not AWDL";
    goto LABEL_24;
  }

  NWPath.remoteEndpoint.getter();
  v37 = type metadata accessor for NWEndpoint();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v9, 1, v37) == 1)
  {
    sub_100005508(v9, &unk_10097F330, &qword_1007F9410);
LABEL_20:
    if (qword_100973608 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10000C4AC(v57, qword_100978590);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_25;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Missing host";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

LABEL_25:

    (*(v103 + 8))(v31, v27);
    return 0;
  }

  if ((*(v38 + 88))(v9, v37) != enum case for NWEndpoint.hostPort(_:))
  {
    (*(v38 + 8))(v9, v37);
    goto LABEL_20;
  }

  v102 = v31;
  (*(v38 + 96))(v9, v37);
  v44 = *(sub_10028088C(&qword_1009787B8, &qword_1007FB9A8) + 48);
  v46 = v109;
  v45 = v110;
  v47 = v112;
  (*(v109 + 32))(v112, v9, v110);
  v48 = type metadata accessor for NWEndpoint.Port();
  (*(*(v48 - 8) + 8))(&v9[v44], v48);
  v49 = *(v46 + 16);
  v49(v16, v47, v45);
  if ((*(v46 + 88))(v16, v45) != enum case for NWEndpoint.Host.ipv6(_:))
  {
    v59 = *(v46 + 8);
    v59(v16, v45);
    v60 = v102;
    if (qword_100973608 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10000C4AC(v61, qword_100978590);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Missing ipv6 info", v64, 2u);
    }

    v59(v47, v45);
    (*(v103 + 8))(v60, v27);
    return 0;
  }

  v101 = v49;
  (*(v46 + 96))(v16, v45);
  (*(v107 + 32))(v111, v16, v108);
  v50 = IPv6Address.rawValue.getter();
  v52 = v50;
  v53 = v51;
  v54 = v51 >> 62;
  if ((v51 >> 62) <= 1)
  {
    v55 = v106;
    if (!v54)
    {
      sub_100026AC0(v50, v51);
      v56 = v53 & 0xFFFFFFFFFFFFLL;
      goto LABEL_43;
    }

    if (v50 <= v50 >> 32)
    {
      v70 = __DataStorage._bytes.getter();
      if (!v70)
      {
LABEL_65:
        result = __DataStorage._length.getter();
        __break(1u);
        goto LABEL_66;
      }

      v71 = v70;
      v72 = __DataStorage._offset.getter();
      if (!__OFSUB__(v52, v72))
      {
        v69 = (v52 - v72 + v71);
        result = __DataStorage._length.getter();
        if (v69)
        {
          goto LABEL_41;
        }

LABEL_66:
        __break(1u);
        return result;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v55 = v106;
  if (v54 == 2)
  {
    v65 = *(v50 + 16);
    v66 = __DataStorage._bytes.getter();
    if (!v66)
    {
LABEL_63:
      __DataStorage._length.getter();
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v67 = v66;
    v68 = __DataStorage._offset.getter();
    if (!__OFSUB__(v65, v68))
    {
      v69 = (v65 - v68 + v67);
      __DataStorage._length.getter();
      if (v69)
      {
LABEL_41:
        v73 = *v69;
        v56 = v69[1];
        sub_100026AC0(v52, v53);
        v52 = v73;
        goto LABEL_43;
      }

      goto LABEL_64;
    }

    goto LABEL_61;
  }

  sub_100026AC0(v50, v51);
  v52 = 0;
  v56 = 0;
LABEL_43:
  IPv6Address.interface.getter();
  v74 = type metadata accessor for NWInterface();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v55, 1, v74) == 1)
  {
    sub_100005508(v55, &qword_1009787A8, &unk_1007FB990);
    v76 = v105;
    goto LABEL_47;
  }

  v77 = NWInterface.index.getter();
  (*(v75 + 8))(v55, v74);
  if ((v77 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v76 = v105;
  if (HIDWORD(v77))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_47:
  v78 = [objc_allocWithZone(WiFiMACAddress) initWithLinkLocalIPv6Address:{v52, v56}];
  if (!v78)
  {
    if (qword_100973608 == -1)
    {
LABEL_53:
      v93 = type metadata accessor for Logger();
      sub_10000C4AC(v93, qword_100978590);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      v96 = os_log_type_enabled(v94, v95);
      v97 = v102;
      if (v96)
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v94, v95, "Missing peer info", v98, 2u);
      }

      (*(v107 + 8))(v111, v108);
      (*(v46 + 8))(v112, v45);
      (*(v103 + 8))(v97, v27);
      return 0;
    }

LABEL_59:
    swift_once();
    goto LABEL_53;
  }

  v79 = v78;
  v80 = [*(v104 + 16) queryAverageRSSIForPeer:v78];
  v81 = v112;
  if (qword_100973608 != -1)
  {
    swift_once();
  }

  v106 = v80;
  v82 = type metadata accessor for Logger();
  sub_10000C4AC(v82, qword_100978590);
  v101(v76, v81, v45);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = v76;
    v86 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v113 = v105;
    *v86 = 136315394;
    v104 = NWEndpoint.Host.debugDescription.getter();
    v87 = v46;
    v89 = v88;
    v90 = *(v87 + 8);
    v90(v85, v45);
    v91 = sub_10000C4E4(v104, v89, &v113);

    *(v86 + 4) = v91;
    *(v86 + 12) = 2048;
    v92 = v106;
    *(v86 + 14) = v106;
    _os_log_impl(&_mh_execute_header, v83, v84, "RSSI Info %s: %ld", v86, 0x16u);
    sub_10000C60C(v105);

    (*(v107 + 8))(v111, v108);
    v90(v112, v45);
    (*(v103 + 8))(v102, v27);
    return v92;
  }

  else
  {

    v99 = *(v46 + 8);
    v99(v76, v45);
    (*(v107 + 8))(v111, v108);
    v99(v81, v45);
    (*(v103 + 8))(v102, v27);
    return v106;
  }
}