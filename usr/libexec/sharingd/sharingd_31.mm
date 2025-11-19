uint64_t sub_100490D38()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[6];

    return _swift_task_switch(sub_100490E80, v4, 0);
  }

  else
  {
    v5 = v3[7];
    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_100490E80()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_100490EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  sub_10049779C(a1, &v41 - v20, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v27 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_10049786C(v21, v27);
    device_id = 0;
    v26 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_100497804(v21, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v28 = &v7[*(v4 + 28)];
      device_id = *v28;
      v26 = v28[1];

      v29 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v30 = v7;
    }

    else
    {
      sub_100497804(v21, v14, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        __break(1u);
        goto LABEL_41;
      }

      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (device_id)
      {
        device_id = String.init(cString:)();
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v29 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      v30 = v14;
    }

    sub_10049786C(v30, v29);
  }

  sub_10049779C(a2, v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v31 = swift_getEnumCaseMultiPayload();
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v35 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    }

    else
    {
      v35 = type metadata accessor for SDAirDropDiscoveredEndpoint;
    }

    sub_10049786C(v19, v35);
    v32 = 0;
    v34 = 0;
    if (!v26)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (v31)
  {
    sub_100497804(v19, v7, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v36 = &v7[*(v4 + 28)];
    v32 = *v36;
    v34 = v36[1];

    v37 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    v38 = v7;
    goto LABEL_34;
  }

  sub_100497804(v19, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
  result = NWEndpoint.nw.getter();
  if (result)
  {
    v32 = nw_endpoint_get_device_id();
    swift_unknownObjectRelease();
    if (v32)
    {
      v32 = String.init(cString:)();
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v37 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    v38 = v12;
LABEL_34:
    sub_10049786C(v38, v37);
    if (!v26)
    {
LABEL_35:
      if (!v34)
      {
        v40 = 1;
        return v40 & 1;
      }

      v40 = 0;
LABEL_37:

      return v40 & 1;
    }

LABEL_24:
    if (v34)
    {
      if (device_id == v32 && v26 == v34)
      {

        v40 = 1;
      }

      else
      {
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_100491358(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v42 - v8;
  v10 = sub_10028088C(&qword_1009763B8, &qword_1007F95A8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v42 - v12;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_10097F240);
  sub_1002A9938(a2, v47);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v9;
    v19 = a4;
    v20 = v18;
    v46[0] = v18;
    *v17 = 136315138;
    sub_1002A9938(v47, v45);
    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_10000C60C(v47);
    v24 = sub_10000C4E4(v21, v23, v46);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Connectable (%s) requires Bonjour discovery", v17, 0xCu);
    sub_10000C60C(v20);
    a4 = v19;
    v9 = v43;
  }

  else
  {

    sub_10000C60C(v47);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = a2[3];
    v28 = a2[4];
    sub_10002CDC0(a2, v27);
    v29 = (*(v28 + 16))(v27, v28);
    v31 = v30;
    v32 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
    v33 = *(v32 - 8);
    (*(v33 + 16))(v13, v44, v32);
    (*(v33 + 56))(v13, 0, 1, v32);
    swift_beginAccess();
    sub_1002B1B98(v13, v29, v31);
    swift_endAccess();
  }

  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
  v35 = swift_allocObject();
  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1002A9938(a2, v47);
  v37 = qword_1009735E0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = static AirDropActor.shared;
  v39 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = v39;
  v40[4] = v35;
  sub_1000121F8(v47, (v40 + 5));
  v40[10] = a4;

  sub_1002B281C(0, 0, v9, &unk_100805250, v40);
}

uint64_t sub_100491848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v5[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_10049197C, v10, 0);
}

uint64_t sub_10049197C()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100292DC0(_swiftEmptyArrayStorage);
    sub_100481A44(v4);
  }

  v5 = v0[18];
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100491A94;
  v7 = v0[18];

  return sub_10002ED10(0x70801D946C940000, 2, 0, 0, 1);
}

uint64_t sub_100491A94()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 152);
  if (v0)
  {
    v9 = sub_100491DD0;
  }

  else
  {
    v9 = sub_100491C1C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100491C1C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1002A9938(v4, v0 + 16);
  v9 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  sub_1000121F8((v0 + 16), (v10 + 4));
  v10[9] = v7;

  sub_1002B3098(0, 0, v3, &unk_100805260, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100491DD0()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_100491E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = *(*(sub_10028088C(&qword_1009763B8, &qword_1007F95A8) - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v7 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v5[29] = v7;
  v8 = *(v7 - 8);
  v5[30] = v8;
  v9 = *(v8 + 64) + 15;
  v5[31] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;

  return _swift_task_switch(sub_100491F88, v10, 0);
}

uint64_t sub_100491F88()
{
  v53 = v0;
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097F240);
  sub_1002A9938(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v52 = v6;
    *v5 = 136315138;
    sub_1002A9938((v0 + 2), (v0 + 7));
    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_10000C60C(v0 + 2);
    v10 = sub_10000C4E4(v7, v9, &v52);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Bonjour discovery timed out for (%s)", v5, 0xCu);
    sub_10000C60C(v6);
  }

  else
  {

    sub_10000C60C(v0 + 2);
  }

  v11 = v0[26];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[30] + 56))(v0[28], 1, 1, v0[29]);
LABEL_14:
    sub_100005508(v0[28], &qword_1009763B8, &qword_1007F95A8);
    goto LABEL_18;
  }

  v13 = Strong;
  v14 = v0[25];
  v15 = v14[3];
  v16 = v14[4];
  sub_10002CDC0(v14, v15);
  v17 = (*(v16 + 16))(v15, v16);
  v19 = v18;
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourDiscoveryContinuations;
  swift_beginAccess();
  v21 = *&v13[v20];
  if (*(v21 + 16))
  {
    v22 = sub_100012854(v17, v19);
    v24 = v23;

    if (v24)
    {
      (*(v0[30] + 16))(v0[28], *(v21 + 56) + *(v0[30] + 72) * v22, v0[29]);
      v25 = 0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v25 = 1;
LABEL_13:
  v26 = v0[29];
  v27 = v0[30];
  v28 = v0[28];
  v29 = *(v27 + 56);
  v29(v28, v25, 1, v26);
  swift_endAccess();

  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    goto LABEL_14;
  }

  v30 = v0[26];
  (*(v0[30] + 32))(v0[31], v0[28], v0[29]);
  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    v33 = v0[29];
    v34 = v0[30];
    v35 = v0[27];
    v37 = v14[3];
    v36 = v14[4];
    sub_10002CDC0(v0[25], v37);
    v38 = (*(v36 + 16))(v37, v36);
    v40 = v39;
    v29(v35, 1, 1, v33);
    swift_beginAccess();
    sub_1002B1B98(v35, v38, v40);
    swift_endAccess();
  }

  v42 = v0[30];
  v41 = v0[31];
  v43 = v0[29];
  v44 = type metadata accessor for SFAirDropSend.Failure();
  sub_100005430(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
  v45 = swift_allocError();
  *v46 = 1;
  (*(*(v44 - 8) + 104))(v46, enum case for SFAirDropSend.Failure.resolveFailure(_:), v44);
  v0[24] = v45;
  CheckedContinuation.resume(throwing:)();
  (*(v42 + 8))(v41, v43);
LABEL_18:
  v47 = v0[31];
  v48 = v0[27];
  v49 = v0[28];

  v50 = v0[1];

  return v50();
}

uint64_t sub_1004924A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v9 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[9] = v10;
  v11 = type metadata accessor for UUID();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6[16] = static AirDropActor.shared;
  v14 = swift_task_alloc();
  v6[17] = v14;
  *v14 = v6;
  v14[1] = sub_10049266C;

  return sub_1004932E8(v10, a2, a3);
}

uint64_t sub_10049266C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10049277C, v2, 0);
}

uint64_t sub_10049277C()
{
  v56 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = *(v2 + 48);
  v0[18] = v4;
  v0[19] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[6];
    sub_100005508(v3, &unk_100976120, &qword_1007F9260);
    if (v5)
    {
      v6 = v0[6];
      v7 = swift_task_alloc();
      v0[20] = v7;
      *v7 = v0;
      v7[1] = sub_100492CFC;
      v9 = v0[7];
      v8 = v0[8];
      v10 = v0[5];

      return sub_1004932E8(v8, v10, v6);
    }

    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v34 = v0[6];
    v35 = v0[4];
    v36 = type metadata accessor for Logger();
    sub_10000C4AC(v36, qword_10097F240);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v40 = v0[5];
      v39 = v0[6];
      v42 = v0[3];
      v41 = v0[4];
      v43 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_10000C4E4(v42, v41, &v55);
      *(v43 + 12) = 2080;
      if (v39)
      {
        v44 = v40;
      }

      else
      {
        v44 = 7104878;
      }

      if (v39)
      {
        v45 = v34;
      }

      else
      {
        v45 = 0xE300000000000000;
      }

      v46 = sub_10000C4E4(v44, v45, &v55);

      *(v43 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "Unable to match sender with existing connectable endpoints senderID: %s - contactID: %s", v43, 0x16u);
      swift_arrayDestroy();
    }

    v33 = 1;
  }

  else
  {
    v12 = *(v2 + 32);
    v12(v0[15], v3, v1);
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v13 = v0[14];
    v14 = v0[15];
    v15 = v0[10];
    v16 = v0[11];
    v17 = v0[4];
    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_10097F240);
    (*(v16 + 16))(v13, v14, v15);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[14];
    v24 = v0[10];
    v23 = v0[11];
    if (v21)
    {
      v54 = v12;
      v26 = v0[3];
      v25 = v0[4];
      v27 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10000C4E4(v26, v25, &v55);
      *(v27 + 12) = 2080;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v23 + 8))(v22, v24);
      v31 = v28;
      v12 = v54;
      v32 = sub_10000C4E4(v31, v30, &v55);

      *(v27 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v19, v20, "Matched senderID %s to %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    v12(v0[2], v0[15], v0[10]);
    v33 = 0;
  }

  v47 = v0[14];
  v48 = v0[15];
  v50 = v0[12];
  v49 = v0[13];
  v52 = v0[8];
  v51 = v0[9];
  (*(v0[11] + 56))(v0[2], v33, 1, v0[10]);

  v53 = v0[1];

  return v53();
}

uint64_t sub_100492CFC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_100492E0C, v2, 0);
}

uint64_t sub_100492E0C()
{
  v49 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  if ((*(v0 + 144))(v3, 1, v2) == 1)
  {
    sub_100005508(v3, &unk_100976120, &qword_1007F9260);
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_10097F240);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 40);
      v9 = *(v0 + 48);
      v12 = *(v0 + 24);
      v11 = *(v0 + 32);
      v13 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_10000C4E4(v12, v11, &v48);
      *(v13 + 12) = 2080;
      if (v9)
      {
        v14 = v10;
      }

      else
      {
        v14 = 7104878;
      }

      if (v9)
      {
        v15 = v4;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v16 = sub_10000C4E4(v14, v15, &v48);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to match sender with existing connectable endpoints senderID: %s - contactID: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = 1;
  }

  else
  {
    v18 = *(*(v0 + 88) + 32);
    v18(*(v0 + 104), v3, v2);
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v22 = *(v0 + 88);
    v23 = *(v0 + 32);
    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_10097F240);
    (*(v22 + 16))(v19, v20, v21);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);
    v30 = *(v0 + 80);
    if (v27)
    {
      v47 = v18;
      v32 = *(v0 + 24);
      v31 = *(v0 + 32);
      v33 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v33 = 136315394;
      *(v33 + 4) = sub_10000C4E4(v32, v31, &v48);
      *(v33 + 12) = 2080;
      sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v29 + 8))(v28, v30);
      v37 = v34;
      v18 = v47;
      v38 = sub_10000C4E4(v37, v36, &v48);

      *(v33 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v25, v26, "Matched contactID %s to %s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    v18(*(v0 + 16), *(v0 + 104), *(v0 + 80));
    v17 = 0;
  }

  v39 = *(v0 + 112);
  v40 = *(v0 + 120);
  v42 = *(v0 + 96);
  v41 = *(v0 + 104);
  v44 = *(v0 + 64);
  v43 = *(v0 + 72);
  (*(*(v0 + 88) + 56))(*(v0 + 16), v17, 1, *(v0 + 80));

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1004932E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v4[28] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v4[30] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v9 = *(*(type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v4[33] = v10;
  v11 = *(v10 - 8);
  v4[34] = v11;
  v12 = *(v11 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v13 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v14 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v4[43] = v15;
  v16 = *(v15 - 8);
  v4[44] = v16;
  v17 = *(v16 + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v4[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004935A0, v18, 0);
}

uint64_t sub_1004935A0()
{
  v115 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  UUID.init(uuidString:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(*(v0 + 336), &unk_100976120, &qword_1007F9260);
  }

  else
  {
    v6 = *(v0 + 384);
    v7 = *(v0 + 216);
    v8 = *(*(v0 + 352) + 32);
    v8(v6, *(v0 + 336), *(v0 + 344));
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs;
    swift_beginAccess();
    v10 = *(v7 + v9);

    LOBYTE(v6) = sub_100569018(v6, v10);

    if (v6)
    {
      if (qword_1009738C0 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 376);
      v12 = *(v0 + 384);
      v13 = *(v0 + 344);
      v14 = *(v0 + 352);
      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_10097F240);
      (*(v14 + 16))(v11, v12, v13);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 376);
      v21 = *(v0 + 344);
      v20 = *(v0 + 352);
      if (v18)
      {
        v22 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v114 = v111;
        *v22 = 136315138;
        sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
        v109 = v17;
        v23 = v8;
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        (*(v20 + 8))(v19, v21);
        v27 = v24;
        v8 = v23;
        v28 = sub_10000C4E4(v27, v26, &v114);

        *(v22 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v16, v109, "Direct match to displayable found %s", v22, 0xCu);
        sub_10000C60C(v111);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }

      v92 = *(v0 + 344);
      v93 = *(v0 + 352);
      v94 = *(v0 + 192);
      v8(v94, *(v0 + 384), v92);
      (*(v93 + 56))(v94, 0, 1, v92);
      goto LABEL_35;
    }

    (*(*(v0 + 352) + 8))(*(v0 + 384), *(v0 + 344));
  }

  v29 = *(v0 + 216);
  v30 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs;
  *(v0 + 400) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_displayableIDs;
  swift_beginAccess();
  v31 = *(v29 + v30);
  *(v0 + 408) = v31;
  v32 = *(v31 + 32);
  *(v0 + 472) = v32;
  v33 = 1 << v32;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & *(v31 + 56);
  *(v0 + 416) = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_connectableByDisplayableID;

  v36 = 0;
  while (v35)
  {
    v40 = *(v0 + 408);
LABEL_20:
    *(v0 + 424) = v35;
    *(v0 + 432) = v36;
    v42 = *(v0 + 416);
    v43 = *(v0 + 360);
    v44 = *(v0 + 368);
    v45 = *(v0 + 344);
    v46 = *(v0 + 352);
    v47 = *(v0 + 216);
    (*(v46 + 16))(v44, *(v40 + 48) + *(v46 + 72) * (__clz(__rbit64(v35)) | (v36 << 6)), v45);
    v48 = *(v46 + 32);
    *(v0 + 440) = v48;
    *(v0 + 448) = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v48(v43, v44, v45);
    swift_beginAccess();
    v49 = *(v47 + v42);
    if (*(v49 + 16))
    {
      v50 = sub_10000EBD4(*(v0 + 360));
      if (v51)
      {
        sub_1002A9938(*(v49 + 56) + 40 * v50, v0 + 56);
        sub_1000121F8((v0 + 56), v0 + 16);
        swift_endAccess();
        v52 = *(v0 + 40);
        v53 = *(v0 + 48);
        sub_10002CDC0((v0 + 16), v52);
        v54 = *(v53 + 40);
        v112 = (v54 + *v54);
        v55 = v54[1];
        v56 = swift_task_alloc();
        *(v0 + 456) = v56;
        *v56 = v0;
        v56[1] = sub_10049401C;

        return v112(v52, v53);
      }
    }

    v35 &= v35 - 1;
    v38 = *(v0 + 352);
    v37 = *(v0 + 360);
    v39 = *(v0 + 344);
    swift_endAccess();
    (*(v38 + 8))(v37, v39);
  }

  while (1)
  {
    v41 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    v40 = *(v0 + 408);
    if (v41 >= (((1 << *(v0 + 472)) + 63) >> 6))
    {
      break;
    }

    v35 = *(v40 + 8 * v41 + 56);
    ++v36;
    if (v35)
    {
      v36 = v41;
      goto LABEL_20;
    }
  }

  if (qword_1009738C0 == -1)
  {
    goto LABEL_26;
  }

LABEL_39:
  swift_once();
LABEL_26:
  v58 = *(v0 + 208);
  v59 = type metadata accessor for Logger();
  sub_10000C4AC(v59, qword_10097F240);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v63 = *(v0 + 200);
    v62 = *(v0 + 208);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v114 = v65;
    *v64 = 136315138;
    *(v64 + 4) = sub_10000C4E4(v63, v62, &v114);
    _os_log_impl(&_mh_execute_header, v60, v61, "No matching connectables for %s", v64, 0xCu);
    sub_10000C60C(v65);
  }

  v66 = *(v0 + 216);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = *(v0 + 400);
    v70 = *(v0 + 344);
    v71 = *(v0 + 216);
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v114 = v73;
    *v72 = 136315138;
    v74 = *(v71 + v69);
    sub_100005430(&qword_100976170, &type metadata accessor for UUID);

    v75 = Set.description.getter();
    v77 = v76;

    v78 = sub_10000C4E4(v75, v77, &v114);

    *(v72 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v67, v68, "Current displayableIDs %s", v72, 0xCu);
    sub_10000C60C(v73);
  }

  v79 = *(v0 + 216);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = *(v0 + 416);
    v83 = *(v0 + 344);
    v84 = *(v0 + 216);
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v114 = v86;
    *v85 = 136315138;
    swift_beginAccess();
    v87 = *(v84 + v82);

    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    sub_100005430(&qword_100976170, &type metadata accessor for UUID);
    v88 = Dictionary.Keys.description.getter();
    v90 = v89;

    v91 = sub_10000C4E4(v88, v90, &v114);

    *(v85 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v80, v81, "Current connectable mapping %s", v85, 0xCu);
    sub_10000C60C(v86);
  }

  (*(*(v0 + 352) + 56))(*(v0 + 192), 1, 1, *(v0 + 344));
LABEL_35:
  v96 = *(v0 + 376);
  v95 = *(v0 + 384);
  v98 = *(v0 + 360);
  v97 = *(v0 + 368);
  v100 = *(v0 + 328);
  v99 = *(v0 + 336);
  v102 = *(v0 + 312);
  v101 = *(v0 + 320);
  v104 = *(v0 + 296);
  v103 = *(v0 + 304);
  v106 = *(v0 + 288);
  v107 = *(v0 + 280);
  v108 = *(v0 + 256);
  v110 = *(v0 + 248);
  v113 = *(v0 + 232);

  v105 = *(v0 + 8);

  return v105();
}

uint64_t sub_10049401C(uint64_t a1)
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 464) = a1;

  return _swift_task_switch(sub_100494134, v3, 0);
}

id sub_100494134()
{
  v191 = v0;
  v1 = *(v0 + 464);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 464) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v186 = *(v0 + 464);

  v9 = 0;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v8)
        {
          v74 = *(v0 + 464);

          v75 = 1;
          goto LABEL_68;
        }

        v7 = *(v3 + 8 * v12);
        ++v9;
        if (v7)
        {
          v9 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_101;
    }

LABEL_12:
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 296);
    v16 = *(v0 + 264);
    sub_10049779C(*(v186 + 48) + *(*(v0 + 272) + 72) * (__clz(__rbit64(v7)) | (v9 << 6)), v13, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v13, v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v14, v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = *(v0 + 296);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v37 = *(v0 + 224);
        v36 = *(v0 + 232);
        v39 = *(v0 + 200);
        v38 = *(v0 + 208);
        sub_100497804(v18, v36, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        v40 = v36 + *(v37 + 20);
        v41 = UUID.uuidString.getter();
        v43 = *(v0 + 232);
        if (v41 == v39 && v42 == v38)
        {

          v78 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
          goto LABEL_65;
        }

        v45 = *(v0 + 200);
        v46 = *(v0 + 208);
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10049786C(v43, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        if (v47)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v64 = *v18;
        result = [*v18 identifier];
        if (!result)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          return result;
        }

        v65 = result;
        v66 = *(v0 + 200);
        v183 = *(v0 + 208);
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        if (v67 == v66 && v69 == v183)
        {

          goto LABEL_67;
        }

        v71 = *(v0 + 200);
        v72 = *(v0 + 208);
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v73)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_6;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_100497804(v18, *(v0 + 256), type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        goto LABEL_104;
      }

      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (device_id)
      {
        v22 = *(v0 + 200);
        v21 = *(v0 + 208);
        if (String.init(cString:)() == v22 && v23 == v21)
        {
LABEL_60:

LABEL_61:
          v76 = *(v0 + 256);
          v77 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          goto LABEL_66;
        }

        v24 = *(v0 + 200);
        v25 = *(v0 + 208);
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v26)
        {
          goto LABEL_61;
        }
      }

      v27 = *(v0 + 256);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        goto LABEL_105;
      }

      contact_id = nw_endpoint_get_contact_id();
      swift_unknownObjectRelease();
      if (!contact_id)
      {
        v10 = *(v0 + 256);
        v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_5:
        sub_10049786C(v10, v11);
        goto LABEL_6;
      }

      v30 = *(v0 + 200);
      v29 = *(v0 + 208);
      if (String.init(cString:)() == v30 && v31 == v29)
      {
        goto LABEL_60;
      }

      v32 = *(v0 + 256);
      v33 = *(v0 + 200);
      v34 = *(v0 + 208);
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10049786C(v32, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v35)
      {
        goto LABEL_67;
      }

      goto LABEL_6;
    }

    v48 = *(v0 + 248);
    v50 = *(v0 + 200);
    v49 = *(v0 + 208);
    sub_100497804(v18, v48, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (*v48 == v50 && v48[1] == v49)
    {
      break;
    }

    v52 = *(v0 + 200);
    v53 = *(v0 + 208);
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v43 = *(v0 + 248);
    if (v54)
    {
      goto LABEL_63;
    }

    v55 = *(v0 + 240);
    v56 = (v43 + *(v55 + 28));
    v57 = v56[1];
    if (v57)
    {
      if (*v56 == *(v0 + 200) && v57 == *(v0 + 208))
      {
        goto LABEL_63;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v43 = *(v0 + 248);
      if (v59)
      {
        goto LABEL_63;
      }

      v55 = *(v0 + 240);
    }

    v60 = (v43 + *(v55 + 44));
    v61 = v60[1];
    if (!v61)
    {
      v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v10 = v43;
      goto LABEL_5;
    }

    if (*v60 == *(v0 + 200) && v61 == *(v0 + 208))
    {
      goto LABEL_63;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10049786C(v43, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v63)
    {
      goto LABEL_67;
    }

LABEL_6:
    v7 &= v7 - 1;
    sub_10049786C(*(v0 + 304), type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v43 = *(v0 + 248);
LABEL_63:
  v78 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
LABEL_65:
  v77 = v78;
  v76 = v43;
LABEL_66:
  sub_10049786C(v76, v77);
LABEL_67:
  v79 = *(v0 + 464);
  v80 = *(v0 + 328);
  v81 = *(v0 + 304);

  sub_100497804(v81, v80, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v75 = 0;
LABEL_68:
  v82 = *(v0 + 464);
  v84 = *(v0 + 320);
  v83 = *(v0 + 328);
  v85 = *(v0 + 264);
  v86 = *(v0 + 272);
  (*(v86 + 56))(v83, v75, 1, v85);

  sub_10000FF90(v83, v84, &qword_1009763E0, &qword_1007F95D0);
  if ((*(v86 + 48))(v84, 1, v85) == 1)
  {
    v88 = *(v0 + 352);
    v87 = *(v0 + 360);
    v89 = *(v0 + 344);
    v90 = *(v0 + 320);
    sub_100005508(*(v0 + 328), &qword_1009763E0, &qword_1007F95D0);
    (*(v88 + 8))(v87, v89);
    sub_100005508(v90, &qword_1009763E0, &qword_1007F95D0);
    sub_10000C60C((v0 + 16));
    v91 = *(v0 + 432);
    v92 = (*(v0 + 424) - 1) & *(v0 + 424);
    while (v92)
    {
      v96 = *(v0 + 408);
LABEL_77:
      *(v0 + 424) = v92;
      *(v0 + 432) = v91;
      v98 = *(v0 + 416);
      v99 = *(v0 + 360);
      v100 = *(v0 + 368);
      v101 = *(v0 + 344);
      v102 = *(v0 + 352);
      v103 = *(v0 + 216);
      (*(v102 + 16))(v100, *(v96 + 48) + *(v102 + 72) * (__clz(__rbit64(v92)) | (v91 << 6)), v101);
      v104 = *(v102 + 32);
      *(v0 + 440) = v104;
      *(v0 + 448) = (v102 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v104(v99, v100, v101);
      swift_beginAccess();
      v105 = *(v103 + v98);
      if (*(v105 + 16))
      {
        v106 = sub_10000EBD4(*(v0 + 360));
        if (v107)
        {
          sub_1002A9938(*(v105 + 56) + 40 * v106, v0 + 56);
          sub_1000121F8((v0 + 56), v0 + 16);
          swift_endAccess();
          v108 = *(v0 + 40);
          v109 = *(v0 + 48);
          sub_10002CDC0((v0 + 16), v108);
          v110 = *(v109 + 40);
          v187 = (v110 + *v110);
          v111 = v110[1];
          v112 = swift_task_alloc();
          *(v0 + 456) = v112;
          *v112 = v0;
          v112[1] = sub_10049401C;

          return v187(v108, v109);
        }
      }

      v92 &= v92 - 1;
      v94 = *(v0 + 352);
      v93 = *(v0 + 360);
      v95 = *(v0 + 344);
      swift_endAccess();
      (*(v94 + 8))(v93, v95);
    }

    while (1)
    {
      v97 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      v96 = *(v0 + 408);
      if (v97 >= (((1 << *(v0 + 472)) + 63) >> 6))
      {

        if (qword_1009738C0 != -1)
        {
          swift_once();
        }

        v130 = *(v0 + 208);
        v131 = type metadata accessor for Logger();
        sub_10000C4AC(v131, qword_10097F240);

        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v132, v133))
        {
          v135 = *(v0 + 200);
          v134 = *(v0 + 208);
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v190 = v137;
          *v136 = 136315138;
          *(v136 + 4) = sub_10000C4E4(v135, v134, &v190);
          _os_log_impl(&_mh_execute_header, v132, v133, "No matching connectables for %s", v136, 0xCu);
          sub_10000C60C(v137);
        }

        v138 = *(v0 + 216);
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = *(v0 + 400);
          v142 = *(v0 + 344);
          v143 = *(v0 + 216);
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v190 = v145;
          *v144 = 136315138;
          v146 = *(v143 + v141);
          sub_100005430(&qword_100976170, &type metadata accessor for UUID);

          v147 = Set.description.getter();
          v149 = v148;

          v150 = sub_10000C4E4(v147, v149, &v190);

          *(v144 + 4) = v150;
          _os_log_impl(&_mh_execute_header, v139, v140, "Current displayableIDs %s", v144, 0xCu);
          sub_10000C60C(v145);
        }

        v151 = *(v0 + 216);
        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v152, v153))
        {
          v154 = *(v0 + 416);
          v155 = *(v0 + 344);
          v156 = *(v0 + 216);
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v190 = v158;
          *v157 = 136315138;
          swift_beginAccess();
          v159 = *(v156 + v154);

          sub_10028088C(&qword_10097F358, &qword_1008050E8);
          sub_100005430(&qword_100976170, &type metadata accessor for UUID);
          v160 = Dictionary.Keys.description.getter();
          v162 = v161;

          v163 = sub_10000C4E4(v160, v162, &v190);

          *(v157 + 4) = v163;
          _os_log_impl(&_mh_execute_header, v152, v153, "Current connectable mapping %s", v157, 0xCu);
          sub_10000C60C(v158);
        }

        (*(*(v0 + 352) + 56))(*(v0 + 192), 1, 1, *(v0 + 344));
        goto LABEL_96;
      }

      v92 = *(v96 + 8 * v97 + 56);
      ++v91;
      if (v92)
      {
        v91 = v97;
        goto LABEL_77;
      }
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_100497804(*(v0 + 320), *(v0 + 288), type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (qword_1009738C0 == -1)
  {
    goto LABEL_83;
  }

LABEL_102:
  swift_once();
LABEL_83:
  v113 = *(v0 + 280);
  v114 = *(v0 + 288);
  v115 = type metadata accessor for Logger();
  sub_10000C4AC(v115, qword_10097F240);
  sub_10049779C(v114, v113, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.default.getter();
  v118 = os_log_type_enabled(v116, v117);
  v119 = *(v0 + 408);
  v120 = *(v0 + 328);
  v122 = *(v0 + 280);
  v121 = *(v0 + 288);
  if (v118)
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v190 = v124;
    *v123 = 136315138;
    v184 = v121;
    v188 = v120;
    v125 = sub_10032B99C();
    v127 = v126;
    sub_10049786C(v122, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v128 = sub_10000C4E4(v125, v127, &v190);

    *(v123 + 4) = v128;
    _os_log_impl(&_mh_execute_header, v116, v117, "Matching endpoint found %s", v123, 0xCu);
    sub_10000C60C(v124);

    sub_10049786C(v184, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v129 = v188;
  }

  else
  {
    v164 = *(v0 + 408);

    sub_10049786C(v122, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049786C(v121, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v129 = v120;
  }

  sub_100005508(v129, &qword_1009763E0, &qword_1007F95D0);
  v165 = *(v0 + 448);
  v166 = *(v0 + 352);
  v167 = *(v0 + 344);
  v168 = *(v0 + 192);
  (*(v0 + 440))(v168, *(v0 + 360), v167);
  (*(v166 + 56))(v168, 0, 1, v167);
  sub_10000C60C((v0 + 16));
LABEL_96:
  v170 = *(v0 + 376);
  v169 = *(v0 + 384);
  v172 = *(v0 + 360);
  v171 = *(v0 + 368);
  v174 = *(v0 + 328);
  v173 = *(v0 + 336);
  v176 = *(v0 + 312);
  v175 = *(v0 + 320);
  v178 = *(v0 + 296);
  v177 = *(v0 + 304);
  v180 = *(v0 + 288);
  v181 = *(v0 + 280);
  v182 = *(v0 + 256);
  v185 = *(v0 + 248);
  v189 = *(v0 + 232);

  v179 = *(v0 + 8);

  return v179();
}

uint64_t sub_1004950A4(uint64_t *a1, uint64_t a2, void *a3)
{
  v25 = type metadata accessor for UUID();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = *a1;
  v14 = a1[1];
  v26[0] = v13;
  v26[1] = v14;
  sub_1002D63B0(a2, v27);
  v15 = v28;
  v16 = v29;
  sub_10002CDC0(v27, v28);
  v17 = *(v16 + 32);

  v17(v15, v16);
  v18 = a3[3];
  v19 = a3[4];
  sub_10002CDC0(a3, v18);
  (*(v19 + 32))(v18, v19);
  v20 = static UUID.== infix(_:_:)();
  v21 = *(v6 + 8);
  v22 = v25;
  v21(v10, v25);
  v21(v12, v22);
  sub_100005508(v26, &unk_10097F390, &qword_100805228);
  return v20 & 1;
}

uint64_t sub_100495278()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_sessionLogger);
  v3 = sub_100486920();
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_10055FA90(v4);
  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler + 8);

    sub_100486920();
    v6();
    sub_100015D04(v6);
  }

  return result;
}

uint64_t type metadata accessor for SDAirDropEndpointService()
{
  result = qword_10097F318;
  if (!qword_10097F318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004955D8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1004956D0(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v70 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v3 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  v13 = __chkstk_darwin(v11);
  v65 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v68 = &v64 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v64 - v21;
  __chkstk_darwin(v20);
  v75 = &v64 - v23;
  v24 = a1 + 56;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 56);
  v73 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegate;
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  v71 = v19;
  v67 = a1;
  for (i = v10; ; v10 = i)
  {
    if (!v27)
    {
      while (1)
      {
        v36 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v36 >= v28)
        {

          return 0;
        }

        v27 = *(v24 + 8 * v36);
        ++v29;
        if (v27)
        {
          v29 = v36;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_35;
    }

LABEL_12:
    v37 = v75;
    sub_10049779C(*(a1 + 48) + *(v76 + 72) * (__clz(__rbit64(v27)) | (v29 << 6)), v75, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_100497804(v37, v22, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_10049779C(v22, v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 0)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v39 = v19;
        v40 = v69;
        sub_100497804(v39, v69, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v41 = *(v40 + *(v70 + 60));
        sub_10049786C(v40, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        if (v41)
        {
          goto LABEL_30;
        }

        goto LABEL_18;
      }

      if (EnumCaseMultiPayload == 2)
      {

        v51 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {

        v51 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

      sub_10049786C(v19, v51);
LABEL_31:
      v52 = v22;
      goto LABEL_32;
    }

    sub_100497804(v19, v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((sub_10032C7CC() & 0x4000000000) != 0)
    {
      sub_10049786C(v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
LABEL_30:

      goto LABEL_31;
    }

    v42 = sub_10032C7CC();
    sub_10049786C(v10, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    if ((v42 & 0x8000000000) != 0)
    {
      goto LABEL_30;
    }

LABEL_18:
    v19 = v22;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_6;
    }

    v44 = Strong;
    v45 = v68;
    sub_10049779C(v19, v68, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 1)
    {
      break;
    }

    if (v46)
    {
      v30 = v69;
      sub_100497804(v45, v69, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v47 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
      swift_beginAccess();
      sub_1002A9938(v44 + v47, v78);
      v48 = v79;
      v49 = v80;
      sub_10002CDC0(v78, v79);
      v34 = (*(v49 + 112))(v30 + *(v70 + 20), v48, v49);
      swift_unknownObjectRelease();
      v35 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
    }

    else
    {
      v30 = v66;
      sub_100497804(v45, v66, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v31 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
      swift_beginAccess();
      sub_1002A9938(v44 + v31, v78);
      v32 = v79;
      v33 = v80;
      sub_10002CDC0(v78, v79);
      v34 = (*(v33 + 112))(v30, v32, v33);
      swift_unknownObjectRelease();
      v35 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
    }

    sub_10049786C(v30, v35);
    sub_10000C60C(v78);
    a1 = v67;
    if (v34)
    {
      goto LABEL_34;
    }

LABEL_6:
    v27 &= v27 - 1;
    v22 = v19;
    sub_10049786C(v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v19 = v71;
  }

  if (v46 == 3)
  {
    swift_unknownObjectRelease();
    sub_10049786C(v45, type metadata accessor for SDAirDropDiscoveredEndpoint);
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  sub_10049786C(v45, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
LABEL_34:
  if (qword_1009738C0 != -1)
  {
    goto LABEL_40;
  }

LABEL_35:
  v53 = type metadata accessor for Logger();
  sub_10000C4AC(v53, qword_10097F240);
  v54 = v19;
  v55 = v65;
  sub_10049779C(v19, v65, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v78[0] = v59;
    *v58 = 136315138;
    v60 = sub_10032DA30();
    v62 = v61;
    sub_10049786C(v55, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v63 = sub_10000C4E4(v60, v62, v78);

    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v56, v57, "endpoint.isAirDropable is false. Treating endpoint as AirDropUsable due to delegate: %s", v58, 0xCu);
    sub_10000C60C(v59);
  }

  else
  {

    sub_10049786C(v55, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v52 = v54;
LABEL_32:
  sub_10049786C(v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
  return 1;
}

Swift::Int sub_100495F18(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    v9 = *(a2 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v11);
    ++v3;
    if (v7)
    {
      v3 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100496058(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100497788(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1004960C4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1004960C4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10028088C(&unk_10097F340, &unk_1008050C0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100496428(v7, v8, a1, v4);
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
    return sub_1004961CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1004961CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for UUID();
  v8 = *(*(v39 - 8) + 64);
  v9 = __chkstk_darwin(v39);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v15 = &v27 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = (v13 + 8);
    v32 = *a4;
    v17 = (v32 + 48 * a3);
    v18 = a1 - a3;
LABEL_5:
    v30 = v17;
    v31 = a3;
    v29 = v18;
    while (1)
    {
      sub_1002D63B0(v17, &v36);
      sub_1002D63B0((v17 - 3), v33);
      v19 = v37;
      v20 = v38;
      sub_10002CDC0(&v36, v37);
      (*(v20 + 32))(v19, v20);
      v21 = v34;
      v22 = v35;
      sub_10002CDC0(v33, v34);
      (*(v22 + 32))(v21, v22);
      LOBYTE(v21) = static UUID.< infix(_:_:)();
      v23 = *v16;
      v24 = v39;
      (*v16)(v11, v39);
      v23(v15, v24);
      sub_10000C60C(v33);
      result = sub_10000C60C(&v36);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v17 = v30 + 3;
        v18 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      sub_1002D6398(v17, &v36);
      v25 = *(v17 - 2);
      *v17 = *(v17 - 3);
      v17[1] = v25;
      v17[2] = *(v17 - 1);
      result = sub_1002D6398(&v36, v17 - 3);
      v17 -= 3;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100496428(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v113 = a1;
  v124 = type metadata accessor for UUID();
  v9 = *(*(v124 - 8) + 64);
  v10 = __chkstk_darwin(v124);
  v123 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v122 = &v110 - v14;
  v15 = *(a3 + 8);
  v115 = a3;
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v113;
    if (!*v113)
    {
      goto LABEL_133;
    }

    a4 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_127:
      result = sub_1004973B4(a4);
    }

    v131 = result;
    v105 = *(result + 16);
    if (v105 >= 2)
    {
      a4 = 48;
      while (1)
      {
        v106 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v107 = *(result + 16 * v105);
        v108 = result;
        a3 = *(result + 16 * (v105 - 1) + 40);
        sub_100496E00((v106 + 48 * v107), (v106 + 48 * *(result + 16 * (v105 - 1) + 32)), (v106 + 48 * a3), v5);
        if (v6)
        {
        }

        if (a3 < v107)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1004973B4(v108);
        }

        if (v105 - 2 >= *(v108 + 2))
        {
          goto LABEL_121;
        }

        v109 = &v108[16 * v105];
        *v109 = v107;
        *(v109 + 1) = a3;
        v131 = v108;
        sub_100497328(v105 - 1);
        result = v131;
        v105 = *(v131 + 16);
        a3 = v115;
        if (v105 <= 1)
        {
        }
      }
    }
  }

  v16 = 0;
  v121 = (v13 + 8);
  v17 = _swiftEmptyArrayStorage;
  v112 = a4;
  while (1)
  {
    v114 = v17;
    if (v16 + 1 >= v15)
    {
      v37 = v16 + 1;
    }

    else
    {
      v119 = v15;
      v111 = v6;
      v18 = *a3;
      sub_1002D63B0(*a3 + 48 * (v16 + 1), &v128);
      v5 = 48 * v16;
      v19 = v18 + 48 * v16;
      sub_1002D63B0(v19, v125);
      v20 = v129;
      v21 = v130;
      sub_10002CDC0(&v128, v129);
      v22 = v122;
      (*(v21 + 32))(v20, v21);
      v24 = v126;
      v23 = v127;
      sub_10002CDC0(v125, v126);
      v25 = v123;
      (*(v23 + 32))(v24, v23);
      LODWORD(v120) = static UUID.< infix(_:_:)();
      v26 = v16;
      v27 = *v121;
      a4 = v124;
      (*v121)(v25, v124);
      v27(v22, a4);
      sub_10000C60C(v125);
      result = sub_10000C60C(&v128);
      v110 = v26;
      v28 = v26 + 2;
      v29 = v19 + 96;
      while (v119 != v28)
      {
        sub_1002D63B0(v29, &v128);
        sub_1002D63B0(v29 - 48, v125);
        v31 = v129;
        v30 = v130;
        sub_10002CDC0(&v128, v129);
        v32 = v122;
        (*(v30 + 32))(v31, v30);
        v33 = v126;
        v34 = v127;
        sub_10002CDC0(v125, v126);
        v35 = v123;
        (*(v34 + 32))(v33, v34);
        a4 = static UUID.< infix(_:_:)() & 1;
        v36 = v124;
        v27(v35, v124);
        v27(v32, v36);
        sub_10000C60C(v125);
        result = sub_10000C60C(&v128);
        ++v28;
        v29 += 48;
        if ((v120 & 1) != a4)
        {
          v37 = v28 - 1;
          goto LABEL_11;
        }
      }

      v37 = v119;
      v6 = v111;
      a3 = v115;
      v16 = v110;
      if ((v120 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v37 < v110)
      {
        goto LABEL_124;
      }

      if (v110 < v37)
      {
        v38 = 48 * v37 - 48;
        v119 = v37;
        v39 = v37;
        v40 = v110;
        do
        {
          if (v40 != --v39)
          {
            v45 = *v115;
            if (!*v115)
            {
              goto LABEL_130;
            }

            v41 = (v45 + v5);
            v42 = (v45 + v38);
            sub_1002D6398((v45 + v5), &v128);
            v44 = v42[1];
            v43 = v42[2];
            *v41 = *v42;
            v41[1] = v44;
            v41[2] = v43;
            result = sub_1002D6398(&v128, v42);
          }

          ++v40;
          v38 -= 48;
          v5 += 48;
        }

        while (v40 < v39);
        a3 = v115;
        a4 = v112;
        v37 = v119;
      }

      else
      {
LABEL_20:
        a4 = v112;
      }
    }

    v46 = *(a3 + 8);
    if (v37 < v46)
    {
      if (__OFSUB__(v37, v16))
      {
        goto LABEL_123;
      }

      if (v37 - v16 < a4)
      {
        if (__OFADD__(v16, a4))
        {
          goto LABEL_125;
        }

        if ((v16 + a4) >= v46)
        {
          v47 = *(a3 + 8);
        }

        else
        {
          v47 = v16 + a4;
        }

        if (v47 < v16)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v37 != v47)
        {
          break;
        }
      }
    }

    v48 = v37;
    if (v37 < v16)
    {
      goto LABEL_122;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v114;
    }

    else
    {
      result = sub_10028E6A8(0, *(v114 + 2) + 1, 1, v114);
      v17 = result;
    }

    a4 = *(v17 + 2);
    v49 = *(v17 + 3);
    v50 = a4 + 1;
    if (a4 >= v49 >> 1)
    {
      result = sub_10028E6A8((v49 > 1), a4 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = v50;
    v51 = &v17[16 * a4];
    *(v51 + 4) = v16;
    *(v51 + 5) = v48;
    v52 = *v113;
    if (!*v113)
    {
      goto LABEL_132;
    }

    v116 = v48;
    if (a4)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v17 + 4);
          v54 = *(v17 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_51:
          if (v56)
          {
            goto LABEL_111;
          }

          v69 = &v17[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_114;
          }

          v75 = &v17[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_118;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v79 = &v17[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_65:
        if (v74)
        {
          goto LABEL_113;
        }

        v82 = &v17[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_116;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v90 = v17;
        v91 = *&v17[16 * a4 + 32];
        v92 = *&v17[16 * v5 + 40];
        sub_100496E00((*a3 + 48 * v91), (*a3 + 48 * *&v17[16 * v5 + 32]), (*a3 + 48 * v92), v52);
        if (v6)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1004973B4(v90);
        }

        if (a4 >= *(v90 + 2))
        {
          goto LABEL_108;
        }

        v93 = &v90[16 * a4];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v131 = v90;
        result = sub_100497328(v5);
        v17 = v131;
        v50 = *(v131 + 16);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v17[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_109;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_110;
      }

      v64 = &v17[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_112;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_115;
      }

      if (v68 >= v60)
      {
        v86 = &v17[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_119;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v15 = *(a3 + 8);
    v16 = v116;
    a4 = v112;
    if (v116 >= v15)
    {
      goto LABEL_93;
    }
  }

  v111 = v6;
  v120 = *a3;
  v5 = v120 + 48 * v37;
  v110 = v16;
  v94 = v16 - v37;
  v116 = v47;
LABEL_83:
  v118 = v5;
  v119 = v37;
  v117 = v94;
  while (1)
  {
    sub_1002D63B0(v5, &v128);
    sub_1002D63B0(v5 - 48, v125);
    v95 = v129;
    v96 = v130;
    sub_10002CDC0(&v128, v129);
    v97 = v122;
    (*(v96 + 32))(v95, v96);
    v98 = v126;
    v99 = v127;
    sub_10002CDC0(v125, v126);
    v100 = v123;
    (*(v99 + 32))(v98, v99);
    a4 = static UUID.< infix(_:_:)();
    v101 = *v121;
    v102 = v124;
    (*v121)(v100, v124);
    v101(v97, v102);
    sub_10000C60C(v125);
    result = sub_10000C60C(&v128);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v37 = v119 + 1;
      v5 = v118 + 48;
      v48 = v116;
      v94 = v117 - 1;
      if (v119 + 1 != v116)
      {
        goto LABEL_83;
      }

      v6 = v111;
      a3 = v115;
      v16 = v110;
      if (v116 < v110)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v120)
    {
      break;
    }

    sub_1002D6398(v5, &v128);
    v103 = *(v5 - 32);
    *v5 = *(v5 - 48);
    *(v5 + 16) = v103;
    *(v5 + 32) = *(v5 - 16);
    sub_1002D6398(&v128, (v5 - 48));
    v5 -= 48;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_100496E00(char *a1, char *a2, char *a3, char *a4)
{
  v74 = type metadata accessor for UUID();
  v9 = *(*(v74 - 8) + 64);
  v10 = __chkstk_darwin(v74);
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v59 - v13;
  v14 = (a2 - a1) / 48;
  v15 = (a3 - a2) / 48;
  if (v14 >= v15)
  {
    if (a4 != a2 || &a2[48 * v15] <= a4)
    {
      v35 = v12;
      memmove(a4, a2, 48 * v15);
      v12 = v35;
    }

    v18 = &a4[48 * v15];
    v16 = a4;
    if (a3 - a2 < 48)
    {
      v34 = a2;
      goto LABEL_35;
    }

    v36 = a2;
    if (a2 <= a1)
    {
      v34 = a2;
      goto LABEL_35;
    }

    v60 = v4;
    v61 = (v12 + 8);
    v65 = a1;
    v62 = a4;
    while (1)
    {
      v59 = v36;
      v37 = (v36 - 48);
      v38 = v18 - 48;
      v39 = a3 - 48;
      v63 = v36 - 48;
      while (1)
      {
        v64 = v39;
        v42 = v39 + 48;
        sub_1002D63B0(v38, v71);
        sub_1002D63B0(v37, v68);
        v43 = v72;
        v44 = v73;
        sub_10002CDC0(v71, v72);
        v45 = v66;
        (*(v44 + 32))(v43, v44);
        v46 = v69;
        v47 = v70;
        sub_10002CDC0(v68, v69);
        v48 = v67;
        (*(v47 + 32))(v46, v47);
        v49 = static UUID.< infix(_:_:)();
        v50 = *v61;
        v51 = v74;
        (*v61)(v48, v74);
        v50(v45, v51);
        sub_10000C60C(v68);
        sub_10000C60C(v71);
        if (v49)
        {
          break;
        }

        v16 = v62;
        v52 = v64;
        if (v42 != v38 + 48)
        {
          v53 = *v38;
          v54 = *(v38 + 2);
          *(v64 + 1) = *(v38 + 1);
          *(v52 + 2) = v54;
          *v52 = v53;
        }

        v40 = v38 - 48;
        v39 = v52 - 48;
        v41 = v38 > v16;
        v38 -= 48;
        v37 = v63;
        if (!v41)
        {
          v18 = v40 + 48;
          v34 = v59;
          goto LABEL_35;
        }
      }

      v18 = v38 + 48;
      v16 = v62;
      v34 = v63;
      a3 = v64;
      if (v42 != v59)
      {
        v55 = *v63;
        v56 = *(v63 + 2);
        *(v64 + 1) = *(v63 + 1);
        *(a3 + 2) = v56;
        *a3 = v55;
      }

      if (v18 > v16)
      {
        v36 = v34;
        if (v34 > v65)
        {
          continue;
        }
      }

      v18 = v38 + 48;
      goto LABEL_35;
    }
  }

  v16 = a4;
  if (a4 != a1 || &a1[48 * v14] <= a4)
  {
    v17 = v12;
    memmove(a4, a1, 48 * v14);
    v12 = v17;
  }

  v18 = &a4[48 * v14];
  if (a2 - a1 < 48 || (v19 = a2, a2 >= a3))
  {
    v34 = a1;
    goto LABEL_35;
  }

  v60 = v4;
  v20 = (v12 + 8);
  v64 = v18;
  do
  {
    v65 = a1;
    sub_1002D63B0(v19, v71);
    sub_1002D63B0(v16, v68);
    v21 = v72;
    v22 = v73;
    sub_10002CDC0(v71, v72);
    v23 = v66;
    (*(v22 + 32))(v21, v22);
    v24 = v69;
    v25 = v70;
    sub_10002CDC0(v68, v69);
    v26 = v67;
    (*(v25 + 32))(v24, v25);
    LOBYTE(v24) = static UUID.< infix(_:_:)();
    v27 = *v20;
    v28 = v74;
    (*v20)(v26, v74);
    v27(v23, v28);
    sub_10000C60C(v68);
    sub_10000C60C(v71);
    if (v24)
    {
      v29 = v19;
      v30 = v65;
      v31 = v65 == v19;
      v19 += 48;
      if (v31)
      {
        goto LABEL_14;
      }

LABEL_13:
      v32 = *v29;
      v33 = v29[2];
      *(v30 + 1) = v29[1];
      *(v30 + 2) = v33;
      *v30 = v32;
      goto LABEL_14;
    }

    v29 = v16;
    v30 = v65;
    v31 = v65 == v16;
    v16 += 48;
    if (!v31)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v30 + 48;
    v18 = v64;
  }

  while (v16 < v64 && v19 < a3);
  v34 = a1;
LABEL_35:
  v57 = (v18 - v16) / 48;
  if (v34 != v16 || v34 >= &v16[48 * v57])
  {
    memmove(v34, v16, 48 * v57);
  }

  return 1;
}

uint64_t sub_100497328(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004973B4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1004973C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v10 = &v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_10049755C(v10, v8, a3, v6);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1004976E8(v12, v8, a3, v6, a2, sub_10049755C);

  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_10049755C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v26 + 56);
    v16 = (*(v26 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    sub_1002D63B0(v15 + 48 * v14, v24);

    v18 = a4(v25, v24);
    sub_10000C60C(v24);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_100620174(v21, a2, v22, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_100620174(v21, a2, v22, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1004976E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_10049779C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100497804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10049786C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049791C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a5;
  v41 = a6;
  v38 = a6;
  v17 = sub_10002F604(&v39);
  (*(*(a5 - 8) + 32))(v17, a1, a5);
  v18 = *a4;
  v20 = sub_10000EBD4(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_7:
    v26 = *a4;
    if (v24)
    {
LABEL_8:
      v27 = (v26[7] + 40 * v20);
      sub_10000C60C(v27);
      return sub_1000121F8(&v39, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_1002CF6F0();
    goto LABEL_7;
  }

  sub_100573D7C(v23, a3 & 1);
  v29 = *a4;
  v30 = sub_10000EBD4(a2);
  if ((v24 & 1) != (v31 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = v30;
  v26 = *a4;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v16, a2, v12);
  v32 = v40;
  v33 = sub_10002F5B4(&v39, v40);
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36);
  sub_100497BCC(v20, v16, v36, v26, a5, v38);
  return sub_10000C60C(&v39);
}

uint64_t sub_100497BCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v11 = sub_10002F604(&v18);
  (*(*(a5 - 8) + 32))(v11, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_1000121F8(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_100497CD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1004867D8(a1, v4, v5, v6);
}

uint64_t sub_100497D8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100480B14(a1, v4, v5, v7, v6);
}

uint64_t sub_100497E4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100497E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1004800E0(a1, v4, v5, v7, v6);
}

uint64_t sub_100497F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10048579C(a1, v4, v5, v6);
}

uint64_t sub_100498008()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C04;

  return sub_10037A014();
}

uint64_t sub_1004980F4(uint64_t a1)
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

  return sub_100485E74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004981BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100485D50(a1, v4, v5, v7, v6);
}

uint64_t sub_1004982D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100485564(a1, v4, v5, v7, v6);
}

uint64_t sub_1004983CC(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  v6 = v2[4];

  a1(v2[5]);

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100498430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100482F04(a1, v4, v5, v7, v6);
}

uint64_t sub_100498544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_100491848(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10049860C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100491E40(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1004986CC()
{

  return sub_1004844CC();
}

uint64_t sub_100498740(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004987DC, v3, 0);
}

uint64_t sub_1004987DC()
{
  v1 = *(v0 + 16);
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = *(v0 + 16);
  v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v4)
  {
    goto LABEL_3;
  }

  v9 = *(v0 + 16);
  if (SFAirDropReceive.AskRequest.senderBundleID.getter() == 0xD000000000000015 && 0x8000000100791E10 == v10)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_4;
    }
  }

  v12 = *(*(v0 + 24) + 16);
  v5 = sub_1002F5CC4(*(v0 + 16));
LABEL_4:
  v6 = *(v0 + 8);
  v7 = v5 & 1;

  return v6(v7);
}

uint64_t sub_1004988D4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100498930@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerVoiceMails();
  v2 = swift_allocObject();
  type metadata accessor for SDAirDropContentHandlerVoiceMemos();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100498984(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_100498740(a1);
}

uint64_t sub_100498A20(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_100498B28(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x49414D4543494F56;
  v5 = inited + 32;
  *(inited + 40) = 0xE90000000000004CLL;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_1003470A0(v5);
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

uint64_t sub_100498CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C04;

  return sub_1002F6228(a1, a2, a3, v8);
}

uint64_t sub_100498D58()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F478);
  v1 = sub_10000C4AC(v0, qword_10097F478);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100498F44(uint64_t a1)
{
  v3 = [objc_allocWithZone(SCSensitivityAnalyzer) init];
  v4 = *(a1 + 16);
  _StringGuts.grow(_:)(22);

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v1;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1004990C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 88) = a7;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 56) = a3;
  *(v7 + 64) = a4;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  v8 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v11 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v7 + 120) = v11;
  v12 = *(v11 - 8);
  *(v7 + 128) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v14 = type metadata accessor for URL();
  *(v7 + 144) = v14;
  v15 = *(v14 - 8);
  *(v7 + 152) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  *(v7 + 184) = static AirDropActor.shared;

  return _swift_task_switch(sub_1004992B4, v17, 0);
}

uint64_t sub_1004992B4()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 152);
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    v47 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v9 = (v4 + 16);
    v10 = _swiftEmptyArrayStorage;
    v48 = v6;
    v6(*(v0 + 176), v7, *(v0 + 144));
    while (1)
    {
      v11 = URL.isFileURL.getter();
      v12 = *(v0 + 176);
      if (v11)
      {
        v13 = *v9;
        (*v9)(*(v0 + 160), *(v0 + 176), *(v0 + 144));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_10028FAB4(v14 > 1, v15 + 1, 1);
        }

        v16 = *(v0 + 160);
        v17 = *(v0 + 144);
        _swiftEmptyArrayStorage[2] = v15 + 1;
        v13(_swiftEmptyArrayStorage + v47 + v15 * v8, v16, v17);
        v5 = v48;
      }

      else
      {
        (*(v4 - 8))(*(v0 + 176), *(v0 + 144));
      }

      v7 += v8;
      if (!--v2)
      {
        break;
      }

      v5(*(v0 + 176), v7, *(v0 + 144));
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  *(v0 + 192) = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage[2];
  *(v0 + 200) = v18;
  if (v18)
  {
    v19 = *(v0 + 152);
    *(v0 + 208) = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor);
    v20 = *(v19 + 80);
    *(v0 + 28) = v20;
    *(v0 + 216) = 0;
    if (_swiftEmptyArrayStorage[2])
    {
      v21 = *(v0 + 168);
      v23 = *(v0 + 136);
      v22 = *(v0 + 144);
      v25 = *(v0 + 112);
      v24 = *(v0 + 120);
      v26 = *(v0 + 72);
      v27 = *(v0 + 80);
      (*(v19 + 16))(v21, _swiftEmptyArrayStorage + ((v20 + 32) & ~v20), v22);
      sub_100499FB4(v21, v27, v23);
      (*(v19 + 8))(v21, v22);
      SFProgressTask.makeAsyncIterator()();
      v28 = *(v0 + 208);
      v29 = *(v0 + 184);
      v30 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v31 = swift_task_alloc();
      *(v0 + 224) = v31;
      *v31 = v0;
      v31[1] = sub_100499738;
      v32 = *(v0 + 112);
      v33 = *(v0 + 96);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v29, v28, v33, v0 + 32);
    }

    __break(1u);
LABEL_28:
    swift_once();
LABEL_21:
    v36 = type metadata accessor for Logger();
    sub_10000C4AC(v36, qword_10097F478);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67109376;
      *(v39 + 8) = 1024;
      v35 = v10 & 1;
      *(v39 + 10) = v10 & 1;
      _os_log_impl(&_mh_execute_header, v37, v38, "isContentSensitive returning sensitiveContentOverride {isSensitive: %{BOOL}d, override: %{BOOL}d}", v39, 0xEu);
    }

    else
    {

      v35 = v10 & 1;
    }

    goto LABEL_24;
  }

  sub_10039D0AC();
  v34 = static NSUserDefaults.airdrop.getter();
  LOBYTE(v10) = SFAirDropUserDefaults.sensitiveContentOverride.getter();

  if (v10 != 2)
  {
    if (qword_1009738C8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  v35 = 0;
LABEL_24:
  v41 = *(v0 + 168);
  v40 = *(v0 + 176);
  v42 = *(v0 + 160);
  v43 = *(v0 + 136);
  v44 = *(v0 + 112);
  **(v0 + 40) = v35;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100499738()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v9 = *v1;

  if (v0)
  {
    v5 = *(v2 + 184);
    v4 = *(v2 + 192);

    v6 = sub_100499E28;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 184);
    v6 = sub_100499858;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100499858()
{
  v16 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96), v1);
    v2 = async function pointer to SFProgressTask.finalValue.getter[1];
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v3[1] = sub_1004999E0;
    v4 = *(v0 + 136);
    v5 = *(v0 + 120);

    return SFProgressTask.finalValue.getter(v0 + 25, v5);
  }

  else
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v15 = v1 / *(v0 + 88);
    v6(&v15);
    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v10 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v11 = swift_task_alloc();
    *(v0 + 224) = v11;
    *v11 = v0;
    v11[1] = sub_100499738;
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v9, v8, v13, v0 + 32);
  }
}

uint64_t sub_1004999E0()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = *(v2 + 184);
    v4 = *(v2 + 192);

    v6 = sub_100499EFC;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 184);
    v6 = sub_100499B04;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100499B04()
{
  v1 = (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v6 = *(v0 + 25);
  if ((v6 & 1) != 0 || (v7 = *(v0 + 216) + 1, v7 == *(v0 + 200)))
  {
    v8 = *(v0 + 192);

    sub_10039D0AC();
    v9 = static NSUserDefaults.airdrop.getter();
    v10 = SFAirDropUserDefaults.sensitiveContentOverride.getter();

    if (v10 != 2)
    {
      if (qword_1009738C8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000C4AC(v11, qword_10097F478);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109376;
        *(v14 + 4) = v6;
        *(v14 + 8) = 1024;
        LOBYTE(v6) = v10 & 1;
        *(v14 + 10) = v10 & 1;
        _os_log_impl(&_mh_execute_header, v12, v13, "isContentSensitive returning sensitiveContentOverride {isSensitive: %{BOOL}d, override: %{BOOL}d}", v14, 0xEu);
      }

      else
      {

        LOBYTE(v6) = v10 & 1;
      }
    }

    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    v31 = *(v0 + 160);
    v32 = *(v0 + 136);
    v33 = *(v0 + 112);
    **(v0 + 40) = v6;

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    *(v0 + 216) = v7;
    v15 = *(v0 + 192);
    if (v7 >= *(v15 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = *(v0 + 168);
      v17 = *(v0 + 144);
      v18 = *(v0 + 152);
      v19 = *(v0 + 136);
      v21 = *(v0 + 112);
      v20 = *(v0 + 120);
      v22 = *(v0 + 72);
      v23 = *(v0 + 80);
      (*(v18 + 16))(v16, v15 + ((*(v0 + 28) + 32) & ~*(v0 + 28)) + *(v18 + 72) * v7, v17);
      sub_100499FB4(v16, v23, v19);
      (*(v18 + 8))(v16, v17);
      SFProgressTask.makeAsyncIterator()();
      v24 = *(v0 + 208);
      v25 = *(v0 + 184);
      v26 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v27 = swift_task_alloc();
      *(v0 + 224) = v27;
      *v27 = v0;
      v27[1] = sub_100499738;
      v28 = *(v0 + 112);
      v4 = *(v0 + 96);
      v1 = v0 + 16;
      v5 = v0 + 32;
      v2 = v25;
      v3 = v24;
    }

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v1, v2, v3, v4, v5);
  }
}

uint64_t sub_100499E28()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[4];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100499EFC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[30];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100499FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v18, "analyze(url: ");
  HIWORD(v18[1]) = -4864;
  v9._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v18[0] = 0;
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v11, v8, v5);
  *(v13 + v12) = v3;
  v14 = v17[0];
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17[0];

  v15 = v14;
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10049A1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = type metadata accessor for URL.DirectoryHint();
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();
  v10 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  v6[24] = v10;
  v11 = *(v10 - 8);
  v6[25] = v11;
  v12 = *(v11 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v13 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v6[29] = v13;
  v14 = *(v13 - 8);
  v6[30] = v14;
  v15 = *(v14 + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v16 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v17 = sub_10028088C(&qword_100975180, &qword_100805430);
  v6[41] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v19 = type metadata accessor for UTType();
  v6[45] = v19;
  v20 = *(v19 - 8);
  v6[46] = v20;
  v21 = *(v20 + 64) + 15;
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v22 = static AirDropActor.shared;
  v6[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_10049A518, v22, 0);
}

uint64_t sub_10049A518()
{
  v1 = *(v0 + 144);
  v2 = URL.pathExtension.getter();
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v2;
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    v9 = *(v0 + 352);
    v10 = *(v0 + 328);

    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    _StringGuts.grow(_:)(35);

    v11._countAndFlagsBits = v6;
    v11._object = v4;
    String.append(_:)(v11);
    Optional.tryUnwrap(_:file:line:)();
    v29 = *(v0 + 376);
    v28 = *(v0 + 384);
    v31 = *(v0 + 360);
    v30 = *(v0 + 368);
    v32 = *(v0 + 344);
    v33 = *(v0 + 336);
    sub_100005508(*(v0 + 352), &qword_100975180, &qword_100805430);

    static UTType.package.getter();
    UTType.init(filenameExtension:conformingTo:)();
    UTType.identifier.getter();
    sub_10000FF90(v32, v33, &qword_100975180, &qword_100805430);
    v34 = (*(v30 + 48))(v33, 1, v31);
    if (v34 == 1)
    {
      sub_100005508(*(v0 + 336), &qword_100975180, &qword_100805430);
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v37 = *(v0 + 360);
      v38 = *(v0 + 368);
      v39 = *(v0 + 336);
      UTType.identifier.getter();
      v36 = v40;
      (*(v38 + 8))(v39, v37);

      v35 = String._bridgeToObjectiveC()();
    }

    v41 = SFIsPhotosAssetBundle();

    if (v41)
    {
      v42 = *(v0 + 144);

      v43 = objc_allocWithZone(PFAssetBundle);
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      v47 = [v43 initWithAssetBundleAtURL:v45];

      *(v0 + 104) = v47;
      _StringGuts.grow(_:)(19);

      v48 = type metadata accessor for URL();
      sub_1000107C8(&qword_100975160, &type metadata accessor for URL);
      v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v49);

      sub_10028088C(&qword_10097F628, &qword_100805448);
      Optional.tryUnwrap(_:file:line:)();

      v50 = *(v0 + 96);
      *(v0 + 400) = v50;
      v51 = [v50 photoURL];
      if (v51)
      {
        v52 = *(v0 + 312);
        v53 = v51;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v96 = *(v0 + 312);
      v95 = *(v0 + 320);
      v151 = *(*(v48 - 8) + 56);
      v151(v96, v54, 1, v48);
      sub_1003332E8(v96, v95);
      v97 = [v50 videoURL];
      if (v97)
      {
        v98 = *(v0 + 296);
        v99 = v97;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = 0;
      }

      else
      {
        v100 = 1;
      }

      v101 = *(v0 + 320);
      v103 = *(v0 + 296);
      v102 = *(v0 + 304);
      v104 = *(v0 + 264);
      v105 = *(v0 + 224);
      v147 = *(v0 + 232);
      v106 = *(v0 + 152);
      v107 = *(v0 + 160);
      v108 = *(v0 + 144);
      v151(v103, v100, 1, v48);
      sub_1003332E8(v103, v102);
      sub_10049D770(v108, v101, v102, v107, v104);
      SFProgressTask.makeAsyncIterator()();
      v78 = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor);
      *(v0 + 408) = v78;
      v79 = *(v0 + 392);
      v109 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v110 = swift_task_alloc();
      *(v0 + 416) = v110;
      *v110 = v0;
      v110[1] = sub_10049B5CC;
      v111 = *(v0 + 224);
      v83 = *(v0 + 192);
      v84 = v0 + 48;
      v85 = v0 + 112;
      goto LABEL_48;
    }

    if (v36)
    {
      v55 = String._bridgeToObjectiveC()();
    }

    else
    {
      v55 = 0;
    }

    v56 = SFIsLivePhotos();

    if (v56)
    {
      v57 = *(v0 + 144);

      v58 = objc_allocWithZone(PFVideoComplement);
      URL._bridgeToObjectiveC()(v59);
      v61 = v60;
      v62 = [v58 initWithBundleAtURL:v60];

      *(v0 + 80) = v62;
      _StringGuts.grow(_:)(22);

      v63 = type metadata accessor for URL();
      sub_1000107C8(&qword_100975160, &type metadata accessor for URL);
      v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v64);

      sub_10028088C(&qword_10097F620, &qword_100805440);
      Optional.tryUnwrap(_:file:line:)();

      v86 = *(v0 + 72);
      *(v0 + 440) = v86;
      v87 = [v86 imagePath];
      if (v87 && (v88 = v87, static String._unconditionallyBridgeFromObjectiveC(_:)(), v90 = v89, v88, v90))
      {
        v150 = *(v0 + 288);
        v91 = *(v0 + 176);
        v92 = *(v0 + 184);
        v146 = *(v0 + 168);
        v93 = *(v63 - 8);
        v94 = *(v93 + 56);
        v94(*(v0 + 280), 1, 1, v63);
        (*(v91 + 104))(v92, enum case for URL.DirectoryHint.inferFromPath(_:), v146);
        URL.init(filePath:directoryHint:relativeTo:)();
        v94(v150, 0, 1, v63);
      }

      else
      {
        v93 = *(v63 - 8);
        (*(v93 + 56))(*(v0 + 288), 1, 1, v63);
      }

      v118 = [v86 videoPath];
      if (v118)
      {
        v120 = *(v0 + 272);
        v119 = *(v0 + 280);
        v122 = *(v0 + 176);
        v121 = *(v0 + 184);
        v152 = *(v0 + 168);
        v123 = v118;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v124 = *(v93 + 56);
        v124(v119, 1, 1, v63);
        (*(v122 + 104))(v121, enum case for URL.DirectoryHint.inferFromPath(_:), v152);
        URL.init(filePath:directoryHint:relativeTo:)();
        v124(v120, 0, 1, v63);
      }

      else
      {
        (*(v93 + 56))(*(v0 + 272), 1, 1, v63);
      }

      v125 = *(v0 + 232);
      v126 = *(v0 + 216);
      v127 = *(v0 + 152);
      sub_10049D770(*(v0 + 144), *(v0 + 288), *(v0 + 272), *(v0 + 160), *(v0 + 256));
      SFProgressTask.makeAsyncIterator()();
      v78 = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor);
      *(v0 + 448) = v78;
      v79 = *(v0 + 392);
      v128 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v129 = swift_task_alloc();
      *(v0 + 456) = v129;
      *v129 = v0;
      v129[1] = sub_10049BB78;
      v130 = *(v0 + 216);
      v83 = *(v0 + 192);
      v84 = v0 + 32;
      v85 = v0 + 88;
      goto LABEL_48;
    }

    v66 = String._bridgeToObjectiveC()();
    v67 = SFIsImage();

    if (v67)
    {

      v68 = swift_task_alloc();
      *(v0 + 480) = v68;
      *v68 = v0;
      v68[1] = sub_10049C124;
      v69 = *(v0 + 160);
      v70 = *(v0 + 144);

      return sub_1004A0394(v70, v69);
    }

    v71 = String._bridgeToObjectiveC()();
    v72 = SFIsVideo();

    if (v72)
    {
      v73 = *(v0 + 248);
      v74 = *(v0 + 232);
      v75 = *(v0 + 208);
      v76 = *(v0 + 160);
      v77 = *(v0 + 144);

      sub_10049EC30(v77, v76);
      SFProgressTask.makeAsyncIterator()();
      v78 = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor);
      *(v0 + 488) = v78;
      v79 = *(v0 + 392);
      v80 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v81 = swift_task_alloc();
      *(v0 + 496) = v81;
      *v81 = v0;
      v81[1] = sub_10049C3D0;
      v82 = *(v0 + 208);
      v83 = *(v0 + 192);
      v84 = v0 + 16;
      v85 = v0 + 64;
LABEL_48:

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v84, v79, v78, v83, v85);
    }

    v112 = String._bridgeToObjectiveC()();

    v113 = String._bridgeToObjectiveC()();

    v114 = SFIsContact();

    if (v114)
    {
      v115 = swift_task_alloc();
      *(v0 + 520) = v115;
      *v115 = v0;
      v115[1] = sub_10049C934;
      v116 = *(v0 + 160);
      v117 = *(v0 + 144);

      return sub_1004A0A08(v117, v116);
    }

    if (qword_1009738C8 != -1)
    {
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    sub_10000C4AC(v131, qword_10097F478);
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&_mh_execute_header, v132, v133, "Unsupported file extension for sensitive analysis", v134, 2u);
    }

    v135 = *(v0 + 384);
    v136 = *(v0 + 360);
    v137 = *(v0 + 368);
    v138 = *(v0 + 344);
    v16 = *(v0 + 120);

    sub_100005508(v138, &qword_100975180, &qword_100805430);
    (*(v137 + 8))(v135, v136);
  }

  else
  {

    if (qword_1009738C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097F478);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unsupported file extension for sensitive analysis", v15, 2u);
    }

    v16 = *(v0 + 120);
  }

  *v16 = 0;
  v18 = *(v0 + 376);
  v17 = *(v0 + 384);
  v20 = *(v0 + 344);
  v19 = *(v0 + 352);
  v21 = *(v0 + 336);
  v23 = *(v0 + 312);
  v22 = *(v0 + 320);
  v25 = *(v0 + 296);
  v24 = *(v0 + 304);
  v26 = *(v0 + 288);
  v139 = *(v0 + 280);
  v140 = *(v0 + 272);
  v141 = *(v0 + 264);
  v142 = *(v0 + 256);
  v143 = *(v0 + 248);
  v144 = *(v0 + 224);
  v145 = *(v0 + 216);
  v148 = *(v0 + 208);
  v149 = *(v0 + 184);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10049B5CC()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;

  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_10049CBE0;
  }

  else
  {
    v5 = sub_10049B6E0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10049B6E0()
{
  v16 = v0;
  if (*(v0 + 56))
  {
    (*(*(v0 + 200) + 8))(*(v0 + 224), *(v0 + 192), *(v0 + 48));
    v1 = async function pointer to SFProgressTask.finalValue.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 424) = v2;
    *v2 = v0;
    v2[1] = sub_10049B860;
    v3 = *(v0 + 264);
    v4 = *(v0 + 232);
    v5 = *(v0 + 120);

    return SFProgressTask.finalValue.getter(v5, v4);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v15 = *(v0 + 48);
    v6(&v15);
    v8 = *(v0 + 408);
    v9 = *(v0 + 392);
    v10 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v11 = swift_task_alloc();
    *(v0 + 416) = v11;
    *v11 = v0;
    v11[1] = sub_10049B5CC;
    v12 = *(v0 + 224);
    v13 = *(v0 + 192);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 48, v9, v8, v13, v0 + 112);
  }
}

uint64_t sub_10049B860()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_10049CDF8;
  }

  else
  {
    v6 = sub_10049B98C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10049B98C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  v7 = *(v0 + 264);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v9 + 8))(v7, v8);
  sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 288);
  v22 = *(v0 + 280);
  v23 = *(v0 + 272);
  v24 = *(v0 + 264);
  v25 = *(v0 + 256);
  v26 = *(v0 + 248);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v29 = *(v0 + 208);
  v30 = *(v0 + 184);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10049BB78()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v7 = *v1;

  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_10049CFEC;
  }

  else
  {
    v5 = sub_10049BC8C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10049BC8C()
{
  v16 = v0;
  if (*(v0 + 40))
  {
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192), *(v0 + 32));
    v1 = async function pointer to SFProgressTask.finalValue.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 464) = v2;
    *v2 = v0;
    v2[1] = sub_10049BE0C;
    v3 = *(v0 + 256);
    v4 = *(v0 + 232);
    v5 = *(v0 + 120);

    return SFProgressTask.finalValue.getter(v5, v4);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v15 = *(v0 + 32);
    v6(&v15);
    v8 = *(v0 + 448);
    v9 = *(v0 + 392);
    v10 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v11 = swift_task_alloc();
    *(v0 + 456) = v11;
    *v11 = v0;
    v11[1] = sub_10049BB78;
    v12 = *(v0 + 216);
    v13 = *(v0 + 192);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 32, v9, v8, v13, v0 + 88);
  }
}

uint64_t sub_10049BE0C()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_10049D204;
  }

  else
  {
    v6 = sub_10049BF38;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10049BF38()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v9 + 8))(v7, v8);
  sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 288);
  v22 = *(v0 + 280);
  v23 = *(v0 + 272);
  v24 = *(v0 + 264);
  v25 = *(v0 + 256);
  v26 = *(v0 + 248);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v29 = *(v0 + 208);
  v30 = *(v0 + 184);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10049C124(char a1)
{
  v2 = *(*v1 + 480);
  v3 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 25) = a1;

  return _swift_task_switch(sub_10049C23C, v3, 0);
}

uint64_t sub_10049C23C()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 120);
  sub_100005508(*(v0 + 344), &qword_100975180, &qword_100805430);
  (*(v4 + 8))(v2, v3);
  *v5 = v1;
  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v9 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = *(v0 + 336);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v15 = *(v0 + 288);
  v18 = *(v0 + 280);
  v19 = *(v0 + 272);
  v20 = *(v0 + 264);
  v21 = *(v0 + 256);
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  v24 = *(v0 + 216);
  v25 = *(v0 + 208);
  v26 = *(v0 + 184);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10049C3D0()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;

  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_10049D3F8;
  }

  else
  {
    v5 = sub_10049C4E4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10049C4E4()
{
  v16 = v0;
  if (*(v0 + 24))
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192), *(v0 + 16));
    v1 = async function pointer to SFProgressTask.finalValue.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 504) = v2;
    *v2 = v0;
    v2[1] = sub_10049C664;
    v3 = *(v0 + 248);
    v4 = *(v0 + 232);
    v5 = *(v0 + 120);

    return SFProgressTask.finalValue.getter(v5, v4);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v15 = *(v0 + 16);
    v6(&v15);
    v8 = *(v0 + 488);
    v9 = *(v0 + 392);
    v10 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v11 = swift_task_alloc();
    *(v0 + 496) = v11;
    *v11 = v0;
    v11[1] = sub_10049C3D0;
    v12 = *(v0 + 208);
    v13 = *(v0 + 192);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v9, v8, v13, v0 + 64);
  }
}

uint64_t sub_10049C664()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_10049D5C4;
  }

  else
  {
    v6 = sub_10049C790;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10049C790()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[43];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];
  v11 = v0[39];
  v10 = v0[40];
  v13 = v0[37];
  v12 = v0[38];
  v14 = v0[36];
  v17 = v0[35];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[28];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[23];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10049C934(char a1)
{
  v2 = *(*v1 + 520);
  v3 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 26) = a1;

  return _swift_task_switch(sub_10049CA4C, v3, 0);
}

uint64_t sub_10049CA4C()
{
  v1 = *(v0 + 26);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 120);
  sub_100005508(*(v0 + 344), &qword_100975180, &qword_100805430);
  (*(v4 + 8))(v2, v3);
  *v5 = v1;
  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v9 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = *(v0 + 336);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v15 = *(v0 + 288);
  v18 = *(v0 + 280);
  v19 = *(v0 + 272);
  v20 = *(v0 + 264);
  v21 = *(v0 + 256);
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  v24 = *(v0 + 216);
  v25 = *(v0 + 208);
  v26 = *(v0 + 184);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10049CBE0()
{
  v1 = *(v0 + 368);
  v31 = *(v0 + 360);
  v33 = *(v0 + 384);
  v29 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 264);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 224);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_100005508(v3, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v2, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v29, &qword_100975180, &qword_100805430);
  (*(v1 + 8))(v33, v31);
  v34 = *(v0 + 112);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 288);
  v22 = *(v0 + 280);
  v23 = *(v0 + 272);
  v24 = *(v0 + 264);
  v25 = *(v0 + 256);
  v26 = *(v0 + 248);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v30 = *(v0 + 208);
  v32 = *(v0 + 184);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10049CDF8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  v7 = *(v0 + 264);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v9 + 8))(v7, v8);
  sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);
  v31 = *(v0 + 432);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 288);
  v22 = *(v0 + 280);
  v23 = *(v0 + 272);
  v24 = *(v0 + 264);
  v25 = *(v0 + 256);
  v26 = *(v0 + 248);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v29 = *(v0 + 208);
  v30 = *(v0 + 184);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10049CFEC()
{
  v1 = *(v0 + 368);
  v31 = *(v0 + 360);
  v33 = *(v0 + 384);
  v29 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_100005508(v3, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v2, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v29, &qword_100975180, &qword_100805430);
  (*(v1 + 8))(v33, v31);
  v34 = *(v0 + 88);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 288);
  v22 = *(v0 + 280);
  v23 = *(v0 + 272);
  v24 = *(v0 + 264);
  v25 = *(v0 + 256);
  v26 = *(v0 + 248);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v30 = *(v0 + 208);
  v32 = *(v0 + 184);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10049D204()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v9 + 8))(v7, v8);
  sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);
  v31 = *(v0 + 472);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v19 = *(v0 + 288);
  v22 = *(v0 + 280);
  v23 = *(v0 + 272);
  v24 = *(v0 + 264);
  v25 = *(v0 + 256);
  v26 = *(v0 + 248);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v29 = *(v0 + 208);
  v30 = *(v0 + 184);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10049D3F8()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[43];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v6 + 8))(v5, v7);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);
  v29 = v0[8];
  v9 = v0[47];
  v8 = v0[48];
  v10 = v0[43];
  v11 = v0[44];
  v12 = v0[42];
  v14 = v0[39];
  v13 = v0[40];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[36];
  v20 = v0[35];
  v21 = v0[34];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[28];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[23];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10049D5C4()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[43];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_100005508(v4, &qword_100975180, &qword_100805430);
  (*(v3 + 8))(v1, v2);
  v26 = v0[64];
  v6 = v0[47];
  v5 = v0[48];
  v7 = v0[43];
  v8 = v0[44];
  v9 = v0[42];
  v11 = v0[39];
  v10 = v0[40];
  v13 = v0[37];
  v12 = v0[38];
  v14 = v0[36];
  v17 = v0[35];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[32];
  v21 = v0[31];
  v22 = v0[28];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[23];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10049D770@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a4;
  v73 = a5;
  v67 = a1;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v69 = (&v64 - v12);
  v13 = __chkstk_darwin(v11);
  v66 = &v64 - v14;
  v15 = __chkstk_darwin(v13);
  v71 = &v64 - v16;
  __chkstk_darwin(v15);
  v18 = &v64 - v17;
  v19 = sub_10028088C(&qword_10097F618, &unk_1008053E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v64 - v22;
  v24 = *(v21 + 56);
  sub_10000FF90(a2, &v64 - v22, &unk_100974E00, &qword_1007F8940);
  sub_10000FF90(a3, &v23[v24], &unk_100974E00, &qword_1007F8940);
  v25 = *(v8 + 48);
  v26 = v25(v23, 1, v7);
  v27 = v25(&v23[v24], 1, v7);
  v28 = v27;
  if (v26 == 1)
  {
    if (v27 == 1)
    {
      if (qword_1009738C8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000C4AC(v29, qword_10097F478);
      v30 = v68;
      (*(v8 + 16))(v68, v67, v7);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v74 = v34;
        *v33 = 136315138;
        sub_1000107C8(&qword_100975160, &type metadata accessor for URL);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        (*(v8 + 8))(v30, v7);
        v38 = sub_10000C4E4(v35, v37, &v74);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Live Photo URL is missing both image and video - treating a non-sensitive {baseURL: %s}", v33, 0xCu);
        sub_10000C60C(v34);
      }

      else
      {

        (*(v8 + 8))(v30, v7);
      }

      v74 = 0;
      return SFProgressTask.init(_:initialProgress:operation:file:line:)();
    }

    else
    {
      (*(v8 + 32))(v18, &v23[v24], v7);
      sub_10049EC30(v18, v72);
      return (*(v8 + 8))(v18, v7);
    }
  }

  else
  {
    v39 = *(v8 + 32);
    v39(v18, v23, v7);
    v40 = v28 == 1;
    v41 = v18;
    if (v40)
    {
      v74 = 0;
      v75 = 0xE000000000000000;
      v69 = v39;
      v42 = v70;
      v43 = v18;
      _StringGuts.grow(_:)(21);

      v74 = 0xD000000000000012;
      v75 = 0x8000000100792140;
      v44._countAndFlagsBits = URL.lastPathComponent.getter();
      String.append(_:)(v44);

      v45._countAndFlagsBits = 41;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      v68 = v74;
      v74 = 0;
      v46 = v71;
      (*(v8 + 16))(v71, v43, v7);
      v47 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = v42;
      v69(v48 + v47, v46, v7);
      v49 = v72;
      *(v48 + ((v9 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = v72;

      v50 = v49;
      SFProgressTask.init(_:initialProgress:operation:file:line:)();
      return (*(v8 + 8))(v43, v7);
    }

    else
    {
      v51 = &v23[v24];
      v52 = v71;
      v39(v71, v51, v7);
      v67 = "analyze(nil,nil)";
      v74 = 0;
      v53 = *(v8 + 16);
      v54 = v66;
      v53(v66, v41, v7);
      v53(v69, v52, v7);
      v55 = *(v8 + 80);
      v56 = (v55 + 24) & ~v55;
      v68 = v41;
      v57 = (v9 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = v8;
      v58 = (v55 + v57 + 8) & ~v55;
      v59 = swift_allocObject();
      *(v59 + 16) = v70;
      v39((v59 + v56), v54, v7);
      v60 = v72;
      *(v59 + v57) = v72;
      v39((v59 + v58), v69, v7);

      v61 = v60;
      SFProgressTask.init(_:initialProgress:operation:file:line:)();
      v62 = *(v65 + 8);
      v62(v71, v7);
      return (v62)(v68, v7);
    }
  }
}

uint64_t sub_10049DF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6[3] = static AirDropActor.shared;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_10049E02C;

  return sub_1004A0394(a5, a6);
}

uint64_t sub_10049E02C(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10049E144, v3, 0);
}

uint64_t sub_10049E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a3;
  v7[8] = a4;
  v7[5] = a1;
  v7[6] = a2;
  v10 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  v7[11] = v10;
  v11 = *(v10 - 8);
  v7[12] = v11;
  v12 = *(v11 + 64) + 15;
  v7[13] = swift_task_alloc();
  v13 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  v7[14] = v13;
  v14 = *(v13 - 8);
  v7[15] = v14;
  v15 = *(v14 + 64) + 15;
  v7[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7[17] = static AirDropActor.shared;
  v16 = swift_task_alloc();
  v7[18] = v16;
  *v16 = v7;
  v16[1] = sub_10049E320;

  return sub_1004A0394(a5, a6);
}

uint64_t sub_10049E320(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 25) = a1;

  return _swift_task_switch(sub_10049E438, v3, 0);
}

uint64_t sub_10049E438()
{
  v19 = v0;
  if (*(v0 + 25) == 1)
  {
    **(v0 + 40) = 1;
    v1 = *(v0 + 128);
    v2 = *(v0 + 104);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v18 = 0x3FE0000000000000;
    v10(&v18);
    sub_10049EC30(v8, v9);
    SFProgressTask.makeAsyncIterator()();
    v12 = sub_1000107C8(&qword_100977C00, type metadata accessor for AirDropActor);
    *(v0 + 152) = v12;
    v13 = *(v0 + 136);
    v14 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v15 = swift_task_alloc();
    *(v0 + 160) = v15;
    *v15 = v0;
    v15[1] = sub_10049E5EC;
    v16 = *(v0 + 104);
    v17 = *(v0 + 88);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v13, v12, v17, v0 + 32);
  }
}

uint64_t sub_10049E5EC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;

  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10049EA40;
  }

  else
  {
    v5 = sub_10049E700;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10049E700()
{
  v17 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88), v1);
    v2 = async function pointer to SFProgressTask.finalValue.getter[1];
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    *v3 = v0;
    v3[1] = sub_10049E88C;
    v4 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = *(v0 + 40);

    return SFProgressTask.finalValue.getter(v6, v5);
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v16 = v1 * 0.5 + 0.5;
    v7(&v16);
    v9 = *(v0 + 152);
    v10 = *(v0 + 136);
    v11 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = sub_10049E5EC;
    v13 = *(v0 + 104);
    v14 = *(v0 + 88);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v10, v9, v14, v0 + 32);
  }
}

uint64_t sub_10049E88C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_10049EAEC;
  }

  else
  {
    v6 = sub_10049E9B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10049E9B8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10049EA40()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[4];
  v5 = v0[16];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10049EAEC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10049EB74(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_10049EC10, v2, 0);
}

uint64_t sub_10049EC30(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  _StringGuts.grow(_:)(16);

  strcpy(v13, "analyzeVideo(");
  HIWORD(v13[1]) = -4864;
  v7._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v13[0] = 0;
  (*(v5 + 16))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11 = a2;
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10049EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[22] = static AirDropActor.shared;

  return _swift_task_switch(sub_10049EED4, v6, 0);
}

uint64_t sub_10049EED4@<X0>(NSURL *a1@<X8>)
{
  v3 = v1[20];
  v2 = v1[21];
  URL._bridgeToObjectiveC()(a1);
  v5 = v4;
  v1[23] = v4;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10049F010;
  v6 = swift_continuation_init();
  v1[17] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10034B0A4;
  v1[13] = &unk_1008E32F0;
  v1[14] = v6;
  [v3 analyzeVideoFile:v5 options:0 progressHandler:0 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10049F010()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_100391248;
  }

  else
  {
    v5 = sub_10049F130;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10049F130()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = [v2 isSensitive];

  *v3 = v4;
  v5 = v0[1];

  return v5();
}

void sub_10049F300()
{
  v0 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v1 = *(v0 - 1);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDrop.TransferType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.AskRequest.type.getter();
  v10 = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v0 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    if (v4)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v11 = SFAirDropReceive.AskRequest.files.getter();
  v12 = *(v11 + 16);
  if (!v12)
  {
    goto LABEL_21;
  }

  v36[1] = v11;
  v37 = 0;
  v13 = 0;
  v15 = *(v1 + 16);
  v14 = v1 + 16;
  v16 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v38 = *(v14 + 56);
  v39 = v15;
  v40 = v14;
  v17 = (v14 - 8);
  v15(v4, v16, v0);
  while (1)
  {
    SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();

    v19 = String._bridgeToObjectiveC()();

    v20 = SFIsPhotosAssetBundle();

    if (!v20)
    {
      goto LABEL_11;
    }

    SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter();
    if (!v21)
    {
      (*v17)(v4, v0);
    }

    else
    {
LABEL_11:
      v22 = String._bridgeToObjectiveC()();
      v23 = SFIsImage();

      if (v23)
      {
        (*v17)(v4, v0);

        v18 = __OFADD__(v13++, 1);
        if (v18)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        v24 = String._bridgeToObjectiveC()();

        v25 = SFIsVideo();

        (*v17)(v4, v0);
        if (v25)
        {
          v18 = __OFADD__(v37++, 1);
          if (v18)
          {
            goto LABEL_37;
          }
        }
      }
    }

    v16 += v38;
    if (!--v12)
    {
      break;
    }

    v39(v4, v16, v0);
  }

  v26 = v37;
  if (v13 != 1 || v37)
  {
    if (!v13)
    {
LABEL_29:
      if (!v26)
      {
        v13 = 0;
        goto LABEL_22;
      }

      if (v26 != 1)
      {
        v33 = String._bridgeToObjectiveC()();
        v34 = SFLocalizedStringForKey();

        if (!v34)
        {
          goto LABEL_40;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1007F5670;
        *(v35 + 56) = &type metadata for Int;
        *(v35 + 64) = &protocol witness table for Int;
        *(v35 + 32) = v26;
        goto LABEL_24;
      }

      v32 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (!v4)
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v37)
    {
      goto LABEL_22;
    }

    v31 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    if (!v4)
    {
      __break(1u);
      goto LABEL_29;
    }

LABEL_32:
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  v27 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_21:

  v13 = 0;
LABEL_22:
  v28 = String._bridgeToObjectiveC()();
  v29 = SFLocalizedStringForKey();

  if (v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1007F5670;
    *(v30 + 56) = &type metadata for Int;
    *(v30 + 64) = &protocol witness table for Int;
    *(v30 + 32) = v13;
LABEL_24:
    static String.localizedStringWithFormat(_:_:)();

    return;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_10049F8B4(uint64_t a1)
{
  *(v1 + 152) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 160) = static AirDropActor.shared;

  return _swift_task_switch(sub_10049F954, v2, 0);
}

uint64_t sub_10049F954()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(SCSensitivityAnalyzer) init];
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10049FAA4;
  v3 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10034B0A4;
  v0[13] = &unk_1008E32A0;
  v0[14] = v3;
  [v2 analyzeCGImage:v1 orientation:1 options:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10049FAA4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_10049FD58;
  }

  else
  {
    v5 = sub_10049FBC4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10049FBC4()
{
  v1 = *(v0 + 144);
  v2 = [v1 isSensitive];

  sub_10039D0AC();
  v3 = static NSUserDefaults.airdrop.getter();
  v4 = SFAirDropUserDefaults.sensitivePreviewOverride.getter();

  if (v4 != 2)
  {
    if (qword_1009738C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097F478);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109376;
      *(v8 + 4) = v2;
      *(v8 + 8) = 1024;
      *(v8 + 10) = v4 & 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "isPreviewSensitive returning sensitivePreviewOverride {isSensitive: %{BOOL}d, override: %{BOOL}d}", v8, 0xEu);
    }

    LOBYTE(v2) = v4;
  }

  v9 = *(v0 + 8);

  return v9(v2 & 1);
}

uint64_t sub_10049FD58()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  if (qword_1009738C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 176);
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_10097F478);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "UserSafety analyze failed: %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  sub_10039D0AC();
  v11 = static NSUserDefaults.airdrop.getter();
  v12 = SFAirDropUserDefaults.sensitivePreviewOverride.getter();

  if (v12 == 2)
  {
    v12 = 0;
  }

  else
  {
    if (qword_1009738C8 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v3, qword_10097F478);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v12 & 1;
      _os_log_impl(&_mh_execute_header, v13, v14, "isPreviewSensitive returning sensitivePreviewOverride {isSensitive: %{BOOL}d, override: %{BOOL}d}", v15, 0xEu);
    }
  }

  v16 = *(v0 + 8);

  return v16(v12 & 1);
}

uint64_t sub_1004A001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v3 + 16);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100005C00;

  return sub_10049EE30(a1, a2, a3, v10, v3 + v9);
}

uint64_t sub_1004A0118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(type metadata accessor for URL() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 24) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + v12 + 8) & ~v10;
  v14 = *(v3 + 16);
  v15 = *(v3 + v12);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100005C00;

  return sub_10049E168(a1, a2, a3, v14, v3 + v11, v15, v3 + v13);
}

uint64_t sub_1004A0260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v3 + 16);
  v11 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_100005C00;

  return sub_10049DF4C(a1, a2, a3, v10, v3 + v9, v11);
}

uint64_t sub_1004A0394(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[21] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A0434, v3, 0);
}

uint64_t sub_1004A0434@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[19];
  v3 = v1[20];
  URL._bridgeToObjectiveC()(a1);
  v5 = v4;
  v1[22] = v4;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1004A0570;
  v6 = swift_continuation_init();
  v1[17] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10034B0A4;
  v1[13] = &unk_1008E3368;
  v1[14] = v6;
  [v3 analyzeFile:v5 options:0 progressHandler:0 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1004A0570()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_1004A0718;
  }

  else
  {
    v5 = sub_1004A0690;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004A0690()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = [v2 isSensitive];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1004A0718()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  if (qword_1009738C8 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_10097F478);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "UserSafety analyze failed: %@", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1004A08CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v10);
  v12 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_100005C00;

  return sub_10049A1D8(a1, a2, a3, v3 + v9, v11, v12);
}

uint64_t sub_1004A0A08(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[29] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A0AA8, v3, 0);
}

uint64_t sub_1004A0AA8()
{
  v1 = v0[27];
  v0[30] = Data.init(contentsOf:options:)();
  v0[31] = v2;
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[32] = isa;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1004A0D8C;
  v5 = swift_continuation_init();
  v0[25] = sub_10028088C(&qword_10097AB10, &qword_100805450);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100390734;
  v0[21] = &unk_1008E33B8;
  v0[22] = v5;
  [v3 contactsWithData:isa completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004A0D8C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 232);
  if (v3)
  {
    v5 = sub_1004A2098;
  }

  else
  {
    v5 = sub_1004A0EAC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004A0EAC()
{
  v60 = v0;
  v1 = (v0 + 26);
  v2 = v0[26];
  v3 = v0[32];
  v0[34] = v2;

  if (v2 >> 62)
  {
LABEL_45:
    v56 = _CocoaArrayWrapper.endIndex.getter();
    v0[35] = v56;
    if (v56)
    {
      goto LABEL_3;
    }

LABEL_37:
    v50 = v0[30];
    v49 = v0[31];

    sub_100026AC0(v50, v49);
    v51 = v0[1];

    return v51(0);
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[35] = v4;
  if (!v4)
  {
    goto LABEL_37;
  }

LABEL_3:
  v57 = v1;
  v5 = 0;
  v6 = &selRef_setTargetQueue_;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  while (1)
  {
    v8 = v0[34];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v9 = *(v8 + 8 * v5 + 32);
    }

    v10 = v9;
    v0[36] = v9;
    v0[37] = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ([v9 v6[25]])
    {
      break;
    }

    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v1 = sub_10000C4AC(v28, qword_10097F478);
    v29 = v10;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v1 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v1 = 138739971;
      *(v1 + 4) = v29;
      *v32 = v29;
      v33 = v29;
      v34 = v31;
      v35 = v30;
      v36 = "Contact has no imageDataAvailable. Skipping {contact: %{sensitive}@}";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v35, v34, v36, v1, 0xCu);
      sub_100005508(v32, &qword_100975400, &qword_1007F65D0);

      goto LABEL_5;
    }

LABEL_4:

LABEL_5:
    v5 = v0[37];
    if (v5 == v0[35])
    {
      v48 = v0[34];
      goto LABEL_37;
    }
  }

  v11 = [v10 imageData];
  if (!v11)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    v1 = sub_10000C4AC(v37, qword_10097F478);
    v29 = v10;
    v30 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v38))
    {
      v1 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v1 = 138739971;
      *(v1 + 4) = v29;
      *v32 = v29;
      v33 = v29;
      v34 = v38;
      v35 = v30;
      v36 = "Contact has no imageData. Skipping {contact: %{sensitive}@}";
      goto LABEL_27;
    }

    goto LABEL_4;
  }

  v12 = v11;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v0[38] = v13;
  v0[39] = v15;
  v16 = objc_allocWithZone(UIImage);
  sub_100294008(v13, v15);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = [v16 initWithData:isa];
  v0[40] = v18;

  sub_100026AC0(v13, v15);
  if (!v18)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v1 = sub_10000C4AC(v39, qword_10097F478);
    sub_100294008(v13, v15);
    v40 = v10;
    v23 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    sub_100026AC0(v13, v15);
    if (os_log_type_enabled(v23, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = v44;
      *v42 = 138740227;
      *(v42 + 4) = v40;
      *v43 = v40;
      *(v42 + 12) = 2080;
      sub_100294008(v13, v15);
      v58 = v40;
      v45 = Data.description.getter();
      v47 = v46;
      sub_100026AC0(v13, v15);
      v1 = sub_10000C4E4(v45, v47, &v59);

      *(v42 + 14) = v1;
      _os_log_impl(&_mh_execute_header, v23, v41, "Failed to create UIImage from contact.imageData {contact: %{sensitive}@, imageData: %s}", v42, 0x16u);
      sub_100005508(v43, &qword_100975400, &qword_1007F65D0);
      v6 = &selRef_setTargetQueue_;

      sub_10000C60C(v44);

      sub_100026AC0(v13, v15);

LABEL_32:
    }

    else
    {

      sub_100026AC0(v13, v15);
    }

    goto LABEL_35;
  }

  v19 = [v18 CGImage];
  v0[41] = v19;
  if (!v19)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_10097F478);
    v21 = v10;
    v22 = v18;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v1 = swift_slowAlloc();
      *v25 = 138740227;
      *(v25 + 4) = v21;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v22;
      *v1 = v21;
      *(v1 + 8) = v18;
      v26 = v21;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get cgImage from contact.imageData {contact: %{sensitive}@, uiImage: %@}", v25, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();

      v6 = &selRef_setTargetQueue_;

      sub_100026AC0(v13, v15);

      goto LABEL_32;
    }

    sub_100026AC0(v13, v15);

LABEL_35:
    p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
    goto LABEL_5;
  }

  v53 = v0[28];
  v0[10] = v0;
  v0[15] = v57;
  v0[11] = sub_1004A1708;
  v54 = v19;
  v55 = swift_continuation_init();
  v0[25] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10034B0A4;
  v0[21] = &unk_1008E33E0;
  v0[22] = v55;
  [v53 analyzeCGImage:v54 orientation:1 options:0 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1004A1708()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 336) = v3;
  if (v3)
  {
    v4 = *(v1 + 272);
    v5 = *(v1 + 232);

    v6 = sub_1004A2258;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 232);
    v6 = sub_1004A1830;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1004A1830()
{
  v65 = v0;
  v1 = v0[26];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v7 = [v1 isSensitive];
  sub_100026AC0(v5, v4);

  v63 = v7;
  if ((v7 & 1) != 0 || (v9 = v0[37], v9 == v0[35]))
  {
LABEL_3:
    v10 = v0[34];
    v11 = v0[30];
    v12 = v0[31];

    sub_100026AC0(v11, v12);
    v13 = v0[1];

    return v13(v63);
  }

  v15 = &selRef_setTargetQueue_;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  while (1)
  {
    v17 = v0[34];
    if ((v17 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v8 = *(v17 + 8 * v9 + 32);
    }

    v18 = v8;
    v0[36] = v8;
    v0[37] = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return _swift_continuation_await(v8);
    }

    if ([v8 v15[25]])
    {
      break;
    }

    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000C4AC(v37, qword_10097F478);
    v38 = v18;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138739971;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      v44 = v40;
      v45 = v39;
      v46 = "Contact has no imageDataAvailable. Skipping {contact: %{sensitive}@}";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v45, v44, v46, v41, 0xCu);
      sub_100005508(v42, &qword_100975400, &qword_1007F65D0);

      goto LABEL_8;
    }

LABEL_7:

LABEL_8:
    v9 = v0[37];
    if (v9 == v0[35])
    {
      goto LABEL_3;
    }
  }

  v19 = [v18 imageData];
  if (!v19)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000C4AC(v47, qword_10097F478);
    v38 = v18;
    v39 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v48))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138739971;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      v44 = v48;
      v45 = v39;
      v46 = "Contact has no imageData. Skipping {contact: %{sensitive}@}";
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v20 = v19;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v0[38] = v21;
  v0[39] = v23;
  v24 = objc_allocWithZone(UIImage);
  sub_100294008(v21, v23);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v26 = [v24 initWithData:isa];
  v0[40] = v26;

  sub_100026AC0(v21, v23);
  if (!v26)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000C4AC(v49, qword_10097F478);
    sub_100294008(v21, v23);
    v50 = v18;
    v31 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    sub_100026AC0(v21, v23);
    if (os_log_type_enabled(v31, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v64 = v54;
      *v52 = 138740227;
      *(v52 + 4) = v50;
      *v53 = v50;
      *(v52 + 12) = 2080;
      sub_100294008(v21, v23);
      v62 = v50;
      v55 = Data.description.getter();
      v57 = v56;
      sub_100026AC0(v21, v23);
      v58 = sub_10000C4E4(v55, v57, &v64);

      *(v52 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v31, v51, "Failed to create UIImage from contact.imageData {contact: %{sensitive}@, imageData: %s}", v52, 0x16u);
      sub_100005508(v53, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v54);
      v15 = &selRef_setTargetQueue_;

      sub_100026AC0(v21, v23);

LABEL_35:
    }

    else
    {

      v8 = sub_100026AC0(v21, v23);
    }

    goto LABEL_38;
  }

  v27 = [v26 CGImage];
  v0[41] = v27;
  if (!v27)
  {
    if (p_opt_class_meths[281] != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_10097F478);
    v29 = v18;
    v30 = v26;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138740227;
      *(v33 + 4) = v29;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v30;
      *v34 = v29;
      v34[1] = v26;
      v35 = v29;
      v36 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to get cgImage from contact.imageData {contact: %{sensitive}@, uiImage: %@}", v33, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();

      v15 = &selRef_setTargetQueue_;

      sub_100026AC0(v21, v23);

      goto LABEL_35;
    }

    sub_100026AC0(v21, v23);

LABEL_38:
    p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
    goto LABEL_8;
  }

  v59 = v0[28];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1004A1708;
  v60 = v27;
  v61 = swift_continuation_init();
  v0[25] = sub_10028088C(&qword_10097F610, &qword_1008053C8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10034B0A4;
  v0[21] = &unk_1008E33E0;
  v0[22] = v61;
  [v59 analyzeCGImage:v60 orientation:1 options:0 completionHandler:v0 + 18];
  v8 = v0 + 10;

  return _swift_continuation_await(v8);
}

uint64_t sub_1004A2098()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  swift_willThrow();
  sub_100026AC0(v3, v4);

  v5 = v0[33];
  if (qword_1009738C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097F478);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "UserSafety analyze failed: %@", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1004A2258()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
  v6 = v0[36];
  v8 = v0[30];
  v7 = v0[31];
  swift_willThrow();
  sub_100026AC0(v8, v7);
  sub_100026AC0(v5, v3);

  v9 = v0[42];
  if (qword_1009738C8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_10097F478);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "UserSafety analyze failed: %@", v13, 0xCu);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1004A2448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 2);
  v9 = *(v3 + 3);
  v10 = *(v3 + 4);
  v11 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_100005C04;

  return sub_1004990C4(a1, a2, a3, v8, v9, v10, v11);
}

uint64_t sub_1004A2544()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Descriptor();
  v50 = *(v2 - 8);
  v3 = *(v50 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v43 - v7;
  v9 = type metadata accessor for NWBrowser.Descriptor.Options.DeviceType();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for NWBrowser.Descriptor.Options();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v51 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NWBrowser.Descriptor.Options.Scope();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v18);
  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser;
  if (!*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser])
  {
    v46 = result;
    v47 = &v43 - v22;
    v44 = v6;
    sub_10028088C(&qword_10097F6A0, &qword_100805498);
    v49 = v11;
    v24 = *(v16 + 72);
    v25 = *(v16 + 80);
    v45 = v16;
    v43 = v2;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1007FA7E0;
    static NWBrowser.Descriptor.Options.Scope.nfc.getter();
    static NWBrowser.Descriptor.Options.Scope.personal.getter();
    v48 = v12;
    static NWBrowser.Descriptor.Options.Scope.contacts.getter();
    static NWBrowser.Descriptor.Options.Scope.family.getter();
    v52 = v26;
    sub_1004A4E9C(&qword_10097F6A8, &type metadata accessor for NWBrowser.Descriptor.Options.Scope);
    sub_10028088C(&qword_10097F6B0, &qword_1008054A0);
    sub_10044EDD8(&qword_10097F6B8, &qword_10097F6B0, &qword_1008054A0);
    v27 = v47;
    v28 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v16 + 16))(v20, v27, v28);
    static NWBrowser.Descriptor.Options.DeviceType.all.getter();
    v29 = v51;
    NWBrowser.Descriptor.Options.init(scope:deviceFilter:deviceTypes:rssiThreshold:)();
    v30 = *(sub_10028088C(&qword_100986240, &qword_10080D410) + 48);
    *v8 = 0xD00000000000001ALL;
    *(v8 + 1) = 0x800000010078FCF0;
    (*(v48 + 16))(&v8[v30], v29, v49);
    v31 = v50;
    v32 = v43;
    (*(v50 + 104))(v8, enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:), v43);
    (*(v31 + 16))(v44, v8, v32);
    type metadata accessor for NWParameters();
    static NWParameters.airDropNetworkBrowserParameters(domain:type:)();
    v33 = type metadata accessor for NWBrowser();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = NWBrowser.init(for:using:)();
    v37 = *&v1[v23];
    *&v1[v23] = v36;
    swift_retain_n();

    *(swift_allocObject() + 16) = v1;
    v38 = v1;
    NWBrowser.browseResultsChangedHandler.setter();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    swift_weakInit();

    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v40;

    NWBrowser.stateUpdateHandler.setter();

    v42 = *&v38[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browserQueue];
    NWBrowser.start(queue:)();

    (*(v31 + 8))(v8, v32);
    (*(v48 + 8))(v51, v49);
    return (*(v45 + 8))(v47, v46);
  }

  return result;
}

void sub_1004A2B58()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser))
  {
    return;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser);

  NWBrowser.cancel()();
  v4 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_sessionLogger);
  sub_10055FC6C();
  v5 = String._bridgeToObjectiveC()();

  v6 = *(v4 + 24);
  if (v6)
  {
    if (v6 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_5:
        if ((v6 & 0xC000000000000001) != 0)
        {

          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v10 = *(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
          swift_unknownObjectRelease();
          v7 = v10;
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v7 = *(*(v6 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
        }

        goto LABEL_11;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_11:
  sub_100086D20(@"ApplicationServiceBrowse", @"Stop", v5, v7);

  v8 = *(v2 + v1);
  *(v2 + v1) = 0;
}

uint64_t sub_1004A2CC0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F630);
  v1 = sub_10000C4AC(v0, qword_10097F630);
  if (qword_1009736F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0918);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004A2D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v20 = a1;
  ObjectType = swift_getObjectType();
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browserQueue;
  v12 = sub_1002DDC10();
  v17[1] = "ationServiceBrowser";
  v17[2] = v12;
  static DispatchQoS.default.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1004A4E9C(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  *&v3[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_browser] = 0;
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_parameters;
  type metadata accessor for NWParameters();
  *&v3[v13] = static NWParameters.applicationService.getter();
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_sessionLogger] = v20;
  v14 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_endpointsUpdateHandler];
  v15 = v23;
  *v14 = v22;
  *(v14 + 1) = v15;
  v24.receiver = v3;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, "init");
}

uint64_t sub_1004A3078(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;

  sub_1002B3398(0, 0, v7, &unk_1008054D8, v10);
}

uint64_t sub_1004A31C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1004A31E8, 0, 0);
}

uint64_t sub_1004A31E8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v3 = static AirDropActor.shared;

    return _swift_task_switch(sub_1004A32E4, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004A32E4()
{
  v1 = *(v0 + 64);
  sub_1004A384C(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_1004A3350(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    swift_weakLoadStrong();
    sub_1004A4058(a1);
  }

  return result;
}

uint64_t sub_1004A33E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A3480, v5, 0);
}

uint64_t sub_1004A3480()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_sessionLogger);
  sub_10055FC6C();
  v2 = String._bridgeToObjectiveC()();

  v3 = *(v1 + 24);
  if (!v3)
  {
    goto LABEL_8;
  }

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v8 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
    swift_unknownObjectRelease();
    v5 = v8;
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(*(v3 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
  }

LABEL_9:
  sub_100086D20(@"ApplicationServiceBrowse", @"Start", v2, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004A35C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A3664, v5, 0);
}

uint64_t sub_1004A3664()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = swift_unknownObjectWeakLoadStrong(), v3, v4))
  {
    sub_10047FAC0();
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser;
    v6 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_applicationServiceBrowser);
    if (v6)
    {
      v7 = v6;
      sub_1004A2B58();

      v6 = *(v4 + v5);
    }

    *(v4 + v5) = 0;

    swift_unknownObjectRelease();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  **(v0 + 40) = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004A3844(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1004A3350(a1);
}

uint64_t sub_1004A384C(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v77 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWEndpoint();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v75 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v62 - v10;
  v12 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v87 = &v62 - v14;
  v86 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v15 = *(v86 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v86);
  v65 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v76 = &v62 - v20;
  __chkstk_darwin(v19);
  v63 = &v62 - v21;
  v22 = type metadata accessor for NWBrowser.Result();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v89 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 56);
  v29 = (v26 + 63) >> 6;
  v79 = (v6 + 8);
  v82 = (v15 + 56);
  v83 = v24 + 16;
  v73 = (v6 + 32);
  v74 = (v6 + 16);
  v84 = v24;
  v81 = (v24 + 8);
  v64 = v15;
  v80 = (v15 + 48);
  v88 = a1;

  v31 = 0;
  v72 = _swiftEmptyArrayStorage;
  *&v32 = 136315138;
  v68 = v32;
  v85 = v22;
  v78 = v11;
  v67 = v5;
  while (1)
  {
    v33 = v31;
    if (!v28)
    {
      break;
    }

LABEL_8:
    (*(v84 + 16))(v89, *(v88 + 48) + *(v84 + 72) * (__clz(__rbit64(v28)) | (v31 << 6)), v22);
    NWBrowser.Result.endpoint.getter();
    if (sub_10062FAF4())
    {
      v34 = v77;
      (*v73)(v77, v11, v5);
      v35 = v34;
      v36 = v87;
      v37 = v76;
      sub_10000EE48(v35, v76, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v38 = v86;
      swift_storeEnumTagMultiPayload();
      sub_10000EE48(v37, v36, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v39 = 0;
    }

    else
    {
      if (qword_1009738D0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000C4AC(v40, qword_10097F630);
      v41 = v75;
      (*v74)(v75, v11, v5);
      v42 = v5;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v70 = v45;
        v71 = swift_slowAlloc();
        v90 = v71;
        *v45 = v68;
        v46 = v41;
        v69 = NWEndpoint.debugDescription.getter();
        v48 = v47;
        v49 = v42;
        v50 = *v79;
        (*v79)(v46, v49);
        v51 = sub_10000C4E4(v69, v48, &v90);

        v52 = v70;
        *(v70 + 1) = v51;
        _os_log_impl(&_mh_execute_header, v43, v44, "Dropping Endpoint %s - missing essential metadata for rendering", v52, 0xCu);
        sub_10000C60C(v71);

        v53 = v78;
        v5 = v67;
        v50(v78, v67);
        v39 = 1;
        v11 = v53;
      }

      else
      {

        v54 = v41;
        v55 = *v79;
        (*v79)(v54, v42);
        v56 = v78;
        v55(v78, v42);
        v39 = 1;
        v5 = v42;
        v11 = v56;
      }

      v38 = v86;
      v36 = v87;
    }

    v28 &= v28 - 1;
    (*v82)(v36, v39, 1, v38);
    v22 = v85;
    (*v81)(v89, v85);
    if ((*v80)(v36, 1, v38) == 1)
    {
      result = sub_100005508(v36, &qword_1009763E0, &qword_1007F95D0);
    }

    else
    {
      v57 = v63;
      sub_10000EE48(v36, v63, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10000EE48(v57, v65, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_10028E820(0, v72[2] + 1, 1, v72);
      }

      v59 = v72[2];
      v58 = v72[3];
      if (v59 >= v58 >> 1)
      {
        v72 = sub_10028E820(v58 > 1, v59 + 1, 1, v72);
      }

      v60 = v72;
      v72[2] = v59 + 1;
      result = sub_10000EE48(v65, v60 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v59, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }
  }

  while (1)
  {
    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      v61 = *(v66 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_endpointsUpdateHandler + 8);
      (*(v66 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropApplicationServiceBrowser_endpointsUpdateHandler))(v72);
    }

    v28 = *(a1 + 56 + 8 * v31);
    ++v33;
    if (v28)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_1004A4058(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v76 - v4;
  v6 = type metadata accessor for NWError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v76 - v13;
  v15 = __chkstk_darwin(v12);
  v77 = v76 - v16;
  __chkstk_darwin(v15);
  v18 = v76 - v17;
  v19 = type metadata accessor for NWBrowser.State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, v19);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == enum case for NWBrowser.State.failed(_:))
  {
    v77 = v5;
    (*(v20 + 96))(v23, v19);
    (*(v7 + 32))(v14, v23, v6);
    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_10097F630);
    v26 = *(v7 + 16);
    v26(v11, v14, v6);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v76[1] = v7;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v76[0] = v14;
      v32 = v31;
      *v30 = 138412290;
      sub_1004A4E9C(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v26(v33, v11, v6);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = *(v7 + 8);
      v35(v11, v6);
      *(v30 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "AirDrop application service browser failed with error %@", v30, 0xCu);
      sub_100005508(v32, &qword_100975400, &qword_1007F65D0);
      v14 = v76[0];
    }

    else
    {

      v35 = *(v7 + 8);
      v35(v11, v6);
    }

    v47 = type metadata accessor for TaskPriority();
    v48 = v77;
    (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = qword_1009735E0;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = static AirDropActor.shared;
    v52 = sub_1004A4E9C(&qword_100977C00, type metadata accessor for AirDropActor);
    v53 = swift_allocObject();
    v53[2] = v51;
    v53[3] = v52;
    v53[4] = v49;

    sub_1002B3398(0, 0, v48, &unk_1008054B0, v53);

    v35(v14, v6);
    return;
  }

  if (v24 == enum case for NWBrowser.State.waiting(_:))
  {
    (*(v20 + 96))(v23, v19);
    v36 = v18;
    (*(v7 + 32))(v18, v23, v6);
    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000C4AC(v37, qword_10097F630);
    v38 = *(v7 + 16);
    v39 = v77;
    v38(v77, v36, v6);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v42 = 138412290;
      sub_1004A4E9C(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v38(v43, v39, v6);
      v44 = _swift_stdlib_bridgeErrorToNSError();
      v45 = *(v7 + 8);
      v45(v39, v6);
      *(v42 + 4) = v44;
      v46 = v78;
      *v78 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "AirDrop application service browser waiting with error %@", v42, 0xCu);
      sub_100005508(v46, &qword_100975400, &qword_1007F65D0);

      v45(v36, v6);
    }

    else
    {

      v59 = *(v7 + 8);
      v59(v39, v6);
      v59(v36, v6);
    }

    return;
  }

  if (v24 == enum case for NWBrowser.State.setup(_:))
  {
    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10000C4AC(v54, qword_10097F630);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_21;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "AirDrop application service browser setting up";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v55, v56, v58, v57, 2u);

LABEL_21:

    return;
  }

  if (v24 == enum case for NWBrowser.State.ready(_:))
  {
    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000C4AC(v60, qword_10097F630);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "AirDrop application service browser ready", v63, 2u);
    }

    v64 = type metadata accessor for TaskPriority();
    (*(*(v64 - 8) + 56))(v5, 1, 1, v64);
    v65 = qword_1009735E0;
    v66 = v78;
    v67 = v5;
    if (v65 != -1)
    {
      swift_once();
    }

    v68 = static AirDropActor.shared;
    v69 = sub_1004A4E9C(&qword_100977C00, type metadata accessor for AirDropActor);
    v70 = swift_allocObject();
    v70[2] = v68;
    v70[3] = v69;
    v70[4] = v66;

    sub_1002B3098(0, 0, v67, &unk_1008054C8, v70);
  }

  else
  {
    if (v24 == enum case for NWBrowser.State.cancelled(_:))
    {
      if (qword_1009738D0 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_10000C4AC(v71, qword_10097F630);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v55, v56))
      {
        goto LABEL_21;
      }

      v57 = swift_slowAlloc();
      *v57 = 0;
      v58 = "AirDrop application service browser cancelled";
      goto LABEL_20;
    }

    if (qword_1009738D0 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000C4AC(v72, qword_10097F630);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "AirDrop application service browser in unknown state", v75, 2u);
    }

    (*(v20 + 8))(v23, v19);
  }
}

uint64_t sub_1004A4C6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1004A35C8(a1, v4, v5, v6);
}

uint64_t sub_1004A4D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1004A33E4(a1, v4, v5, v6);
}

uint64_t sub_1004A4DD4(uint64_t a1)
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

  return sub_1004A31C4(a1, v4, v5, v6, v7);
}

uint64_t sub_1004A4E9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004A4EE4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F6C0);
  v1 = sub_10000C4AC(v0, qword_10097F6C0);
  if (qword_1009736E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004A4FAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for UUID();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  __chkstk_darwin(v13);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10032E82C();
  v38 = a1;
  if (!v17)
  {
    v16 = sub_10032B99C();
  }

  v18 = v17;
  *(v2 + 16) = v16;
  *(v2 + 24) = v17;
  v20 = v40;
  v19 = v41;
  v21 = v16;
  (*(v40 + 56))(v12, 1, 1, v41);

  v22 = v39;
  sub_10062E9D8(v12, v21, v18, v39);

  sub_100005508(v12, &unk_100976120, &qword_1007F9260);
  (*(v20 + 16))(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_connectableUUID, v22, v19);
  *v8 = nw_endpoint_create_application_service();
  (*(v5 + 104))(v8, enum case for NWEndpoint.opaque(_:), v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_displayEndpoint, v8, v4);
  sub_10028088C(&qword_1009750D0, &qword_1007FE490);
  v23 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007F5670;
  v27 = v38;
  sub_1002940CC(v38, v26 + v25);
  v28 = sub_1002F334C(v26);
  swift_setDeallocating();
  sub_1002F96B0(v26 + v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
  swift_deallocClassInstance();
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints) = v28;
  sub_1004A54BC();
  if (qword_1009738D8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000C4AC(v29, qword_10097F6C0);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42 = v33;
    *v32 = 136315138;
    v34 = *(v2 + 16);
    v35 = *(v2 + 24);

    v36 = sub_10000C4E4(v34, v35, &v42);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Creating Device %s", v32, 0xCu);
    sub_10000C60C(v33);
  }

  sub_1002F96B0(v27, type metadata accessor for SDAirDropDiscoveredEndpoint);
  (*(v40 + 8))(v39, v41);
  return v2;
}

id sub_1004A54BC()
{
  v219 = type metadata accessor for SFAirDrop.TXTRecord();
  v218 = *(v219 - 8);
  v1 = *(v218 + 64);
  __chkstk_darwin(v219);
  v217 = &v207 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = type metadata accessor for SFAirDrop.DeviceRelationship();
  v3 = *(v267 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v267);
  v229 = &v207 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v234 = &v207 - v8;
  __chkstk_darwin(v7);
  v233 = &v207 - v9;
  v239 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v10 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v12 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for SFString();
  v272 = *(v213 - 8);
  v13 = *(v272 + 64);
  __chkstk_darwin(v213);
  v211 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v15 = *(*(v259 - 1) + 64);
  v16 = __chkstk_darwin(v259);
  v18 = &v207 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v207 - v19;
  v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v251 = &v207 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v252 = &v207 - v26;
  v27 = __chkstk_darwin(v25);
  v212 = &v207 - v28;
  v29 = __chkstk_darwin(v27);
  v223 = &v207 - v30;
  v31 = __chkstk_darwin(v29);
  v214 = &v207 - v32;
  v33 = __chkstk_darwin(v31);
  v222 = &v207 - v34;
  __chkstk_darwin(v33);
  v265 = &v207 - v35;
  v273 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v264 = *(v273 - 8);
  v36 = *(v264 + 64);
  v37 = __chkstk_darwin(v273);
  v269 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v270 = &v207 - v40;
  v41 = __chkstk_darwin(v39);
  v224 = &v207 - v42;
  v43 = __chkstk_darwin(v41);
  v254 = (&v207 - v44);
  v45 = __chkstk_darwin(v43);
  v225 = (&v207 - v46);
  v47 = __chkstk_darwin(v45);
  v253 = &v207 - v48;
  v49 = __chkstk_darwin(v47);
  v271 = &v207 - v50;
  v51 = __chkstk_darwin(v49);
  v53 = &v207 - v52;
  __chkstk_darwin(v51);
  v263 = &v207 - v54;
  v55 = sub_10028088C(&qword_10097F7B0, &unk_1008055D8);
  v56 = *(*(v55 - 8) + 64);
  v57 = __chkstk_darwin(v55 - 8);
  v230 = &v207 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v57);
  v242 = &v207 - v60;
  v61 = __chkstk_darwin(v59);
  v221 = &v207 - v62;
  v63 = __chkstk_darwin(v61);
  v243 = &v207 - v64;
  __chkstk_darwin(v63);
  v66 = &v207 - v65;
  v231 = sub_1004A77A0();
  v232 = v67;
  result = NWEndpoint.nw.getter();
  v247 = result;
  if (!result)
  {
    goto LABEL_172;
  }

  v228 = v3;
  v70 = *(v3 + 56);
  v69 = v3 + 56;
  v235 = v70;
  v70(v66, 1, 1, v267);
  v71 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints;
  swift_beginAccess();
  v227 = v0;
  v72 = *(v0 + v71);
  v266 = v66;
  v73 = v72 + 56;
  v74 = 1 << *(v72 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(v72 + 56);
  v255 = v18;
  v215 = v18 + 8;
  v77 = v72;
  v238 = v12 + 8;
  v237 = v20 + 8;
  v78 = (v74 + 63) >> 6;
  v210 = enum case for SFString.maybeContact(_:);
  v209 = (v272 + 104);
  v208 = (v272 + 8);
  v258 = (v69 - 8);
  v226 = enum case for SFAirDrop.DeviceRelationship.contact(_:);
  v236 = v69;
  v250 = (v69 + 48);
  v216 = enum case for SFAirDrop.DeviceRelationship.stranger(_:);
  v220 = enum case for SFAirDrop.DeviceRelationship.sameAccount(_:);

  v244 = 0;
  v249 = 0;
  v248 = 0;
  v240 = 0;
  v257 = 0;
  v246 = 0;
  v260 = 0;
  v241 = 0;
  v261 = 0;
  v262 = 0;
  v79 = 0;
  v80 = 0;
  v207 = xmmword_1007F5670;
  v81 = &unk_1008055D8;
  v268 = v12;
  v256 = v20;
  v245 = v77;
  while (v76)
  {
    v272 = v79;
    v83 = v265;
LABEL_14:
    v85 = v263;
    sub_1002940CC(*(v77 + 48) + *(v264 + 72) * (__clz(__rbit64(v76)) | (v80 << 6)), v263);
    sub_10000ECA8(v85, v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1002940CC(v53, v271);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (qword_1009738D8 != -1)
        {
          swift_once();
        }

        v91 = type metadata accessor for Logger();
        sub_10000C4AC(v91, qword_10097F6C0);
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&_mh_execute_header, v92, v93, "NearField endpoints not applicable for SDAirDropDiscoveredDevice", v94, 2u);
          v81 = &unk_1008055D8;
          v77 = v245;
        }

        sub_1002F96B0(v271, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      }

      else
      {
        sub_1002F96B0(v271, type metadata accessor for SDAirDropDiscoveredEndpoint);
        if (qword_1009738D8 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_10000C4AC(v100, qword_10097F6C0);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "Classroom endpoints not applicable for SDAirDropDiscoveredDevice", v103, 2u);
          v81 = &unk_1008055D8;
          v77 = v245;
        }
      }

      v12 = v268;
      goto LABEL_111;
    }

    if (EnumCaseMultiPayload)
    {

      sub_10000ECA8(v271, v255, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      sub_1002940CC(v53, v254);
      v95 = swift_getEnumCaseMultiPayload();
      if (v95 > 1)
      {
        if (v95 != 2)
        {
          v115 = *v254;
          result = [*v254 displayName];
          if (!result)
          {
            goto LABEL_175;
          }

          v116 = result;
          v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v118 = v117;

          v261 = v118;
          v119 = v242;
          v77 = v245;
          device_model = v262;
          if (!v262)
          {
LABEL_72:
            sub_1002940CC(v53, v224);
            v139 = swift_getEnumCaseMultiPayload();
            if (v139 > 1)
            {
              if (v139 == 2)
              {
                v141 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
              }

              else
              {
                v141 = type metadata accessor for SDAirDropDiscoveredEndpoint;
              }

              sub_1002F96B0(v224, v141);
              v241 = 0;
              device_model = 0;
            }

            else
            {
              if (!v139)
              {
                sub_10000ECA8(v224, v212, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
                result = NWEndpoint.nw.getter();
                if (!result)
                {
                  goto LABEL_177;
                }

                device_model = nw_endpoint_get_device_model();
                swift_unknownObjectRelease();
                if (device_model)
                {
                  v241 = String.init(cString:)();
                  device_model = v140;
                }

                else
                {
                  v241 = 0;
                }

                v119 = v242;
                sub_1002F96B0(v212, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
                goto LABEL_87;
              }

              v142 = v256;
              sub_10000ECA8(v224, v256, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
              v143 = (v142 + v259[8]);
              device_model = v143[1];
              v241 = *v143;

              sub_1002F96B0(v142, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
            }

            v119 = v242;
          }

LABEL_87:
          v262 = device_model;
          v144 = v266;
          sub_1004A8A1C(v266, v119);
          v145 = (*v258)(v119, 1, v267);
          v12 = v268;
          if (v145 == 1)
          {
            sub_100005508(v144, &qword_10097F7B0, &unk_1008055D8);
            v81 = &unk_1008055D8;
            sub_100005508(v119, &qword_10097F7B0, &unk_1008055D8);
            if (*(v255 + v259[13]) == 1)
            {
              (*v250)(v144, v220, v267);
            }

            else
            {
              v144 = v266;
              if (*&v215[v259[11]])
              {
                v146 = &v259 + 1;
              }

              else
              {
                v146 = &v249;
              }

              (*v250)(v266, *(v146 - 64), v267);
            }

            v235(v144, 0, 1, v267);
          }

          else
          {
            sub_100005508(v119, &qword_10097F7B0, &unk_1008055D8);
          }

          v147 = v255;
          v148 = v255[1];
          v240 = *v255;
          v257 = v148;

          sub_1002F96B0(v147, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
          v249 = 1;
          goto LABEL_111;
        }

        v105 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v106 = &v279;
LABEL_67:
        sub_1002F96B0(*(v106 - 32), v105);
      }

      else
      {
        if (!v95)
        {
          sub_10000ECA8(v254, v223, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          result = NWEndpoint.nw.getter();
          if (!result)
          {
            goto LABEL_173;
          }

          device_name = nw_endpoint_get_device_name();
          swift_unknownObjectRelease();
          if (device_name)
          {
            v97 = String.init(cString:)();
            v99 = v98;
            if ((sub_10032C7CC() & 0x4000000000) != 0)
            {
              v136 = v211;
              (*v209)(v211, v210, v213);
              sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
              v137 = swift_allocObject();
              *(v137 + 16) = v207;
              *(v137 + 56) = &type metadata for String;
              *(v137 + 64) = sub_100026764();
              *(v137 + 32) = v97;
              *(v137 + 40) = v99;
              v272 = SFString.format(_:)();
              v99 = v138;
              v81 = &unk_1008055D8;
              v77 = v245;

              (*v208)(v136, v213);
            }

            else
            {
              v272 = v97;
            }

            v119 = v242;
            sub_1002F96B0(v223, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);

            v261 = v99;
            device_model = v262;
            if (!v262)
            {
              goto LABEL_72;
            }

            goto LABEL_87;
          }

          v105 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v106 = &v256;
          goto LABEL_67;
        }

        v111 = v256;
        sub_10000ECA8(v254, v256, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v112 = (v111 + v259[9]);
        v114 = *v112;
        v113 = v112[1];

        sub_1002F96B0(v111, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        if (v113)
        {

          v272 = v114;
          v261 = v113;
        }
      }

      v119 = v242;
      device_model = v262;
      if (!v262)
      {
        goto LABEL_72;
      }

      goto LABEL_87;
    }

    sub_10000ECA8(v271, v83, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
    sub_1002940CC(v53, v253);
    v87 = swift_getEnumCaseMultiPayload();
    if (v87 > 1)
    {
      if (v87 == 2)
      {
        v104 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v104 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

      sub_1002F96B0(v253, v104);
    }

    else
    {
      if (v87)
      {
        v107 = v256;
        sub_10000ECA8(v253, v256, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v108 = (v107 + v259[8]);
        v110 = *v108;
        v109 = v108[1];

        sub_1002F96B0(v107, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        if (v109)
        {

          v241 = v110;
          v262 = v109;
        }
      }

      else
      {
        sub_10000ECA8(v253, v222, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_176;
        }

        v88 = nw_endpoint_get_device_model();
        swift_unknownObjectRelease();
        if (v88)
        {
          v241 = String.init(cString:)();
          v90 = v89;
          sub_1002F96B0(v222, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);

          v262 = v90;
        }

        else
        {
          sub_1002F96B0(v222, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        }
      }

      v12 = v268;
      v83 = v265;
    }

    v121 = v243;
    if (!v261)
    {
      sub_1002940CC(v53, v225);
      v122 = swift_getEnumCaseMultiPayload();
      if (v122 > 1)
      {
        if (v122 == 2)
        {
          sub_1002F96B0(v225, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          v272 = 0;
          v261 = 0;
          goto LABEL_100;
        }

        v133 = *v225;
        result = [*v225 displayName];
        if (!result)
        {
          goto LABEL_179;
        }

        v134 = result;
        v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v261 = v135;
      }

      else
      {
        if (v122)
        {
          v128 = v256;
          sub_10000ECA8(v225, v256, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
          v129 = (v128 + v259[9]);
          v130 = v129[1];
          v272 = *v129;
          v261 = v130;

          v131 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
          v132 = v128;
          goto LABEL_99;
        }

        sub_10000ECA8(v225, v214, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_178;
        }

        v123 = nw_endpoint_get_device_name();
        swift_unknownObjectRelease();
        if (v123)
        {
          v124 = String.init(cString:)();
          v126 = v125;
          v127 = sub_10032C7CC();
          v261 = v126;
          if ((v127 & 0x4000000000) != 0)
          {
            v149 = v211;
            (*v209)(v211, v210, v213);
            sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
            v150 = swift_allocObject();
            *(v150 + 16) = v207;
            *(v150 + 56) = &type metadata for String;
            *(v150 + 64) = sub_100026764();
            v151 = v261;
            *(v150 + 32) = v124;
            *(v150 + 40) = v151;
            v272 = SFString.format(_:)();
            v261 = v152;

            (*v208)(v149, v213);
          }

          else
          {
            v272 = v124;
          }

          v12 = v268;
          v83 = v265;
          v131 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
          v132 = v214;
LABEL_99:
          sub_1002F96B0(v132, v131);
LABEL_100:
          v121 = v243;
          goto LABEL_101;
        }

        sub_1002F96B0(v214, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v272 = 0;
        v261 = 0;
      }

      v12 = v268;
      v83 = v265;
      goto LABEL_100;
    }

LABEL_101:
    sub_1004A8A1C(v266, v121);
    if ((*v258)(v121, 1, v267) == 1)
    {
      sub_100005508(v121, &qword_10097F7B0, &unk_1008055D8);
      if ((sub_10032C7CC() & 0x80000) != 0)
      {
        v153 = v250;
        sub_1002F96B0(v83, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v155 = v266;
        sub_100005508(v266, &qword_10097F7B0, &unk_1008055D8);
        v157 = v220;
      }

      else
      {
        result = NWEndpoint.nw.getter();
        if (!result)
        {
          goto LABEL_174;
        }

        v153 = v250;
        contact_id = nw_endpoint_get_contact_id();
        swift_unknownObjectRelease();
        if (contact_id)
        {
          String.init(cString:)();
          sub_1002F96B0(v265, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          v155 = v266;
          sub_100005508(v266, &qword_10097F7B0, &unk_1008055D8);

          v156 = &v259 + 1;
        }

        else
        {
          sub_1002F96B0(v265, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
          v155 = v266;
          sub_100005508(v266, &qword_10097F7B0, &unk_1008055D8);
          v156 = &v249;
        }

        v157 = *(v156 - 64);
        v12 = v268;
      }

      v158 = *v153;
      v159 = v221;
      v160 = v267;
      v158(v221, v157, v267);
      v248 = 1;
      v235(v159, 0, 1, v160);
      sub_1004A8A8C(v159, v155);
      v77 = v245;
      v81 = &unk_1008055D8;
    }

    else
    {
      sub_1002F96B0(v83, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      sub_100005508(v121, &qword_10097F7B0, &unk_1008055D8);
      v248 = 1;
    }

LABEL_111:
    sub_1002940CC(v53, v270);
    v161 = swift_getEnumCaseMultiPayload();
    if (v161 > 1)
    {
      if (v161 == 2)
      {
        v165 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      }

      else
      {
        v165 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

      sub_1002F96B0(v270, v165);
      goto LABEL_125;
    }

    if (!v161)
    {
      sub_10000ECA8(v270, v252, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        return result;
      }

      device_id = nw_endpoint_get_device_id();
      swift_unknownObjectRelease();
      if (!device_id)
      {
        sub_1002F96B0(v252, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        goto LABEL_124;
      }

      v246 = String.init(cString:)();
      v164 = v163;
      sub_1002F96B0(v252, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);

      goto LABEL_120;
    }

    v166 = v256;
    sub_10000ECA8(v270, v256, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v167 = (v166 + v259[7]);
    v168 = *v167;
    v164 = v167[1];

    sub_1002F96B0(v166, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v164)
    {

      v246 = v168;
LABEL_120:
      v260 = v164;
    }

LABEL_124:
    v12 = v268;
LABEL_125:
    v76 &= v76 - 1;
    sub_1002940CC(v53, v269);
    v169 = swift_getEnumCaseMultiPayload();
    if (v169 > 1)
    {
      if (v169 != 2)
      {
        sub_1002F96B0(v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v82 = v269;
        goto LABEL_6;
      }

      sub_1002F96B0(v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_10000ECA8(v269, v12, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
      v171 = *&v238[*(v239 + 28)];

      v172 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      v173 = v12;
LABEL_133:
      sub_1002F96B0(v173, v172);
      v79 = v272;
      if (v171)
      {

        v244 = 1;
        v79 = v272;
      }
    }

    else
    {
      if (v169)
      {
        sub_1002F96B0(v53, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v174 = v256;
        sub_10000ECA8(v269, v256, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v171 = *&v237[v259[11]];

        v172 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
        v173 = v174;
        goto LABEL_133;
      }

      sub_10000ECA8(v269, v251, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      result = NWEndpoint.nw.getter();
      if (!result)
      {
        goto LABEL_171;
      }

      v170 = nw_endpoint_get_contact_id();
      swift_unknownObjectRelease();
      if (v170)
      {
        String.init(cString:)();
        sub_1002F96B0(v251, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        sub_1002F96B0(v53, type metadata accessor for SDAirDropDiscoveredEndpoint);

        v244 = 1;
        v12 = v268;
        v79 = v272;
      }

      else
      {
        sub_1002F96B0(v251, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v82 = v53;
        v12 = v268;
LABEL_6:
        sub_1002F96B0(v82, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v79 = v272;
      }
    }
  }

  v83 = v265;
  while (1)
  {
    v84 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      __break(1u);
LABEL_169:
      swift_once();
      goto LABEL_164;
    }

    if (v84 >= v78)
    {
      break;
    }

    v76 = *(v73 + 8 * v84);
    ++v80;
    if (v76)
    {
      v272 = v79;
      v80 = v84;
      goto LABEL_14;
    }
  }

  v175 = v266;
  if (v261)
  {
    String.utf8CString.getter();

    nw_endpoint_set_device_name();
    v175 = v266;
  }

  v176 = v234;
  v177 = v233;
  v178 = v228;
  v179 = v260;
  if (v262)
  {
    String.utf8CString.getter();

    nw_endpoint_set_device_model();
    v175 = v266;
  }

  if (v179)
  {
    String.utf8CString.getter();
    nw_endpoint_set_device_id();

    sub_10054141C(8);

    v180 = static String._fromSubstring(_:)();
    v182 = v181;
    goto LABEL_144;
  }

  if (v257)
  {
    String.lowercased()();

    sub_10054141C(8);

    v180 = static String._fromSubstring(_:)();
    v182 = v183;
LABEL_144:

    v274 = v180;
    v275 = v182;
    v175 = v266;
    v184._countAndFlagsBits = 58;
    v184._object = 0xE100000000000000;
    String.append(_:)(v184);
    v185 = v275;
    v277 = v274;
  }

  else
  {
    v277 = 980183406;
    v185 = 0xE400000000000000;
  }

  v278 = v185;
  if (v248)
  {
    v186._countAndFlagsBits = 97;
    v186._object = 0xE100000000000000;
    String.append(_:)(v186);
  }

  if (v249)
  {
    v187._countAndFlagsBits = 98;
    v187._object = 0xE100000000000000;
    String.append(_:)(v187);
  }

  if (v244)
  {
    v188._countAndFlagsBits = 99;
    v188._object = 0xE100000000000000;
    String.append(_:)(v188);
  }

  v189 = v230;
  sub_1004A8A1C(v175, v230);
  if ((*v258)(v189, 1, v267) == 1)
  {
    sub_100005508(v189, &qword_10097F7B0, &unk_1008055D8);
  }

  else
  {
    v190 = v267;
    (*(v178 + 32))(v177, v189, v267);
    v191 = *(v178 + 104);
    v192 = v229;
    v191(v229, v226, v190);
    sub_1004A8AFC(&unk_100978CF0, &type metadata accessor for SFAirDrop.DeviceRelationship);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v193 = *(v178 + 8);
    v193(v192, v190);
    if ((v274 != v276) | v244 & 1)
    {
      v194 = *(v178 + 16);
      v194(v176, v177, v267);
    }

    else
    {
      v191(v176, v216, v267);
      v194 = *(v178 + 16);
    }

    v195 = v267;
    v194(v229, v176, v267);
    v196 = v217;
    SFAirDrop.TXTRecord.init(deviceRelationship:)();
    SFAirDrop.TXTRecord.addToEndpoint(_:)();
    (*(v218 + 8))(v196, v219);
    v193(v176, v195);
    v193(v177, v195);
  }

  v78 = sub_1004A77A0();
  v77 = v197;
  v76 = v231;
  v81 = v232;
  if (v231 == v78 && v232 == v197 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    swift_unknownObjectRelease();

LABEL_161:

    return sub_100005508(v266, &qword_10097F7B0, &unk_1008055D8);
  }

  if (qword_1009738D8 != -1)
  {
    goto LABEL_169;
  }

LABEL_164:
  v198 = type metadata accessor for Logger();
  sub_10000C4AC(v198, qword_10097F6C0);
  v200 = v277;
  v199 = v278;

  v201 = Logger.logObject.getter();
  v202 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v201, v202))
  {

    swift_unknownObjectRelease();

    goto LABEL_161;
  }

  v203 = swift_slowAlloc();
  v274 = swift_slowAlloc();
  *v203 = 136315651;
  v204 = sub_10000C4E4(v200, v199, &v274);

  *(v203 + 4) = v204;
  *(v203 + 12) = 2081;
  v205 = sub_10000C4E4(v76, v81, &v274);

  *(v203 + 14) = v205;
  *(v203 + 22) = 2081;
  v206 = sub_10000C4E4(v78, v77, &v274);

  *(v203 + 24) = v206;
  _os_log_impl(&_mh_execute_header, v201, v202, "DiscoveredDevice Updated %s [%{private}s] -> [%{private}s]", v203, 0x20u);
  swift_arrayDestroy();

  swift_unknownObjectRelease();
  return sub_100005508(v266, &qword_10097F7B0, &unk_1008055D8);
}

uint64_t sub_1004A77A0()
{
  _StringGuts.grow(_:)(25);
  v1._countAndFlagsBits = 0x28656369766544;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);
  String.append(_:)(v0[1]);
  v2._countAndFlagsBits = 0x22206D4E20;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  result = NWEndpoint.nw.getter();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  device_name = nw_endpoint_get_device_name();
  swift_unknownObjectRelease();
  if (device_name)
  {
    String.init(cString:)();
  }

  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v5._countAndFlagsBits = 0x20644D202C22;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  result = NWEndpoint.nw.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  device_model = nw_endpoint_get_device_model();
  swift_unknownObjectRelease();
  if (device_model)
  {
    String.init(cString:)();
  }

  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_1004A792C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_connectableUUID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_displayEndpoint;
  v5 = type metadata accessor for NWEndpoint();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropDiscoveredDevice()
{
  result = qword_10097F708;
  if (!qword_10097F708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004A7A74()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NWEndpoint();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1004A7B9C()
{
  v1 = v0;
  v40 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v2 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 56);
  v20 = (v17 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v22 = 0;
  LOBYTE(v23) = 0;
  v41 = v12;
  while (v19)
  {
    v26 = v22;
LABEL_11:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    sub_1002940CC(*(v16 + 48) + *(v8 + 72) * (v27 | (v26 << 6)), v14);
    if (v23)
    {
      v24 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      v25 = v14;
      goto LABEL_5;
    }

    sub_1002940CC(v14, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
        v25 = v12;
      }

      else
      {
        sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v25 = v12;
        v24 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      }

LABEL_5:
      result = sub_1002F96B0(v25, v24);
      LOBYTE(v23) = 1;
      v22 = v26;
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v32 = v12;
      v33 = v8;
      v34 = v7;
      v35 = v39;
      sub_10000ECA8(v32, v39, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      LOBYTE(v23) = *(v35 + *(v40 + 60));
      v36 = v35;
      v7 = v34;
      v8 = v33;
      v12 = v41;
      result = sub_1002F96B0(v36, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      v22 = v26;
    }

    else
    {
      v29 = v12;
      v30 = v38;
      sub_10000ECA8(v29, v38, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if ((sub_10032C7CC() & 0x4000000000) != 0)
      {
        sub_1002F96B0(v30, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
        LOBYTE(v23) = 1;
      }

      else
      {
        v31 = sub_10032C7CC();
        sub_1002F96B0(v30, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        result = sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v23 = (v31 >> 39) & 1;
      }

      v22 = v26;
      v12 = v41;
    }
  }

  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v20)
    {

      return v23 & 1;
    }

    v19 = *(v16 + 56 + 8 * v26);
    ++v22;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A7FE0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A8140, v7, 0);
}

uint64_t sub_1004A8140()
{
  v33 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(swift_task_alloc() + 16) = v4;

  sub_1002CC594(sub_1004A8B44, v7, v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[14], &qword_1009763E0, &qword_1007F95D0);
  }

  else
  {
    sub_10000ECA8(v0[14], v0[20], type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (qword_1009738D8 != -1)
    {
      swift_once();
    }

    v8 = v0[19];
    v9 = v0[20];
    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_10097F6C0);
    sub_1002940CC(v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[19];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315138;
      v17 = sub_10032B99C();
      v19 = v18;
      sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v20 = sub_10000C4E4(v17, v19, &v32);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Removing duplicate/stale endpoint %s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    else
    {

      sub_1002F96B0(v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    }

    v21 = v0[20];
    v22 = v0[13];
    swift_beginAccess();
    sub_10036E788(v21, v22);
    swift_endAccess();
    sub_100005508(v22, &qword_1009763E0, &qword_1007F95D0);
    sub_1002F96B0(v21, type metadata accessor for SDAirDropDiscoveredEndpoint);
  }

  v24 = v0[19];
  v23 = v0[20];
  v26 = v0[17];
  v25 = v0[18];
  v27 = v0[13];
  v28 = v0[14];
  v29 = v0[12];
  sub_1002940CC(v0[11], v26);
  swift_beginAccess();
  sub_10046DE64(v25, v26);
  swift_endAccess();
  sub_1002F96B0(v25, type metadata accessor for SDAirDropDiscoveredEndpoint);
  sub_1004A54BC();

  v30 = v0[1];

  return v30();
}

BOOL sub_1004A8504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_1002940CC(a1, &v14 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = EnumCaseMultiPayload;
  sub_1002F96B0(v10, off_1008E3598[EnumCaseMultiPayload]);
  sub_1002940CC(a2, v8);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_1002F96B0(v8, off_1008E35B8[a2]);
  return v12 == a2;
}

uint64_t sub_1004A8660()
{
  *(v1 + 40) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A86FC, v2, 0);
}

uint64_t sub_1004A86FC()
{
  v1 = **(v0 + 40);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_discoveredEndpoints;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_1004A8790(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_1004A7FE0(a1);
}

uint64_t sub_1004A8828(uint64_t a1)
{
  v2[5] = a1;
  v3 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[6] = v4;
  v2[7] = v5;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A8900, v6, 0);
}

uint64_t sub_1004A8900()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  swift_beginAccess();
  sub_10036E788(v3, v2);
  swift_endAccess();
  sub_100005508(v2, &qword_1009763E0, &qword_1007F95D0);
  sub_1004A54BC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004A89C4(uint64_t a1)
{
  result = sub_1004A8AFC(&qword_10097F7A8, type metadata accessor for SDAirDropDiscoveredDevice);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004A8A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097F7B0, &unk_1008055D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A8A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097F7B0, &unk_1008055D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A8AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004A8B64()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097F7B8);
  v1 = sub_10000C4AC(v0, qword_10097F7B8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004A8C2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A8D24, v6, 0);
}

uint64_t sub_1004A8D24()
{
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v2)
  {
    goto LABEL_7;
  }

  v3 = v0[2];
  v4 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v4 != 1)
  {
    goto LABEL_7;
  }

  v5 = v0[2];
  v6 = SFAirDropReceive.AskRequest.files.getter();
  if (*(v6 + 16))
  {
    v8 = v0[5];
    v7 = v0[6];
    v10 = v0[3];
    v9 = v0[4];
    (*(v8 + 16))(v7, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9);

    v11 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = *(v10 + 24);
    *(v10 + 16) = v11;
    *(v10 + 24) = v13;
  }

  v15 = objc_allocWithZone(LSApplicationRecord);
  v16 = sub_10066F3F8(0xD000000000000012, 0x8000000100788350, 1);
  if (v16)
  {

    v17 = 1;
  }

  else
  {
LABEL_7:
    v17 = 0;
  }

  v18 = v0[6];

  v19 = v0[1];

  return v19(v17);
}

uint64_t sub_1004A8FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  v6 = type metadata accessor for URL();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004A9150, v10, 0);
}

id sub_1004A9150()
{
  v99 = v0;
  v1 = 0xD000000000000014;
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007F5670;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100026764();
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;

  String.init(format:_:)();
  URL.init(string:)();

  sub_100333278(v3, v2);
  v10 = (*(v5 + 48))(v2, 1, v4);
  v11 = *(v0 + 144);
  if (v10 == 1)
  {
    sub_100005508(*(v0 + 144), &unk_100974E00, &qword_1007F8940);
    if (qword_1009738E0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 96);
    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097F7B8);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 96);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v98 = v18;
      *v17 = 136315138;
      if (*(v16 + 16))
      {
        v19 = *(*(v0 + 112) + 80);
        v20 = *(v0 + 96) + ((v19 + 32) & ~v19);
        v1 = URL.description.getter();
        v22 = v21;
      }

      else
      {
        v22 = 0x80000001007924A0;
      }

      v83 = *(v0 + 152);
      v84 = sub_10000C4E4(v1, v22, &v98);

      *(v17 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to build app store search URL with item: %s", v17, 0xCu);
      sub_10000C60C(v18);

      v41 = v83;
    }

    else
    {
      v40 = *(v0 + 152);

      v41 = v40;
    }

    goto LABEL_21;
  }

  (*(*(v0 + 112) + 32))(*(v0 + 136), *(v0 + 144), *(v0 + 104));
  if (qword_1009738E0 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 128);
  v23 = *(v0 + 136);
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);
  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_10097F7B8);
  v93 = *(v25 + 16);
  v93(v24, v23, v26);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 128);
  v33 = *(v0 + 104);
  v32 = *(v0 + 112);
  if (v30)
  {
    v34 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v98 = v91;
    *v34 = 136315138;
    sub_1004AA010();
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v38 = *(v32 + 8);
    v38(v31, v33);
    v39 = sub_10000C4E4(v35, v37, &v98);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Launching app store with URL: %s", v34, 0xCu);
    sub_10000C60C(v91);
  }

  else
  {

    v38 = *(v32 + 8);
    v38(v31, v33);
  }

  v42 = *(v0 + 136);
  v43 = objc_opt_self();
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  [v43 logReceiverBundleID:0 forURL:v45];

  sub_10028088C(&qword_10097B5E8, &qword_1007FE9C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v48;
  *(inited + 48) = 1;
  v49 = sub_100281D9C(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_10097B5F0, &qword_1007FE9D0);
  v50 = [objc_allocWithZone(_LSOpenConfiguration) init];
  sub_1003CE73C(v49);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v50 setFrontBoardOptions:isa];

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v53 = result;
  v54 = *(v0 + 136);

  URL._bridgeToObjectiveC()(v55);
  v57 = v56;
  *(v0 + 72) = 0;
  v58 = [v53 openURL:v56 configuration:v50 error:v0 + 72];

  v59 = *(v0 + 72);
  v60 = *(v0 + 104);
  if (!v58)
  {
    v66 = *(v0 + 136);
    v67 = *(v0 + 120);
    v68 = v59;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v93(v67, v66, v60);
    swift_errorRetain();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v0 + 152);
    v73 = *(v0 + 136);
    v74 = *(v0 + 112);
    v75 = *(v0 + 120);
    v76 = *(v0 + 104);
    if (v71)
    {
      v97 = *(v0 + 136);
      v77 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v98 = v95;
      *v77 = 136315394;
      sub_1004AA010();
      v96 = v72;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v70;
      v80 = v79;
      v38(v75, v76);
      v81 = sub_10000C4E4(v78, v80, &v98);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2112;
      swift_errorRetain();
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 14) = v82;
      *v94 = v82;
      _os_log_impl(&_mh_execute_header, v69, v92, "Failed to launch app store with URL %s: %@", v77, 0x16u);
      sub_100005508(v94, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v95);

      v38(v97, v76);
      v41 = v96;
    }

    else
    {

      v38(v75, v76);
      v38(v73, v76);
      v41 = v72;
    }

LABEL_21:
    sub_100005508(v41, &unk_100974E00, &qword_1007F8940);
    v65 = 0;
    goto LABEL_22;
  }

  v61 = *(v0 + 152);
  v62 = *(v0 + 136);
  v63 = *(v0 + 112);
  v64 = v59;

  v38(v62, v60);
  sub_100005508(v61, &unk_100974E00, &qword_1007F8940);
  v65 = 1;
LABEL_22:
  v86 = *(v0 + 144);
  v85 = *(v0 + 152);
  v88 = *(v0 + 128);
  v87 = *(v0 + 136);
  v89 = *(v0 + 120);
  **(v0 + 80) = v65;

  v90 = *(v0 + 8);

  return v90();
}