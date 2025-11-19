uint64_t sub_1002C2F84()
{
  if (IsAppleInternalBuild())
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100975E80);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService.at-a-distance: BEGIN", v4, 2u);
    }

    v5 = v0[17];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[10];

    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
    swift_beginAccess();
    sub_10000FF90(v8 + v9, v6, &qword_100976130, &qword_1007F92B0);
    Optional.tryUnwrap(_:file:line:)();
    v16 = v0[10];
    sub_100005508(v0[15], &qword_100976130, &qword_1007F92B0);
    v17 = *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
    if (v17 && (v18 = [v17 currentApplicationLabel]) != 0)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v0[7] = v20;
    v0[8] = v22;
    sub_10028088C(&qword_100975100, &qword_1007FBA10);
    Optional.tryUnwrap(_:file:line:)();
    v23 = v0[17];
    v29 = v0[16];
    v39 = v0[15];
    v30 = v0[12];
    v31 = v0[13];
    v32 = v0[11];
    v33 = v0[9];

    v34 = v0[5];
    v35 = v0[6];
    v36 = (v23 + *(v29 + 20));
    v37 = *v36;
    v38 = v36[1];
    (*(v30 + 16))(v31, v23, v32);
    sub_100294008(v37, v38);
    SFAirDropClient.BoopAtADistance.ServerInfo.init(applicationLabel:publicKeyData:bonjourUUID:)();
    sub_1002D6414(v23, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);

    v27 = v0[1];
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "SDAirDropNearFieldService.at-a-distance: begin FAILED -- Not internal build", v13, 2u);
    }

    v14 = type metadata accessor for SFError();
    sub_100005358(&qword_100976248, &type metadata accessor for SFError);
    swift_allocError();
    *v15 = 0xD000000000000037;
    v15[1] = 0x800000010078A460;
    v15[2] = 0xD000000000000060;
    v15[3] = 0x800000010078A4A0;
    v15[4] = 1031;
    (*(*(v14 - 8) + 104))(v15, enum case for SFError.notAvailable(_:), v14);
    swift_willThrow();
    v24 = v0[17];
    v25 = v0[15];
    v26 = v0[13];

    v27 = v0[1];
  }

  return v27();
}

uint64_t sub_1002C3498(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005C00;

  return sub_1002C3540(a1, a2);
}

uint64_t sub_1002C3540(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for UUID();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SDNearFieldTap() - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction();
  v3[19] = v14;
  v15 = *(v14 - 8);
  v3[20] = v15;
  v16 = *(v15 + 64) + 15;
  v3[21] = swift_task_alloc();
  v17 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v18 = static AirDropActor.shared;
  v3[23] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C37B8, v18, 0);
}

uint64_t sub_1002C37B8()
{
  if (IsAppleInternalBuild())
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[12].receiver = sub_10000C4AC(v1, qword_100975E80);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService.at-a-distance: UPDATE", v4, 2u);
    }

    receiver = v0[4].receiver;

    v6 = *&receiver[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController];
    v0[2].super_class = v6;
    v7 = v6;
    sub_10028088C(&unk_100976250, &qword_1007F9390);
    Optional.tryUnwrap(_:file:line:)();

    v0[12].super_class = v0[2].receiver;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropNearFieldService.at-a-distance: didDetectDeviceNearbyWithInitiatorRole", v10, 2u);
    }

    v11 = v0[11].receiver;
    super_class = v0[11].super_class;
    v13 = v0[10].receiver;
    v14 = v0[9].super_class;
    v43 = v0[10].super_class;
    v44 = v0[9].receiver;
    v15 = v0[4].receiver;
    v16 = v0[3].receiver;

    v17 = SFAirDropClient.BoopAtADistance.Transaction.isInitiator.getter();
    v18 = type metadata accessor for TaskPriority();
    v0[13].receiver = v18;
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    v0[13].super_class = v20;
    v0[14].receiver = ((v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000);
    (v20)(v11, 1, 1, v18);
    v21 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
    v0[14].super_class = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = super_class;
    *(v22 + 24) = v21;
    *(v22 + 32) = v17 & 1;
    *(v22 + 40) = v15;
    v23 = v15;

    sub_1002B3098(0, 0, v11, &unk_1007F93A0, v22);

    v24 = v13[2];
    v0[15].receiver = v24;
    v0[15].super_class = ((v13 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v24(v43, v16, v14);
    v25 = type metadata accessor for SDBoopAtADistanceTransaction(0);
    v26 = objc_allocWithZone(v25);
    v24(&v26[OBJC_IVAR____TtC16DaemoniOSLibrary28SDBoopAtADistanceTransaction_inner], v43, v14);
    v0[1].receiver = v26;
    v0[1].super_class = v25;
    v0[16].receiver = objc_msgSendSuper2(v0 + 1, "init");
    (v13[1])(v43, v14);
    static Clock<>.continuous.getter();
    v27 = swift_task_alloc();
    v0[16].super_class = v27;
    *v27 = v0;
    *(v27 + 1) = sub_1002C3E00;
    v28 = v0[9].receiver;

    return sub_10002ED10(1000000000000000000, 0, 0, 0, 1);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_100975E80);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "SDAirDropNearFieldService.at-a-distance: FAILED -- Not internal build", v33, 2u);
    }

    v34 = type metadata accessor for SFError();
    sub_100005358(&qword_100976248, &type metadata accessor for SFError);
    swift_allocError();
    *v35 = 0xD000000000000037;
    v35[1] = 0x800000010078A460;
    v35[2] = 0xD000000000000060;
    v35[3] = 0x800000010078A4A0;
    v35[4] = 1044;
    (*(*(v34 - 8) + 104))(v35, enum case for SFError.notAvailable(_:), v34);
    swift_willThrow();
    v37 = v0[10].super_class;
    v36 = v0[11].receiver;
    v38 = v0[9].receiver;
    v40 = v0[7].receiver;
    v39 = v0[7].super_class;
    v41 = v0[5].super_class;

    v42 = v0->super_class;

    return v42();
  }
}

uint64_t sub_1002C3E00()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = v2[23];
  (*(v2[17] + 8))(v2[18], v2[16]);
  if (v0)
  {
    v6 = sub_1002C41D4;
  }

  else
  {
    v6 = sub_1002C3F7C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C3F7C()
{
  v1 = v0[24];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService.at-a-distance: nearFieldController.didBegin", v4, 2u);
  }

  v5 = v0[32];
  v29 = v0[30];
  v30 = v0[31];
  v22 = v0[29];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];
  v26 = v0[19];
  v27 = v0[14];
  v11 = v0[13];
  v28 = v0[12];
  v31 = v0[15];
  v32 = v0[11];
  v12 = v0[8];
  v24 = v0[21];
  v25 = v0[7];
  v23 = v0[6];

  v7(v10, 1, 1, v8);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v22;
  v13[4] = v5;
  v13[5] = v12;
  v14 = v5;
  v15 = v12;

  v16 = v14;
  sub_1002B2DEC(0, 0, v10, &unk_1007F93B8, v13);

  v29(v24, v23, v26);
  (*(v11 + 16))(v27, v25, v28);
  sub_1004E78DC(v24, v27, v31);
  SFAirDropClient.BoopAtADistance.Transaction.identifier.getter();
  v17 = swift_task_alloc();
  v0[35] = v17;
  *v17 = v0;
  v17[1] = sub_1002C428C;
  v18 = v0[15];
  v19 = v0[11];
  v20 = v0[8];

  return sub_1002BCAE4(v18, v19);
}

uint64_t sub_1002C41D4()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 272);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002C428C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1002C43F8, v2, 0);
}

uint64_t sub_1002C43F8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);

  sub_1002D6414(v5, type metadata accessor for SDNearFieldTap);

  v8 = *(v0 + 8);

  return v8();
}

void sub_1002C44FC()
{
  if (IsAppleInternalBuild())
  {
    v1 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController;
    v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
    if (v2)
    {
      v3 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController) currentPreferredPollingType];
      v4 = *(v0 + v1);
      if (v4)
      {
        v5 = [v4 currentApplicationLabel];
        if (v5)
        {
          v6 = v5;
          v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v8;

LABEL_13:
          if (qword_100973548 != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          sub_10000C4AC(v16, qword_100975E80);

          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v17, v18))
          {
            v29 = v7;
            v19 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *v19 = 136315394;
            sub_10028088C(&qword_100976240, &qword_1007F9380);
            v20 = String.init<A>(describing:)();
            v22 = sub_10000C4E4(v20, v21, &v30);

            *(v19 + 4) = v22;
            *(v19 + 12) = 2080;
            if (v9)
            {
              v23 = v29;
            }

            else
            {
              v23 = 0xD000000000000015;
            }

            if (v9)
            {
              v24 = v9;
            }

            else
            {
              v24 = 0x8000000100789F30;
            }

            v25 = sub_10000C4E4(v23, v24, &v30);

            *(v19 + 14) = v25;
            _os_log_impl(&_mh_execute_header, v17, v18, "SDAirDropNearFieldService.at-a-distance: Restaring Field Service polling {lastPollingType: %s, lastApplicationLabel: %s}", v19, 0x16u);
            swift_arrayDestroy();

            v7 = v29;
          }

          sub_1002B9D54();
          sub_1000286E8(v3, v2 == 0, v7, v9);

          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "SDAirDropNearFieldService.at-a-distance: END", v28, 2u);
          }

          return;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v7 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100975E80);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "SDAirDropNearFieldService.at-a-distance: FAILED -- Not internal build", v13, 2u);
  }

  v14 = type metadata accessor for SFError();
  sub_100005358(&qword_100976248, &type metadata accessor for SFError);
  swift_allocError();
  *v15 = 0xD000000000000037;
  v15[1] = 0x800000010078A460;
  v15[2] = 0xD000000000000060;
  v15[3] = 0x800000010078A4A0;
  v15[4] = 1067;
  (*(*(v14 - 8) + 104))(v15, enum case for SFError.notAvailable(_:), v14);
  swift_willThrow();
}

uint64_t sub_1002C49EC@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = sub_10028088C(&qword_1009761F8, &qword_1007F9350);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = sub_10028088C(&qword_100976200, &qword_1007F9358);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = sub_10028088C(&qword_100976208, &qword_1007F9360);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = *v1;
  swift_beginAccess();
  sub_10028088C(&qword_100976210, &qword_1007F9368);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10028088C(&qword_100976218, &unk_1007F9370);
  sub_100011630(&qword_100976220, &qword_100976200, &qword_1007F9358);
  Publisher.map<A>(_:)();
  (*(v5 + 8))(v8, v4);
  sub_100011630(&qword_100976228, &qword_100976208, &qword_1007F9360);
  Publisher<>.values.getter();
  sub_100011630(&qword_100976230, &qword_1009761F8, &qword_1007F9350);
  SFNoThrowAsyncSequence.init<A>(_:)();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1002C4D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v6 = static NSUserDefaults.airdrop.getter();
  v7 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if ((v7 & 1) != 0 && (v8 = v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap, swift_beginAccess(), v9 = type metadata accessor for SDNearFieldTap(), !(*(*(v9 - 8) + 48))(v8, 1, v9)) && (v12 = (v8 + *(v9 + 24)), (v13 = v12[1]) != 0))
  {
    if (*v12 == a1 && v13 == a2)
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1002C4E70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976138, qword_1007F92B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SDNearFieldTap();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v13 = static NSUserDefaults.airdrop.getter();
  v14 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if (v14)
  {
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
    swift_beginAccess();
    sub_10000FF90(v2 + v15, v7, &qword_100976138, qword_1007F92B8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_10000CA10(v7, v12, type metadata accessor for SDNearFieldTap);
      v16 = sub_1004E7B84(a1);
      sub_1002D6414(v12, type metadata accessor for SDNearFieldTap);
      return v16 & 1;
    }

    sub_100005508(v7, &qword_100976138, qword_1007F92B8);
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1002C5108@<X0>(uint64_t a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>)
{
  v188 = a2;
  v203 = a1;
  v201 = a3;
  v187 = type metadata accessor for SFClientIdentity();
  v186 = *(v187 - 1);
  v3 = *(v186 + 8);
  __chkstk_darwin(v187);
  v185 = &v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest();
  v200 = *(v202 - 8);
  v5 = *(v200 + 64);
  v6 = __chkstk_darwin(v202);
  v199 = &v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v189 = &v178 - v9;
  v10 = __chkstk_darwin(v8);
  v191 = &v178 - v11;
  v12 = __chkstk_darwin(v10);
  v180 = &v178 - v13;
  __chkstk_darwin(v12);
  v179 = &v178 - v14;
  v15 = sub_10028088C(&qword_100976198, &qword_1007F9318);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v182 = &v178 - v17;
  v18 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
  v196 = *(v18 - 8);
  v197 = v18;
  v19 = *(v196 + 64);
  v20 = __chkstk_darwin(v18);
  v190 = &v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v184 = &v178 - v23;
  v24 = __chkstk_darwin(v22);
  v193 = &v178 - v25;
  __chkstk_darwin(v24);
  v181 = &v178 - v26;
  v27 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v194 = (&v178 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v37 = &v178 - v36;
  v38 = type metadata accessor for UUID();
  v205 = *(v38 - 8);
  v39 = *(v205 + 64);
  v40 = __chkstk_darwin(v38);
  v42 = &v178 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v40);
  v45 = &v178 - v44;
  __chkstk_darwin(v43);
  v47 = &v178 - v46;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v48 = v28;

  v49 = v28 + 48;
  v50 = *(v28 + 48);
  v51 = v50(v37, 1, v27);
  v204 = v38;
  v195 = v27;
  v183 = v48;
  v198 = v42;
  if (!v51)
  {
    v192 = v50;
    (*(v48 + 16))(v31, v37, v27);
    sub_100005508(v37, &unk_100975F60, &unk_1007F91B0);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v48 + 8))(v31, v27);
    v54 = v31;
    v55 = v205;
    (*(v205 + 32))(v47, v45, v38);
    v53 = v203;
    SFAirDrop.NearbySharingAssertionRequest.nearbySharingInteractionID.getter();
    v56 = static UUID.== infix(_:_:)();
    v57 = *(v55 + 8);
    v57(v42, v38);
    if ((v56 & 1) == 0)
    {
      v31 = v54;
      v197 = v49;
      v57(v47, v38);
      v52 = v206;
      v50 = v192;
      goto LABEL_9;
    }

    v194 = v57;
    v199 = (v55 + 8);
    v58 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
    v59 = v206;
    swift_beginAccess();
    v60 = *(&v59->isa + v58);
    v61 = *(v60 + 16);
    v178 = v47;
    if (v61 && (v62 = sub_10000EBD4(v47), (v63 & 1) != 0))
    {
      v64 = *(*(v60 + 56) + 8 * v62);
      v65 = swift_endAccess();
      __chkstk_darwin(v65);
      *(&v178 - 2) = v203;

      v66 = v182;
      v195 = v64;
      sub_1002CC3C0(sub_1002D649C, v64, v182);
      v68 = v196;
      v67 = v197;
      if ((*(v196 + 48))(v66, 1, v197) != 1)
      {
        v151 = v181;
        (*(v68 + 32))(v181, v66, v67);
        v152 = v200;
        v153 = v198;
        if (qword_100973548 != -1)
        {
          swift_once();
        }

        v154 = type metadata accessor for Logger();
        sub_10000C4AC(v154, qword_100975E80);
        v155 = *(v152 + 16);
        v156 = v179;
        v158 = v202;
        v157 = v203;
        v155(v179, v203, v202);
        v159 = v180;
        v155(v180, v157, v158);
        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v207[0] = v206;
          *v162 = 136315394;
          LODWORD(v203) = v161;
          SFAirDrop.NearbySharingAssertionRequest.nearbySharingInteractionID.getter();
          sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
          v163 = v204;
          v164 = dispatch thunk of CustomStringConvertible.description.getter();
          v166 = v165;
          v167 = v163;
          v168 = v194;
          v194(v153, v167);
          v169 = *(v152 + 8);
          v169(v156, v158);
          v170 = sub_10000C4E4(v164, v166, v207);

          *(v162 + 4) = v170;
          *(v162 + 12) = 2080;
          v171 = SFAirDrop.NearbySharingAssertionRequest.explanation.getter();
          v173 = v172;
          v169(v159, v158);
          v174 = v201;
          v175 = v204;
          v176 = sub_10000C4E4(v171, v173, v207);
          v151 = v181;

          *(v162 + 14) = v176;
          _os_log_impl(&_mh_execute_header, v160, v203, "SDAirDropNearFieldService: Existing matching assertion for nearby sharing interaction:%s explanation:%s", v162, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v177 = *(v152 + 8);
          v177(v159, v158);
          v177(v156, v158);
          v168 = v194;
          v174 = v201;
          v175 = v204;
        }

        SFAirDrop.NearbySharingAssertion.id.getter();
        (*(v196 + 8))(v151, v197);
        v168(v178, v175);
        (*(v205 + 56))(v174, 0, 1, v175);
      }

      v69 = v204;
      sub_100005508(v66, &qword_100976198, &qword_1007F9318);
      v70 = v69;
      v71 = v195;
    }

    else
    {
      swift_endAccess();
      v71 = _swiftEmptyArrayStorage;
      v70 = v204;
      v68 = v196;
    }

    v98 = *(v205 + 16);
    v98(v198, v47, v70);
    SFAirDrop.NearbySharingAssertionRequest.explanation.getter();
    (*(v186 + 2))(v185, v188, v187);
    v99 = v193;
    SFAirDrop.NearbySharingAssertion.init(nearbySharingInteractionID:explanation:client:)();
    v100 = v184;
    v192 = *(v68 + 16);
    v192(v184, v99, v197);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_10028E47C(0, v71[2] + 1, 1, v71);
    }

    v101 = v190;
    v103 = v71[2];
    v102 = v71[3];
    if (v103 >= v102 >> 1)
    {
      v71 = sub_10028E47C(v102 > 1, v103 + 1, 1, v71);
    }

    v71[2] = v103 + 1;
    v104 = *(v68 + 32);
    v105 = v71 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v103;
    v106 = v197;
    v104(v105, v100, v197);
    v107 = v198;
    v98(v198, v178, v204);
    v108 = v107;
    swift_beginAccess();

    v195 = v71;
    sub_1002AFDB4(v109, v107);
    swift_endAccess();
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_10000C4AC(v110, qword_100975E80);
    v111 = v193;
    v192(v101, v193, v106);
    v112 = v200;
    v113 = *(v200 + 16);
    v114 = v202;
    v115 = v203;
    v113(v191, v203, v202);
    v116 = v189;
    v113(v189, v115, v114);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v186 = v119;
      v203 = swift_slowAlloc();
      v207[0] = v203;
      *v119 = 136315650;
      LODWORD(v192) = v118;
      v120 = v190;
      SFAirDrop.NearbySharingAssertion.id.getter();
      sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
      v188 = v117;
      v121 = v204;
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v123;
      v125 = v194;
      v194(v108, v121);
      v187 = *(v196 + 8);
      v187(v120, v197);
      v126 = sub_10000C4E4(v122, v124, v207);

      v127 = v186;
      *(v186 + 1) = v126;
      *(v127 + 6) = 2080;
      v128 = v191;
      SFAirDrop.NearbySharingAssertionRequest.nearbySharingInteractionID.getter();
      v129 = dispatch thunk of CustomStringConvertible.description.getter();
      v131 = v130;
      v125(v108, v121);
      v132 = v125;
      v133 = *(v112 + 8);
      v134 = v202;
      v133(v128, v202);
      v135 = sub_10000C4E4(v129, v131, v207);

      *(v127 + 14) = v135;
      *(v127 + 11) = 2080;
      v136 = v189;
      v137 = SFAirDrop.NearbySharingAssertionRequest.explanation.getter();
      v139 = v138;
      v140 = v134;
      v106 = v197;
      v133(v136, v140);
      v141 = sub_10000C4E4(v137, v139, v207);
      v142 = v187;
      v111 = v193;

      *(v127 + 3) = v141;
      v143 = v188;
      _os_log_impl(&_mh_execute_header, v188, v192, "SDAirDropNearFieldService: Created new assertion:%s for nearby sharing interaction:%s with explanation:%s", v127, 0x20u);
      swift_arrayDestroy();

      v144 = v201;
    }

    else
    {

      v145 = *(v112 + 8);
      v145(v116, v114);
      v145(v191, v114);
      v142 = *(v196 + 8);
      v142(v190, v106);
      v144 = v201;
      v132 = v194;
    }

    v146 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem;
    v147 = v206;
    if (*(&v206->isa + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem))
    {
      v148 = *(&v206->isa + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem);

      dispatch thunk of DispatchWorkItem.cancel()();

      v149 = *(&v147->isa + v146);
    }

    *(&v147->isa + v146) = 0;

    SFAirDrop.NearbySharingAssertion.id.getter();
    v142(v111, v106);
    v150 = v204;
    v132(v178, v204);
    (*(v205 + 56))(v144, 0, 1, v150);
  }

  v197 = v49;
  sub_100005508(v37, &unk_100975F60, &unk_1007F91B0);
  v52 = v206;
  v53 = v203;
LABEL_9:
  v72 = v202;
  v74 = v199;
  v73 = v200;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_10000C4AC(v75, qword_100975E80);
  (*(v73 + 16))(v74, v53, v72);
  v76 = v52;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v77, v78))
  {
    LODWORD(v203) = v78;
    v206 = v77;
    v193 = v31;
    v79 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    v207[0] = v196;
    *v79 = 136315394;
    v192 = v50;
    v80 = v198;
    SFAirDrop.NearbySharingAssertionRequest.nearbySharingInteractionID.getter();
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v81 = v204;
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    v191 = *(v205 + 8);
    (v191)(v80, v81);
    (*(v73 + 8))(v74, v72);
    v85 = sub_10000C4E4(v82, v84, v207);

    *(v79 + 4) = v85;
    *(v79 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    v86 = v194;
    static Published.subscript.getter();

    v87 = v195;
    if (v192(v86, 1, v195))
    {
      sub_100005508(v86, &unk_100975F60, &unk_1007F91B0);
      v88 = 0x800000010078A3B0;
      v89 = 0xD000000000000027;
    }

    else
    {
      v91 = v183;
      v92 = v193;
      (*(v183 + 16))(v193, v86, v87);
      sub_100005508(v86, &unk_100975F60, &unk_1007F91B0);
      SFAirDrop.NearbySharingInteraction.id.getter();
      (*(v91 + 8))(v92, v87);
      v93 = UUID.uuidString.getter();
      v88 = v94;
      (v191)(v80, v81);
      v89 = v93;
    }

    v90 = v201;
    v95 = sub_10000C4E4(v89, v88, v207);

    *(v79 + 14) = v95;
    v96 = v206;
    _os_log_impl(&_mh_execute_header, v206, v203, "SDAirDropNearFieldService: Request to take assertion for nearby sharing interaction:%s failed because it's not matching the current active interaction:%s", v79, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v73 + 8))(v74, v72);
    v81 = v204;
    v90 = v201;
  }

  return (*(v205 + 56))(v90, 1, 1, v81);
}

uint64_t sub_1002C659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for UUID();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&unk_100975F60, &unk_1007F91B0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5[15] = v10;
  v11 = *(v10 - 8);
  v5[16] = v11;
  v12 = *(v11 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v5[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C6744, v13, 0);
}

uint64_t sub_1002C6744()
{
  v58 = v0;
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
LABEL_13:
    v45 = v0[17];
    v44 = v0[18];
    v47 = v0[13];
    v46 = v0[14];
    v48 = v0[12];

    v49 = v0[1];

    return v49();
  }

  v3 = Strong;
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[14];

    sub_100005508(v7, &unk_100975F60, &unk_1007F91B0);
    goto LABEL_13;
  }

  v8 = v0[13];
  (*(v0[16] + 32))(v0[18], v0[14], v0[15]);
  SFAirDrop.NearbySharingInteraction.id.getter();
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
  swift_beginAccess();
  v10 = *&v3[v9];
  if (!*(v10 + 16) || (v11 = sub_10000EBD4(v0[13]), (v12 & 1) == 0))
  {
    v38 = v0[18];
    v39 = v0[15];
    v40 = v0[16];
    v41 = v0[13];
    v42 = v0[10];
    v43 = v0[11];
    swift_endAccess();
    (*(v43 + 8))(v41, v42);
    (*(v40 + 8))(v38, v39);
LABEL_12:

    goto LABEL_13;
  }

  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v16 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  v17 = *(v15 + 8);

  v17(v13, v14);
  v18 = *(v16 + 16);

  if (!v18)
  {
    (*(v0[16] + 8))(v0[18], v0[15]);
    goto LABEL_12;
  }

  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v19 = v0[17];
  v20 = v0[18];
  v21 = v0[15];
  v22 = v0[16];
  v23 = type metadata accessor for Logger();
  v0[21] = sub_10000C4AC(v23, qword_100975E80);
  (*(v22 + 16))(v19, v20, v21);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[16];
  v28 = v0[17];
  v29 = v0[15];
  if (v26)
  {
    v30 = v0[12];
    v31 = v0[10];
    buf = swift_slowAlloc();
    v54 = v29;
    v56 = swift_slowAlloc();
    v57 = v56;
    *buf = 136315138;
    v55 = v25;
    SFAirDrop.NearbySharingInteraction.id.getter();
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v32 = v31;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v17(v30, v32);
    v36 = *(v27 + 8);
    v36(v28, v54);
    v37 = sub_10000C4E4(v33, v35, &v57);

    *(buf + 4) = v37;
    _os_log_impl(&_mh_execute_header, v24, v55, "SDAirDropNearFieldService relaunching AirDropUI after it crashed while nearby interaction %s was ongoing", buf, 0xCu);
    sub_10000C60C(v56);
  }

  else
  {

    v36 = *(v27 + 8);
    v36(v28, v29);
  }

  v0[22] = v36;
  v51 = swift_task_alloc();
  v0[23] = v51;
  *v51 = v0;
  v51[1] = sub_1002C6C30;
  v52 = v0[9];

  return sub_10044643C();
}

uint64_t sub_1002C6C30()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_1002C6E10;
  }

  else
  {
    v6 = sub_1002C6D5C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C6D5C()
{
  v1 = *(v0 + 128) + 8;
  (*(v0 + 176))(*(v0 + 144), *(v0 + 120));
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002C6E10()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 192);
  v7 = *(v0 + 160);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "SDAirDropNearFieldService: Failed to launch AirDropUI process: %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = *(v0 + 128) + 8;
  (*(v0 + 176))(*(v0 + 144), *(v0 + 120));
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 96);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002C6FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C7068, v7, 0);
}

uint64_t sub_1002C7068()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975E80);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "SDAirDropNearFieldService: nearFieldController did invalidate with error:%@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v9 = v0[3];

  v10 = [v9 currentPreferredPollingType];
  v11 = [v9 currentApplicationLabel];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0x800000010078A3E0;
    v13 = 0xD000000000000013;
  }

  v16 = v0[4];
  sub_1002B9FB8(0);
  sub_10002887C(v10, v13, v15, 0, 0, 0xF000000000000000);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002C7604(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 104) = a4;
  v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = *(*(sub_10028088C(&unk_100975F60, &unk_1007F91B0) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C775C, v10, 0);
}

uint64_t sub_1002C775C()
{
  v48 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v47 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0x6F74616974696E69;
    }

    else
    {
      v7 = 0x7265766965636572;
    }

    if (v4)
    {
      v8 = 0xEE00656C6F722072;
    }

    else
    {
      v8 = 0xED0000656C6F7220;
    }

    v9 = sub_10000C4E4(v7, v8, &v47);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService: did detect device nearby with %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 40);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(v13 + v14, v10, &unk_100975F60, &unk_1007F91B0);
  v15 = *(v12 + 48);
  v16 = v15(v10, 1, v11);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  if (v16 == 1)
  {
    v19 = *(v0 + 40);
    v46 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v15(v18, 1, v46) != 1)
    {
      sub_100005508(*(v0 + 88), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    (*(v21 + 32))(*(v0 + 96), *(v0 + 88), v20);
    (*(v21 + 56))(v17, 0, 1, v20);
  }

  v22 = *(v0 + 96);
  v23 = v15(v22, 1, *(v0 + 48));
  sub_100005508(v22, &unk_100975F60, &unk_1007F91B0);
  if (v23 == 1)
  {
    v24 = *(v0 + 40);
    sub_1002BA3B4();
  }

  v25 = *(v0 + 72);
  v26 = *(v0 + 48);
  sub_10000FF90(v13 + v14, v25, &unk_100975F60, &unk_1007F91B0);
  v27 = v15(v25, 1, v26);
  v29 = *(v0 + 72);
  v28 = *(v0 + 80);
  if (v27 == 1)
  {
    v31 = *(v0 + 40);
    v30 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v15(v29, 1, v30) != 1)
    {
      sub_100005508(*(v0 + 72), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    v32 = *(v0 + 48);
    v33 = *(v0 + 56);
    (*(v33 + 32))(*(v0 + 80), *(v0 + 72), v32);
    (*(v33 + 56))(v28, 0, 1, v32);
  }

  v34 = *(v0 + 80);
  v35 = *(v0 + 48);
  if (v15(v34, 1, v35) == 1)
  {
    sub_100005508(v34, &unk_100975F60, &unk_1007F91B0);
  }

  else
  {
    v37 = *(v0 + 56);
    v36 = *(v0 + 64);
    v38 = *(v0 + 104);
    (*(v37 + 32))(v36, v34, v35);
    SFAirDrop.NearbySharingInteraction.isInitiatorRoleExpected.setter();
    (*(v37 + 8))(v36, v35);
  }

  v40 = *(v0 + 88);
  v39 = *(v0 + 96);
  v42 = *(v0 + 72);
  v41 = *(v0 + 80);
  v43 = *(v0 + 64);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1002C7E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = *(*(sub_10028088C(&unk_1009762E0, &qword_1007F9450) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v9 = *(v8 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v10 = *(*(sub_10028088C(&unk_100975F60, &unk_1007F91B0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[32] = v11;
  v12 = *(v11 - 8);
  v5[33] = v12;
  v13 = *(v12 + 64) + 15;
  v5[34] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v5[35] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C8058, v14, 0);
}

uint64_t sub_1002C8058()
{
  v95 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975E80);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v8 = *(v0 + 128);
    v90 = v8;
    v9 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v8 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v6 + 8))(v5, v7);
    v14 = sub_10000C4E4(v11, v13, &v94);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = [v90 isInitiator];
    v16 = v15 == 0;
    if (v15)
    {
      v17 = 0x6F74616974696E69;
    }

    else
    {
      v17 = 0x7265766965636572;
    }

    if (v16)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = 0xE900000000000072;
    }

    v19 = sub_10000C4E4(v17, v18, &v94);

    *(v9 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "SDAirDropNearFieldService: did begin transaction:%s as %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 136);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(v21 + v22, v20, &unk_100975F60, &unk_1007F91B0);
  v23 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v20, 1, v23);
  v27 = *(v0 + 240);
  v28 = *(v0 + 248);
  v88 = v22;
  v91 = v21;
  if (v26 == 1)
  {
    v29 = *(v0 + 136);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v25(v27, 1, v23) != 1)
    {
      sub_100005508(*(v0 + 240), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    (*(v24 + 32))(v28, v27, v23);
    (*(v24 + 56))(v28, 0, 1, v23);
  }

  v30 = *(v0 + 248);
  v31 = v25(v30, 1, v23);
  sub_100005508(v30, &unk_100975F60, &unk_1007F91B0);
  if (v31 == 1)
  {
    v32 = *(v0 + 136);
    sub_1002BA3B4();
  }

  v33 = *(v0 + 136);
  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem;
  if (*(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem))
  {
    v35 = *(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem);

    dispatch thunk of DispatchWorkItem.cancel()();

    v36 = *(v33 + v34);
  }

  v37 = *(v0 + 224);
  *(v33 + v34) = 0;

  sub_10000FF90(v21 + v22, v37, &unk_100975F60, &unk_1007F91B0);
  v38 = v25(v37, 1, v23);
  v39 = *(v0 + 224);
  v40 = *(v0 + 232);
  if (v38 == 1)
  {
    v41 = *(v0 + 136);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v25(v39, 1, v23) != 1)
    {
      sub_100005508(*(v0 + 224), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    (*(v24 + 32))(*(v0 + 232), *(v0 + 224), v23);
    (*(v24 + 56))(v40, 0, 1, v23);
  }

  v42 = *(v0 + 232);
  if (v25(v42, 1, v23) == 1)
  {
    sub_100005508(v42, &unk_100975F60, &unk_1007F91B0);
LABEL_31:
    v58 = *(v0 + 272);
    v59 = *(v0 + 240);
    v60 = *(v0 + 248);
    v62 = *(v0 + 224);
    v61 = *(v0 + 232);
    v64 = *(v0 + 208);
    v63 = *(v0 + 216);
    v66 = *(v0 + 192);
    v65 = *(v0 + 200);
    v67 = *(v0 + 184);
    v87 = *(v0 + 176);
    v89 = *(v0 + 168);
    v92 = *(v0 + 144);

    v68 = *(v0 + 8);

    return v68();
  }

  v43 = *(v0 + 176);
  v44 = *(v0 + 152);
  v45 = *(v0 + 160);
  SFAirDrop.NearbySharingInteraction.state.getter();
  (*(v24 + 8))(v42, v23);
  v46 = (*(v45 + 88))(v43, v44);
  v47 = enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:);
  (*(v45 + 8))(v43, v44);
  if (v46 != v47)
  {
    goto LABEL_31;
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "SDAirDropNearFieldService: connecting…", v50, 2u);
  }

  v51 = *(v0 + 208);

  v53 = v88;
  v52 = v91;
  sub_10000FF90(v91 + v88, v51, &unk_100975F60, &unk_1007F91B0);
  v54 = v25(v51, 1, v23);
  v55 = *(v0 + 208);
  v56 = *(v0 + 216);
  if (v54 == 1)
  {
    v57 = *(v0 + 136);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
    v53 = v88;

    v52 = v91;

    if (v25(v55, 1, v23) != 1)
    {
      sub_100005508(*(v0 + 208), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    (*(v24 + 32))(*(v0 + 216), *(v0 + 208), v23);
    (*(v24 + 56))(v56, 0, 1, v23);
  }

  v70 = *(v0 + 216);
  if (!v25(v70, 1, v23))
  {
    (*(*(v0 + 160) + 104))(*(v0 + 168), enum case for SFAirDrop.NearbySharingInteraction.State.connecting(_:), *(v0 + 152));
    SFAirDrop.NearbySharingInteraction.state.setter();
    v70 = *(v0 + 216);
  }

  if (!v25(v70, 1, v23))
  {
    v71 = *(v0 + 144);
    static ContinuousClock.Instant.now.getter();
    v72 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
    SFAirDrop.NearbySharingInteraction.connectionTime.setter();
    v70 = *(v0 + 216);
  }

  if (!v25(v70, 1, v23))
  {
    [*(v0 + 128) isInitiator];
    SFAirDrop.NearbySharingInteraction.isInitiator.setter();
  }

  v73 = *(v0 + 200);
  sub_10000FF90(v52 + v53, v73, &unk_100975F60, &unk_1007F91B0);
  v74 = v25(v73, 1, v23);
  sub_100005508(v73, &unk_100975F60, &unk_1007F91B0);
  v75 = *(v0 + 216);
  if (v74 == 1)
  {
    v77 = *(v0 + 184);
    v76 = *(v0 + 192);
    v78 = *(v0 + 136);
    sub_10000FF90(*(v0 + 216), v76, &unk_100975F60, &unk_1007F91B0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000FF90(v76, v77, &unk_100975F60, &unk_1007F91B0);
    v79 = v78;
    static Published.subscript.setter();
    sub_100005508(v76, &unk_100975F60, &unk_1007F91B0);
  }

  else
  {
    swift_beginAccess();
    sub_1002D7894(v75, v52 + v53);
    swift_endAccess();
  }

  v80 = *(v0 + 136);
  v81 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  swift_beginAccess();
  sub_1002A9938(v80 + v81, v0 + 16);
  v82 = *(v0 + 40);
  v83 = *(v0 + 48);
  sub_10002CDC0((v0 + 16), v82);
  v84 = *(v83 + 40);
  v93 = (v84 + *v84);
  v85 = v84[1];
  v86 = swift_task_alloc();
  *(v0 + 288) = v86;
  *v86 = v0;
  v86[1] = sub_1002C8C10;

  return v93(v82, v83);
}

uint64_t sub_1002C8C10()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_1002C8E64;
  }

  else
  {
    v6 = sub_1002C8D3C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C8D3C()
{
  sub_10000C60C(v0 + 2);
  sub_100005508(v0[27], &unk_100975F60, &unk_1007F91B0);
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v13 = v0[22];
  v14 = v0[21];
  v15 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002C8E64()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v9 = v0[25];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[18];
  sub_10000C60C(v0 + 2);
  sub_100005508(v6, &unk_100975F60, &unk_1007F91B0);

  v10 = v0[1];
  v11 = v0[37];

  return v10();
}

uint64_t sub_1002C901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(type metadata accessor for SDNearFieldTap() - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[7] = v9;
  v10 = *(v9 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v6[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v6[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C9180, v12, 0);
}

uint64_t sub_1002C9180()
{
  v55 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100975E80);
  swift_unknownObjectRetain();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    *v12 = 136315394;
    v13 = [v11 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v14 = v9;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v8 + 8))(v7, v14);
    v18 = sub_10000C4E4(v15, v17, &v54);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v10;
    *v52 = v10;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "SDAirDropNearFieldService: did receive tap event for transaction: %s : %@", v12, 0x16u);
    sub_100005508(v52, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v53);
  }

  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v20 = static NSUserDefaults.airdrop.getter();
  v21 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if ((v21 & 1) == 0)
  {
    goto LABEL_8;
  }

  v22 = objc_allocWithZone(NSUserDefaults);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 initWithSuiteName:v23];

  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 BOOLForKey:v25];

    if (v26)
    {
LABEL_8:
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "SDAirDropNearFieldService: Boop To Action is disabled on setSwiftTapEventHandler", v29, 2u);
      }

      goto LABEL_11;
    }
  }

  v35 = [*(v0 + 24) deviceModel];
  if (v35)
  {
    v36 = v35;
    v37 = [v36 hasPrefix:@"Watch"];

    if (v37)
    {
      if ([*(v0 + 24) isSameAccount])
      {
        v38 = *(v0 + 48);
        v39 = *(v0 + 32);
        (*(*(v0 + 64) + 56))(v38, 1, 1, *(v0 + 56));
        sub_1002B4888(v38);
        sub_100005508(v38, &unk_100976120, &qword_1007F9260);
LABEL_11:
        v30 = *(v0 + 72);
        v31 = *(v0 + 40);
        v32 = *(v0 + 48);

        v33 = *(v0 + 8);

        return v33();
      }
    }
  }

  v40 = *(v0 + 72);
  v41 = *(v0 + 40);
  v42 = *(v0 + 16);
  v43 = *(v0 + 24);
  v44 = [v42 isInitiator];
  v45 = v43;
  v46 = [v42 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1004E75A8(v45, v44 ^ 1, v40, v41);
  v47 = [v42 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = swift_task_alloc();
  *(v0 + 88) = v48;
  *v48 = v0;
  v48[1] = sub_1002C9718;
  v49 = *(v0 + 72);
  v51 = *(v0 + 32);
  v50 = *(v0 + 40);

  return sub_1002BCAE4(v50, v49);
}

uint64_t sub_1002C9718()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1002C9884, v2, 0);
}

uint64_t sub_1002C9884()
{
  sub_1002D6414(v0[5], type metadata accessor for SDNearFieldTap);
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C9AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
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
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C9C40, v12, 0);
}

uint64_t sub_1002C9C40()
{
  v23 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975E80);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = [v8 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v6 + 8))(v5, v7);
    v15 = sub_10000C4E4(v12, v14, &v22);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "SDAirDropNearFieldService: did interrupt transaction:%s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  v16 = v0[9];
  v18 = v0[5];
  v17 = v0[6];
  v19 = v0[4];
  (*(v18 + 104))(v17, enum case for SFAirDrop.NearbySharingInteraction.FailureType.pullAway(_:), v19);
  sub_1002BEF14(v17);
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002CA07C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  sub_10000FF90(a1, &v19 - v11, &unk_100975F60, &unk_1007F91B0);
  result = (*(v5 + 48))(v12, 1, v4);
  if (result == 1)
  {
    v14 = _swiftEmptyArrayStorage;
  }

  else
  {
    v16 = *(v5 + 32);
    v15 = v5 + 32;
    v16(v8, v12, v4);
    sub_10028088C(&qword_100976238, &qword_1008075E0);
    v17 = *(v15 + 40);
    v18 = (*(v15 + 48) + 32) & ~*(v15 + 48);
    v14 = swift_allocObject();
    *(v14 + 1) = xmmword_1007F5670;
    result = (v16)(v14 + v18, v8, v4);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_1002CA248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  *(v4 + 128) = static AirDropActor.shared;

  return _swift_task_switch(sub_1002CA2E8, v5, 0);
}

uint64_t sub_1002CA2E8()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  v0[17] = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  sub_10002CDC0(v0 + 2, v3);
  v5 = *(v4 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1002CA43C;

  return v9(v3, v4);
}

uint64_t sub_1002CA43C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_1002D8B6C;
  }

  else
  {
    v6 = sub_1002D8B70;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002CA568(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v12 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v4 + 32))(v13 + v12, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1007F9488;
  *(v14 + 24) = v13;
  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v9, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_1002CA7B8(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for SFPlatform();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v15 = *(*(sub_10028088C(&unk_100975F60, &unk_1007F91B0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2[25] = v16;
  v17 = *(v16 - 8);
  v2[26] = v17;
  v18 = *(v17 + 64) + 15;
  v2[27] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002CAA70, v19, 0);
}

uint64_t sub_1002CAA70()
{
  v68 = v0;
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[25];
    v5 = v0[26];
    v6 = v0[23];
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
    swift_beginAccess();
    sub_10000FF90(v3 + v7, v6, &unk_100975F60, &unk_1007F91B0);
    v8 = *(v5 + 48);
    if (v8(v6, 1, v4) == 1)
    {
      v10 = v0[24];
      v9 = v0[25];
      v11 = v0[23];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v8(v11, 1, v9) != 1)
      {
        sub_100005508(v0[23], &unk_100975F60, &unk_1007F91B0);
      }
    }

    else
    {
      v12 = v0[25];
      v13 = v0[26];
      v14 = v0[24];
      (*(v13 + 32))(v14, v0[23], v12);
      (*(v13 + 56))(v14, 0, 1, v12);
    }

    v15 = v0[24];
    v16 = v0[25];
    if (v8(v15, 1, v16) == 1)
    {

      sub_100005508(v15, &unk_100975F60, &unk_1007F91B0);
    }

    else
    {
      v17 = v0[22];
      v18 = v0[19];
      v19 = v0[20];
      v20 = v0[9];
      (*(v0[26] + 32))(v0[27], v15, v16);
      SFAirDrop.NearbySharingInteraction.id.getter();
      v21 = static UUID.== infix(_:_:)();
      v22 = *(v19 + 8);
      v22(v17, v18);
      if (v21)
      {
        v24 = v0[17];
        v23 = v0[18];
        v25 = v0[16];
        v26 = v0[27];
        SFAirDrop.NearbySharingInteraction.state.getter();
        if ((*(v24 + 88))(v23, v25) == enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:))
        {
          (*(v0[17] + 8))(v0[18], v0[16]);
          if (qword_100973548 != -1)
          {
            swift_once();
          }

          v28 = v0[20];
          v27 = v0[21];
          v29 = v0[19];
          v30 = v0[9];
          v31 = type metadata accessor for Logger();
          sub_10000C4AC(v31, qword_100975E80);
          (*(v28 + 16))(v27, v30, v29);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();
          v34 = os_log_type_enabled(v32, v33);
          v35 = v0[21];
          v36 = v0[19];
          if (v34)
          {
            v63 = v0[15];
            v64 = v0[14];
            v65 = v0[13];
            v37 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v67 = v66;
            *v37 = 136315394;
            sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
            v62 = v33;
            v38 = dispatch thunk of CustomStringConvertible.description.getter();
            v40 = v39;
            v22(v35, v36);
            v41 = sub_10000C4E4(v38, v40, &v67);

            *(v37 + 4) = v41;
            *(v37 + 12) = 2048;
            static SFPlatform.watchOS.getter();
            LOBYTE(v41) = static SFPlatform.isPlatform(_:)();
            (*(v64 + 8))(v63, v65);
            v42 = 1.5;
            if (v41)
            {
              v42 = 2.5;
            }

            *(v37 + 14) = v42;
            _os_log_impl(&_mh_execute_header, v32, v62, "SDAirDropNearFieldService: did fire timer to cancel nearby sharing interaction:%s after ~%fs if stuck in presence detected state.", v37, 0x16u);
            sub_10000C60C(v66);
          }

          else
          {

            v22(v35, v36);
          }

          v47 = v0[26];
          v46 = v0[27];
          v48 = v0[25];
          v50 = v0[11];
          v49 = v0[12];
          v51 = v0[10];
          (*(v50 + 104))(v49, enum case for SFAirDrop.NearbySharingInteraction.FailureType.pullAway(_:), v51);
          sub_1002BEF14(v49);

          (*(v50 + 8))(v49, v51);
          (*(v47 + 8))(v46, v48);
        }

        else
        {
          v44 = v0[17];
          v43 = v0[18];
          v45 = v0[16];
          (*(v0[26] + 8))(v0[27], v0[25]);

          (*(v44 + 8))(v43, v45);
        }
      }

      else
      {
        (*(v0[26] + 8))(v0[27], v0[25]);
      }
    }
  }

  v52 = v0[27];
  v53 = v0[23];
  v54 = v0[24];
  v56 = v0[21];
  v55 = v0[22];
  v57 = v0[18];
  v58 = v0[15];
  v59 = v0[12];

  v60 = v0[1];

  return v60();
}

uint64_t sub_1002CB084(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  v6 = __chkstk_darwin(v4);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v44 - v8;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100975E80);
  v47 = *(v12 + 16);
  v47(v18, a1, v11);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = v16;
    v23 = v22;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v23 = 136315138;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = a1;
    v25 = v2;
    v27 = v26;
    (*(v12 + 8))(v18, v11);
    v28 = sub_10000C4E4(v24, v27, aBlock);
    v2 = v25;
    a1 = v46;

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "SDAirDropNearFieldService: start assertion timeout for nearby sharing interaction:%s", v23, 0xCu);
    sub_10000C60C(v44);

    v16 = v45;
  }

  else
  {

    (*(v12 + 8))(v18, v11);
  }

  v47(v16, a1, v11);
  v29 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v2;
  (*(v12 + 32))(v30 + v29, v16, v11);
  aBlock[4] = sub_1002D79D0;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008D9FA0;
  _Block_copy(aBlock);
  v55 = _swiftEmptyArrayStorage;
  sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  v31 = v2;
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v32 = type metadata accessor for DispatchWorkItem();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = DispatchWorkItem.init(flags:block:)();

  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v36 = static OS_dispatch_queue.main.getter();
  v37 = v51;
  static DispatchTime.now()();
  v38 = v52;
  + infix(_:_:)();
  v39 = *(v53 + 8);
  v40 = v37;
  v41 = v54;
  v39(v40, v54);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v39(v38, v41);
  v42 = *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem];
  *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem] = v35;
}

uint64_t sub_1002CB674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  *(v4 + 128) = static AirDropActor.shared;

  return _swift_task_switch(sub_1002CB714, v5, 0);
}

uint64_t sub_1002CB714()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  v0[17] = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  sub_10002CDC0(v0 + 2, v3);
  v5 = *(v4 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1002CB868;

  return v9(v3, v4);
}

uint64_t sub_1002CB868()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_1002CBA64;
  }

  else
  {
    v6 = sub_1002CB994;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002CB994()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_10000C60C(v0 + 2);
  sub_1002A9938(v2 + v1, (v0 + 7));
  v3 = v0[10];
  v4 = v0[11];
  sub_10002CDC0(v0 + 7, v3);
  (*(v4 + 64))(0xD000000000000023, 0x800000010078A5B0, v3, v4);
  sub_10000C60C(v0 + 7);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002CBA64()
{
  sub_10000C60C(v0 + 2);
  v1 = v0[1];
  v2 = v0[19];

  return v1();
}

uint64_t sub_1002CBAC8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v5 + 32))(v13 + v12, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1007F9470;
  *(v14 + 24) = v13;
  v15 = a1;
  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v10, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_1002CBCF8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v7 = *(*(sub_10028088C(&unk_100975F60, &unk_1007F91B0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002CBEC8, v11, 0);
}

uint64_t sub_1002CBEC8()
{
  v49 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[12], &unk_100975F60, &unk_1007F91B0);
    goto LABEL_15;
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  SFAirDrop.NearbySharingInteraction.id.getter();
  v9 = static UUID.== infix(_:_:)();
  v10 = *(v7 + 8);
  v10(v5, v6);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = v0[5];
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
  swift_beginAccess();
  v13 = *(v11 + v12);
  if (*(v13 + 16) && (v14 = sub_10000EBD4(v0[6]), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    if (*(v16 + 16))
    {
LABEL_7:
      (*(v0[14] + 8))(v0[15], v0[13]);
      goto LABEL_15;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v18 = v0[9];
  v17 = v0[10];
  v19 = v0[8];
  v20 = v0[6];
  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_100975E80);
  v47 = *(v18 + 16);
  v47(v17, v20, v19);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[10];
  v26 = v0[8];
  if (v24)
  {
    v27 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v27 = 136315138;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v10(v25, v26);
    v31 = sub_10000C4E4(v28, v30, &v48);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "SDAirDropNearFieldService: did fire timer to cancel nearby sharing interaction:%s after 5 seconds if no clients took an assertion for it.", v27, 0xCu);
    sub_10000C60C(v46);
  }

  else
  {

    v10(v25, v26);
  }

  v33 = v0[14];
  v32 = v0[15];
  v34 = v0[13];
  v35 = v0[8];
  v36 = v0[9];
  v37 = v0[7];
  v38 = v0[5];
  v47(v37, v0[6], v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  sub_1002B4888(v37);
  sub_100005508(v37, &unk_100976120, &qword_1007F9260);
  (*(v33 + 8))(v32, v34);
LABEL_15:
  v39 = v0[15];
  v40 = v0[11];
  v41 = v0[12];
  v42 = v0[10];
  v43 = v0[7];

  v44 = v0[1];

  return v44();
}

uint64_t sub_1002CC324()
{
  v0 = SFAirDrop.NearbySharingAssertion.explanation.getter();
  v2 = v1;
  if (v0 == SFAirDrop.NearbySharingAssertionRequest.explanation.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_1002CC3C0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

void sub_1002CC5FC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000276B4(0, &qword_100975088, CNContact_ptr);
    sub_1002D7FB0();
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          sub_1000276B4(0, &qword_100975088, CNContact_ptr);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_100027D64();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002CC8D4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a1;
  v30 = a4;
  v31 = a5;
  v27 = a7;
  v26 = a3(0);
  v32 = *(v26 - 8);
  v9 = *(v32 + 64);
  v10 = __chkstk_darwin(v26);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      sub_1002D7388(*(a2 + 48) + *(v32 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v14, v30);
      sub_10000CA10(v14, v12, v31);
      v22 = v29(v12);
      if (v7)
      {
        sub_1002D6414(v12, v28);
      }

      if (v22)
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_1002D6414(v12, v28);
      v20 = v21;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v25 = v27;
    sub_10000CA10(v12, v27, v31);
    v24 = v25;
    v23 = 0;
    return (*(v32 + 56))(v24, v23, 1, v26);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v23 = 1;
        v24 = v27;
        return (*(v32 + 56))(v24, v23, 1, v26);
      }

      v17 = *(a2 + 56 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1002CCB1C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1002CCC30@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = result;
    v9 = a2 + 32;
    while (1)
    {
      sub_1002A9938(v9, v11);
      v10 = v8(v11);
      if (v4)
      {
        return sub_10000C60C(v11);
      }

      if (v10)
      {
        return a3(v11, a4);
      }

      result = sub_10000C60C(v11);
      v9 += 40;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1002CCCF8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDrop.NearbySharingAssertion.id.getter();
  v5 = static UUID.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1002CCDE4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = a3 + 32;
  while (1)
  {
    v11 = *(v6 + 16 * v5);
    v10 = *(&v11 + 1);
    swift_unknownObjectRetain();
    v7 = v10;
    v8 = v12(&v11);

    swift_unknownObjectRelease();
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1002CCEC0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1002CCF70(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1002CD060(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D6474(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1002CD0EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D6488(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1002CD1F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D650C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_1000121F8(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

size_t sub_1002CD290@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D6534(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for SDAirDropService.TransferPresenterClient() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10000CA10(v11, a2, type metadata accessor for SDAirDropService.TransferPresenterClient);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1002CD3C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1002D6548(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1002CD454()
{
  _StringGuts.grow(_:)(56);
  v1._object = 0x800000010078A620;
  v1._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v1);
  v2 = (v0 + *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) + 20));
  v3 = *v2;
  v4 = v2[1];
  v5._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6E657473696C202CLL;
  v6._object = 0xEF3A444955557265;
  String.append(_:)(v6);
  type metadata accessor for UUID();
  sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

id sub_1002CD610(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = a1;
  a4();

  v14 = a5();
  (*(v9 + 8))(v12, v8);

  return v14;
}

id HeadphoneProxFeatureClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CD87C()
{
  result = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction();
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

void sub_1002CD934()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002CD9EC(319, &qword_1009760E0, &unk_1009760E8, qword_1007F9200, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002CD9EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100280938(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1002CDA50()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1002CDC0C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1002CDC0C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1002CDC78(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1002CDCF4(uint64_t a1, void **a2)
{
  v4 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_10000FF90(a1, &v14 - v9, &unk_100975F60, &unk_1007F91B0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000FF90(v10, v8, &unk_100975F60, &unk_1007F91B0);
  v12 = v11;
  static Published.subscript.setter();
  return sub_100005508(v10, &unk_100975F60, &unk_1007F91B0);
}

void sub_1002CDE40()
{
  v1 = *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1002BCA54(v2, v3, v4);
}

uint64_t sub_1002CDEAC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100289000;

  return sub_1002BC728(v0);
}

uint64_t sub_1002CDF3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1002BC854(a1, v5);
}

void *sub_1002CDFF4()
{
  v1 = v0;
  sub_10028088C(&unk_100975640, &unk_1007F64E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000C5B0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000106E0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1002CE198()
{
  v1 = v0;
  sub_10028088C(&unk_1009744B0, &unk_1007F9630);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100010684(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000C5B0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000106E0(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002CE38C()
{
  v1 = v0;
  sub_10028088C(&qword_100976188, &unk_10080AFA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_1002D63B0(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1002D6398(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_1002CE548()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976190, &qword_1007F9310);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1002CE818()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_1009746D0, &qword_1007F65B0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1002D7388(*(v5 + 56) + v27, v31, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10000CA10(v26, *(v28 + 56) + v27, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_1002CEAFC()
{
  v1 = v0;
  sub_10028088C(&qword_100974970, &unk_1007F9750);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002CEC98()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_1009763E8, &qword_1007F95D8);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1002D7388(*(v5 + 56) + v27, v31, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10000CA10(v26, *(v28 + 56) + v27, type metadata accessor for SDAirDropDiscoveredEndpoint);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1002CEEF0()
{
  v1 = v0;
  sub_10028088C(&qword_1009762D0, &unk_1007F9440);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1002CF068()
{
  v1 = v0;
  v43 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - v3;
  v41 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976478, &qword_1007F9748);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_1002CF3C4()
{
  v1 = v0;
  v2 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_1009762B0, &qword_1007F9420);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1002D7388(*(v7 + 56) + v28, v37, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_10000CA10(v27, *(v29 + 56) + v28, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1002CF6F0()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976388, &qword_1007F9578);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_1002A9938(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_1000121F8(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1002CF98C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32 = v5;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v23 *= 16;
        v28 = v37;
        v29 = *(v37 + 48);
        v30 = *(v24 + 32);
        v39 = *(*(v8 + 56) + v23);
        v30(v29 + v25, v26, v27);
        *(*(v28 + 56) + v23) = v39;
        result = swift_unknownObjectRetain();
        v18 = v40;
      }

      while (v40);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v32;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_1002CFC84(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v50 = a1(0);
  v53 = *(v50 - 8);
  v9 = *(v53 + 64);
  __chkstk_darwin(v50);
  v49 = &v39 - v10;
  v48 = a2(0);
  v52 = *(v48 - 8);
  v11 = *(v52 + 64);
  __chkstk_darwin(v48);
  v47 = &v39 - v12;
  sub_10028088C(a3, a4);
  v13 = *v4;
  v14 = static _DictionaryStorage.copy(original:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v39 = v8;
    v40 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v51 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = v52 + 16;
    v45 = v24;
    v42 = v52 + 32;
    v43 = v53 + 16;
    v41 = v53 + 32;
    v46 = v13;
    v26 = v47;
    v25 = v48;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v54 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v19 << 6);
        v31 = v52;
        v32 = *(v52 + 72) * v30;
        (*(v52 + 16))(v26, *(v13 + 48) + v32, v25);
        v33 = v53;
        v34 = *(v53 + 72) * v30;
        v35 = v49;
        v36 = v50;
        (*(v53 + 16))(v49, *(v13 + 56) + v34, v50);
        v37 = v51;
        (*(v31 + 32))(*(v51 + 48) + v32, v26, v25);
        v38 = *(v37 + 56);
        v13 = v46;
        result = (*(v33 + 32))(v38 + v34, v35, v36);
        v24 = v45;
        v23 = v54;
      }

      while (v54);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v39;
        v15 = v51;
        goto LABEL_18;
      }

      v29 = *(v40 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v54 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v15;
  }

  return result;
}

void *sub_1002D001C()
{
  sub_10028088C(&qword_100976398, &qword_1007F9588);
  v29 = v0;
  v1 = *v0;
  v30 = static _DictionaryStorage.copy(original:)();
  v31 = v1;
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v30 + 16) = *(v31 + 16);
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v31 + 48) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
        v15 *= 48;
        v20 = (*(v31 + 56) + v15);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = v20[5];
        v27 = (*(v30 + 48) + v16);
        *v27 = v19;
        v27[1] = v18;
        v28 = (*(v30 + 56) + v15);
        *v28 = v21;
        v28[1] = v22;
        v28[2] = v23;
        v28[3] = v24;
        v28[4] = v25;
        v28[5] = v26;

        result = sub_1002D80D0(v21, v22);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

void *sub_1002D01E8()
{
  v1 = v0;
  sub_10028088C(&qword_1009745E0, &qword_1007F6540);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002D0350()
{
  v1 = v0;
  v2 = type metadata accessor for RegistrationState(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976310, &unk_10080AFF0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1002D7388(*(v5 + 56) + v27, v31, type metadata accessor for RegistrationState);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10000CA10(v26, *(v28 + 56) + v27, type metadata accessor for RegistrationState);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1002D05A8()
{
  v1 = v0;
  sub_10028088C(&qword_1009763B0, &qword_1007F95A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1002D0718()
{
  v1 = v0;
  v2 = type metadata accessor for SDAuthenticationSessionMetadata(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976300, &unk_10080AFE0);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1002D7388(*(v7 + 56) + v28, v37, type metadata accessor for SDAuthenticationSessionMetadata);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_10000CA10(v27, *(v29 + 56) + v28, type metadata accessor for SDAuthenticationSessionMetadata);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1002D0A80(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v41 = a1(0);
  v43 = *(v41 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v41);
  v40 = &v35 - v8;
  sub_10028088C(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v36, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v42 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v9;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v43;
        v26 = *(v43 + 72) * v24;
        v27 = v40;
        v28 = v41;
        (*(v43 + 16))(v40, *(v9 + 48) + v26, v41);
        v29 = 16 * v24;
        v30 = (*(v9 + 56) + 16 * v24);
        v31 = *v30;
        v32 = v30[1];
        v33 = v42;
        (*(v25 + 32))(*(v42 + 48) + v26, v27, v28);
        v34 = (*(v33 + 56) + v29);
        *v34 = v31;
        v34[1] = v32;
        v9 = v39;

        v19 = v44;
      }

      while (v44);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v42;
        goto LABEL_21;
      }

      v23 = *(v36 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *sub_1002D0D10()
{
  v1 = v0;
  v32 = type metadata accessor for URL();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&unk_100976450, &unk_1007F9720);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1002D0FD0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1002D1130()
{
  v1 = v0;
  v36 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - v3;
  sub_10028088C(&qword_1009763C8, &qword_1007F95B8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1002D13CC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1002D153C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1002D16BC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v44);
  v43 = &v38 - v8;
  sub_10028088C(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_1002D196C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1002D1ACC()
{
  v1 = v0;
  sub_10028088C(&qword_100976440, &qword_1007F9710);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_100294008(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002D1C3C()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&unk_100976360, &unk_10080B040);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1002D1ED0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10028088C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        LOBYTE(v20) = *(*(v4 + 56) + v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1002D2028()
{
  v1 = v0;
  sub_10028088C(&qword_100976318, &unk_1007F94F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002D2190()
{
  v1 = v0;
  sub_10028088C(&qword_1009762F8, &unk_1007F94D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1002D2338(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v37);
  v36 = &v31 - v8;
  sub_10028088C(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v21 = v11;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v25 = v22 | (v15 << 6);
        v26 = v39;
        v27 = *(v39 + 72) * v25;
        v29 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v27, v37);
        v30 = *(*(v9 + 56) + 8 * v25);
        (*(v26 + 32))(*(v21 + 48) + v27, v29, v28);
        *(*(v21 + 56) + 8 * v25) = v30;
        result = v30;
        v19 = v40;
      }

      while (v40);
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v24 = *(v33 + v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v40 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_1002D25B0()
{
  v1 = v0;
  sub_10028088C(&qword_100976338, &qword_1007F9510);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1002D270C()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_1009745C8, &qword_1007F6528);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_unknownObjectRetain();
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

double sub_1002D298C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100012854(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CDFF4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1000106E0((*(v12 + 56) + 32 * v9), a3);
    sub_1002D3DAC(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1002D2A30@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100570754(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CE198();
      v11 = v13;
    }

    sub_100285E74(*(v11 + 48) + 40 * v8);
    sub_1000106E0((*(v11 + 56) + 32 * v8), a2);
    sub_1002D3F5C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1002D2AD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100012854(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CE38C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1002D6398((*(v12 + 56) + 48 * v9), a3);
    sub_1002D4104(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1002D2B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100012854(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D16BC(&type metadata accessor for SFClientIdentity, &unk_1009761C0, &unk_10080AFB0);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for SFClientIdentity();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1002D56F0(v9, v12, &type metadata accessor for SFClientIdentity);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for SFClientIdentity();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1002D2D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100570848(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CFC84(&type metadata accessor for NWEndpoint, &type metadata accessor for SFAirDrop.TransferIdentifier, &unk_100976290, &unk_10080AFC0);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for NWEndpoint();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1002D4AF8(v8, v11, &type metadata accessor for NWEndpoint);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for NWEndpoint();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1002D2F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100570848(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CFC84(&type metadata accessor for SFAirDropReceive.Transfer, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_1009762A0, &qword_1007F65E0);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for SFAirDropReceive.Transfer();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1002D4AF8(v8, v11, &type metadata accessor for SFAirDropReceive.Transfer);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for SFAirDropReceive.Transfer();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1002D3100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100570848(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CF068();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_10028088C(&qword_100976470, &qword_1007F9740);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1002D47A8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_10028088C(&qword_100976470, &qword_1007F9740);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1002D32B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100570848(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CF3C4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
    v22 = *(v15 - 8);
    sub_10000CA10(v14 + *(v22 + 72) * v8, a2, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
    sub_1002D4AF8(v8, v11, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1002D3468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100570848(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002CFC84(&type metadata accessor for SFAirDropSend.Transfer, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_100974718, &unk_1007F65F0);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for SFAirDropSend.Transfer();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1002D4AF8(v8, v11, &type metadata accessor for SFAirDropSend.Transfer);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for SFAirDropSend.Transfer();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1002D3654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100012854(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D16BC(&type metadata accessor for Date, &unk_1009763A0, &unk_1007F9590);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1002D56F0(v9, v12, &type metadata accessor for Date);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1002D3850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_100012854(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    sub_10000CA10(v22 + *(v30 + 72) * v17, a7, a4);
    sub_1002D56F0(v17, v20, a5);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t sub_1002D39D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100012854(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D1130();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1002D54EC(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1002D3B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100012854(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D16BC(&type metadata accessor for NWBrowser.Result, &qword_1009763D8, &unk_10080B080);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for NWBrowser.Result();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1002D56F0(v9, v12, &type metadata accessor for NWBrowser.Result);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for NWBrowser.Result();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1002D3D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100012854(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002D196C(&unk_100976340, qword_1007F9518);
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1002D533C(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1002D3DAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D3F5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_100010684(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_100285E74(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D4104(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D42C0(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_100005358(&qword_100976170, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1002D45F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D47A8(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_100005358(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_10028088C(&qword_100976470, &qword_1007F9740) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D4AF8(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_100005358(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D4ED8(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = _HashTable.previousHole(before:)();
    v19 = v17;
    v42 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v46 = *(v20 + 56);
    v40 = (v20 - 8);
    v41 = v21;
    do
    {
      v22 = v46 * v16;
      v23 = v19;
      v24 = v20;
      v41(v13, *(a2 + 48) + v46 * v16, v8);
      v25 = *(a2 + 40);
      sub_100005358(v43, v44);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v13, v8);
      v19 = v23;
      v27 = v26 & v23;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v30 = *(a2 + 48);
          result = v30 + v46 * a1;
          v31 = v30 + v22 + v46;
          v32 = v46 * a1 < v22 || result >= v31;
          v20 = v24;
          if (!v32)
          {
            if (v46 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v33 = *(a2 + 56);
            v34 = (v33 + 16 * a1);
            v35 = (v33 + 16 * v16);
            if (a1 != v16 || v34 >= v35 + 1)
            {
              *v34 = *v35;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D518C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + v3);
        v20 = (v18 + v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D533C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D54EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_10028088C(&qword_1009763C0, &qword_1007F95B0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D56F0(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1002D58E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      sub_100294008(v11, v12);
      Data.hash(into:)();
      v13 = Hasher._finalize()();
      result = sub_100026AC0(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D5A9C(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_100005358(&qword_100976170, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

Swift::Int sub_1002D5DBC(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1002D5F50(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = _HashTable.previousHole(before:)();
    v19 = v17;
    v42 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v46 = *(v20 + 56);
    v40 = (v20 - 8);
    v41 = v21;
    do
    {
      v22 = v46 * v16;
      v23 = v19;
      v24 = v20;
      v41(v13, *(a2 + 48) + v46 * v16, v8);
      v25 = *(a2 + 40);
      sub_100005358(v43, v44);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v13, v8);
      v19 = v23;
      v27 = v26 & v23;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v30 = *(a2 + 48);
          result = v30 + v46 * a1;
          v31 = v30 + v22 + v46;
          v32 = v46 * a1 < v22 || result >= v31;
          v20 = v24;
          if (!v32)
          {
            if (v46 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v33 = *(a2 + 56);
            v34 = (v33 + 8 * a1);
            v35 = (v33 + 8 * v16);
            if (a1 != v16 || v34 >= v35 + 1)
            {
              *v34 = *v35;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1002D6204(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1002D6398(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1002D63B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1002D6414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D6548(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1002D65C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1002D66B4;

  return v6(v2 + 32);
}

uint64_t sub_1002D66B4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

id sub_1002D67C8(void *a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  v49 = a1;
  v50 = a3;
  v48 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SFAirDropClient.Identifier();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100976210, &qword_1007F9368);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v45 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v12 = *(*(v45 - 8) + 64);
  v13 = __chkstk_darwin(v45);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_defaultPollingType] = 0;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController] = 0;
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
  v19 = type metadata accessor for SDNearFieldTap();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
  v21 = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService__nearbySharingInteraction;
  v23 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v24 = *(*(v23 - 8) + 56);
  v24(v17, 1, 1, v23);
  sub_10000FF90(v17, v15, &unk_100975F60, &unk_1007F91B0);
  Published.init(initialValue:)();
  sub_100005508(v17, &unk_100975F60, &unk_1007F91B0);
  (*(v46 + 32))(&v4[v22], v11, v47);
  v24(&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction], 1, 1, v23);
  v25 = v48;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAssertionTimeoutWorkItem] = 0;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem] = 0;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem] = 0;
  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_activeAirDropTransactionID;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 56))(&v4[v26], 1, 1, v27);
  v29 = v49;
  v28 = v50;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue] = v49;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus] = v28;
  sub_1002A9938(v25, &v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager]);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = v28;
  v33 = [v30 defaultCenter];
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_notificationCenter] = v33;
  type metadata accessor for SFAirDropClient();
  (*(v52 + 104))(v51, enum case for SFAirDropClient.Identifier.boop(_:), v53);
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropClient] = SFAirDropClient.__allocating_init(identifier:)();
  if ([objc_opt_self() isAvailable])
  {
    sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
    v34 = static NSUserDefaults.airdrop.getter();
    v35 = SFAirDropUserDefaults.nearFieldControllerEnabled.getter();
  }

  else
  {
    v35 = 0;
  }

  v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldControllerIsAvailable] = v35 & 1;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID] = &_swiftEmptyDictionarySingleton;
  type metadata accessor for SDAirDropAWDLSingleBandManager();
  v36 = swift_allocObject();
  *(v36 + 16) = &_swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_singleBandManager] = v36;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryLabelForConnectionID] = &_swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryClientForLabel] = &_swiftEmptyDictionarySingleton;
  v55.receiver = v4;
  v55.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v55, "init");
  v38 = v37 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
  swift_beginAccess();
  v39 = *(v38 + 24);
  v40 = *(v38 + 32);
  sub_10002F5B4(v38, v39);
  v41 = *(v40 + 16);
  v42 = v37;
  v41(v37, &off_1008D9BA0, v39, v40);
  swift_endAccess();
  sub_1002B4220();

  sub_10000C60C(v25);
  return v42;
}

BOOL sub_1002D6D98(uint64_t a1)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if (v6)
    {
      return 1;
    }
  }

  v7 = type metadata accessor for SDNearFieldTap();
  if (*(a1 + v7[12]))
  {
    return 0;
  }

  v8 = *(a1 + v7[17]);
  if (v8 == 2)
  {
    return 0;
  }

  return (v8 & 1) == 0 || *(a1 + v7[6] + 8) == 0;
}

void sub_1002D6EA4()
{
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldControllerIsAvailable) == 1)
  {
    v1 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController;
    if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController))
    {
      return;
    }

    v6 = v0;
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100975E80);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropNearFieldService nearFieldController is available", v10, 2u);
    }

    v11 = [objc_allocWithZone(SDRPNearFieldController) initWithDispatchQueue:*(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue) delegate:v6];
    v5 = *(v6 + v1);
    *(v6 + v1) = v11;
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100975E80);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "SDAirDropNearFieldService nearFieldController is NOT available", v4, 2u);
    }

    v5 = oslog;
  }
}

void sub_1002D70C8()
{
  v1 = *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1002B9F08(v2, v3, v4, v5, v6);
}

uint64_t sub_1002D7130(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009761D0, &qword_1007F9338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1002D71A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v1 stop];
  if (v2 == 1)
  {

    return [v1 invalidate];
  }

  return result;
}

uint64_t sub_1002D7204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002C7604(a1, v4, v5, v6, v7);
}

uint64_t sub_1002D72C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002C7E24(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D7388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1002D73F0()
{
  v1 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SDNearFieldTap() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v0 + v6);
  v14 = v0 + ((*(v10 + 64) + v11 + v12) & ~v11);

  sub_1002BF3B8(v0 + v2, v0 + v5, v13, (v0 + v8), v0 + v12, v14);
}

uint64_t sub_1002D75B8(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1002C06B0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D76B0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005C00;

  return sub_1002C0E94(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_1002D77DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1002D65C0(a1, v5);
}

uint64_t sub_1002D7894(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D791C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002CB674(a1, v4, v5, v6);
}

uint64_t sub_1002D79E8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1002D7A60()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1002D7B24()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_1002CBCF8(v4, v0 + v3);
}

uint64_t sub_1002D7BFC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_1002CA7B8(v4, v0 + v3);
}

uint64_t sub_1002D7CD4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1004AB0E8(a1, v5);
}

uint64_t sub_1002D7D8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_100005798(a1, v5);
}

uint64_t sub_1002D7E44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002CA248(a1, v4, v5, v6);
}

uint64_t sub_1002D7EF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_1002D65C0(a1, v5);
}

unint64_t sub_1002D7FB0()
{
  result = qword_100975090;
  if (!qword_100975090)
  {
    sub_1000276B4(255, &qword_100975088, CNContact_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975090);
  }

  return result;
}

uint64_t sub_1002D8018(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_100026B14(a1, v5);
}

uint64_t sub_1002D80D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1002D8128(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1D28(a1, v4, v5, v6);
}

uint64_t sub_1002D81DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1B40(a1, v4, v5, v6);
}

uint64_t sub_1002D8290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002C9AEC(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D8350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_1002C901C(a1, v4, v5, v6, v7, v8);
}