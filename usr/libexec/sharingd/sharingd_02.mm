uint64_t sub_10004A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
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
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10004A54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004A684()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000C60C((v0 + 40));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10004A6C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10004A7A0()
{
  v1 = _s7RequestVMa();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = sub_10028088C(&unk_100989850, &qword_1008102C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);
  sub_10000C60C((v0 + v2 + v1[5]));
  v9 = (v0 + v2 + v1[6]);
  if ((v9[1] - 1) >= 2)
  {

    v10 = v9[3];

    v11 = v9[5];
    if (v11 >> 60 != 15)
    {
      sub_100026AC0(v9[4], v11);
    }
  }

  v12 = (v2 + v16 + v5) & ~v5;
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v7 + v1[7]);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + v12, v3);

  return _swift_deallocObject(v0, v13 + 8);
}

uint64_t sub_10004A990()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];
  if (v3 >> 60 != 15)
  {
    sub_100026AC0(v0[6], v3);
  }

  return _swift_deallocObject(v0, 65);
}

uint64_t sub_10004A9E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004AA2C()
{
  v1 = v0[2];

  sub_10000C60C(v0 + 3);
  sub_100026AC0(v0[8], v0[9]);
  v2 = v0[11];
  if (v2 >> 60 != 15)
  {
    sub_100026AC0(v0[10], v2);
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10004AA8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004AAC4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10004ABB0()
{
  v1 = *(sub_10028088C(&qword_1009897C0, &qword_100810298) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = sub_10028088C(&unk_100989850, &qword_1008102C8);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2, 1, v9))
  {
    (*(v10 + 8))(v0 + v2, v9);
  }

  v11 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v6 + v13 + 8) & ~v6;
  v15 = *(v0 + v11 + 8);

  v16 = *(v0 + v12);

  (*(v5 + 8))(v0 + v14, v4);

  return _swift_deallocObject(v0, ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10004ADAC()
{
  v1 = *(v0 + 32);

  if (*(v0 + 64))
  {
    sub_10000C60C((v0 + 40));
  }

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_10004AE04()
{
  v1 = type metadata accessor for SDAuthenticationSessionMetadata(0);
  v40 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 24);

  v39 = (v40 + 32) & ~v40;
  v3 = v0 + v39;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v39, v4);
  v5 = (v0 + v39 + v1[6]);
  if (v5[3])
  {
    sub_10000C60C(v5);
  }

  v6 = *(v3 + v1[7]);
  swift_unknownObjectRelease();
  v7 = (v3 + v1[8]);
  if (v7[3])
  {
    sub_10000C60C(v7);
  }

  v8 = (v3 + v1[9]);
  v9 = *(v8 + 3);

  v10 = *(v8 + 5);

  v11 = *(v8 + 9);

  v12 = type metadata accessor for SDAuthenticationSessionMetrics();
  v13 = v12[12];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!v16(&v8[v13], 1, v14))
  {
    (*(v15 + 8))(&v8[v13], v14);
  }

  v17 = v12[13];
  if (!v16(&v8[v17], 1, v14))
  {
    (*(v15 + 8))(&v8[v17], v14);
  }

  v18 = v12[14];
  if (!v16(&v8[v18], 1, v14))
  {
    (*(v15 + 8))(&v8[v18], v14);
  }

  v19 = v12[15];
  if (!v16(&v8[v19], 1, v14))
  {
    (*(v15 + 8))(&v8[v19], v14);
  }

  v20 = v12[16];
  if (!v16(&v8[v20], 1, v14))
  {
    (*(v15 + 8))(&v8[v20], v14);
  }

  v21 = v12[17];
  if (!v16(&v8[v21], 1, v14))
  {
    (*(v15 + 8))(&v8[v21], v14);
  }

  v22 = v12[18];
  if (!v16(&v8[v22], 1, v14))
  {
    (*(v15 + 8))(&v8[v22], v14);
  }

  v23 = v12[19];
  if (!v16(&v8[v23], 1, v14))
  {
    (*(v15 + 8))(&v8[v23], v14);
  }

  v24 = v12[20];
  if (!v16(&v8[v24], 1, v14))
  {
    (*(v15 + 8))(&v8[v24], v14);
  }

  v25 = v12[21];
  if (!v16(&v8[v25], 1, v14))
  {
    (*(v15 + 8))(&v8[v25], v14);
  }

  v26 = v12[22];
  if (!v16(&v8[v26], 1, v14))
  {
    (*(v15 + 8))(&v8[v26], v14);
  }

  v27 = v12[24];
  if (!v16(&v8[v27], 1, v14))
  {
    (*(v15 + 8))(&v8[v27], v14);
  }

  v28 = v12[25];
  if (!v16(&v8[v28], 1, v14))
  {
    (*(v15 + 8))(&v8[v28], v14);
  }

  v29 = v12[26];
  if (!v16(&v8[v29], 1, v14))
  {
    (*(v15 + 8))(&v8[v29], v14);
  }

  v30 = v12[27];
  if (!v16(&v8[v30], 1, v14))
  {
    (*(v15 + 8))(&v8[v30], v14);
  }

  v31 = v1[10];
  v32 = sub_10028088C(&unk_100989850, &qword_1008102C8);
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v3 + v31, 1, v32))
  {
    (*(v33 + 8))(v3 + v31, v32);
  }

  v34 = (v38 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;

  v36 = *(v0 + v35 + 8);

  return _swift_deallocObject(v0, v35 + 16);
}

uint64_t sub_10004B3DC()
{
  sub_10000C60C((v0 + 24));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10004B420()
{
  sub_10000C60C((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10004B460()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_10000C60C((v0 + 40));
  v2 = *(v0 + 96);

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_10004B4B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000C60C((v0 + 40));
  v6 = *(v0 + 88);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10004B598()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_10000C60C((v0 + v4));
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10004B694()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_10000C60C((v0 + v4));

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10004B7A0()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004B7E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004B824()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10004B85C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10004B8A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000C60C(v0 + 4);
  v2 = v0[10];
  if (v2 >> 60 != 15)
  {
    sub_100026AC0(v0[9], v2);
  }

  v3 = v0[12];

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_10004B904()
{
  v1 = v0[3];
  if (v1 >> 60 != 15)
  {
    sub_100026AC0(v0[2], v1);
  }

  v2 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10004B954()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10004B990()
{
  v1 = sub_10028088C(&qword_100984BF8, &qword_1008106E0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);
  v11 = *(v0 + v9);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v9 + 8);
}

uint64_t sub_10004BB3C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v5);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10004BC40()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10004BD40()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 40);

  v7 = *(v0 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4 + 8);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10004BE38()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v6);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_10004BF38()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100026AC0(*(v0 + 32), *(v0 + 40));

  (*(v2 + 8))(v0 + v3, v1);
  sub_10000C60C((v0 + v4));
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10004C048()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_10000C60C((v0 + v4));

  v7 = *(v0 + v6);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_10004C150()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004C190()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_10028088C(&unk_100989850, &qword_1008102C8);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v10 = *(v0 + v8 + 8);

  sub_100026AC0(*(v0 + v9), *(v0 + v9 + 8));

  return _swift_deallocObject(v0, v9 + 16);
}

uint64_t sub_10004C324()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004C3E8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10004C4BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
    sub_10000C60C((v0 + 56));
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10004C5C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100282670(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10004C704()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting Up...", buf, 2u);
  }

  [@"com.apple.sharingd" UTF8String];
  _set_user_dir_suffix();
  sub_1001F31A0();
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"OneTimeAirDropReset2"];

  if (!v3)
  {
    [v2 removeObjectForKey:kSFOperationDiscoverableModeKey];
    [v2 setObject:&__kCFBooleanTrue forKey:@"OneTimeAirDropReset2"];
  }

  v4 = &_dispatch_main_q;
  *buf = 0;
  v35 = buf;
  v36 = 0x3032000000;
  v37 = sub_10004D144;
  v38 = sub_10004D154;
  v39 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(*(v35 + 5), &stru_1008CD9F8);
  v5 = *(v35 + 5);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004D1BC;
  handler[3] = &unk_1008CDA20;
  handler[4] = buf;
  dispatch_source_set_cancel_handler(v5, handler);
  dispatch_resume(*(v35 + 5));
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10004D144;
  v31 = sub_10004D154;
  v32 = dispatch_source_create(&_dispatch_source_type_signal, 0x1DuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v28[5], &stru_1008CDA40);
  v6 = v28[5];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10004D268;
  v26[3] = &unk_1008CDA20;
  v26[4] = &v27;
  dispatch_source_set_cancel_handler(v6, v26);
  dispatch_resume(v28[5]);
  signal(30, 1);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10004D144;
  v24 = sub_10004D154;
  v25 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v21[5], &stru_1008CDA60);
  v7 = v21[5];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004D310;
  v19[3] = &unk_1008CDA20;
  v19[4] = &v20;
  dispatch_source_set_cancel_handler(v7, v19);
  dispatch_resume(v21[5]);
  signal(31, 1);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10004D144;
  v17 = sub_10004D154;
  v18 = dispatch_source_create(&_dispatch_source_type_signal, 0x1FuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v14[5], &stru_1008CDA80);
  v8 = v14[5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004D3B8;
  v12[3] = &unk_1008CDA20;
  v12[4] = &v13;
  dispatch_source_set_cancel_handler(v8, v12);
  dispatch_resume(v14[5]);
  v9 = +[SharingDaemon sharedDaemon];
  [v9 start];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(v0);
  v10 = +[NSRunLoop mainRunLoop];
  [v10 run];

  return 1;
}

void sub_10004D0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004D15C(id a1)
{
  v1 = daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM received, shutting down.", v2, 2u);
  }

  exit(0);
}

void sub_10004D1BC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10004D1D0(id a1)
{
  v1 = daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGINFO received, requesting debug output.", v3, 2u);
  }

  sub_1001F31A0();
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"com.apple.sharingd.DebugInfoRequested" object:0];
}

void sub_10004D268(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10004D27C(id a1)
{
  v1 = daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGUSR1 received, requesting reset state.", v3, 2u);
  }

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"com.apple.sharingd.ResetState" object:0];
}

void sub_10004D310(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10004D324(id a1)
{
  v1 = daemon_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGUSR2 received, requesting reset state 2.", v3, 2u);
  }

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"com.apple.sharingd.ResetState2" object:0];
}

void sub_10004D3B8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    qword_1009899D0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, qword_1009899D0, 0, qword_1009899D8, qword_1009899E0, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = qword_1009899D0 - a3;
    if (qword_1009899D0 < a3)
    {
      v6 = 0;
    }

    qword_1009899D0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, qword_1009899D0, 0, qword_1009899D8, qword_1009899E0, v9, a5, v7);
  }

  return result;
}

__n128 sub_10004D530@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  if (byte_10096F731 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreate(sub_10004E164, &v8, a1, a2, &byte_10096F731, 1);
  if (v4)
  {
    sub_10004DF48();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && byte_10096F731 <= 0x28u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v10 = "ACMLib";
        v11 = 2080;
        v12 = "ACMContextCreateWithFlags";
        v13 = 1024;
        LODWORD(v14[0]) = v6;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= byte_10096F731 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    v13 = 2048;
    v14[0] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  if (byte_10096F731 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(sub_10004E164, &v8, a1, a2, &byte_10096F731, 1);
  if (v4)
  {
    if (byte_10096F731 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v10 = "ACMLib";
      v11 = 2080;
      v12 = "ACMContextCreateWithExternalForm";
      v13 = 1024;
      LODWORD(v14) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    sub_10004DF48();
    v6 = 70;
  }

  if (v6 >= byte_10096F731 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v4 = byte_10096F731;
  if (byte_10096F731 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = byte_10096F731;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(sub_10004E164, &v10, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= byte_10096F731 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  if (byte_10096F731 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v4, 0x16u);
  }

  if (a1 && a2)
  {
    if (!sub_10004E328() && !sub_10004E4DC(a1, 19, 0, a1, 0x10uLL, 0, 0))
    {
      (*(a2 + 16))(a2, a1, 16);
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  sub_10004E7CC(a2);
LABEL_9:
  if (byte_10096F731 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v4, 0x16u);
  }
}

void sub_10004DF48()
{
  if (byte_10096F731 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_1009899EC, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  byte_10096F731 = output;
  if (output <= 0x1EuLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10004E7F4();
LABEL_12:
    v0 = byte_10096F731;
  }

  if (v0 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t sub_10004E164(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_10096F731 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10004E134();
    sub_10004E11C();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = sub_10004E328();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = sub_10004E4DC(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= byte_10096F731 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100035120();
    sub_10004E140();
    sub_10004E10C();
    sub_10004E11C();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t sub_10004E328()
{
  if (byte_10096F731 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002FBF8();
    sub_10004E11C();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (byte_1009899E8)
  {
    v5 = 0;
  }

  else
  {
    v6 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      v9 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v8 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_1009899EC);
    if (v5)
    {
      v9 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v8);
    byte_1009899E8 = 1;
  }

  v9 = 10;
LABEL_10:
  if (v9 >= byte_10096F731 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100035120();
    sub_10004E140();
    sub_10004E10C();
    sub_10004E11C();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v5;
}

uint64_t sub_10004E4DC(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_10096F731 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10004E0F4();
    sub_100021E50();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  inputStructCnt = 0;
  v19 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v19)
  {
    v20 = v19;
    if (!a6 && a7)
    {
      v23 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = 0;
      }

      v44 = v21;
      v22 = IOConnectCallStructMethod(dword_1009899EC, 0, v19, inputStructCnt, a6, &v44);
      v23 = v22;
      if (a1)
      {
        v24 = *(a1 + 16);
      }

      if (v22)
      {
        if (byte_10096F731 <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_10004E0F4();
          sub_10004E14C();
          v49 = v25;
          v50 = v23;
          v51 = v25;
          v52 = v23;
          sub_100021E50();
          _os_log_impl(v26, v27, v28, v29, v30, 0x2Eu);
        }
      }

      else
      {
        if (byte_10096F731 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_10004E0F4();
          sub_10004E14C();
          sub_100021E50();
          _os_log_impl(v31, v32, v33, v34, v35, 0x22u);
        }

        v23 = 0;
        if (a7)
        {
          *a7 = v44;
        }
      }
    }

    v36 = inputStructCnt;
    acm_mem_free_info("<data>", v20, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v20, v36);
    if (v23)
    {
      v37 = 70;
    }

    else
    {
      v37 = 10;
    }
  }

  else
  {
    v37 = 70;
    v23 = 4294967291;
  }

  if (v37 >= byte_10096F731 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v46 = 136315650;
    v47 = "ACMLib";
    sub_10004E128();
    v48 = "performCommand";
    sub_100019D34();
    sub_100021E50();
    _os_log_impl(v38, v39, v40, v41, v42, 0x20u);
  }

  return v23;
}

void sub_10004E7F4()
{
  sub_10004E140();
  sub_10004E11C();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

uint64_t SDUnlockRelockRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDUnlockStashConfirmationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v40 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_54;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_54:
        *(a1 + 16) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v38 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_52:
          v35 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_60;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_58:
          v35 = 12;
        }

        *(a1 + v35) = v20;
      }

LABEL_60:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDAuthenticationTokenReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 != 3)
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v34 & 0x7F) << v16;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          v31 = 16;
          goto LABEL_53;
        }

        v14 = PBReaderReadData();
        v15 = 8;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v35 & 0x7F) << v24;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v26;
          }

LABEL_52:
          v31 = 32;
LABEL_53:
          *(a1 + v31) = v22;
          goto LABEL_54;
        }

        if (v13 != 2)
        {
          goto LABEL_32;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      v30 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100052608(uint64_t a1, int a2)
{
  v3 = [*(a1 + 32) transfer];
  v5 = v3;
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v3 setUserResponse:v4];
}

void sub_100052E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100052E84(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained transfer];
  v5 = [v4 completedURLs];
  v6 = [v5 firstObject];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 handlingAppBundleID];
  [v2 _LSFailedToOpenURL:v6 withBundle:v8];

  v10 = objc_loadWeakRetained((a1 + 32));
  v9 = [v10 completionHandler];
  v9[2](v9, 1, 0, 1);
}

void sub_1000531F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100053218(uint64_t a1)
{
  v2 = airdrop_ui_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User clicked on Open button", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained transfer];
  v5 = [v4 completedURLs];
  [WeakRetained openURLs:v5];
}

void sub_100053878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005389C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005395C;
  block[3] = &unk_1008CDB60;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_10005395C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleMoveToAppShareSheetCompletedWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

id sub_100054348(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleIdentifier];
  if ([v4 containsObject:v5])
  {

LABEL_3:
    v6 = v3;
    goto LABEL_8;
  }

  if ([*(a1 + 40) handlingAppInstalled])
  {
  }

  else
  {
    v7 = [v3 bundleIdentifier];
    v8 = [*(a1 + 40) handlingAppBundleID];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

uint64_t sub_100054D18(uint64_t a1, uint64_t a2)
{
  if (qword_1009899F0 != -1)
  {
    sub_10005500C();
  }

  v4 = dlsym(qword_1009899F8, "ADClientAddValueForScalarKey");
  off_10096F738 = v4;

  return (v4)(a1, a2);
}

void sub_100054DEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Share Sheet failed with error: %@", &v2, 0xCu);
}

void sub_100054E98(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDAirDropHandler.m" lineNumber:528 description:@"Cannot generate default action for nil bundleProxy"];
}

void sub_100054F40(void *a1, NSObject *a2)
{
  v3 = [a1 path];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to remove item at %@", &v4, 0xCu);
}

void sub_100056958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100056980(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SDAirDropSession: cancellation handler called for sessionID: %@", &v5, 0xCu);
  }

  [WeakRetained stop];
}

void sub_100056ED0(uint64_t a1, uint64_t a2, os_log_t log)
{
  if ((a1 - 1) > 0xE)
  {
    v3 = @"?";
  }

  else
  {
    v3 = *(&off_1008CDC78 + a1 - 1);
  }

  v4 = 138412547;
  v5 = v3;
  v6 = 2113;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "SDAirDropSession: Received event %@, properties = %{private}@", &v4, 0x16u);
}

void sub_100057004(id a1)
{
  v1 = objc_alloc_init(SDMISManager);
  v2 = qword_100989A00;
  qword_100989A00 = v1;
}

int sub_1000572D4(id a1, int a2, OS_xpc_object *a3)
{
  if (a2 == 1001 && xpc_dictionary_get_uint64(a3, netrbClientNotificationKey) >> 1 == 2501)
  {
    v3 = +[SDMISManager sharedManager];
    [v3 detachMIS];
  }

  return 0;
}

void sub_100057D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100057DBC(uint64_t a1, int token)
{
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleBioLockoutStateChanged:state64];
  }
}

uint64_t SDUnlockSetupCreateSecretReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 16);
        *(a1 + 16) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_44:
          v30 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_50;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v30 = 24;
        }

        *(a1 + v30) = v20;
      }

LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100059974(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "process %d tried to connect to the Collaboration User Defaults server, but it was not entitled.", v3, 8u);
}

void sub_10005AA34(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_UIHostActivityProxy.m" lineNumber:73 description:@"using slot and text at the same time for activityTitle."];
}

void sub_10005AAA8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "_UIHostActivityProxy:%@ is restricted.", &v2, 0xCu);
}

void sub_10005AE30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_autoreleasePoolPush();
  if (a2 && a4)
  {
    [a2 handleEvent:a4];
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10005BB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005BB54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleTimerFired];
}

void sub_10005BE40(uint64_t a1)
{
  if (*(a1 + 56) - 2002 <= 2)
  {
    v2 = *(a1 + 32);
    v3 = auto_unlock_log();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 56);
        v6 = [*(a1 + 40) length];
        v17 = 67109376;
        *v18 = v5;
        *&v18[4] = 1024;
        *&v18[6] = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received protobuf (type = %d, size = %u)", &v17, 0xEu);
      }

      v4 = [[SDAutoUnlockSessionWrapper alloc] initWithData:*(a1 + 40)];
      if (-[NSObject hasSessionID](v4, "hasSessionID") && (-[NSObject sessionID](v4, "sessionID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v8 == 16))
      {
        v9 = [NSUUID alloc];
        v10 = [v4 sessionID];
        v11 = [v9 initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];

        v12 = [*(a1 + 48) sessionID];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v14 = *(a1 + 48);
          v15 = [v4 payload];
          [v14 handleMessage:v15 fromDeviceID:*(a1 + 32) type:*(a1 + 56)];
        }

        else
        {
          v15 = auto_unlock_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [*(a1 + 48) sessionID];
            v17 = 138412546;
            *v18 = v11;
            *&v18[8] = 2112;
            v19 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Incoming message session ID (%@) doesn't match current one (%@)", &v17, 0x16u);
          }
        }
      }

      else
      {
        v11 = auto_unlock_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10005C1E4(v4, (a1 + 40), v11);
        }
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2A4(v4);
    }
  }
}

void sub_10005C1E4(void *a1, uint64_t *a2, NSObject *a3)
{
  v6 = [a1 sessionID];
  v7 = *a2;
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = a1;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Incoming message missing info (session = %@, wrapper = %@, data = %@)", &v8, 0x20u);
}

void sub_10005C2E8()
{
  v0 = auto_unlock_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Locking key bag", v2, 2u);
  }

  if (aks_lock_bag())
  {
    v1 = auto_unlock_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10005F4B0();
    }
  }
}

void sub_10005C384(uint64_t *a1)
{
  if (ACMContextCreate(a1))
  {
    v1 = auto_unlock_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10005F4EC();
    }
  }
}

void sub_10005C3D8(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = ACMContextCreateWithExternalForm([v3 bytes], objc_msgSend(v3, "length"));
  if (!v4)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10005F55C();
    }
  }

  if (a2)
  {
    *a2 = v4;
  }
}

void sub_10005C468(const void *a1, void *a2, void *a3)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10005C698;
  v18 = sub_10005C6A8;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005C6B0;
  v10[3] = &unk_1008CDDE8;
  v12 = &v20;
  v13 = &v14;
  v6 = dispatch_semaphore_create(0);
  v11 = v6;
  ACMContextGetExternalForm(a1, v10);
  v7 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v21[3] = 60;
  }

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v15[5];
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning context data %@", buf, 0xCu);
  }

  if (a2)
  {
    *a2 = v15[5];
  }

  if (a3)
  {
    *a3 = v21[3];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

void sub_10005C668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005C698(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_10005C6B0(uint64_t a1, const void *a2, int64_t size)
{
  v6 = malloc_type_malloc(size, 0x2045DFEEuLL);
  if (v6)
  {
    v7 = v6;
    memcpy(v6, a2, size);
    if (size >= 1)
    {
      v8 = [NSData dataWithBytes:v7 length:size];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    free(v7);
  }

  else
  {
    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10005F5D0();
    }

    *(*(*(a1 + 40) + 8) + 24) = 12;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

BOOL sub_10005C784(uint64_t a1)
{
  v1 = ACMContextContainsCredentialTypeEx(a1, 9, 0);
  v2 = auto_unlock_log();
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10005F60C();
    }
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ACM context contains credential", v5, 2u);
  }

  return v1 == 0;
}

id sub_10005C828()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  if (aks_get_bag_uuid())
  {
    v1 = auto_unlock_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10005F67C();
    }

    v2 = 0;
  }

  else
  {
    v2 = [[NSUUID alloc] initWithUUIDBytes:v0];
  }

  free(v0);

  return v2;
}

void sub_10005C8E8()
{
  v0 = auto_unlock_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_10005F6EC();
  }

  if (aks_remote_session_reset_all())
  {
    v1 = auto_unlock_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Failed to reset all sessions", v2, 2u);
    }
  }
}

id sub_10005C980(uint64_t a1)
{
  v2 = sub_10005CEBC((a1 + 16), *(a1 + 88));
  v3 = sub_10005CF4C(*a1);
  v4 = @"escrow_record_not_found";
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v5 == 1)
  {
    v7 = @"escrow_record_not_found";
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"escrow_record_valid";
  }

  if (v6 != 1)
  {
    v4 = 0;
  }

  if (!v6)
  {
    v4 = @"escrow_record_valid";
  }

  v9 = *(a1 + 96);
  v10 = *(a1 + 97);
  v11 = *(a1 + 98);
  v12 = v4;
  v13 = v8;
  v14 = [NSString stringWithFormat:@"%02x%02x%02x", v9, v10, v11];
  v15 = [NSString stringWithFormat:@"State: {\n\tpublic key: %@\n\ttoken status: %@, \n\tunwrapped record status: %@\n\twrapped record status: %@\n\tkcv: %@\n}", v2, v3, v13, v12, v14];

  return v15;
}

uint64_t sub_10005CAB4(int *a1)
{
  if (a1[2])
  {
    return 0;
  }

  v2 = a1[3];
  v3 = *a1;
  if (a1[1])
  {
    v4 = 100;
    if (v3 <= 2)
    {
      v8 = 100;
      if ((v2 & 4) == 0)
      {
        v8 = 9;
      }

      v9 = 10;
      if (a1[3])
      {
        v9 = v8;
      }

      if (v3 == 2)
      {
        v4 = 5;
      }

      if (v3 == 1)
      {
        v4 = 4;
      }

      if (v3)
      {
        return v4;
      }

      else
      {
        return v9;
      }
    }

    else
    {
      v5 = 1;
      v6 = 8;
      if (v3 != 6)
      {
        v6 = 100;
      }

      if (v3 != 5)
      {
        v5 = v6;
      }

      if (v3 == 4)
      {
        v4 = 7;
      }

      if (v3 == 3)
      {
        v4 = 6;
      }

      if (v3 <= 4)
      {
        return v4;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v7 = 100;
    if ((v2 & 4) == 0)
    {
      v7 = 9;
    }

    if ((v2 & 1) == 0)
    {
      v7 = 2;
    }

    if (v3)
    {
      return v7;
    }

    else
    {
      return 3;
    }
  }
}

void sub_10005CB84(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040020F6587uLL);
  if (v2)
  {
    v3 = v2;
    [v1 bytes];
    [v1 length];
    state = aks_remote_peer_get_state();
    v5 = state;
    if (!state || state == -536870184)
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *v3;
        v8 = v3[2];
        *&v14[16] = v3[1];
        v15 = v8;
        *v14 = v7;
        v9 = v3[3];
        v10 = v3[4];
        v11 = v3[5];
        v19 = *(v3 + 12);
        v17 = v10;
        v18 = v11;
        v16 = v9;
        v12 = sub_10005C980(v14);
        v13 = sub_10005CD14(*(v3 + 3));
        *v14 = 67109634;
        *&v14[4] = v5;
        *&v14[8] = 2112;
        *&v14[10] = v12;
        *&v14[18] = 2112;
        *&v14[20] = v13;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Status %d, Peer State: %@, flags: %@", v14, 0x1Cu);
      }
    }

    free(v3);
  }
}

id sub_10005CD14(char a1)
{
  v2 = +[NSMutableArray array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"registered"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"originator"];
  if ((a1 & 4) != 0)
  {
LABEL_4:
    [v3 addObject:@"armed"];
  }

LABEL_5:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

const __CFString *sub_10005CDC0(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return @"SDAKSPeerStateNoRemoteUnlockWithinWindow";
      }

      if (a1 == 6)
      {
        return @"SDAKSPeerStateTooManyFailedPasscodeEntries";
      }

      return @"SDAKSPeerStatePasscodeDisabled";
    }

    switch(a1)
    {
      case 8:
        return @"SDAKSPeerStateBioLockout";
      case 9:
        return @"SDAKSPeerStateNotArmed";
      case 100:
        return @"SDAKSPeerStateUnknown";
    }

    return @"Unexpected type";
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return @"SDAKSPeerStateNotSetUp";
    }

    if (a1 == 1)
    {
      return @"SDAKSPeerStateNotAvailable";
    }

    return @"Unexpected type";
  }

  if (a1 == 2)
  {
    return @"SDAKSPeerStateOnlyEscrowAvailable";
  }

  if (a1 == 3)
  {
    return @"SDAKSPeerStateTokenAvailable";
  }

  return @"SDAKSPeerStateNoPasscodeUnlockWithinWindow";
}

__CFString *sub_10005CEBC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = @"<empty>";
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      v2 = +[NSMutableString string];
      do
      {
        v5 = *v4++;
        [(__CFString *)v2 appendFormat:@"%02x", v5];
        --v3;
      }

      while (v3);
    }
  }

  return v2;
}

__CFString *sub_10005CF4C(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1008CDE58[a1];
  }
}

uint64_t sub_10005CF6C()
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  aks_get_device_state();
  v0 = MKBDeviceUnlockedSinceBoot();
  v1 = auto_unlock_log();
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (v0 == 1)
  {
    if (v2)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "biometric timer expired, but reporting bio armed anyway", v5, 2u);
    }

    v3 = 1;
  }

  else
  {
    if (v2)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "not armed", v5, 2u);
    }

    v3 = 0;
  }

  return v3;
}

id sub_10005D0A0(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = 0;
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SDAKSGenerateLocalLTK attested: %d", buf, 8u);
  }

  if (!a2)
  {
    aks_create_signing_key();
    goto LABEL_19;
  }

  v4 = MAECopyDCRTWithError();
  v5 = 0;
  if (v4)
  {
    aks_params_create();
    *buf = 4;
    [v4 bytes];
    [v4 length];
    if (aks_params_set_data())
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10005F72C();
      }
    }

    else if (aks_params_set_number())
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10005F7A0();
      }
    }

    else
    {
      if (!aks_params_get_der())
      {
        aks_create_signing_key_with_params();
        goto LABEL_18;
      }

      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10005F814();
      }
    }
  }

  else
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10005F888();
    }
  }

LABEL_18:
LABEL_19:
  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10005F8FC(&v9);
  }

  if (v10)
  {
    free(v10);
  }

  return 0;
}

id sub_10005D3B0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v16 = 0;
  v17 = 0;
  if ((a4 - 1) >= 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4 + 8;
  }

  if ((a2 - 1) >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2 + 8;
  }

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"YES";
    *buf = 67110659;
    v19 = 0;
    v20 = 1024;
    if (v8)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v21 = v9;
    if (!v7)
    {
      v12 = @"NO";
    }

    v22 = 2112;
    v23 = v13;
    v24 = 2113;
    v25 = v8;
    v26 = 1024;
    v27 = v10;
    v28 = 2112;
    v29 = v12;
    v30 = 2113;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Signing (handle = %d, local class %d, local exists %@, local data %{private}@, remote class %d, remote exists %@, remote data %{private}@)", buf, 0x3Cu);
  }

  [v8 bytes];
  [v8 length];
  [v7 bytes];
  [v7 length];
  aks_sign_signing_key();
  v14 = auto_unlock_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10005F968(&v16);
  }

  if (v17)
  {
    free(v17);
  }

  return 0;
}

void sub_10005D638(void *a1)
{
  v1 = a1;
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beginning DCRT retrieval", buf, 2u);
  }

  v4 = v1;
  v3 = v1;
  MAEIssueDCRTWithCallback();
}

void sub_10005D714(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = auto_unlock_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005F9D4();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DCRT retrieval finished", v7, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

uint64_t sub_10005D7E0(void *a1, void *a2, int a3, _DWORD *a4, int a5)
{
  if (a5)
  {
    v5 = 4;
  }

  else
  {
    v5 = 10;
  }

  if (a3)
  {
    v6 = v5 | 0x80;
  }

  else
  {
    v6 = v5;
  }

  return sub_10005D80C(a1, a2, v6, 0, 0, a4);
}

uint64_t sub_10005D80C(void *a1, void *a2, int a3, void *a4, int a5, _DWORD *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v31 = 0;
  if ((a5 & 1) == 0)
  {
    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v33 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SDAKSCreateSession flags: %d", buf, 8u);
    }
  }

  if (!v9 || !v10)
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (v9)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      if (v10)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v25 = +[NSThread callStackSymbols];
      *buf = 138413571;
      *v33 = v23;
      *&v33[8] = 2113;
      *v34 = v9;
      *&v34[8] = 2112;
      *v35 = v24;
      *&v35[8] = 2113;
      *v36 = v10;
      *&v36[8] = 1024;
      *v37 = a3;
      *&v37[4] = 2112;
      *&v37[6] = v25;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Either local or remoteLTK is nil. This shouldn't happen; expect AKS to throw an error. local exists %@, localKey = %{private}@,\n remote exists %@, remoteKey = %{private}@, flags: %d. Callstack:\n%@", buf, 0x3Au);
    }
  }

  [v9 bytes];
  [v9 length];
  [v10 bytes];
  [v10 length];
  [v11 bytes];
  [v11 length];
  v14 = aks_remote_session();
  if (v14 == -536870211)
  {
    v15 = auto_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received no memory error when creating session, clearing and retrying", buf, 2u);
    }

    sub_10005C8E8();
    v31 = 0;
    [v9 bytes];
    [v9 length];
    [v10 bytes];
    [v10 length];
    [v11 bytes];
    [v11 length];
    v14 = aks_remote_session();
  }

  v16 = auto_unlock_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v33 = v31;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Auth session -- create (session id: %d)", buf, 8u);
  }

  if (!v14)
  {
    v18 = v31;
    goto LABEL_33;
  }

  if (!a5)
  {
    v19 = auto_unlock_log();
    v20 = v19;
    if (v14 == -536870160)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v33 = -536870160;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Escrow record not found status = %d", buf, 8u);
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = @"NO";
        *buf = 67110915;
        *v33 = v14;
        *&v33[4] = 1024;
        if (v9)
        {
          v27 = @"YES";
        }

        else
        {
          v27 = @"NO";
        }

        *&v33[6] = a3;
        if (v10)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        *v34 = 2112;
        if (v11)
        {
          v26 = @"YES";
        }

        *&v34[2] = v27;
        *v35 = 2113;
        *&v35[2] = v9;
        *v36 = 2112;
        *&v36[2] = v28;
        *v37 = 2113;
        *&v37[2] = v10;
        *&v37[10] = 2112;
        *&v37[12] = v26;
        v38 = 2113;
        v39 = v11;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "AKS session failure: (status = %d, flags = %d,\n local exists %@, localKey = %{private}@,\n remote exists %@, remoteKey = %{private}@\n secret exists: %@, secret = %{private}@)", buf, 0x4Au);
      }

      sub_10005CB84(v10);
    }

    goto LABEL_32;
  }

  if (v14 != -536363000 && v14 != -536870184)
  {
    v21 = auto_unlock_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v33 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "got error: %d", buf, 8u);
    }

LABEL_32:
    v18 = -1;
    goto LABEL_33;
  }

  v17 = auto_unlock_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Record exists, but not available", buf, 2u);
  }

  v18 = 0;
LABEL_33:
  if (a6)
  {
    *a6 = v14;
  }

  return v18;
}

uint64_t sub_10005DDA0(void *a1, void *a2, int a3, _DWORD *a4)
{
  if (a3)
  {
    v4 = 129;
  }

  else
  {
    v4 = 1;
  }

  return sub_10005D80C(a1, a2, v4, 0, 0, a4);
}

uint64_t sub_10005DDF0(void *a1, void *a2, int a3, int a4, int a5, int a6, void *a7, int a8, _DWORD *a9)
{
  if (a3)
  {
    v15 = 128;
  }

  else
  {
    v15 = 0;
  }

  if (a5)
  {
    v15 |= 7u;
  }

  if (a7)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  if (v16)
  {
    v17 = 5;
  }

  else
  {
    v17 = 2;
  }

  v18 = v17 | v15;
  v19 = v15 | 0x100;
  if (a6)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = a7;
  v22 = a2;
  v23 = a1;
  v24 = auto_unlock_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    if (a3)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    if (a5)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v31 = 138413058;
    v32 = v26;
    if (a4)
    {
      v28 = @"YES";
    }

    else
    {
      v28 = @"NO";
    }

    v33 = 2112;
    v34 = v27;
    v35 = 2112;
    v36 = v28;
    if (v21)
    {
      v25 = @"YES";
    }

    v37 = 2112;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Creating auth session. originator: %@, usingAuthRecord: %@, usingEscrow: %@, escrowSecret: %@", &v31, 0x2Au);
  }

  v29 = sub_10005D80C(v23, v22, v20, v21, a8, a9);
  return v29;
}

uint64_t sub_10005DFA0(void *a1, void *a2, int a3, int a4, int a5, void *a6, int a7, _DWORD *a8)
{
  v15 = a6;
  v16 = a2;
  v17 = a1;
  v18 = auto_unlock_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    if (a3)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    if (a5)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v27 = 138413058;
    v28 = v20;
    if (a4)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v29 = 2112;
    v30 = v21;
    v31 = 2112;
    v32 = v22;
    if (v15)
    {
      v19 = @"YES";
    }

    v33 = 2112;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Creating bio arm session. originator: %@, usingAuthRecord: %@, usingEscrow: %@, escrowSecret: %@", &v27, 0x2Au);
  }

  if (a3)
  {
    v23 = 128;
  }

  else
  {
    v23 = 0;
  }

  if (a5)
  {
    v24 = v23 | 4;
  }

  else
  {
    v24 = v23;
  }

  v25 = sub_10005D80C(v17, v16, v24 | 0xBu, v15, a7, a8);
  return v25;
}

uint64_t sub_10005E12C(void *a1, void *a2, int a3, int a4, int a5, void *a6, int a7, _DWORD *a8)
{
  v15 = a6;
  v16 = a2;
  v17 = a1;
  v18 = auto_unlock_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    if (a3)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    if (a5)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v27 = 138413058;
    v28 = v20;
    if (a4)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v29 = 2112;
    v30 = v21;
    v31 = 2112;
    v32 = v22;
    if (v15)
    {
      v19 = @"YES";
    }

    v33 = 2112;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Creating assert delay session. originator: %@, usingAuthRecord: %@, usingEscrow: %@, escrowSecret: %@", &v27, 0x2Au);
  }

  if (a3)
  {
    v23 = 128;
  }

  else
  {
    v23 = 0;
  }

  if (a5)
  {
    v24 = v23 | 3;
  }

  else
  {
    v24 = v23;
  }

  v25 = sub_10005D80C(v17, v16, v24 | 0xCu, v15, a7, a8);
  return v25;
}

id sub_10005E2C8()
{
  if (aks_remote_session_token() == -536870212)
  {
    v0 = auto_unlock_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10005FA48();
    }
  }

  return 0;
}

BOOL sub_10005E384(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disabling AKS escrow record", buf, 2u);
  }

  [v4 bytes];
  [v4 length];

  [v3 bytes];
  [v3 length];

  v6 = aks_remote_session();
  if (v6 == -536870212)
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10005FA84();
    }
  }

  return v6 != -536870212;
}

BOOL sub_10005E4BC(int a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a2;
  [v6 bytes];
  [v6 length];

  v7 = aks_remote_session_step();
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Step status: %d", buf, 8u);
  }

  if (v7)
  {
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10005FAC0();
    }
  }

  else if (a3)
  {
    *a3 = [NSData dataWithBytes:0 length:0];
  }

  return v7 == 0;
}

id sub_10005E624()
{
  v4 = 0;
  v5 = 0;
  if (aks_remote_peer_confirm() == -536870212 || v4 == 0)
  {
    v1 = auto_unlock_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10005FAFC(&v4);
    }

    v2 = 0;
  }

  else
  {
    v2 = [NSData dataWithBytes:v5 length:?];
  }

  if (v5)
  {
    free(v5);
  }

  return v2;
}

uint64_t sub_10005E6DC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && [v2 length])
  {
    v4 = [v3 dataUsingEncoding:4];
    [v4 bytes];
    [v4 length];
    v5 = aks_remote_peer_setup();
    v6 = v5;
    if (v5)
    {
      if (v5 == -536870194)
      {
        v7 = auto_unlock_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10005FB74();
        }

        v6 = 147;
      }

      else
      {
        v7 = auto_unlock_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10005FBB0();
        }

        v6 = 172;
      }
    }
  }

  else
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"YES";
      if (!v3)
      {
        v8 = @"NO";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Missing passcode (exists: %@)", &v10, 0xCu);
    }

    v6 = 175;
  }

  return v6;
}

uint64_t sub_10005E87C()
{
  if (!aks_remote_peer_setup())
  {
    return 0;
  }

  v0 = auto_unlock_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10005FC20();
  }

  return 172;
}

BOOL sub_10005E8EC(int a1)
{
  v2 = aks_remote_peer_confirm();
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109376;
    v5[1] = a1;
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Auth session -- peer_confirm (session id: %d), status=%d", v5, 0xEu);
  }

  return v2 != -536870212;
}

BOOL sub_10005E9C4(int a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Auth session -- reset (session id: %d)", v4, 8u);
  }

  return aks_reset_session() != -536870212;
}

id sub_10005EA80(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (!v3)
  {
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10005FFD8();
    }

    goto LABEL_67;
  }

  [v3 UTF8String];
  [v3 length];
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Authorization Test: Creating keybags", buf, 2u);
  }

  if (!aks_create_bag() && !aks_remote_session_reset_all())
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Authorization Test: Creating LTKs", buf, 2u);
    }

    if (aks_create_signing_key())
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005FC90();
      }

      goto LABEL_67;
    }

    if (aks_create_signing_key())
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005FD08();
      }

      goto LABEL_67;
    }

    if (aks_sign_signing_key())
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005FD80();
      }

      goto LABEL_67;
    }

    if (aks_sign_signing_key())
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10005FDF8();
      }

      goto LABEL_67;
    }

    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Authorization Test: Enabling test keybag", buf, 2u);
    }

    if (!aks_remote_session() && !aks_remote_session() && !sub_10005F3DC() && !aks_remote_peer_setup() && !aks_remote_peer_confirm())
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Authorization Test: Creating ACM context", buf, 2u);
      }

      if (v4)
      {
        v26[0] = ACMContextCreateWithExternalForm([v4 bytes], objc_msgSend(v4, "length"));
        if (!v26[0])
        {
          v9 = auto_unlock_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_10005FE70();
          }

LABEL_67:
          v12 = 0;
LABEL_42:

          goto LABEL_43;
        }

        goto LABEL_28;
      }

      ACMContextCreate(v26);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10005F2F4;
      v16[3] = &unk_1008CDE38;
      v16[4] = &v22;
      v16[5] = &v18;
      ACMContextGetExternalForm(v26[0], v16);
      if (v23[3])
      {
        if (ACMContextContainsCredentialTypeEx(v26[0], 9, 0))
        {
          v4 = [NSData dataWithBytes:v23[3] length:v19[3], v27];
          free(v23[3]);
          v23[3] = 0;
LABEL_28:
          v10 = auto_unlock_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Authorization Test: Starting authorization session", buf, 2u);
          }

          [v4 bytes];
          [v4 length];
          if (!aks_remote_session() && !aks_remote_session() && !sub_10005F3DC() && !aks_remote_session_reset() && !aks_remote_session_reset())
          {
            v11 = auto_unlock_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Authorization Test: Session complete checking for credential", buf, 2u);
            }

            if (ACMContextContainsCredentialTypeEx(v26[0], 9, 0))
            {
              v9 = auto_unlock_log();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                sub_10005FEAC();
              }
            }

            else
            {
              v15[0] = _NSConcreteStackBlock;
              v15[1] = 3221225472;
              v15[2] = sub_10005F368;
              v15[3] = &unk_1008CDE38;
              v15[4] = &v22;
              v15[5] = &v18;
              ACMContextGetExternalForm(v26[0], v15);
              if (v19[3])
              {
                v12 = [NSData dataWithBytes:v23[3] length:v27];
                if (v12)
                {
                  v9 = auto_unlock_log();
                  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Authorization Test: Returning credential", buf, 2u);
                  }

                  goto LABEL_42;
                }

                v9 = auto_unlock_log();
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  sub_10005FEE8();
                }
              }

              else
              {
                v9 = auto_unlock_log();
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  sub_10005FF24();
                }
              }
            }

            goto LABEL_67;
          }

          goto LABEL_50;
        }

        v9 = auto_unlock_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10005FF60();
        }
      }

      else
      {
        v9 = auto_unlock_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10005FF9C();
        }
      }

      v12 = 0;
      v4 = 0;
      goto LABEL_42;
    }
  }

LABEL_50:
  v12 = 0;
LABEL_43:
  v13 = v23[3];
  if (v13)
  {
    free(v13);
  }

  if (v26[0])
  {
    ACMContextDelete(v26[0], 0);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v12;
}

void sub_10005F288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void *sub_10005F2F4(uint64_t a1, const void *a2, size_t size)
{
  *(*(*(a1 + 32) + 8) + 24) = malloc_type_malloc(size, 0xACBC7B0uLL);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    result = memcpy(result, a2, size);
    *(*(*(a1 + 40) + 8) + 24) = size;
  }

  return result;
}

void *sub_10005F368(uint64_t a1, const void *a2, size_t size)
{
  *(*(*(a1 + 32) + 8) + 24) = malloc_type_malloc(size, 0xDCA99618uLL);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    result = memcpy(result, a2, size);
    *(*(*(a1 + 40) + 8) + 24) = size;
  }

  return result;
}

void sub_10005F4B0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005F4EC()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F5D0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005F60C()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F67C()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F72C()
{
  sub_100035D28();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F7A0()
{
  sub_100035D28();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F814()
{
  sub_100035D28();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F8FC(uint64_t *a1)
{
  v1 = *a1;
  sub_10002FC10();
  sub_100019D70(&_mh_execute_header, v2, v3, "Local key generation failed (error %d, output length = %d)", v4, v5);
}

void sub_10005F968(uint64_t *a1)
{
  v1 = *a1;
  sub_10002FC10();
  sub_100019D70(&_mh_execute_header, v2, v3, "Failed to sign remote key (error = %d, output length = %d)", v4, v5);
}

void sub_10005FA48()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FA84()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FAC0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FAFC(void *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005FB74()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FBB0()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005FC20()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005FC90()
{
  sub_100019D50();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10005FD08()
{
  sub_100019D50();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10005FD80()
{
  sub_100019D50();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10005FDF8()
{
  sub_100019D50();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10005FE70()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FEAC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FEE8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FF24()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FF60()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FF9C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FFD8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t SDUnlockSessionConfirmationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v52 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v52 & 0x7F) << v40;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v42;
          }

LABEL_77:
          v48 = 12;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_68:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_86;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v51 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v51 & 0x7F) << v21;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_84;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_84:
          v48 = 8;
        }

        *(a1 + v48) = v27;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 20) |= 4u;
            while (1)
            {
              v55 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v55 & 0x7F) << v28;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_71;
              }
            }

            v20 = (v30 != 0) & ~[a2 hasError];
LABEL_71:
            v47 = 16;
            break;
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 20) |= 8u;
            while (1)
            {
              v54 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v54 & 0x7F) << v34;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_73;
              }
            }

            v20 = (v36 != 0) & ~[a2 hasError];
LABEL_73:
            v47 = 17;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 20) |= 0x10u;
            while (1)
            {
              v53 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v14;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_79;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_79:
            v47 = 18;
            break;
          default:
            goto LABEL_68;
        }

        *(a1 + v47) = v20;
      }

LABEL_86:
      v49 = [a2 position];
    }

    while (v49 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100061520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100061540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerAppStoreSearch];
  v1 = [WeakRetained transfer];
  v2 = [v1 cancelAction];
  [WeakRetained actionSelected:v2];
}

uint64_t SDUnlockSessionKeyExchangeResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = PBReaderReadData();
          v36 = *(a1 + 8);
          *(a1 + 8) = v35;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_63;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v42 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v42 & 0x7F) << v21;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_57;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_57:
          *(a1 + 24) = v27;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v41 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v41 & 0x7F) << v29;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_61;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v31;
          }

LABEL_61:
          v37 = 20;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_40;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v40 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v40 & 0x7F) << v14;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_55:
          v37 = 16;
        }

        *(a1 + v37) = v20;
      }

LABEL_63:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100063538(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDSuggestion.m" lineNumber:69 description:@"suggestion must be set."];
}

void sub_1000635AC(void *a1, NSObject *a2)
{
  v3 = [a1 fileSystemRepresentation];
  v4 = *__error();
  v5 = 136315394;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension for %s with error %d", &v5, 0x12u);
}

id sub_100064140(uint64_t a1)
{
  [*(a1 + 32) releaseIdleSleepAssertion];
  [*(a1 + 32) invalidateAssertionTimer];
  v2 = *(a1 + 32);

  return [v2 logAutoUnlockEnd];
}

void sub_100064D48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_100064D74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100064E2C;
  v6[3] = &unk_1008CDEC8;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_100064E2C(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting wifi request", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained nq_handleWiFiRequestStartedWithStartAWDLHandler:*(a1 + 32)];
}

void sub_100064EB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064F54;
  block[3] = &unk_1008CDF18;
  v6[1] = a3;
  objc_copyWeak(v6, (a1 + 48));
  block[4] = *(a1 + 40);
  dispatch_async(v4, block);
  objc_destroyWeak(v6);
}

void sub_100064F54(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = auto_unlock_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100068D5C(a1, v2);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained invalidateResponseTimer];

    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Starting AWDL failed";
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:v5 code:114 userInfo:v6];
    [v4 notifyDelegateWithError:v7];
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 nq_awdlNetworkStarted];
  }
}

void sub_1000650D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065164;
  block[3] = &unk_1008CDD98;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void sub_100065164(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained nq_handleWiFiRequestInvalidated];
}

void sub_1000672E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error sending SDAutoUnlockAWDLInfo (error: %@)", buf, 0xCu);
    }

    [*(a1 + 32) invalidateResponseTimer];
    v5 = *(a1 + 32);
    v6 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"AWDL info exchange failed";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v6 code:103 userInfo:v7];
    [v5 notifyDelegateWithError:v8];
  }
}

void sub_1000675B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000693B4();
  }

  [*(a1 + 32) invalidateResponseTimer];
  v5 = *(a1 + 32);
  v6 = SFAutoUnlockErrorDomain;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Exchange request failed";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:201 userInfo:v7];
  [v5 notifyDelegateWithError:v8];
}

void sub_100067870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100069424();
  }

  [*(a1 + 32) invalidateResponseTimer];
  v5 = *(a1 + 32);
  v6 = SFAutoUnlockErrorDomain;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Exchange request failed";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:103 userInfo:v7];
  [v5 notifyDelegateWithError:v8];
}

void sub_100067B74(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) sessionCompleted])
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AuthToken ack after session completed", buf, 2u);
    }
  }

  else
  {
    if (a2)
    {
      [*(a1 + 32) invalidateResponseTimer];
      v5 = *(a1 + 32);
      v6 = SFAutoUnlockErrorDomain;
      v12 = NSLocalizedDescriptionKey;
      v13 = @"Exchange request failed";
      v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v8 = [NSError errorWithDomain:v6 code:103 userInfo:v7];
      [v5 notifyDelegateWithError:v8];

      return;
    }

    if (*(a1 + 40))
    {
      v10 = [*(a1 + 32) exchangeResponse];
      if ([v10 version] < 2 || !objc_msgSend(*(a1 + 32), "userRequestRequired"))
      {
        v9 = *(a1 + 48);

        if (v9)
        {
          return;
        }

        v10 = [*(a1 + 32) wifiRequestStartedHandler];
        (*(v10 + 2))(v10, 1);
      }
    }
  }
}

void sub_100067EC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setShouldAlertOnNotify:0];
  [*(a1 + 32) alertOfUnlock];
  [*(a1 + 32) invalidateResponseTimer];
  [*(a1 + 32) notifyDelegateWithError:v4];
}

id sub_100068388(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Assertion timer fired", v4, 2u);
  }

  [*(a1 + 32) setAssertionTimer:0];
  return [*(a1 + 32) releaseIdleSleepAssertion];
}

void sub_100068D5C(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) wifiRequest];
  v4 = 136315650;
  v5 = "[SDAutoUnlockKeySession createWiFiRequest]_block_invoke_2";
  v6 = 2112;
  v7 = @"Starting AWDL failed";
  v8 = 2112;
  v9 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s error %@ request:%@", &v4, 0x20u);
}

void sub_100068E1C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068E58()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069014()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100069084()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000690C0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100069130()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000691E0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069290()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100069300()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006933C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100069378()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000693B4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100069424()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t SDAuthenticationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              v34 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v34 & 0x7F) << v23;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_56;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_56:
            v31 = 24;
            goto LABEL_57;
          case 5:
            v14 = PBReaderReadData();
            v15 = 8;
            break;
          case 6:
            v14 = PBReaderReadData();
            v15 = 40;
            break;
          default:
LABEL_44:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v35 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v35 & 0x7F) << v16;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_52;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_52:
            v31 = 48;
LABEL_57:
            *(a1 + v31) = v22;
            goto LABEL_58;
          case 2:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 3:
            v14 = PBReaderReadData();
            v15 = 16;
            break;
          default:
            goto LABEL_44;
        }
      }

      v30 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_58:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10006A5E0(id a1)
{
  v1 = objc_alloc_init(SDUnlockIDSController);
  v2 = qword_100989A10;
  qword_100989A10 = v1;
}

void sub_10006AA2C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  }

  else
  {
    v5 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v3 setObject:v5 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  }

  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
  v6 = *(a1 + 40);
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
  }

  v7 = *(a1 + 72);
  v8 = &IDSSendMessageOptionLocalDeliveryKey;
  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
    v8 = &IDSSendMessageOptionRequireBluetoothKey;
  }

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:*v8];
LABEL_10:
  v9 = [[IDSProtobuf alloc] initWithProtobufData:*(a1 + 48) type:*(a1 + 88) isResponse:0];
  v10 = [*(a1 + 56) idsService];
  if (*(a1 + 80) == 2)
  {
    v11 = [*(a1 + 56) idsServiceClassA];

    v10 = v11;
  }

  v12 = paired_unlock_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 88);
    v14 = [*(a1 + 48) length];
    v15 = [*(a1 + 56) dataClassStringForDataClass:*(a1 + 80)];
    v16 = *(a1 + 48);
    *buf = 67109890;
    *v28 = v13;
    *&v28[4] = 2048;
    *&v28[6] = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending protobuf (type = %d, size = %lu, data class = %@, data = %@)", buf, 0x26u);
  }

  v17 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v25 = 0;
  v26 = 0;
  [v10 sendProtobuf:v9 toDestinations:v17 priority:300 options:v3 identifier:&v26 error:&v25];
  v18 = v26;
  v19 = v25;

  v20 = paired_unlock_log();
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10006C028();
    }

    v22 = *(a1 + 64);
    if (v22)
    {
      (*(v22 + 16))(v22, v19);
    }
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v28 = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sent message with identifier = %@", buf, 0xCu);
    }

    v23 = *(a1 + 64);
    if (v23)
    {
      v24 = [v23 copy];
      [*(*(a1 + 56) + 64) setObject:v24 forKeyedSubscript:v18];
    }
  }
}

void sub_10006AE60(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 addObject:*(a1 + 40)];
}

void sub_10006AF68(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 removeObject:*(a1 + 40)];
}

void sub_10006D4D8(id a1, BOOL a2, NSError *a3)
{
  if (a3)
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006E35C(v3);
    }
  }
}

void sub_10006D960(uint64_t a1)
{
  [*(a1 + 32) invalidateResponseTimer];
  v2 = *(a1 + 32);
  v3 = SFAutoUnlockErrorDomain;
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Setup created response failed";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = [NSError errorWithDomain:v3 code:103 userInfo:v4];
  [v2 notifyDelegateWithError:v5];
}

void sub_10006DC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) invalidateResponseTimer];
    v4 = *(a1 + 32);
    v5 = SFAutoUnlockErrorDomain;
    v8 = NSLocalizedDescriptionKey;
    v9 = @"Setup created response failed";
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [NSError errorWithDomain:v5 code:103 userInfo:v6];
    [v4 notifyDelegateWithError:v7];
  }
}

void sub_10006DEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) invalidateResponseTimer];
    v4 = *(a1 + 32);
    v5 = SFAutoUnlockErrorDomain;
    v8 = NSLocalizedDescriptionKey;
    v9 = @"Setup created response failed";
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [NSError errorWithDomain:v5 code:103 userInfo:v6];
    [v4 notifyDelegateWithError:v7];
  }
}

void sub_10006E2E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "handleCreateEscrowSecret: %@", &v2, 0xCu);
}

uint64_t SDAuthenticationPairingCreateSecretReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadData();
        v22 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10006F634(uint64_t a1)
{
  v2 = [*(a1 + 32) localLTK];
  v3 = [*(a1 + 32) remoteLTK];
  [*(a1 + 32) setAksSessionID:{sub_10005D7E0(v2, v3, objc_msgSend(*(a1 + 32), "originator"), (*(*(a1 + 40) + 8) + 24), 1)}];

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) sessionIsValid];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fix worked for pairing session: %@", &v7, 0xCu);
  }
}

void sub_10006F75C(uint64_t a1)
{
  v2 = [*(a1 + 32) localLTK];
  v3 = [*(a1 + 32) remoteLTK];
  v4 = [*(a1 + 32) originator];
  v5 = [*(a1 + 32) usingEscrow];
  v6 = [*(a1 + 32) escrowSecret];
  [*(a1 + 32) setAksSessionID:{sub_10005DDBC(v2, v3, v4, v5, 0, v6, (*(*(a1 + 40) + 8) + 24))}];

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) sessionIsValid];
    v9 = @"NO";
    if (v8)
    {
      v9 = @"YES";
    }

    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fix worked for auth session: %@", &v10, 0xCu);
  }
}

void sub_10006F8B8(uint64_t a1)
{
  v2 = [*(a1 + 32) localLTK];
  v3 = [*(a1 + 32) remoteLTK];
  v4 = [*(a1 + 32) originator];
  v5 = [*(a1 + 32) usingEscrow];
  v6 = [*(a1 + 32) escrowSecret];
  [*(a1 + 32) setAksSessionID:{sub_10005DDBC(v2, v3, v4, v5, 0, v6, (*(*(a1 + 40) + 8) + 24))}];

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) sessionIsValid];
    v9 = @"NO";
    if (v8)
    {
      v9 = @"YES";
    }

    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fix worked for auth session: %@", &v10, 0xCu);
  }
}

void sub_100070140(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creating authorization record: %d", v3, 8u);
}

void sub_1000706A0(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "process %d tried to connect to the Share Sheet User Defaults server, but it was not entitled.", v3, 8u);
}

void sub_100070F6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007107C;
  block[3] = &unk_1008CE0E0;
  v14 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v21 = *(a1 + 66);
  v10 = *(a1 + 56);
  v20 = *(a1 + 64);
  v18 = v6;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10007107C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[SDActivityEncryptionManager sharedEncryptionManager];
    v3 = [v2 newDecryptionKeyFromDataRepresentation:*(a1 + 32)];

    if (v3)
    {
      if ([v3 isEqual:*(a1 + 40)])
      {
        v4 = *(a1 + 80);
        v5 = [*(a1 + 48) lastCounter];
        v6 = handoff_log();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
        if (v4 <= v5)
        {
          if (v7)
          {
            v14 = *(a1 + 80);
            v15 = [*(a1 + 48) lastCounter];
            v16 = [*(*(a1 + 48) + 24) uniqueIDOverride];
            v17 = *(a1 + 56);
            v18 = SFHexStringForData();
            v19[0] = 67109890;
            v19[1] = v14;
            v20 = 1024;
            v21 = v15;
            v22 = 2112;
            v23 = v16;
            v24 = 2112;
            v25 = v18;
            _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "New counter %d is not greater than previous %d from %@ with rawAdvertisementData %@. New key is same. Replay!", v19, 0x22u);
          }
        }

        else if (v7)
        {
          sub_1000717CC(a1 + 48, a1);
        }
      }

      else
      {
        v10 = *(a1 + 48);
        v11 = *(v10 + 48);
        *(v10 + 48) = 0;

        v12 = +[SDActivityEncryptionManager sharedEncryptionManager];
        v13 = [*(*(a1 + 48) + 24) uniqueIDOverride];
        [v12 setDecryptionKey:v3 forDeviceIdentifier:v13];

        [*(a1 + 48) updateWithRawAdvertisementData:*(a1 + 56) receivedViaScanning:*(a1 + 82) isReplay:1 newAdvertisementHandler:*(a1 + 72)];
      }
    }
  }

  else
  {
    v8 = handoff_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100071880(a1);
    }

    v9 = *(a1 + 64);
    (*(*(a1 + 72) + 16))();
  }
}

void sub_10007166C(uint64_t a1)
{
  v1 = [*(a1 + 24) uniqueIDOverride];
  v2 = SFHexStringForData();
  sub_100008848();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10007171C(uint64_t a1)
{
  v1 = [*(a1 + 24) uniqueIDOverride];
  v2 = SFHexStringForData();
  sub_100008848();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000717CC(uint64_t a1, uint64_t a2)
{
  v3 = [*(*a1 + 24) uniqueIDOverride];
  v4 = *(a2 + 56);
  v5 = SFHexStringForData();
  sub_100008848();
  sub_100008860();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100071880(uint64_t a1)
{
  v6 = [*(*(a1 + 48) + 24) uniqueIDOverride];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10007195C(id a1)
{
  v1 = objc_alloc_init(SDClassroomBrowser);
  v2 = qword_100989A28;
  qword_100989A28 = v1;
}

id sub_100072410(uint64_t a1)
{
  v2 = airdrop_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138478083;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SDClassroomBrowser: cancellation handler called for personID %{private}@ sessionID %@", &v6, 0x16u);
  }

  return [*(a1 + 48) cancelSendingItemsToPersonWithID:*(a1 + 32) sessionID:*(a1 + 40) clientBundleID:*(a1 + 56)];
}

Class sub_100073754()
{
  if (qword_100989A38 != -1)
  {
    sub_100073C28();
  }

  result = objc_getClass("CRKShareTargetBrowser");
  qword_100989A30 = result;
  off_10096FBC0 = sub_1000737A8;
  return result;
}

void sub_100073868(uint64_t a1, void *a2)
{
  [a2 completedUnitCount];
  [a2 totalUnitCount];
  sub_100008870();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100073920(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 error];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "SDClassroomBrowser failed send operation to %@ (%@)", &v6, 0x16u);
}

void sub_100073A48()
{
  v0 = SFCompactStringFromCollection();
  sub_10000883C();
  sub_100008870();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100073AD4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDClassroomBrowser.m" lineNumber:373 description:@"node and shareTarget count not matching"];
}

void sub_100073B38()
{
  v0 = SFCompactStringFromCollection();
  sub_10000883C();
  sub_100008870();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100073BC4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDClassroomBrowser.m" lineNumber:393 description:@"node and shareTarget count not matching"];
}

id sub_100073DB8(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = *(a1 + 32);

  return [v2 start];
}

void sub_1000742E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained bonjourPublisher:*(a1 + 32) propertiesDidChange:*(*(a1 + 32) + 64)];
}

void sub_100074944(uint64_t *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100019D90();
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Bonjour advertise failed (%ld|%d)", v5, 0x12u);
}

void sub_100074A78(uint64_t *a1)
{
  v6 = *a1;
  sub_100008830();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100074AF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  sub_100019D90();
  sub_100008830();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100076398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000763C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleLTKTimerFired];
}

void sub_100078860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setSendState:1];
  v5 = objc_alloc_init(SDUnlockSetupRequest);
  v6 = *(a1 + 32);
  -[SDUnlockSetupRequest setVersion:](v5, "setVersion:", [objc_opt_class() setupRequestVersion]);
  [(SDUnlockSetupRequest *)v5 setLongTermKey:v4];

  v7 = objc_opt_new();
  [*(a1 + 32) setKeyExchangeDate:v7];

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending SDUnlockSetupRequest %@", buf, 0xCu);
  }

  v9 = [*(a1 + 32) useAttestedProtocol];
  v10 = [*(a1 + 32) transport];
  v11 = [(SDUnlockSetupRequest *)v5 data];
  v12 = [*(a1 + 32) deviceID];
  v13 = [*(a1 + 32) sessionID];
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) messageTimeout]);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100078AC8;
  v20 = &unk_1008CE090;
  v21 = *(a1 + 32);
  if (v9)
  {
    v15 = 2001;
  }

  else
  {
    v15 = 101;
  }

  v16 = [v10 sendAutoUnlockPayload:v11 toDevice:v12 type:v15 sessionID:v13 queueOneID:0 timeout:v14 completion:{&v17, v17, v18, v19, v20, v21}];
  [*(a1 + 32) setSetupMessageIdentifier:v16];

  [*(a1 + 32) restartResponseTimer:{sub_1001F0530(objc_msgSend(*(a1 + 32), "responseTimeout"))}];
}

void sub_100078AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) setSetupError:?];
    [*(a1 + 32) setErrorType:5];
    [*(a1 + 32) invalidateResponseTimer];
    v4 = *(a1 + 32);
    v5 = SFAutoUnlockErrorDomain;
    v8 = NSLocalizedDescriptionKey;
    v9 = @"Setup request failed";
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [NSError errorWithDomain:v5 code:151 userInfo:v6];
    [v4 notifyDelegateWithError:v7];
  }
}

void sub_100078DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) setSetupError:?];
    [*(a1 + 32) setErrorType:6];
    [*(a1 + 32) invalidateResponseTimer];
    v4 = *(a1 + 32);
    v5 = SFAutoUnlockErrorDomain;
    v8 = NSLocalizedDescriptionKey;
    v9 = @"Setup request failed";
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [NSError errorWithDomain:v5 code:152 userInfo:v6];
    [v4 notifyDelegateWithError:v7];
  }
}

void sub_10007A4C4(void *a1, NSObject *a2)
{
  if ([a1 isConnected])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([a1 isNearby])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "### Device is either not connected or not nearby (isConnected:%@, isNearby:%@)", &v6, 0x16u);
}

void sub_10007A598()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A5D4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A610(void *a1, NSObject *a2)
{
  v3 = [a1 passcode];
  v4 = @"YES";
  if (!v3)
  {
    v4 = @"NO";
  }

  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid parameters (passcode = %@)", &v5, 0xCu);
}

void sub_10007A6C0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A73C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A778()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A7B4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A864()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A8A0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007A910()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007A94C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007A9BC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t SDAutoUnlockAuthPromptResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v41 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v41 & 0x7F) << v24;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v26;
        }

LABEL_59:
        v37 = 24;
LABEL_60:
        *(a1 + v37) = v22;
        goto LABEL_63;
      }

      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = PBReaderReadData();
      v15 = *(a1 + 16);
      *(a1 + 16) = v14;

LABEL_63:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        v42 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v42 & 0x7F) << v30;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          LOBYTE(v36) = 0;
          goto LABEL_62;
        }
      }

      v36 = (v32 != 0) & ~[a2 hasError];
LABEL_62:
      *(a1 + 28) = v36;
      goto LABEL_63;
    }

    if (v13 != 4)
    {
LABEL_32:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_63;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v40 = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v40 & 0x7F) << v16;
      if ((v40 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v11 = v17++ >= 9;
      if (v11)
      {
        v22 = 0;
        goto LABEL_55;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v18;
    }

LABEL_55:
    v37 = 8;
    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

void sub_10007BC24(id a1)
{
  v1 = objc_alloc_init(SDPairedDeviceAgent);
  v2 = qword_100989A50;
  qword_100989A50 = v1;
}

void sub_10007C3A4(id a1)
{
  v1 = charging_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10008129C();
  }
}

void sub_10007C3E8(id a1)
{
  v1 = charging_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000812D0();
  }
}

void sub_10007C42C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = charging_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081304(v3, v4);
    }
  }

  else
  {
    [*(a1 + 32) _companionLinkRegisterEvents];
  }
}

id sub_10007CA04(uint64_t a1)
{
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection action handler called", v4, 2u);
  }

  return [*(a1 + 32) _idsUpdateConnectedState];
}

id sub_10007CA78(uint64_t a1)
{
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sync action handler called", v4, 2u);
  }

  return [*(a1 + 32) _idsEnsureSynced];
}

id sub_10007D5B4(uint64_t a1)
{
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Triggering sync for connection", v4, 2u);
  }

  return [*(a1 + 32) _idsTriggerSync];
}

void sub_10007E900(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = NRDevicePropertyName;
    if ([v5 isEqualToString:NRDevicePropertyName])
    {
      if (*(*(a1 + 32) + 208))
      {
        v9 = +[NRPairedDeviceRegistry sharedInstance];
        v10 = [v9 getActivePairedDevice];

        v11 = [v10 valueForProperty:v8];
        v12 = [*(*(a1 + 32) + 208) name];
        v13 = [v12 isEqualToString:v11];

        if ((v13 & 1) == 0)
        {
          [*(*(a1 + 32) + 208) setName:v11];
          v14 = [*(*(a1 + 32) + 208) publish];
          v15 = charging_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(*(a1 + 32) + 208);
            v17 = 138412546;
            v18 = v16;
            v19 = 1024;
            v20 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Published name update for %@ status %x", &v17, 0x12u);
          }
        }
      }
    }
  }
}

void sub_10007F550(id a1)
{
  v1 = charging_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100081894();
  }
}

void sub_10007F594(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _powerSourceChanged:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10007F684(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _powerSourceChanged:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10007F774(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _powerSourceLost:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10007F864(id a1, NSError *a2)
{
  v2 = a2;
  v3 = charging_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activated power source monitor (error: %@)", &v4, 0xCu);
  }
}

void sub_1000802AC(uint64_t a1)
{
  if (*(*(a1 + 32) + 104))
  {
    v2 = charging_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling dismiss UI handler after timeout", v5, 2u);
    }

    (*(*(*(a1 + 32) + 104) + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 104);
    *(v3 + 104) = 0;
  }
}

BOOL sub_10008073C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100080754(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10008115C()
{
  v1 = charging_log();
  if (sub_10002FC28(v1))
  {
    sub_100008880(&_mh_execute_header, v2, v3, "Paired device agent activated after invalidate", v4, v5, v6, v7, 0);
  }
}

void sub_1000811AC()
{
  v1 = charging_log();
  if (sub_10002FC28(v1))
  {
    sub_100008880(&_mh_execute_header, v2, v3, "Paired device agent already activated", v4, v5, v6, v7, 0);
  }
}

void sub_1000811FC()
{
  v1 = charging_log();
  if (sub_10002FC28(v1))
  {
    sub_100008880(&_mh_execute_header, v2, v3, "Paired device agent invalidated before activate", v4, v5, v6, v7, 0);
  }
}

void sub_10008124C()
{
  v1 = charging_log();
  if (sub_10002FC28(v1))
  {
    sub_100008880(&_mh_execute_header, v2, v3, "Paired device agent already invalidated", v4, v5, v6, v7, 0);
  }
}

void sub_100081304(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Companion link failed to activate: %@", &v2, 0xCu);
}

void sub_1000813E4(int *a1)
{
  v3 = charging_log();
  if (sub_100080754(v3))
  {
    v9 = *a1;
    sub_100008860();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_100081480(const __CFString *a1)
{
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = @"unknown";
    if (isKindOfClass)
    {
      v6 = a1;
    }

    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Message not an NSDictionary: %@ (%@)", &v7, 0x16u);
  }
}

void sub_10008157C()
{
  v1 = charging_log();
  if (sub_100080754(v1))
  {
    sub_100008860();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100081614()
{
  v1 = charging_log();
  if (sub_100080754(v1))
  {
    sub_100008860();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_1000816D8(void *a1)
{
  [a1 unsignedLongValue];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10008175C(uint64_t a1)
{
  v2 = charging_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Already registered %@", &v3, 0xCu);
  }
}

void sub_100081800()
{
  v1 = charging_log();
  if (sub_100080754(v1))
  {
    sub_100008860();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1000818C8()
{
  v1 = charging_log();
  if (sub_10002FC28(v1))
  {
    sub_100008880(&_mh_execute_header, v2, v3, "Not updating for wrist state change", v4, v5, v6, v7, 0);
  }
}

void sub_100081918()
{
  v1 = charging_log();
  if (sub_10002FC28(v1))
  {
    sub_100008880(&_mh_execute_header, v2, v3, "Not updating for low power mode change", v4, v5, v6, v7, 0);
  }
}

uint64_t sub_100081968(uint64_t a1)
{
  v3 = charging_log();
  if (sub_10008073C(v3))
  {
    sub_100019C18(&_mh_execute_header, v4, v5, "Companion Link disconnected, dismiss charging UI immediately", v6, v7, v8, v9, 0);
  }

  return (*(a1 + 16))(a1, 0);
}

uint64_t SDUnlockSessionKeyExchangeRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          v49 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v49 & 0x7F) << v27;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_63;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_63:
        *(a1 + 32) = v33;
        goto LABEL_77;
      }

      if (v13 != 4)
      {
        if (v13 != 5)
        {
          goto LABEL_60;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v46 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v46 & 0x7F) << v14;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_71:
        v43 = 8;
LABEL_76:
        *(a1 + v43) = v20;
        goto LABEL_77;
      }

      v34 = PBReaderReadData();
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;

LABEL_77:
      v44 = [a2 position];
      if (v44 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        v48 = 0;
        v39 = [a2 position] + 1;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v38 |= (v48 & 0x7F) << v36;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v11 = v37++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_67;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v38;
      }

LABEL_67:
      v43 = 28;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_77;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v47 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v47 & 0x7F) << v21;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_75;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v23;
      }

LABEL_75:
      v43 = 24;
    }

    goto LABEL_76;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDAutoUnlockRelockRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDAutoUnlockWiFiAWDLInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            v47 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v47 & 0x7F) << v24;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_68;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v26;
          }

LABEL_68:
          v43 = 36;
          goto LABEL_81;
        }

        if (v13 == 5)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v46 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v46 & 0x7F) << v37;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_80;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v39;
          }

LABEL_80:
          v43 = 8;
LABEL_81:
          *(a1 + v43) = v20;
          goto LABEL_82;
        }

        if (v13 != 6)
        {
LABEL_45:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_82;
        }

        v21 = PBReaderReadData();
        v22 = 16;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              v49 = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v49 & 0x7F) << v31;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_76;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v33;
            }

LABEL_76:
            v43 = 12;
          }

          else
          {
            if (v13 != 3)
            {
              goto LABEL_45;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v48 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v48 & 0x7F) << v14;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_72;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_72:
            v43 = 32;
          }

          goto LABEL_81;
        }

        v21 = PBReaderReadData();
        v22 = 24;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_82:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDUnlockStashKeyExchangeResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_65;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_59:
        v36 = 8;
        goto LABEL_64;
      }

      v34 = PBReaderReadData();
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;

LABEL_65:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        v41 = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v41 & 0x7F) << v28;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v30;
      }

LABEL_63:
      v36 = 28;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_40;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        v40 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v40 & 0x7F) << v14;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_55:
      v36 = 24;
    }

LABEL_64:
    *(a1 + v36) = v20;
    goto LABEL_65;
  }

  return [a2 hasError] ^ 1;
}

void sub_100085C54(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDShareSheetProxyLoader.m" lineNumber:103 description:@"There are no remaining proxies to load."];
}

void sub_100085CC8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDShareSheetProxyLoader.m" lineNumber:164 description:@"Unexpected timed out state."];
}

void sub_100085D2C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v14 = fmax(a7, 0.0);
  v15 = sub_100085F94(a8);
  v16 = a6;
  v17 = a2;
  v18 = a1;
  v19 = [NSNumber numberWithUnsignedChar:a3, @"sender"];
  v31[0] = v19;
  v31[1] = &__kCFBooleanTrue;
  v30[1] = @"success";
  v30[2] = @"bytesPerSec";
  v20 = [NSNumber numberWithUnsignedLongLong:v14];
  v21 = v20;
  if (v17)
  {
    v22 = v17;
  }

  else
  {
    v22 = &stru_1008EFBD0;
  }

  v31[2] = v20;
  v31[3] = v22;
  v30[3] = @"modelCode";
  v30[4] = @"bundleID";
  if (v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = &stru_1008EFBD0;
  }

  v31[4] = v23;
  v31[5] = &__kCFBooleanFalse;
  v30[5] = @"legacy";
  v30[6] = @"totalBytesBucket";
  v24 = [NSString stringWithUTF8String:(&off_1008CE3E8)[v15]];
  v31[6] = v24;
  v30[7] = @"discoverabilityLevel";
  v25 = [NSNumber numberWithInteger:a4];
  v31[7] = v25;
  v30[8] = @"fromShareSheet";
  v26 = [NSNumber numberWithUnsignedChar:a5];
  v31[8] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:9];

  v28 = sub_1001EAE7C(v16, v27);

  v29 = airdrop_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    sub_1000875B4();
  }

  SFMetricsLog();
}

uint64_t sub_100085F94(double a1)
{
  if (a1 < 0.0)
  {
    return 0;
  }

  if (a1 == 0.0)
  {
    return 1;
  }

  if (a1 <= 1000000.0)
  {
    return 2;
  }

  if (a1 <= 5000000.0)
  {
    return 3;
  }

  if (a1 <= 20000000.0)
  {
    return 4;
  }

  if (a1 <= 50000000.0)
  {
    return 5;
  }

  if (a1 <= 100000000.0)
  {
    return 6;
  }

  if (a1 <= 250000000.0)
  {
    return 7;
  }

  if (a1 <= 500000000.0)
  {
    return 8;
  }

  if (a1 <= 1000000000.0)
  {
    return 9;
  }

  if (a1 <= 5000000000.0)
  {
    return 10;
  }

  if (a1 <= 1.0e10)
  {
    return 11;
  }

  if (a1 <= 1.5e10)
  {
    return 12;
  }

  if (a1 <= 2.0e10)
  {
    return 13;
  }

  return 14;
}

void sub_1000860D4(void *a1, void *a2, uint64_t a3, __CFError *a4, uint64_t a5, unsigned int a6, void *a7, double a8)
{
  v13 = a1;
  v14 = a2;
  v15 = a7;
  v16 = sub_100085F94(a8);
  if (a4)
  {
    Code = CFErrorGetCode(a4);
    Domain = CFErrorGetDomain(a4);
  }

  else
  {
    Code = 0;
    Domain = &stru_1008EFBD0;
  }

  v33[0] = @"sender";
  v19 = Domain;
  v20 = [NSNumber numberWithUnsignedChar:a3];
  v34[0] = v20;
  v34[1] = &__kCFBooleanFalse;
  v33[1] = @"success";
  v33[2] = @"modelCode";
  if (v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = &stru_1008EFBD0;
  }

  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = &stru_1008EFBD0;
  }

  v34[2] = v21;
  v34[3] = v22;
  v33[3] = @"bundleID";
  v33[4] = @"legacy";
  v34[4] = &__kCFBooleanFalse;
  v33[5] = @"errorCode";
  v23 = [NSNumber numberWithInt:Code, a5];
  v34[5] = v23;
  v34[6] = v19;
  v33[6] = @"errorDomain";
  v33[7] = @"totalBytesBucket";
  v24 = [NSString stringWithUTF8String:(&off_1008CE3E8)[v16]];
  v34[7] = v24;
  v33[8] = @"discoverabilityLevel";
  v25 = [NSNumber numberWithInteger:v31];
  v34[8] = v25;
  v33[9] = @"fromShareSheet";
  v26 = [NSNumber numberWithUnsignedChar:a6];
  v34[9] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:10];

  v28 = sub_1001EAE7C(v15, v27);

  v29 = airdrop_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_10008761C();
  }

  SFMetricsLog();
}

void sub_100086374(double a1)
{
  v3[0] = @"_cat";
  v3[1] = @"_op";
  v4[0] = @"AD";
  v4[1] = @"TimeSpent";
  v3[2] = @"time";
  v1 = [NSNumber numberWithLongLong:(a1 * 1000.0)];
  v4[2] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  SFDashboardLogJSON();
}

void sub_10008644C(uint64_t a1, uint64_t a2)
{
  v6[0] = @"_cat";
  v6[1] = @"_op";
  v7[0] = @"AD";
  v7[1] = @"TransferredCount";
  v6[2] = @"sender";
  v3 = [NSNumber numberWithUnsignedChar:a1];
  v7[2] = v3;
  v6[3] = @"count";
  v4 = [NSNumber numberWithInt:a2];
  v7[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
  SFDashboardLogJSON();
}

void sub_10008654C(__CFString *a1, __CFString *a2, __CFString *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  v17 = (a8 * 1000.0);
  v18 = (a9 * 1000.0);
  v19 = (a10 * 1000.0);
  v20 = (a11 * 1000.0);
  v21 = (a12 * 1000.0);
  v22 = (a13 * 1000.0);
  v36 = (a14 * 1000.0);
  v37 = (a15 * 1000.0);
  v23 = &stru_1008EFBD0;
  if (a1)
  {
    v24 = a1;
  }

  else
  {
    v24 = &stru_1008EFBD0;
  }

  v49[0] = @"sid";
  v49[1] = @"browserID";
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = &stru_1008EFBD0;
  }

  v50[0] = v24;
  v50[1] = v25;
  if (a3)
  {
    v23 = a3;
  }

  v50[2] = v23;
  v49[2] = @"modelName";
  v49[3] = @"bonjourPTRDiscoveryMs";
  v41 = a3;
  v40 = a2;
  v39 = a1;
  v47 = [NSNumber numberWithInt:v17];
  v50[3] = v47;
  v49[4] = @"bonjourTXTDiscoveryMs";
  v45 = [NSNumber numberWithInt:v18];
  v50[4] = v45;
  v49[5] = @"bonjourResolveMs";
  v43 = [NSNumber numberWithInt:v19];
  v50[5] = v43;
  v49[6] = @"tcpConnectionMs";
  v38 = [NSNumber numberWithInt:v20];
  v50[6] = v38;
  v49[7] = @"tlsHandshakeMs";
  v26 = [NSNumber numberWithInt:v21];
  v50[7] = v26;
  v49[8] = @"idQueryMs";
  v27 = [NSNumber numberWithInt:v22];
  v50[8] = v27;
  v49[9] = @"totalDiscoveryWithoutBonjourPTRMs";
  v28 = [NSNumber numberWithInt:v36];
  v50[9] = v28;
  v49[10] = @"totalDiscoveryMs";
  v29 = [NSNumber numberWithInt:v37];
  v50[10] = v29;
  v49[11] = @"verifiableID";
  v30 = [NSNumber numberWithBool:a4];
  v50[11] = v30;
  v49[12] = @"awdlVersion";
  v31 = [NSNumber numberWithUnsignedInt:a5];
  v50[12] = v31;
  v49[13] = @"platform";
  v32 = [NSNumber numberWithUnsignedInt:a6];
  v50[13] = v32;
  v49[14] = @"rssi";
  v33 = [NSNumber numberWithInt:a7];
  v50[14] = v33;
  v34 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:15];

  v35 = airdrop_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_100087690();
  }

  SFMetricsLog();
}

void sub_1000868F0(__CFString *a1, __CFString *a2, __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, unsigned int a11, unsigned __int8 a12)
{
  v21 = &stru_1008EFBD0;
  if (a1)
  {
    v22 = a1;
  }

  else
  {
    v22 = &stru_1008EFBD0;
  }

  v40[0] = @"sid";
  v40[1] = @"browserID";
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = &stru_1008EFBD0;
  }

  v41[0] = v22;
  v41[1] = v23;
  if (a3)
  {
    v21 = a3;
  }

  v41[2] = v21;
  v40[2] = @"bid";
  v40[3] = @"startTimestamp";
  v37 = a3;
  v36 = a2;
  v35 = a1;
  v24 = [NSNumber numberWithUnsignedLongLong:a4];
  v41[3] = v24;
  v40[4] = @"durationMs";
  v25 = [NSNumber numberWithDouble:a9];
  v41[4] = v25;
  v40[5] = @"firstDiscoveryMs";
  v26 = [NSNumber numberWithDouble:a10];
  v41[5] = v26;
  v40[6] = @"totalPeersDiscovered";
  v27 = [NSNumber numberWithInt:a6];
  v41[6] = v27;
  v40[7] = @"maxPeersDiscovered";
  v28 = [NSNumber numberWithInt:a5];
  v41[7] = v28;
  v40[8] = @"transfersInitiated";
  v29 = [NSNumber numberWithInt:a7];
  v41[8] = v29;
  v40[9] = @"transfersCompleted";
  v30 = [NSNumber numberWithInt:a8];
  v41[9] = v30;
  v41[10] = &__kCFBooleanFalse;
  v40[10] = @"legacy";
  v40[11] = @"discoveryLevel";
  v31 = [NSNumber numberWithInt:a11];
  v41[11] = v31;
  v40[12] = @"fromShareSheet";
  v32 = [NSNumber numberWithUnsignedChar:a12];
  v41[12] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:13];

  v34 = airdrop_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v39 = v33;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "AirDropSessionInfo: %{private}@", buf, 0xCu);
  }

  SFMetricsLog();
}

void sub_100086C10(__CFString *a1, __CFString *a2)
{
  v3 = &stru_1008EFBD0;
  if (a1)
  {
    v3 = a1;
  }

  v9[0] = @"sid";
  v9[1] = @"activityType";
  v4 = @"No user action";
  if (a2)
  {
    v4 = a2;
  }

  v10[0] = v3;
  v10[1] = v4;
  v5 = a2;
  v6 = a1;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000876F8();
  }

  SFMetricsLog();
}

void sub_100086D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_opt_new();
  if (a1)
  {
    [v9 setObject:a1 forKeyedSubscript:@"Subevent"];
  }

  if (a2)
  {
    [v9 setObject:a2 forKeyedSubscript:@"State"];
  }

  if (a4 >= 1)
  {
    v8 = [NSNumber numberWithInt:a4];
    [v9 setObject:v8 forKeyedSubscript:@"pid"];
  }

  if (a3)
  {
    [v9 setObject:a3 forKeyedSubscript:@"id"];
  }

  PLLogTimeSensitiveRegisteredEvent();
}

void sub_100086E1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v14 = a3;
  v9 = objc_opt_new();
  v10 = v9;
  if (a1)
  {
    [v9 setObject:a1 forKeyedSubscript:@"Subevent"];
  }

  if (a2)
  {
    [v10 setObject:a2 forKeyedSubscript:@"State"];
  }

  v11 = [v14 UUIDString];

  if (v11)
  {
    v12 = [v14 UUIDString];
    [v10 setObject:v12 forKeyedSubscript:@"TransferID"];
  }

  if (a5 > 0.0)
  {
    v13 = [NSNumber numberWithDouble:a5];
    [v10 setObject:v13 forKeyedSubscript:@"ContentSize"];
  }

  if (a4)
  {
    [v10 setObject:a4 forKeyedSubscript:@"Interface"];
  }

  PLLogTimeSensitiveRegisteredEvent();
}

void sub_100086F68(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSMutableArray arrayWithArray:a2];
  [v4 insertObject:@"\n" atIndex:0];
  v5 = [NSString stringWithFormat:@"### BEGIN: %@ #########################", v3];
  [v4 insertObject:v5 atIndex:1];

  v6 = [NSString stringWithFormat:@"##### END: %@ #########################", v3];

  [v4 addObject:v6];
  v7 = daemon_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 componentsJoinedByString:@"\n"];
    *buf = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }
}

void sub_1000870CC(void *a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v8 = a5 * 1000.0;
  v9 = a5 < 0.0;
  v10 = -1.0;
  if (!v9)
  {
    v10 = v8;
  }

  v11 = v10;
  v23[0] = @"_cat";
  v23[1] = @"_op";
  v24[0] = @"HS";
  v24[1] = @"TetherSuccess";
  v23[2] = @"discovery";
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = [NSNumber numberWithBool:a4];
  v16 = v15;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_1008EFBD0;
  }

  v24[2] = v15;
  v24[3] = v17;
  v23[3] = @"targetModel";
  v23[4] = @"srcModel";
  if (v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = &stru_1008EFBD0;
  }

  v24[4] = v18;
  v23[5] = @"duration";
  v19 = [NSNumber numberWithLongLong:v11];
  v20 = v19;
  v23[6] = @"successType";
  v21 = &off_10090B820;
  if (v12)
  {
    v21 = v12;
  }

  v24[5] = v19;
  v24[6] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:7];

  SFDashboardLogJSON();
}

void sub_100087278(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v20[0] = @"_cat";
  v20[1] = @"_op";
  v23[0] = @"HS";
  v23[1] = @"TetherFailure";
  v20[2] = @"discovery";
  v13 = [NSNumber numberWithBool:a5];
  v14 = v13;
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = &stru_1008EFBD0;
  }

  v23[2] = v13;
  v23[3] = v15;
  v20[3] = @"targetModel";
  v20[4] = @"srcModel";
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = &stru_1008EFBD0;
  }

  v23[4] = v16;
  v20[5] = @"errorCode";
  if (v12)
  {
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 code]);
    v24 = v5;
    v21 = @"errorDomain";
    v17 = [v12 domain];
  }

  else
  {
    v24 = &off_10090B820;
    v21 = @"errorDomain";
    v17 = &stru_1008EFBD0;
  }

  v25 = v17;
  v22 = @"errorType";
  v18 = [NSNumber numberWithInteger:a4];
  v26 = v18;
  v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v20 count:8];
  SFDashboardLogJSON();

  if (v12)
  {
  }
}

void sub_10008746C(__CFString *a1, uint64_t a2, double a3)
{
  v4 = (a3 * 1000.0);
  v10[0] = @"_cat";
  v10[1] = @"_op";
  v11[0] = @"HO";
  v11[1] = @"ConnectBack";
  v5 = &stru_1008EFBD0;
  if (a1)
  {
    v5 = a1;
  }

  v11[2] = v5;
  v10[2] = @"bundleID";
  v10[3] = @"duration";
  v6 = a1;
  v7 = [NSNumber numberWithLongLong:v4];
  v11[3] = v7;
  v10[4] = @"bytesTransferred";
  v8 = [NSNumber numberWithInteger:a2];
  v11[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  SFDashboardLogJSON();
}

void sub_100088DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100088E24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = *WeakRetained[1];
  if (v1 <= 50)
  {
    if (v1 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v2 = WeakRetained[1];
      goto LABEL_3;
    }
  }

LABEL_5:
  [WeakRetained _invalidate];
}

void sub_100088EB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = *WeakRetained[1];
  if (v1 <= 50)
  {
    if (v1 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v2 = WeakRetained[1];
      goto LABEL_3;
    }
  }

LABEL_5:
  [WeakRetained _invalidate];
}

uint64_t SDUnlockStashTokenReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 16);
        *(a1 + 16) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_44:
          v30 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_50;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v30 = 24;
        }

        *(a1 + v30) = v20;
      }

LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDAutoUnlockDecryptionFailedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___SDAutoUnlockDecryptionFailed__version;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___SDAutoUnlockDecryptionFailed__version;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___SDAutoUnlockDecryptionFailed__errorCode;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___SDAutoUnlockDecryptionFailed__errorCode;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}