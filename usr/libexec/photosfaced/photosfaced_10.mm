uint64_t sub_1000EFF04()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  v2[67] = v0;

  v5 = v2[33];
  v6 = v2[29];
  v7 = (v2[30] + 8);
  if (v0)
  {
    (*v7)(v5, v6);

    return _swift_task_switch(sub_1000F0284, 0, 0);
  }

  else
  {
    (*v7)(v5, v6);
    v8 = sub_10000CC24(&qword_10012B480, &qword_10012B460, &qword_10010A150);
    v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v10 = swift_task_alloc();
    v2[63] = v10;
    *v10 = v4;
    v10[1] = sub_1000EF6A0;
    v11 = v2[37];
    v12 = v2[34];
    v13 = v2[35];

    return dispatch thunk of AsyncIteratorProtocol.next()(v12, v13, v8);
  }
}

uint64_t sub_1000F011C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  (*(v2[30] + 8))(v2[32], v2[29]);
  if (v0)
  {
    v5 = sub_1000F0C08;
  }

  else
  {
    v5 = sub_1000F0A94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F0284()
{
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v1 = *(v0 + 520);
  *(v0 + 568) = *(v0 + 536);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v0 + 368);
  v22 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 208) + 104;
  **(v0 + 216) = *(v0 + 596);
  v1();
  v10._countAndFlagsBits = 0x203A726F727245;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  swift_getErrorValue();
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  Message.content.getter();
  MessageBody.version.getter();
  v2(v4, v5);
  MessageBody.init<A>(serializable:version:)();
  v13 = *(v0 + 376);
  v14 = *(v0 + 248);
  v15 = *(v0 + 216);
  v16 = *(v0 + 136);
  Message.init(operation:content:complete:)();
  v23 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 576) = v18;
  *v18 = v0;
  v18[1] = sub_1000F061C;
  v19 = *(v0 + 248);
  v20 = *(v0 + 144);

  return v23(v19);
}

uint64_t sub_1000F061C()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  (*(v2[30] + 8))(v2[31], v2[29]);
  if (v0)
  {
    v5 = sub_1000F0904;
  }

  else
  {
    v5 = sub_1000F0784;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F0784()
{
  v1 = v0[71];
  v2 = v0[60];

  (*(v0[52] + 8))(v0[53], v0[51]);
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[53];
  v6 = v0[49];
  v7 = v0[50];
  v9 = v0[47];
  v8 = v0[48];
  v10 = v0[46];
  v11 = v0[43];
  v12 = v0[40];
  v15 = v0[37];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[31];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[24];
  v23 = v0[23];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000F0904()
{
  v1 = v0[71];
  v2 = v0[60];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[51];

  (*(v4 + 8))(v3, v5);
  v27 = v0[73];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[53];
  v10 = v0[49];
  v9 = v0[50];
  v12 = v0[47];
  v11 = v0[48];
  v13 = v0[46];
  v14 = v0[43];
  v15 = v0[40];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[32];
  v22 = v0[31];
  v23 = v0[28];
  v24 = v0[27];
  v25 = v0[24];
  v26 = v0[23];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000F0A94()
{
  v1 = v0[60];

  (*(v0[52] + 8))(v0[53], v0[51]);
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[53];
  v5 = v0[49];
  v6 = v0[50];
  v8 = v0[47];
  v7 = v0[48];
  v9 = v0[46];
  v10 = v0[43];
  v11 = v0[40];
  v14 = v0[37];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[24];
  v22 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000F0C08()
{
  v1 = *(v0 + 544);
  *(v0 + 568) = *(v0 + 560);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v0 + 368);
  v22 = *(v0 + 376);
  v5 = *(v0 + 352);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 208) + 104;
  **(v0 + 216) = *(v0 + 596);
  v1();
  v10._countAndFlagsBits = 0x203A726F727245;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  swift_getErrorValue();
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  Message.content.getter();
  MessageBody.version.getter();
  v2(v4, v5);
  MessageBody.init<A>(serializable:version:)();
  v13 = *(v0 + 376);
  v14 = *(v0 + 248);
  v15 = *(v0 + 216);
  v16 = *(v0 + 136);
  Message.init(operation:content:complete:)();
  v23 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 576) = v18;
  *v18 = v0;
  v18[1] = sub_1000F061C;
  v19 = *(v0 + 248);
  v20 = *(v0 + 144);

  return v23(v19);
}

void *sub_1000F0F88()
{
  v1 = v0;
  v2 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v89 = v88 - v4;
  v5 = type metadata accessor for DatabaseConnection.Location();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Daemon Init", v14, 2u);
  }

  (*(v8 + 8))(v11, v7);
  type metadata accessor for PhotosFaceNetworkMessageCenter();
  v15 = swift_allocObject();
  sub_10000560C(&qword_10012B410, &qword_10010A060);
  swift_allocObject();
  *(v15 + 16) = sub_1000E8FD8();
  v1[3] = v15;
  type metadata accessor for PhotosXPCServer();
  sub_10000560C(&qword_10012B418, &qword_10010A068);
  static XPCConstants.serviceName.getter();
  XPCMessageCenter.Server.__allocating_init(serviceName:)();
  v1[2] = PhotosXPCServer.__allocating_init(messageCenter:)();
  type metadata accessor for PhotosFaceDatabase();
  default argument 0 of PhotosFaceDatabase.init(location:)();
  v1[10] = PhotosFaceDatabase.__allocating_init(location:)();
  v16 = type metadata accessor for BackgroundTaskManager();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1000FC1D8();
  v1[16] = v19;
  v20 = v1[10];
  v21 = type metadata accessor for PhotoCache();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();

  static SystemDirectory.photosFace.getter();
  *(v24 + OBJC_IVAR____TtC11photosfaced10PhotoCache_database) = v20;
  *(v24 + OBJC_IVAR____TtC11photosfaced10PhotoCache_background) = v19;
  v1[4] = v24;
  type metadata accessor for XPCEventStream();
  v1[17] = XPCEventStream.__allocating_init()();
  type metadata accessor for NetworkMonitor();
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = [objc_allocWithZone(type metadata accessor for DeviceMonitor()) init];
  v1[18] = v25;
  v26 = static Platform.current.getter();
  v27 = v1[3];
  v28 = v1[4];
  v29 = v1[2];
  if (v26)
  {
    v30 = type metadata accessor for WatchPhotoProcessor();
    v31 = swift_allocObject();
    v32 = &off_100126B50;
  }

  else
  {
    v30 = type metadata accessor for PhonePhotoProcessor();
    v31 = swift_allocObject();
    v31[5] = 0;
    v32 = &off_1001265F0;
  }

  v31[2] = v28;
  v31[3] = v27;
  v31[4] = v29;

  v1[8] = v30;
  v1[9] = v32;
  v1[5] = v31;
  v90 = v1 + 5;
  v33 = type metadata accessor for AlbumDatabase();
  v34 = v1[10];

  v35 = AlbumDatabase.__allocating_init(database:)();
  v36 = v1[2];
  v92 = v33;
  v93 = sub_1000FAACC(&qword_10012A488, &type metadata accessor for AlbumDatabase);
  *&v91 = v35;
  type metadata accessor for AlbumProvider();
  v37 = swift_allocObject();

  *(v37 + 16) = static TestProperties.watchFacePerDaySize.getter();
  sub_10000C350(&v91, v37 + 24);
  sub_10000C368((v1 + 5), &v91);
  v38 = v1[16];
  v39 = v1[3];
  v40 = v1[4];
  v41 = v1[18];
  sub_10000560C(&qword_10012B420, &qword_10010A070);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = v36;
  *(v42 + 32) = v37;
  sub_10000C368(&v91, v42 + 40);
  v88[2] = v35;
  *(v42 + 80) = v35;
  *(v42 + 88) = v38;
  *(v42 + 96) = v39;
  *(v42 + 104) = v40;

  v43 = sub_10005D3C8(&_swiftEmptyArrayStorage);
  sub_10000C304(&v91);
  *(v42 + 112) = v43;
  *(v42 + 120) = v41;
  v1[11] = v42;
  v44 = type metadata accessor for ShuffleDatabase();
  v45 = v1[10];

  v46 = ShuffleDatabase.__allocating_init(database:)();
  v47 = v1[2];

  v48 = static TestProperties.watchFacePerDaySize.getter();
  v92 = v44;
  v93 = sub_1000FAACC(&qword_10012A478, &type metadata accessor for ShuffleDatabase);
  *&v91 = v46;
  type metadata accessor for ShuffleProvider();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  sub_10000C350(&v91, v49 + 24);
  sub_10000C368(v90, &v91);
  v50 = v1[16];
  v52 = v1[3];
  v51 = v1[4];
  v53 = v1[18];
  sub_10000560C(&qword_10012B428, &qword_10010A078);
  v54 = swift_allocObject();
  *(v54 + 16) = 1;
  *(v54 + 24) = v47;
  *(v54 + 32) = v49;
  sub_10000C368(&v91, v54 + 40);
  v88[1] = v46;
  *(v54 + 80) = v46;
  *(v54 + 88) = v50;
  *(v54 + 96) = v52;
  *(v54 + 104) = v51;
  swift_retain_n();

  v55 = sub_10005D3C8(&_swiftEmptyArrayStorage);
  sub_10000C304(&v91);
  *(v54 + 112) = v55;
  *(v54 + 120) = v53;
  v1[12] = v54;
  v56 = type metadata accessor for GalleryDatabase();
  v57 = v1[10];

  v58 = GalleryDatabase.__allocating_init(database:)();
  v59 = v1[2];

  v60 = static TestProperties.gallerySize.getter();
  v92 = v56;
  v93 = sub_1000FAACC(&qword_10012A3D0, &type metadata accessor for GalleryDatabase);
  *&v91 = v58;
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  sub_10000C350(&v91, v61 + 24);
  v62 = v90;
  sub_10000C368(v90, &v91);
  v63 = v1[16];
  v64 = v1[3];
  v65 = v1[4];
  v66 = v1[18];
  sub_10000560C(&qword_10012B430, &qword_10010A080);
  v67 = swift_allocObject();
  *(v67 + 16) = 2;
  *(v67 + 24) = v59;
  *(v67 + 32) = v61;
  sub_10000C368(&v91, v67 + 40);
  *(v67 + 80) = v58;
  *(v67 + 88) = v63;
  *(v67 + 96) = v64;
  *(v67 + 104) = v65;
  swift_retain_n();

  v68 = sub_10005D3C8(&_swiftEmptyArrayStorage);
  sub_10000C304(&v91);
  *(v67 + 112) = v68;
  *(v67 + 120) = v66;
  v1[13] = v67;
  v69 = v1[16];
  type metadata accessor for GalleryGeneratorSystem();
  v70 = swift_allocObject();
  v70[2] = v69;
  v70[3] = v67;
  v70[4] = v58;
  v1[15] = v70;
  v71 = type metadata accessor for DailyDatabase();
  v72 = v1[10];

  v73 = DailyDatabase.__allocating_init(database:)();
  v74 = v1[2];
  type metadata accessor for DailyProvider();
  v75 = swift_allocObject();
  v92 = v71;
  v93 = sub_1000FAACC(&qword_10012A468, &type metadata accessor for DailyDatabase);
  *&v91 = v73;
  sub_10000C368(&v91, v75 + 16);

  v76 = sub_10005D5B0(&_swiftEmptyArrayStorage);
  sub_10000560C(&qword_10012B438, &qword_10010A088);
  v77 = swift_allocObject();
  *(v77 + 28) = 0;

  sub_10000C304(&v91);
  *(v77 + 16) = v76;
  *(v77 + 24) = 0;

  *(v75 + 56) = v77;
  sub_10000C368(v62, &v91);
  v78 = v1[16];
  v79 = v1[3];
  v80 = v1[4];
  v81 = v1[18];
  sub_10000560C(&qword_10012B440, &qword_10010A090);
  v82 = swift_allocObject();
  *(v82 + 16) = 3;
  *(v82 + 24) = v74;
  *(v82 + 32) = v75;
  sub_10000C368(&v91, v82 + 40);
  *(v82 + 80) = v73;
  *(v82 + 88) = v78;
  *(v82 + 96) = v79;
  *(v82 + 104) = v80;

  v83 = sub_10005D3C8(&_swiftEmptyArrayStorage);
  sub_10000C304(&v91);
  *(v82 + 112) = v83;
  *(v82 + 120) = v81;
  v1[14] = v82;
  v84 = type metadata accessor for TaskPriority();
  v85 = v89;
  (*(*(v84 - 8) + 56))(v89, 1, 1, v84);
  v86 = swift_allocObject();
  v86[2] = 0;
  v86[3] = 0;
  v86[4] = v1;

  sub_100005654(0, 0, v85, &unk_10010A0A0, v86);

  return v1;
}

uint64_t sub_1000F19D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045BC;

  return sub_1000F1A60();
}

uint64_t sub_1000F1A60()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F1B20, 0, 0);
}

uint64_t sub_1000F1B20()
{
  v1 = v0[5];
  static Log.default.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Daemon Activate", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  v0[6] = *(v8 + 80);
  type metadata accessor for PhotosFaceDatabase();
  sub_1000FAACC(&qword_10012A898, &type metadata accessor for PhotosFaceDatabase);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F1C84, v10, v9);
}

uint64_t sub_1000F1C84()
{
  v1 = *(v0 + 48);
  dispatch thunk of PhotosFaceDatabase.activate()();

  return _swift_task_switch(sub_1000F1CEC, 0, 0);
}

uint64_t sub_1000F1CEC()
{
  v1 = *(*(v0 + 16) + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1000F1D80;

  return sub_100060BF4();
}

uint64_t sub_1000F1D80()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_1000F1E7C, 0, 0);
}

uint64_t sub_1000F1E7C()
{
  v1 = *(v0 + 16);
  v2 = v1[8];
  v3 = v1[9];
  sub_10000C3CC(v1 + 5, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1000F1FA4;

  return v8(v2, v3);
}

uint64_t sub_1000F1FA4()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_1000F20A0, 0, 0);
}

uint64_t sub_1000F20A0()
{
  v0[9] = *(v0[2] + 16);
  v0[10] = type metadata accessor for CommunicationActor();

  v0[11] = static CommunicationActor.shared.getter();
  v0[12] = sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F2180, v2, v1);
}

uint64_t sub_1000F2180()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[2];

  PhotosXPCServer.registerSendMessage(callback:)();

  return _swift_task_switch(sub_1000F2214, 0, 0);
}

uint64_t sub_1000F2214()
{
  v1 = v0[12];
  v2 = v0[10];
  v0[13] = *(v0[2] + 24);
  v0[14] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F22B4, v4, v3);
}

uint64_t sub_1000F22B4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  v3 = *(v2 + 16);
  sub_1000ECC88(0, &unk_100108DA0, 0, &unk_1001277A8, sub_1000FBC20);

  return _swift_task_switch(sub_1000F235C, 0, 0);
}

uint64_t sub_1000F235C()
{
  v1 = *(*(v0 + 16) + 88);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000F2404;

  return sub_10008A444();
}

uint64_t sub_1000F2404()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_1000F2500, 0, 0);
}

uint64_t sub_1000F2500()
{
  v1 = *(*(v0 + 16) + 96);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1000F25A8;

  return sub_10008AC0C();
}

uint64_t sub_1000F25A8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1000F26A4, 0, 0);
}

uint64_t sub_1000F26A4()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1000F274C;

  return sub_10008B3D4();
}

uint64_t sub_1000F274C()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_1000F2848, 0, 0);
}

uint64_t sub_1000F2848()
{
  v1 = *(*(v0 + 16) + 104);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_1000F28F0;

  return sub_10008BB9C();
}

uint64_t sub_1000F28F0()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_1000F29EC, 0, 0);
}

uint64_t sub_1000F29EC()
{
  v1 = *(*(v0 + 16) + 120);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1000F2A80;

  return sub_10001339C();
}

uint64_t sub_1000F2A80()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_1000F2B7C, 0, 0);
}

uint64_t sub_1000F2B7C()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 160) = v1;
  return _swift_task_switch(sub_1000F2BA0, v1, 0);
}

uint64_t sub_1000F2BA0()
{
  v1 = *(v0 + 160);
  sub_1000FC444();

  return _swift_task_switch(sub_1000F2C08, 0, 0);
}

uint64_t sub_1000F2C08()
{
  v1 = v0[12];
  v2 = v0[10];
  v0[21] = static CommunicationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F2C9C, v4, v3);
}

uint64_t sub_1000F2C9C()
{
  v1 = v0[21];
  v2 = v0[13];

  v3 = *(v2 + 16);
  sub_1000E90D0();
  v4 = async function pointer to PhotosXPCServer.activate()[1];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1000F2D44;
  v6 = v0[9];

  return PhotosXPCServer.activate()();
}

uint64_t sub_1000F2D44()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000F2E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000F2E78, 0, 0);
}

uint64_t sub_1000F2E78()
{
  v0[5] = *(v0[4] + 24);
  type metadata accessor for CommunicationActor();
  v0[6] = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[7] = v2;
  v0[8] = v1;

  return _swift_task_switch(sub_1000F2F48, v2, v1);
}

uint64_t sub_1000F2F48()
{
  v1 = *(v0[5] + 16);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1000F2FFC;
  v3 = v0[2];
  v4 = v0[3];

  return sub_100002980(0, v3, v4, 1);
}

uint64_t sub_1000F2FFC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = v6[7];
    v10 = v6[8];
    v11 = sub_100004E58;
  }

  else
  {
    v6[11] = a2;
    v6[12] = a1;
    v9 = v6[7];
    v10 = v6[8];
    v11 = sub_1000F3130;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1000F3130()
{
  v1 = v0[6];

  v2 = v0[1];
  v4 = v0[11];
  v3 = v0[12];

  return v2(v3, v4);
}

uint64_t sub_1000F3198(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F3258, 0, 0);
}

uint64_t sub_1000F3258()
{
  v21 = v0;
  v1 = v0[6];
  v2 = v0[3];
  static Log.default.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100102F80(v10, v9, &v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "Hello: %s", v11, 0xCu);
    sub_10000C304(v12);
  }

  (*(v7 + 8))(v6, v8);
  v13 = v0[6];
  v14 = *(v0 + 1);
  v19 = 0x203A6F6C6C6548;
  v20 = 0xE700000000000000;
  String.append(_:)(v14);
  v15 = v19;
  v16 = v20;

  v17 = v0[1];

  return v17(v15, v16);
}

void *sub_1000F3408()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_10000C304(v0 + 5);
  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[15];

  v10 = v0[16];

  v11 = v0[17];

  v12 = v0[18];

  return v0;
}

uint64_t sub_1000F3488()
{
  sub_1000F3408();

  return _swift_deallocClassInstance(v0, 152, 7);
}

Swift::Int sub_1000F34E0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000F459C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000F3614(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000F3614(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000F3D54(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1000F3B60((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000F3D68(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1000F3D68((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1000F3B60((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_1000F3B60(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_1000F3D68(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000560C(&qword_10012B4E0, &qword_10010A3C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000F3E6C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1000F400C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1000F63FC(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_1000F400C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v28 - v12;
  v34 = *(a3 + 16);
  if (v34)
  {
    v30 = 0;
    v13 = 0;
    v39 = *(v11 + 16);
    v40 = v11 + 16;
    v33 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v11 + 72);
    v37 = a4 + 56;
    v38 = v14;
    v15 = (v11 + 8);
    v36 = a4;
    while (1)
    {
      v35 = v13;
      v39(v41, v33 + v38 * v13, v6);
      v18 = *(a4 + 40);
      sub_1000FAACC(&qword_10012A1F8, &type metadata accessor for UUID);
      v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
      {
        break;
      }

      v32 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v24 = ~v20;
      while (1)
      {
        v39(v10, *(v36 + 48) + v21 * v38, v6);
        sub_1000FAACC(&qword_10012A660, &type metadata accessor for UUID);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        v16 = *v15;
        (*v15)(v10, v6);
        if (v25)
        {
          break;
        }

        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
        {
          a4 = v36;
          goto LABEL_4;
        }
      }

      result = (v16)(v41, v6);
      v27 = v31[v22];
      v31[v22] = v27 | v23;
      if ((v27 & v23) != 0)
      {
        a4 = v36;
LABEL_5:
        v17 = v35;
        goto LABEL_6;
      }

      v17 = v35;
      a4 = v36;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        return result;
      }

      ++v30;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v34)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v41, v6);
    goto LABEL_5;
  }

  v30 = 0;
LABEL_17:

  return sub_10006AF50(v31, v29, v30, a4);
}

uint64_t sub_1000F4358(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, uint64_t a6, int a7)
{
  v14 = *a4;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10000CC84;

  return sub_1000EEAE8(a1, a2, a3, v14, a5, a6, a7);
}

void *sub_1000F444C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000F44C8(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
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

  v8 = result;
  v9 = *(a5 + 48);
  v10 = a6(0);
  (*(*(v10 - 8) + 16))(v8, v9 + *(*(v10 - 8) + 72) * a2, v10);
  v11 = *(*(a5 + 56) + 8 * a2);
}

uint64_t sub_1000F45B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, char a8)
{
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 16) = a4;
  *(v8 + 49) = *a6;
  return _swift_task_switch(sub_1000F45E0, 0, 0);
}

uint64_t sub_1000F45E0()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 40) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CC94, v2, v1);
}

uint64_t sub_1000F46A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000FBED0;

  return sub_1000E18A0(a2, a3, a4);
}

uint64_t sub_1000F4754(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return v10(a1, v5, v6);
}

uint64_t sub_1000F4860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000FBED0;

  return sub_1000E27FC(a2, a3, a4);
}

uint64_t sub_1000F4910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000FBED0;

  return sub_1000E3758(a2, a3, a4);
}

uint64_t sub_1000F49C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, char a8)
{
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 16) = a4;
  *(v8 + 49) = *a6;
  return _swift_task_switch(sub_1000F49F0, 0, 0);
}

uint64_t sub_1000F49F0()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 40) = static CommunicationActor.shared.getter();
  sub_1000FAACC(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000C6B8, v2, v1);
}

uint64_t sub_1000F4AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000F4B64;

  return sub_1000E46B4(a2, a3, a4);
}

uint64_t sub_1000F4B64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1000F4C78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000CC84;

  return sub_1000F19D0();
}

uint64_t sub_1000F4D2C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10005E750;

  return sub_1000F2E54(a1, a2, v2);
}

uint64_t sub_1000F4DD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F4E0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000CC84;

  return sub_1000E9190(a1, v1);
}

uint64_t sub_1000F4EA4()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 4, v3 | 7);
}

uint64_t sub_1000F4F74(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 28);
  v10 = *(v2 + ((*(v6 + 64) + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000CC84;

  return sub_1000F4358(a1, a2, v8, (v2 + 24), v9, v2 + v7, v10);
}

uint64_t sub_1000F50B4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000EE9E8(a1, a2, v7);
}

uint64_t sub_1000F5178()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000CC84;

  return sub_100006A44();
}

uint64_t sub_1000F522C()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 20) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000F52B4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Message() - 8);
  v7 = (*(v6 + 80) + 20) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_100085F14(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000F53A4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000045BC;

  return sub_1000EE9E8(a1, a2, v7);
}

uint64_t sub_1000F5468()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000045BC;

  return sub_100006A44();
}

uint64_t sub_1000F551C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C364(a1, a2);
}

uint64_t sub_1000F55C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F2B0(a1);
}

uint64_t sub_1000F5660()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FBEE0;

  return sub_100091A90();
}

uint64_t sub_1000F56F0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_1000921C8(a1, a2, v2);
}

uint64_t sub_1000F579C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FBEE0;

  return sub_100092D18(a1);
}

uint64_t sub_1000F5834(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000FBEE0;

  return sub_10009355C(a1, v1);
}

uint64_t sub_1000F58CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_100093F74();
}

uint64_t sub_1000F595C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_100094284();
}

uint64_t sub_1000F59EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100043E28;

  return sub_1000FC84C(v2);
}

uint64_t sub_1000F5A84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C364(a1, a2);
}

uint64_t sub_1000F5B30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F2B0(a1);
}

uint64_t sub_1000F5BC8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_100004EBC(a1, a2, v7);
}

uint64_t sub_1000F5C7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D09DC(a1, a2);
}

uint64_t sub_1000F5D28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000D5FE0();
}

uint64_t sub_1000F5DB8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000041B8(a1, v6, v4, v5);
}

uint64_t sub_1000F5E68(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000EE5B8(a1, a2, v7, v6);
}

uint64_t sub_1000F5F1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[3];
  return swift_getAssociatedConformanceWitness();
}

__n128 sub_1000F5F48(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1000F5F7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_100064050(a1, a2);
}

uint64_t sub_1000F6058(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000F61A0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F46A4(a1, a2, v7, v6);
}

uint64_t sub_1000F6268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10000CC84;

  return sub_1000E57A4(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000F6334(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4754(a1, a2, v7);
}

uint64_t sub_1000F63FC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1000F400C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000F6430()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F64A4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for MessageBody() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_1000ED8C0(a1, a2, v8, v9, v2 + v7);
}

uint64_t sub_1000F65B0(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000D9458(a1, v6, v1 + v5);
}

uint64_t *sub_1000F6694(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_1000F66E4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_1000D9FE8(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000F67D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000F6934(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C5D0(a1, a2);
}

uint64_t sub_1000F69E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F380(a1);
}

uint64_t sub_1000F6A78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FBEE0;

  return sub_100091EA4();
}

uint64_t sub_1000F6B08(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_100092480(a1, a2, v2);
}

uint64_t sub_1000F6BB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FBEE0;

  return sub_100092E34(a1);
}

uint64_t sub_1000F6C4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000FBEE0;

  return sub_100093934(a1, v1);
}

uint64_t sub_1000F6CE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_100094038();
}

uint64_t sub_1000F6D74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_100094348();
}

uint64_t sub_1000F6E04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C5D0(a1, a2);
}

uint64_t sub_1000F6EB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F380(a1);
}

uint64_t sub_1000F6F48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D0ABC(a1, a2);
}

uint64_t sub_1000F6FF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000D60A4();
}

uint64_t sub_1000F7084()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F70BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v59 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v58);
  v55 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v43 - v12;
  v13 = &_swiftEmptyDictionarySingleton;
  v60 = &_swiftEmptyDictionarySingleton;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return v13;
  }

  v16 = *(v8 + 16);
  v15 = v8 + 16;
  v17 = *(v15 + 64);
  v18 = *(v15 + 56);
  v53 = (v17 + 32) & ~v17;
  v54 = v16;
  v19 = a1 + v53;
  v56 = (v15 + 16);
  v46 = v5 + 32;
  v47 = v17;
  v45 = (v5 + 8);
  v44 = xmmword_1001089C0;
  v48 = v4;
  v49 = a2;
  v50 = v5;
  v51 = v18;
  v52 = v15;
  v16(v57, v19, v58);
  while (1)
  {
    v22 = v59;
    swift_getAtKeyPath();
    v24 = sub_100057E38(v22);
    v25 = v13[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v13[3] < v27)
    {
      sub_10005B0A4(v27, 1);
      v13 = v60;
      v29 = sub_100057E38(v59);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_20;
      }

      v24 = v29;
    }

    if (v28)
    {
      (*v45)(v59, v4);
      v31 = v13[7];
      v32 = *v56;
      (*v56)(v55, v57, v58);
      v33 = *(v31 + 8 * v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v31 + 8 * v24) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_1001002D0(0, *(v33 + 2) + 1, 1, v33);
        *(v31 + 8 * v24) = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_1001002D0(v35 > 1, v36 + 1, 1, v33);
        *(v31 + 8 * v24) = v33;
      }

      v20 = v53;
      *(v33 + 2) = v36 + 1;
      v5 = v50;
      v21 = v51;
      v32(&v33[v20 + v36 * v51], v55, v58);
      v4 = v48;
    }

    else
    {
      sub_10000560C(&qword_10012A708, &unk_1001095F0);
      v37 = v53;
      v38 = swift_allocObject();
      *(v38 + 16) = v44;
      (*v56)((v38 + v37), v57, v58);
      v13[(v24 >> 6) + 8] |= 1 << v24;
      (*(v5 + 32))(v13[6] + *(v5 + 72) * v24, v59, v4);
      *(v13[7] + 8 * v24) = v38;
      v39 = v13[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_19;
      }

      v13[2] = v41;
      v21 = v51;
    }

    v19 += v21;
    if (!--v14)
    {
      return v13;
    }

    v54(v57, v19, v58);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t *sub_1000F74F0(uint64_t a1)
{
  v88 = type metadata accessor for DailyID();
  v2 = *(v88 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v88);
  v87 = &v83[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = type metadata accessor for Logger();
  v5 = *(v92 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v92);
  v89 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v83[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v83[-v18];
  v20 = __chkstk_darwin(v17);
  v102 = &v83[-v21];
  __chkstk_darwin(v20);
  v23 = &v83[-v22];
  v108 = static PhotosFaceIDDatabaseFix.hourValueLowerBound()();
  v93 = static PhotosFaceIDDatabaseFix.hourValueDivisor()();
  v24 = *(a1 + 16);
  if (v24)
  {
    v103 = v5;
    v104 = v2;
    v96 = v16;
    v97 = v19;
    v100 = v23;
    v101 = 0;
    v25 = 0;
    v26 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = v9 + 16;
    v107 = (v9 + 8);
    v109 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = 0;
    do
    {
      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        v105 = *(v9 + 72);
        v110 = *(v9 + 16);
        (v110)(v13, v26 + v105 * v28, v8);
        if (v25 < SyncedPhotosFace.day.getter())
        {
          v25 = SyncedPhotosFace.day.getter();
        }

        v31 = SyncedPhotosFace.day.getter();
        v32 = v109;
        if (v31 < v109)
        {
          v32 = SyncedPhotosFace.day.getter();
        }

        v106 = *v107;
        v106(v13, v8);
        v109 = v32;
        if (v32 < v108 && v25 >= v108)
        {
          break;
        }

        ++v28;
        v29 = v110;
        if (v30 == v24)
        {
          goto LABEL_15;
        }

        if (v28 >= v24)
        {
          goto LABEL_14;
        }
      }

      v101 = 1;
      v29 = v110;
      if (v30 == v24)
      {
        goto LABEL_15;
      }

      ++v28;
    }

    while (v30 < v24);
LABEL_14:
    __break(1u);
LABEL_15:
    v35 = v109 == 0x8000000000000000 && v93 == -1;
    v84 = v35;
    v91 = (v103 + 8);
    v36 = &_swiftEmptyDictionarySingleton;
    v86 = (v104 + 8);
    *&v33 = 134218754;
    v85 = v33;
    v37 = v89;
    v38 = v24;
    v39 = v97;
    v40 = v102;
    v41 = v100;
    v95 = v27;
    while (1)
    {
      v104 = v38;
      if (!v38)
      {
        break;
      }

      v56 = v26;
      v57 = v37;
      v103 = v56;
      v29(v41);
      v58 = SyncedPhotosFace.day.getter();
      v59 = v27;
      v60 = v108;
      if (v108 >= v58 || (v101 & 1) == 0)
      {
        v65 = SyncedPhotosFace.day.getter();
        if (SyncedPhotosFace.day.getter() >= v60)
        {
          if (!v93)
          {
            goto LABEL_51;
          }

          if (v84)
          {
            goto LABEL_55;
          }

          v37 = v57;
          v67 = SyncedPhotosFace.day.getter();
          v68 = v67 - v109;
          if (__OFSUB__(v67, v109))
          {
            goto LABEL_52;
          }

          v66 = v109 / v93 + v68;
          if (__OFADD__(v109 / v93, v68))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v66 = SyncedPhotosFace.day.getter();
          v37 = v57;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v36;
        v70 = sub_100057BD0(v65);
        v72 = v36[2];
        v73 = (v71 & 1) == 0;
        v74 = __OFADD__(v72, v73);
        v75 = v72 + v73;
        v55 = v103;
        if (v74)
        {
          goto LABEL_50;
        }

        v76 = v71;
        if (v36[3] >= v75)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v81 = v70;
            sub_100058B50();
            v70 = v81;
            v37 = v89;
          }
        }

        else
        {
          sub_10005A7BC(v75, isUniquelyReferenced_nonNull_native);
          v70 = sub_100057BD0(v65);
          if ((v76 & 1) != (v77 & 1))
          {
            goto LABEL_56;
          }
        }

        v78 = v102;
        v27 = v95;
        v36 = v111;
        if (v76)
        {
          *(v111[7] + 8 * v70) = v66;
          v41 = v100;
          v106(v100, v8);
        }

        else
        {
          v111[(v70 >> 6) + 8] |= 1 << v70;
          *(v36[6] + 8 * v70) = v65;
          *(v36[7] + 8 * v70) = v66;
          v41 = v100;
          v106(v100, v8);
          v79 = v36[2];
          v74 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v74)
          {
            goto LABEL_54;
          }

          v36[2] = v80;
        }

        v39 = v97;
        v29 = v110;
        v40 = v78;
      }

      else
      {
        v99 = v36;
        static Log.session.getter();
        (v29)(v40, v41, v8);
        (v29)(v39, v41, v8);
        v61 = v40;
        v62 = v96;
        (v29)(v96, v41, v8);
        v63 = Logger.logObject.getter();
        v94 = static os_log_type_t.error.getter();
        v98 = v63;
        if (os_log_type_enabled(v63, v94))
        {
          v42 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v111 = v90;
          *v42 = v85;
          v43 = SyncedPhotosFace.day.getter();
          v44 = v106;
          v106(v102, v8);
          *(v42 + 4) = v43;
          *(v42 + 12) = 2080;
          v45 = v87;
          SyncedPhotosFace.id.getter();
          v44(v39, v8);
          sub_1000FAACC(&qword_10012A1E0, &type metadata accessor for DailyID);
          v46 = v88;
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          v50 = v45;
          v29 = v110;
          v51 = v96;
          v39 = v97;
          (*v86)(v50, v46);
          v52 = sub_100102F80(v47, v49, &v111);
          v37 = v89;

          *(v42 + 14) = v52;
          *(v42 + 22) = 2048;
          *(v42 + 24) = v109;
          *(v42 + 32) = 2048;
          v53 = SyncedPhotosFace.day.getter();
          v44(v51, v8);
          *(v42 + 34) = v53;
          v54 = v98;
          _os_log_impl(&_mh_execute_header, v98, v94, "Found day %ld for %s, but the minimum valid day is %ld; skipping photos for day %ld", v42, 0x2Au);
          sub_10000C304(v90);

          v27 = v95;
          v40 = v102;

          (*v91)(v37, v92);
          v41 = v100;
          v44(v100, v8);
          v36 = v99;
        }

        else
        {
          v27 = v59;
          v64 = v106;
          v106(v62, v8);
          v64(v61, v8);
          v64(v39, v8);

          (*v91)(v57, v92);
          v64(v41, v8);
          v40 = v61;
          v36 = v99;
          v37 = v57;
        }

        v55 = v103;
      }

      v26 = v55 + v105;
      v38 = v104 - 1;
      if (v104 == 1)
      {
        return v36;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000F7E58(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000F7FA0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4860(a1, a2, v7, v6);
}

uint64_t sub_1000F8068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10000CC84;

  return sub_1000E5CE4(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000F8134(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4754(a1, a2, v7);
}

uint64_t sub_1000F8214(uint64_t a1)
{
  v4 = *(type metadata accessor for DailyID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000D973C(a1, v6, v1 + v5);
}

uint64_t sub_1000F82F8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for DailyID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_1000DB8B8(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000F83E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000F8530(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C6B0(a1, a2);
}

uint64_t sub_1000F85DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F450(a1);
}

uint64_t sub_1000F8674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FBEE0;

  return sub_100091FB0();
}

uint64_t sub_1000F8704(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_100092738(a1, a2, v2);
}

uint64_t sub_1000F87B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FBEE0;

  return sub_100092F50(a1);
}

uint64_t sub_1000F8848(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000FBEE0;

  return sub_10009355C(a1, v1);
}

uint64_t sub_1000F88E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000940FC();
}

uint64_t sub_1000F8970()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_10009440C();
}

uint64_t sub_1000F8A00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C6B0(a1, a2);
}

uint64_t sub_1000F8AAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F450(a1);
}

uint64_t sub_1000F8B44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D0B9C(a1, a2);
}

uint64_t sub_1000F8BF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000D6168();
}

uint64_t sub_1000F8C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShuffleID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v59 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v58);
  v55 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v43 - v12;
  v13 = &_swiftEmptyDictionarySingleton;
  v60 = &_swiftEmptyDictionarySingleton;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return v13;
  }

  v16 = *(v8 + 16);
  v15 = v8 + 16;
  v17 = *(v15 + 64);
  v18 = *(v15 + 56);
  v53 = (v17 + 32) & ~v17;
  v54 = v16;
  v19 = a1 + v53;
  v56 = (v15 + 16);
  v46 = v5 + 32;
  v47 = v17;
  v45 = (v5 + 8);
  v44 = xmmword_1001089C0;
  v48 = v4;
  v49 = a2;
  v50 = v5;
  v51 = v18;
  v52 = v15;
  v16(v57, v19, v58);
  while (1)
  {
    v22 = v59;
    swift_getAtKeyPath();
    v24 = sub_100057D64(v22);
    v25 = v13[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v13[3] < v27)
    {
      sub_10005ACC8(v27, 1);
      v13 = v60;
      v29 = sub_100057D64(v59);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_20;
      }

      v24 = v29;
    }

    if (v28)
    {
      (*v45)(v59, v4);
      v31 = v13[7];
      v32 = *v56;
      (*v56)(v55, v57, v58);
      v33 = *(v31 + 8 * v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v31 + 8 * v24) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_1001002AC(0, *(v33 + 2) + 1, 1, v33);
        *(v31 + 8 * v24) = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_1001002AC(v35 > 1, v36 + 1, 1, v33);
        *(v31 + 8 * v24) = v33;
      }

      v20 = v53;
      *(v33 + 2) = v36 + 1;
      v5 = v50;
      v21 = v51;
      v32(&v33[v20 + v36 * v51], v55, v58);
      v4 = v48;
    }

    else
    {
      sub_10000560C(&qword_10012A6A0, &unk_100109590);
      v37 = v53;
      v38 = swift_allocObject();
      *(v38 + 16) = v44;
      (*v56)((v38 + v37), v57, v58);
      v13[(v24 >> 6) + 8] |= 1 << v24;
      (*(v5 + 32))(v13[6] + *(v5 + 72) * v24, v59, v4);
      *(v13[7] + 8 * v24) = v38;
      v39 = v13[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_19;
      }

      v13[2] = v41;
      v21 = v51;
    }

    v19 += v21;
    if (!--v14)
    {
      return v13;
    }

    v54(v57, v19, v58);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t *sub_1000F90B4(uint64_t a1)
{
  v88 = type metadata accessor for ShuffleID();
  v2 = *(v88 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v88);
  v87 = &v83[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = type metadata accessor for Logger();
  v5 = *(v92 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v92);
  v89 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v83[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v83[-v18];
  v20 = __chkstk_darwin(v17);
  v102 = &v83[-v21];
  __chkstk_darwin(v20);
  v23 = &v83[-v22];
  v108 = static PhotosFaceIDDatabaseFix.hourValueLowerBound()();
  v93 = static PhotosFaceIDDatabaseFix.hourValueDivisor()();
  v24 = *(a1 + 16);
  if (v24)
  {
    v103 = v5;
    v104 = v2;
    v96 = v16;
    v97 = v19;
    v100 = v23;
    v101 = 0;
    v25 = 0;
    v26 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = v9 + 16;
    v107 = (v9 + 8);
    v109 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = 0;
    do
    {
      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        v105 = *(v9 + 72);
        v110 = *(v9 + 16);
        (v110)(v13, v26 + v105 * v28, v8);
        if (v25 < SyncedPhotosFace.day.getter())
        {
          v25 = SyncedPhotosFace.day.getter();
        }

        v31 = SyncedPhotosFace.day.getter();
        v32 = v109;
        if (v31 < v109)
        {
          v32 = SyncedPhotosFace.day.getter();
        }

        v106 = *v107;
        v106(v13, v8);
        v109 = v32;
        if (v32 < v108 && v25 >= v108)
        {
          break;
        }

        ++v28;
        v29 = v110;
        if (v30 == v24)
        {
          goto LABEL_15;
        }

        if (v28 >= v24)
        {
          goto LABEL_14;
        }
      }

      v101 = 1;
      v29 = v110;
      if (v30 == v24)
      {
        goto LABEL_15;
      }

      ++v28;
    }

    while (v30 < v24);
LABEL_14:
    __break(1u);
LABEL_15:
    v35 = v109 == 0x8000000000000000 && v93 == -1;
    v84 = v35;
    v91 = (v103 + 8);
    v36 = &_swiftEmptyDictionarySingleton;
    v86 = (v104 + 8);
    *&v33 = 134218754;
    v85 = v33;
    v37 = v89;
    v38 = v24;
    v39 = v97;
    v40 = v102;
    v41 = v100;
    v95 = v27;
    while (1)
    {
      v104 = v38;
      if (!v38)
      {
        break;
      }

      v56 = v26;
      v57 = v37;
      v103 = v56;
      v29(v41);
      v58 = SyncedPhotosFace.day.getter();
      v59 = v27;
      v60 = v108;
      if (v108 >= v58 || (v101 & 1) == 0)
      {
        v65 = SyncedPhotosFace.day.getter();
        if (SyncedPhotosFace.day.getter() >= v60)
        {
          if (!v93)
          {
            goto LABEL_51;
          }

          if (v84)
          {
            goto LABEL_55;
          }

          v37 = v57;
          v67 = SyncedPhotosFace.day.getter();
          v68 = v67 - v109;
          if (__OFSUB__(v67, v109))
          {
            goto LABEL_52;
          }

          v66 = v109 / v93 + v68;
          if (__OFADD__(v109 / v93, v68))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v66 = SyncedPhotosFace.day.getter();
          v37 = v57;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v36;
        v70 = sub_100057BD0(v65);
        v72 = v36[2];
        v73 = (v71 & 1) == 0;
        v74 = __OFADD__(v72, v73);
        v75 = v72 + v73;
        v55 = v103;
        if (v74)
        {
          goto LABEL_50;
        }

        v76 = v71;
        if (v36[3] >= v75)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v81 = v70;
            sub_100058B50();
            v70 = v81;
            v37 = v89;
          }
        }

        else
        {
          sub_10005A7BC(v75, isUniquelyReferenced_nonNull_native);
          v70 = sub_100057BD0(v65);
          if ((v76 & 1) != (v77 & 1))
          {
            goto LABEL_56;
          }
        }

        v78 = v102;
        v27 = v95;
        v36 = v111;
        if (v76)
        {
          *(v111[7] + 8 * v70) = v66;
          v41 = v100;
          v106(v100, v8);
        }

        else
        {
          v111[(v70 >> 6) + 8] |= 1 << v70;
          *(v36[6] + 8 * v70) = v65;
          *(v36[7] + 8 * v70) = v66;
          v41 = v100;
          v106(v100, v8);
          v79 = v36[2];
          v74 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v74)
          {
            goto LABEL_54;
          }

          v36[2] = v80;
        }

        v39 = v97;
        v29 = v110;
        v40 = v78;
      }

      else
      {
        v99 = v36;
        static Log.session.getter();
        (v29)(v40, v41, v8);
        (v29)(v39, v41, v8);
        v61 = v40;
        v62 = v96;
        (v29)(v96, v41, v8);
        v63 = Logger.logObject.getter();
        v94 = static os_log_type_t.error.getter();
        v98 = v63;
        if (os_log_type_enabled(v63, v94))
        {
          v42 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v111 = v90;
          *v42 = v85;
          v43 = SyncedPhotosFace.day.getter();
          v44 = v106;
          v106(v102, v8);
          *(v42 + 4) = v43;
          *(v42 + 12) = 2080;
          v45 = v87;
          SyncedPhotosFace.id.getter();
          v44(v39, v8);
          sub_1000FAACC(&qword_10012A2F0, &type metadata accessor for ShuffleID);
          v46 = v88;
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          v50 = v45;
          v29 = v110;
          v51 = v96;
          v39 = v97;
          (*v86)(v50, v46);
          v52 = sub_100102F80(v47, v49, &v111);
          v37 = v89;

          *(v42 + 14) = v52;
          *(v42 + 22) = 2048;
          *(v42 + 24) = v109;
          *(v42 + 32) = 2048;
          v53 = SyncedPhotosFace.day.getter();
          v44(v51, v8);
          *(v42 + 34) = v53;
          v54 = v98;
          _os_log_impl(&_mh_execute_header, v98, v94, "Found day %ld for %s, but the minimum valid day is %ld; skipping photos for day %ld", v42, 0x2Au);
          sub_10000C304(v90);

          v27 = v95;
          v40 = v102;

          (*v91)(v37, v92);
          v41 = v100;
          v44(v100, v8);
          v36 = v99;
        }

        else
        {
          v27 = v59;
          v64 = v106;
          v106(v62, v8);
          v64(v61, v8);
          v64(v39, v8);

          (*v91)(v57, v92);
          v64(v41, v8);
          v40 = v61;
          v36 = v99;
          v37 = v57;
        }

        v55 = v103;
      }

      v26 = v55 + v105;
      v38 = v104 - 1;
      if (v104 == 1)
      {
        return v36;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000F9A1C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4910(a1, a2, v7, v6);
}

uint64_t sub_1000F9AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10000CC84;

  return sub_1000E6D88(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000F9BB0(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4754(a1, a2, v7);
}

uint64_t sub_1000F9C78(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000D9A20(a1, v6, v1 + v5);
}

uint64_t sub_1000F9D5C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_1000DD188(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000F9E4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_10008C790(a1, a2);
}

uint64_t sub_1000F9EF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F520(a1);
}

uint64_t sub_1000F9F90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FBEE0;

  return sub_1000920BC();
}

uint64_t sub_1000FA020(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_1000929F0(a1, a2, v2);
}

uint64_t sub_1000FA0CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FA164;

  return sub_10009306C(a1);
}

uint64_t sub_1000FA164(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000FA260(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000FBEE0;

  return sub_100093AC0(a1, v1);
}

uint64_t sub_1000FA2F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000941C0();
}

uint64_t sub_1000FA388()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000944D0();
}

uint64_t sub_1000FA418(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D0770(a1, a2);
}

uint64_t sub_1000FA4C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CC84;

  return sub_10008F520(a1);
}

uint64_t sub_1000FA55C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_1000D0C7C(a1, a2);
}

uint64_t sub_1000FA608()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CC84;

  return sub_1000D622C();
}

uint64_t sub_1000FA698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlbumID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v59 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v58);
  v55 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v43 - v12;
  v13 = &_swiftEmptyDictionarySingleton;
  v60 = &_swiftEmptyDictionarySingleton;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return v13;
  }

  v16 = *(v8 + 16);
  v15 = v8 + 16;
  v17 = *(v15 + 64);
  v18 = *(v15 + 56);
  v53 = (v17 + 32) & ~v17;
  v54 = v16;
  v19 = a1 + v53;
  v56 = (v15 + 16);
  v46 = v5 + 32;
  v47 = v17;
  v45 = (v5 + 8);
  v44 = xmmword_1001089C0;
  v48 = v4;
  v49 = a2;
  v50 = v5;
  v51 = v18;
  v52 = v15;
  v16(v57, v19, v58);
  while (1)
  {
    v22 = v59;
    swift_getAtKeyPath();
    v24 = sub_100057F0C(v22);
    v25 = v13[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v13[3] < v27)
    {
      sub_10005B480(v27, 1);
      v13 = v60;
      v29 = sub_100057F0C(v59);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_20;
      }

      v24 = v29;
    }

    if (v28)
    {
      (*v45)(v59, v4);
      v31 = v13[7];
      v32 = *v56;
      (*v56)(v55, v57, v58);
      v33 = *(v31 + 8 * v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v31 + 8 * v24) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_1001002F4(0, *(v33 + 2) + 1, 1, v33);
        *(v31 + 8 * v24) = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_1001002F4(v35 > 1, v36 + 1, 1, v33);
        *(v31 + 8 * v24) = v33;
      }

      v20 = v53;
      *(v33 + 2) = v36 + 1;
      v5 = v50;
      v21 = v51;
      v32(&v33[v20 + v36 * v51], v55, v58);
      v4 = v48;
    }

    else
    {
      sub_10000560C(&qword_10012A768, &unk_100109650);
      v37 = v53;
      v38 = swift_allocObject();
      *(v38 + 16) = v44;
      (*v56)((v38 + v37), v57, v58);
      v13[(v24 >> 6) + 8] |= 1 << v24;
      (*(v5 + 32))(v13[6] + *(v5 + 72) * v24, v59, v4);
      *(v13[7] + 8 * v24) = v38;
      v39 = v13[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_19;
      }

      v13[2] = v41;
      v21 = v51;
    }

    v19 += v21;
    if (!--v14)
    {
      return v13;
    }

    v54(v57, v19, v58);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000FAACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1000FAB14(uint64_t a1)
{
  v88 = type metadata accessor for AlbumID();
  v2 = *(v88 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v88);
  v87 = &v83[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = type metadata accessor for Logger();
  v5 = *(v92 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v92);
  v89 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v83[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v83[-v18];
  v20 = __chkstk_darwin(v17);
  v102 = &v83[-v21];
  __chkstk_darwin(v20);
  v23 = &v83[-v22];
  v108 = static PhotosFaceIDDatabaseFix.hourValueLowerBound()();
  v93 = static PhotosFaceIDDatabaseFix.hourValueDivisor()();
  v24 = *(a1 + 16);
  if (v24)
  {
    v103 = v5;
    v104 = v2;
    v96 = v16;
    v97 = v19;
    v100 = v23;
    v101 = 0;
    v25 = 0;
    v26 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = v9 + 16;
    v107 = (v9 + 8);
    v109 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = 0;
    do
    {
      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        v105 = *(v9 + 72);
        v110 = *(v9 + 16);
        (v110)(v13, v26 + v105 * v28, v8);
        if (v25 < SyncedPhotosFace.day.getter())
        {
          v25 = SyncedPhotosFace.day.getter();
        }

        v31 = SyncedPhotosFace.day.getter();
        v32 = v109;
        if (v31 < v109)
        {
          v32 = SyncedPhotosFace.day.getter();
        }

        v106 = *v107;
        v106(v13, v8);
        v109 = v32;
        if (v32 < v108 && v25 >= v108)
        {
          break;
        }

        ++v28;
        v29 = v110;
        if (v30 == v24)
        {
          goto LABEL_15;
        }

        if (v28 >= v24)
        {
          goto LABEL_14;
        }
      }

      v101 = 1;
      v29 = v110;
      if (v30 == v24)
      {
        goto LABEL_15;
      }

      ++v28;
    }

    while (v30 < v24);
LABEL_14:
    __break(1u);
LABEL_15:
    v35 = v109 == 0x8000000000000000 && v93 == -1;
    v84 = v35;
    v91 = (v103 + 8);
    v36 = &_swiftEmptyDictionarySingleton;
    v86 = (v104 + 8);
    *&v33 = 134218754;
    v85 = v33;
    v37 = v89;
    v38 = v24;
    v39 = v97;
    v40 = v102;
    v41 = v100;
    v95 = v27;
    while (1)
    {
      v104 = v38;
      if (!v38)
      {
        break;
      }

      v56 = v26;
      v57 = v37;
      v103 = v56;
      v29(v41);
      v58 = SyncedPhotosFace.day.getter();
      v59 = v27;
      v60 = v108;
      if (v108 >= v58 || (v101 & 1) == 0)
      {
        v65 = SyncedPhotosFace.day.getter();
        if (SyncedPhotosFace.day.getter() >= v60)
        {
          if (!v93)
          {
            goto LABEL_51;
          }

          if (v84)
          {
            goto LABEL_55;
          }

          v37 = v57;
          v67 = SyncedPhotosFace.day.getter();
          v68 = v67 - v109;
          if (__OFSUB__(v67, v109))
          {
            goto LABEL_52;
          }

          v66 = v109 / v93 + v68;
          if (__OFADD__(v109 / v93, v68))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v66 = SyncedPhotosFace.day.getter();
          v37 = v57;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v36;
        v70 = sub_100057BD0(v65);
        v72 = v36[2];
        v73 = (v71 & 1) == 0;
        v74 = __OFADD__(v72, v73);
        v75 = v72 + v73;
        v55 = v103;
        if (v74)
        {
          goto LABEL_50;
        }

        v76 = v71;
        if (v36[3] >= v75)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v81 = v70;
            sub_100058B50();
            v70 = v81;
            v37 = v89;
          }
        }

        else
        {
          sub_10005A7BC(v75, isUniquelyReferenced_nonNull_native);
          v70 = sub_100057BD0(v65);
          if ((v76 & 1) != (v77 & 1))
          {
            goto LABEL_56;
          }
        }

        v78 = v102;
        v27 = v95;
        v36 = v111;
        if (v76)
        {
          *(v111[7] + 8 * v70) = v66;
          v41 = v100;
          v106(v100, v8);
        }

        else
        {
          v111[(v70 >> 6) + 8] |= 1 << v70;
          *(v36[6] + 8 * v70) = v65;
          *(v36[7] + 8 * v70) = v66;
          v41 = v100;
          v106(v100, v8);
          v79 = v36[2];
          v74 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v74)
          {
            goto LABEL_54;
          }

          v36[2] = v80;
        }

        v39 = v97;
        v29 = v110;
        v40 = v78;
      }

      else
      {
        v99 = v36;
        static Log.session.getter();
        (v29)(v40, v41, v8);
        (v29)(v39, v41, v8);
        v61 = v40;
        v62 = v96;
        (v29)(v96, v41, v8);
        v63 = Logger.logObject.getter();
        v94 = static os_log_type_t.error.getter();
        v98 = v63;
        if (os_log_type_enabled(v63, v94))
        {
          v42 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v111 = v90;
          *v42 = v85;
          v43 = SyncedPhotosFace.day.getter();
          v44 = v106;
          v106(v102, v8);
          *(v42 + 4) = v43;
          *(v42 + 12) = 2080;
          v45 = v87;
          SyncedPhotosFace.id.getter();
          v44(v39, v8);
          sub_1000FAACC(&qword_10012A0A0, &type metadata accessor for AlbumID);
          v46 = v88;
          v47 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v48;
          v50 = v45;
          v29 = v110;
          v51 = v96;
          v39 = v97;
          (*v86)(v50, v46);
          v52 = sub_100102F80(v47, v49, &v111);
          v37 = v89;

          *(v42 + 14) = v52;
          *(v42 + 22) = 2048;
          *(v42 + 24) = v109;
          *(v42 + 32) = 2048;
          v53 = SyncedPhotosFace.day.getter();
          v44(v51, v8);
          *(v42 + 34) = v53;
          v54 = v98;
          _os_log_impl(&_mh_execute_header, v98, v94, "Found day %ld for %s, but the minimum valid day is %ld; skipping photos for day %ld", v42, 0x2Au);
          sub_10000C304(v90);

          v27 = v95;
          v40 = v102;

          (*v91)(v37, v92);
          v41 = v100;
          v44(v100, v8);
          v36 = v99;
        }

        else
        {
          v27 = v59;
          v64 = v106;
          v106(v62, v8);
          v64(v61, v8);
          v64(v39, v8);

          (*v91)(v57, v92);
          v64(v41, v8);
          v40 = v61;
          v36 = v99;
          v37 = v57;
        }

        v55 = v103;
      }

      v26 = v55 + v105;
      v38 = v104 - 1;
      if (v104 == 1)
      {
        return v36;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000FB47C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F49C0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000FB5C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4AB4(a1, a2, v7, v6);
}

uint64_t sub_1000FB68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10000CC84;

  return sub_1000E7E2C(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1000FB758(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_1000F4754(a1, a2, v7);
}

uint64_t sub_1000FB838(uint64_t a1)
{
  v4 = *(type metadata accessor for AlbumID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CC84;

  return sub_1000D9D04(a1, v6, v1 + v5);
}

uint64_t sub_1000FB91C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AlbumID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_1000DEA58(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000FBA0C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MessageBody() - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = v1 + ((*(v5 + 80) + 49) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000CC84;

  return sub_1000F45B0(a1, v6, v7, v8, v9, (v1 + 48), v10, v11);
}

uint64_t sub_1000FBB54(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1000FBC58()
{
  v1 = type metadata accessor for MessageBody();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000FBD1C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for MessageBody() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_1000ED0A8(a1, a2, v8, v9, v2 + v7);
}

uint64_t sub_1000FBF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000C04C(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000C460(v11, &qword_100129E70, &unk_100109CD0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000C460(a3, &qword_100129E70, &unk_100109CD0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000C460(a3, &qword_100129E70, &unk_100109CD0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000FC1D8()
{
  v1 = v0;
  v12[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v12[0] - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  swift_defaultActor_initialize();
  sub_100100890();
  static DispatchQoS.unspecified.getter();
  v12[1] = &_swiftEmptyArrayStorage;
  sub_1001008DC(&qword_10012B750, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_10000560C(&qword_10012B758, &unk_10010AAC0);
  sub_100100924();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12[0]);
  *(v0 + 112) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  ContinuousClock.init()();
  v10 = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_registry;
  *(v1 + v10) = sub_10005D2D4(&_swiftEmptyArrayStorage);
  return v1;
}

void sub_1000FC444()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "BackgroundTaskManager Activate", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v8 = objc_opt_self();
  v9 = 0;
  v17 = *(v19 + 112);
  v18 = v8;
  v16[1] = "com.apple.photosface.sync";
  v16[2] = v21;
  v16[0] = "v16@?0@BGSystemTask8";
  do
  {
    v10 = *(&off_100125EB8 + v9++ + 32);
    v11 = [v18 sharedScheduler];
    v12 = String._bridgeToObjectiveC()();

    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    v21[2] = sub_100100884;
    v21[3] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v21[0] = sub_1000FC7E4;
    v21[1] = &unk_100127968;
    v15 = _Block_copy(aBlock);

    [v11 registerForTaskWithIdentifier:v12 usingQueue:v17 launchHandler:v15];
    _Block_release(v15);
  }

  while (v9 != 5);
}

uint64_t sub_1000FC770(void *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000FCE60(a3, a1);
  }

  return result;
}

void sub_1000FC7E4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000FC84C(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FC934;

  return v5();
}

uint64_t sub_1000FC934()
{
  v2 = *(*v1 + 16);
  v8 = *v1;

  v6 = *(v8 + 8);
  if (!v0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
  }

  return v6(v3, v4, v5);
}

uint64_t sub_1000FCA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_registry;
  swift_beginAccess();

  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  *(v4 + v9) = 0x8000000000000000;
  v14 = sub_1000579F8(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  if (v12[3] >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + v9) = v12;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100058608();
      *(v4 + v9) = v12;
      if (v18)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_10005F8A8(v14, a1, _swiftEmptyArrayStorage, v12);
    goto LABEL_9;
  }

  sub_100059A44(v17, isUniquelyReferenced_nonNull_native);
  v19 = sub_1000579F8(a1);
  if ((v18 & 1) != (v20 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v19;
  *(v4 + v9) = v12;
  if ((v18 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4 = v12[7];
  v12 = *(v4 + 8 * v14);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 8 * v14) = v12;
  if ((v21 & 1) == 0)
  {
LABEL_14:
    v12 = sub_1000FFE54(0, v12[2] + 1, 1, v12, &qword_10012B730, &qword_10010AA88);
    *(v4 + 8 * v14) = v12;
  }

  v23 = v12[2];
  v22 = v12[3];
  if (v23 >= v22 >> 1)
  {
    v12 = sub_1000FFE54((v22 > 1), v23 + 1, 1, v12, &qword_10012B730, &qword_10010AA88);
    *(v4 + 8 * v14) = v12;
  }

  v12[2] = v23 + 1;
  v24 = &v12[2 * v23];
  v24[4] = &unk_10010AA80;
  v24[5] = v8;
  return swift_endAccess();
}

uint64_t sub_1000FCC4C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000FCD38;

  return v6();
}

uint64_t sub_1000FCD38(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3 & 1;
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t sub_1000FCE60(char a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000560C(&qword_100129E70, &unk_100109CD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = aBlock - v8;
  v10 = type metadata accessor for Analytics.BackgroundTask();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  static ContinuousClock.Instant.now.getter();
  *(v13 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_errored) = 0;
  v14 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_cancelTime;
  v15 = type metadata accessor for ContinuousClock.Instant();
  v16 = *(*(v15 - 8) + 56);
  v16(v13 + v14, 1, 1, v15);
  v16(v13 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_endTime, 1, 1, v15);
  v17 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_lock;
  sub_10000560C(&qword_10012B728, &qword_10010AA60);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v13 + v17) = v18;
  *(v13 + 16) = a1;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v3;
  *(v20 + 40) = v13;
  *(v20 + 48) = a1;
  *(v20 + 56) = a2;

  v21 = a2;
  v22 = sub_1000FBF3C(0, 0, v9, &unk_10010AA70, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v13;
  *(v23 + 32) = v22;
  aBlock[4] = sub_100100668;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000FEFF0;
  aBlock[3] = &unk_1001278C8;
  v24 = _Block_copy(aBlock);

  [v21 setExpirationHandler:v24];
  _Block_release(v24);
}

uint64_t sub_1000FD148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = a7;
  *(v7 + 264) = a6;
  *(v7 + 72) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock.Instant();
  *(v7 + 152) = v11;
  v12 = *(v11 - 8);
  *(v7 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1000FD310, 0, 0);
}

uint64_t sub_1000FD310()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 224) = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_clock;
  ContinuousClock.now.getter();
  v4 = *(v3 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_lock);
  *(v0 + 232) = v4;
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_1001006D0;
  *(v6 + 24) = v5;
  os_unfair_lock_lock(v4 + 4);
  sub_1001009A8();
  os_unfair_lock_unlock(v4 + 4);

  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_1000FD4A0;
  v8 = *(v0 + 72);
  v9 = *(v0 + 264);

  return sub_1000FF034(v9);
}

uint64_t sub_1000FD4A0(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 240);
  v9 = *v3;
  *(v5 + 248) = a1;
  *(v5 + 256) = v2;

  if (v2)
  {
    v7 = sub_1000FE600;
  }

  else
  {
    *(v5 + 265) = a2;
    v7 = sub_1000FD5F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000FD5F0()
{
  v225 = v0;
  if (*(v0 + 265))
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 184);
    v3 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = *(v0 + 136);
    v6 = *(v0 + 72);
    static Log.session.getter();
    (*(v4 + 16))(v2, v1, v3);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v216 = v8;
      log = v7;
      v9 = *(v0 + 264);
      v10 = swift_slowAlloc();
      v224[0] = swift_slowAlloc();
      v11 = 0xE400000000000000;
      *v10 = 136315394;
      v12 = 0x69737365636F7270;
      v13 = 0xEA0000000000676ELL;
      v14 = 0xE600000000000000;
      v15 = 0x70756D726177;
      if (v9 != 3)
      {
        v15 = 0x70756E61656C63;
        v14 = 0xE700000000000000;
      }

      if (v9 != 2)
      {
        v12 = v15;
        v13 = v14;
      }

      v16 = 0x68736572666572;
      if (v9)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v16 = 1668184435;
      }

      if (v9 <= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v12;
      }

      if (v9 <= 1)
      {
        v18 = v11;
      }

      else
      {
        v18 = v13;
      }

      v19 = *(v0 + 224);
      v20 = *(v0 + 200);
      v21 = *(v0 + 184);
      v23 = *(v0 + 152);
      v22 = *(v0 + 160);
      v199 = *(v0 + 104);
      v204 = *(v0 + 96);
      v209 = *(v0 + 136);
      v24 = *(v0 + 72);
      v25 = sub_100102F80(v17, v18, v224);

      *(v10 + 4) = v25;
      *(v10 + 12) = 2080;
      ContinuousClock.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v26 = v20;
      v27 = *(v22 + 8);
      (v27)(v26, v23);
      v28 = Duration.description.getter();
      v30 = v29;
      (v27)(v21, v23);
      v31 = sub_100102F80(v28, v30, v224);

      *(v10 + 14) = v31;
      _os_log_impl(&_mh_execute_header, log, v216, "Marking %s as complete after %s", v10, 0x16u);
      swift_arrayDestroy();

      v32 = *(v199 + 8);
      v32(v209, v204);
    }

    else
    {
      v66 = *(v0 + 184);
      v68 = *(v0 + 152);
      v67 = *(v0 + 160);
      v69 = *(v0 + 136);
      v70 = *(v0 + 96);
      v71 = *(v0 + 104);

      v27 = *(v67 + 8);
      (v27)(v66, v68);
      v32 = *(v71 + 8);
      v32(v69, v70);
    }

    v72 = *(v0 + 256);
    v73 = *(v0 + 232);
    v74 = *(v0 + 176);
    v75 = *(v0 + 80);
    static ContinuousClock.Instant.now.getter();
    v76 = swift_task_alloc();
    *(v76 + 16) = v75;
    *(v76 + 24) = v74;
    v77 = swift_task_alloc();
    *(v77 + 16) = sub_100100708;
    *(v77 + 24) = v76;
    os_unfair_lock_lock(v73 + 4);
    sub_1001009A8();
    os_unfair_lock_unlock(v73 + 4);

    if (!v72)
    {
      v79 = *(v0 + 176);
      v80 = *(v0 + 152);
      v81 = *(v0 + 160);
      v82 = *(v0 + 264);

      (v27)(v79, v80);
      logb = v27;
      if (v82 == 3)
      {
        v83 = *(v0 + 128);
        static Log.default.getter();
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 134217984;
          *(v86 + 4) = 108;
          _os_log_impl(&_mh_execute_header, v84, v85, "Marking feature %lu as complete.", v86, 0xCu);
        }

        v87 = *(v0 + 128);
        v88 = *(v0 + 96);
        v89 = *(v0 + 104);

        v32(v87, v88);
        v90 = objc_opt_self();
        *(v0 + 56) = 0;
        v91 = [v90 reportFeatureCheckpoint:50 forFeature:108 atDate:0 error:v0 + 56];
        v92 = *(v0 + 56);
        if (v91)
        {
          v93 = v92;
        }

        else
        {
          v150 = *(v0 + 112);
          v151 = v92;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          static Log.default.getter();
          swift_errorRetain();
          v152 = Logger.logObject.getter();
          v153 = static os_log_type_t.error.getter();

          v154 = os_log_type_enabled(v152, v153);
          v155 = *(v0 + 112);
          v156 = *(v0 + 96);
          if (v154)
          {
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v224[0] = v159;
            *v157 = 136315394;
            *(v157 + 4) = sub_100102F80(0x70756D726177, 0xE600000000000000, v224);
            *(v157 + 12) = 2112;
            swift_errorRetain();
            v160 = _swift_stdlib_bridgeErrorToNSError();
            *(v157 + 14) = v160;
            *v158 = v160;
            _os_log_impl(&_mh_execute_header, v152, v153, "Failed to mark %s as available: %@", v157, 0x16u);
            sub_10000C460(v158, &qword_100129EF8, &qword_100108C70);

            sub_10000C304(v159);
          }

          else
          {
          }

          v32(v155, v156);
        }
      }

      [*(v0 + 88) setTaskCompleted];
      goto LABEL_67;
    }
  }

  else
  {
    v33 = *(v0 + 248);
    v34 = *(v0 + 208);
    v35 = *(v0 + 216);
    v36 = *(v0 + 152);
    v37 = *(v0 + 160);
    v38 = *(v0 + 144);
    v39 = *(v0 + 72);
    static Log.session.getter();
    (*(v37 + 16))(v34, v35, v36);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v217 = v41;
      loga = v40;
      v42 = *(v0 + 264);
      v43 = swift_slowAlloc();
      v224[0] = swift_slowAlloc();
      v44 = 0xE400000000000000;
      *v43 = 136315650;
      v45 = 0x69737365636F7270;
      v46 = 0xEA0000000000676ELL;
      v47 = 0xE600000000000000;
      v48 = 0x70756D726177;
      if (v42 != 3)
      {
        v48 = 0x70756E61656C63;
        v47 = 0xE700000000000000;
      }

      if (v42 != 2)
      {
        v45 = v48;
        v46 = v47;
      }

      v49 = 0x68736572666572;
      if (v42)
      {
        v44 = 0xE700000000000000;
      }

      else
      {
        v49 = 1668184435;
      }

      if (v42 <= 1)
      {
        v50 = v49;
      }

      else
      {
        v50 = v45;
      }

      if (v42 <= 1)
      {
        v51 = v44;
      }

      else
      {
        v51 = v46;
      }

      v52 = *(v0 + 224);
      v54 = *(v0 + 200);
      v53 = *(v0 + 208);
      v56 = *(v0 + 152);
      v55 = *(v0 + 160);
      v195 = *(v0 + 248);
      v200 = *(v0 + 104);
      v205 = *(v0 + 96);
      v210 = *(v0 + 144);
      v57 = *(v0 + 72);
      v58 = sub_100102F80(v50, v51, v224);

      *(v43 + 4) = v58;
      *(v43 + 12) = 2080;
      ContinuousClock.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v59 = *(v55 + 8);
      (v59)(v54, v56);
      v60 = Duration.description.getter();
      v62 = v61;
      v63 = v53;
      v64 = v59;
      (v59)(v63, v56);
      v65 = sub_100102F80(v60, v62, v224);

      *(v43 + 14) = v65;
      *(v43 + 22) = 2048;
      *(v43 + 24) = v195;
      _os_log_impl(&_mh_execute_header, loga, v217, "Asked to delay task %s after %s. Retrying in %f seconds.", v43, 0x20u);
      swift_arrayDestroy();

      (*(v200 + 8))(v210, v205);
    }

    else
    {
      v94 = *(v0 + 208);
      v96 = *(v0 + 152);
      v95 = *(v0 + 160);
      v97 = *(v0 + 144);
      v98 = *(v0 + 96);
      v99 = *(v0 + 104);

      v64 = *(v95 + 8);
      (v64)(v94, v96);
      (*(v99 + 8))(v97, v98);
    }

    v100 = *(v0 + 256);
    v101 = *(v0 + 232);
    v102 = *(v0 + 192);
    v103 = *(v0 + 80);
    static ContinuousClock.Instant.now.getter();
    v104 = swift_task_alloc();
    *(v104 + 16) = v103;
    *(v104 + 24) = v102;
    v105 = swift_task_alloc();
    *(v105 + 16) = sub_10010098C;
    *(v105 + 24) = v104;
    os_unfair_lock_lock(v101 + 4);
    sub_1001009A8();
    os_unfair_lock_unlock(v101 + 4);

    if (!v100)
    {
      v106 = *(v0 + 192);
      v107 = *(v0 + 152);
      v108 = *(v0 + 160);
      v109 = *(v0 + 88);

      (v64)(v106, v107);
      *(v0 + 64) = 0;
      p_name = &stru_100128FF8.name;
      v111 = [v109 setTaskExpiredWithRetryAfter:v0 + 64 error:v33];
      v112 = *(v0 + 64);
      if (v111)
      {
        logb = v64;
        v113 = v112;
      }

      else
      {
        v114 = v112;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v115 = *(v0 + 216);
        v116 = *(v0 + 160);
        v117 = *(v0 + 168);
        v118 = *(v0 + 152);
        v119 = *(v0 + 120);
        v120 = *(v0 + 72);
        static Log.session.getter();
        (*(v116 + 16))(v117, v115, v118);

        swift_errorRetain();
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v121, v122))
        {
          logc = v122;
          v123 = *(v0 + 264);
          v124 = swift_slowAlloc();
          v224[0] = swift_slowAlloc();
          v125 = 0xE400000000000000;
          *v124 = 136315650;
          v126 = 0x69737365636F7270;
          v127 = 0xEA0000000000676ELL;
          v128 = 0xE600000000000000;
          v129 = 0x70756D726177;
          if (v123 != 3)
          {
            v129 = 0x70756E61656C63;
            v128 = 0xE700000000000000;
          }

          if (v123 != 2)
          {
            v126 = v129;
            v127 = v128;
          }

          v130 = 0x68736572666572;
          if (v123)
          {
            v125 = 0xE700000000000000;
          }

          else
          {
            v130 = 1668184435;
          }

          if (v123 <= 1)
          {
            v131 = v130;
          }

          else
          {
            v131 = v126;
          }

          if (v123 <= 1)
          {
            v132 = v125;
          }

          else
          {
            v132 = v127;
          }

          v133 = *(v0 + 200);
          v134 = *(v0 + 160);
          v135 = *(v0 + 168);
          v136 = *(v0 + 152);
          v196 = *(v0 + 224);
          v201 = *(v0 + 104);
          v206 = *(v0 + 96);
          v211 = *(v0 + 120);
          v137 = *(v0 + 72);
          v138 = sub_100102F80(v131, v132, v224);

          *(v124 + 4) = v138;
          *(v124 + 12) = 2080;
          swift_getErrorValue();
          v139 = *(v0 + 16);
          v140 = *(v0 + 32);
          v141 = sub_100103DF4(*(v0 + 24));
          v143 = sub_100102F80(v141, v142, v224);

          *(v124 + 14) = v143;
          *(v124 + 22) = 2080;
          ContinuousClock.now.getter();
          ContinuousClock.Instant.duration(to:)();
          v144 = v133;
          v145 = *(v134 + 8);
          v145(v144, v136);
          v146 = Duration.description.getter();
          v148 = v147;
          v145(v135, v136);
          v149 = sub_100102F80(v146, v148, v224);

          *(v124 + 24) = v149;
          _os_log_impl(&_mh_execute_header, v121, logc, "Failed to complete task %s due to error %s after %s. Retrying.", v124, 0x20u);
          swift_arrayDestroy();

          (*(v201 + 8))(v211, v206);
          p_name = (&stru_100128FF8 + 8);
        }

        else
        {
          v161 = *(v0 + 160);
          v162 = *(v0 + 168);
          v163 = *(v0 + 152);
          v164 = *(v0 + 120);
          v165 = *(v0 + 96);
          v166 = *(v0 + 104);

          v145 = *(v161 + 8);
          v145(v162, v163);
          (*(v166 + 8))(v164, v165);
        }

        v167 = *(v0 + 232);
        v168 = *(v0 + 80);
        v169 = swift_task_alloc();
        *(v169 + 16) = sub_1001006EC;
        *(v169 + 24) = v168;
        os_unfair_lock_lock(v167 + 4);
        sub_1001009A8();
        os_unfair_lock_unlock(v167 + 4);

        v170 = *(v0 + 88);
        *(v0 + 40) = 0;
        v171 = [v170 p_name[300]];
        v172 = *(v0 + 40);
        if (!v171)
        {
          v184 = v145;
          v186 = *(v0 + 208);
          v185 = *(v0 + 216);
          v191 = *(v0 + 200);
          v192 = *(v0 + 192);
          v193 = *(v0 + 184);
          v194 = *(v0 + 176);
          v187 = *(v0 + 160);
          v188 = *(v0 + 152);
          v198 = *(v0 + 168);
          v203 = *(v0 + 144);
          v208 = *(v0 + 136);
          v213 = *(v0 + 128);
          v215 = *(v0 + 120);
          logd = *(v0 + 112);
          v189 = *(v0 + 80);
          v190 = v172;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          sub_1001013B0();
          v184(v185, v188);

          v183 = *(v0 + 8);
          goto LABEL_68;
        }

        logb = v145;
        v173 = v172;
      }

LABEL_67:
      v175 = *(v0 + 208);
      v174 = *(v0 + 216);
      v177 = *(v0 + 192);
      v176 = *(v0 + 200);
      v179 = *(v0 + 176);
      v178 = *(v0 + 184);
      v180 = *(v0 + 160);
      v181 = *(v0 + 152);
      v197 = *(v0 + 168);
      v202 = *(v0 + 144);
      v207 = *(v0 + 136);
      v212 = *(v0 + 128);
      v214 = *(v0 + 120);
      v218 = *(v0 + 112);
      v182 = *(v0 + 80);
      sub_1001013B0();
      (logb)(v174, v181);

      v183 = *(v0 + 8);
LABEL_68:

      return v183();
    }
  }

  return result;
}

uint64_t sub_1000FE600()
{
  v89 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 120);
  v7 = *(v0 + 72);
  static Log.session.getter();
  (*(v3 + 16))(v4, v2, v5);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v84 = v9;
    v10 = *(v0 + 264);
    v11 = swift_slowAlloc();
    v88[0] = swift_slowAlloc();
    v12 = 0xE400000000000000;
    v13 = 1668184435;
    *v11 = 136315650;
    v14 = 0xEA0000000000676ELL;
    v15 = 0x69737365636F7270;
    v16 = 0xE600000000000000;
    v17 = 0x70756D726177;
    if (v10 != 3)
    {
      v17 = 0x70756E61656C63;
      v16 = 0xE700000000000000;
    }

    if (v10 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v10)
    {
      v13 = 0x68736572666572;
      v12 = 0xE700000000000000;
    }

    if (v10 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    if (v10 <= 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    v20 = *(v0 + 200);
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    v23 = *(v0 + 152);
    v70 = *(v0 + 224);
    v73 = *(v0 + 104);
    v76 = *(v0 + 96);
    v79 = *(v0 + 120);
    v24 = *(v0 + 72);
    v25 = sub_100102F80(v18, v19, v88);

    *(v11 + 4) = v25;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v26 = *(v0 + 16);
    v27 = *(v0 + 32);
    v28 = sub_100103DF4(*(v0 + 24));
    v30 = sub_100102F80(v28, v29, v88);

    *(v11 + 14) = v30;
    *(v11 + 22) = 2080;
    ContinuousClock.now.getter();
    ContinuousClock.Instant.duration(to:)();
    v31 = v20;
    v32 = *(v21 + 8);
    v32(v31, v23);
    v33 = Duration.description.getter();
    v35 = v34;
    v32(v22, v23);
    v36 = sub_100102F80(v33, v35, v88);

    *(v11 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v8, v84, "Failed to complete task %s due to error %s after %s. Retrying.", v11, 0x20u);
    swift_arrayDestroy();

    (*(v73 + 8))(v79, v76);
  }

  else
  {
    v38 = *(v0 + 160);
    v37 = *(v0 + 168);
    v39 = *(v0 + 152);
    v40 = *(v0 + 120);
    v41 = *(v0 + 96);
    v42 = *(v0 + 104);

    v32 = *(v38 + 8);
    v32(v37, v39);
    (*(v42 + 8))(v40, v41);
  }

  v43 = *(v0 + 232);
  v44 = *(v0 + 80);
  v45 = swift_task_alloc();
  *(v45 + 16) = sub_1001006EC;
  *(v45 + 24) = v44;
  os_unfair_lock_lock(v43 + 4);
  sub_1001009A8();
  os_unfair_lock_unlock(v43 + 4);

  v46 = *(v0 + 88);
  *(v0 + 40) = 0;
  v47 = [v46 setTaskExpiredWithRetryAfter:v0 + 40 error:0.0];
  v48 = *(v0 + 40);
  if (v47)
  {
    v49 = v48;

    v51 = *(v0 + 208);
    v50 = *(v0 + 216);
    v53 = *(v0 + 192);
    v52 = *(v0 + 200);
    v54 = *(v0 + 184);
    v55 = *(v0 + 160);
    v71 = *(v0 + 176);
    v74 = *(v0 + 168);
    v56 = *(v0 + 152);
    v77 = *(v0 + 144);
    v80 = *(v0 + 136);
    v82 = *(v0 + 128);
    v85 = *(v0 + 120);
    v87 = *(v0 + 112);
    v57 = *(v0 + 80);
    sub_1001013B0();
    v32(v50, v56);
  }

  else
  {
    v60 = *(v0 + 208);
    v59 = *(v0 + 216);
    v66 = *(v0 + 200);
    v67 = *(v0 + 192);
    v68 = *(v0 + 184);
    v69 = *(v0 + 176);
    v61 = *(v0 + 160);
    v62 = *(v0 + 152);
    v72 = *(v0 + 168);
    v75 = *(v0 + 144);
    v78 = *(v0 + 136);
    v81 = *(v0 + 128);
    v83 = *(v0 + 120);
    v86 = *(v0 + 112);
    v63 = *(v0 + 80);
    v64 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_1001013B0();
    v32(v59, v62);
  }

  v58 = *(v0 + 8);

  return v58();
}

void sub_1000FEC2C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static TestProperties.ignoreDuetCancellations.getter() & 1) == 0)
  {
    v36 = a2;
    v38 = v6;
    static Log.session.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v37 = v7;
    if (v18)
    {
      v35 = a3;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      v21 = 0xE400000000000000;
      v22 = 1668184435;
      *v19 = 136315138;
      v23 = 0xEA0000000000676ELL;
      v24 = 0x69737365636F7270;
      v25 = 0xE600000000000000;
      v26 = 0x70756D726177;
      if (a1 != 3)
      {
        v26 = 0x70756E61656C63;
        v25 = 0xE700000000000000;
      }

      if (a1 != 2)
      {
        v24 = v26;
        v23 = v25;
      }

      if (a1)
      {
        v22 = 0x68736572666572;
        v21 = 0xE700000000000000;
      }

      if (a1 <= 1u)
      {
        v27 = v22;
      }

      else
      {
        v27 = v24;
      }

      if (a1 <= 1u)
      {
        v28 = v21;
      }

      else
      {
        v28 = v23;
      }

      v29 = sub_100102F80(v27, v28, &v39);

      *(v19 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v16, v17, "Duet asked us to cancel task %s", v19, 0xCu);
      sub_10000C304(v20);

      (*(v12 + 8))(v15, v11);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    v30 = static ContinuousClock.Instant.now.getter();
    v31 = *(v36 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_lock);
    v32 = __chkstk_darwin(v30);
    *(&v35 - 2) = v33;
    *(&v35 - 1) = v10;
    __chkstk_darwin(v32);
    *(&v35 - 2) = sub_10010068C;
    *(&v35 - 1) = v34;
    os_unfair_lock_lock(v31 + 4);
    sub_1001006A8();
    os_unfair_lock_unlock(v31 + 4);
    (*(v37 + 8))(v10, v38);
    sub_10000560C(&qword_10012A308, &qword_100109000);
    Task.cancel()();
  }
}

uint64_t sub_1000FEFF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000FF034(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 57) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 104) = v3;
  v4 = *(v3 - 8);
  *(v2 + 112) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1000FF104, v1, 0);
}

void *sub_1000FF104()
{
  v44 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_registry;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (v4 && (v5 = sub_1000579F8(*(v0 + 57)), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  *(v0 + 136) = v7;
  v8 = *(v0 + 128);

  static Log.session.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 57);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v12 = 134218242;
    *(v12 + 4) = v7[2];

    v14 = 0xE400000000000000;
    *(v12 + 12) = 2080;
    v15 = 1668184435;
    v16 = 0xEA0000000000676ELL;
    v17 = 0x69737365636F7270;
    v18 = 0xE600000000000000;
    v19 = 0x70756D726177;
    if (v11 != 3)
    {
      v19 = 0x70756E61656C63;
      v18 = 0xE700000000000000;
    }

    if (v11 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (v11)
    {
      v15 = 0x68736572666572;
      v14 = 0xE700000000000000;
    }

    if (v11 <= 1)
    {
      v20 = v15;
    }

    else
    {
      v20 = v17;
    }

    if (v11 <= 1)
    {
      v21 = v14;
    }

    else
    {
      v21 = v16;
    }

    v41 = *(v0 + 128);
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v24 = sub_100102F80(v20, v21, &v43);

    *(v12 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v10, "Running %ld tasks for %s", v12, 0x16u);
    sub_10000C304(v13);

    v25 = *(v22 + 8);
    v25(v41, v23);
  }

  else
  {
    v26 = *(v0 + 128);
    v27 = *(v0 + 104);
    v28 = *(v0 + 112);

    v25 = *(v28 + 8);
    v25(v26, v27);
  }

  *(v0 + 144) = v25;
  v29 = v7[2];
  *(v0 + 152) = v29;
  *(v0 + 160) = 0;
  result = *(v0 + 136);
  if (v29)
  {
    if (result[2])
    {
      v31 = result[4];
      *(v0 + 168) = result[5];

      if (static Task<>.isCancelled.getter())
      {
        v32 = *(v0 + 136);

        type metadata accessor for CancellationError();
        sub_1001008DC(&qword_10012B720, &type metadata accessor for CancellationError);
        swift_allocError();
        CancellationError.init()();
        swift_willThrow();
        v34 = *(v0 + 120);
        v33 = *(v0 + 128);

        v35 = *(v0 + 8);

        return v35();
      }

      else
      {
        v42 = (v31 + *v31);
        v39 = v31[1];
        v40 = swift_task_alloc();
        *(v0 + 176) = v40;
        *v40 = v0;
        v40[1] = sub_1000FF5AC;

        return v42(v0 + 40);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v37 = *(v0 + 120);
    v36 = *(v0 + 128);

    v38 = *(v0 + 8);

    return v38(0, 1);
  }

  return result;
}

uint64_t sub_1000FF5AC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;

  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = *(v3 + 136);

    v9 = *(v3 + 120);
    v8 = *(v3 + 128);

    v10 = *(v5 + 8);

    return v10();
  }

  else
  {
    v12 = *(v3 + 96);

    *(v3 + 184) = *(v3 + 40);
    *(v3 + 58) = *(v3 + 56);

    return _swift_task_switch(sub_1000FF73C, v12, 0);
  }
}

uint64_t sub_1000FF73C()
{
  v38 = v0;
  v1 = *(v0 + 58);
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 136);

    Duration.timeInterval.getter();
    v5 = v4;
    if (v4 < 300.0 || v4 > 64000000.0)
    {
      v7 = *(v0 + 120);
      static Log.session.getter();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 144);
      v12 = *(v0 + 120);
      v13 = *(v0 + 104);
      if (v10)
      {
        v35 = *(v0 + 112);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v37 = v15;
        *v14 = 134218242;
        *(v14 + 4) = v5;
        *(v14 + 12) = 2080;
        *(v0 + 80) = xmmword_10010A9D0;
        *(v0 + 64) = 0;
        *(v0 + 72) = 0xE000000000000000;
        v34 = v12;
        _print_unlocked<A, B>(_:_:)();
        v16._countAndFlagsBits = 3026478;
        v16._object = 0xE300000000000000;
        String.append(_:)(v16);
        _print_unlocked<A, B>(_:_:)();
        v17 = sub_100102F80(*(v0 + 64), *(v0 + 72), &v37);

        *(v14 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v8, v9, "Invalid Delay Duration: %f, clamping to %s", v14, 0x16u);
        sub_10000C304(v15);

        v11(v34, v13);
      }

      else
      {

        v11(v12, v13);
      }

      v22 = fmax(v5, 300.0);
      if (v22 < 64000000.0)
      {
        v5 = v22;
      }

      else
      {
        v5 = 64000000.0;
      }
    }

    v21 = v5;
    goto LABEL_18;
  }

  if (*(v0 + 184) != 0)
  {
    v2 = *(v0 + 136);
LABEL_12:

    v21 = 0.0;
LABEL_18:
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);

    v25 = *(v0 + 8);

    return v25(*&v21, v1);
  }

  v18 = *(v0 + 152);
  v19 = *(v0 + 160) + 1;
  *(v0 + 160) = v19;
  result = *(v0 + 136);
  if (v19 == v18)
  {
    goto LABEL_12;
  }

  if (v19 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v26 = result + 16 * v19;
    v27 = *(v26 + 32);
    *(v0 + 168) = *(v26 + 40);

    if (static Task<>.isCancelled.getter())
    {
      v28 = *(v0 + 136);

      type metadata accessor for CancellationError();
      sub_1001008DC(&qword_10012B720, &type metadata accessor for CancellationError);
      swift_allocError();
      CancellationError.init()();
      swift_willThrow();
      v30 = *(v0 + 120);
      v29 = *(v0 + 128);

      v31 = *(v0 + 8);

      return v31();
    }

    else
    {
      v36 = (v27 + *v27);
      v32 = v27[1];
      v33 = swift_task_alloc();
      *(v0 + 176) = v33;
      *v33 = v0;
      v33[1] = sub_1000FF5AC;

      return v36(v0 + 40);
    }
  }

  return result;
}

uint64_t sub_1000FFBEC()
{
  v1 = OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_clock;
  v2 = type metadata accessor for ContinuousClock();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11photosfaced21BackgroundTaskManager_registry);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BackgroundTaskManager()
{
  result = qword_10012B640;
  if (!qword_10012B640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FFCD0()
{
  result = type metadata accessor for ContinuousClock();
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

__n128 initializeBufferWithCopyOfBuffer for BackgroundTaskManager.Result(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskManager.Result(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskManager.Result(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1000FFDE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FFE04(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void *sub_1000FFE54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000560C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000560C(&qword_10012B738, &unk_10010AA90);
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_1000FFFC8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000560C(&qword_10012A430, &qword_1001093D0);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001001A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000560C(&qword_10012AFB0, &qword_100109CE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100100318(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000560C(a5, a6);
  v16 = *(sub_10000560C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10000560C(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_100100500()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100100550(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000045BC;

  return sub_1000FD148(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100100628()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100100674(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001006A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100100724()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10010075C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CC84;

  return sub_1000FCC4C(a1, v5);
}

uint64_t sub_100100814()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010084C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100100890()
{
  result = qword_10012B748;
  if (!qword_10012B748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012B748);
  }

  return result;
}

uint64_t sub_1001008DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100100924()
{
  result = qword_10012B760;
  if (!qword_10012B760)
  {
    sub_10000A990(&qword_10012B758, &unk_10010AAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012B760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100100B14()
{
  result = qword_10012B768;
  if (!qword_10012B768)
  {
    sub_10000A990(&qword_10012B770, qword_10010AAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012B768);
  }

  return result;
}

uint64_t sub_100100B78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1668184435;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x68736572666572;
    }

    else
    {
      v5 = 1668184435;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x69737365636F7270;
    v4 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE600000000000000;
    v5 = 0x70756D726177;
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x70756E61656C63;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE400000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x68736572666572;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x69737365636F7270;
    v6 = 0xEA0000000000676ELL;
    v7 = 0xE600000000000000;
    v8 = 0x70756D726177;
    if (a2 != 3)
    {
      v8 = 0x70756E61656C63;
      v7 = 0xE700000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

unint64_t sub_100100CF8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100101138(*a1);
  *a2 = result;
  return result;
}

void sub_100100D28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1668184435;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x69737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x70756D726177;
  if (v2 != 3)
  {
    v8 = 0x70756E61656C63;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x68736572666572;
    v3 = 0xE700000000000000;
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

Swift::Int sub_100100DC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100E9C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100100F64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100101050()
{
  result = qword_10012B778;
  if (!qword_10012B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012B778);
  }

  return result;
}

uint64_t sub_1001010A4()
{
  v1 = *v0;
  v2 = 1668184435;
  v3 = 0x69737365636F7270;
  v4 = 0x70756D726177;
  if (v1 != 3)
  {
    v4 = 0x70756E61656C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68736572666572;
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

unint64_t sub_100101138(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100125EE0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001011A4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_startTime;
  swift_beginAccess();
  v5 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100101260(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ContinuousClock.Instant();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = *a3;
  swift_beginAccess();
  sub_100101EAC(v9, a1 + v12);
  return swift_endAccess();
}

void sub_1001013B0()
{
  v1 = v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v37[-v8];
  v10 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v37[-v15];
  v17 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_endTime;
  swift_beginAccess();
  sub_100101D20(v1 + v17, v16);
  v18 = *(v3 + 48);
  v19 = v18(v16, 1, v2);
  v39 = 0;
  v40 = 0;
  v38 = v19;
  if (v19 != 1)
  {
    (*(v3 + 32))(v9, v16, v2);
    v20 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_startTime;
    swift_beginAccess();
    (*(v3 + 16))(v7, v1 + v20, v2);
    v21 = ContinuousClock.Instant.duration(to:)();
    v39 = v22;
    v40 = v21;
    v23 = *(v3 + 8);
    v23(v7, v2);
    v23(v9, v2);
  }

  v24 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_cancelTime;
  swift_beginAccess();
  sub_100101D20(v1 + v24, v14);
  v25 = v18(v14, 1, v2);
  v26 = 0;
  v27 = 0;
  if (v25 != 1)
  {
    (*(v3 + 32))(v9, v14, v2);
    v28 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_startTime;
    swift_beginAccess();
    (*(v3 + 16))(v7, v1 + v28, v2);
    v26 = ContinuousClock.Instant.duration(to:)();
    v27 = v29;
    v30 = *(v3 + 8);
    v30(v7, v2);
    v30(v9, v2);
  }

  v31 = v38 == 1;
  v32 = String._bridgeToObjectiveC()();
  v33 = swift_allocObject();
  v34 = v39;
  v35 = v40;
  *(v33 + 16) = v1;
  *(v33 + 24) = v35;
  *(v33 + 32) = v34;
  *(v33 + 40) = v31;
  *(v33 + 48) = v26;
  *(v33 + 56) = v27;
  *(v33 + 64) = v25 == 1;
  aBlock[4] = sub_100101DC8;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001019F0;
  aBlock[3] = &unk_100127A48;
  v36 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v36);
}

unint64_t sub_1001017CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_10000560C(&qword_10012B9B8, &qword_10010AC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010ABF0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(a1 + 16);
  *(a1 + 16);
  v11 = String._bridgeToObjectiveC()();

  *(inited + 48) = v11;
  *(inited + 56) = 0x70616C45656D6974;
  *(inited + 64) = 0xEB00000000646573;
  if ((a4 & 1) == 0)
  {
    Duration.components.getter();
  }

  *(inited + 72) = Int64._bridgeToObjectiveC()();
  *(inited + 80) = 0x656C6C65636E6163;
  *(inited + 88) = 0xE900000000000064;
  if ((a7 & 1) == 0)
  {
    Duration.components.getter();
  }

  *(inited + 96) = Int64._bridgeToObjectiveC()();
  *(inited + 104) = 0x6465726F727265;
  *(inited + 112) = 0xE700000000000000;
  v12 = *(a1 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_errored);
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v13 = sub_10005DC2C(inited);
  swift_setDeallocating();
  sub_10000560C(qword_10012B9C0, &qword_10010AC68);
  swift_arrayDestroy();
  return v13;
}

Class sub_1001019F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100101DF8();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100101A7C()
{
  v1 = OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_startTime;
  v2 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100101E44(v0 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_cancelTime);
  sub_100101E44(v0 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_endTime);
  v3 = *(v0 + OBJC_IVAR____TtCC11photosfaced9Analytics14BackgroundTask_lock);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for Analytics.BackgroundTask()
{
  result = qword_10012B868;
  if (!qword_10012B868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100101BD8()
{
  v0 = type metadata accessor for ContinuousClock.Instant();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100101CC8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100101CC8()
{
  if (!qword_10012B878)
  {
    type metadata accessor for ContinuousClock.Instant();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10012B878);
    }
  }
}

uint64_t sub_100101D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100101D90()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100101DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100101DF8()
{
  result = qword_10012B9B0;
  if (!qword_10012B9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012B9B0);
  }

  return result;
}

uint64_t sub_100101E44(uint64_t a1)
{
  v2 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100101EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012B9A8, &qword_10010AC58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t exponentialBackoff<A>(isolation:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a1;
  v6[16] = a4;
  v8 = type metadata accessor for ContinuousClock.Instant();
  v6[19] = v8;
  v9 = *(v8 - 8);
  v6[20] = v9;
  v10 = *(v9 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[23] = v11;
  v12 = *(v11 - 8);
  v6[24] = v12;
  v13 = *(v12 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v14 = type metadata accessor for ExponentialBackoffResult();
  v6[28] = v14;
  v15 = *(v14 - 8);
  v6[29] = v15;
  v16 = *(v15 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v17 = type metadata accessor for ContinuousClock();
  v6[32] = v17;
  v18 = *(v17 - 8);
  v6[33] = v18;
  v19 = *(v18 + 64) + 15;
  v6[34] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v6[35] = v20;
  v6[36] = v22;

  return _swift_task_switch(sub_100102164, v20, v22);
}

uint64_t sub_100102164()
{
  v1 = v0[34];
  v0[11] = static Duration.seconds(_:)();
  v0[12] = v2;
  ContinuousClock.init()();
  swift_beginAccess();
  v8 = (v0[16] + *v0[16]);
  v3 = *(v0[16] + 4);
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_100102294;
  v5 = v0[31];
  v6 = v0[17];

  return v8(v5);
}

uint64_t sub_100102294()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 280);
  if (v0)
  {
    v7 = sub_100102E40;
  }

  else
  {
    v7 = sub_1001023D0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1001023D0()
{
  v33 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  (*(*(v0 + 232) + 16))(v1, *(v0 + 248), *(v0 + 224));
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 216);
    static Log.default.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 216);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 88);
      v14 = *(v0 + 96);
      v15 = Duration.description.getter();
      v17 = sub_100102F80(v15, v16, &v32);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sleeping for %s", v11, 0xCu);
      sub_10000C304(v12);
    }

    v18 = *(v10 + 8);
    v18(v8, v9);
    *(v0 + 312) = v18;
    *(v0 + 104) = *(v0 + 88);
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;

    return _swift_task_switch(sub_1001026BC, 0, 0);
  }

  else
  {
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 256);
    v22 = *(v0 + 240);
    v23 = *(v0 + 216);
    v28 = *(v0 + 208);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v31 = *(v0 + 168);
    v24 = *(v0 + 144);
    v25 = *(v0 + 120);
    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
    (*(v20 + 8))(v19, v21);
    (*(v3 + 32))(v25, v22, v24);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1001026BC()
{
  v1 = v0[34];
  v2 = v0[32];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = sub_100102F38(&qword_100129F10, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100102F38(&qword_100129F18, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v6 + 8);
  v0[40] = v8;
  v0[41] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v5);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_100102844;
  v11 = v0[34];
  v12 = v0[32];
  v13 = v0[22];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 8, v12, v7);
}

uint64_t sub_100102844()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 328);
  v5 = *(*v1 + 320);
  v6 = *(*v1 + 176);
  v7 = *(*v1 + 152);
  v12 = *v1;
  *(*v1 + 344) = v0;

  v5(v6, v7);
  if (v0)
  {
    v8 = sub_100102BBC;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *(v2 + 280);
    v10 = *(v2 + 288);
    v8 = sub_1001029CC;
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001029CC()
{
  v1 = *(v0 + 208);
  static Log.default.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done sleeping.", v4, 2u);
  }

  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 192) + 8;
  (*(v0 + 312))(*(v0 + 208), *(v0 + 184));
  swift_beginAccess();
  dispatch thunk of static DurationProtocol.*= infix(_:_:)();
  swift_endAccess();
  (*(v7 + 8))(v5, v6);
  v14 = (*(v0 + 128) + **(v0 + 128));
  v9 = *(*(v0 + 128) + 4);
  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  *v10 = v0;
  v10[1] = sub_100102294;
  v11 = *(v0 + 248);
  v12 = *(v0 + 136);

  return v14(v11);
}

uint64_t sub_100102BD4()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 200);
  static Log.default.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 344);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error Sleeping %@", v7, 0xCu);
    sub_100072EEC(v8);
  }

  else
  {
    v10 = *(v0 + 344);
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 224);
  v13 = *(v0 + 232);
  v14 = *(v0 + 192) + 8;
  (*(v0 + 312))(*(v0 + 200), *(v0 + 184));
  swift_beginAccess();
  dispatch thunk of static DurationProtocol.*= infix(_:_:)();
  swift_endAccess();
  (*(v13 + 8))(v11, v12);
  v20 = (*(v0 + 128) + **(v0 + 128));
  v15 = *(*(v0 + 128) + 4);
  v16 = swift_task_alloc();
  *(v0 + 296) = v16;
  *v16 = v0;
  v16[1] = sub_100102294;
  v17 = *(v0 + 248);
  v18 = *(v0 + 136);

  return v20(v17);
}

uint64_t sub_100102E40()
{
  v1 = v0[31];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  (*(v0[33] + 8))(v0[34], v0[32]);

  v8 = v0[1];
  v9 = v0[38];

  return v8();
}

uint64_t sub_100102F38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100102F80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10010304C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10005E3D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C304(v11);
  return v7;
}

unint64_t sub_10010304C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100103158(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100103158(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001031A4(a1, a2);
  sub_1001032D4(&off_100125E58);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1001031A4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1001033C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001033C0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001032D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100103434(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1001033C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000560C(&qword_10012BA48, &qword_10010ACB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100103434(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000560C(&qword_10012BA48, &qword_10010ACB0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_100103530(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_10010358C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_10010370C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

id sub_100103938(uint64_t a1, char a2)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v11 = 0;
  v6 = [v2 removeItemAtURL:v4 error:&v11];

  if (v6)
  {
    return v11;
  }

  v8 = v11;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if ((a2 & 1) != 0 && (URL.path(percentEncoded:)(1), v9 = String._bridgeToObjectiveC()(), , v10 = [v2 fileExistsAtPath:v9], v9, (v10 & 1) == 0))
  {
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_100103A60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  if (!a3)
  {
    v39 = 0;
    v17 = [v4 copyItemAtURL:v7 toURL:v9 error:&v39];

    if (v17)
    {
      return v39;
    }

    v19 = v39;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  if (a3 == 1)
  {
    v39 = 0;
    v11 = [v4 copyItemAtURL:v7 toURL:v9 error:&v39];

    v12 = v39;
    if (!v11)
    {
      v13 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      URL.path(percentEncoded:)(1);
      v14 = String._bridgeToObjectiveC()();

      v15 = [v4 fileExistsAtPath:v14];

      if (v15)
      {
      }

      return swift_willThrow();
    }

    return v12;
  }

  v39 = 0;
  v18 = [v4 copyItemAtURL:v7 toURL:v9 error:&v39];

  v12 = v39;
  if (v18)
  {
    return v12;
  }

  v20 = 11;
  while (1)
  {
    v29 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (!--v20)
    {
      break;
    }

    URL.path(percentEncoded:)(1);
    v30 = String._bridgeToObjectiveC()();

    v31 = [v4 fileExistsAtPath:v30];

    if (!v31)
    {
      break;
    }

    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v39 = 0;
    v35 = [v4 removeItemAtURL:v33 error:&v39];

    if (v35)
    {
      v21 = v39;
    }

    else
    {
      v36 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      URL.path(percentEncoded:)(1);
      v37 = String._bridgeToObjectiveC()();

      v38 = [v4 fileExistsAtPath:v37];

      if (v38)
      {
        swift_willThrow();
      }
    }

    URL._bridgeToObjectiveC()(v22);
    v24 = v23;
    URL._bridgeToObjectiveC()(v25);
    v27 = v26;
    v39 = 0;
    v28 = [v4 copyItemAtURL:v24 toURL:v26 error:&v39];

    v12 = v39;
    if (v28)
    {
      return v12;
    }
  }

  return swift_willThrow();
}

uint64_t sub_100103DF4(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(describing:)();
}

uint64_t sub_100103EAC(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = PhotosFaceType.description.getter();
    v13 = sub_100102F80(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending %s Update Darwin Notification.", v9, 0xCu);
    sub_10000C304(v10);
  }

  (*(v3 + 8))(v6, v2);
  return notify_post(**(&off_100127AE0 + a1));
}

uint64_t sub_100104068(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v36 = &v35 - v15;
  swift_defaultActor_initialize();
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  AssertionID = 0;

  v16 = String._bridgeToObjectiveC()();
  v37 = a1;
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  Duration.timeInterval.getter();
  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v22 = IOPMAssertionCreateWithDescription(v16, v17, v18, 0, 0, v20, v21, &AssertionID);

  if (v22)
  {

    *(v5 + 112) = 0;
    static Log.default.getter();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315138;
      v27 = sub_100102F80(v37, a2, &v41);

      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create power assertion for %s", v25, 0xCu);
      sub_10000C304(v26);
    }

    else
    {
    }

    (*(v38 + 8))(v14, v39);
  }

  else
  {
    *(v5 + 112) = AssertionID;
    v28 = v36;
    static Log.default.getter();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v31 = 136315394;
      v32 = sub_100102F80(v37, a2, &v41);

      *(v31 + 4) = v32;
      *(v31 + 12) = 2080;
      v33 = sub_100102F80(a3, a4, &v41);

      *(v31 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Created power assertion: %s for %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v38 + 8))(v28, v39);
  }

  return v5;
}

uint64_t sub_1001044F0()
{
  v1 = *(v0 + 16);
  sub_100104794();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100104550()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 112);
  if (v7)
  {
    v9 = *(v1 + 120);
    v8 = *(v1 + 128);

    IOPMAssertionRelease(v7);
    *(v1 + 112) = 0;
    static Log.default.getter();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sub_100102F80(v9, v8, &v18);

      *(v12 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Closing power assertion on close for %s", v12, 0xCu);
      sub_10000C304(v13);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
  }

  v15 = *(v1 + 128);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100104744()
{
  sub_100104550();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100104794()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 112);
  if (result)
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    IOPMAssertionRelease(result);
    *(v0 + 112) = 0;
    static Log.default.getter();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100102F80(v7, v8, &v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "Closing power assertion on close for %s", v11, 0xCu);
      sub_10000C304(v12);
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}