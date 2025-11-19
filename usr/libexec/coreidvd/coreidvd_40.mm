uint64_t sub_1003FFB68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003FFC8C, 0, 0);
}

uint64_t sub_1003FFC8C()
{
  v1 = sub_10000BA08((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v2 = *v1;
  *(v0 + 88) = *v1;

  return _swift_task_switch(sub_1003FFD00, v2, 0);
}

uint64_t sub_1003FFD00()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  (*(v3 + 16))(v1, v0[2], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[12] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1003FFE38;
  v7 = v0[11];

  return sub_1003F387C("updateView(auxiliaryView:)", 26, 2, &unk_1006E1618, v5);
}

uint64_t sub_1003FFE38()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];

    return _swift_task_switch(sub_1003FFF90, v4, 0);
  }

  else
  {
    v5 = v3[12];
    v6 = v3[10];
    v7 = v3[6];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1003FFF90()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_1003FFFF8, 0, 0);
}

uint64_t sub_1003FFFF8()
{
  v1 = v0[14];
  v2 = v0[10];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100400178(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100841378, &qword_1006E12F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100400200(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderPresentmentRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003F27A0(a1, v1 + v5);
}

uint64_t sub_1004002D8@<X0>(uint64_t *a1@<X8>)
{
  result = MobileDocumentProviderOption.localizedDisplayName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100400304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100400384(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderAuxiliaryView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_1003F29C0(a1, v1 + v5);
}

uint64_t sub_100400474(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100400504(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderLocalOptionUIConfiguration() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1003F2470(a1, v1 + v5);
}

uint64_t sub_1004005DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for DIPError.Code();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1004006FC, 0, 0);
}

uint64_t sub_1004006FC()
{
  v1 = v0[5];
  v2 = *(v1 + 136);
  v0[12] = v2;
  if (v2)
  {
    v3 = v0[11];
    v4 = *(v1 + 144);
    swift_unknownObjectRetain();
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Confirming with user notification", v7, 2u);
    }

    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];

    (*(v9 + 8))(v8, v10);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_100400994;
    v12 = v0[4];
    v13 = v0[5];
    v15 = v0[2];
    v14 = v0[3];

    return sub_100400D28(v15, v14, v2, v4, v12);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.badLogic(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = v0[11];
    v18 = v0[8];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_100400994()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100400CB0;
  }

  else
  {
    v3 = sub_100400AA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100400AA8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v2 + 312);
  *(v0 + 120) = v3;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v4 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 128) = v4;
  v5 = *(*(v4 - 8) + 72);
  *(v0 + 144) = *(*(v4 - 8) + 80);
  v6 = swift_allocObject();
  *(v0 + 136) = v6;
  *(v6 + 16) = xmmword_1006BFF90;
  static DaemonSignposts.WebPresentment.firstPartyBypass.getter();
  static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_100400BE8, v3, 0);
}

uint64_t sub_100400BE8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = (*(v0 + 144) + 32) & ~*(v0 + 144);
  sub_10051ACBC(*(v0 + 136));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100400CB0()
{
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100400D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for UserNotificationAction();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(*(sub_100007224(&qword_1008437B8, &qword_1006E1750) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = sub_100007224(&qword_1008437C0, &qword_1006E1758);
  v6[15] = v14;
  v15 = *(v14 - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v17 = sub_100007224(&qword_1008437C8, &unk_1006E1760);
  v6[18] = v17;
  v18 = *(v17 - 8);
  v6[19] = v18;
  v19 = *(v18 + 64) + 15;
  v6[20] = swift_task_alloc();
  v20 = type metadata accessor for Date();
  v6[21] = v20;
  v21 = *(v20 - 8);
  v6[22] = v21;
  v22 = *(v21 + 64) + 15;
  v6[23] = swift_task_alloc();
  v23 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v24 = type metadata accessor for UserNotificationCategory();
  v6[25] = v24;
  v25 = *(v24 - 8);
  v6[26] = v25;
  v26 = *(v25 + 64) + 15;
  v6[27] = swift_task_alloc();
  v27 = type metadata accessor for UserNotificationRequest();
  v6[28] = v27;
  v28 = *(v27 - 8);
  v6[29] = v28;
  v29 = *(v28 + 64) + 15;
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004010A0, 0, 0);
}

uint64_t sub_1004010A0()
{
  v19 = v0[30];
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v18 = v0[21];
  v7 = v0[7];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  ObjectType = swift_getObjectType();
  v0[31] = ObjectType;
  static WebPresentmentLocalizedString.confirmVerificationTitle.getter();
  static WebPresentmentLocalizedString.confirmVerificationBody(deviceName:)();
  (*(v2 + 104))(v1, enum case for UserNotificationCategory.identityPresentmentHandoff(_:), v3);
  v11 = v7[38];
  sub_10000BA08(v7 + 34, v7[37]);
  dispatch thunk of DateProviding.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v5 + 8))(v6, v18);
  (*(v5 + 56))(v4, 0, 1, v18);
  UserNotificationRequest.init(title:body:category:iconSystemImageName:defaultActionRequiresAuthentication:identifier:playSound:isTimeSensitive:expirationDate:)();
  v12 = async function pointer to dispatch thunk of UserNotificationManaging.addNotification(_:)[1];
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_1004012B0;
  v14 = v0[30];
  v16 = v0[4];
  v15 = v0[5];

  return dispatch thunk of UserNotificationManaging.addNotification(_:)(v14, ObjectType, v15);
}

uint64_t sub_1004012B0()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v8 = *v1;
  *(*v1 + 264) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100401D44;
  }

  else
  {
    v6 = sub_100401420;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100401420()
{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  v4 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendNotificationReceived()[1];
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_1004014D4;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendNotificationReceived()(v2, v3);
}

uint64_t sub_1004014D4()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1004015D0, 0, 0);
}

uint64_t sub_1004015D0()
{
  v1 = v0[31];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v7 = v0[4];
  v6 = v0[5];
  dispatch thunk of UserNotificationManaging.makeResponseStream(identifier:)();
  AsyncStream.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_1004016E4;
  v10 = v0[20];
  v11 = v0[18];
  v12 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v12, 0, 0, v11);
}

uint64_t sub_1004016E4()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return _swift_task_switch(sub_1004017E0, 0, 0);
}

uint64_t sub_1004017E0()
{
  v1 = v0 + 12;
  v2 = v0[12];
  v3 = v0[14];
  v5 = v0 + 11;
  v4 = v0[11];
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    v6 = v0 + 20;
    v1 = v0 + 19;
    v5 = v0 + 18;
LABEL_8:
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    (*(*v1 + 8))(*v6, *v5);
    (*(v14 + 104))(v13, enum case for DIPError.Code.webPresentmentCancelled(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = v0[30];
    v16 = v0[31];
    v18 = v0[27];
    v20 = v0[23];
    v19 = v0[24];
    v21 = v0[20];
    v22 = v0[17];
    v23 = v0[13];
    v24 = v0[14];
    v29 = v0[10];
    v26 = v0[4];
    v25 = v0[5];
    dispatch thunk of UserNotificationManaging.removeDeliveredNotifications(withIdentifiers:)();

    v27 = v0[1];

    return v27();
  }

  v6 = v0 + 13;
  v7 = v0[13];
  (*(v2 + 32))(v7, v3, v4);
  if ((*(v2 + 88))(v7, v4) != enum case for UserNotificationAction.default(_:))
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    goto LABEL_8;
  }

  v8 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v9 = v8[3];
  v10 = v8[4];
  sub_10000BA08(v8, v9);
  v11 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendNotificationOpened()[1];
  v12 = swift_task_alloc();
  v0[36] = v12;
  *v12 = v0;
  v12[1] = sub_100401B34;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendNotificationOpened()(v9, v10);
}

uint64_t sub_100401B34()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return _swift_task_switch(sub_100401C30, 0, 0);
}

uint64_t sub_100401C30()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[17];
  v11 = v0[14];
  v12 = v0[13];
  v13 = v0[10];
  v7 = v0[4];
  v8 = v0[5];
  (*(v0[19] + 8))(v0[20], v0[18]);
  dispatch thunk of UserNotificationManaging.removeDeliveredNotifications(withIdentifiers:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100401D44()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[13];
  v9 = v0[14];
  v14 = v0[10];
  v15 = v0[33];
  v11 = v0[4];
  v10 = v0[5];
  dispatch thunk of UserNotificationManaging.removeDeliveredNotifications(withIdentifiers:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100401E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_10083ACF8, &qword_1006D8FC0) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentProviderUserSelection();
  v6[13] = v11;
  v12 = *(v11 - 8);
  v6[14] = v12;
  v13 = *(v12 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v14 = type metadata accessor for WebPresentmentAnalyticsReporter.ThirdPartyAppResult();
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();
  v17 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v6[20] = v17;
  v18 = *(v17 - 8);
  v6[21] = v18;
  v19 = *(v18 + 64) + 15;
  v6[22] = swift_task_alloc();
  v20 = type metadata accessor for DIPError.Code();
  v6[23] = v20;
  v21 = *(v20 - 8);
  v6[24] = v21;
  v22 = *(v21 + 64) + 15;
  v6[25] = swift_task_alloc();
  v23 = type metadata accessor for URL();
  v6[26] = v23;
  v24 = *(v23 - 8);
  v6[27] = v24;
  v25 = *(v24 + 64) + 15;
  v6[28] = swift_task_alloc();
  v26 = *(*(sub_100007224(&qword_100843798, &unk_1006E21E0) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v27 = sub_100007224(&qword_1008437A0, &unk_1006E1710);
  v6[30] = v27;
  v28 = *(v27 - 8);
  v6[31] = v28;
  v29 = *(v28 + 64) + 15;
  v6[32] = swift_task_alloc();
  v30 = type metadata accessor for MobileDocumentProviderSceneConfiguration();
  v6[33] = v30;
  v31 = *(v30 - 8);
  v6[34] = v31;
  v32 = *(v31 + 64) + 15;
  v6[35] = swift_task_alloc();
  v33 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v6[36] = v33;
  v34 = *(v33 - 8);
  v6[37] = v34;
  v35 = *(v34 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v36 = sub_100007224(&qword_1008437A8, &qword_1006E21D0);
  v6[40] = v36;
  v37 = *(v36 - 8);
  v6[41] = v37;
  v38 = *(v37 + 64) + 15;
  v6[42] = swift_task_alloc();
  v39 = type metadata accessor for Logger();
  v6[43] = v39;
  v40 = *(v39 - 8);
  v6[44] = v40;
  v41 = *(v40 + 64) + 15;
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v42 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  v6[48] = v42;
  v43 = *(*(v42 - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v44 = type metadata accessor for MobileDocumentProviderRecord(0);
  v6[52] = v44;
  v45 = *(v44 - 8);
  v6[53] = v45;
  v46 = *(v45 + 64) + 15;
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v47 = *(*(sub_100007224(&qword_1008437B0, &unk_1006E1720) - 8) + 64) + 15;
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();

  return _swift_task_switch(sub_100402484, 0, 0);
}

uint64_t sub_100402484()
{
  v78 = v0;
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[6];
  v6 = *sub_10000BA08((v0[8] + 232), *(v0[8] + 256));
  sub_100473D74(v5, v1);
  sub_10000BBC4(v1, v2, &qword_1008437B0, &unk_1006E1720);
  v7 = *(v4 + 48);
  v0[63] = v7;
  v0[64] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v8 = v7(v2, 1, v3);
  v9 = v0[61];
  if (v8 == 1)
  {
    sub_10000BE18(v9, &qword_1008437B0, &unk_1006E1720);
  }

  else
  {
    v10 = v0[57];
    v11 = v0[51];
    v12 = v0[48];
    sub_100407A9C(v9, v10, type metadata accessor for MobileDocumentProviderRecord);
    sub_100407B04(v10, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = v0[51];
      v14 = v0[47];
      v15 = *(v13 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
      v0[65] = v15;
      v16 = type metadata accessor for BundleRecord();
      (*(*(v16 - 8) + 8))(v13, v16);
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Bypass record is Apple Wallet, bypassing selection sheet to 1st party consent sheet", v19, 2u);
      }

      v20 = v0[47];
      v21 = v0[43];
      v22 = v0[44];

      (*(v22 + 8))(v20, v21);
      v23 = swift_task_alloc();
      v0[66] = v23;
      *v23 = v0;
      v23[1] = sub_100402C60;
      v24 = v0[7];
      v25 = v0[8];
      v26 = v0[4];
      v27 = v0[5];
      v28 = v0[3];

      return sub_100406DD8(v28, v26, v27, v15, v24);
    }

    v30 = v0[51];
    sub_100407B84(v0[57], type metadata accessor for MobileDocumentProviderRecord);
    sub_100407B84(v30, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
  }

  v31 = v0[60];
  v32 = v0[52];
  sub_10000BBC4(v0[62], v31, &qword_1008437B0, &unk_1006E1720);
  v33 = v7(v31, 1, v32);
  v34 = v0[60];
  if (v33 == 1)
  {
    sub_10000BE18(v34, &qword_1008437B0, &unk_1006E1720);
    goto LABEL_19;
  }

  sub_100407A9C(v34, v0[56], type metadata accessor for MobileDocumentProviderRecord);
  v35 = sub_100330370();
  if (!v36)
  {
    sub_100407B84(v0[56], type metadata accessor for MobileDocumentProviderRecord);
LABEL_19:
    v62 = v0[27];
    v61 = v0[28];
    v63 = v0[26];
    v64 = v0[4];
    PartialWebPresentmentRequest.originatingURL.getter();
    v65 = URL.host.getter();
    v67 = v66;
    v0[69] = v66;
    (*(v62 + 8))(v61, v63);
    if (v67)
    {
      v68 = *sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
      v69 = swift_task_alloc();
      v0[70] = v69;
      *v69 = v0;
      v69[1] = sub_1004031BC;
      v70 = v0[42];
      v72 = v0[5];
      v71 = v0[6];

      return sub_1003FE320(v70, v71, v65, v67, v72);
    }

    else
    {
      (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.webPresentmentMissingHost(_:), v0[23]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      v73 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000BE18(v0[62], &qword_1008437B0, &unk_1006E1720);
      v0[111] = v73;
      v74 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
      v75 = sub_10000BA08((*v74 + 16), *(*v74 + 40));
      v0[112] = v75;
      v76 = *v75;

      return _swift_task_switch(sub_10040677C, v76, 0);
    }
  }

  v37 = v35;
  v38 = v36;
  v39 = v0[46];
  defaultLogger()();

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[46];
  v44 = v0[43];
  v45 = v0[44];
  if (v42)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v77 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_100141FE4(v37, v38, &v77);
    _os_log_impl(&_mh_execute_header, v40, v41, "RemoteWebPresentmentManager using a bypassed third party credential provider: %s.", v46, 0xCu);
    sub_10000BB78(v47);
  }

  (*(v45 + 8))(v43, v44);
  v48 = v0[56];
  v49 = v0[39];
  v51 = v0[34];
  v50 = v0[35];
  v52 = v0[33];
  v53 = v0[8];
  v54 = v0[4];
  v55 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v55 - 8) + 16))(v50, v54, v55);
  (*(v51 + 104))(v50, enum case for MobileDocumentProviderSceneConfiguration.iso18013MobileDocumentRequest(_:), v52);
  sub_100330648();
  MobileDocumentProviderPresentmentRequest.init(applicationExtensionBundleIdentifier:sceneConfiguration:localizedDisplayName:)();
  v56 = *sub_10000BA08((v53 + 96), *(v53 + 120));
  v57 = swift_task_alloc();
  v0[68] = v57;
  *v57 = v0;
  v57[1] = sub_100402FA0;
  v58 = v0[42];
  v59 = v0[39];
  v60 = v0[5];

  return sub_1003FEF1C(v58, v59, v60);
}

uint64_t sub_100402C60()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 520);

  if (v0)
  {
    v6 = sub_100406AA8;
  }

  else
  {
    v6 = sub_100402D94;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100402D94()
{
  v1 = v0[62];
  sub_100407B84(v0[57], type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  v3 = v0[61];
  v2 = v0[62];
  v5 = v0[59];
  v4 = v0[60];
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[54];
  v11 = v0[51];
  v14 = v0[50];
  v15 = v0[49];
  v16 = v0[47];
  v17 = v0[46];
  v18 = v0[45];
  v19 = v0[42];
  v20 = v0[39];
  v21 = v0[38];
  v22 = v0[35];
  v23 = v0[32];
  v24 = v0[29];
  v25 = v0[28];
  v26 = v0[25];
  v27 = v0[22];
  v28 = v0[19];
  v29 = v0[16];
  v30 = v0[15];
  v31 = v0[12];
  v32 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100402FA0()
{
  v1 = *(*v0 + 544);
  v3 = *v0;

  return _swift_task_switch(sub_10040309C, 0, 0);
}

uint64_t sub_10040309C()
{
  v1 = *(v0 + 448);
  (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));
  sub_100407B84(v1, type metadata accessor for MobileDocumentProviderRecord);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 256);
  AsyncThrowingStream.makeAsyncIterator()();
  *(v0 + 904) = enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:);
  *(v0 + 908) = enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.cancelled(_:);
  *(v0 + 912) = enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:);
  v5 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v6 = swift_task_alloc();
  *(v0 + 576) = v6;
  *v6 = v0;
  v6[1] = sub_10040347C;
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v8, 0, 0, v9, v0 + 16);
}

uint64_t sub_1004031BC()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = v0;

  v5 = *(v2 + 552);

  if (v0)
  {
    v6 = sub_1004033D8;
  }

  else
  {
    v6 = sub_1004032F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004032F0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 256);
  AsyncThrowingStream.makeAsyncIterator()();
  *(v0 + 904) = enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:);
  *(v0 + 908) = enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.cancelled(_:);
  *(v0 + 912) = enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:);
  v4 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v5 = swift_task_alloc();
  *(v0 + 576) = v5;
  *v5 = v0;
  v5[1] = sub_10040347C;
  v6 = *(v0 + 256);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v7, 0, 0, v8, v0 + 16);
}

uint64_t sub_1004033D8()
{
  v1 = v0[71];
  sub_10000BE18(v0[62], &qword_1008437B0, &unk_1006E1720);
  v0[111] = v1;
  v2 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v3 = sub_10000BA08((*v2 + 16), *(*v2 + 40));
  v0[112] = v3;
  v4 = *v3;

  return _swift_task_switch(sub_10040677C, v4, 0);
}

uint64_t sub_10040347C()
{
  v2 = *(*v1 + 576);
  v5 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_100406B6C;
  }

  else
  {
    v3 = sub_100403590;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100403590()
{
  v1 = *(v0 + 232);
  if ((*(*(v0 + 168) + 48))(v1, 1, *(v0 + 160)) == 1)
  {
    v77 = *(v0 + 496);
    v3 = *(v0 + 328);
    v2 = *(v0 + 336);
    v4 = *(v0 + 320);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 184);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    (*(v6 + 104))(v5, enum case for DIPError.Code.unexpectedDaemonState(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v3 + 8))(v2, v4);
    sub_10000BE18(v77, &qword_1008437B0, &unk_1006E1720);
    *(v0 + 888) = v8;
    v9 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
    v10 = sub_10000BA08((*v9 + 16), *(*v9 + 40));
    *(v0 + 896) = v10;
    v11 = *v10;
    v12 = sub_10040677C;
LABEL_3:

    return _swift_task_switch(v12, v11, 0);
  }

  sub_100407A9C(v1, *(v0 + 176), type metadata accessor for RemoteMobileDocumentProviderUIState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v30 = *(v0 + 144);
        v29 = *(v0 + 152);
        v31 = *(v0 + 136);
        v32 = *(v0 + 56);
        (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 176), *(v0 + 72));
        v24 = v32[3];
        v25 = v32[4];
        sub_10000BA08(v32, v24);
        (*(v30 + 104))(v29, enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.success(_:), v31);
        v33 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)[1];
        v34 = swift_task_alloc();
        *(v0 + 880) = v34;
        *v34 = v0;
        v34[1] = sub_1004063C0;
        v28 = *(v0 + 152);
        goto LABEL_14;
      }

      v59 = *(v0 + 360);
      defaultLogger()();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      v62 = os_log_type_enabled(v60, v61);
      v64 = *(v0 + 352);
      v63 = *(v0 + 360);
      v65 = *(v0 + 344);
      if (v62)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "RemoteWebPresentmentManager: unexpected selectedEnableBluetooth state", v66, 2u);
      }

      (*(v64 + 8))(v63, v65);
      goto LABEL_32;
    }

    v44 = *(v0 + 64);
    (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 176), *(v0 + 104));
    v45 = v44[10];
    v46 = v44[11];
    sub_10000BA08(v44 + 7, v45);
    v47 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v49 = v48;
    *(v0 + 728) = v48;
    v50 = *(v46 + 16);
    v78 = (v50 + *v50);
    v51 = v50[1];
    v52 = swift_task_alloc();
    *(v0 + 736) = v52;
    *v52 = v0;
    v52[1] = sub_100404CFC;
    v53 = *(v0 + 464);
LABEL_23:

    return v78(v53, v47, v49, v45, v46);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(v0 + 904);
      v15 = *(v0 + 176);
      v16 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
      *(v0 + 672) = v16;
      v17 = *(v16 - 8);
      v18 = v17;
      *(v0 + 680) = v17;
      if ((*(v17 + 88))(v15, v16) == v14)
      {
        v19 = *(v0 + 908);
        v21 = *(v0 + 144);
        v20 = *(v0 + 152);
        v22 = *(v0 + 136);
        v23 = *(v0 + 56);
        v24 = v23[3];
        v25 = v23[4];
        sub_10000BA08(v23, v24);
        (*(v21 + 104))(v20, v19, v22);
        v26 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)[1];
        v27 = swift_task_alloc();
        *(v0 + 688) = v27;
        *v27 = v0;
        v27[1] = sub_1004043B0;
        v28 = *(v0 + 152);
LABEL_14:

        return dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)(v28, v24, v25);
      }

      goto LABEL_31;
    }

    v54 = *(v0 + 64);
    (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 176), *(v0 + 104));
    v45 = v54[10];
    v46 = v54[11];
    sub_10000BA08(v54 + 7, v45);
    v47 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
    v49 = v55;
    *(v0 + 696) = v55;
    v56 = *(v46 + 16);
    v78 = (v56 + *v56);
    v57 = v56[1];
    v58 = swift_task_alloc();
    *(v0 + 704) = v58;
    *v58 = v0;
    v58[1] = sub_1004045CC;
    v53 = *(v0 + 472);
    goto LABEL_23;
  }

  v35 = *(v0 + 912);
  v36 = *(v0 + 176);
  v16 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  *(v0 + 592) = v16;
  v37 = *(v16 - 8);
  v18 = v37;
  *(v0 + 600) = v37;
  v38 = (*(v37 + 88))(v36, v16);
  if (v38 != v35)
  {
    if (v38 == *(v0 + 904))
    {
      v67 = *(*(v0 + 64) + 312);
      *(v0 + 648) = v67;
      sub_100007224(&qword_10083C008, &qword_1006DA4E0);
      v68 = type metadata accessor for DIPSignpost.Config();
      *(v0 + 656) = v68;
      v69 = *(*(v68 - 8) + 72);
      *(v0 + 920) = *(*(v68 - 8) + 80);
      v70 = swift_allocObject();
      *(v0 + 664) = v70;
      *(v70 + 16) = xmmword_1006BF740;
      static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
      static DaemonSignposts.WebPresentment.thirdPartySelection.getter();
      v12 = sub_100404300;
      v11 = v67;
      goto LABEL_3;
    }

LABEL_31:
    (*(v18 + 8))(*(v0 + 176), v16);
LABEL_32:
    v71 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v72 = swift_task_alloc();
    *(v0 + 576) = v72;
    *v72 = v0;
    v72[1] = sub_10040347C;
    v73 = *(v0 + 256);
    v74 = *(v0 + 232);
    v75 = *(v0 + 240);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v74, 0, 0, v75, v0 + 16);
  }

  v39 = *(v0 + 56);
  v40 = v39[3];
  v41 = v39[4];
  sub_10000BA08(v39, v40);
  v42 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()[1];
  v43 = swift_task_alloc();
  *(v0 + 608) = v43;
  *v43 = v0;
  v43[1] = sub_100403F64;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()(v40, v41);
}

uint64_t sub_100403F64()
{
  v1 = *(*v0 + 608);
  v3 = *v0;

  return _swift_task_switch(sub_100404060, 0, 0);
}

uint64_t sub_100404060()
{
  v1 = *(*(v0 + 64) + 312);
  *(v0 + 616) = v1;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v2 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 624) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 632) = v3;
  v5 = *(v3 + 72);
  *(v0 + 916) = *(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 640) = v6;
  *(v6 + 16) = xmmword_1006BF520;
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_100404178, v1, 0);
}

uint64_t sub_100404178()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = (*(v0 + 916) + 32) & ~*(v0 + 916);
  sub_10051B0E0(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10040423C, 0, 0);
}

uint64_t sub_10040423C()
{
  (*(v0[75] + 8))(v0[22], v0[74]);
  v1 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v2 = swift_task_alloc();
  v0[72] = v2;
  *v2 = v0;
  v2[1] = sub_10040347C;
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[30];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v4, 0, 0, v5, v0 + 2);
}

uint64_t sub_100404300()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = (*(v0 + 920) + 32) & ~*(v0 + 920);
  sub_10051B0E0(*(v0 + 664));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100407BE4, 0, 0);
}

uint64_t sub_1004043B0()
{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100404508, 0, 0);
}

uint64_t sub_100404508()
{
  (*(v0[85] + 8))(v0[22], v0[84]);
  v1 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v2 = swift_task_alloc();
  v0[72] = v2;
  *v2 = v0;
  v2[1] = sub_10040347C;
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[30];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v4, 0, 0, v5, v0 + 2);
}

uint64_t sub_1004045CC()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 696);
  v4 = *v0;

  return _swift_task_switch(sub_1004046E4, 0, 0);
}

uint64_t sub_1004046E4()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 472);
  if ((*(v0 + 504))(v2, 1, *(v0 + 416)) == 1)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
    v3 = &qword_1008437B0;
    v4 = &unk_1006E1720;
LABEL_8:
    sub_10000BE18(v2, v3, v4);
LABEL_9:
    v19 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v20 = swift_task_alloc();
    *(v0 + 576) = v20;
    *v20 = v0;
    v20[1] = sub_10040347C;
    v21 = *(v0 + 256);
    v22 = *(v0 + 232);
    v23 = *(v0 + 240);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v22, 0, 0, v23, v0 + 16);
  }

  v5 = *(v0 + 440);
  v6 = *(v0 + 400);
  v7 = *(v0 + 384);
  sub_100407A9C(v2, v5, type metadata accessor for MobileDocumentProviderRecord);
  sub_100407B04(v5, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 400);
  v10 = *(v0 + 96);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v9 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));

    v12 = type metadata accessor for BundleRecord();
    v13 = *(v12 - 8);
    (*(v13 + 32))(v10, v9, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
  }

  else
  {
    v14 = sub_100007224(&unk_100844380, &unk_1006DDD60);
    sub_100330950(v9 + *(v14 + 48), v10);
    v12 = type metadata accessor for BundleRecord();
    (*(*(v12 - 8) + 8))(v9, v12);
  }

  v2 = *(v0 + 96);
  type metadata accessor for BundleRecord();
  v15 = *(v12 - 8);
  if ((*(v15 + 48))(v2, 1, v12) == 1)
  {
    v16 = *(v0 + 128);
    v17 = *(v0 + 104);
    v18 = *(v0 + 112);
    sub_100407B84(*(v0 + 440), type metadata accessor for MobileDocumentProviderRecord);
    (*(v18 + 8))(v16, v17);
    v3 = &qword_10083ACF8;
    v4 = &qword_1006D8FC0;
    goto LABEL_8;
  }

  v24 = BundleRecord.bundleIdentifier.getter();
  v26 = v25;
  *(v0 + 712) = v25;
  (*(v15 + 8))(v2, v12);
  if (!v26)
  {
    v32 = *(v0 + 128);
    v33 = *(v0 + 104);
    v34 = *(v0 + 112);
    sub_100407B84(*(v0 + 440), type metadata accessor for MobileDocumentProviderRecord);
    (*(v34 + 8))(v32, v33);
    goto LABEL_9;
  }

  v27 = *(v0 + 56);
  v28 = v27[3];
  v29 = v27[4];
  sub_10000BA08(v27, v28);
  v30 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)[1];
  v31 = swift_task_alloc();
  *(v0 + 720) = v31;
  *v31 = v0;
  v31[1] = sub_100404AF8;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)(v24, v26, v28, v29);
}

uint64_t sub_100404AF8()
{
  v1 = *(*v0 + 720);
  v2 = *(*v0 + 712);
  v4 = *v0;

  return _swift_task_switch(sub_100404C10, 0, 0);
}

uint64_t sub_100404C10()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  sub_100407B84(v0[55], type metadata accessor for MobileDocumentProviderRecord);
  (*(v3 + 8))(v1, v2);
  v4 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v5 = swift_task_alloc();
  v0[72] = v5;
  *v5 = v0;
  v5[1] = sub_10040347C;
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[30];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v7, 0, 0, v8, v0 + 2);
}

uint64_t sub_100404CFC()
{
  v1 = *(*v0 + 736);
  v2 = *(*v0 + 728);
  v4 = *v0;

  return _swift_task_switch(sub_100404E14, 0, 0);
}

uint64_t sub_100404E14()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 464);
  if ((*(v0 + 504))(v2, 1, *(v0 + 416)) == 1)
  {
    v3 = *(v0 + 328);
    v24 = *(v0 + 336);
    v25 = *(v0 + 496);
    v4 = *(v0 + 248);
    v22 = *(v0 + 256);
    v23 = *(v0 + 320);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = *(v0 + 112);
    v20 = *(v0 + 120);
    v21 = *(v0 + 240);
    v19 = *(v0 + 104);
    sub_10000BE18(v2, &qword_1008437B0, &unk_1006E1720);
    (*(v6 + 104))(v5, enum case for DIPError.Code.webPresentmentMissingRecord(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v9 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v8 + 8))(v20, v19);
    (*(v4 + 8))(v22, v21);
    (*(v3 + 8))(v24, v23);
    sub_10000BE18(v25, &qword_1008437B0, &unk_1006E1720);
    *(v0 + 888) = v9;
    v10 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
    v11 = sub_10000BA08((*v10 + 16), *(*v10 + 40));
    *(v0 + 896) = v11;
    v12 = *v11;

    return _swift_task_switch(sub_10040677C, v12, 0);
  }

  else
  {
    v13 = *(v0 + 56);
    sub_100407A9C(v2, *(v0 + 432), type metadata accessor for MobileDocumentProviderRecord);
    v14 = v13[3];
    v15 = v13[4];
    sub_10000BA08(v13, v14);
    v16 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()[1];
    v17 = swift_task_alloc();
    *(v0 + 744) = v17;
    *v17 = v0;
    v17[1] = sub_100405104;

    return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()(v14, v15);
  }
}

uint64_t sub_100405104()
{
  v1 = *(*v0 + 744);
  v3 = *v0;

  return _swift_task_switch(sub_100405200, 0, 0);
}

uint64_t sub_100405200()
{
  v1 = *(v0 + 384);
  sub_100407B04(*(v0 + 432), *(v0 + 392));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 392);
    v3 = *(v0 + 64);
    *(v0 + 752) = *(v2 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
    v4 = *(v3 + 312);
    *(v0 + 760) = v4;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v5 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 768) = v5;
    v6 = *(v5 - 8);
    v7 = v6;
    *(v0 + 776) = v6;
    v8 = *(v6 + 72);
    *(v0 + 924) = *(v7 + 80);
    v9 = swift_allocObject();
    *(v0 + 784) = v9;
    *(v9 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.firstPartySelection.getter();
    v10 = sub_100405420;
  }

  else
  {
    v4 = *(*(v0 + 64) + 312);
    *(v0 + 816) = v4;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v11 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 824) = v11;
    v12 = *(v11 - 8);
    v13 = v12;
    *(v0 + 832) = v12;
    v14 = *(v12 + 72);
    *(v0 + 928) = *(v13 + 80);
    v15 = swift_allocObject();
    *(v0 + 840) = v15;
    *(v15 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.thirdPartySelection.getter();
    v10 = sub_1004059F4;
  }

  return _swift_task_switch(v10, v4, 0);
}

uint64_t sub_100405420()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = (*(v0 + 924) + 32) & ~*(v0 + 924);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_1004054E4, 0, 0);
}

uint64_t sub_1004054E4()
{
  v1 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
  v2 = sub_10000BA08((*v1 + 16), *(*v1 + 40));
  *(v0 + 792) = v2;
  v3 = *v2;

  return _swift_task_switch(sub_100405568, v3, 0);
}

uint64_t sub_100405568()
{
  v1 = **(v0 + 792);
  sub_1003F2DD8();
  v2 = swift_task_alloc();
  *(v0 + 800) = v2;
  *v2 = v0;
  v2[1] = sub_100405614;
  v3 = *(v0 + 752);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);

  return sub_100406DD8(v8, v6, v7, v3, v4);
}

uint64_t sub_100405614()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v4 = *v1;
  *(*v1 + 808) = v0;

  v5 = *(v2 + 752);

  if (v0)
  {
    v6 = sub_100406C54;
  }

  else
  {
    v6 = sub_100405748;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100405748()
{
  v40 = v0[62];
  v42 = v0[49];
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];
  sub_100407B84(v0[54], type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v40, &qword_1008437B0, &unk_1006E1720);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v42, v10);
  v12 = v0[61];
  v11 = v0[62];
  v14 = v0[59];
  v13 = v0[60];
  v16 = v0[57];
  v15 = v0[58];
  v18 = v0[55];
  v17 = v0[56];
  v19 = v0[54];
  v20 = v0[51];
  v23 = v0[50];
  v24 = v0[49];
  v25 = v0[47];
  v26 = v0[46];
  v27 = v0[45];
  v28 = v0[42];
  v29 = v0[39];
  v30 = v0[38];
  v31 = v0[35];
  v32 = v0[32];
  v33 = v0[29];
  v34 = v0[28];
  v35 = v0[25];
  v36 = v0[22];
  v37 = v0[19];
  v38 = v0[16];
  v39 = v0[15];
  v41 = v0[12];
  v43 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004059F4()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = (*(v0 + 928) + 32) & ~*(v0 + 928);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100405AB8, 0, 0);
}

void sub_100405AB8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 40);
  v3 = *sub_10000BA08((*(v0 + 64) + 192), *(*(v0 + 64) + 216));
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v3 + 14);
  sub_100407B68(&v3[4]);
  if (v1)
  {

    os_unfair_lock_unlock(v3 + 14);
  }

  else
  {
    v4 = *(v0 + 64);
    *(v0 + 932) = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
    os_unfair_lock_unlock(v3 + 14);

    v5 = *sub_10000BA08((v4 + 192), *(v4 + 216));
    v6 = swift_task_alloc();
    *(v0 + 848) = v6;
    *v6 = v0;
    v6[1] = sub_100405C14;
    v7 = *(v0 + 432);
    v8 = *(v0 + 304);
    v9 = *(v0 + 32);

    sub_10032DCBC(v8, v7, v9, v5);
  }
}

uint64_t sub_100405C14()
{
  v2 = *(*v1 + 848);
  v5 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v3 = sub_100405EE8;
  }

  else
  {
    v3 = sub_100405D28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100405D28()
{
  v1 = *sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v2 = swift_task_alloc();
  v0[108] = v2;
  *v2 = v0;
  v2[1] = sub_100405DD4;
  v3 = v0[38];
  v4 = v0[5];

  return sub_1003FE810(v3, v4);
}

uint64_t sub_100405DD4()
{
  v2 = *(*v1 + 864);
  v5 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = sub_1004061FC;
  }

  else
  {
    v3 = sub_100406094;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100405EE8()
{
  v17 = *(v0 + 932);
  v18 = *(v0 + 856);
  v15 = *(v0 + 496);
  v16 = *(v0 + 392);
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  sub_100407B84(*(v0 + 432), type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v15, &qword_1008437B0, &unk_1006E1720);
  sub_10000BE18(v16 + v17, &qword_10083ACF8, &qword_1006D8FC0);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v16, v10);
  *(v0 + 888) = v18;
  v11 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
  v12 = sub_10000BA08((*v11 + 16), *(*v11 + 40));
  *(v0 + 896) = v12;
  v13 = *v12;

  return _swift_task_switch(sub_10040677C, v13, 0);
}

uint64_t sub_100406094()
{
  v1 = *(v0 + 932);
  v2 = *(v0 + 432);
  v3 = *(v0 + 392);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  sub_100407B84(v2, type metadata accessor for MobileDocumentProviderRecord);
  (*(v5 + 8))(v4, v6);
  sub_10000BE18(v3 + v1, &qword_10083ACF8, &qword_1006D8FC0);
  v7 = type metadata accessor for BundleRecord();
  (*(*(v7 - 8) + 8))(v3, v7);
  v8 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v9 = swift_task_alloc();
  *(v0 + 576) = v9;
  *v9 = v0;
  v9[1] = sub_10040347C;
  v10 = *(v0 + 256);
  v11 = *(v0 + 232);
  v12 = *(v0 + 240);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v11, 0, 0, v12, v0 + 16);
}

uint64_t sub_1004061FC()
{
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  v17 = *(v0 + 932);
  v18 = *(v0 + 872);
  v15 = *(v0 + 496);
  v16 = *(v0 + 392);
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  sub_100407B84(*(v0 + 432), type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v15, &qword_1008437B0, &unk_1006E1720);
  sub_10000BE18(v16 + v17, &qword_10083ACF8, &qword_1006D8FC0);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v16, v10);
  *(v0 + 888) = v18;
  v11 = sub_10000BA08((*(v0 + 64) + 96), *(*(v0 + 64) + 120));
  v12 = sub_10000BA08((*v11 + 16), *(*v11 + 40));
  *(v0 + 896) = v12;
  v13 = *v12;

  return _swift_task_switch(sub_10040677C, v13, 0);
}

uint64_t sub_1004063C0()
{
  v1 = *(*v0 + 880);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100406518, 0, 0);
}

uint64_t sub_100406518()
{
  v1 = v0[41];
  v39 = v0[42];
  v41 = v0[62];
  v2 = v0[40];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[3];
  MobileDocumentProviderPresentmentResponse.encryptedResponseData.getter();
  WebPresentmentResponse.init(responseData:)();
  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v4, v5);
  (*(v1 + 8))(v39, v2);
  sub_10000BE18(v41, &qword_1008437B0, &unk_1006E1720);
  v11 = v0[61];
  v10 = v0[62];
  v13 = v0[59];
  v12 = v0[60];
  v15 = v0[57];
  v14 = v0[58];
  v17 = v0[55];
  v16 = v0[56];
  v18 = v0[54];
  v19 = v0[51];
  v22 = v0[50];
  v23 = v0[49];
  v24 = v0[47];
  v25 = v0[46];
  v26 = v0[45];
  v27 = v0[42];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[35];
  v31 = v0[32];
  v32 = v0[29];
  v33 = v0[28];
  v34 = v0[25];
  v35 = v0[22];
  v36 = v0[19];
  v37 = v0[16];
  v38 = v0[15];
  v40 = v0[12];
  v42 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10040677C()
{
  v1 = **(v0 + 896);
  sub_1003F2DD8();

  return _swift_task_switch(sub_1004067E8, 0, 0);
}

uint64_t sub_1004067E8()
{
  v1 = v0[111];
  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[60];
  v7 = v0[59];
  v8 = v0[58];
  v9 = v0[57];
  v10 = v0[56];
  v11 = v0[55];
  v12 = v0[54];
  v13 = v0[51];
  v14 = v0[50];
  v15 = v0[49];
  v16 = v0[47];
  v17 = v0[46];
  v18 = v0[45];
  v19 = v0[42];
  v20 = v0[39];
  v21 = v0[38];
  v22 = v0[35];
  v23 = v0[32];
  v25 = v0[29];
  v27 = v0[28];
  v30 = v0[22];
  v24 = v0[19];
  v26 = v0[16];
  v28 = v0[15];
  v29 = v0[12];
  v31 = v0[11];
  (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.internalError(_:), v0[23]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100406AA8()
{
  v1 = v0[62];
  sub_100407B84(v0[57], type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  v0[111] = v0[67];
  v2 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v3 = sub_10000BA08((*v2 + 16), *(*v2 + 40));
  v0[112] = v3;
  v4 = *v3;

  return _swift_task_switch(sub_10040677C, v4, 0);
}

uint64_t sub_100406B6C()
{
  v1 = v0[62];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v3 + 8))(v2, v4);
  sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
  v0[111] = v0[2];
  v5 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v6 = sub_10000BA08((*v5 + 16), *(*v5 + 40));
  v0[112] = v6;
  v7 = *v6;

  return _swift_task_switch(sub_10040677C, v7, 0);
}

uint64_t sub_100406C54()
{
  v15 = v0[62];
  v16 = v0[49];
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];
  sub_100407B84(v0[54], type metadata accessor for MobileDocumentProviderRecord);
  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);
  sub_10000BE18(v15, &qword_1008437B0, &unk_1006E1720);
  v10 = type metadata accessor for BundleRecord();
  (*(*(v10 - 8) + 8))(v16, v10);
  v0[111] = v0[101];
  v11 = sub_10000BA08((v0[8] + 96), *(v0[8] + 120));
  v12 = sub_10000BA08((*v11 + 16), *(*v11 + 40));
  v0[112] = v12;
  v13 = *v12;

  return _swift_task_switch(sub_10040677C, v13, 0);
}

uint64_t sub_100406DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v11 = type metadata accessor for PartialWebPresentmentRequest();
  v6[17] = v11;
  v12 = *(v11 - 8);
  v6[18] = v12;
  v13 = *(v12 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v6[21] = v14;
  v15 = *(v14 - 8);
  v6[22] = v15;
  v16 = *(v15 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_100406FB4, 0, 0);
}

uint64_t sub_100406FB4()
{
  v1 = v0[24];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteWebPresentmentManager handling first party selection", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[10];
  v9 = v0[11];

  v10 = *(v7 + 8);
  v0[25] = v10;
  v10(v5, v6);
  v0[26] = sub_10000BA08((v9 + 16), *(v9 + 40));
  v11 = v8[3];
  v12 = v8[4];
  sub_10000BA08(v8, v11);
  v13 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter[1];
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_100407120;

  return dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter(v11, v12);
}

uint64_t sub_100407120(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v6 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return _swift_task_switch(sub_100407220, 0, 0);
}

uint64_t sub_100407220()
{
  v40 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[7];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  v11 = v0[23];
  v38 = v0[22];
  v12 = v0[20];
  v13 = v0[21];
  if (v9)
  {
    v36 = v0[23];
    v37 = v0[25];
    v14 = v0[18];
    v15 = v0[19];
    v35 = v0[21];
    v16 = v0[17];
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136315138;
    v6(v15, v12, v16);
    v18 = String.init<A>(describing:)();
    v19 = v8;
    v21 = v20;
    (*(v14 + 8))(v12, v16);
    v22 = sub_100141FE4(v18, v21, &v39);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v7, v19, "WebPresentmentWalletPassPresenter presenting authorization sheet for request: %s", v17, 0xCu);
    sub_10000BB78(v34);

    v37(v36, v35);
  }

  else
  {
    v24 = v0[17];
    v23 = v0[18];

    (*(v23 + 8))(v12, v24);
    v10(v11, v13);
  }

  v25 = swift_task_alloc();
  v0[30] = v25;
  *v25 = v0;
  v25[1] = sub_100407498;
  v26 = v0[28];
  v27 = v0[29];
  v28 = v0[26];
  v30 = v0[8];
  v29 = v0[9];
  v31 = v0[6];
  v32 = v0[7];

  return sub_1004743C0(v31, v29, v32, v30, v26, v27);
}

uint64_t sub_100407498()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100407644, 0, 0);
  }

  else
  {
    v5 = v3[23];
    v4 = v3[24];
    v7 = v3[19];
    v6 = v3[20];
    v9 = v3[15];
    v8 = v3[16];
    v10 = v3[14];
    sub_10000BD94(v3[28], v3[29]);

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_100407644()
{
  v1 = v0[31];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  swift_getErrorValue();
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  Error.dipErrorCode.getter();
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    sub_10000BBC4(v0[16], v8, &qword_10083B020, &unk_1006D8ED0);
    if ((*(v10 + 88))(v8, v9) == enum case for DIPError.Code.digitalPresentmentUserCancelled(_:))
    {
      v11 = v0[31];
      (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.webPresentmentCancelled(_:), v0[12]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      goto LABEL_6;
    }

    (*(v0[13] + 8))(v0[15], v0[12]);
  }

  v12 = v0[31];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v13 = v0[31];
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[14];
  sub_10000BD94(v0[28], v0[29]);

  sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10040796C()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  sub_10000BB78(v0 + 19);
  sub_10000BB78(v0 + 24);
  sub_10000BB78(v0 + 29);
  sub_10000BB78(v0 + 34);
  v2 = v0[39];

  return swift_deallocClassInstance();
}

uint64_t sub_100407A08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100407A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100407A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100407B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100407B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100407BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentResponse();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100407C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentResponse();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100407D0C()
{
  result = type metadata accessor for WebPresentmentResponse();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100407D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PartialWebPresentmentRequest();
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

uint64_t sub_100407E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PartialWebPresentmentRequest();
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

uint64_t sub_100407F3C()
{
  result = type metadata accessor for PartialWebPresentmentRequest();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100407FB0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100843908, &qword_1006E18C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100408E64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for PartialWebPresentmentRequest();
  sub_100408EB8(&qword_100842D90, &type metadata accessor for PartialWebPresentmentRequest);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for RemoteWebPresentmentRequest(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10040816C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for PartialWebPresentmentRequest();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100007224(&qword_1008438F8, &qword_1006E18B8);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RemoteWebPresentmentRequest(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100408E64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_100408EB8(&qword_100842D88, &type metadata accessor for PartialWebPresentmentRequest);
  v18 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_1003F1170(v23, v22);
  sub_10000BB78(a1);
  return sub_1003F10CC(v23);
}

uint64_t sub_10040849C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for WebPresentmentResponse();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100843910, &qword_1006E18C8);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RemoteWebPresentmentResponse(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100408F00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_100408EB8(&qword_100843920, &type metadata accessor for WebPresentmentResponse);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_100408F54(v14, v17);
  }

  return sub_10000BB78(a1);
}

unint64_t sub_100408724()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x526C616974726170;
  }

  *v0;
  return result;
}

uint64_t sub_100408770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x526C616974726170 && a2 == 0xEE00747365757165;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100715D10 == a2)
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

uint64_t sub_10040885C(uint64_t a1)
{
  v2 = sub_100408E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100408898(uint64_t a1)
{
  v2 = sub_100408E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100408904(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for PartialWebPresentmentRequest();
  sub_100408EB8(&qword_100843938, &type metadata accessor for PartialWebPresentmentRequest);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004089AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PartialWebPresentmentRequest();
  sub_100408EB8(&qword_100843938, &type metadata accessor for PartialWebPresentmentRequest);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return String.hash(into:)();
}

Swift::Int sub_100408A48(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for PartialWebPresentmentRequest();
  sub_100408EB8(&qword_100843938, &type metadata accessor for PartialWebPresentmentRequest);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100408AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static PartialWebPresentmentRequest.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100408BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
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

uint64_t sub_100408C5C(uint64_t a1)
{
  v2 = sub_100408F00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100408C98(uint64_t a1)
{
  v2 = sub_100408F00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100408CEC(void *a1)
{
  v2 = sub_100007224(&qword_100843928, &qword_1006E18D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100408F00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for WebPresentmentResponse();
  sub_100408EB8(&qword_100843930, &type metadata accessor for WebPresentmentResponse);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100408E64()
{
  result = qword_100843900;
  if (!qword_100843900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843900);
  }

  return result;
}

uint64_t sub_100408EB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100408F00()
{
  result = qword_100843918;
  if (!qword_100843918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843918);
  }

  return result;
}

uint64_t sub_100408F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWebPresentmentResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100408FDC()
{
  result = qword_100843940;
  if (!qword_100843940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843940);
  }

  return result;
}

unint64_t sub_100409034()
{
  result = qword_100843948;
  if (!qword_100843948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843948);
  }

  return result;
}

unint64_t sub_10040908C()
{
  result = qword_100843950;
  if (!qword_100843950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843950);
  }

  return result;
}

unint64_t sub_1004090E4()
{
  result = qword_100843958;
  if (!qword_100843958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843958);
  }

  return result;
}

unint64_t sub_10040913C()
{
  result = qword_100843960;
  if (!qword_100843960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843960);
  }

  return result;
}

unint64_t sub_100409194()
{
  result = qword_100843968;
  if (!qword_100843968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843968);
  }

  return result;
}

uint64_t sub_1004091E8(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v12 = type metadata accessor for NWActorID();
  v4 = *(v12 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v12);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem;
  *(v2 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem) = a1;
  type metadata accessor for RemoteWebPresentmentRequestReleaser();
  v14 = a1;
  type metadata accessor for NWActorSystem();
  sub_10040B37C(&qword_100842FB8, &type metadata accessor for NWActorSystem);
  sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);

  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_id, v7, v12);
  v9 = v13;
  sub_100020260(v13, v2 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser);
  v14 = *(v2 + v8);

  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  sub_10000BB78(v9);

  return v2;
}

uint64_t sub_1004093F8()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100409514, 0, 0);
}

uint64_t sub_100409514()
{
  v1 = v0[2];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[8];
    v3 = *(v0[2] + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem);
    NWActorSystem.makeInvocationEncoder()();
    v4 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v5 = v0[8];
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v6)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);
      v7 = v0[8];
      v8 = v0[5];

      v9 = v0[1];

      return v9();
    }

    else
    {
      v12 = v0[5];
      RemoteCallTarget.init(_:)();
      v13 = async function pointer to NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)[1];
      v14 = swift_task_alloc();
      v0[9] = v14;
      v15 = type metadata accessor for RemoteWebPresentmentRequestReleaser();
      v16 = sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);
      *v14 = v0;
      v14[1] = sub_100409754;
      v17 = v0[8];
      v18 = v0[5];
      v19 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v19, v18, v17, v4, v15, v4, v16, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v11 = v0[2];

    return _swift_task_switch(sub_100409914, v11, 0);
  }
}

uint64_t sub_100409754()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100409B78;
  }

  else
  {
    v3 = sub_100409868;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100409868()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100409914()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_100409A44;

  return v8(v2, v3);
}

uint64_t sub_100409A44()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v7 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 40);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100409B78()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100409C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100041F04;

  return sub_1004093F8();
}

uint64_t type metadata accessor for RemoteWebPresentmentRequestReleaser()
{
  result = qword_1008439B0;
  if (!qword_1008439B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100409CF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100409E14, 0, 0);
}

uint64_t sub_100409E14()
{
  v1 = v0[3];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[9];
    v3 = *(v0[3] + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem);
    NWActorSystem.makeInvocationEncoder()();
    v4 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    v5 = v0[9];
    v6 = type metadata accessor for WebPresentmentRequest();
    sub_10040B37C(&qword_100843978, &type metadata accessor for WebPresentmentRequest);
    sub_10040B37C(&qword_100843980, &type metadata accessor for WebPresentmentRequest);
    NWActorSystemInvocationEncoder.recordReturnType<A>(_:)();
    v7 = v0[9];
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v8)
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      v9 = v0[9];
      v10 = v0[6];

      v11 = v0[1];

      return v11();
    }

    else
    {
      v16 = v0[6];
      RemoteCallTarget.init(_:)();
      v17 = async function pointer to NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)[1];
      v18 = swift_task_alloc();
      v0[10] = v18;
      v19 = type metadata accessor for RemoteWebPresentmentRequestReleaser();
      sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);
      *v18 = v0;
      v18[1] = sub_10040A144;
      v20 = v0[9];
      v21 = v0[6];
      v22 = v0[3];
      v23 = v0[2];

      return NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v23, v22, v21, v20, v4, v6, v19, v4);
    }
  }

  else
  {
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_10040A304;
    v14 = v0[2];
    v15 = v0[3];

    return sub_10040A578(v14);
  }
}

uint64_t sub_10040A144()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10040A438;
  }

  else
  {
    v3 = sub_10040A258;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10040A258()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[9];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10040A304()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v7 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 48);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10040A438()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10040A4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100027B9C;

  return sub_100409CF8(a3);
}

uint64_t sub_10040A578(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10040A638, v1, 0);
}

uint64_t sub_10040A638()
{
  v1 = v0[6];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteWebPresentmentRequestReleaser releasing request to remote document provider", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser + 24);
  v10 = *(v8 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser + 32);
  sub_10000BA08((v8 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser), v9);
  v11 = *(v10 + 24);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_10040A80C;
  v14 = v0[2];

  return v16(v14, v9, v10);
}

uint64_t sub_10040A80C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10040A91C()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_id;
  if (is_remote)
  {
    v3 = type metadata accessor for NWActorID();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    v4 = *(v0 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem);
  }

  else
  {
    v5 = OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem;
    type metadata accessor for NWActorSystem();
    sub_10040B37C(&qword_100842FB8, &type metadata accessor for NWActorSystem);
    dispatch thunk of DistributedActorSystem.resignID(_:)();
    v6 = type metadata accessor for NWActorID();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = *(v0 + v5);

    sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_localRequestReleaser));
  }

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10040AA7C()
{
  result = type metadata accessor for NWActorID();
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

uint64_t sub_10040AB44()
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for RemoteWebPresentmentRequestReleaser();
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v0;
}

uint64_t sub_10040AB98(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for RemoteWebPresentmentRequestReleaser();
  type metadata accessor for NWActorSystem();
  sub_10040B37C(&qword_100842FB8, &type metadata accessor for NWActorSystem);
  result = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_id;
    v8 = type metadata accessor for NWActorID();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_actorSystem) = v4;

    return v6;
  }

  return result;
}

uint64_t sub_10040ACC8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041F04;

  return sub_1004093F8();
}

uint64_t sub_10040AD58(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_100409CF8(a1);
}

Swift::Int sub_10040ADF4()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for RemoteWebPresentmentRequestReleaser();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10040AE54()
{
  v1 = *v0;
  type metadata accessor for RemoteWebPresentmentRequestReleaser();
  sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);
  return DistributedActor.hash(into:)();
}

Swift::Int sub_10040AED0()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for RemoteWebPresentmentRequestReleaser();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10040AF2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8coreidvd35RemoteWebPresentmentRequestReleaser_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10040AFA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for RemoteWebPresentmentRequestReleaser();
  v5 = sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_10040B1E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemoteWebPresentmentRequestReleaser();
  sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);
  sub_10040B37C(&qword_100842FC8, &type metadata accessor for NWActorID);
  result = DistributedActor<>.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10040B2B4()
{
  v1 = *v0;
  type metadata accessor for RemoteWebPresentmentRequestReleaser();
  sub_10040B37C(&qword_100843328, type metadata accessor for RemoteWebPresentmentRequestReleaser);
  sub_10040B37C(&qword_100842FC0, &type metadata accessor for NWActorID);
  return DistributedActor<>.encode(to:)();
}

uint64_t sub_10040B37C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10040B3C4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  v8 = type metadata accessor for WebPresentmentCABLEAuthenticator();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  result = sub_10043B8B4(v6);
  if (v1)
  {
    return &off_100810C88;
  }

  return result;
}

void *sub_10040B4BC(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v4 = sub_100007224(&qword_100843BE8, &qword_1006E1F88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v21 = sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v21);
  v12 = &v20 - v11;
  v13 = sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  swift_defaultActor_initialize();
  v2[16] = 0;
  v2[17] = 0;
  v2[18] = 0;
  v2[19] = 0xF000000000000000;
  v2[21] = 0;
  v2[22] = 0;
  v2[20] = 0;
  *(v2 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask) = 0;
  v18 = v20;
  v2[14] = a1;
  v2[15] = v18;
  sub_100007224(&qword_100843AE0, &qword_1006E1EC0);
  (*(v5 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v8, v4);
  (*(v14 + 32))(v2 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionStream, v17, v13);
  (*(v9 + 32))(v2 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionContinuation, v12, v21);
  return v2;
}

uint64_t sub_10040B774(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v3[17] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v3[19] = v6;
  v7 = *(v6 - 8);
  v3[20] = v7;
  v8 = *(v7 + 64) + 15;
  v3[21] = swift_task_alloc();
  v9 = type metadata accessor for WebPresentmentRequest.PresentmentProtocol();
  v3[22] = v9;
  v10 = *(v9 - 8);
  v3[23] = v10;
  v11 = *(v10 + 64) + 15;
  v3[24] = swift_task_alloc();
  v12 = *(*(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v3[26] = v13;
  v14 = *(v13 - 8);
  v3[27] = v14;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v3[30] = v16;
  v17 = *(v16 - 8);
  v3[31] = v17;
  v18 = *(v17 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v19 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_10040BA64, v2, 0);
}

uint64_t sub_10040BA64()
{
  v1 = v0[16];
  if (*(v1 + 128))
  {
    v2 = v0[34];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Could not start scannable code handling session, request already in progress", v5, 2u);
    }

    v6 = v0[34];
    v7 = v0[30];
    v8 = v0[31];
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];

    (*(v8 + 8))(v6, v7);
    (*(v10 + 104))(v9, enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v29 = v0[40];
    v28 = v0[41];
    v31 = v0[38];
    v30 = v0[39];
    v33 = v0[36];
    v32 = v0[37];
    v34 = v0[34];
    v35 = v0[35];
    v37 = v0[32];
    v36 = v0[33];
    v39 = v0[29];
    v40 = v0[28];
    v41 = v0[25];
    v42 = v0[24];
    v43 = v0[21];
    v44 = v0[18];

    v38 = v0[1];

    return v38();
  }

  else
  {
    v12 = *(v1 + 120);
    v13 = (*(v1 + 112))(v0[15]);
    v0[42] = v13;
    v14 = v13;
    v15 = v0[41];
    v16 = v0[16];
    v17 = *(v1 + 128);
    *(v1 + 128) = v13;
    *(v16 + 136) = v18;
    v19 = v18;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    v21 = sub_100410B98(&qword_100843BB0, type metadata accessor for RemoteWebPresentmentScannableCodeHandler);
    v22 = swift_allocObject();
    v22[2] = v16;
    v22[3] = v21;
    v22[4] = v14;
    v22[5] = v19;
    v22[6] = v16;
    swift_retain_n();
    v23 = sub_100130390(0, 0, v15, &unk_1006E1F70, v22);
    v24 = *(v16 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask);
    *(v16 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask) = v23;

    v25 = type metadata accessor for WebPresentmentCABLEAuthenticator();
    v26 = swift_task_alloc();
    v0[43] = v26;
    *v26 = v0;
    v26[1] = sub_10040C1A4;

    return (sub_10043CB3C)(v25, &off_100810C88);
  }
}

uint64_t sub_10040C1A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v10 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v5 = v3[16];
    v6 = sub_10040D9E0;
  }

  else
  {
    v7 = v3[42];
    v8 = v3[16];
    swift_unknownObjectRelease();
    v6 = sub_10040C2CC;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10040C2CC()
{
  v192 = v0;
  v1 = v0[44];
  v2 = v0[40];
  defaultLogger()();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[44];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received context from authenticator.start(): %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = v0[44];
  v11 = v0[40];
  v12 = v0[30];
  v13 = v0[31];

  v14 = *(v13 + 8);
  v14(v11, v12);
  v15 = [v10 digitalIdentityCredentialOptions];
  v190 = v0;
  if (!v15)
  {
    v47 = v0[44];
    (*(v0[20] + 104))(v0[21], enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v0[19]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError);
    v48 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_26:

    goto LABEL_27;
  }

  v16 = v15;
  v17 = v0[39];
  defaultLogger()();
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[39];
  v23 = v0[30];
  v24 = &selRef_setSupportedEncoding_;
  v187 = v14;
  if (v21)
  {
    v25 = swift_slowAlloc();
    v191[0] = swift_slowAlloc();
    *v25 = 136315650;
    v26 = [v18 requestType];
    v180 = v22;
    v183 = v23;
    v27 = v18;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_100141FE4(v28, v30, v191);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = [v27 origin];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_100141FE4(v33, v35, v191);

    *(v25 + 14) = v36;
    *(v25 + 22) = 2080;
    v37 = [v27 commandData];
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = Data.base64EncodedString(options:)(0);
    v42 = v38;
    v24 = &selRef_setSupportedEncoding_;
    v43 = v40;
    v18 = v27;
    sub_10000B90C(v42, v43);
    v44 = sub_100141FE4(v41._countAndFlagsBits, v41._object, v191);

    *(v25 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received context: requestType=%s origin=%s commandData=%s", v25, 0x20u);
    swift_arrayDestroy();

    v14 = v187;

    v45 = v180;
    v46 = v183;
  }

  else
  {

    v45 = v22;
    v46 = v23;
  }

  v14(v45, v46);
  v49 = [v18 v24[333]];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {
      v95 = v0[35];
      defaultLogger()();
      v18 = v18;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      v98 = os_log_type_enabled(v96, v97);
      v99 = v0[35];
      v100 = v0[30];
      if (v98)
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v191[0] = v102;
        *v101 = 136315138;
        v103 = [v18 v24[333]];
        v104 = v18;
        v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = v106;

        v108 = v105;
        v18 = v104;
        v0 = v190;
        v109 = sub_100141FE4(v108, v107, v191);

        *(v101 + 4) = v109;
        _os_log_impl(&_mh_execute_header, v96, v97, "Unknown requestType: %s", v101, 0xCu);
        sub_10000BB78(v102);

        v187(v99, v100);
      }

      else
      {

        v14(v99, v100);
      }

      v47 = v0[44];
      (*(v0[20] + 104))(v0[21], enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v0[19]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100410B98(&qword_100834130, &type metadata accessor for DIPError);
      v48 = swift_allocError();
      goto LABEL_25;
    }
  }

  v55 = v0[45];
  v56 = type metadata accessor for JSONDecoder();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v59 = [v18 commandData];
  v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  sub_100410D50();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v55)
  {
    v48 = v55;

    sub_10000B90C(v60, v62);

LABEL_27:
    v0[46] = v48;
    v113 = v0[32];
    defaultLogger()();
    swift_errorRetain();
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();

    v116 = os_log_type_enabled(v114, v115);
    v117 = v0[31];
    v118 = v0[32];
    v119 = v0[30];
    if (v116)
    {
      v188 = v0[32];
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v191[0] = v121;
      *v120 = 136315138;
      v0[13] = v48;
      swift_errorRetain();
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      v122 = String.init<A>(describing:)();
      v124 = sub_100141FE4(v122, v123, v191);

      *(v120 + 4) = v124;
      v0 = v190;
      _os_log_impl(&_mh_execute_header, v114, v115, "Failed to start caBLE session: %s", v120, 0xCu);
      sub_10000BB78(v121);

      (*(v117 + 8))(v188, v119);
    }

    else
    {

      (*(v117 + 8))(v118, v119);
    }

    v125 = v0[17];
    *v0[18] = v48;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v126 = swift_task_alloc();
    v0[47] = v126;
    *v126 = v0;
    v126[1] = sub_10040D64C;
    v127 = v0[18];
    v128 = v0[16];

    return sub_10040E2DC(v127);
  }

  v63 = v0[38];
  sub_10000B90C(v60, v62);

  v65 = v0[6];
  v64 = v0[7];
  v66 = v0[8];
  defaultLogger()();

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  v184 = v64;

  v69 = os_log_type_enabled(v67, v68);
  v70 = v0[38];
  v71 = v0[30];
  v179 = v18;
  v181 = v65;
  if (v69)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v191[0] = v73;
    *v72 = 136315138;
    v0[9] = v65;
    v0[10] = v184;
    v0[11] = v66;

    v74 = String.init<A>(describing:)();
    v76 = sub_100141FE4(v74, v75, v191);

    *(v72 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v67, v68, "Received context's commandData decoded to command: %s", v72, 0xCu);
    sub_10000BB78(v73);
    v18 = v179;
  }

  v187(v70, v71);
  if (!v66[2])
  {
    v47 = v0[44];
    v111 = v0[20];
    v110 = v0[21];
    v112 = v0[19];

    (*(v111 + 104))(v110, enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v112);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError);
    v48 = swift_allocError();
LABEL_25:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_26;
  }

  v77 = v0[26];
  v78 = v0[27];
  v79 = v0[25];
  v80 = v66[4];
  v81 = v66[5];
  v83 = v66[6];
  v82 = v66[7];
  sub_10000B8B8(v80, v81);
  v177 = v83;
  v84 = v83;
  v85 = v82;
  sub_10000B8B8(v84, v82);
  URL.init(string:)();
  v178 = v81;
  v176 = v80;
  if ((*(v78 + 48))(v79, 1, v77) == 1)
  {
    v86 = v0[36];
    sub_10000BE18(v0[25], &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    v89 = os_log_type_enabled(v87, v88);
    v90 = v0[36];
    v91 = v0[30];
    if (v89)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v191[0] = v93;
      *v92 = 136315138;

      v94 = sub_100141FE4(v181, v184, v191);

      *(v92 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v87, v88, "Failed to create URL from command origin %s", v92, 0xCu);
      sub_10000BB78(v93);
    }

    else
    {
    }

    v187(v90, v91);
    v144 = v0[44];
    (*(v0[20] + 104))(v0[21], enum case for DIPError.Code.webPresentmentInvalidRequest(_:), v0[19]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError);
    v48 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v176, v178);
    sub_10000B90C(v177, v82);

    goto LABEL_27;
  }

  v130 = v0[29];
  v131 = v0[26];
  v132 = v0[27];
  v133 = v0[25];
  v134 = v0[16];

  (*(v132 + 32))(v130, v133, v131);
  v136 = v134[18];
  v135 = v134[19];
  v137 = v134[20];
  v138 = v134[21];
  v134[18] = v176;
  v134[19] = v178;
  v134[20] = v177;
  v134[21] = v85;
  sub_10000B8B8(v176, v178);
  sub_10000B8B8(v177, v85);
  sub_100410AD8(v136, v135, v137, v138);
  v139 = [v18 requestType];
  v140 = v134[22];
  v134[22] = v139;

  v141 = type metadata accessor for JSONEncoder();
  v142 = *(v141 + 48);
  v143 = *(v141 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v176;
  v0[3] = v178;
  v0[4] = v177;
  v0[5] = v85;
  sub_100410DA4();
  v145 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v175 = v85;
  v146 = v190[37];
  v148 = v147;

  defaultLogger()();
  sub_10000B8B8(v145, v148);
  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.debug.getter();
  sub_10000B90C(v145, v148);
  v151 = os_log_type_enabled(v149, v150);
  v152 = v190[37];
  v153 = v190[30];
  if (v151)
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v191[0] = v155;
    *v154 = 136315138;
    v156 = Data.base64EncodedString(options:)(0);
    v157 = sub_100141FE4(v156._countAndFlagsBits, v156._object, v191);

    *(v154 + 4) = v157;
    _os_log_impl(&_mh_execute_header, v149, v150, "Re-encoded iso18013RequestForwarding request data: %s", v154, 0xCu);
    sub_10000BB78(v155);
  }

  v187(v152, v153);
  v158 = v190[42];
  v165 = v190[44];
  v166 = v190[41];
  v167 = v190[40];
  v168 = v190[39];
  v169 = v190[38];
  v170 = v190[37];
  v171 = v190[36];
  v172 = v190[35];
  v173 = v190[34];
  v174 = v190[33];
  v160 = v190[28];
  v159 = v190[29];
  v162 = v190[26];
  v161 = v190[27];
  v182 = v190[32];
  v185 = v190[25];
  v186 = v190[21];
  v189 = v190[18];
  v163 = v190[14];
  (*(v190[23] + 104))(v190[24], enum case for WebPresentmentRequest.PresentmentProtocol.iso18013RequestForwarding(_:), v190[22]);
  (*(v161 + 16))(v160, v159, v162);
  WebPresentmentRequest.init(presentmentProtocol:requestData:originatingURL:)();
  swift_unknownObjectRelease();
  sub_10000B90C(v176, v178);
  sub_10000B90C(v177, v175);

  (*(v161 + 8))(v159, v162);

  v164 = v190[1];

  return v164();
}

uint64_t sub_10040D64C()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 128);
  sub_10000BE18(v5, &qword_100843BC8, &qword_1006E21F0);
  if (v0)
  {
    v7 = sub_10040DC14;
  }

  else
  {
    v7 = sub_10040D7A4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10040D7A4()
{
  v1 = v0[46];
  v2 = v0[42];
  (*(v0[20] + 104))(v0[21], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v0[19]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100410B98(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[34];
  v10 = v0[35];
  v12 = v0[32];
  v11 = v0[33];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10040D9E0()
{
  v23 = v0;
  v1 = v0[42];
  swift_unknownObjectRelease();
  v2 = v0[45];
  v0[46] = v2;
  v3 = v0[32];
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v21 = v0[32];
    v7 = v0[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v0[13] = v2;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v10 = String.init<A>(describing:)();
    v12 = sub_100141FE4(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to start caBLE session: %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v21, v7);
  }

  else
  {
    v14 = v0[31];
    v13 = v0[32];
    v15 = v0[30];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[17];
  *v0[18] = v2;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v17 = swift_task_alloc();
  v0[47] = v17;
  *v17 = v0;
  v17[1] = sub_10040D64C;
  v18 = v0[18];
  v19 = v0[16];

  return sub_10040E2DC(v18);
}

uint64_t sub_10040DC14()
{
  v1 = v0[46];
  v2 = v0[42];
  swift_unknownObjectRelease();

  v21 = v0[48];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[34];
  v10 = v0[35];
  v12 = v0[32];
  v11 = v0[33];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[18];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10040DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v7 = sub_100007224(&qword_100843BE0, &qword_1006E1F80);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[11] = v13;
  *v13 = v6;
  v13[1] = sub_10040DEB0;

  return sub_10043C05C();
}

uint64_t sub_10040DEB0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_10040E0D4;
  }

  else
  {
    v4 = sub_10040DFD8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10040DFD8()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 96) != 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = v6;
  sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  AsyncStream.Continuation.yield(_:)();
  sub_10001F6B4(0, v6);
  (*(v3 + 8))(v2, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10040E0D4()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), *(v0 + 64));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100410B98(&qword_100834130, &type metadata accessor for DIPError);
  v2 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  swift_errorRetain();
  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 96) != 0;
  *(v0 + 16) = v2;
  *(v0 + 24) = v8;
  sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  AsyncStream.Continuation.yield(_:)();
  sub_10001F6B4(v2, v8);
  (*(v5 + 8))(v4, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10040E2DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v2[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v12 = type metadata accessor for WebPresentmentResponse();
  v2[24] = v12;
  v13 = *(v12 - 8);
  v2[25] = v13;
  v14 = *(v13 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v15 = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v2[28] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_10040E54C, v1, 0);
}

uint64_t sub_10040E54C()
{
  v135 = v0;
  v1 = *(v0 + 72);
  v2 = v1[16];
  *(v0 + 240) = v2;
  v3 = *(v0 + 232);
  if (v2)
  {
    v4 = *(v0 + 224);
    sub_10000BBC4(*(v0 + 64), *(v0 + 232), &qword_100843BC8, &qword_1006E21F0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *(v0 + 296) = EnumCaseMultiPayload;
    v6 = *(v0 + 232);
    v130 = EnumCaseMultiPayload;
    v132 = v2;
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(v0 + 168);
      v8 = *v6;
      swift_unknownObjectRetain();
      defaultLogger()();
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 168);
      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v134[0] = v16;
        *v15 = 136315138;
        *(v0 + 56) = v8;
        swift_errorRetain();
        sub_100007224(&qword_100833B90, &qword_1006D95C0);
        v17 = String.init<A>(describing:)();
        v19 = sub_100141FE4(v17, v18, v134);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v9, v10, "Received presentment error %s", v15, 0xCu);
        sub_10000BB78(v16);
      }

      v123 = *(v13 + 8);
      v123(v12, v14);
      v21 = *(v0 + 128);
      v20 = *(v0 + 136);
      v23 = *(v0 + 104);
      v22 = *(v0 + 112);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      swift_getErrorValue();
      v27 = *(v0 + 16);
      v26 = *(v0 + 24);
      v28 = *(v0 + 32);
      Error.dipErrorCode.getter();
      (*(v24 + 104))(v21, enum case for DIPError.Code.webPresentmentCancelled(_:), v25);
      (*(v24 + 56))(v21, 0, 1, v25);
      v29 = *(v23 + 48);
      sub_10000BBC4(v20, v22, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BBC4(v21, v22 + v29, &qword_10083B020, &unk_1006D8ED0);
      v30 = *(v24 + 48);
      if (v30(v22, 1, v25) == 1)
      {
        v31 = *(v0 + 136);
        v32 = *(v0 + 80);
        sub_10000BE18(*(v0 + 128), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v31, &qword_10083B020, &unk_1006D8ED0);
        if (v30(v22 + v29, 1, v32) == 1)
        {
          v33 = 0x4E41435F52455355;
          sub_10000BE18(*(v0 + 112), &qword_10083B020, &unk_1006D8ED0);
LABEL_26:
          v71 = 0xEE0044454C4C4543;
          goto LABEL_27;
        }
      }

      else
      {
        v64 = *(v0 + 80);
        sub_10000BBC4(*(v0 + 112), *(v0 + 120), &qword_10083B020, &unk_1006D8ED0);
        v65 = v30(v22 + v29, 1, v64);
        v67 = *(v0 + 128);
        v66 = *(v0 + 136);
        v68 = *(v0 + 120);
        if (v65 != 1)
        {
          v121 = *(v0 + 112);
          v85 = *(v0 + 88);
          v84 = *(v0 + 96);
          v86 = *(v0 + 80);
          (*(v85 + 32))(v84, v22 + v29, v86);
          sub_100410B98(&qword_100834B68, &type metadata accessor for DIPError.Code);
          v87 = dispatch thunk of static Equatable.== infix(_:_:)();
          v88 = *(v85 + 8);
          v88(v84, v86);
          sub_10000BE18(v67, &qword_10083B020, &unk_1006D8ED0);
          sub_10000BE18(v66, &qword_10083B020, &unk_1006D8ED0);
          v88(v68, v86);
          sub_10000BE18(v121, &qword_10083B020, &unk_1006D8ED0);
          if (v87)
          {
            v33 = 0x4E41435F52455355;
            goto LABEL_26;
          }

LABEL_16:
          v71 = 0xEE00444554524F42;
          v33 = 0x415F454349564544;
LABEL_27:
          v89 = *(v0 + 160);
          defaultLogger()();

          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.debug.getter();

          v92 = os_log_type_enabled(v90, v91);
          v94 = *(v0 + 152);
          v93 = *(v0 + 160);
          v95 = *(v0 + 144);
          if (v92)
          {
            v122 = *(v0 + 160);
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v134[0] = v97;
            *v96 = 136315138;

            v98 = sub_100141FE4(v33, v71, v134);

            *(v96 + 4) = v98;
            _os_log_impl(&_mh_execute_header, v90, v91, "Sending back caBLE failure reason %s", v96, 0xCu);
            sub_10000BB78(v97);

            v99 = v122;
          }

          else
          {

            v99 = v93;
          }

          v123(v99, v95);
          goto LABEL_38;
        }

        v69 = *(v0 + 80);
        v70 = *(v0 + 88);
        sub_10000BE18(*(v0 + 128), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v66, &qword_10083B020, &unk_1006D8ED0);
        (*(v70 + 8))(v68, v69);
      }

      sub_10000BE18(*(v0 + 112), &qword_100834B60, &qword_1006C0310);
      goto LABEL_16;
    }

    v44 = *(v0 + 208);
    v43 = *(v0 + 216);
    v46 = *(v0 + 192);
    v45 = *(v0 + 200);
    v47 = *(v0 + 184);
    (*(v45 + 32))(v43, v6, v46);
    swift_unknownObjectRetain();
    defaultLogger()();
    (*(v45 + 16))(v44, v43, v46);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v52 = *(v0 + 200);
    v51 = *(v0 + 208);
    v53 = *(v0 + 184);
    v54 = *(v0 + 192);
    v55 = *(v0 + 144);
    v56 = *(v0 + 152);
    if (v50)
    {
      v57 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v134[0] = v118;
      *v57 = 136315138;
      v120 = v55;
      v125 = v53;
      v58 = WebPresentmentResponse.responseData.getter();
      v60 = v59;
      v61 = Data.base64EncodedString(options:)(0);
      sub_10000B90C(v58, v60);
      v129 = *(v52 + 8);
      v129(v51, v54);
      v62 = sub_100141FE4(v61._countAndFlagsBits, v61._object, v134);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v48, v49, "Received presentment success %s", v57, 0xCu);
      sub_10000BB78(v118);

      v63 = *(v56 + 8);
      v63(v125, v120);
    }

    else
    {

      v129 = *(v52 + 8);
      v129(v51, v54);
      v63 = *(v56 + 8);
      v63(v53, v55);
    }

    v72 = *(v0 + 72);
    v74 = v72[18];
    v73 = v72[19];
    v76 = v72[20];
    v75 = v72[21];
    v77 = v72[22];
    if (v73 >> 60 == 15)
    {
      v78 = v77;
      sub_100410AD8(v74, v73, v76, v75);
    }

    else
    {
      if (v77)
      {
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;
        if (v79 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v81 == v82)
        {
          v83 = v77;
          sub_100410BE0(v74, v73, v76, v75);
        }

        else
        {
          v126 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v100 = v77;
          sub_100410BE0(v74, v73, v76, v75);

          if ((v126 & 1) == 0)
          {
            sub_100410AD8(v74, v73, v76, v75);

            goto LABEL_35;
          }
        }

        v101 = *(v0 + 216);
        v102 = *(v0 + 200);
        v127 = *(v0 + 192);
        v33 = WebPresentmentResponse.responseData.getter();
        v71 = v103;
        sub_100410AD8(v74, v73, v76, v75);

        v129(v101, v127);
LABEL_38:
        *(v0 + 248) = v33;
        *(v0 + 256) = v71;
        sub_10040F490(v33, v71, v130 == 1, (v0 + 48), v134);
        *(v0 + 264) = 0;
        *(v0 + 272) = v134[0];

        return _swift_task_switch(sub_10040F220, v132, 0);
      }

      sub_10000B8B8(v74, v73);
      sub_10000B8B8(v76, v75);
      sub_100410AD8(v74, v73, v76, v75);
    }

LABEL_35:
    v104 = *(v0 + 176);
    defaultLogger()();
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "RemoteWebPresentmentScannableCodeHandler has an unexpected combination of request and request type. This is unexpected, defaulting to responding with org-iso-mdoc protocol", v107, 2u);
    }

    v108 = *(v0 + 216);
    v109 = *(v0 + 192);
    v110 = *(v0 + 200);
    v111 = *(v0 + 176);
    v112 = *(v0 + 144);
    v113 = *(v0 + 152);

    v63(v111, v112);
    v33 = WebPresentmentResponse.responseData.getter();
    v71 = v114;
    v129(v108, v109);
    goto LABEL_38;
  }

  v34 = *(v0 + 208);
  v35 = *(v0 + 216);
  v115 = *(v0 + 184);
  v116 = *(v0 + 176);
  v117 = *(v0 + 168);
  v119 = *(v0 + 160);
  v124 = *(v0 + 136);
  v128 = *(v0 + 128);
  v131 = *(v0 + 120);
  v133 = *(v0 + 112);
  (*(*(v0 + 88) + 104))(*(v0 + 96), enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), *(v0 + 80));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100410B98(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v36 = v1[18];
  v37 = v1[19];
  v38 = v1[20];
  v39 = v1[21];
  *(v1 + 9) = xmmword_1006BF650;
  v1[20] = 0;
  v1[21] = 0;
  sub_100410AD8(v36, v37, v38, v39);
  v40 = v1[22];
  v1[22] = 0;

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10040F220()
{
  v0[36] = v0[34];
  v1 = v0[9];
  v2 = *(v0[30] + 112);
  dispatch thunk of ASCABLEAuthenticator.finishTransaction(credential:error:)();

  return _swift_task_switch(sub_10040F318, v1, 0);
}

uint64_t sub_10040F29C()
{
  v0[36] = v0[35];
  v1 = v0[9];
  v2 = *(v0[30] + 112);
  dispatch thunk of ASCABLEAuthenticator.finishTransaction(credential:error:)();

  return _swift_task_switch(sub_10040F318, v1, 0);
}

uint64_t sub_10040F318()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 184);
  v18 = *(v0 + 176);
  v19 = *(v0 + 168);
  v20 = *(v0 + 160);
  v21 = *(v0 + 136);
  v22 = *(v0 + 128);
  v23 = *(v0 + 120);
  v8 = *(v0 + 96);
  v24 = *(v0 + 112);
  v9 = *(v0 + 296) == 1;
  v10 = *(v0 + 72);
  sub_100410B28(*(v0 + 288), *(v0 + 264) != 0);
  swift_unknownObjectRelease();
  sub_100410B88(v2, v1, v9);
  v11 = v10[18];
  v12 = v10[19];
  v13 = v10[20];
  v14 = v10[21];
  *(v10 + 9) = xmmword_1006BF650;
  v10[20] = 0;
  v10[21] = 0;
  sub_100410AD8(v11, v12, v13, v14);
  v15 = v10[22];
  v10[22] = 0;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10040F490@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v50 = a4;
  v47 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v53 = a3;
  v15 = a3 & 1;
  sub_100410C30(a1, a2, v15);
  defaultLogger()();
  sub_100410C30(a1, a2, v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v54 = a2;
  sub_100410B88(a1, a2, v15);
  LODWORD(v48) = v17;
  v18 = os_log_type_enabled(v16, v17);
  v51 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v58 = v20;
    *v19 = 136315138;
    v55 = a1;
    v56 = v54;
    v57 = v15;
    sub_100410C30(a1, v54, v15);
    v21 = String.init<A>(describing:)();
    v23 = sub_100141FE4(v21, v22, &v58);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v48, "Constructed command response %s", v19, 0xCu);
    sub_10000BB78(v20);

    v48 = *(v51 + 8);
  }

  else
  {

    v48 = *(v9 + 8);
  }

  v48(v14, v8);
  v24 = type metadata accessor for JSONEncoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v55 = a1;
  v56 = v54;
  v27 = v53 & 1;
  v57 = v53 & 1;
  sub_100410B34();
  v28 = v52;
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v31 = v30;

  if (v28)
  {
    result = sub_100410B88(a1, v54, v27);
    *v50 = v28;
  }

  else
  {
    v33 = v49;
    defaultLogger()();
    sub_10000B8B8(v29, v31);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    sub_10000B90C(v29, v31);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v52 = v8;
      v37 = v36;
      v38 = swift_slowAlloc();
      v55 = v38;
      *v37 = 136315138;
      v39 = Data.base64EncodedString(options:)(0);
      LODWORD(v50) = v35;
      v40 = sub_100141FE4(v39._countAndFlagsBits, v39._object, &v55);

      *(v37 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v50, "Encoded command response to JSON %s", v37, 0xCu);
      sub_10000BB78(v38);

      v41 = v52;
      v42 = v49;
    }

    else
    {

      v42 = v33;
      v41 = v8;
    }

    v48(v42, v41);
    v43 = objc_allocWithZone(ASCDigitalIdentityCredential);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v45 = [v43 initWithCommandResponseData:isa];

    sub_10000B90C(v29, v31);
    result = sub_100410B88(a1, v54, v53 & 1);
    *v47 = v45;
  }

  return result;
}

uint64_t sub_10040F924()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_100843BA0, &qword_1006E1F28);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10040FA4C, v0, 0);
}

uint64_t sub_10040FA4C()
{
  v1 = v0[11];
  v2 = v0[5];
  sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  AsyncStream.makeAsyncIterator()();
  v3 = sub_100410B98(&qword_100843BB0, type metadata accessor for RemoteWebPresentmentScannableCodeHandler);
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10040FB64;
  v6 = v0[11];
  v7 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v3, v7);
}

uint64_t sub_10040FB64()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10040FC74, v2, 0);
}

uint64_t sub_10040FC74()
{
  v1 = *(v0 + 24);
  if (v1 == 255)
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v7 + 104))(v5, enum case for DIPError.Code.webPresentmentCancelled(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100410B98(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  if (v1)
  {
    *(v0 + 32) = *(v0 + 16);
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    swift_willThrowTypedImpl();
    (*(v3 + 8))(v2, v4);
LABEL_5:
    v8 = *(v0 + 88);
    v9 = *(v0 + 64);

    v10 = *(v0 + 8);
    goto LABEL_7;
  }

  v11 = *(v0 + 64);
  (*(v3 + 8))(*(v0 + 88), *(v0 + 72));

  v10 = *(v0 + 8);
LABEL_7:

  return v10();
}

uint64_t sub_10040FEBC()
{
  v20 = v0;
  v1 = v0[3];
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  *(v1 + 9) = xmmword_1006BF650;
  v1[20] = 0;
  v1[21] = 0;
  sub_100410AD8(v2, v3, v4, v5);
  v6 = v1[22];
  v1[22] = 0;

  sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  AsyncStream.Continuation.finish()();
  v7 = OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask;
  if (*(v1 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask))
  {
    v8 = *(v1 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask);

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();

    v9 = *(v1 + v7);
  }

  *(v1 + v7) = 0;

  sub_10041017C(v0 + 2, v19);
  v0[4] = 0;
  v10 = v19[0];
  v11 = v19[0];
  v0[6] = 0;
  v0[7] = v11;
  v0[5] = v10;
  v12 = v0[3];
  v15 = *(v12 + 128);
  v13 = (v12 + 128);
  v14 = v15;
  v0[8] = v15;
  if (v15)
  {
    swift_unknownObjectRetain();

    return _swift_task_switch(sub_100410080, v14, 0);
  }

  else
  {
    sub_100410B28(v11, 0);
    v16 = *v13;
    *v13 = 0;
    v13[1] = 0;
    swift_unknownObjectRelease();
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100410080()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = *(v0[8] + 112);
  dispatch thunk of ASCABLEAuthenticator.finishTransaction(credential:error:)();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100410104, v3, 0);
}

uint64_t sub_100410104()
{
  v1 = v0[3];
  sub_100410B28(v0[7], v0[4] != 0);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10041017C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v46 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v42 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v44 = v5;
    v45 = v10;
    v41 = v6;
    v18 = v17;
    v49 = v17;
    *v16 = 136315138;
    v47 = xmmword_1006E1DD0;
    v48 = 1;
    v19 = String.init<A>(describing:)();
    v21 = sub_100141FE4(v19, v20, &v49);

    *(v16 + 4) = v21;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v13, v14, "Constructed command response %s", v16, 0xCu);
    sub_10000BB78(v18);
    v5 = v44;
    v10 = v45;
    v6 = v41;

    a1 = v42;
  }

  v43 = *(v6 + 8);
  v43(v12, v5);
  v22 = type metadata accessor for JSONEncoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v47 = xmmword_1006E1DD0;
  v48 = 1;
  sub_100410B34();
  v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v27 = v26;

  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    defaultLogger()();
    sub_10000B8B8(v25, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    sub_10000B90C(v25, v27);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v44 = v5;
      v32 = v31;
      v42 = swift_slowAlloc();
      *&v47 = v42;
      *v32 = 136315138;
      v33 = Data.base64EncodedString(options:)(0);
      v34 = sub_100141FE4(v33._countAndFlagsBits, v33._object, &v47);
      v45 = v10;
      v35 = v34;

      *(v32 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Encoded command response to JSON %s", v32, 0xCu);
      sub_10000BB78(v42);

      v37 = v44;
      v36 = v45;
    }

    else
    {

      v36 = v10;
      v37 = v5;
    }

    v43(v36, v37);
    v38 = objc_allocWithZone(ASCDigitalIdentityCredential);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v40 = [v38 initWithCommandResponseData:isa];

    result = sub_10000B90C(v25, v27);
    *v46 = v40;
  }

  return result;
}

uint64_t sub_100410578()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);
  swift_unknownObjectRelease();
  sub_100410AD8(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  v3 = OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionStream;
  v4 = sub_100007224(&qword_100843BA8, &unk_1006E1F30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionContinuation;
  v6 = sub_100007224(&qword_100843BB8, &unk_1006E2BF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC8coreidvd40RemoteWebPresentmentScannableCodeHandler_completionTask);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RemoteWebPresentmentScannableCodeHandler()
{
  result = qword_100843AC8;
  if (!qword_100843AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004106D0()
{
  sub_100410808(319, &qword_100843AD8, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100410808(319, &unk_100843AE8, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100410808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10000B870(&qword_100843AE0, &qword_1006E1EC0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100410874(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_10040B774(a1, a2);
}

uint64_t sub_100410920(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_10040E2DC(a1);
}

uint64_t sub_1004109B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027B9C;

  return sub_10040FE9C();
}

uint64_t sub_100410A48()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027B9C;

  return sub_10040F924();
}

uint64_t sub_100410AD8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_10000B90C(result, a2);

    return sub_10000B90C(a3, a4);
  }

  return result;
}

uint64_t sub_100410B28(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

unint64_t sub_100410B34()
{
  result = qword_100843BC0;
  if (!qword_100843BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843BC0);
  }

  return result;
}

uint64_t sub_100410B88(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_10000B90C(a1, a2);
  }
}

uint64_t sub_100410B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100410BE0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_10000B8B8(result, a2);

    return sub_10000B8B8(a3, a4);
  }

  return result;
}

uint64_t sub_100410C30(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_10000B8B8(a1, a2);
  }
}

uint64_t sub_100410C40()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100410C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_10040DD58(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100410D50()
{
  result = qword_100843BD0;
  if (!qword_100843BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843BD0);
  }

  return result;
}

unint64_t sub_100410DA4()
{
  result = qword_100843BD8;
  if (!qword_100843BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100843BD8);
  }

  return result;
}

uint64_t sub_100410DF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 968) = a6;
  *(v6 + 960) = a5;
  *(v6 + 1976) = a4;
  *(v6 + 952) = a3;
  *(v6 + 944) = a2;
  v7 = type metadata accessor for Logger();
  *(v6 + 976) = v7;
  v8 = *(v7 - 8);
  *(v6 + 984) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 992) = swift_task_alloc();
  v10 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  *(v6 + 1000) = v10;
  v11 = *(v10 - 8);
  *(v6 + 1008) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 1016) = swift_task_alloc();
  v13 = type metadata accessor for MobileDocumentProviderRecord.RecordSource(0);
  *(v6 + 1024) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v6 + 1032) = swift_task_alloc();
  v15 = *(type metadata accessor for MobileDocumentProviderRecord(0) - 8);
  *(v6 + 1040) = v15;
  *(v6 + 1048) = *(v15 + 64);
  *(v6 + 1056) = swift_task_alloc();
  *(v6 + 1064) = swift_task_alloc();
  *(v6 + 1072) = swift_task_alloc();
  v16 = type metadata accessor for MobileDocumentProviderUserSelection();
  *(v6 + 1080) = v16;
  v17 = *(v16 - 8);
  *(v6 + 1088) = v17;
  *(v6 + 1096) = *(v17 + 64);
  *(v6 + 1104) = swift_task_alloc();
  *(v6 + 1112) = swift_task_alloc();
  *(v6 + 1120) = swift_task_alloc();
  *(v6 + 1128) = swift_task_alloc();
  v18 = sub_100007224(&qword_100843CE0, &qword_1006E2060);
  *(v6 + 1136) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v6 + 1144) = swift_task_alloc();
  v20 = type metadata accessor for ImmediateWebPresentmentRequestReleaser(0);
  *(v6 + 1152) = v20;
  v21 = *(v20 - 8);
  *(v6 + 1160) = v21;
  *(v6 + 1168) = *(v21 + 64);
  *(v6 + 1176) = swift_task_alloc();
  *(v6 + 1184) = swift_task_alloc();
  v22 = type metadata accessor for PartialWebPresentmentRequest();
  *(v6 + 1192) = v22;
  v23 = *(v22 - 8);
  *(v6 + 1200) = v23;
  *(v6 + 1208) = *(v23 + 64);
  *(v6 + 1216) = swift_task_alloc();
  *(v6 + 1224) = swift_task_alloc();
  v24 = type metadata accessor for WebPresentmentRequest();
  *(v6 + 1232) = v24;
  v25 = *(v24 - 8);
  *(v6 + 1240) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 1248) = swift_task_alloc();
  v27 = type metadata accessor for URL();
  *(v6 + 1256) = v27;
  v28 = *(v27 - 8);
  *(v6 + 1264) = v28;
  *(v6 + 1272) = *(v28 + 64);
  *(v6 + 1280) = swift_task_alloc();
  v29 = type metadata accessor for WebPresentmentResponse();
  *(v6 + 1288) = v29;
  v30 = *(v29 - 8);
  *(v6 + 1296) = v30;
  *(v6 + 1304) = *(v30 + 64);
  *(v6 + 1312) = swift_task_alloc();
  *(v6 + 1320) = swift_task_alloc();
  v31 = type metadata accessor for DIPError.Code();
  *(v6 + 1328) = v31;
  v32 = *(v31 - 8);
  *(v6 + 1336) = v32;
  v33 = *(v32 + 64) + 15;
  *(v6 + 1344) = swift_task_alloc();
  v34 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  *(v6 + 1352) = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  *(v6 + 1360) = swift_task_alloc();
  *(v6 + 1368) = swift_task_alloc();
  v36 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  *(v6 + 1376) = swift_task_alloc();
  *(v6 + 1384) = swift_task_alloc();
  *(v6 + 1392) = swift_task_alloc();
  *(v6 + 1400) = swift_task_alloc();
  *(v6 + 1408) = swift_task_alloc();
  *(v6 + 1416) = swift_task_alloc();
  v37 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  *(v6 + 1424) = v37;
  v38 = *(v37 - 8);
  *(v6 + 1432) = v38;
  v39 = *(v38 + 64) + 15;
  *(v6 + 1440) = swift_task_alloc();
  *(v6 + 1448) = swift_task_alloc();
  v40 = *(*(sub_100007224(&qword_100843CE8, &qword_1006E2068) - 8) + 64) + 15;
  *(v6 + 1456) = swift_task_alloc();
  v41 = sub_100007224(&qword_100843CF0, &qword_1006E2070);
  *(v6 + 1464) = v41;
  v42 = *(v41 - 8);
  *(v6 + 1472) = v42;
  v43 = *(v42 + 64) + 15;
  *(v6 + 1480) = swift_task_alloc();
  v44 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  *(v6 + 1488) = v44;
  v45 = *(v44 - 8);
  *(v6 + 1496) = v45;
  *(v6 + 1504) = *(v45 + 64);
  *(v6 + 1512) = swift_task_alloc();
  *(v6 + 1520) = swift_task_alloc();
  *(v6 + 1528) = swift_task_alloc();
  v46 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  *(v6 + 1536) = swift_task_alloc();
  *(v6 + 1544) = swift_task_alloc();
  *(v6 + 1552) = swift_task_alloc();
  *(v6 + 1560) = swift_task_alloc();
  *(v6 + 1568) = swift_task_alloc();
  *(v6 + 1576) = swift_task_alloc();
  *(v6 + 1584) = swift_task_alloc();
  *(v6 + 1592) = swift_task_alloc();
  *(v6 + 1600) = swift_task_alloc();
  *(v6 + 1608) = swift_task_alloc();
  *(v6 + 1616) = swift_task_alloc();
  *(v6 + 1624) = swift_task_alloc();
  *(v6 + 1632) = swift_task_alloc();
  *(v6 + 1640) = swift_task_alloc();
  *(v6 + 1648) = swift_task_alloc();
  *(v6 + 1656) = swift_task_alloc();
  *(v6 + 1664) = swift_task_alloc();
  *(v6 + 1672) = swift_task_alloc();
  *(v6 + 1680) = swift_task_alloc();
  *(v6 + 1688) = swift_task_alloc();
  *(v6 + 1696) = swift_task_alloc();
  v47 = sub_100007224(&qword_100843D00, &qword_1006E2088);
  *(v6 + 1704) = v47;
  v48 = *(v47 - 8);
  *(v6 + 1712) = v48;
  v49 = *(v48 + 64) + 15;
  *(v6 + 1720) = swift_task_alloc();
  v50 = sub_100007224(&qword_100843D08, &qword_1006E2090);
  *(v6 + 1728) = v50;
  v51 = *(v50 - 8);
  *(v6 + 1736) = v51;
  *(v6 + 1744) = *(v51 + 64);
  *(v6 + 1752) = swift_task_alloc();
  *(v6 + 1760) = swift_task_alloc();
  *(v6 + 1768) = swift_task_alloc();
  *(v6 + 1776) = swift_task_alloc();
  *(v6 + 1784) = swift_task_alloc();
  *(v6 + 1792) = swift_task_alloc();
  *(v6 + 1800) = swift_task_alloc();

  return _swift_task_switch(sub_10041179C, 0, 0);
}

uint64_t sub_10041179C()
{
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1712);
  v4 = *(v0 + 1704);
  v5 = *(v0 + 1696);
  v6 = *(v0 + 1496);
  v7 = *(v0 + 1424);
  v8 = *(v0 + 1976);
  v9 = *(*(v0 + 1728) + 48);
  *(v0 + 1960) = v9;
  (*(v3 + 104))(v2, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v4);
  v58 = v1;
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v3 + 8))(v2, v4);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(*(v10 - 8) + 56);
  v11(v5, 1, 1, v10);
  if (v8)
  {
    v56 = v11;
    v12 = *(v0 + 1528);
    v52 = v9;
    v50 = *(v0 + 1696);
    v51 = *(v0 + 1504);
    v13 = *(v0 + 1496);
    v14 = *(v0 + 1488);
    v47 = v12;
    v48 = *(v0 + 952);
    v49 = *(v0 + 944);
    sub_100020260(*(v0 + 968), v0 + 176);
    v53 = *(v6 + 16);
    v15 = v58 + v9;
    v16 = v14;
    v53(v12, v15, v14);
    v17 = *(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v48;
    sub_10001F358((v0 + 176), (v18 + 40));
    v20 = *(v13 + 32);
    v19 = v13 + 32;
    v20(&v18[(v17 + 80) & ~v17], v47, v16);

    sub_100455670(v50, &unk_1006E20A0, v18);
    sub_10000BE18(v50, &unk_100845860, &unk_1006BF9D0);
    v56(v50, 1, 1, v10);
    v53(v47, v58 + v52, v16);
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = v48;
    v20(&v21[(v17 + 40) & ~v17], v47, v16);

    sub_100455670(v50, &unk_1006E20B0, v21);
    sub_10000BE18(v50, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    v22 = *(v0 + 1528);
    v23 = *(v0 + 1504);
    v24 = *(v0 + 1496);
    v25 = *(v0 + 1488);
    v55 = *(v0 + 1696);
    v57 = *(v0 + 960);
    v26 = *(v0 + 952);
    v54 = *(v0 + 944);
    sub_100020260(*(v0 + 968), v0 + 16);
    (*(v6 + 16))(v22, v58 + v9, v25);
    v27 = (*(v6 + 80) + 80) & ~*(v6 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v26;
    sub_10001F358((v0 + 16), (v28 + 40));
    v29 = *(v24 + 32);
    v19 = v24 + 32;
    v29(&v28[v27], v22, v25);

    sub_100455670(v55, &unk_1006E21C8, v28);
    sub_10000BE18(v55, &unk_100845860, &unk_1006BF9D0);
    sub_100417700(v57, v54, v58 + v9);
  }

  *(v0 + 1808) = v19;
  v30 = *(v0 + 1800);
  v31 = *(v0 + 1480);
  v32 = *(v0 + 1136);
  v33 = swift_allocBox();
  v35 = v34;
  *(v0 + 1816) = v33;
  *(v0 + 1824) = v34;
  v36 = sub_100007224(&qword_100843D10, &qword_1006E20B8);
  *(v0 + 1832) = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  *(v0 + 1840) = v38;
  *(v0 + 1848) = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v38(v35, 1, 1, v36);
  v39 = swift_allocObject();
  *(v0 + 1856) = v39;
  *(v39 + 16) = 0;
  v40 = swift_allocObject();
  *(v0 + 1864) = v40;
  *(v40 + 16) = 0;
  sub_100007224(&qword_100843D18, &qword_1006E20C0);
  AsyncThrowingStream.makeAsyncIterator()();
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 1964) = enum case for DIPError.Code.webPresentmentCancelled(_:);
  *(v0 + 1977) = 0;
  v41 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v42 = swift_task_alloc();
  *(v0 + 1872) = v42;
  *v42 = v0;
  v42[1] = sub_100411D34;
  v43 = *(v0 + 1480);
  v44 = *(v0 + 1464);
  v45 = *(v0 + 1456);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v45, 0, 0, v44, v0 + 912);
}

uint64_t sub_100411D34()
{
  v2 = *(*v1 + 1872);
  v5 = *v1;
  *(*v1 + 1880) = v0;

  if (v0)
  {
    v3 = sub_100415378;
  }

  else
  {
    v3 = sub_100411E48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100411E48()
{
  v1 = *(v0 + 1456);
  if ((*(*(v0 + 1432) + 48))(v1, 1, *(v0 + 1424)) == 1)
  {
    goto LABEL_2;
  }

  sub_10041FEAC(v1, *(v0 + 1448), type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload != 10)
        {
LABEL_2:
          v2 = *(v0 + 1864);
          v3 = *(v0 + 1856);
          v4 = *(v0 + 1816);
          (*(*(v0 + 1472) + 8))(*(v0 + 1480), *(v0 + 1464));

LABEL_3:
          v5 = *(v0 + 1800);
          v6 = *(v0 + 1792);
          v7 = *(v0 + 1784);
          v8 = *(v0 + 1776);
          v9 = *(v0 + 1768);
          v10 = *(v0 + 1760);
          v11 = *(v0 + 1752);
          v12 = *(v0 + 1720);
          v13 = *(v0 + 1696);
          v306 = *(v0 + 1688);
          v307 = *(v0 + 1680);
          v308 = *(v0 + 1672);
          v309 = *(v0 + 1664);
          v310 = *(v0 + 1656);
          v311 = *(v0 + 1648);
          v312 = *(v0 + 1640);
          v313 = *(v0 + 1632);
          v314 = *(v0 + 1624);
          v316 = *(v0 + 1616);
          v318 = *(v0 + 1608);
          v320 = *(v0 + 1600);
          v322 = *(v0 + 1592);
          v324 = *(v0 + 1584);
          v326 = *(v0 + 1576);
          v328 = *(v0 + 1568);
          v330 = *(v0 + 1560);
          v332 = *(v0 + 1552);
          v334 = *(v0 + 1544);
          v336 = *(v0 + 1536);
          v338 = *(v0 + 1528);
          v14 = **(v0 + 944);
          v315 = *(v0 + 1520);
          v317 = *(v0 + 1512);
          v319 = *(v0 + 1480);
          v321 = *(v0 + 1456);
          v323 = *(v0 + 1448);
          v325 = *(v0 + 1440);
          v327 = *(v0 + 1416);
          v329 = *(v0 + 1408);
          v331 = *(v0 + 1400);
          v333 = *(v0 + 1392);
          v335 = *(v0 + 1384);
          v337 = *(v0 + 1376);
          v339 = *(v0 + 1368);
          v340 = *(v0 + 1360);
          v341 = *(v0 + 1344);
          v343 = *(v0 + 1320);
          v345 = *(v0 + 1312);
          v348 = *(v0 + 1280);
          v352 = *(v0 + 1248);
          v355 = *(v0 + 1224);
          v359 = *(v0 + 1216);
          v364 = *(v0 + 1184);
          v367 = *(v0 + 1176);
          v372 = *(v0 + 1144);
          v377 = *(v0 + 1128);
          v382 = *(v0 + 1120);
          v387 = *(v0 + 1112);
          v392 = *(v0 + 1104);
          v397 = *(v0 + 1072);
          v401 = *(v0 + 1064);
          v406 = *(v0 + 1056);
          v411 = *(v0 + 1032);
          v418 = *(v0 + 1016);
          v429 = *(v0 + 992);
          DiscardingTaskGroup.cancelAll()();
          sub_10000BE18(v5, &qword_100843D08, &qword_1006E2090);

          v15 = *(v0 + 8);

          return v15();
        }

        if (*(*(v0 + 1864) + 16))
        {
          v54 = *(v0 + 1960);
          v55 = *(v0 + 1800);
          v56 = *(v0 + 1488);
          (*(*(v0 + 1336) + 104))(*(v0 + 1344), *(v0 + 1964), *(v0 + 1328));
          type metadata accessor for DIPError();
          sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError);
          v57 = swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          *(v0 + 928) = v57;
          AsyncThrowingStream.Continuation.finish(throwing:)();
        }

        goto LABEL_122;
      }

      v94 = *(v0 + 1800);
      v95 = *(v0 + 1784);
      v96 = *(v0 + 1744);
      v97 = *(v0 + 1736);
      v98 = *(v0 + 1656);
      v99 = *(v0 + 1648);
      v100 = *(v0 + 952);
      v101 = type metadata accessor for TaskPriority();
      v102 = *(v101 - 8);
      v408 = *(v102 + 56);
      v408(v98, 1, 1, v101);
      sub_10000BBC4(v94, v95, &qword_100843D08, &qword_1006E2090);
      v103 = (*(v97 + 80) + 40) & ~*(v97 + 80);
      v104 = swift_allocObject();
      v104[2] = 0;
      v105 = v104 + 2;
      v104[3] = 0;
      v104[4] = v100;
      sub_1004201F8(v95, v104 + v103);
      sub_10000BBC4(v98, v99, &unk_100845860, &unk_1006BF9D0);
      v399 = *(v102 + 48);
      LODWORD(v99) = v399(v99, 1, v101);

      v106 = *(v0 + 1648);
      v384 = v102;
      if (v99 == 1)
      {
        sub_10000BE18(v106, &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v102 + 8))(v106, v101);
      }

      if (*v105)
      {
        v148 = v104[3];
        v149 = *v105;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v150 = dispatch thunk of Actor.unownedExecutor.getter();
        v152 = v151;
        swift_unknownObjectRelease();
      }

      else
      {
        v150 = 0;
        v152 = 0;
      }

      v436 = **(v0 + 944);
      v203 = swift_allocObject();
      *(v203 + 16) = &unk_1006E2150;
      *(v203 + 24) = v104;

      v425 = v101;
      if (v152 | v150)
      {
        v204 = v0 + 416;
        *(v0 + 416) = 0;
        *(v0 + 424) = 0;
        *(v0 + 432) = v150;
        *(v0 + 440) = v152;
      }

      else
      {
        v204 = 0;
      }

      v396 = *(v0 + 1808);
      v347 = *(v0 + 1656);
      v209 = *(v0 + 1640);
      v357 = *(v0 + 1800);
      v210 = *(v0 + 1520);
      v375 = *(v0 + 1960);
      v381 = *(v0 + 1504);
      v211 = *(v0 + 1496);
      v212 = *(v0 + 1488);
      v213 = *(v0 + 1280);
      v366 = *(v0 + 1632);
      v370 = *(v0 + 1272);
      v214 = *(v0 + 1264);
      v215 = *(v0 + 1256);
      v342 = v215;
      v350 = *(v0 + 960);
      v362 = *(v0 + 952);
      *(v0 + 576) = 1;
      *(v0 + 584) = v204;
      *(v0 + 592) = v436;
      swift_task_create();

      sub_10000BE18(v347, &unk_100845860, &unk_1006BF9D0);
      v408(v209, 1, 1, v425);
      (*(v214 + 16))(v213, v350, v215);
      v216 = *(v211 + 16);
      v211 += 16;
      v217 = v357 + v375;
      v376 = v216;
      v216(v210, v217, v212);
      v218 = (*(v214 + 80) + 40) & ~*(v214 + 80);
      v219 = (v370 + *(v211 + 64) + v218) & ~*(v211 + 64);
      v391 = *(v211 + 64);
      v220 = swift_allocObject();
      *(v220 + 2) = 0;
      *(v220 + 3) = 0;
      *(v220 + 4) = v362;
      (*(v214 + 32))(&v220[v218], v213, v342);
      v371 = *(v211 + 16);
      v371(&v220[v219], v210, v212);
      sub_10000BBC4(v209, v366, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v210) = v399(v366, 1, v425);

      v221 = *(v0 + 1632);
      if (v210 == 1)
      {
        sub_10000BE18(*(v0 + 1632), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v384 + 8))(v221, v425);
      }

      if (*(v220 + 2))
      {
        v222 = *(v220 + 3);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v223 = dispatch thunk of Actor.unownedExecutor.getter();
        v225 = v224;
        swift_unknownObjectRelease();
      }

      else
      {
        v223 = 0;
        v225 = 0;
      }

      v226 = swift_allocObject();
      *(v226 + 16) = &unk_1006E2168;
      *(v226 + 24) = v220;

      if (v225 | v223)
      {
        v227 = v0 + 544;
        *(v0 + 544) = 0;
        *(v0 + 552) = 0;
        *(v0 + 560) = v223;
        *(v0 + 568) = v225;
      }

      else
      {
        v227 = 0;
      }

      v351 = *(v0 + 1800);
      v354 = *(v0 + 1960);
      v228 = *(v0 + 1640);
      v229 = *(v0 + 1624);
      v230 = *(v0 + 1616);
      v231 = *(v0 + 1512);
      v232 = *(v0 + 1488);
      v358 = *(v0 + 1504);
      v363 = *(v0 + 952);
      *(v0 + 672) = 1;
      *(v0 + 680) = v227;
      *(v0 + 688) = v436;
      swift_task_create();

      sub_10000BE18(v228, &unk_100845860, &unk_1006BF9D0);
      v408(v229, 1, 1, v425);
      v376(v231, v351 + v354, v232);
      v233 = swift_allocObject();
      v233[2] = 0;
      v234 = v233 + 2;
      v233[3] = 0;
      v233[4] = v363;
      v371(v233 + ((v391 + 40) & ~v391), v231, v232);
      sub_10000BBC4(v229, v230, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v230) = v399(v230, 1, v425);

      v235 = *(v0 + 1616);
      if (v230 == 1)
      {
        sub_10000BE18(*(v0 + 1616), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v384 + 8))(v235, v425);
      }

      if (*v234)
      {
        v236 = v233[3];
        v237 = *v234;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v238 = dispatch thunk of Actor.unownedExecutor.getter();
        v240 = v239;
        swift_unknownObjectRelease();
      }

      else
      {
        v238 = 0;
        v240 = 0;
      }

      v241 = swift_allocObject();
      *(v241 + 16) = &unk_1006E2180;
      *(v241 + 24) = v233;

      if (v240 | v238)
      {
        v242 = v0 + 512;
        *(v0 + 512) = 0;
        *(v0 + 520) = 0;
        *(v0 + 528) = v238;
        *(v0 + 536) = v240;
      }

      else
      {
        v242 = 0;
      }

      v243 = *(v0 + 1624);
      *(v0 + 720) = 1;
      *(v0 + 728) = v242;
      *(v0 + 736) = v436;
      swift_task_create();

      goto LABEL_121;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v68 = *(v0 + 1792);
      v413 = *(v0 + 1856);
      v420 = *(v0 + 1744);
      v69 = *(v0 + 1672);
      v393 = *(v0 + 1736);
      v431 = *(v0 + 1664);
      v70 = *(v0 + 1320);
      v71 = *(v0 + 1312);
      v378 = v71;
      v383 = *(v0 + 1800);
      v388 = *(v0 + 1304);
      v72 = *(v0 + 1296);
      v73 = *(v0 + 1288);
      v74 = *(v72 + 32);
      v407 = *(v0 + 952);
      v74(v70, *(v0 + 1448), v73);
      v75 = type metadata accessor for TaskPriority();
      v76 = *(v75 - 8);
      (*(v76 + 56))(v69, 1, 1, v75);
      (*(v72 + 16))(v71, v70, v73);
      sub_10000BBC4(v383, v68, &qword_100843D08, &qword_1006E2090);
      v77 = (*(v72 + 80) + 48) & ~*(v72 + 80);
      v78 = (v388 + *(v393 + 80) + v77) & ~*(v393 + 80);
      v79 = swift_allocObject();
      v79[2] = 0;
      v421 = v79 + 2;
      v79[3] = 0;
      v79[4] = v413;
      v79[5] = v407;
      v74(v79 + v77, v378, v73);
      sub_1004201F8(v68, v79 + v78);
      sub_10000BBC4(v69, v431, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v78) = (*(v76 + 48))(v431, 1, v75);

      v80 = *(v0 + 1664);
      if (v78 == 1)
      {
        sub_10000BE18(*(v0 + 1664), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v76 + 8))(v80, v75);
      }

      if (*v421)
      {
        v142 = v79[3];
        v143 = *v421;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v144 = dispatch thunk of Actor.unownedExecutor.getter();
        v146 = v145;
        swift_unknownObjectRelease();
      }

      else
      {
        v144 = 0;
        v146 = 0;
      }

      v200 = **(v0 + 944);
      v201 = swift_allocObject();
      *(v201 + 16) = &unk_1006E2198;
      *(v201 + 24) = v79;

      if (v146 | v144)
      {
        v202 = v0 + 480;
        *(v0 + 480) = 0;
        *(v0 + 488) = 0;
        *(v0 + 496) = v144;
        *(v0 + 504) = v146;
      }

      else
      {
        v202 = 0;
      }

      v205 = *(v0 + 1672);
      v206 = *(v0 + 1320);
      v207 = *(v0 + 1296);
      v208 = *(v0 + 1288);
      *(v0 + 768) = 1;
      *(v0 + 776) = v202;
      *(v0 + 784) = v200;
      goto LABEL_102;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v31 = *(v0 + 1964);
      v32 = *(v0 + 1416);
      v33 = *(v0 + 1408);
      v34 = *(v0 + 1368);
      v35 = *(v0 + 1352);
      v36 = *(v0 + 1336);
      v37 = *(v0 + 1328);
      v38 = **(v0 + 1448);
      swift_getErrorValue();
      v39 = *(v0 + 792);
      v40 = *(v0 + 800);
      v41 = *(v0 + 808);
      Error.dipErrorCode.getter();
      (*(v36 + 104))(v33, v31, v37);
      (*(v36 + 56))(v33, 0, 1, v37);
      v42 = *(v35 + 48);
      sub_10000BBC4(v32, v34, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BBC4(v33, v34 + v42, &qword_10083B020, &unk_1006D8ED0);
      v43 = *(v36 + 48);
      if (v43(v34, 1, v37) == 1)
      {
        v44 = *(v0 + 1416);
        v45 = *(v0 + 1328);
        sub_10000BE18(*(v0 + 1408), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v44, &qword_10083B020, &unk_1006D8ED0);
        if (v43(v34 + v42, 1, v45) == 1)
        {
          sub_10000BE18(*(v0 + 1368), &qword_10083B020, &unk_1006D8ED0);
LABEL_115:

          goto LABEL_122;
        }
      }

      else
      {
        v434 = v38;
        v158 = *(v0 + 1328);
        sub_10000BBC4(*(v0 + 1368), *(v0 + 1400), &qword_10083B020, &unk_1006D8ED0);
        v159 = v43(v34 + v42, 1, v158);
        v160 = *(v0 + 1416);
        v161 = *(v0 + 1408);
        v162 = *(v0 + 1400);
        if (v159 != 1)
        {
          v426 = *(v0 + 1368);
          v274 = *(v0 + 1344);
          v275 = *(v0 + 1336);
          v276 = *(v0 + 1328);
          (*(v275 + 32))(v274, v34 + v42, v276);
          sub_10041FE64(&qword_100834B68, &type metadata accessor for DIPError.Code);
          v277 = dispatch thunk of static Equatable.== infix(_:_:)();
          v278 = *(v275 + 8);
          v278(v274, v276);
          sub_10000BE18(v161, &qword_10083B020, &unk_1006D8ED0);
          sub_10000BE18(v160, &qword_10083B020, &unk_1006D8ED0);
          v278(v162, v276);
          sub_10000BE18(v426, &qword_10083B020, &unk_1006D8ED0);
          if (v277)
          {
            goto LABEL_115;
          }

          goto LABEL_57;
        }

        v163 = *(v0 + 1336);
        v164 = *(v0 + 1328);
        sub_10000BE18(*(v0 + 1408), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v160, &qword_10083B020, &unk_1006D8ED0);
        (*(v163 + 8))(v162, v164);
        v38 = v434;
      }

      sub_10000BE18(*(v0 + 1368), &qword_100834B60, &qword_1006C0310);
LABEL_57:
      v165 = *(v0 + 1856);
      v166 = *(v0 + 1688);
      v167 = *(v0 + 1680);
      v168 = *(v0 + 968);
      v169 = *(v0 + 952);
      v170 = type metadata accessor for TaskPriority();
      v171 = *(v170 - 8);
      (*(v171 + 56))(v166, 1, 1, v170);
      sub_100020260(v168, v0 + 216);
      v172 = swift_allocObject();
      v172[2] = 0;
      v173 = v172 + 2;
      v172[3] = 0;
      sub_10001F358((v0 + 216), (v172 + 4));
      v172[9] = v38;
      v172[10] = v169;
      v172[11] = v165;
      sub_10000BBC4(v166, v167, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v167) = (*(v171 + 48))(v167, 1, v170);

      swift_errorRetain();

      v174 = *(v0 + 1680);
      if (v167 == 1)
      {
        sub_10000BE18(*(v0 + 1680), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v171 + 8))(v174, v170);
      }

      if (*v173)
      {
        v250 = v172[3];
        v251 = *v173;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v252 = dispatch thunk of Actor.unownedExecutor.getter();
        v254 = v253;
        swift_unknownObjectRelease();
      }

      else
      {
        v252 = 0;
        v254 = 0;
      }

      v279 = **(v0 + 944);
      v280 = swift_allocObject();
      *(v280 + 16) = &unk_1006E21B0;
      *(v280 + 24) = v172;

      if (v254 | v252)
      {
        v281 = v0 + 448;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0;
        *(v0 + 464) = v252;
        *(v0 + 472) = v254;
      }

      else
      {
        v281 = 0;
      }

      v243 = *(v0 + 1688);
      *(v0 + 864) = 1;
      *(v0 + 872) = v281;
      *(v0 + 880) = v279;
      swift_task_create();

LABEL_121:
      sub_10000BE18(v243, &unk_100845860, &unk_1006BF9D0);
      goto LABEL_122;
    }

    v120 = **(v0 + 1448);
    if (*(v0 + 1977) == 1)
    {
      v121 = *(v0 + 1964);
      v122 = *(v0 + 1392);
      v123 = *(v0 + 1384);
      v124 = *(v0 + 1360);
      v125 = *(v0 + 1352);
      v126 = *(v0 + 1336);
      v127 = *(v0 + 1328);
      v128 = **(v0 + 1448);
      swift_getErrorValue();
      v129 = *(v0 + 744);
      v130 = *(v0 + 752);
      v131 = *(v0 + 760);
      Error.dipErrorCode.getter();
      (*(v126 + 104))(v123, v121, v127);
      (*(v126 + 56))(v123, 0, 1, v127);
      v132 = *(v125 + 48);
      sub_10000BBC4(v122, v124, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BBC4(v123, v124 + v132, &qword_10083B020, &unk_1006D8ED0);
      v133 = *(v126 + 48);
      if (v133(v124, 1, v127) == 1)
      {
        v134 = *(v0 + 1392);
        v135 = *(v0 + 1328);
        sub_10000BE18(*(v0 + 1384), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v134, &qword_10083B020, &unk_1006D8ED0);
        if (v133(v124 + v132, 1, v135) == 1)
        {
          sub_10000BE18(*(v0 + 1360), &qword_10083B020, &unk_1006D8ED0);
LABEL_135:

          v282 = 1;
          goto LABEL_123;
        }

        goto LABEL_108;
      }

      v255 = *(v0 + 1328);
      sub_10000BBC4(*(v0 + 1360), *(v0 + 1376), &qword_10083B020, &unk_1006D8ED0);
      v256 = v133(v124 + v132, 1, v255);
      v257 = *(v0 + 1392);
      v258 = *(v0 + 1384);
      v259 = *(v0 + 1376);
      if (v256 == 1)
      {
        v260 = *(v0 + 1336);
        v261 = *(v0 + 1328);
        sub_10000BE18(*(v0 + 1384), &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v257, &qword_10083B020, &unk_1006D8ED0);
        (*(v260 + 8))(v259, v261);
LABEL_108:
        sub_10000BE18(*(v0 + 1360), &qword_100834B60, &qword_1006C0310);
        goto LABEL_109;
      }

      v437 = *(v0 + 1360);
      v302 = *(v0 + 1344);
      v303 = *(v0 + 1336);
      v304 = *(v0 + 1328);
      (*(v303 + 32))(v302, v124 + v132, v304);
      sub_10041FE64(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v428 = dispatch thunk of static Equatable.== infix(_:_:)();
      v305 = *(v303 + 8);
      v305(v302, v304);
      sub_10000BE18(v258, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v257, &qword_10083B020, &unk_1006D8ED0);
      v305(v259, v304);
      sub_10000BE18(v437, &qword_10083B020, &unk_1006D8ED0);
      if (v428)
      {
        goto LABEL_135;
      }
    }

LABEL_109:
    v262 = *(v0 + 1864);
    v263 = *(v0 + 1856);
    v264 = *(v0 + 1816);
    v265 = *(v0 + 1480);
    v266 = *(v0 + 1472);
    v267 = *(v0 + 1464);
    swift_willThrow();
    (*(v266 + 8))(v265, v267);
    goto LABEL_110;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v18 = *(v0 + 1592);
        v19 = *(v0 + 1128);
        v20 = *(v0 + 1120);
        v398 = v20;
        v402 = *(v0 + 1096);
        v21 = *(v0 + 1088);
        v22 = *(v0 + 1080);
        v23 = *(v0 + 968);
        v419 = *(v0 + 952);
        v430 = *(v0 + 1584);
        v412 = *(v21 + 32);
        v412(v19, *(v0 + 1448), v22);
        v24 = type metadata accessor for TaskPriority();
        v25 = *(v24 - 8);
        (*(v25 + 56))(v18, 1, 1, v24);
        (*(v21 + 16))(v20, v19, v22);
        sub_100020260(v23, v0 + 136);
        v26 = (*(v21 + 80) + 40) & ~*(v21 + 80);
        v27 = swift_allocObject();
        v27[2] = 0;
        v28 = v27 + 2;
        v27[3] = 0;
        v27[4] = v419;
        v412(v27 + v26, v398, v22);
        sub_10001F358((v0 + 136), v27 + ((v402 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
        sub_10000BBC4(v18, v430, &unk_100845860, &unk_1006BF9D0);
        v29 = (*(v25 + 48))(v430, 1, v24);

        v30 = *(v0 + 1584);
        if (v29 == 1)
        {
          sub_10000BE18(*(v0 + 1584), &unk_100845860, &unk_1006BF9D0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v25 + 8))(v30, v24);
        }

        if (*v28)
        {
          v153 = v27[3];
          v154 = *v28;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v155 = dispatch thunk of Actor.unownedExecutor.getter();
          v157 = v156;
          swift_unknownObjectRelease();
        }

        else
        {
          v155 = 0;
          v157 = 0;
        }

        v244 = **(v0 + 944);
        v245 = swift_allocObject();
        *(v245 + 16) = &unk_1006E2120;
        *(v245 + 24) = v27;

        if (v157 | v155)
        {
          v246 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v155;
          *(v0 + 376) = v157;
        }

        else
        {
          v246 = 0;
        }

        v205 = *(v0 + 1592);
        v206 = *(v0 + 1128);
        v207 = *(v0 + 1088);
        v208 = *(v0 + 1080);
        *(v0 + 888) = 1;
        *(v0 + 896) = v246;
        *(v0 + 904) = v244;
      }

      else
      {
        v107 = *(v0 + 1768);
        v368 = v107;
        v389 = *(v0 + 1736);
        v108 = *(v0 + 1576);
        v422 = *(v0 + 1568);
        v433 = *(v0 + 1864);
        v109 = *(v0 + 1112);
        v110 = *(v0 + 1104);
        v373 = v110;
        v379 = *(v0 + 1800);
        v385 = *(v0 + 1096);
        v111 = *(v0 + 1088);
        v112 = *(v0 + 1080);
        v113 = *(v0 + 968);
        v409 = *(v0 + 952);
        v414 = *(v0 + 1744);
        v403 = *(v111 + 32);
        v403(v109, *(v0 + 1448), v112);
        v114 = type metadata accessor for TaskPriority();
        v394 = *(v114 - 8);
        (*(v394 + 56))(v108, 1, 1, v114);
        (*(v111 + 16))(v110, v109, v112);
        sub_10000BBC4(v379, v107, &qword_100843D08, &qword_1006E2090);
        sub_100020260(v113, v0 + 96);
        v115 = (*(v111 + 80) + 40) & ~*(v111 + 80);
        v116 = (v385 + *(v389 + 80) + v115) & ~*(v389 + 80);
        v117 = (v414 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
        v118 = swift_allocObject();
        v118[2] = 0;
        v415 = v118 + 2;
        v118[3] = 0;
        v118[4] = v409;
        v403(v118 + v115, v373, v112);
        sub_1004201F8(v368, v118 + v116);
        sub_10001F358((v0 + 96), v118 + v117);
        *(v118 + ((v117 + 47) & 0xFFFFFFFFFFFFFFF8)) = v433;
        sub_10000BBC4(v108, v422, &unk_100845860, &unk_1006BF9D0);
        LODWORD(v117) = (*(v394 + 48))(v422, 1, v114);

        v119 = *(v0 + 1568);
        if (v117 == 1)
        {
          sub_10000BE18(*(v0 + 1568), &unk_100845860, &unk_1006BF9D0);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v394 + 8))(v119, v114);
        }

        if (*v415)
        {
          v175 = v118[3];
          v176 = *v415;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v177 = dispatch thunk of Actor.unownedExecutor.getter();
          v179 = v178;
          swift_unknownObjectRelease();
        }

        else
        {
          v177 = 0;
          v179 = 0;
        }

        v247 = **(v0 + 944);
        v248 = swift_allocObject();
        *(v248 + 16) = &unk_1006E2108;
        *(v248 + 24) = v118;

        if (v179 | v177)
        {
          v249 = v0 + 320;
          *(v0 + 320) = 0;
          *(v0 + 328) = 0;
          *(v0 + 336) = v177;
          *(v0 + 344) = v179;
        }

        else
        {
          v249 = 0;
        }

        v205 = *(v0 + 1576);
        v206 = *(v0 + 1112);
        v207 = *(v0 + 1088);
        v208 = *(v0 + 1080);
        *(v0 + 624) = 1;
        *(v0 + 632) = v249;
        *(v0 + 640) = v247;
      }

LABEL_102:
      swift_task_create();

      sub_10000BE18(v205, &unk_100845860, &unk_1006BF9D0);
      (*(v207 + 8))(v206, v208);
LABEL_122:
      v282 = *(v0 + 1977);
LABEL_123:
      *(v0 + 1977) = v282;
      v283 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v284 = swift_task_alloc();
      *(v0 + 1872) = v284;
      *v284 = v0;
      v284[1] = sub_100411D34;
      v285 = *(v0 + 1480);
      v286 = *(v0 + 1464);
      v287 = *(v0 + 1456);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v287, 0, 0, v286, v0 + 912);
    }

    v58 = *(v0 + 1880);
    v59 = *(v0 + 1224);
    v60 = *(v0 + 952);
    (*(*(v0 + 1240) + 32))(*(v0 + 1248), *(v0 + 1448), *(v0 + 1232));
    v61 = v60[26];
    sub_10000BA08(v60 + 22, v60[25]);
    dispatch thunk of PartialWebPresentmentRequestParsing.parseRequest(_:)();
    v62 = *(v0 + 1864);
    if (!v58)
    {
      v353 = *(v0 + 1840);
      v356 = *(v0 + 1848);
      v180 = *(v0 + 1832);
      v344 = v180;
      v360 = *(v0 + 1824);
      v369 = *(v0 + 1776);
      v374 = *(v0 + 1800);
      v390 = *(v0 + 1736);
      v404 = *(v0 + 1744);
      v410 = *(v0 + 1600);
      v181 = *(v0 + 1224);
      v349 = v181;
      v416 = *(v0 + 1216);
      v182 = *(v0 + 1200);
      v365 = v182;
      v183 = *(v0 + 1192);
      v184 = *(v0 + 1184);
      v424 = *(v0 + 1176);
      v435 = *(v0 + 1608);
      v380 = *(v0 + 1208);
      v386 = *(v0 + 1160);
      v185 = *(v0 + 1152);
      v186 = *(v0 + 1144);
      v395 = *(v0 + 1168);
      v400 = *(v0 + 952);
      (*(*(v0 + 1240) + 16))(v184, *(v0 + 1248), *(v0 + 1232));
      v187 = (v186 + *(v180 + 48));
      v188 = *(v182 + 16);
      v189 = v181;
      v190 = v183;
      v346 = v183;
      v188(v186, v189, v183);
      v187[3] = v185;
      v187[4] = &off_1008101F8;
      v191 = sub_100032DBC(v187);
      sub_100420720(v184, v191, type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      v353(v186, 0, 1, v344);
      sub_100420D14(v186, v360);
      v192 = type metadata accessor for TaskPriority();
      v361 = *(v192 - 8);
      (*(v361 + 56))(v435, 1, 1, v192);
      v188(v416, v349, v190);
      sub_10000BBC4(v374, v369, &qword_100843D08, &qword_1006E2090);
      sub_100420720(v184, v424, type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      v193 = (*(v365 + 80) + 40) & ~*(v365 + 80);
      v194 = (v380 + v193 + 7) & 0xFFFFFFFFFFFFFFF8;
      v195 = (*(v390 + 80) + v194 + 8) & ~*(v390 + 80);
      v196 = (v404 + *(v386 + 80) + v195) & ~*(v386 + 80);
      v197 = swift_allocObject();
      v197[2] = 0;
      v405 = v197 + 2;
      v197[3] = 0;
      v197[4] = v400;
      (*(v365 + 32))(v197 + v193, v416, v346);
      *(v197 + v194) = v62;
      v198 = v192;
      sub_1004201F8(v369, v197 + v195);
      sub_10041FEAC(v424, v197 + v196, type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      sub_10000BBC4(v435, v410, &unk_100845860, &unk_1006BF9D0);
      LODWORD(v192) = (*(v361 + 48))(v410, 1, v192);

      v199 = *(v0 + 1600);
      if (v192 == 1)
      {
        sub_10000BE18(*(v0 + 1600), &unk_100845860, &unk_1006BF9D0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v361 + 8))(v199, v198);
      }

      if (*v405)
      {
        v288 = v197[3];
        v289 = *v405;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v290 = dispatch thunk of Actor.unownedExecutor.getter();
        v292 = v291;
        swift_unknownObjectRelease();
      }

      else
      {
        v290 = 0;
        v292 = 0;
      }

      v293 = **(v0 + 944);
      v294 = swift_allocObject();
      *(v294 + 16) = &unk_1006E2138;
      *(v294 + 24) = v197;

      if (v292 | v290)
      {
        v295 = v0 + 384;
        *(v0 + 384) = 0;
        *(v0 + 392) = 0;
        *(v0 + 400) = v290;
        *(v0 + 408) = v292;
      }

      else
      {
        v295 = 0;
      }

      v296 = *(v0 + 1608);
      v297 = *(v0 + 1240);
      v417 = *(v0 + 1232);
      v427 = *(v0 + 1248);
      v298 = *(v0 + 1224);
      v299 = *(v0 + 1200);
      v300 = *(v0 + 1192);
      v301 = *(v0 + 1184);
      *(v0 + 600) = 1;
      *(v0 + 608) = v295;
      *(v0 + 616) = v293;
      swift_task_create();

      sub_10000BE18(v296, &unk_100845860, &unk_1006BF9D0);
      sub_1004211E0(v301, type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      (*(v299 + 8))(v298, v300);
      (*(v297 + 8))(v427, v417);
      goto LABEL_122;
    }

    v63 = *(v0 + 1856);
    v64 = *(v0 + 1816);
    v65 = *(v0 + 1480);
    v66 = *(v0 + 1472);
    v67 = *(v0 + 1464);
    (*(*(v0 + 1240) + 8))(*(v0 + 1248), *(v0 + 1232));
    (*(v66 + 8))(v65, v67);
LABEL_110:

    v268 = *(v0 + 992);
    defaultLogger()();
    swift_errorRetain();
    v269 = Logger.logObject.getter();
    v270 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      *v271 = 138412290;
      swift_errorRetain();
      v273 = _swift_stdlib_bridgeErrorToNSError();
      *(v271 + 4) = v273;
      *v272 = v273;
      _os_log_impl(&_mh_execute_header, v269, v270, "Terminal failure during CTAP flow: %@", v271, 0xCu);
      sub_10000BE18(v272, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v81 = *(v0 + 1072);
    v82 = *(v0 + 1032);
    v83 = *(v0 + 1024);
    sub_10041FEAC(*(v0 + 1448), v81, type metadata accessor for MobileDocumentProviderRecord);
    sub_100420720(v81, v82, type metadata accessor for MobileDocumentProviderRecord.RecordSource);
    v84 = swift_getEnumCaseMultiPayload();
    v85 = *(v0 + 1960);
    v86 = *(v0 + 1800);
    v432 = *(v0 + 1488);
    v87 = *(v0 + 1440);
    v88 = *(v0 + 1424);
    v89 = *(v0 + 1072);
    v90 = *(v0 + 1032);
    v91 = *(v0 + 1016);
    v92 = *(v0 + 1000);
    v93 = (*(v0 + 1008) + 8);
    if (v84 == 1)
    {
      *v87 = *(v90 + *(sub_100007224(&unk_100844370, &unk_1006DDF00) + 48));
      swift_storeEnumTagMultiPayload();
      AsyncThrowingStream.Continuation.yield(_:)();
      (*v93)(v91, v92);
      sub_1004211E0(v89, type metadata accessor for MobileDocumentProviderRecord);
    }

    else
    {
      v423 = *(sub_100007224(&unk_100844380, &unk_1006DDD60) + 48);
      sub_100420720(v89, v87, type metadata accessor for MobileDocumentProviderRecord);
      swift_storeEnumTagMultiPayload();
      AsyncThrowingStream.Continuation.yield(_:)();
      (*v93)(v91, v92);
      sub_1004211E0(v89, type metadata accessor for MobileDocumentProviderRecord);
      sub_10000BE18(v90 + v423, &qword_10083ACF8, &qword_1006D8FC0);
    }

    v147 = type metadata accessor for BundleRecord();
    (*(*(v147 - 8) + 8))(v90, v147);
    goto LABEL_122;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v46 = *(v0 + 952);
    *(v0 + 1888) = **(v0 + 1448);
    v47 = *(v46 + 376);
    *(v0 + 1896) = v47;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v48 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 1904) = v48;
    v49 = *(v48 - 8);
    v50 = v49;
    *(v0 + 1912) = v49;
    v51 = *(v49 + 72);
    *(v0 + 1968) = *(v50 + 80);
    v52 = swift_allocObject();
    *(v0 + 1920) = v52;
    *(v52 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.firstPartySelection.getter();
    v53 = sub_100414A58;
  }

  else
  {
    v136 = *(v0 + 952);
    sub_10041FEAC(*(v0 + 1448), *(v0 + 1064), type metadata accessor for MobileDocumentProviderRecord);
    v47 = *(v136 + 376);
    *(v0 + 1928) = v47;
    sub_100007224(&qword_10083C008, &qword_1006DA4E0);
    v137 = type metadata accessor for DIPSignpost.Config();
    *(v0 + 1936) = v137;
    v138 = *(v137 - 8);
    v139 = v138;
    *(v0 + 1944) = v138;
    v140 = *(v138 + 72);
    *(v0 + 1972) = *(v139 + 80);
    v141 = swift_allocObject();
    *(v0 + 1952) = v141;
    *(v141 + 16) = xmmword_1006BF520;
    static DaemonSignposts.WebPresentment.thirdPartySelection.getter();
    v53 = sub_100414EB0;
  }

  return _swift_task_switch(v53, v47, 0);
}

uint64_t sub_100414A58()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1904);
  v4 = *(v0 + 1896);
  v5 = (*(v0 + 1968) + 32) & ~*(v0 + 1968);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100414B1C, 0, 0);
}

uint64_t sub_100414B1C()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1760);
  v28 = *(v0 + 1744);
  v29 = *(v0 + 1888);
  v4 = *(v0 + 1736);
  v5 = *(v0 + 1560);
  v30 = *(v0 + 1552);
  v6 = *(v0 + 968);
  v7 = *(v0 + 952);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v5, 1, 1, v8);
  sub_100020260(v6, v0 + 56);
  sub_10000BBC4(v2, v3, &qword_100843D08, &qword_1006E2090);
  v10 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v12 = v11 + 2;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v7;
  v11[6] = v29;
  sub_10001F358((v0 + 56), (v11 + 7));
  sub_1004201F8(v3, v11 + v10);
  sub_10000BBC4(v5, v30, &unk_100845860, &unk_1006BF9D0);
  LODWORD(v5) = (*(v9 + 48))(v30, 1, v8);

  v13 = *(v0 + 1552);
  if (v5 == 1)
  {
    sub_10000BE18(*(v0 + 1552), &unk_100845860, &unk_1006BF9D0);
    if (*v12)
    {
LABEL_3:
      v14 = v11[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v9 + 8))(v13, v8);
    if (*v12)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = **(v0 + 944);
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1006E20E8;
  *(v19 + 24) = v11;

  if (v17 | v15)
  {
    v20 = v0 + 288;
    *(v0 + 288) = 0;
    *(v0 + 296) = 0;
    *(v0 + 304) = v15;
    *(v0 + 312) = v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + 1560);
  *(v0 + 648) = 1;
  *(v0 + 656) = v20;
  *(v0 + 664) = v18;
  swift_task_create();

  sub_10000BE18(v21, &unk_100845860, &unk_1006BF9D0);
  *(v0 + 1977) = 1;
  v22 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v23 = swift_task_alloc();
  *(v0 + 1872) = v23;
  *v23 = v0;
  v23[1] = sub_100411D34;
  v24 = *(v0 + 1480);
  v25 = *(v0 + 1464);
  v26 = *(v0 + 1456);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v26, 0, 0, v25, v0 + 912);
}

uint64_t sub_100414EB0()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1944);
  v3 = *(v0 + 1936);
  v4 = *(v0 + 1928);
  v5 = (*(v0 + 1972) + 32) & ~*(v0 + 1972);
  sub_10051ACBC(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v3);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100414F74, 0, 0);
}

uint64_t sub_100414F74()
{
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1752);
  v30 = *(v0 + 1736);
  v3 = *(v0 + 1544);
  v33 = v3;
  v34 = *(v0 + 1816);
  v35 = *(v0 + 1536);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1056);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 1040);
  v31 = *(v0 + 1744);
  v32 = *(v0 + 952);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  sub_100420720(v4, v5, type metadata accessor for MobileDocumentProviderRecord);
  sub_10000BBC4(v1, v2, &qword_100843D08, &qword_1006E2090);
  v10 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v11 = (v6 + *(v30 + 80) + v10) & ~*(v30 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v13 = v12 + 2;
  v12[3] = 0;
  v12[4] = v34;
  v12[5] = v32;
  sub_10041FEAC(v5, v12 + v10, type metadata accessor for MobileDocumentProviderRecord);
  sub_1004201F8(v2, v12 + v11);
  sub_10000BBC4(v33, v35, &unk_100845860, &unk_1006BF9D0);
  LODWORD(v11) = (*(v9 + 48))(v35, 1, v8);

  v14 = *(v0 + 1536);
  if (v11 == 1)
  {
    sub_10000BE18(*(v0 + 1536), &unk_100845860, &unk_1006BF9D0);
    if (*v13)
    {
LABEL_3:
      v15 = v12[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v9 + 8))(v14, v8);
    if (*v13)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = **(v0 + 944);
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1006E20D0;
  *(v20 + 24) = v12;

  if (v18 | v16)
  {
    v21 = v0 + 256;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = v16;
    *(v0 + 280) = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 1544);
  v23 = *(v0 + 1064);
  *(v0 + 696) = 1;
  *(v0 + 704) = v21;
  *(v0 + 712) = v19;
  swift_task_create();

  sub_10000BE18(v22, &unk_100845860, &unk_1006BF9D0);
  sub_1004211E0(v23, type metadata accessor for MobileDocumentProviderRecord);
  v24 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v25 = swift_task_alloc();
  *(v0 + 1872) = v25;
  *v25 = v0;
  v25[1] = sub_100411D34;
  v26 = *(v0 + 1480);
  v27 = *(v0 + 1464);
  v28 = *(v0 + 1456);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v28, 0, 0, v27, v0 + 912);
}

uint64_t sub_100415378()
{
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1816);
  (*(*(v0 + 1472) + 8))(*(v0 + 1480), *(v0 + 1464));

  v4 = *(v0 + 912);
  v5 = *(v0 + 992);
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Terminal failure during CTAP flow: %@", v8, 0xCu);
    sub_10000BE18(v9, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));
  v11 = *(v0 + 1800);
  v12 = *(v0 + 1792);
  v13 = *(v0 + 1784);
  v14 = *(v0 + 1776);
  v15 = *(v0 + 1768);
  v16 = *(v0 + 1760);
  v17 = *(v0 + 1752);
  v18 = *(v0 + 1720);
  v19 = *(v0 + 1696);
  v23 = *(v0 + 1688);
  v24 = *(v0 + 1680);
  v25 = *(v0 + 1672);
  v26 = *(v0 + 1664);
  v27 = *(v0 + 1656);
  v28 = *(v0 + 1648);
  v29 = *(v0 + 1640);
  v30 = *(v0 + 1632);
  v31 = *(v0 + 1624);
  v33 = *(v0 + 1616);
  v35 = *(v0 + 1608);
  v37 = *(v0 + 1600);
  v39 = *(v0 + 1592);
  v41 = *(v0 + 1584);
  v43 = *(v0 + 1576);
  v45 = *(v0 + 1568);
  v47 = *(v0 + 1560);
  v49 = *(v0 + 1552);
  v51 = *(v0 + 1544);
  v53 = *(v0 + 1536);
  v55 = *(v0 + 1528);
  v20 = **(v0 + 944);
  v32 = *(v0 + 1520);
  v34 = *(v0 + 1512);
  v36 = *(v0 + 1480);
  v38 = *(v0 + 1456);
  v40 = *(v0 + 1448);
  v42 = *(v0 + 1440);
  v44 = *(v0 + 1416);
  v46 = *(v0 + 1408);
  v48 = *(v0 + 1400);
  v50 = *(v0 + 1392);
  v52 = *(v0 + 1384);
  v54 = *(v0 + 1376);
  v56 = *(v0 + 1368);
  v57 = *(v0 + 1360);
  v58 = *(v0 + 1344);
  v59 = *(v0 + 1320);
  v60 = *(v0 + 1312);
  v61 = *(v0 + 1280);
  v62 = *(v0 + 1248);
  v63 = *(v0 + 1224);
  v64 = *(v0 + 1216);
  v65 = *(v0 + 1184);
  v66 = *(v0 + 1176);
  v67 = *(v0 + 1144);
  v68 = *(v0 + 1128);
  v69 = *(v0 + 1120);
  v70 = *(v0 + 1112);
  v71 = *(v0 + 1104);
  v72 = *(v0 + 1072);
  v73 = *(v0 + 1064);
  v74 = *(v0 + 1056);
  v75 = *(v0 + 1032);
  v76 = *(v0 + 1016);
  v77 = *(v0 + 992);
  DiscardingTaskGroup.cancelAll()();
  sub_10000BE18(v11, &qword_100843D08, &qword_1006E2090);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100415914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v7 = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v6[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v6[15] = v9;
  v10 = *(v9 - 8);
  v6[16] = v10;
  v11 = *(v10 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v13 = type metadata accessor for WebPresentmentAnalyticsReporter.QRScanResult();
  v6[21] = v13;
  v14 = *(v13 - 8);
  v6[22] = v14;
  v15 = *(v14 + 64) + 15;
  v6[23] = swift_task_alloc();

  return _swift_task_switch(sub_100415AC0, 0, 0);
}

uint64_t sub_100415AC0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[9];
  v5 = v4[3];
  v6 = v4[4];
  sub_10000BA08(v4, v5);
  (*(v2 + 104))(v1, enum case for WebPresentmentAnalyticsReporter.QRScanResult.error(_:), v3);
  v7 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendQRScanCompleted(result:)[1];
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_100415BB4;
  v9 = v0[23];

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendQRScanCompleted(result:)(v9, v5, v6);
}

uint64_t sub_100415BB4()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100415D0C, 0, 0);
}

uint64_t sub_100415D0C()
{
  v1 = v0[20];
  v2 = v0[10];
  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Error.dipErrorCode.getter();
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
LABEL_2:
    sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
    v8 = v0[12];
    swift_beginAccess();
    if (*(v8 + 16))
    {
      v9 = v0[23];
      v10 = v0[19];
      v11 = v0[20];
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[14];

      v15 = v0[1];

      return v15();
    }

    else
    {
      v28 = v0[13];
      v29 = v0[14];
      v31 = v0[10];
      v30 = v0[11];
      v32 = v30[5];
      v33 = v30[6];
      sub_10000BA08(v30 + 2, v32);
      *v29 = v31;
      swift_storeEnumTagMultiPayload();
      v34 = *(v33 + 16);
      swift_errorRetain();
      v44 = (v34 + *v34);
      v35 = v34[1];
      v36 = swift_task_alloc();
      v0[27] = v36;
      *v36 = v0;
      v36[1] = sub_1004168D8;
      v37 = v0[14];

      return v44(v37, v32, v33);
    }
  }

  v17 = v0[19];
  sub_10000BBC4(v0[20], v17, &qword_10083B020, &unk_1006D8ED0);
  v18 = (*(v7 + 88))(v17, v6);
  if (v18 == enum case for DIPError.Code.webPresentmentInvalidRequest(_:) || v18 == enum case for DIPError.Code.webPresentmentNoEligibleDocuments(_:))
  {
    v21 = v0[16];
    v20 = v0[17];
    v22 = v0[15];
    v23 = v0[11];
    sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
    v24 = sub_10000BA08((v23 + 136), *(v23 + 160));
    (*(v21 + 104))(v20, enum case for MobileDocumentProviderAuxiliaryView.noEligibleDocuments(_:), v22);
    v25 = *v24;
    v26 = swift_task_alloc();
    v0[26] = v26;
    *v26 = v0;
    v26[1] = sub_100416540;
    v27 = v0[17];
  }

  else
  {
    if (v18 != enum case for DIPError.Code.webPresentmentServiceUnavailable(_:))
    {
      (*(v7 + 8))(v0[19], v6);
      goto LABEL_2;
    }

    v38 = v0[18];
    v39 = v0[15];
    v40 = v0[16];
    v41 = sub_10000BA08((v0[11] + 136), *(v0[11] + 160));
    (*(v40 + 104))(v38, enum case for MobileDocumentProviderAuxiliaryView.serviceUnavailable(_:), v39);
    v42 = *v41;
    v43 = swift_task_alloc();
    v0[25] = v43;
    *v43 = v0;
    v43[1] = sub_100416190;
    v27 = v0[18];
  }

  return sub_1003FFB68(v27);
}

uint64_t sub_100416190()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  v5 = v2[18];
  v6 = v2[16];
  v7 = v2[15];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_100422584;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_100416328;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100416328()
{
  sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
  v1 = v0[12];
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = v0[23];
    v3 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[14];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[13];
    v11 = v0[14];
    v13 = v0[10];
    v12 = v0[11];
    v14 = v12[5];
    v15 = v12[6];
    sub_10000BA08(v12 + 2, v14);
    *v11 = v13;
    swift_storeEnumTagMultiPayload();
    v16 = *(v15 + 16);
    swift_errorRetain();
    v20 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_1004168D8;
    v19 = v0[14];

    return v20(v19, v14, v15);
  }
}

uint64_t sub_100416540()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;

  v5 = v2[17];
  v6 = v2[16];
  v7 = v2[15];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_10042257C;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1004166D8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1004166D8()
{
  v1 = v0[12];
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = v0[23];
    v3 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[14];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[13];
    v11 = v0[14];
    v13 = v0[10];
    v12 = v0[11];
    v14 = v12[5];
    v15 = v12[6];
    sub_10000BA08(v12 + 2, v14);
    *v11 = v13;
    swift_storeEnumTagMultiPayload();
    v16 = *(v15 + 16);
    swift_errorRetain();
    v20 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_1004168D8;
    v19 = v0[14];

    return v20(v19, v14, v15);
  }
}

uint64_t sub_1004168D8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 216);
  v5 = *v1;

  v6 = v2[14];
  if (v0)
  {

    sub_10000BE18(v6, &qword_100843BC8, &qword_1006E21F0);

    return _swift_task_switch(sub_100416AAC, 0, 0);
  }

  else
  {
    sub_10000BE18(v6, &qword_100843BC8, &qword_1006E21F0);
    v7 = v3[23];
    v9 = v3[19];
    v8 = v3[20];
    v11 = v3[17];
    v10 = v3[18];
    v12 = v3[14];

    v13 = *(v5 + 8);

    return v13();
  }
}

uint64_t sub_100416AAC()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100416B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v7 = type metadata accessor for Logger();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v6[12] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v12 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v6[14] = v12;
  v13 = *(v12 - 8);
  v6[15] = v13;
  v14 = *(v13 + 64) + 15;
  v6[16] = swift_task_alloc();
  v15 = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v6[17] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_100416CE8, 0, 0);
}

uint64_t sub_100416CE8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  swift_beginAccess();
  *(v5 + 16) = 1;
  v6 = v3[5];
  v7 = v3[6];
  sub_10000BA08(v3 + 2, v6);
  v8 = type metadata accessor for WebPresentmentResponse();
  (*(*(v8 - 8) + 16))(v1, v4, v8);
  swift_storeEnumTagMultiPayload();
  v9 = *(v7 + 16);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_100416E98;
  v12 = v0[18];

  return v14(v12, v6, v7);
}

uint64_t sub_100416E98()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_10000BE18(v3, &qword_100843BC8, &qword_1006E21F0);
  if (v0)
  {
    v4 = sub_1004170E0;
  }

  else
  {
    v4 = sub_100416FD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100416FD8()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[8];
  v5 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  v6 = v0[18];
  v7 = v0[13];
  v8 = v0[11];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004170E0()
{
  v1 = v0[20];
  v2 = v0[11];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "RemoteWebPresentmentScannableCodeManager unable to send response over scannable code handler: %@", v6, 0xCu);
    sub_10000BE18(v7, &unk_100833B50, &unk_1006D8FB0);
  }

  v9 = v0[20];
  v10 = v0[16];
  v12 = v0[12];
  v11 = v0[13];
  v14 = v0[10];
  v13 = v0[11];
  v16 = v0[8];
  v15 = v0[9];

  (*(v14 + 8))(v13, v15);
  v17 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
  *v11 = v9;
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  v18 = v0[18];
  v19 = v0[13];
  v20 = v0[11];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100417304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v5 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004173C4, 0, 0);
}

uint64_t sub_1004173C4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_10000BA08((v0[3] + 136), *(v0[3] + 160));
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderAuxiliaryView.connecting(_:), v3);
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1004174A4;
  v7 = v0[7];

  return sub_1003FFB68(v7);
}

uint64_t sub_1004174A4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_10041764C, 0, 0);
  }

  else
  {
    v7 = v6[7];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_10041764C()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
  v0[2] = v1;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100417700(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v37 = a3;
  v33 = a1;
  v3 = sub_100007224(&qword_100843CF8, &unk_1006E2078);
  v26 = v3;
  v4 = *(v3 - 8);
  v36 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  v28 = &v26 - v5;
  v7 = type metadata accessor for URL();
  v27 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v31 = type metadata accessor for TaskPriority();
  v14 = *(v31 - 8);
  v30 = *(v14 + 56);
  v32 = v14 + 56;
  v30(v13, 1, 1, v31);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v7);
  v33 = *(v4 + 16);
  v33(v6, v37, v3);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = *(v4 + 80);
  v29 = v16 | 7;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v34;
  *(v17 + 4) = v34;
  (*(v8 + 32))(&v17[v15], &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v19 = *(v4 + 32);
  v20 = &v17[(v9 + v16 + v15) & ~v16];
  v21 = v28;
  v22 = v26;
  v19(v20, v28, v26);

  sub_100455670(v13, &unk_1006E2250, v17);
  sub_10000BE18(v13, &unk_100845860, &unk_1006BF9D0);
  v30(v13, 1, 1, v31);
  v33(v21, v37, v22);
  v23 = (v16 + 40) & ~v16;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v18;
  v19(&v24[v23], v21, v22);

  sub_100455670(v13, &unk_1006E2258, v24);
  return sub_10000BE18(v13, &unk_100845860, &unk_1006BF9D0);
}

uint64_t sub_100417AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[11] = a3;
  v8 = type metadata accessor for DIPError.Code();
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v10 = *(v9 + 64) + 15;
  v7[18] = swift_task_alloc();
  v11 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v7[19] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[20] = swift_task_alloc();
  v13 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v7[21] = v13;
  v14 = *(v13 - 8);
  v7[22] = v14;
  v15 = *(v14 + 64) + 15;
  v7[23] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v7[24] = v16;
  v17 = *(v16 - 8);
  v7[25] = v17;
  v18 = *(v17 + 64) + 15;
  v7[26] = swift_task_alloc();
  v19 = *(*(sub_100007224(&qword_1008437B0, &unk_1006E1720) - 8) + 64) + 15;
  v7[27] = swift_task_alloc();
  v20 = type metadata accessor for MobileDocumentProviderRecord(0);
  v7[28] = v20;
  v21 = *(v20 - 8);
  v7[29] = v21;
  v22 = *(v21 + 64) + 15;
  v7[30] = swift_task_alloc();

  return _swift_task_switch(sub_100417D14, 0, 0);
}

uint64_t sub_100417D14()
{
  v1 = v0[11];
  v2 = v1[15];
  v3 = v1[16];
  sub_10000BA08(v1 + 12, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_100417E44;
  v7 = v0[12];

  return v9(v7, v2, v3);
}

uint64_t sub_100417E44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v7 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v5 = sub_1004186A8;
  }

  else
  {
    v5 = sub_100417F58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100417F58()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v5 = *sub_10000BA08((v0[11] + 256), *(v0[11] + 280));
  sub_100473D74(v1, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[26];
    v7 = v0[24];
    v8 = v0[25];
    v9 = v0[12];
    sub_10000BE18(v0[27], &qword_1008437B0, &unk_1006E1720);
    PartialWebPresentmentRequest.originatingURL.getter();
    v10 = URL.host.getter();
    v12 = v11;
    v0[34] = v11;
    (*(v8 + 8))(v6, v7);
    if (v12)
    {
      v13 = v0[15];
      v14 = sub_10000BA08((v0[11] + 136), *(v0[11] + 160));
      v0[5] = type metadata accessor for ImmediateWebPresentmentRequestReleaser(0);
      v0[6] = &off_1008101F8;
      v15 = sub_100032DBC(v0 + 2);
      sub_100420720(v13, v15, type metadata accessor for ImmediateWebPresentmentRequestReleaser);
      v16 = *v14;
      v17 = swift_task_alloc();
      v0[35] = v17;
      *v17 = v0;
      v17[1] = sub_1004183F0;
      v18 = v0[32];

      return sub_1003FF244(v18, v10, v12, (v0 + 2));
    }

    v29 = v0[32];
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[16];

    (*(v31 + 104))(v30, enum case for DIPError.Code.webPresentmentMissingHost(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError);
    v33 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v34 = v0[14];
    LODWORD(v32) = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
    v0[10] = v33;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v20 = v0[32];
    v21 = v0[30];
    v22 = v0[27];
    v24 = v0[22];
    v23 = v0[23];
    v25 = v0[20];
    v42 = v0[21];
    v26 = v0[19];
    v27 = v0[13];
    v28 = v0[14];

    sub_10041FEAC(v22, v21, type metadata accessor for MobileDocumentProviderRecord);
    swift_beginAccess();
    *(v27 + 16) = 1;
    LODWORD(v22) = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
    sub_100420720(v21, v25, type metadata accessor for MobileDocumentProviderRecord);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v24 + 8))(v23, v42);
    sub_1004211E0(v21, type metadata accessor for MobileDocumentProviderRecord);
  }

  v35 = v0[30];
  v36 = v0[26];
  v37 = v0[27];
  v38 = v0[23];
  v39 = v0[20];
  v40 = v0[18];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1004183F0()
{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {
    v4 = v3[34];
    v5 = v3[32];

    return _swift_task_switch(sub_1004185AC, 0, 0);
  }

  else
  {
    v6 = v3[34];
    v7 = v3[32];

    sub_10000BB78(v3 + 2);
    v8 = v3[30];
    v10 = v3[26];
    v9 = v3[27];
    v11 = v3[23];
    v12 = v3[20];
    v13 = v3[18];

    v14 = v3[1];

    return v14();
  }
}

uint64_t sub_1004185AC()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[36];
  v2 = v0[14];
  v3 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
  v0[10] = v1;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004186A8()
{
  v1 = v0[33];
  v2 = v0[14];
  v3 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
  v0[10] = v1;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10041879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v6 = *(*(sub_100007224(&qword_1008437B0, &unk_1006E1720) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderRecord(0);
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100418898, 0, 0);
}

uint64_t sub_100418898()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[15];
  v4 = v1[16];
  sub_10000BA08(v1 + 12, v3);
  v5 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
  v7 = v6;
  v0[9] = v6;
  v8 = *(v4 + 16);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1004189EC;
  v11 = v0[5];

  return v13(v11, v5, v7, v3, v4);
}

uint64_t sub_1004189EC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100418B04, 0, 0);
}

uint64_t sub_100418B04()
{
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
LABEL_8:
    v11 = v0[8];
    v12 = v0[5];

    v13 = v0[1];

    return v13();
  }

  sub_10041FEAC(v1, v0[8], type metadata accessor for MobileDocumentProviderRecord);
  v2 = sub_100330A28();
  v0[11] = v3;
  if (!v3)
  {
    sub_1004211E0(v0[8], type metadata accessor for MobileDocumentProviderRecord);
    goto LABEL_8;
  }

  v4 = v2;
  v5 = v3;
  v6 = v0[4];
  v7 = v6[3];
  v8 = v6[4];
  sub_10000BA08(v6, v7);
  v9 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)[1];
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_100418CB4;

  return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerOptionSelected(bundleIdentifier:)(v4, v5, v7, v8);
}

uint64_t sub_100418CB4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100418DCC, 0, 0);
}

uint64_t sub_100418DCC()
{
  sub_1004211E0(v0[8], type metadata accessor for MobileDocumentProviderRecord);
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100418E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  v8 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v7[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v10 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v7[13] = v10;
  v11 = *(v10 - 8);
  v7[14] = v11;
  v12 = *(v11 + 64) + 15;
  v7[15] = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  v7[16] = v13;
  v14 = *(v13 - 8);
  v7[17] = v14;
  v15 = *(v14 + 64) + 15;
  v7[18] = swift_task_alloc();
  v16 = *(*(sub_100007224(&qword_1008437B0, &unk_1006E1720) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v17 = type metadata accessor for MobileDocumentProviderRecord(0);
  v7[20] = v17;
  v18 = *(v17 - 8);
  v7[21] = v18;
  v19 = *(v18 + 64) + 15;
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_100419048, 0, 0);
}

uint64_t sub_100419048()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v1[15];
  v4 = v1[16];
  sub_10000BA08(v1 + 12, v3);
  v5 = MobileDocumentProviderUserSelection.recordIdentifier.getter();
  v7 = v6;
  v0[23] = v6;
  v8 = *(v4 + 16);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_10041919C;
  v11 = v0[19];

  return v13(v11, v5, v7, v3, v4);
}

uint64_t sub_10041919C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_1004192B4, 0, 0);
}

uint64_t sub_1004192B4()
{
  v1 = v0[19];
  if ((*(v0[21] + 48))(v1, 1, v0[20]) == 1)
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[16];
    v5 = v0[8];
    sub_10000BE18(v1, &qword_1008437B0, &unk_1006E1720);
    v6 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
    (*(v3 + 104))(v2, enum case for DIPError.Code.webPresentmentMissingRecord(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError);
    v7 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v0[5] = v7;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    v8 = v0[22];
    v9 = v0[18];
    v10 = v0[19];
    v11 = v0[15];
    v12 = v0[12];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[9];
    sub_10041FEAC(v1, v0[22], type metadata accessor for MobileDocumentProviderRecord);
    v16 = v15[3];
    v17 = v15[4];
    sub_10000BA08(v15, v16);
    v18 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()[1];
    v19 = swift_task_alloc();
    v0[25] = v19;
    *v19 = v0;
    v19[1] = sub_10041959C;

    return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerContinued()(v16, v17);
  }
}

uint64_t sub_10041959C()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_100419698, 0, 0);
}

uint64_t sub_100419698()
{
  v1 = v0[22];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  swift_beginAccess();
  *(v7 + 16) = 0;
  LODWORD(v7) = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
  sub_100420720(v1, v5, type metadata accessor for MobileDocumentProviderRecord);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  sub_1004211E0(v1, type metadata accessor for MobileDocumentProviderRecord);
  v9 = v0[22];
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[15];
  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10041980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v7[15] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v10 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v7[17] = v10;
  v11 = *(v10 - 8);
  v7[18] = v11;
  v12 = *(v11 + 64) + 15;
  v7[19] = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  v7[20] = v13;
  v14 = *(v13 - 8);
  v7[21] = v14;
  v15 = *(v14 + 64) + 15;
  v7[22] = swift_task_alloc();
  v16 = type metadata accessor for WebPresentmentResponse();
  v7[23] = v16;
  v17 = *(v16 - 8);
  v7[24] = v17;
  v18 = *(v17 + 64) + 15;
  v7[25] = swift_task_alloc();
  v19 = *(*(sub_100007224(&qword_100843CE0, &qword_1006E2060) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v20 = sub_100007224(&qword_100843D30, &qword_1006E2228);
  v7[27] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v22 = type metadata accessor for PartialWebPresentmentRequest();
  v7[29] = v22;
  v23 = *(v22 - 8);
  v7[30] = v23;
  v24 = *(v23 + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_projectBox();

  return _swift_task_switch(sub_100419AA4, 0, 0);
}

uint64_t sub_100419AA4()
{
  v1 = v0[32];
  v2 = v0[26];
  swift_beginAccess();
  sub_10000BBC4(v1, v2, &qword_100843CE0, &qword_1006E2060);
  v3 = sub_100007224(&qword_100843D10, &qword_1006E20B8);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];
    sub_10000BE18(v0[26], &qword_100843CE0, &qword_1006E2060);
    (*(v5 + 104))(v4, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError);
    v7 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8 = v0[14];
    LODWORD(v5) = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
    v0[10] = v7;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    v9 = v0[31];
    v10 = v0[28];
    v12 = v0[25];
    v11 = v0[26];
    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[16];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[31];
    v20 = v0[28];
    v19 = v0[29];
    v21 = v0[26];
    v22 = v0[27];
    v23 = *(v3 + 48);
    v24 = *(v22 + 48);
    v25 = *(v0[30] + 32);
    v25(v20, v21, v19);
    sub_10001F358((v21 + v23), v20 + v24);
    v26 = *(v22 + 48);
    v25(v18, v20, v19);
    sub_10001F358((v20 + v26), (v0 + 2));
    v27 = swift_task_alloc();
    v0[33] = v27;
    *v27 = v0;
    v27[1] = sub_100419E48;
    v28 = v0[31];
    v29 = v0[25];
    v30 = v0[12];
    v31 = v0[13];
    v32 = v0[11];

    return sub_10041A22C(v29, v28, (v0 + 2), v30, v31);
  }
}

uint64_t sub_100419E48()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_10041A104;
  }

  else
  {
    v3 = sub_100419F5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100419F5C()
{
  v1 = v0[30];
  v21 = v0[29];
  v22 = v0[31];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[15];
  v19 = v0[14];
  v20 = v0[17];
  v9 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
  (*(v2 + 16))(v7, v3, v4);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v5 + 8))(v6, v20);
  (*(v2 + 8))(v3, v4);
  sub_10000BB78(v0 + 2);
  (*(v1 + 8))(v22, v21);
  v10 = v0[31];
  v11 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[16];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10041A104()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  sub_10000BB78(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  v5 = v0[14];
  v6 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
  v0[10] = v4;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v7 = v0[31];
  v8 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[22];
  v12 = v0[19];
  v13 = v0[16];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10041A22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v11 = type metadata accessor for PartialWebPresentmentRequest();
  v6[17] = v11;
  v12 = *(v11 - 8);
  v6[18] = v12;
  v13 = *(v12 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v6[21] = v14;
  v15 = *(v14 - 8);
  v6[22] = v15;
  v16 = *(v15 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_10041A408, 0, 0);
}

uint64_t sub_10041A408()
{
  v1 = v0[24];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteWebPresentmentScannableCodeManager handling first party selection", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[11];

  v9 = *(v7 + 8);
  v0[25] = v9;
  v9(v5, v6);
  v10 = sub_10000BA08((v8 + 136), *(v8 + 160));
  v11 = sub_10000BA08((*v10 + 16), *(*v10 + 40));
  v0[26] = v11;
  v12 = *v11;

  return _swift_task_switch(sub_10041A538, v12, 0);
}

uint64_t sub_10041A538()
{
  v1 = **(v0 + 208);
  sub_1003F2DD8();

  return _swift_task_switch(sub_10041A5A4, 0, 0);
}

uint64_t sub_10041A5A4()
{
  v1 = v0[10];
  v0[27] = sub_10000BA08((v0[11] + 56), *(v0[11] + 80));
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  v4 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter[1];
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_10041A66C;

  return dispatch thunk of WebPresentmentAnalyticsReporting.archivedSessionToken.getter(v2, v3);
}

uint64_t sub_10041A66C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v6 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;

  return _swift_task_switch(sub_10041A76C, 0, 0);
}

uint64_t sub_10041A76C()
{
  v40 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[7];
  defaultLogger()();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  v11 = v0[23];
  v38 = v0[22];
  v12 = v0[20];
  v13 = v0[21];
  if (v9)
  {
    v36 = v0[23];
    v37 = v0[25];
    v14 = v0[18];
    v15 = v0[19];
    v35 = v0[21];
    v16 = v0[17];
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136315138;
    v6(v15, v12, v16);
    v18 = String.init<A>(describing:)();
    v19 = v8;
    v21 = v20;
    (*(v14 + 8))(v12, v16);
    v22 = sub_100141FE4(v18, v21, &v39);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v7, v19, "WebPresentmentWalletPassPresenter presenting authorization sheet for request: %s", v17, 0xCu);
    sub_10000BB78(v34);

    v37(v36, v35);
  }

  else
  {
    v24 = v0[17];
    v23 = v0[18];

    (*(v23 + 8))(v12, v24);
    v10(v11, v13);
  }

  v25 = swift_task_alloc();
  v0[31] = v25;
  *v25 = v0;
  v25[1] = sub_10041A9E4;
  v26 = v0[29];
  v27 = v0[30];
  v28 = v0[27];
  v30 = v0[8];
  v29 = v0[9];
  v31 = v0[6];
  v32 = v0[7];

  return sub_1004743C0(v31, v29, v32, v30, v26, v27);
}

uint64_t sub_10041A9E4()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10041AB90, 0, 0);
  }

  else
  {
    v5 = v3[23];
    v4 = v3[24];
    v7 = v3[19];
    v6 = v3[20];
    v9 = v3[15];
    v8 = v3[16];
    v10 = v3[14];
    sub_10000BD94(v3[29], v3[30]);

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_10041AB90()
{
  v1 = v0[32];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  swift_getErrorValue();
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  Error.dipErrorCode.getter();
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    sub_10000BBC4(v0[16], v8, &qword_10083B020, &unk_1006D8ED0);
    if ((*(v10 + 88))(v8, v9) == enum case for DIPError.Code.digitalPresentmentUserCancelled(_:))
    {
      v11 = v0[32];
      (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.webPresentmentCancelled(_:), v0[12]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_6;
    }

    (*(v0[13] + 8))(v0[15], v0[12]);
  }

  v12 = v0[32];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v13 = v0[32];
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[14];
  sub_10000BD94(v0[29], v0[30]);

  sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10041AF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = type metadata accessor for DIPError.Code();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_100843CE0, &qword_1006E2060) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v11 = sub_100007224(&qword_100843D30, &qword_1006E2228);
  v6[18] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v13 = type metadata accessor for PartialWebPresentmentRequest();
  v6[20] = v13;
  v14 = *(v13 - 8);
  v6[21] = v14;
  v15 = *(v14 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_projectBox();

  return _swift_task_switch(sub_10041B0BC, 0, 0);
}

uint64_t sub_10041B0BC()
{
  v1 = v0[23];
  v2 = v0[17];
  swift_beginAccess();
  sub_10000BBC4(v1, v2, &qword_100843CE0, &qword_1006E2060);
  v3 = sub_100007224(&qword_100843D10, &qword_1006E20B8);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[16];
    v5 = v0[14];
    v6 = v0[15];
    sub_10000BE18(v0[17], &qword_100843CE0, &qword_1006E2060);
    (*(v6 + 104))(v4, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError);
    v7 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8 = v0[13];
    LODWORD(v6) = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
    v0[10] = v7;
    sub_100007224(&qword_100843CF8, &unk_1006E2078);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    v9 = v0[22];
    v10 = v0[19];
    v12 = v0[16];
    v11 = v0[17];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[22];
    v17 = v0[19];
    v16 = v0[20];
    v18 = v0[17];
    v19 = v0[18];
    v20 = *(v3 + 48);
    v21 = *(v19 + 48);
    v22 = *(v0[21] + 32);
    v22(v17, v18, v16);
    sub_10001F358((v18 + v20), v17 + v21);
    v23 = *(v19 + 48);
    v22(v15, v17, v16);
    sub_10001F358((v17 + v23), (v0 + 2));
    v24 = swift_task_alloc();
    v0[24] = v24;
    *v24 = v0;
    v24[1] = sub_10041B430;
    v25 = v0[22];
    v27 = v0[11];
    v26 = v0[12];

    return sub_10041B6F0(v26, v25, (v0 + 2));
  }
}

uint64_t sub_10041B430()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_10041B5F4;
  }

  else
  {
    v3 = sub_10041B544;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10041B544()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_10000BB78(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10041B5F4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_10000BB78(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[25];
  v5 = v0[13];
  v6 = *(sub_100007224(&qword_100843D08, &qword_1006E2090) + 48);
  v0[10] = v4;
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v7 = v0[22];
  v8 = v0[19];
  v10 = v0[16];
  v9 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10041B6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for MobileDocumentProviderPresentmentRequest();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10041B810, 0, 0);
}

uint64_t sub_10041B810()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RemoteWebPresentmentScannableCodeManager handling third party selection", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v9 = v0[4];
  v8 = v0[5];

  (*(v6 + 8))(v5, v7);
  v10 = *sub_10000BA08((v8 + 216), *(v8 + 240));
  *(swift_task_alloc() + 16) = v9;
  os_unfair_lock_lock(v10 + 14);
  sub_100407B68(&v10[4]);
  os_unfair_lock_unlock(v10 + 14);

  v11 = *sub_10000BA08((v8 + 216), *(v8 + 240));
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_10041B9D4;
  v13 = v0[8];
  v14 = v0[2];
  v15 = v0[3];

  return sub_10032DCBC(v13, v14, v15, v11);
}

uint64_t sub_10041B9D4()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_10041BCA8;
  }

  else
  {
    v3 = sub_10041BAE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10041BAE8()
{
  v1 = *sub_10000BA08((v0[5] + 136), *(v0[5] + 160));
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_10041BB94;
  v3 = v0[8];
  v4 = v0[4];

  return sub_1003FE810(v3, v4);
}

uint64_t sub_10041BB94()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10041BDA4;
  }

  else
  {
    v3 = sub_10041BD18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10041BCA8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10041BD18()
{
  v1 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10041BDA4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10041BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v6 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = sub_100007224(&qword_1008437A8, &qword_1006E21D0);
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10041BFB4, 0, 0);
}

uint64_t sub_10041BFB4()
{
  v14 = v0[14];
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = sub_10000BA08((v0[3] + 136), *(v0[3] + 160));
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderAuxiliaryView.connecting(_:), v3);
  sub_10000BA08((*v7 + 16), *(*v7 + 40));
  (*(v2 + 16))(v4, v1, v3);
  (*(v6 + 104))(v4, enum case for MobileDocumentProviderViewServiceIdentifier.auxiliaryView(_:), v5);
  type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  sub_1003FAF4C(v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_10041C180;
  v9 = v0[14];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[3];

  return sub_10041C340(v9, v10, v11);
}

uint64_t sub_10041C180()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *v1;
  v6[16] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_100422580, 0, 0);
  }

  else
  {
    v7 = v6[14];
    v8 = v6[11];
    v9 = v6[8];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_10041C340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for WebPresentmentAnalyticsReporter.ThirdPartyAppResult();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentProviderPresentmentResponse();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v14 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v4[16] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();
  v19 = type metadata accessor for MobileDocumentProviderUserSelection();
  v4[21] = v19;
  v20 = *(v19 - 8);
  v4[22] = v20;
  v21 = *(v20 + 64) + 15;
  v4[23] = swift_task_alloc();
  v22 = type metadata accessor for RemoteMobileDocumentProviderUIState(0);
  v4[24] = v22;
  v23 = *(v22 - 8);
  v4[25] = v23;
  v24 = *(v23 + 64) + 15;
  v4[26] = swift_task_alloc();
  v25 = *(*(sub_100007224(&qword_100843798, &unk_1006E21E0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v26 = sub_100007224(&qword_1008437A8, &qword_1006E21D0);
  v4[28] = v26;
  v27 = *(v26 - 8);
  v4[29] = v27;
  v28 = *(v27 + 64) + 15;
  v4[30] = swift_task_alloc();
  v29 = sub_100007224(&qword_1008437A0, &unk_1006E1710);
  v4[31] = v29;
  v30 = *(v29 - 8);
  v4[32] = v30;
  v31 = *(v30 + 64) + 15;
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10041C714, 0, 0);
}

uint64_t sub_10041C714()
{
  v1 = *(v0 + 264);
  (*(*(v0 + 232) + 16))(*(v0 + 240), *(v0 + 24), *(v0 + 224));
  sub_1000BA30C(&qword_100843D20, &qword_1008437A8, &qword_1006E21D0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(v0 + 400) = enum case for MobileDocumentProviderViewServiceIdentifier.authorizationView(_:);
  *(v0 + 404) = enum case for WebPresentmentAnalyticsReporter.ThirdPartyAppResult.cancelled(_:);
  *(v0 + 408) = enum case for MobileDocumentProviderViewServiceIdentifier.selectionView(_:);
  v2 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_10041C89C;
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 16, v6, v2);
}

uint64_t sub_10041C89C()
{
  v2 = *(*v1 + 272);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10041D1E8;
  }

  else
  {
    v3 = sub_10041C9AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10041C9AC()
{
  v1 = *(v0 + 216);
  if ((*(*(v0 + 200) + 48))(v1, 1, *(v0 + 192)) == 1)
  {
    v2 = *(v0 + 256);
LABEL_3:
    v3 = *(v0 + 240);
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);
    v6 = *(v0 + 160);
    v7 = *(v0 + 136);
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v65 = *(v0 + 72);
    (*(v2 + 8))(*(v0 + 264), *(v0 + 248));

    v10 = *(v0 + 8);

    return v10();
  }

  sub_10041FEAC(v1, *(v0 + 208), type metadata accessor for RemoteMobileDocumentProviderUIState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v2 = *(v0 + 256);
      v29 = *(v0 + 152);
      v28 = *(v0 + 160);
      v30 = *(v0 + 136);
      v31 = *(v0 + 120);
      v33 = *(v0 + 104);
      v32 = *(v0 + 112);
      v64 = *(v0 + 40);
      v66 = *(v0 + 144);
      (*(v32 + 32))(v31, *(v0 + 208), v33);
      MobileDocumentProviderPresentmentResponse.encryptedResponseData.getter();
      WebPresentmentResponse.init(responseData:)();
      swift_storeEnumTagMultiPayload();
      sub_100007224(&qword_100843CF8, &unk_1006E2078);
      AsyncThrowingStream.Continuation.yield(_:)();
      (*(v29 + 8))(v28, v66);
      (*(v32 + 8))(v31, v33);
      v34 = *(v0 + 216);
      goto LABEL_3;
    }

    v53 = swift_task_alloc();
    *(v0 + 312) = v53;
    *v53 = v0;
    v53[1] = sub_10041D44C;

    return sub_1005056DC();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v13 = *(v0 + 400);
        v14 = *(v0 + 208);
        v15 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
        *(v0 + 296) = v15;
        v16 = *(v15 - 8);
        v17 = v16;
        *(v0 + 304) = v16;
        if ((*(v16 + 88))(v14, v15) == v13)
        {
          v18 = *(v0 + 404);
          v20 = *(v0 + 88);
          v19 = *(v0 + 96);
          v21 = *(v0 + 80);
          v22 = *(v0 + 32);
          v23 = v22[3];
          v24 = v22[4];
          sub_10000BA08(v22, v23);
          (*(v20 + 104))(v19, v18, v21);
          v25 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)[1];
          v26 = swift_task_alloc();
          *(v0 + 392) = v26;
          *v26 = v0;
          v26[1] = sub_10041DD20;
          v27 = *(v0 + 96);

          return dispatch thunk of WebPresentmentAnalyticsReporting.sendThirdPartyAppCompleted(result:)(v27, v23, v24);
        }

        goto LABEL_28;
      }

LABEL_20:
      v45 = *(v0 + 176);
      v44 = *(v0 + 184);
      v47 = *(v0 + 160);
      v46 = *(v0 + 168);
      v48 = *(v0 + 144);
      v49 = *(v0 + 152);
      v50 = *(v0 + 128);
      v51 = *(v0 + 136);
      v52 = *(v0 + 40);
      (*(v45 + 32))(v44, *(v0 + 208), v46);
      (*(v45 + 16))(v51, v44, v46);
      swift_storeEnumTagMultiPayload();
      sub_100007224(&qword_100843CF8, &unk_1006E2078);
      AsyncThrowingStream.Continuation.yield(_:)();
      (*(v49 + 8))(v47, v48);
      (*(v45 + 8))(v44, v46);
LABEL_29:
      v58 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710);
      v59 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v60 = swift_task_alloc();
      *(v0 + 272) = v60;
      *v60 = v0;
      v60[1] = sub_10041C89C;
      v61 = *(v0 + 264);
      v62 = *(v0 + 248);
      v63 = *(v0 + 216);

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v63, 0, 0, v0 + 16, v62, v58);
    }

    v35 = *(v0 + 408);
    v36 = *(v0 + 208);
    v15 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
    *(v0 + 280) = v15;
    v37 = *(v15 - 8);
    v17 = v37;
    *(v0 + 288) = v37;
    v38 = (*(v37 + 88))(v36, v15);
    if (v38 == v35)
    {
      v39 = *(v0 + 32);
      v40 = v39[3];
      v41 = v39[4];
      sub_10000BA08(v39, v40);
      v42 = async function pointer to dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()[1];
      v43 = swift_task_alloc();
      *(v0 + 328) = v43;
      *v43 = v0;
      v43[1] = sub_10041D8A8;

      return dispatch thunk of WebPresentmentAnalyticsReporting.sendAppPickerAppeared()(v40, v41);
    }

    else
    {
      if (v38 != *(v0 + 400))
      {
LABEL_28:
        (*(v17 + 8))(*(v0 + 208), v15);
        goto LABEL_29;
      }

      v54 = *(*(v0 + 48) + 376);
      *(v0 + 368) = v54;
      sub_100007224(&qword_10083C008, &qword_1006DA4E0);
      v55 = type metadata accessor for DIPSignpost.Config();
      *(v0 + 376) = v55;
      v56 = *(*(v55 - 8) + 72);
      *(v0 + 416) = *(*(v55 - 8) + 80);
      v57 = swift_allocObject();
      *(v0 + 384) = v57;
      *(v57 + 16) = xmmword_1006BF740;
      static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
      static DaemonSignposts.WebPresentment.thirdPartySelection.getter();

      return _swift_task_switch(sub_10041DC74, v54, 0);
    }
  }
}

uint64_t sub_10041D1E8()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  v1 = v0[2];
  v16 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[5];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError);
  v5 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();

  v6 = v0[33];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[23];
  v11 = v0[17];
  v12 = v0[15];
  v13 = v0[12];
  v17 = v0[9];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10041D44C()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_10041D644;
  }

  else
  {
    v3 = sub_10041D560;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10041D560()
{
  v1 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710);
  v2 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_10041C89C;
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[27];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 2, v5, v1);
}

uint64_t sub_10041D644()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  v1 = v0[40];
  v16 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[5];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10041FE64(&qword_100834130, &type metadata accessor for DIPError);
  v5 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();

  v6 = v0[33];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[23];
  v11 = v0[17];
  v12 = v0[15];
  v13 = v0[12];
  v17 = v0[9];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10041D8A8()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return _swift_task_switch(sub_10041D9A4, 0, 0);
}

uint64_t sub_10041D9A4()
{
  v1 = *(*(v0 + 48) + 376);
  *(v0 + 336) = v1;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v2 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 344) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 352) = v3;
  v5 = *(v3 + 72);
  *(v0 + 412) = *(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 360) = v6;
  *(v6 + 16) = xmmword_1006BF520;
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_10041DABC, v1, 0);
}

uint64_t sub_10041DABC()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = (*(v0 + 412) + 32) & ~*(v0 + 412);
  sub_10051B0E0(v1);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v5, v4);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10041DB78, 0, 0);
}

uint64_t sub_10041DB78()
{
  (*(v0[36] + 8))(v0[26], v0[35]);
  v1 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710);
  v2 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_10041C89C;
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[27];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0, v0 + 2, v5, v1);
}

uint64_t sub_10041DC74()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 368);
  v3 = (*(v0 + 416) + 32) & ~*(v0 + 416);
  sub_10051B0E0(*(v0 + 384));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100422588, 0, 0);
}

uint64_t sub_10041DD20()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10041DE78, 0, 0);
}

uint64_t sub_10041DE78()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[26];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v9 = v0[5];
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v3, v1);
  v10 = sub_1000BA30C(&qword_100843D28, &qword_1008437A0, &unk_1006E1710);
  v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v12 = swift_task_alloc();
  v0[34] = v12;
  *v12 = v0;
  v12[1] = sub_10041C89C;
  v13 = v0[33];
  v14 = v0[31];
  v15 = v0[27];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v15, 0, 0, v0 + 2, v14, v10);
}

uint64_t sub_10041DFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v6 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = sub_100007224(&qword_1008437A8, &qword_1006E21D0);
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10041E174, 0, 0);
}

uint64_t sub_10041E174()
{
  v14 = v0[14];
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = sub_10000BA08((v0[3] + 136), *(v0[3] + 160));
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderAuxiliaryView.enableBluetooth(_:), v3);
  sub_10000BA08((*v7 + 16), *(*v7 + 40));
  (*(v2 + 16))(v4, v1, v3);
  (*(v6 + 104))(v4, enum case for MobileDocumentProviderViewServiceIdentifier.auxiliaryView(_:), v5);
  type metadata accessor for RemoteMobileDocumentProviderUIConnectionManager(0);
  sub_1003FAF4C(v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_10041E340;
  v9 = v0[14];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[3];

  return sub_10041C340(v9, v10, v11);
}

uint64_t sub_10041E340()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *v1;
  v6[16] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_10041E500, 0, 0);
  }

  else
  {
    v7 = v6[14];
    v8 = v6[11];
    v9 = v6[8];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_10041E500()
{
  v1 = v0[5];
  v0[2] = v0[16];
  sub_100007224(&qword_100843CF8, &unk_1006E2078);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10041E5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for RemoteWebPresentmentScannableCodeManager.StateTransition(0);
  v4[4] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = sub_100007224(&qword_100843CD8, &qword_1006E2058);
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = sub_100007224(&qword_100843D38, &qword_1006E2240);
  v4[9] = v10;
  v11 = *(v10 - 8);
  v4[10] = v11;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v13 = sub_100007224(&qword_100843D40, &qword_1006E2248);
  v4[12] = v13;
  v14 = *(v13 - 8);
  v4[13] = v14;
  v15 = *(v14 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10041E774, 0, 0);
}

uint64_t sub_10041E774()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = *sub_10000BA08((v0[2] + 336), *(v0[2] + 360));
  sub_100503AC0(v2);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_10041E87C;
  v8 = v0[14];
  v9 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v9);
}