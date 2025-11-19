uint64_t sub_10009C430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  if (*(v12 + 248) == 1)
  {
    v13 = swift_task_alloc();
    *(v12 + 176) = v13;
    *v13 = v12;
    v13[1] = sub_10009C5BC;
    v14 = *(v12 + 168);
    sub_1000031B8(*(v12 + 88));
    sub_1000062BC();

    return sub_10012A2CC();
  }

  else
  {
    v18 = *(v12 + 152);
    v17 = *(v12 + 160);
    v19 = *(v12 + 144);
    v20 = *(v12 + 128);
    v21 = *(v12 + 88);
    v22 = *(v12 + 96);
    v23 = *(v12 + 136) + 15;
    v24 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    sub_100002F04(v24);
    v26 = *(v25 + 64);
    v27 = sub_100002C58();
    v28 = swift_task_alloc();
    UUIDIdentifier.uuid.getter();
    sub_100004B50();
    sub_10012912C(v28, v27);
    v18(v28, v20);
    sub_10001301C(v27, &qword_1001B9060);
    swift_endAccess();

    v29 = *(v12 + 120);

    sub_100002F54();
    sub_1000062BC();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }
}

uint64_t sub_10009C5BC()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  *v4 = *v1;
  v3[23] = v8;
  v3[24] = v9;
  v3[25] = v10;
  v3[26] = v0;

  if (v0)
  {
    v11 = v3[15];

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {
    v14 = v3[12];
    sub_10000E700();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_10009C6FC()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[26];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[23] + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.sessionID.getter();
  v0[27] = sub_10004B7DC(v2);
  if (v1)
  {
    v5 = v0[25];
    v6 = v0[23];
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];

    v10 = *(v8 + 8);
    v11 = sub_100019220();
    v12(v11);
    v13 = v0[15];

    sub_10000BF6C();
    sub_100003D20();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v24 = v0[24];
    v23 = v0[25];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_100002EE0();
    v25 = swift_allocObject();
    v0[28] = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;

    v26 = swift_task_alloc();
    v0[29] = v26;
    *v26 = v0;
    v26[1] = sub_10009C8A4;
    v27 = v0[12];
    sub_1000031B8(v0[23]);
    sub_100003D20();

    return sub_100098CF0();
  }
}

uint64_t sub_10009C8A4()
{
  sub_10000639C();
  sub_100003884();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = v2[29];
  *v4 = *v1;
  *(v3 + 240) = v0;

  v6 = v2[28];
  v7 = v2[12];
  if (!v0)
  {
  }

  sub_10000CC50();
  sub_100003D20();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10009C9F4()
{
  sub_100002BAC();
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[23];

  v5 = sub_10000E70C(v4, v0[21]);

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10009CA60()
{
  sub_100002BAC();
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[23];

  v4 = v0[30];
  v5 = v0[15];

  sub_100001F00();

  return v6();
}

uint64_t sub_10009CADC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(*(sub_100065020(&qword_1001B9C88, &qword_1001706E0) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = type metadata accessor for InferenceProviderRequestResult();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  sub_100009BFC(v8, 0, 1, v9);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 24) = v11;
  *v11 = v3;
  v11[1] = sub_10009CC7C;

  return v13(v8, a2);
}

uint64_t sub_10009CC7C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_10001301C(v3, &unk_1001B9C88);

  sub_100001F00();

  return v6();
}

uint64_t sub_10009CD90()
{
  sub_100002BAC();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 168) = v5;
  *(v1 + 16) = v6;
  v7 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  *(v1 + 56) = v7;
  sub_100002F44(v7);
  *(v1 + 64) = v8;
  v10 = *(v9 + 64);
  *(v1 + 72) = sub_100002C58();
  v11 = sub_100002C10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10009CE4C()
{
  sub_10001446C();
  sub_10000636C();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 24);
  RequestMetadata.sessionID.getter();
  *(v0 + 80) = sub_10004B7DC(v1);
  v6 = *(v2 + 8);
  v7 = sub_100019220();
  v8(v7);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_10009CF68;
  v10 = *(v0 + 48);
  v11 = *(v0 + 168);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  sub_100003770();

  return sub_100097A18();
}

uint64_t sub_10009CF68()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  v5[12] = v3;
  v5[13] = v0;

  if (v0)
  {
    v11 = v5[6];
    sub_10000E700();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v15 = swift_task_alloc();
    v5[14] = v15;
    *v15 = v9;
    v15[1] = sub_100059A68;
    v16 = v5[10];
    v17 = v5[5];
    v18 = v5[6];
    v19 = v5[4];
    sub_10001E54C();

    return sub_100098CF0();
  }
}

uint64_t sub_10009D0DC()
{
  sub_10000639C();
  sub_100003884();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = v1[19];
  v6 = v1[18];
  v7 = v1[17];
  *v4 = *v2;
  *(v3 + 160) = v0;

  sub_10000A9E0();
  v9 = *(v8 + 48);
  sub_10000E700();
  sub_100003D20();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10009D228()
{
  sub_100002BAC();
  v1 = v0[15];

  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];

  sub_100002F54();

  return v5();
}

uint64_t sub_10009D2A8()
{
  sub_100002BAC();
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[9];

  sub_100001F00();

  return v4();
}

uint64_t sub_10009D30C()
{
  sub_100002BAC();
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[16];
  v4 = v0[9];

  sub_100001F00();

  return v5();
}

uint64_t sub_10009D37C()
{
  sub_100001ED0();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[20];
  v5 = v0[9];

  sub_100001F00();

  return v6();
}

uint64_t sub_10009D40C()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for RequestCancellationReason();
  v1[5] = v4;
  sub_100002F44(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_100002C58();
  v8 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[8] = v8;
  sub_100002F44(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = sub_100002C58();
  v12 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[11] = v12;
  sub_100002F44(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = sub_100002C58();
  v16 = sub_100002C10();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10009D564()
{
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[2];
  v7 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_10000641C(v9, qword_1001B9A18);
  v10 = *(v2 + 16);
  v11 = sub_100005E8C();
  v12(v11);
  (*(v6 + 16))(v4, v7, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[10];
  v19 = v0[11];
  v21 = v0[8];
  v20 = v0[9];
  if (v15)
  {
    sub_1000267F8();
    sub_1000062D8();
    *v14 = 136315394;
    sub_10001B27C(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30);
    dispatch thunk of CustomStringConvertible.description.getter();
    v22 = *(v17 + 8);
    v23 = sub_100004CB0();
    v24(v23);
    v25 = sub_100013BBC();
    sub_100004A3C(v25, v26, v27);
    sub_100001F0C();

    sub_10001877C();
    sub_10001B27C(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v20 + 8))(v18, v21);
    v29 = sub_100007660();
    sub_100004A3C(v29, v30, v31);
    sub_100001F0C();

    *(v14 + 14) = v28;
    sub_100005A04();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100002BD0();
  }

  else
  {

    (*(v20 + 8))(v18, v21);
    v37 = *(v17 + 8);
    v38 = sub_100004CB0();
    v39(v38);
  }

  v40 = v0[4];
  v0[14] = sub_10004B7DC(v0[3]);
  (*(v0[6] + 104))(v0[7], enum case for RequestCancellationReason.clientDisavowal(_:), v0[5]);
  v41 = swift_task_alloc();
  v42 = sub_10000D03C(v41);
  *v42 = v43;
  v42[1] = sub_10009D8EC;
  v44 = v0[7];
  v45 = v0[4];
  v46 = sub_1000031B8(v0[2]);

  return sub_10010929C(v46, v47, v48);
}

uint64_t sub_10009D8EC()
{
  sub_10001881C();
  sub_100003884();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = v1[15];
  v6 = v1[7];
  v7 = v1[6];
  v8 = v1[5];
  *v4 = *v2;
  *(v3 + 128) = v0;

  v9 = *(v7 + 8);
  v10 = sub_1000071D0();
  v11(v10);
  sub_10000A9E0();
  v13 = *(v12 + 32);
  sub_10000E700();
  sub_100007BB8();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10009DA50()
{
  sub_100001ED0();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = v0[7];

  sub_100002F54();

  return v5();
}

uint64_t sub_10009DAD0()
{
  sub_100001ED0();
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  sub_1000402D8();

  sub_100001F00();

  return v3();
}

uint64_t sub_10009DB48(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B9C70, &qword_1001706C0);
  sub_100002F04(v2);
  v4 = *(v3 + 64);
  sub_100004B1C();
  __chkstk_darwin(v5);
  v75 = v72 - v6;
  v7 = type metadata accessor for InferenceError.Context();
  v8 = sub_100002BDC(v7);
  v73 = v9;
  v74 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100005F44(v12, v72[0]);
  v13 = sub_100065020(&qword_1001B9C78, &qword_1001706C8);
  sub_100002F04(v13);
  v15 = *(v14 + 64);
  sub_100004B1C();
  __chkstk_darwin(v16);
  v18 = v72 - v17;
  v19 = sub_100065020(&qword_1001B9C80, &unk_1001726D0);
  sub_100002F04(v19);
  v21 = *(v20 + 64);
  sub_100004B1C();
  __chkstk_darwin(v22);
  v24 = v72 - v23;
  v25 = type metadata accessor for ModelManagerError();
  v26 = sub_100002BDC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v26);
  v33 = v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = v72 - v34;
  v36 = type metadata accessor for InferenceError();
  v37 = sub_100002BDC(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  v43 = v72 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v76 = a1;
    swift_errorRetain();
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    v44 = swift_dynamicCast();
    sub_100009BFC(v24, v44 ^ 1u, 1, v25);
    if (sub_10000C6C0(v24, 1, v25) != 1)
    {
      v45 = *(v28 + 32);
      v45(v35, v24, v25);
      v45(v33, v35, v25);
      if ((*(v28 + 88))(v33, v25) != enum case for ModelManagerError.inferenceError(_:))
      {
        v70 = sub_100012F70();
        v71(v70, v25);
        goto LABEL_14;
      }

      (*(v28 + 96))(v33, v25);
      goto LABEL_9;
    }
  }

  else
  {
    sub_100003978();
    sub_100009BFC(v46, v47, v48, v25);
  }

  sub_10001301C(v24, &qword_1001B9C80);
  if (a1)
  {
    v76 = a1;
    swift_errorRetain();
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    v49 = swift_dynamicCast();
    sub_100009BFC(v18, v49 ^ 1u, 1, v36);
    if (sub_10000C6C0(v18, 1, v36) != 1)
    {
      v33 = v18;
LABEL_9:
      (*(v39 + 32))(v43, v33, v36);
      v50 = v75;
      InferenceError.context.getter();
      v51 = v74;
      if (sub_10000C6C0(v50, 1, v74) != 1)
      {
        v62 = v72[1];
        v63 = v73;
        v64 = *(v73 + 32);
        v65 = sub_100001F70();
        v66(v65);
        v60 = InferenceError.Context.fallbackAllowed.getter();
        (*(v63 + 8))(v62, v51);
        v67 = *(v39 + 8);
        v68 = sub_100004CA4();
        v69(v68);
        return v60 & 1;
      }

      v52 = *(v39 + 8);
      v53 = sub_100004CA4();
      v54(v53);
      v55 = &qword_1001B9C70;
      v56 = v50;
      goto LABEL_13;
    }
  }

  else
  {
    sub_100003978();
    sub_100009BFC(v57, v58, v59, v36);
  }

  v55 = &qword_1001B9C78;
  v56 = v18;
LABEL_13:
  sub_10001301C(v56, v55);
LABEL_14:
  v60 = 0;
  return v60 & 1;
}

uint64_t sub_10009E048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v14 = v12[25];
  v13 = v12[26];
  v15 = v12[23];
  v16 = v12[24];
  v18 = v12[21];
  v17 = v12[22];
  v19 = v12[20];

  v20 = *(v18 + 8);
  v21 = sub_100003754();
  v22(v21);
  v23 = *(v16 + 8);
  v24 = sub_100001F70();
  v25(v24);
  v26 = v12[31];
  v27 = v12[25];
  v28 = v12[22];
  v29 = v12[19];
  sub_10003700C();

  sub_100001F00();
  sub_1000062BC();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_10009E130()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for InferenceProviderDescriptor();
  v1[5] = v4;
  sub_100002F44(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_10000F0C0();
  v1[8] = swift_task_alloc();
  v8 = sub_100002C10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10009E1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005D918();
  sub_1000033DC();
  v13 = v12[4];
  sub_10004B7DC(v12[3]);
  sub_10001D000(v12[8]);
  v14 = v12[8];
  sub_10005AEB0();
  sub_10004BB90();
  v25 = v12[7];
  v24 = v12[8];
  v26 = v12[5];
  v27 = v12[6];
  v28 = v12[2];
  v29 = *(v27 + 16);
  v30 = sub_100013BBC();
  v31(v30);
  sub_100019220();
  ModelInstance.init(assetBundleIdentifier:inferenceProvider:)();

  (*(v27 + 8))(v24, v26);

  sub_100002F54();
  sub_100016688();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_10009E314()
{
  sub_100002BAC();
  v1[36] = v2;
  v1[37] = v0;
  v1[34] = v3;
  v1[35] = v4;
  v5 = type metadata accessor for TaskPriority();
  v1[38] = v5;
  sub_100002F44(v5);
  v1[39] = v6;
  v8 = *(v7 + 64);
  v1[40] = sub_100002C58();
  v9 = type metadata accessor for ClientData();
  sub_100002F04(v9);
  v11 = *(v10 + 64);
  v1[41] = sub_100002C58();
  v12 = type metadata accessor for RequestMetadata();
  v1[42] = v12;
  sub_100002F44(v12);
  v1[43] = v13;
  v15 = *(v14 + 64);
  v1[44] = sub_100002C58();
  v16 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[45] = v16;
  sub_100002F44(v16);
  v1[46] = v17;
  v19 = *(v18 + 64);
  v1[47] = sub_100002C58();
  v20 = type metadata accessor for DaemonSession.LazyState(0);
  v1[48] = v20;
  sub_100002F04(v20);
  v22 = *(v21 + 64);
  v1[49] = sub_100002C58();
  v23 = type metadata accessor for AuditToken();
  v1[50] = v23;
  sub_100002F44(v23);
  v1[51] = v24;
  v26 = *(v25 + 64);
  v1[52] = sub_100002C58();
  v27 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002F04(v27);
  v29 = *(v28 + 64);
  v1[53] = sub_100002C58();
  v30 = type metadata accessor for Session.Metadata();
  v1[54] = v30;
  sub_100002F44(v30);
  v1[55] = v31;
  v33 = *(v32 + 64);
  v1[56] = sub_10000F0C0();
  v1[57] = swift_task_alloc();
  v34 = sub_100002C10();

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_10009E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  sub_100005B0C();
  a27 = v29;
  a28 = v30;
  sub_10001A5C4();
  a26 = v28;
  v32 = v28[34];
  v31 = v28[35];
  v33 = type metadata accessor for URL();
  v28[58] = v33;
  sub_100002BDC(v33);
  v35 = v34;
  v28[59] = v34;
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  v28[60] = v38;
  v39 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  sub_100002F04(v39);
  v41 = *(v40 + 64);
  v42 = sub_100002C58();
  URL.init(string:)();
  if (sub_10000C6C0(v42, 1, v33) == 1)
  {
    sub_10001301C(v42, &qword_1001B9C50);

    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v43 = v28[35];
    v44 = type metadata accessor for Logger();
    sub_100002FD0(v44, qword_1001B9A18);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v48 = v28[34];
      v47 = v28[35];
      sub_10000A05C();
      v49 = swift_slowAlloc();
      sub_1000033D0();
      v50 = swift_slowAlloc();
      a16 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_100004A3C(v48, v47, &a16);
      _os_log_impl(&_mh_execute_header, v45, v46, "Unable to convert %s to URL", v49, 0xCu);
      sub_100003324(v50);
      sub_100007C2C();

      sub_1000039CC();
    }

    v51 = type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v52, 255, v53);
    sub_100007894();
    swift_allocError();
    sub_100006098(v51);
    (*(v54 + 104))();
    swift_willThrow();
    sub_10001E660();

    sub_100001F00();
    sub_1000135DC();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v64 = v28[55];
    v75 = v28[57];
    v76 = v28[54];
    v65 = v28[53];
    v66 = v28[51];
    v79 = v28[50];
    v80 = v28[52];
    v67 = v28[37];
    v77 = v28[56];
    v78 = v28[36];
    (*(v35 + 32))(v38, v42, v33);

    swift_task_alloc();
    (*(v35 + 16))();
    type metadata accessor for Session();
    UUIDIdentifier.init()();
    v68 = type metadata accessor for UUID();
    sub_100002F04(v68);
    v28[61] = *(v69 + 64);
    sub_100002C58();
    UUID.init()();
    Session.Metadata.init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPID:loggingIdentifier:id:sessionSetID:)();

    (*(v64 + 16))(v77, v75, v76);
    (*(v66 + 16))(v80, v78, v79);
    v28[62] = v67[37];
    sub_100007130((v67 + 22), (v28 + 2));
    sub_100007130((v67 + 27), (v28 + 7));
    v70 = v67[56];
    sub_100003370(v67 + 52, v67[55]);

    v71 = swift_task_alloc();
    v28[63] = v71;
    *v71 = v28;
    sub_100004B28(v71);
    sub_1000060A4();
    sub_1000135DC();

    return OSEligibilityChecking.isFoundationModelsEligible.getter(v72, v73);
  }
}

uint64_t sub_10009EA44()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 504);
  v5 = *(v3 + 296);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 560) = v8;

  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10009EB3C()
{
  v60 = v0;
  if (sub_10000E8DC(_swiftEmptyArrayStorage))
  {
    sub_10006622C(_swiftEmptyArrayStorage);
    v49 = v1;
  }

  else
  {
    v49 = &_swiftEmptySetSingleton;
  }

  v47 = *(v0 + 560);
  v46 = *(v0 + 496);
  v39 = *(v0 + 440);
  v40 = *(v0 + 432);
  v41 = *(v0 + 448);
  v55 = *(v0 + 424);
  v42 = *(v0 + 408);
  v2 = *(v0 + 392);
  v43 = *(v0 + 400);
  v44 = *(v0 + 416);
  v3 = *(v0 + 384);
  v51 = *(v0 + 376);
  v54 = *(v0 + 360);
  v56 = *(v0 + 352);
  v50 = *(v0 + 336);
  v52 = *(v0 + 328);
  v57 = *(v0 + 320);
  v48 = *(v0 + 296);
  v58 = *(v0 + 288);
  v53 = *(v0 + 488) + 15;
  sub_100016494(v0 + 16, *(v0 + 40));
  sub_100004F60();
  v5 = v4;
  v7 = *(v6 + 64);
  v45 = sub_100002C58();
  (*(v5 + 16))();
  v8 = *v45;
  v9 = type metadata accessor for ModelCatalogProvider(0);
  *(v0 + 120) = v9;
  *(v0 + 128) = &off_1001B2060;
  *(v0 + 96) = v8;
  v10 = type metadata accessor for DaemonSession(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v0 + 512) = v13;
  v14 = sub_100016494(v0 + 96, v9);
  sub_100004F60();
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = sub_100002C58();
  (*(v16 + 16))(v19, v14, v9);
  *(v0 + 136) = *v19;
  *(v0 + 160) = v9;
  *(v0 + 168) = &off_1001B2060;
  v20 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v21 = v3[6];
  type metadata accessor for InferenceProviderDescriptor();
  sub_100003978();
  sub_100009BFC(v22, v23, v24, v25);
  *(v2 + v3[7]) = 0;
  *(v2 + v3[8]) = 0;
  v26 = sub_100065020(&qword_1001B9C58, &qword_1001706B0);
  v27 = sub_1000184E0(v26);
  sub_100005FF8(v27, *(*v27 + 48));
  sub_100031660(v28 + class metadata base offset for ManagedBuffer);
  v30 = v29;
  sub_10000C050(v2, v31 + v32);
  sub_10000AAD0(v2, v30);
  *(v13 + v20) = v27;
  (*(v39 + 32))(v13 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata, v41, v40);
  (*(v42 + 32))(v13 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken, v44, v43);
  *(v13 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_requestManager) = v46;
  sub_100004A04((v0 + 136), v13 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_modelCatalog);
  sub_100004A04((v0 + 56), v13 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_sysctl);
  v33 = v13 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState;
  *v33 = 0;
  *(v33 + 8) = v49;
  *(v33 + 16) = 0;
  *(v13 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isFoundationModelsEligible) = v47;
  *(v13 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isUnentitled) = 0;
  sub_100003324((v0 + 96));

  sub_100003324((v0 + 16));

  sub_100004B50();

  sub_1000160BC(&v59, v13);
  swift_endAccess();

  UUIDIdentifier.init()();
  default argument 0 of ClientData.init(_:)();
  ClientData.init(_:)();
  swift_task_alloc();
  UUIDIdentifier.uuid.getter();
  Session.Metadata.id.getter();
  Session.Metadata.useCaseID.getter();
  default argument 7 of RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();
  default argument 8 of RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();
  default argument 9 of RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();
  RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();

  static TaskPriority.userInitiated.getter();
  AuditToken.auditUserIdentifier.getter();
  v34 = swift_task_alloc();
  *(v0 + 520) = v34;
  *v34 = v0;
  v34[1] = sub_10009F0B8;
  v35 = *(v0 + 352);
  v36 = *(v0 + 320);
  v37 = *(v0 + 296);

  return sub_1000969B4();
}

uint64_t sub_10009F0B8()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  v7 = v4[65];
  v8 = *v1;
  *v6 = *v1;
  v5[66] = v3;
  v5[67] = v0;

  v9 = v4[40];
  v10 = v4[39];
  v11 = v4[38];
  if (v0)
  {
    v12 = v5[37];
    (*(v10 + 8))(v9, v11);
    sub_1000071A8();
    sub_100003D20();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    (*(v10 + 8))(v9, v11);
    v17 = swift_task_alloc();
    v5[68] = v17;
    *v17 = v8;
    v17[1] = sub_10009F288;
    v18 = v5[62];
    sub_10001E54C();
    sub_100003D20();

    return sub_100132548();
  }
}

uint64_t sub_10009F288()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 544);
  *v4 = *v2;
  *(v3 + 552) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 296);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10009F39C()
{
  v1 = v0[66];
  v2 = v0[59];
  v16 = v0[58];
  v17 = v0[60];
  v15 = v0[57];
  v3 = v0[55];
  v13 = v0[64];
  v14 = v0[54];
  v18 = v0[56];
  v19 = v0[53];
  v20 = v0[52];
  v21 = v0[49];
  v4 = v0[46];
  v5 = v0[47];
  v7 = v0[44];
  v6 = v0[45];
  v9 = v0[42];
  v8 = v0[43];
  v22 = v0[41];
  v23 = v0[40];
  v10 = v0[37];

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  sub_100004B50();
  sub_100036B48(v13);
  swift_endAccess();

  (*(v3 + 8))(v15, v14);
  (*(v2 + 8))(v17, v16);

  sub_100002F54();

  return v11();
}

uint64_t sub_10009F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[64];
  v17 = v14[59];
  v16 = v14[60];
  v34 = v14[57];
  v35 = v14[58];
  v18 = v14[54];
  v19 = v14[55];
  v21 = v14[46];
  v20 = v14[47];
  v22 = v14[45];
  v23 = v14[37];
  (*(v14[43] + 8))(v14[44], v14[42]);
  (*(v21 + 8))(v20, v22);
  sub_100004B50();
  sub_100036B48(v15);
  swift_endAccess();

  (*(v19 + 8))(v34, v18);
  (*(v17 + 8))(v16, v35);

  v24 = v14[67];
  sub_10001E660();

  sub_100001F00();
  sub_100003540();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, a12, a13, a14);
}

uint64_t sub_10009F6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = v16[66];
  v18 = v16[59];
  v43 = v16[58];
  v44 = v16[60];
  v42 = v16[57];
  v19 = v16[55];
  v40 = v16[64];
  v41 = v16[54];
  v21 = v16[46];
  v20 = v16[47];
  v23 = v16[44];
  v22 = v16[45];
  v25 = v16[42];
  v24 = v16[43];
  v26 = v16[37];

  v27 = *(v24 + 8);
  v28 = sub_10000CF10();
  v29(v28);
  (*(v21 + 8))(v20, v22);
  sub_100004B50();
  sub_100036B48(v40);
  swift_endAccess();

  (*(v19 + 8))(v42, v41);
  (*(v18 + 8))(v44, v43);

  v30 = v16[69];
  sub_10001E660();

  sub_100001F00();
  sub_100003D04();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, a14, a15, a16);
}

uint64_t sub_10009F814()
{
  v1 = *(v0 + 112);

  sub_100003324((v0 + 128));
  v2 = *(v0 + 168);

  sub_100003324((v0 + 176));
  sub_100003324((v0 + 216));
  sub_100003324((v0 + 256));
  v3 = *(v0 + 296);

  sub_100003324((v0 + 304));
  v4 = *(v0 + 344);

  v5 = *(v0 + 352);

  v7 = *(v0 + 360);
  v6 = *(v0 + 368);

  sub_100003324((v0 + 376));
  sub_100003324((v0 + 416));
  v8 = *(v0 + 456);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10009F8BC()
{
  sub_10009F814();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_10009FDC8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_10008BD9C(v9, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_10009FF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B9C60, &qword_1001706B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009FF9C()
{
  sub_10000639C();
  sub_100003884();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006FA64;
  sub_10001E54C();
  sub_100003D20();

  return v9(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000A0050()
{
  sub_10001881C();
  sub_100003884();
  sub_1000089AC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_100004B00(v4);
  *v5 = v6;
  sub_100007D94(v5);
  sub_100007BB8();

  return sub_10009BCE4(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000A00EC()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  sub_100007D94(v4);
  sub_100003D20();

  return sub_10009B990(v6, v7, v8, v9, v10);
}

BOOL sub_1000A0180(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  return Session.Metadata.onBehalfOfPID.getter() == v2;
}

uint64_t sub_1000A0220()
{
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
}

void sub_1000A023C()
{

  sub_1000652FC();
}

uint64_t sub_1000A0270()
{
  v1 = *(v0 + 188);
  result = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(*(v0 + 112) + 104);
  return result;
}

uint64_t sub_1000A0284(uint64_t result)
{
  v2[47] = v3;
  v2[48] = v1;
  v2[46] = result;
  return result;
}

uint64_t sub_1000A029C(uint64_t result)
{
  v3[40] = v2;
  v3[41] = v1;
  v3[39] = result;
  return result;
}

uint64_t sub_1000A02A8(uint64_t a1)
{
  *(v1 + 432) = a1;

  return sub_10001D000(v2);
}

uint64_t sub_1000A02C8()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
}

uint64_t sub_1000A02E8@<X0>(uint64_t *a1@<X8>)
{
  sub_100065020(&qword_1001B9910, &qword_100170408);

  sub_1000A0538(v2);
  result = TaskCancellingXPCPeerHandler.__allocating_init(handler:)();
  *a1 = result;
  return result;
}

uint64_t *sub_1000A0350()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_100003324(v0 + 4);
  sub_100003324(v0 + 9);
  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[16];

  v6 = v0[17];

  sub_100003324(v0 + 18);
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[26];
  v11 = v0[27];
  v12 = v0[28];
  v14 = v0[29];
  v13 = v0[30];

  v15 = v0[31];

  v16 = v0[32];

  sub_100003324(v0 + 33);
  return v0;
}

uint64_t sub_1000A0434()
{
  sub_1000A0350();

  return _swift_deallocClassInstance(v0, 304, 7);
}

uint64_t sub_1000A048C(uint64_t a1, uint64_t a2)
{
  v8 = type metadata accessor for ModelXPCDispatcher();
  v9 = &off_1001B0A90;
  *&v7 = a1;
  sub_100065020(&qword_1001B9E08, &qword_100170850);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(a2 + 56) = v4;
  sub_100065020(&qword_1001B9E10, &qword_100170858);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = &_swiftEmptySetSingleton;
  *(a2 + 64) = v5;
  sub_100004A04(&v7, a2 + 16);
  return a2;
}

uint64_t sub_1000A0538(uint64_t *a1)
{
  v1 = *a1;
  v11[3] = v1;
  v11[4] = &off_1001B0A90;
  v11[0] = a1;
  type metadata accessor for ModelXPCMessageHandler();
  v2 = swift_allocObject();
  v3 = sub_100016494(v11, v1);
  v4 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v11[-1] - v5);
  (*(v7 + 16))(&v11[-1] - v5);
  v8 = sub_1000A048C(*v6, v2);
  sub_100003324(v11);
  return v8;
}

uint64_t sub_1000A0660(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for FilePath();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_100070B98();
  v11 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v20[0] = *(i - 1);
    v20[1] = v13;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v11;
    v14 = v11[2];
    if (v14 >= v11[3] >> 1)
    {
      sub_100070B98();
      v11 = v21;
    }

    v11[2] = v14 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A082C(uint64_t a1)
{
  v37 = type metadata accessor for DisabledUseCase();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v30 = v1;
  v40 = _swiftEmptyArrayStorage;
  sub_100070CA0();
  v7 = v40;
  result = sub_10001E724(a1);
  v11 = result;
  v12 = 0;
  v13 = a1 + 56;
  v35 = v3 + 32;
  v36 = v3;
  v31 = a1 + 64;
  v14 = v32;
  v33 = v6;
  v34 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_26;
      }

      v39 = v10;
      v38 = v9;
      v16 = a1;
      v17 = (*(a1 + 48) + 16 * v11);
      v18 = *v17;
      v19 = v17[1];

      DisabledUseCase.init(internalIdentifier:)();
      v40 = v7;
      v20 = v14;
      v21 = v7[2];
      if (v21 >= v7[3] >> 1)
      {
        sub_100070CA0();
        v7 = v40;
      }

      v7[2] = v21 + 1;
      result = (*(v36 + 32))(v7 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v21, v20, v37);
      if (v39)
      {
        goto LABEL_30;
      }

      v22 = 1 << *(v16 + 32);
      if (v11 >= v22)
      {
        goto LABEL_27;
      }

      v14 = v20;
      a1 = v16;
      v13 = v34;
      v23 = *(v34 + 8 * v15);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v38)
      {
        goto LABEL_29;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v15 << 6;
        v26 = v15 + 1;
        v27 = (v31 + 8 * v15);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_100016E94(v11, v38, 0);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v11, v38, 0);
LABEL_19:
        v14 = v32;
      }

      if (++v12 == v33)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000A0B44()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B9E18);
  sub_10000641C(v0, qword_1001B9E18);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

BOOL sub_1000A0BB0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001AFEF8, v2);

  return v3 != 0;
}

BOOL sub_1000A0C08@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A0BB0(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1000A0C70@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A0BB0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A0CB4(uint64_t a1)
{
  v2 = sub_1000A4120();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A0CF0(uint64_t a1)
{
  v2 = sub_1000A4120();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000A0D2C(uint64_t *a1)
{
  v3 = sub_100065020(&qword_1001B9F68, &unk_100170A50);
  sub_100002BDC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100004B1C();
  __chkstk_darwin(v8);
  v10 = v14 - v9;
  v11 = a1[4];
  v12 = sub_100003370(a1, a1[3]);
  sub_1000A4120();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003324(a1);
  }

  else
  {
    sub_100065020(&qword_1001B9F78, &qword_100171DF0);
    sub_1000A4174();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v10, v3);
    v12 = v14[1];
    sub_100003324(a1);
  }

  return v12;
}

Swift::Int sub_1000A0EC8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void *sub_1000A0F0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000A0D2C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_1000A0F40()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000A0F90()
{
  sub_100002BAC();
  v1[2] = v0;
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v2);
  v4 = *(v3 + 64) + 15;
  v1[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  v5[1] = sub_1000A1050;

  return sub_1000A1DA4();
}

uint64_t sub_1000A1050()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000A1148()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for TaskPriority();
  sub_100009BFC(v2, 1, 1, v3);
  sub_100003B68();
  v7 = sub_1000A3F28(v4, v5, v6);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  v8[4] = v1;
  swift_retain_n();
  sub_1000652FC();

  v9 = *sub_100003370((v1 + 112), *(v1 + 136));

  sub_1001129A4(&unk_1001708F0, v1);

  v10 = *(v0 + 24);

  sub_100001F00();

  return v11();
}

uint64_t sub_1000A1344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v6 = sub_100065020(&qword_1001B9F48, &qword_1001708F8);
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v9 = sub_100065020(&qword_1001B9F50, &qword_100170900);
  v4[14] = v9;
  v10 = *(v9 - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();
  v12 = sub_100065020(&qword_1001B9F58, &qword_100170908);
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000A1510, a4, 0);
}

uint64_t sub_1000A1510()
{
  type metadata accessor for _OSActivity();
  v0[20] = swift_initStackObject();
  v0[21] = sub_10001B160("Listening to country changes", 28, 2);
  if (qword_1001B88F8 != -1)
  {
    sub_100005088();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = sub_10000641C(v1, qword_1001B9E18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    sub_1000057F8();
    v4 = swift_slowAlloc();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[11];
  v16 = v0[12];

  (*(v16 + 104))(v14, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v15);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v12 + 8))(v11, v13);
  sub_100003B68();
  v0[23] = sub_1000A3F28(v17, v18, v19);
  v20 = v0[10];
  v21 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  sub_1000083DC(v22);
  v23 = v0[19];
  v24 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v0 + 26);
}

uint64_t sub_1000A1768()
{
  sub_100002BAC();
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 80);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_1000A1898, v2, 0);
}

uint64_t sub_1000A1898()
{
  v1 = *(v0 + 176);
  if (*(v0 + 208) == 1)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (sub_100002F80(v3))
    {
      sub_1000057F8();
      v4 = swift_slowAlloc();
      sub_10000A240(v4);
      sub_100003DD0();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      sub_100002BD0();
    }

    v10 = *(v0 + 168);
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(v0 + 104);

    swift_beginAccess();
    os_activity_scope_leave((v10 + 24));
    swift_endAccess();

    sub_100001F00();

    return v14();
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (sub_100002F80(v17))
    {
      sub_1000057F8();
      v18 = swift_slowAlloc();
      sub_10000A240(v18);
      sub_100003DD0();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      sub_100002BD0();
    }

    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    *v24 = v0;
    v24[1] = sub_1000A1AC4;
    v25 = *(v0 + 80);

    return sub_1000A1DA4();
  }
}

uint64_t sub_1000A1AC4()
{
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = v1[25];
  v5 = *v0;
  *v3 = *v0;

  v6 = v1[23];
  v7 = v1[10];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v2[24] = v9;
  *v9 = v5;
  sub_1000083DC();
  v10 = v1[19];
  v11 = v1[17];

  return AsyncStream.Iterator.next(isolation:)(v2 + 26);
}

uint64_t sub_1000A1C88()
{
  sub_100001ED0();
  if (qword_1001B88F8 != -1)
  {
    sub_100005088();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001B9E18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    sub_1000057F8();
    v4 = swift_slowAlloc();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_10001CB98;
  v11 = *(v0 + 16);

  return sub_1000A1DA4();
}

uint64_t sub_1000A1DA4()
{
  sub_100002BAC();
  v1[5] = v0;
  v2 = type metadata accessor for FilePath();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000A1E7C()
{
  v150 = v0;
  v1 = *sub_100003370((v0[5] + 152), *(v0[5] + 176));
  sub_10008D3AC();
  v3 = sub_1000A3204(v2);

  isa = v3[2].isa;
  v134 = v0;
  v130 = v3;
  if (!isa)
  {
    goto LABEL_22;
  }

  v131 = 0;
  v5 = v0[7];
  v7 = *(v5 + 16);
  v5 += 16;
  v6 = v7;
  v8 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
  v132 = v0[5];
  v133 = *(v5 + 56);
  v146 = v7;
  do
  {
    v141 = isa;
    v9 = v0[6];
    v139 = v8;
    v6(v0[11]);
    if (qword_1001B88F8 != -1)
    {
      sub_100005088();
      swift_once();
    }

    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[6];
    v13 = type metadata accessor for Logger();
    sub_10000641C(v13, qword_1001B9E18);
    (v6)(v10, v11, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[10];
    v18 = v0[6];
    if (v16)
    {
      sub_10000A05C();
      v19 = swift_slowAlloc();
      sub_1000033D0();
      v20 = swift_slowAlloc();
      v149[0] = v20;
      *v19 = 136315138;
      sub_10000A5A8();
      sub_1000A3F28(&qword_1001B9528, 255, v21);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v25 = sub_100019A38();
      v26(v25);
      v27 = sub_100004A3C(v22, v24, v149);

      *(v19 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "Loading disabled use case asset plist: %s", v19, 0xCu);
      sub_100003324(v20);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {

      v28 = sub_100019A38();
      v29(v28);
    }

    v30 = v0[11];
    v31 = v0[9];
    v32 = v0[6];
    v33 = type metadata accessor for URL();
    sub_100002BDC(v33);
    v136 = v34;
    v135 = *(v35 + 64) + 15;
    v143 = swift_task_alloc();
    v36 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
    sub_100002F04(v36);
    v38 = *(v37 + 64) + 15;
    v39 = swift_task_alloc();
    v40 = type metadata accessor for URL.DirectoryHint();
    sub_100002BDC(v40);
    v42 = v41;
    v44 = *(v43 + 64) + 15;
    v45 = swift_task_alloc();
    (*(v42 + 104))(v45, enum case for URL.DirectoryHint.inferFromPath(_:), v40);
    v146(v31, v30, v32);
    String.init(validating:)();
    if (v46)
    {
      swift_task_alloc();
      (*(v42 + 16))();
      swift_task_alloc();
      sub_10001859C();
      sub_100009BFC(v47, v48, v49, v50);
      URL.init(filePath:directoryHint:relativeTo:)();
      (*(v42 + 8))(v45, v40);
    }

    else
    {
      (*(v42 + 8))(v45, v40);
    }

    sub_10001859C();
    sub_100009BFC(v51, v52, v53, v54);

    v0 = v134;
    if (sub_10000C6C0(v39, 1, v33) == 1)
    {
      v55 = v134[11];
      v56 = v134[8];
      v57 = v134[6];
      sub_10000ED30(v39, &qword_1001B9C50, &qword_1001706A8);

      v58 = v57;
      v6 = v146;
      v146(v56, v55, v58);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.fault.getter();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v134[11];
      v63 = v134[8];
      v64 = v134[6];
      if (v61)
      {
        sub_10000A05C();
        v65 = swift_slowAlloc();
        sub_1000033D0();
        v66 = swift_slowAlloc();
        v149[0] = v66;
        *v65 = 136315138;
        sub_10000A5A8();
        sub_1000A3F28(&qword_1001B9528, 255, v67);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        v137(v63, v64);
        v71 = sub_100004A3C(v68, v70, v149);

        *(v65 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v59, v60, "File path is not valid: %s", v65, 0xCu);
        sub_100003324(v66);
        v6 = v146;
        sub_100002BD0();

        sub_100002BD0();
      }

      else
      {

        v137(v63, v64);
      }

      v137(v62, v64);
    }

    else
    {
      (*(v136 + 32))(v143, v39, v33);

      v72 = *sub_100003370((v132 + 112), *(v132 + 136));
      v73 = sub_100113AF8();
      v75 = v74;
      v76 = type metadata accessor for PropertyListDecoder();
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_1000A3ED4();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v79 = v134[11];
      v80 = v134[6];

      sub_1000A3100(v134[4]);
      sub_10008D16C(v73, v75);
      v81 = *(v136 + 8);
      v82 = sub_100007B78();
      v83(v82);
      v137(v79, v80);
      v131 = 1;
      v6 = v146;
    }

    v8 = &v139[v133];
    isa = (v141 - 1);
  }

  while (v141 != 1);
  if (v131)
  {
    v84 = v134[5];

    v85 = *(v84 + 192);
    *(v84 + 192) = &_swiftEmptySetSingleton;

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v86, v87))
    {
      sub_10000A05C();
      v88 = swift_slowAlloc();
      sub_1000033D0();
      v89 = swift_slowAlloc();
      v149[0] = v89;
      *v88 = 136315138;
      v90 = *(v84 + 192);

      Set.description.getter();

      v91 = sub_100007B78();
      v94 = sub_100004A3C(v91, v92, v93);

      *(v88 + 4) = v94;
      sub_100003DD0();
      _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
      sub_100003324(v89);
      sub_100002BD0();

      sub_100002BD0();
    }
  }

  else
  {
LABEL_22:

    if (qword_1001B88F8 != -1)
    {
      sub_100005088();
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    sub_10000641C(v100, qword_1001B9E18);

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v101, v102))
    {
      sub_10000A05C();
      v103 = swift_slowAlloc();
      sub_1000033D0();
      v104 = swift_slowAlloc();
      v105 = v104;
      v148 = v104;
      *v103 = 136315138;
      v106 = v130[2].isa;
      if (v106)
      {
        v138 = v104;
        v140 = v103;
        v142 = v102;
        v144 = v101;
        v107 = v0[7];
        v149[0] = _swiftEmptyArrayStorage;
        sub_10002045C(0, v106, 0);
        v108 = v149[0];
        v109 = *(v107 + 16);
        v107 += 16;
        v110 = v130 + ((*(v107 + 64) + 32) & ~*(v107 + 64));
        v145 = *(v107 + 56);
        v147 = v109;
        v111 = (v107 - 8);
        do
        {
          v112 = v134[9];
          v113 = v134[6];
          v147(v112, v110, v113);
          v114 = FilePath.string.getter();
          v116 = v115;
          (*v111)(v112, v113);
          v149[0] = v108;
          v118 = v108[2];
          v117 = v108[3];
          if (v118 >= v117 >> 1)
          {
            sub_10002045C((v117 > 1), v118 + 1, 1);
            v108 = v149[0];
          }

          v108[2] = v118 + 1;
          v119 = &v108[2 * v118];
          v119[4] = v114;
          v119[5] = v116;
          v110 += v145;
          --v106;
        }

        while (v106);

        v0 = v134;
        v101 = v144;
        v102 = v142;
        v105 = v138;
        v103 = v140;
      }

      else
      {

        v108 = _swiftEmptyArrayStorage;
      }

      v0[3] = v108;
      sub_100065020(&qword_1001B9F28, &qword_100174190);
      sub_1000A3E70();
      v120 = BidirectionalCollection<>.joined(separator:)();
      v122 = v121;

      v123 = sub_100004A3C(v120, v122, &v148);

      *(v103 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v101, v102, "Failed to load any disabled use case identifiers at paths: %s", v103, 0xCu);
      sub_100003324(v105);
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
    }
  }

  v125 = v0[10];
  v124 = v0[11];
  v127 = v0[8];
  v126 = v0[9];

  sub_100001F00();

  return v128();
}

uint64_t sub_1000A2E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FilePath();
  v7 = sub_100002BDC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  (*(v9 + 16))(v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = String.init(validating:)();
  if (v14)
  {
    v37[1] = v13;
    v15 = type metadata accessor for URL.DirectoryHint();
    v38 = a1;
    v39 = v37;
    v16 = sub_100002BDC(v15);
    v18 = v17;
    v20 = *(v19 + 64);
    __chkstk_darwin(v16);
    (*(v18 + 16))(v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v15);
    v22 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
    v37[0] = v37;
    sub_100002F04(v22);
    v24 = *(v23 + 64);
    sub_100004B1C();
    __chkstk_darwin(v25);
    type metadata accessor for URL();
    sub_10001859C();
    sub_100009BFC(v26, v27, v28, v29);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v18 + 8))(a2, v15);
    (*(v9 + 8))(v38, v6);
    sub_10001859C();
  }

  else
  {
    v34 = type metadata accessor for URL.DirectoryHint();
    sub_1000055EC(v34);
    (*(v35 + 8))(a2);
    (*(v9 + 8))(a1, v6);
    v33 = type metadata accessor for URL();
    v30 = a3;
    v31 = 1;
    v32 = 1;
  }

  return sub_100009BFC(v30, v31, v32, v33);
}

uint64_t sub_1000A3100(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_10007CC90();

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

NSObject *sub_1000A3204(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_100065020(&qword_1001B9F18, &qword_1001708D0);
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  sub_100004B1C();
  __chkstk_darwin(v6);
  v78 = &v72 - v7;
  v79 = type metadata accessor for FilePath();
  v8 = sub_100002BDC(v79);
  v77 = v9;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v8);
  v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v75 = &v72 - v15;
  __chkstk_darwin(v14);
  v17 = &v72 - v16;
  v18 = *sub_100003370((v1 + 112), *(v1 + 136));
  v19 = sub_10010EC34();
  v21 = v20;
  v22 = type metadata accessor for URL();
  v23 = sub_100002BDC(v22);
  v80 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  v27 = sub_100003370((v2 + 112), *(v2 + 136));
  v28 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  sub_100002F04(v28);
  v30 = *(v29 + 64);
  sub_100004B1C();
  __chkstk_darwin(v31);
  v33 = (&v72 - v32);
  v34 = *v27;
  v35 = v81;
  sub_10010EFD4(v19, v21, &v72 - v32);
  if (v35)
  {
  }

  else
  {
    v81 = v26;
    v72 = v17;
    v73 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v80;

    if (sub_10000C6C0(v33, 1, v22) == 1)
    {
      sub_10000ED30(v33, &qword_1001B9C50, &qword_1001706A8);
      if (qword_1001B88F8 != -1)
      {
        sub_100005088();
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000641C(v37, qword_1001B9E18);
      v33 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v38))
      {
        sub_1000057F8();
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v33, v38, "Disabled use case list asset is available, but has no location", v39, 2u);
        sub_100002BD0();
      }

      sub_1000A3DFC();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v40 = v22;
      v41 = v36;
      v42 = v73;
      v43 = (*(v36 + 32))(v73, v33, v40);
      __chkstk_darwin(v43);
      sub_100007DB0();
      v44 = *(v36 + 16);
      v44(v33, v42, v40);
      v45 = v78;
      FilePath.init(_:)();
      v33 = v79;
      if (sub_10000C6C0(v45, 1, v79) == 1)
      {
        sub_10000ED30(v45, &qword_1001B9F18, &qword_1001708D0);
        if (qword_1001B88F8 != -1)
        {
          sub_100005088();
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        v47 = sub_10000641C(v46, qword_1001B9E18);
        __chkstk_darwin(v47);
        sub_100007DB0();
        v44(v33, v42, v40);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          sub_10000A05C();
          v50 = swift_slowAlloc();
          sub_1000033D0();
          v79 = swift_slowAlloc();
          v82 = v79;
          *v50 = 136315138;
          sub_100007238();
          v51 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = &v72;
          v52 = v51;
          v53 = v40;
          v55 = v54;
          v56 = sub_10000EE14();
          v41(v56, v53);
          v57 = sub_100004A3C(v52, v55, &v82);
          v40 = v53;

          *(v50 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v48, v49, "Disabled use case list asset location is not valid: %s", v50, 0xCu);
          v33 = v79;
          sub_100003324(v79);
          sub_100002BD0();

          sub_100002BD0();
        }

        else
        {

          v70 = sub_10000EE14();
          v41(v70, v40);
        }

        sub_1000A3DFC();
        swift_allocError();
        swift_willThrow();
        v41(v73, v40);
      }

      else
      {
        v58 = v77;
        v59 = *(v77 + 32);
        v81 = v40;
        v60 = v72;
        v59(v72, v45, v33);
        v61 = *(v58 + 16);
        v61(v74, v60, v33);
        v62 = v75;
        FilePath.appending(_:)();
        sub_100065020(&qword_1001B9108, &qword_10016FD80);
        v63 = *(v58 + 72);
        v64 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v65 = v33;
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_10016FF40;
        v67 = (v61)(v66 + v64, v62, v65);
        __chkstk_darwin(v67);
        *(&v72 - 2) = v60;
        v68 = sub_1000A0660(sub_1000A3E50, (&v72 - 4), v76);
        v82 = v66;
        sub_100140760(v68);
        v69 = *(v58 + 8);
        v69(v62, v65);
        (*(v80 + 8))(v73, v81);
        v33 = v82;
        v69(v60, v65);
      }
    }
  }

  return v33;
}

uint64_t sub_1000A3958(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = *a1;
  v9 = a1[1];
  (*(v11 + 16))(v8, a2);

  FilePath.appending(_:)();
  return FilePath.appending(_:)();
}

uint64_t *sub_1000A3A98()
{
  sub_100003324(v0 + 14);
  sub_100003324(v0 + 19);
  v1 = v0[24];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000A3AD0()
{
  sub_1000A3A98();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000A3B64()
{
  sub_100001ED0();
  if (qword_1001B88F8 != -1)
  {
    sub_100005088();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001B9E18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    sub_1000057F8();
    v4 = swift_slowAlloc();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_1000A3C80;
  v11 = *(v0 + 16);

  return sub_1000A1DA4();
}

uint64_t sub_1000A3C80()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000A3D78()
{
  sub_100001ED0();
  v1 = *(*(v0 + 16) + 192);

  v3 = sub_1000A082C(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

unint64_t sub_1000A3DFC()
{
  result = qword_1001B9F20;
  if (!qword_1001B9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9F20);
  }

  return result;
}

unint64_t sub_1000A3E70()
{
  result = qword_1001B9F30;
  if (!qword_1001B9F30)
  {
    sub_10006A614(&qword_1001B9F28, &qword_100174190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9F30);
  }

  return result;
}

unint64_t sub_1000A3ED4()
{
  result = qword_1001B9F38;
  if (!qword_1001B9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9F38);
  }

  return result;
}

uint64_t sub_1000A3F28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A3F70()
{
  sub_100001ED0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10006FA64;

  return sub_1000A1344(v3, v4, v5, v6);
}

uint64_t sub_1000A4020()
{
  sub_100002BAC();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10006F558;

  return sub_1000A1C68(v0);
}

unint64_t sub_1000A40CC()
{
  result = qword_1001B9F60;
  if (!qword_1001B9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9F60);
  }

  return result;
}

unint64_t sub_1000A4120()
{
  result = qword_1001B9F70;
  if (!qword_1001B9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9F70);
  }

  return result;
}

unint64_t sub_1000A4174()
{
  result = qword_1001B9F80;
  if (!qword_1001B9F80)
  {
    sub_10006A614(&qword_1001B9F78, &qword_100171DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9F80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeModels(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_1000A4240(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1000A42EC()
{
  result = qword_1001B9F88;
  if (!qword_1001B9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9F88);
  }

  return result;
}

unint64_t sub_1000A4344()
{
  result = qword_1001B9F90;
  if (!qword_1001B9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9F90);
  }

  return result;
}

unint64_t sub_1000A439C()
{
  result = qword_1001B9F98;
  if (!qword_1001B9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9F98);
  }

  return result;
}

uint64_t sub_1000A43F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A4434()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B9FA0);
  v1 = sub_10000641C(v0, qword_1001B9FA0);
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  generalLogHandle.getter();
  return (*(v2 + 32))(v1, v5, v0);
}

uint64_t sub_1000A4518()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 104);
    v11 = *(v3 + 56);

    v12 = sub_100002C10();

    return _swift_task_switch(v12, v13, v14);
  }

  return result;
}

uint64_t sub_1000A4614()
{
  sub_100002BAC();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_100007FEC();
  sub_10004A728(v2, v3);

  sub_100001F00();

  return v4();
}

uint64_t sub_1000A4684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v5 = *(*(type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000A4724, a2, 0);
}

void sub_1000A4724()
{
  sub_10000636C();
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_terminationHandlers;
  sub_10000BF7C();
  v6 = *(v4 + v5);

  v8 = sub_1000A4820(v7);

  sub_100004B50();
  v9 = *(v4 + v5);
  *(v4 + v5) = v8;

  sub_100056B00();
  sub_100002CBC();
  sub_10007EC14();
  v10 = sub_100003754();
  sub_10004A728(v10, v11);
  swift_endAccess();

  sub_100002F54();
  sub_100006378();

  __asm { BRAA            X1, X16 }
}

int64_t sub_1000A4820(uint64_t a1)
{
  v2 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v3 = sub_100002F44(v2);
  v29 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v9 = v8 - v7;
  LOBYTE(v7) = *(a1 + 32);
  v10 = v7 & 0x3F;
  v11 = ((1 << v7) + 63) >> 6;
  v12 = (8 * v11);

  if (v10 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27[0] = v27;
    __chkstk_darwin(v13);
    v12 = v27 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    v27[1] = v11;
    sub_100011624(0, v11, v12);
    v28 = 0;
    v14 = 0;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v10 = (v15 + 63) >> 6;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v11 = v18 | (v14 << 6);
      v21 = *(a1 + 48) + *(v29 + 72) * v11;
      sub_100056B00();
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10004A728(v9, type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper);
      if (Strong)
      {
        swift_unknownObjectRelease();
        *&v12[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_16:
          sub_10008C87C();
          return v24;
        }
      }
    }

    v19 = v14;
    while (1)
    {
      v14 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_16;
      }

      v20 = *(a1 + 56 + 8 * v14);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();

  sub_1000B1740(v26, v11, a1, sub_1000B1318);
  sub_100003170();
  swift_bridgeObjectRelease_n();
  sub_100002BB8();
  return v10;
}

uint64_t sub_1000A4B34()
{
  sub_100002BAC();
  v1[8] = v0;
  v2 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  sub_100002F44(v2);
  v1[9] = v3;
  v5 = *(v4 + 64);
  v1[10] = sub_10000F0C0();
  v1[11] = swift_task_alloc();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000A4F18()
{
  sub_100003884();
  v1 = v0[10];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = *(v0[10] + 8);
    swift_getObjectType();
    v4 = *(sub_100005F2C() + 16);
    sub_100004B94();
    v12 = (v5 + *v5);
    v7 = *(v6 + 4);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    sub_100004B28(v8);
    v9 = sub_100002CBC();

    return v12(v9);
  }

  else
  {
    v11 = v0[8];

    return _swift_task_switch(sub_1000A519C, v11, 0);
  }
}

uint64_t sub_1000A5074()
{
  sub_100001ED0();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = *(v1 + 64);

  return _swift_task_switch(sub_1000A519C, v6, 0);
}

uint64_t sub_1000A519C()
{
  sub_10000636C();
  v1 = *(v0 + 80);
  sub_100007FEC();
  v4 = sub_10004A728(v2, v3);
  v7 = *(v0 + 120);
  v8 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (v8)
  {
    v4 = *(v0 + 104);
LABEL_7:
    *(v0 + 112) = v8;
    *(v0 + 120) = v7;
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = *(v4 + 48);
    v13 = *(*(v0 + 72) + 72);
    sub_10000EE2C();
    sub_100056B00();
    v14 = sub_100001F70();
    v16 = sub_1000B1604(v14, v15);
    sub_1000060B0(v16);
    sub_100006378();
  }

  else
  {
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v4 = *(v0 + 104);
      if (v9 >= (((1 << *(v0 + 144)) + 63) >> 6))
      {
        v18 = *(v0 + 96);
        v19 = *(v0 + 64);

        v20 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_1000089B8();
        if (sub_10000A384())
        {
          v21 = *(v0 + 64);
          sub_100007698();
          v41 = sub_100003890();
          *v19 = 136315138;
          v22 = type metadata accessor for InferenceProviderDescriptor();
          sub_10000509C();
          sub_10002EA7C(v23, v24);
          v25 = sub_1000094F0();
          sub_100018830(v25, v26, v27, v28, v29, v30, v31, v32, v41);
          sub_100007BA0();
          *(v19 + 4) = v22;
          sub_1000033FC();
          _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
          sub_100001F88();
          sub_10000706C();
        }

        sub_100019164();

        sub_100001F00();
        sub_100006378();

        __asm { BRAA            X1, X16 }
      }

      v8 = *(v4 + 8 * v9 + 56);
      ++v7;
      if (v8)
      {
        v7 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000A538C()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_100002C58();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000A5410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v13 = v12[3];
  v14 = type metadata accessor for Logger();
  sub_100002FD0(v14, qword_1001B9FA0);

  v15 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v16 = v12[3];
    sub_100007698();
    sub_100003890();
    sub_10003EAA0();
    *v13 = 136315138;
    v17 = type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v18, v19);
    v20 = sub_1000094F0();
    sub_1000239D4(v20, v21, v22, v23);
    sub_100007BA0();
    *(v13 + 4) = v17;
    sub_1000033FC();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    sub_100001F88();
    sub_10000706C();
  }

  v29 = v12[3];
  v30 = *(v29 + 112);
  v12[5] = v30;
  if (v30)
  {
    sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.invalidate());
    sub_100007BCC();
    v31 = swift_task_alloc();
    v12[6] = v31;
    *v31 = v12;
    sub_100004B28(v31);
    sub_100001FBC();

    return v32(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  else
  {
    *(v29 + 112) = 0;
    v41 = *(v29 + 120);
    if (v41)
    {
      LODWORD(v41) = [v41 pid];
    }

    sub_100013668(v41);

    v42 = *(v29 + 120);
    *(v29 + 120) = 0;

    *(v15 + 164) = 1;
    type metadata accessor for TaskPriority();
    sub_100003978();
    sub_100009BFC(v43, v44, v45, v46);
    sub_10001135C();
    sub_10002EA7C(v47, v48);
    sub_100005640();
    v49 = swift_allocObject();
    sub_100018508(v49);
    sub_10000CF1C();
    v50 = *(v15 + 144);
    *(v15 + 144) = v51;

    sub_100001F00();
    sub_100001FBC();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }
}

uint64_t sub_1000A5674()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[3];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  return _swift_task_switch(sub_1000A5790, v4, 0);
}

uint64_t sub_1000A5790()
{
  sub_100001ED0();
  v3 = *(v1 + 24);
  v4 = *(v3 + 112);
  *(v3 + 112) = 0;

  v5 = *(v3 + 120);
  if (v5)
  {
    LODWORD(v5) = [v5 pid];
  }

  sub_100013668(v5);

  v6 = *(v3 + 120);
  *(v3 + 120) = 0;

  *(v0 + 164) = 1;
  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v7, v8, v9, v10);
  sub_10001135C();
  sub_10002EA7C(v11, v12);
  sub_100005640();
  v13 = swift_allocObject();
  sub_100018508(v13);
  sub_10000CF1C();
  v14 = *(v0 + 144);
  *(v0 + 144) = v15;

  sub_100001F00();

  return v16();
}

uint64_t sub_1000A5898()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_1000A4B34();
}

uint64_t sub_1000A5930(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100004B70(sub_1000A594C, v1);
}

uint64_t sub_1000A594C()
{
  sub_100001ED0();
  v1 = v0[3];
  v2 = type metadata accessor for TimeoutExecutor();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v0[4] = v5;
  swift_defaultActor_initialize();
  sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  sub_100003978();
  sub_100009BFC(v6, v7, v8, v9);
  *(v5 + OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_hitTimeout) = 0;

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_1000A5A74;
  v11 = v0[3];
  v12 = sub_1000031B8(0x8AC7230489E80000);

  return sub_100126B04(v12, 0, v13, v14);
}

uint64_t sub_1000A5A74()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (v0)
  {
    v11 = *(v5 + 24);
  }

  else
  {
    v13 = *(v5 + 24);
    v12 = *(v5 + 32);

    *(v5 + 56) = v3 & 1;
  }

  sub_100003D20();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000A5BA8()
{
  sub_10000636C();
  if (*(v0 + 56) == 1)
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v1 = type metadata accessor for Logger();
    sub_100002FD0(v1, qword_1001B9FA0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!sub_100002F80(v3))
    {
      goto LABEL_22;
    }

    v4 = sub_100007648();
    sub_10000A240(v4);
    v7 = "terminatedExtensionError TimeoutExecutor timed out";
LABEL_21:
    sub_1000059D8(&_mh_execute_header, v5, v6, v7);
    sub_100002F64();
LABEL_22:
    v42 = *(v0 + 16);

    v43 = &enum case for ModelManagerError.internalError(_:);
LABEL_23:
    v44 = *v43;
    v45 = type metadata accessor for ModelManagerError();
    sub_100005680(v45);
    (*(v46 + 104))(v42, v44);
    goto LABEL_32;
  }

  v8 = *(*(v0 + 24) + 152);
  if (!v8)
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v39 = type metadata accessor for Logger();
    sub_100002FD0(v39, qword_1001B9FA0);
    v2 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (!sub_100002F80(v40))
    {
      goto LABEL_22;
    }

    v41 = sub_100007648();
    sub_10000A240(v41);
    v7 = "terminatedExtensionError called with no exit context";
    goto LABEL_21;
  }

  v9 = v8;
  v10 = [v9 status];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 isJetsam];

    if (v12)
    {
      if (qword_1001B8900 != -1)
      {
        sub_100005C18();
      }

      v13 = *(v0 + 24);
      v14 = type metadata accessor for Logger();
      sub_10000641C(v14, qword_1001B9FA0);
      sub_10001E4A8();

      v15 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100006390();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 24);
      if (v17)
      {
        v19 = swift_slowAlloc();
        *v19 = 67109120;
        v19[1] = *(v18 + 160);

        sub_10000CC6C();
        _os_log_impl(v20, v21, v22, v23, v24, 8u);
        sub_100004B78();
      }

      else
      {
        v60 = *(v0 + 24);
      }

      v61 = [v9 status];
      if (v61)
      {
        v62 = v61;
        v63 = [v61 code];

        if (!(v63 >> 31))
        {
LABEL_40:
          v42 = *(v0 + 16);
          *v42 = v63;
          v43 = &enum case for ModelManagerError.insufficientSystemResourcesWithJetsamReason(_:);
          goto LABEL_23;
        }

        __break(1u);
      }

      LODWORD(v63) = 0;
      goto LABEL_40;
    }
  }

  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v25 = *(v0 + 24);
  v26 = type metadata accessor for Logger();
  sub_10000641C(v26, qword_1001B9FA0);
  sub_10001E4A8();

  v27 = v9;
  v28 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  v29 = sub_10000A098();
  v30 = *(v0 + 24);
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412546;
    *(v31 + 4) = v27;
    *v32 = v8;
    *(v31 + 12) = 1024;
    *(v31 + 14) = *(v30 + 160);
    v33 = v27;

    sub_10000CC6C();
    _os_log_impl(v34, v35, v36, v37, v38, 0x12u);
    sub_10000ECD8(v32, &qword_1001B8F68, &qword_10016FB80);
    sub_100012684();
    sub_100004B78();
  }

  else
  {
    v47 = *(v0 + 24);
  }

  v48 = [v27 status];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 domain];
  }

  else
  {
    v50 = 0;
  }

  v51 = [v27 status];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 code];
  }

  else
  {
    v53 = 0;
  }

  v54 = *(v0 + 16);

  *v54 = v50;
  *(v54 + 8) = v53;
  v55 = enum case for ModelManagerError.inferenceProviderCrashed(_:);
  v56 = type metadata accessor for ModelManagerError();
  sub_100005680(v56);
  (*(v57 + 104))(v54, v55);
LABEL_32:
  sub_100001F00();

  return v58();
}

uint64_t sub_1000A6048()
{
  sub_10000639C();
  sub_100003884();
  v2 = v0[3];
  v3 = v0[4];

  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  sub_100002FD0(v5, qword_1001B9FA0);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();

  v7 = sub_10000A098();
  v8 = v0[6];
  if (v7)
  {
    sub_100007698();
    v9 = sub_1000039DC();
    *v1 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v10);
    sub_1000031C4();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_10000ECD8(v9, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  else
  {
  }

  v16 = v0[2];
  v17 = enum case for ModelManagerError.internalError(_:);
  v18 = type metadata accessor for ModelManagerError();
  sub_100005680(v18);
  (*(v19 + 104))(v16, v17);
  sub_100001F00();
  sub_100003D20();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_1000A61F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100002BAC();
  v15 = *(v14[2] + 136);
  v14[3] = v15;

  if (v15)
  {
    v16 = async function pointer to Task<>.value.getter[1];
    v17 = swift_task_alloc();
    v14[4] = v17;
    *v17 = v14;
    v17[1] = sub_1000A62D8;

    return Task<>.value.getter(v17, v15, &type metadata for () + 8, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_100001F00();

    return v23();
  }
}

uint64_t sub_1000A62D8()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  return _swift_task_switch(sub_10003FD7C, 0, 0);
}

uint64_t sub_1000A63E0()
{
  sub_100001ED0();
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_1000071A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000A6530()
{
  sub_10000CB70();
  sub_100003884();
  v0[15] = v0[10];
  type metadata accessor for _OSActivity();
  v0[16] = swift_initStackObject();
  v0[17] = sub_10001B160("InferenceProvider Extension Terminated", 38, 2);
  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v1 = type metadata accessor for Logger();
  sub_100002FD0(v1, qword_1001B9FA0);
  v2 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_100006390();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_100007648() = 0;
    sub_1000031C4();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_10000706C();
  }

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1000A66AC;
  v10 = v0[12];
  sub_100004CC8();

  return sub_1000A538C();
}

uint64_t sub_1000A66AC()
{
  sub_100002BAC();
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 96);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000A67D8()
{
  sub_100001ED0();
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  sub_100005A10();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100007A20();

  return v3();
}

uint64_t sub_1000A6880(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_100065020(&qword_1001BA4C8, &qword_100171028);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000A68D0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t sub_1000A6954()
{
  sub_100002BAC();
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000A6A80()
{
  sub_100001ED0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  swift_willThrow();

  sub_100001F00();
  v4 = *(v0 + 56);

  return v3();
}

uint64_t sub_1000A6B18()
{
  sub_100002BAC();
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 464);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000A6C44()
{
  sub_10000CB70();
  sub_100003884();
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  swift_willThrow();
  sub_100004B50();
  os_activity_scope_leave((v2 + 24));
  swift_endAccess();
  v3 = *(v0 + 536);
  sub_10000C998();

  sub_100007A20();
  sub_100004CC8();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000A6D0C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 592);
  v6 = *v1;
  *(v3 + 600) = v7;
  *(v3 + 608) = v0;

  sub_10000A9E0();
  v9 = *(v8 + 464);
  if (v0)
  {
    v10 = sub_1000A7678;
  }

  else
  {
    v10 = sub_1000A6E60;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000A6E60()
{
  sub_100003884();
  v1 = v0[16];
  sub_100003370(v0 + 12, v0[15]);
  v2 = *(sub_100001F0C() + 16);
  sub_100004B94();
  v9 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v0[77] = v6;
  *v6 = v0;
  v6[1] = sub_1000A6F9C;
  sub_100018870();

  return v7();
}

uint64_t sub_1000A6F9C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 616);
  *v4 = *v1;
  *(v3 + 624) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 464);
  if (v0)
  {
    v8 = sub_1000A7744;
  }

  else
  {
    v8 = sub_1000A70E4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000A70E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  v11 = v10[63];
  v12 = v10[64];
  v13 = v10[58];
  sub_10000CE38();
  sub_100001F70();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = v10[64];
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for InferenceProviderXPCSender();
    sub_1000480AC((v10 + 17), (v10 + 22));
    InferenceProviderXPCSender.__allocating_init(session:)();

    sub_10000A5C0();
    sub_10004A728(v15, v16);
  }

  else
  {
    v17 = v10[62];
    v18 = v10[59];
    v19 = v10[60];
    (*(v19 + 32))(v17, v10[64], v18);
    type metadata accessor for InferenceProviderXPCSender();
    v20 = *(v19 + 16);
    v21 = sub_100005E98();
    v22(v21);
    sub_1000480AC((v10 + 17), (v10 + 27));
    InferenceProviderXPCSender.__allocating_init(builtInProvider:session:)();
    (*(v19 + 8))(v17, v18);
  }

  v23 = v10[75];
  v24 = v10[58];
  v25 = sub_1000060A4();
  sub_100057AA8(v25, v26);

  sub_100003324(v10 + 17);
  sub_100003324(v10 + 12);
  sub_100003324(v10 + 7);
  v27 = v10[66];
  v28 = v10[64];
  v30 = v10[61];
  v29 = v10[62];
  sub_100004B50();
  os_activity_scope_leave((v27 + 24));
  swift_endAccess();

  sub_100007A20();
  sub_100003770();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_1000A72D8()
{
  sub_10000CB70();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  sub_100004B40();
  *v6 = v5;
  v7 = *(v4 + 632);
  *v6 = *v1;
  *(v5 + 640) = v0;

  v8 = *(v4 + 464);
  if (!v0)
  {
  }

  sub_100004CC8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000A7430()
{
  sub_10000CB70();
  sub_100003884();
  sub_10001894C();
  v2 = v1[64];
  v4 = v1[61];
  v3 = v1[62];
  sub_100004B50();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  sub_100007A20();
  sub_100004CC8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000A74F8()
{
  sub_10000CB70();
  sub_100003884();
  sub_10001894C();
  sub_100004B50();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
  v2 = *(v1 + 560);
  sub_10000C998();

  sub_100007A20();
  sub_100004CC8();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000A75B4()
{
  sub_10000CB70();
  sub_100003884();
  sub_10001894C();
  sub_100003324((v1 + 56));
  sub_100004B50();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
  v2 = *(v1 + 576);
  sub_10000C998();

  sub_100007A20();
  sub_100004CC8();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000A7678()
{
  sub_10000CB70();
  sub_100003884();
  sub_10001894C();
  sub_100003324(v1 + 12);
  sub_100003324(v1 + 7);
  sub_100004B50();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
  v2 = v1[76];
  sub_10000C998();

  sub_100007A20();
  sub_100004CC8();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000A7744()
{
  sub_10000CB70();
  sub_100003884();
  v1 = *(v0 + 528);

  sub_100003324((v0 + 96));
  sub_100003324((v0 + 56));
  sub_100004B50();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  v2 = *(v0 + 624);
  sub_10000C998();

  sub_100007A20();
  sub_100004CC8();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000A781C()
{
  sub_10000CB70();
  sub_100003884();
  sub_10001894C();
  sub_100004B50();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
  v2 = *(v1 + 640);
  sub_10000C998();

  sub_100007A20();
  sub_100004CC8();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000A78D8()
{
  v1 = *(v0 + 16);
  sub_100001F00();
  return v2();
}

void sub_1000A78FC()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v11 = v0[21];
  v12 = v0[20];
  v7 = v0[18];
  v8 = v0[15];
  v13 = v0[17];
  v14 = v0[16];
  sub_10003FAA8(v2);

  v4(v6, v7);
  v4(v3, v7);
  *v8 = v1;

  sub_100001F00();
  sub_100003D04();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000A79EC()
{
  sub_100001ED0();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[28] = v4;
  sub_100002F44(v4);
  v1[29] = v5;
  v7 = *(v6 + 64);
  v1[30] = sub_10000F0C0();
  v1[31] = swift_task_alloc();
  v8 = sub_100065020(&qword_1001BA488, &qword_100170FE8);
  sub_100002F04(v8);
  v10 = *(v9 + 64);
  v1[32] = sub_10000F0C0();
  v1[33] = swift_task_alloc();
  sub_1000071A8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000A7B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  v25 = v22[33];
  v26 = v22[27];
  v27 = v22[25];
  type metadata accessor for _OSActivity();
  v22[34] = swift_initStackObject();
  v28 = sub_10001B160("Adding active InferenceProvider request", 39, 2);
  v29 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest;
  v22[35] = v28;
  v22[36] = v29;
  sub_100004BA0();
  v30 = *(v26 + v29);

  v31 = sub_10000D01C();
  sub_10005E210(v31, v32, v33);

  v34 = type metadata accessor for RequestPriority();
  v22[37] = v34;
  v35 = sub_100014484();
  LODWORD(v30) = sub_10000C6C0(v35, v36, v34);
  sub_10000ECD8(v25, &qword_1001BA488, &qword_100170FE8);
  if (v30 == 1)
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v37 = type metadata accessor for Logger();
    v22[38] = sub_10000641C(v37, qword_1001B9FA0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (sub_100002F80(v39))
    {
      *sub_100007648() = 0;
      sub_10000C720();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      sub_10000706C();
    }

    v46 = v22[31];
    v45 = v22[32];
    v47 = v22[28];
    v48 = v22[29];
    v50 = v22[25];
    v49 = v22[26];

    v51 = *(v48 + 16);
    v22[39] = v51;
    v22[40] = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v51(v46, v50, v47);
    sub_100006098(v34);
    (*(v52 + 16))(v45, v49, v34);
    sub_100009BFC(v45, 0, 1, v34);
    sub_100004B50();
    sub_10005E8FC(v45, v46);
    swift_endAccess();
    v53 = swift_task_alloc();
    v22[41] = v53;
    *v53 = v22;
    v53[1] = sub_1000A7F74;
    v54 = v22[27];
    sub_100003540();

    return sub_100030D74();
  }

  else
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v57 = v22[29];
    v58 = v22[30];
    v59 = v22[28];
    v60 = v22[25];
    v61 = type metadata accessor for Logger();
    v62 = sub_10000641C(v61, qword_1001B9FA0);
    v63 = *(v57 + 16);
    v64 = sub_100009B4C();
    v65(v64);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.fault.getter();
    v68 = os_log_type_enabled(v66, v67);
    v69 = v22[29];
    v70 = v22[30];
    v71 = v22[28];
    if (v68)
    {
      sub_100007698();
      a9 = v28;
      a10 = sub_10000359C();
      v72 = a10;
      *v62 = 136315138;
      sub_10002E9D0();
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = sub_10000D560();
      v77(v76);
      v78 = sub_100004A3C(v73, v75, &a10);

      *(v62 + 4) = v78;
      sub_100013710(&_mh_execute_header, v79, v80, "InferenceProviderExtensionConnection addActiveRequest called multiple times for %s");
      sub_100003324(v72);
      v28 = a9;
      sub_100002BB8();
      sub_100004B78();
    }

    else
    {

      v81 = sub_10000D560();
      v82(v81);
    }

    sub_100004B50();
    os_activity_scope_leave((v28 + 3));
    swift_endAccess();
    v83 = v22[35];
    v84 = v22[32];
    v85 = v22[33];
    v87 = v22[30];
    v86 = v22[31];

    sub_100013D48();
    sub_100003540();

    return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000A7F74()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 328);
  *v4 = *v1;
  *(v3 + 336) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 216);
  if (v0)
  {
    v8 = sub_1000A8190;
  }

  else
  {
    v8 = sub_1000A80BC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000A80BC()
{
  sub_10000CB70();
  sub_100003884();
  v1 = v0[35];
  sub_100004B50();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];

  sub_100007A20();
  sub_100004CC8();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000A8190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  sub_10000C72C();
  v20 = v18[42];
  v21 = v18[38];
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v18[42];
    sub_100007698();
    v25 = sub_1000039DC();
    *v19 = 138412290;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v26);
    sub_10000C720();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    sub_10000ECD8(v25, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  v32 = v22;
  v33 = v18[39];
  v34 = v18[40];
  v35 = v18[36];
  v55 = v18[37];
  v56 = v18[42];
  v36 = v18[35];
  v37 = v18[32];
  v38 = v18[31];
  v57 = v18[33];
  v58 = v18[30];
  v39 = v18[27];
  v40 = v18[28];
  v41 = v18[25];

  v33(v38, v41, v40);
  sub_100003978();
  sub_100009BFC(v42, v43, v44, v55);
  sub_100004B50();
  sub_10005E8FC(v37, v38);
  swift_endAccess();
  swift_willThrow();
  sub_100004B50();
  os_activity_scope_leave((v36 + 24));
  swift_endAccess();

  sub_100001F00();
  v45 = v18[42];
  sub_1000037A0();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, v55, v56, v57, v58, a14, a15, a16, a17, a18);
}

uint64_t sub_1000A8384()
{
  sub_10000639C();
  sub_100003884();
  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v2 = *(v0 + 240);
  v3 = type metadata accessor for Logger();
  sub_100002FD0(v3, qword_1001B9FA0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  v5 = sub_10000A098();
  v6 = *(v0 + 240);
  if (v5)
  {
    sub_100007698();
    v7 = sub_1000039DC();
    *v1 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v8);
    sub_1000031C4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_10000ECD8(v7, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  else
  {
  }

  v14 = *(v0 + 224);
  sub_100004B50();
  os_activity_scope_leave((v14 + 24));
  swift_endAccess();
  sub_100011ABC();

  sub_100001F00();
  sub_100003D20();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1000A8534(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_10001E4A8();
  swift_defaultActor_initialize();
  sub_100048670();
  sub_100065020(&qword_1001BA450, &qword_100170F88);
  v7 = swift_allocObject();
  *(v3 + 168) = v7;
  *(v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_loadingCount) = 0;
  *(v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest) = &_swiftEmptyDictionarySingleton;
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  v8 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activePriority;
  v9 = enum case for RequestPriority.none(_:);
  v10 = type metadata accessor for RequestPriority();
  sub_100005680(v10);
  (*(v11 + 104))(v3 + v8, v9);
  type metadata accessor for InferenceProviderExtensionConnection(0);
  sub_10001135C();
  sub_10002EA7C(v12, v13);
  WorkQueue.init()();
  *(v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_terminationHandlers) = &_swiftEmptySetSingleton;
  v14 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_descriptor;
  v15 = type metadata accessor for InferenceProviderDescriptor();
  sub_100005680(v15);
  (*(v16 + 32))(v3 + v14, a2);
  v17 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_providerIdentification;
  v18 = type metadata accessor for BuiltInInferenceProvider();
  sub_100005680(v18);
  (*(v19 + 32))(v3 + v17, v4);
  type metadata accessor for InferenceProviderExtensionConnection.ProviderIdentification(0);
  swift_storeEnumTagMultiPayload();
  sub_100004A04(a3, v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_extensionKit);
  return v3;
}

uint64_t sub_1000A8700(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_defaultActor_initialize();
  sub_100048670();
  sub_100065020(&qword_1001BA450, &qword_100170F88);
  v7 = swift_allocObject();
  *(v3 + 168) = v7;
  *(v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_loadingCount) = 0;
  *(v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest) = &_swiftEmptyDictionarySingleton;
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  v8 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activePriority;
  v9 = enum case for RequestPriority.none(_:);
  v10 = type metadata accessor for RequestPriority();
  sub_100005680(v10);
  (*(v11 + 104))(v3 + v8, v9);
  type metadata accessor for InferenceProviderExtensionConnection(0);
  sub_10001135C();
  sub_10002EA7C(v12, v13);
  WorkQueue.init()();
  *(v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_terminationHandlers) = &_swiftEmptySetSingleton;
  v14 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_descriptor;
  v15 = type metadata accessor for InferenceProviderDescriptor();
  sub_100005680(v15);
  (*(v16 + 32))(v3 + v14, a1);
  v17 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_providerIdentification;
  v18 = type metadata accessor for UUID();
  sub_100005680(v18);
  (*(v19 + 32))(v3 + v17, a2);
  type metadata accessor for InferenceProviderExtensionConnection.ProviderIdentification(0);
  swift_storeEnumTagMultiPayload();
  sub_100004A04(a3, v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_extensionKit);
  return v3;
}

uint64_t sub_1000A88D0()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for AppExtensionIdentity();
  v1[4] = v3;
  sub_100002F44(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_100002C58();
  v7 = type metadata accessor for InferenceProviderExtensionConnection.ProviderIdentification(0);
  v1[7] = v7;
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  v1[8] = sub_100002C58();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000A8998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_10001446C();
  sub_10000636C();
  v16 = v15[7];
  v17 = v15[8];
  v18 = v15[3];
  sub_10000CE38();
  sub_100001F70();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v15[8];
    v21 = v15[2];
    v20 = v15[3];
    v22 = type metadata accessor for UUID();
    sub_100002BDC(v22);
    v24 = v23;
    v26 = *(v25 + 64);
    v27 = sub_100002C58();
    (*(v24 + 32))(v27, v19, v22);
    sub_1000A8DD4(v20, v27);
    (*(v24 + 8))(v27, v22);

    v28 = v15[8];
    v29 = v15[6];

    sub_100001F00();
    sub_100003770();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
  }

  else
  {
    type metadata accessor for InferenceProviderXPCSender();
    v15[9] = static InferenceProviderXPCSender.builtInInferenceProviderExtensionIdentityCache.getter();
    v30 = async function pointer to Task.value.getter[1];
    v31 = swift_task_alloc();
    v15[10] = v31;
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    *v31 = v15;
    v31[1] = sub_1000A8B90;
    v32 = v15[6];
    v33 = v15[4];
    sub_100003770();

    return Task.value.getter(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, v15);
  }
}

uint64_t sub_1000A8B90()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[9];
    v10 = v3[3];

    v11 = sub_1000A8D60;
    v12 = v10;
  }

  else
  {
    v12 = v3[3];
    v11 = sub_1000A8CA0;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1000A8CA0()
{
  sub_10000639C();
  sub_100003884();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];

  v6[3] = type metadata accessor for EKExtensionIdentity(0);
  v6[4] = &off_1001B11E0;
  v7 = sub_10000366C(v6);
  (*(v4 + 32))(v7, v3, v5);
  sub_10000A5C0();
  sub_10004A728(v2, v8);
  v9 = v0[8];
  v10 = v0[6];

  sub_100002F54();
  sub_100003D20();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000A8D60()
{
  sub_100002BAC();
  v1 = v0[8];
  sub_10000A5C0();
  sub_10004A728(v2, v3);
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[6];

  sub_100001F00();

  return v7();
}

uint64_t sub_1000A8DD4(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_extensionKit);
  v6 = v5[3];
  v7 = v5[4];
  sub_100003370(v5, v6);
  result = (*(v7 + 16))(a2, v6, v7);
  if (v2)
  {
    if (qword_1001B8900 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000641C(v9, qword_1001B9FA0);

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = &unk_1001BE000;
    if (os_log_type_enabled(v10, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v13 = 136315394;
      type metadata accessor for InferenceProviderDescriptor();
      sub_10002EA7C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = sub_100004A3C(v16, v17, &v25);
      v12 = &unk_1001BE000;

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v19;
      *v14 = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "EK failed to establish AppExtensionIdentity for %s with error %@", v13, 0x16u);
      sub_10000ECD8(v14, &qword_1001B8F68, &qword_10016FB80);

      sub_100003324(v15);
    }

    v20 = type metadata accessor for ModelManagerError();
    sub_10002EA7C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    swift_allocError();
    v22 = v21;
    v23 = a1 + v12[230];
    *v21 = InferenceProviderDescriptor.description.getter();
    v22[1] = v24;
    (*(*(v20 - 8) + 104))(v22, enum case for ModelManagerError.unrecognizedInferenceProvider(_:), v20);
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1000A910C()
{
  v1 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v2 = sub_100002F04(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = *(v0 + 168);

  os_unfair_lock_lock((v5 + 24));
  [*(v5 + 16) invalidate];
  os_unfair_lock_unlock((v5 + 24));

  v6 = *(v0 + 112);
  if (v6)
  {
    type metadata accessor for TaskPriority();
    sub_100003978();
    sub_100009BFC(v7, v8, v9, v10);
    sub_100005640();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v6;

    sub_10002BA40();
    sub_1000652FC();

    v12 = *(v0 + 112);
  }

  v13 = *(v0 + 136);

  v14 = *(v0 + 144);

  v15 = *(v0 + 168);

  v16 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_descriptor;
  v17 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002C00(v17);
  (*(v18 + 8))(v0 + v16);
  sub_10000A5C0();
  sub_10004A728(v0 + v19, v20);
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_extensionKit));
  v21 = *(v0 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest);

  v22 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activePriority;
  v23 = type metadata accessor for RequestPriority();
  sub_100002C00(v23);
  (*(v24 + 8))(v0 + v22);
  v25 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_workQueue;
  v26 = sub_100065020(&qword_1001BA490, &qword_100171000);
  sub_100002C00(v26);
  (*(v27 + 8))(v0 + v25);
  v28 = *(v0 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_terminationHandlers);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000A9350()
{
  v1 = *(&async function pointer to dispatch thunk of InferenceProviderXPCSender.invalidate() + 1);
  v4 = (&async function pointer to dispatch thunk of InferenceProviderXPCSender.invalidate() + async function pointer to dispatch thunk of InferenceProviderXPCSender.invalidate());
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10006FA64;

  return v4();
}

uint64_t sub_1000A93F4()
{
  sub_1000A910C();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1000A9448()
{
  v0 = type metadata accessor for InferenceProviderDescriptor();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for InferenceProviderExtensionConnection.ProviderIdentification(319);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for RequestPriority();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1000B03C8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1000A95F4()
{
  if (__OFSUB__(*(v0[2] + v0[3]), 1))
  {
    __break(1u);
  }

  else
  {
    sub_10000639C();
    sub_100003884();
    v2 = v0[6];
    v3 = v0[4];
    *(v5 + v4) = v6;
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[6];
      sub_100007698();
      v10 = sub_1000039DC();
      *v1 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      sub_100001FD4(v11);
      sub_10000C720();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      sub_10000ECD8(v10, &qword_1001B8F68, &qword_10016FB80);
      sub_100004B78();
      sub_10000706C();
    }

    v17 = v0[6];

    swift_willThrow();
    sub_100001F00();
    v18 = v0[6];
    sub_100003D20();

    v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1000A971C()
{
  sub_10000639C();
  sub_100003884();
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  v5 = sub_10000A098();
  v6 = *(v0 + 40);
  if (v5)
  {
    sub_100007698();
    v7 = sub_1000039DC();
    *v1 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v8);
    sub_1000031C4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_10000ECD8(v7, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  else
  {
  }

  sub_100001F00();
  sub_100003D20();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1000A982C()
{
  sub_100002BAC();
  v2 = sub_10000D088(v1);
  v0[5] = v2;
  sub_100002F44(v2);
  v0[6] = v3;
  v5 = *(v4 + 64);
  v0[7] = sub_100002C58();
  v6 = type metadata accessor for Version();
  v0[8] = v6;
  sub_100002F44(v6);
  v0[9] = v7;
  v9 = *(v8 + 64);
  v0[10] = sub_100002C58();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000A9914()
{
  sub_10000385C();
  sub_100003284();
  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v2 = sub_100006010();
  v0[11] = sub_10000641C(v2, qword_1001B9FA0);
  v3 = *(v1 + 16);
  v4 = sub_10000CC04();
  v5(v4);

  v6 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_1000089B8();
  v7 = sub_10000A384();
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v33 = v0[4];
    v11 = sub_1000267F8();
    sub_1000080A4();
    sub_10003EAA0();
    *v11 = 136315394;
    sub_10002EA7C(&qword_1001BA480, &type metadata accessor for Version);
    dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_1000194A4();
    v14 = v13(v12);
    sub_1000190A0(v14, v15);

    sub_10001877C();
    v16 = type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v17, v18);
    sub_1000195C4();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000239D4(v19, v20, v21, v22);
    sub_100007BA0();
    *(v11 + 14) = v16;
    sub_1000033FC();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    swift_arrayDestroy();
    sub_100004B78();
    sub_10000706C();
  }

  else
  {

    v28 = sub_1000194A4();
    v29(v28);
  }

  v30 = swift_task_alloc();
  v0[12] = v30;
  *v30 = v0;
  sub_10000CD28(v30);
  sub_100003540();

  return sub_100030B84();
}

uint64_t sub_1000A9B50()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[10];
    v10 = v3[7];

    v11 = *(v7 + 8);

    return v11(0);
  }

  else
  {
    v13 = v3[4];
    sub_10000E700();

    return _swift_task_switch(v14, v15, v16);
  }
}

uint64_t sub_1000A9C90()
{
  sub_100001ED0();
  sub_100026F54();
  v1[13] = v0;
  if (v0)
  {
    v17 = sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.isVersionSupported(version:));

    v2 = swift_task_alloc();
    v1[14] = v2;
    *v2 = v1;
    v3 = sub_100012670(v2);

    return (v17)(v3);
  }

  else
  {
    v5 = v1[11];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (sub_100002F80(v7))
    {
      v8 = sub_100007648();
      sub_10000A240(v8);
      sub_1000059D8(&_mh_execute_header, v9, v10, "isVersionSupported called for terminated extension");
      sub_100002F64();
    }

    v11 = v1[5];

    sub_1000085DC();
    sub_10002EA7C(v12, v13);
    v1[16] = sub_10000A418();
    swift_task_alloc();
    sub_100004B34();
    v1[17] = v14;
    *v14 = v15;
    v16 = sub_100019A50(v14);

    return sub_1000A5930(v16);
  }
}

uint64_t sub_1000A9E14()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  v7 = *(v4 + 112);
  *v6 = *v1;
  *(v5 + 120) = v0;

  v8 = *(v4 + 32);
  if (!v0)
  {
    *(v5 + 160) = v3 & 1;
  }

  sub_10000E700();
  sub_100003D20();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000A9F3C()
{
  sub_100001ED0();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  sub_100002FE8();
  sub_100039484(v4, v5, v6);

  v7 = *(v0 + 8);
  v8 = *(v0 + 160);

  return v7(v8);
}

uint64_t sub_1000A9FE8()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 136);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AA0E0()
{
  sub_100001ED0();
  v1 = *(v0 + 128);
  v2 = *(v0 + 32);
  swift_willThrow();
  sub_100002FE8();
  sub_100039484(v2, v3, v4);
  v5 = *(v0 + 128);
  sub_10001D320();

  v6 = sub_10001E5F0();

  return v7(v6);
}

uint64_t sub_1000AA178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  sub_100018C30(v11[15]);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (sub_10000887C())
  {
    v14 = sub_100011BE0();
    if (v15(v14) == enum case for ModelManagerError.ipcError(_:))
    {
      sub_100009EE0();
      v16 = *(v12 + 96);
      v17 = sub_1000060A4();
      v18(v17);
      sub_10001D164();
      v19 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      sub_100007DC8();
      if (sub_100019A64())
      {
        sub_100007698();
        sub_10000359C();
        sub_100003DF0();
        sub_100045694(4.8149e-34, v20);
        sub_100005F2C();

        *(v13 + 4) = v10;
        sub_100010B98(&_mh_execute_header, v21, v22, "isVersionSupported failed with XPC Error %s, checking exit status");
        sub_100002C88();
        sub_100004B78();
      }

      else
      {
      }

      v45 = v11[5];
      sub_1000085DC();
      sub_10002EA7C(v46, v47);
      v11[18] = sub_10000C700();
      swift_task_alloc();
      sub_100004B34();
      v11[19] = v48;
      *v48 = v49;
      sub_100019A50(v48);
      sub_100003770();

      return sub_1000A5930(v50);
    }

    v25 = v11[13];
    v27 = v11[6];
    v26 = v11[7];
    v24 = v11[4];
    v28 = v11[5];

    v29 = *(v27 + 8);
    v30 = sub_1000060A4();
    v31(v30);
  }

  else
  {
    v23 = v11[13];
    v24 = v11[4];
  }

  v32 = v11[2];

  sub_100002FE8();
  sub_100039484(v24, v33, v34);
  v35 = v11[15];
  sub_10001D320();

  sub_10001E5F0();
  sub_100003770();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_1000AA3A8()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 152);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AA4A0()
{
  sub_100001ED0();
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[4];
  swift_willThrow();

  v4 = v0[2];

  sub_100002FE8();
  sub_100039484(v3, v5, v6);
  v7 = v0[18];
  sub_10001D320();

  v8 = sub_10001E5F0();

  return v9(v8);
}

uint64_t sub_1000AA54C()
{
  sub_100002BAC();
  v2 = sub_10000D088(v1);
  v0[5] = v2;
  sub_100002F44(v2);
  v0[6] = v3;
  v5 = *(v4 + 64);
  v0[7] = sub_100002C58();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AA5E8()
{
  sub_10000636C();
  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[8] = sub_100002FD0(v2, qword_1001B9FA0);

  v3 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v4 = v0[4];
    sub_100007698();
    v24 = sub_100003890();
    *v1 = 136315138;
    v5 = type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v6, v7);
    v8 = sub_1000094F0();
    sub_100018830(v8, v9, v10, v11, v12, v13, v14, v15, v24);
    sub_100007BA0();
    *(v1 + 4) = v5;
    sub_1000033FC();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_100001F88();
    sub_10000706C();
  }

  v21 = swift_task_alloc();
  v0[9] = v21;
  *v21 = v0;
  sub_10000CD28(v21);
  sub_100006378();

  return sub_100030B84();
}

uint64_t sub_1000AA768()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 56);

    sub_10000778C();

    return v10();
  }

  else
  {
    v12 = *(v3 + 32);
    sub_10000E700();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t sub_1000AA890()
{
  sub_100001ED0();
  sub_100026F54();
  v1[10] = v0;
  if (v0)
  {
    v17 = sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.convertData(clientData:));

    v2 = swift_task_alloc();
    v1[11] = v2;
    *v2 = v1;
    v3 = sub_100012670(v2);

    return (v17)(v3);
  }

  else
  {
    v5 = v1[8];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (sub_100002F80(v7))
    {
      v8 = sub_100007648();
      sub_10000A240(v8);
      sub_1000059D8(&_mh_execute_header, v9, v10, "convertData called for terminated extension");
      sub_100002F64();
    }

    v11 = v1[5];

    sub_1000085DC();
    sub_10002EA7C(v12, v13);
    v1[15] = sub_10000A418();
    swift_task_alloc();
    sub_100004B34();
    v1[16] = v14;
    *v14 = v15;
    v16 = sub_100019A50(v14);

    return sub_1000A5930(v16);
  }
}

uint64_t sub_1000AAA14()
{
  sub_100003884();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v9 = v6[11];
  *v8 = *v1;
  v7[12] = v0;

  v10 = v6[4];
  if (v0)
  {
    v11 = sub_1000AAD6C;
  }

  else
  {
    v7[13] = v3;
    v7[14] = v5;
    v11 = sub_1000AAB48;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_1000AAB48()
{
  sub_100002BAC();
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];

  sub_1000064B8();
  sub_100039484(v3, v4, v5);

  v6 = v0[1];
  v8 = v0[13];
  v7 = v0[14];

  return v6(v7, v8);
}

uint64_t sub_1000AABE0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 128);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AACD8()
{
  sub_100001ED0();
  v1 = v0[15];
  v2 = v0[4];
  swift_willThrow();
  sub_1000064B8();
  sub_100039484(v2, v3, v4);
  v5 = v0[15];
  v6 = v0[7];

  sub_100001F00();

  return v7();
}

uint64_t sub_1000AAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  sub_100018C30(v10[12]);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (sub_10000887C())
  {
    v12 = sub_100011BE0();
    if (v13(v12) == enum case for ModelManagerError.ipcError(_:))
    {
      v14 = v10[12];
      v15 = v10[7];
      v16 = v10[8];
      v17 = v10[5];
      v18 = v10[6];

      v19 = *(v18 + 96);
      v20 = sub_1000060A4();
      v21(v20);
      sub_10001D164();
      v22 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      sub_100007DC8();
      if (sub_100019A64())
      {
        sub_100007698();
        sub_10000359C();
        sub_100003DF0();
        sub_100045694(4.8149e-34, v23);
        sub_100005F2C();

        *(v11 + 4) = v17;
        sub_100010B98(&_mh_execute_header, v24, v25, "convertData failed with XPC Error %s, checking exit status");
        sub_100002C88();
        sub_100004B78();
      }

      else
      {
      }

      v49 = v10[5];
      sub_1000085DC();
      sub_10002EA7C(v50, v51);
      v10[17] = sub_10000C700();
      swift_task_alloc();
      sub_100004B34();
      v10[18] = v52;
      *v52 = v53;
      sub_100019A50(v52);
      sub_100003770();

      return sub_1000A5930(v54);
    }

    v28 = v10[10];
    v30 = v10[6];
    v29 = v10[7];
    v27 = v10[4];
    v31 = v10[5];

    v32 = *(v30 + 8);
    v33 = sub_1000060A4();
    v34(v33);
  }

  else
  {
    v26 = v10[10];
    v27 = v10[4];
  }

  v35 = v10[2];

  sub_1000064B8();
  sub_100039484(v27, v36, v37);
  v38 = v10[12];
  v39 = v10[7];

  sub_100001F00();
  sub_100003770();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1000AAFA4()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 144);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AB09C()
{
  sub_100001ED0();
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[4];
  swift_willThrow();

  v4 = v0[2];

  sub_1000064B8();
  sub_100039484(v3, v5, v6);
  v7 = v0[17];
  v8 = v0[7];

  sub_100001F00();

  return v9();
}

uint64_t sub_1000AB144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  sub_100018C30(v11[15]);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (sub_10000887C())
  {
    v14 = sub_100011BE0();
    if (v15(v14) == enum case for ModelManagerError.ipcError(_:))
    {
      sub_100009EE0();
      v16 = *(v12 + 96);
      v17 = sub_1000060A4();
      v18(v17);
      sub_10001D164();
      v19 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      sub_100007DC8();
      if (sub_100019A64())
      {
        sub_100007698();
        sub_10000359C();
        sub_100003DF0();
        sub_100045694(4.8149e-34, v20);
        sub_100005F2C();

        *(v13 + 4) = v10;
        sub_100010B98(&_mh_execute_header, v21, v22, "transitionAsset failed with XPC Error %s, checking exit status");
        sub_100002C88();
        sub_100004B78();
      }

      else
      {
      }

      v45 = v11[5];
      sub_1000085DC();
      sub_10002EA7C(v46, v47);
      v11[16] = sub_10000C700();
      swift_task_alloc();
      sub_100004B34();
      v11[17] = v48;
      *v48 = v49;
      sub_100019A50(v48);
      sub_100003770();

      return sub_1000A5930(v50);
    }

    v25 = v11[13];
    v27 = v11[6];
    v26 = v11[7];
    v24 = v11[4];
    v28 = v11[5];

    v29 = *(v27 + 8);
    v30 = sub_1000060A4();
    v31(v30);
  }

  else
  {
    v23 = v11[13];
    v24 = v11[4];
  }

  v32 = v11[2];

  sub_100005668();
  sub_100039484(v24, v33, v34);
  v35 = v11[15];
  sub_10001D320();

  sub_100001F00();
  sub_100003770();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_1000AB374()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 136);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AB46C()
{
  sub_100001ED0();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[4];
  swift_willThrow();

  v4 = v0[2];

  sub_100005668();
  sub_100039484(v3, v5, v6);
  v7 = v0[16];
  sub_10001D320();

  sub_100001F00();

  return v8();
}

uint64_t sub_1000AB518()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 432);
  v3 = *(v1 + 248);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AB610()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[53];
  v2 = v0[42];
  v3 = v0[31];
  swift_willThrow();
  sub_100002C70();
  sub_100039484(v3, v4, v5);
  sub_100004B50();
  os_activity_scope_leave((v2 + 24));
  swift_endAccess();
  v6 = v0[53];
  sub_10002B030();

  sub_100001F00();
  sub_100003D20();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000AB6E0()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 336);
  sub_100004B50();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  v2 = *(v0 + 392);
  sub_10002B030();

  sub_100001F00();
  sub_100003D20();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000AB780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  v10[26] = v10[52];
  v12 = v10[34];
  v13 = v10[32];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (sub_10000887C())
  {
    if ((*(v10[33] + 88))(v10[34], v10[32]) == enum case for ModelManagerError.ipcError(_:))
    {
      v14 = v10[52];
      v15 = v10[47];
      v17 = v10[33];
      v16 = v10[34];
      v18 = v10[32];

      v19 = *(v17 + 96);
      v20 = sub_1000060A4();
      v21(v20);
      sub_10001D164();
      v22 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      sub_100007DC8();
      if (sub_100019A64())
      {
        sub_100007698();
        sub_10000359C();
        sub_100003DF0();
        sub_100045694(4.8149e-34, v23);
        sub_100005F2C();

        *(v11 + 4) = v18;
        sub_100010B98(&_mh_execute_header, v24, v25, "transitionAsset failed with XPC Error %s, checking exit status");
        sub_100002C88();
        sub_100004B78();
      }

      else
      {
      }

      v49 = v10[32];
      sub_1000085DC();
      sub_10002EA7C(v50, v51);
      v10[55] = sub_10000C700();
      swift_task_alloc();
      sub_100004B34();
      v10[56] = v52;
      *v52 = v53;
      sub_100012F7C(v52);
      sub_100003770();

      return sub_1000A5930(v54);
    }

    v29 = v10[50];
    v27 = v10[42];
    v31 = v10[33];
    v30 = v10[34];
    v28 = v10[31];
    v32 = v10[32];

    v33 = *(v31 + 8);
    v34 = sub_100003754();
    v35(v34);
  }

  else
  {
    v26 = v10[50];
    v27 = v10[42];
    v28 = v10[31];
  }

  v36 = v10[26];

  sub_100002C70();
  sub_100039484(v28, v37, v38);
  sub_100004B50();
  os_activity_scope_leave((v27 + 24));
  swift_endAccess();
  v39 = v10[52];
  sub_10002B030();

  sub_100001F00();
  sub_100003770();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1000ABA1C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 448);
  v3 = *(v1 + 248);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000ABB14()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[55];
  v2 = v0[50];
  v3 = v0[42];
  v4 = v0[31];
  swift_willThrow();

  v5 = v0[26];

  sub_100002C70();
  sub_100039484(v4, v6, v7);
  sub_100004B50();
  os_activity_scope_leave((v3 + 24));
  swift_endAccess();
  v8 = v0[55];
  sub_10002B030();

  sub_100001F00();
  sub_100003D20();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1000ABBF8()
{
  sub_100001ED0();
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  *(v1 + 384) = v3;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  v6 = type metadata accessor for ModelManagerError();
  *(v1 + 216) = v6;
  sub_100002F44(v6);
  *(v1 + 224) = v7;
  v9 = *(v8 + 64);
  *(v1 + 232) = sub_100002C58();
  v10 = type metadata accessor for InferenceProviderRequestConfiguration();
  *(v1 + 240) = v10;
  sub_100002F44(v10);
  *(v1 + 248) = v11;
  v13 = *(v12 + 64);
  *(v1 + 256) = sub_10000F0C0();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  sub_1000071A8();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000AC2C0()
{
  sub_100002BAC();
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 208);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000AC3EC()
{
  sub_10000636C();
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  swift_willThrow();
  sub_100005A10();
  os_activity_scope_leave((v2 + 24));
  swift_endAccess();
  v3 = *(v0 + 352);
  sub_100018CAC();

  sub_100013D48();

  return v4();
}

uint64_t sub_1000AC4BC()
{
  v58 = v0;
  v0[22] = v0[43];
  v1 = v0[29];
  v2 = v0[27];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (!sub_10000887C())
  {
    v37 = v0[36];
    v36 = v0[37];
    v38 = v0[25];
    goto LABEL_7;
  }

  if ((*(v0[28] + 88))(v0[29], v0[27]) != enum case for ModelManagerError.ipcError(_:))
  {
    v37 = v0[36];
    v39 = v0[37];
    v40 = v0[25];
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_7:
    v41 = v0[22];

    sub_10005A670();

    sub_100004B50();
    os_activity_scope_leave((v37 + 24));
    swift_endAccess();
    v42 = v0[43];
    sub_100018CAC();

    sub_100001F00();
    sub_1000135DC();

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[25];

  v13 = *(v11 + 96);
  v14 = sub_100003754();
  v15(v14);
  v17 = *v8;
  v16 = v8[1];
  v5(v7, v12, v9);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[41];
  v22 = v0[31];
  v23 = v0[32];
  v24 = v0[30];
  if (v20)
  {
    v54 = v0[41];
    v25 = sub_1000267F8();
    v57 = sub_1000080A4();
    *v25 = 136315394;
    v56 = v17;
    v26 = type metadata accessor for UUID();
    sub_100002BDC(v26);
    v28 = v27;
    v30 = *(v29 + 64);
    v53 = v24;
    v31 = sub_100002C58();
    log = v18;
    InferenceProviderRequestConfiguration.requestUUID.getter();
    sub_10005A8F4();
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v28 + 8))(v31, v26);
    v54(v23, v53);

    v33 = sub_100036724();
    sub_100004A3C(v33, v34, v35);
    sub_10000E86C();

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    sub_100004A3C(v56, v16, &v57);
    sub_100001F0C();

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, log, v19, "requestInference (%s) failed with XPC Error %s, checking exit status", v25, 0x16u);
    sub_10000BEE8();
    sub_100003420();
    sub_100012684();
  }

  else
  {

    v21(v23, v24);
  }

  v45 = v0[27];
  sub_1000085DC();
  sub_10002EA7C(v46, v47);
  v0[46] = sub_10000C700();
  v48 = swift_task_alloc();
  v0[47] = v48;
  *v48 = v0;
  v48[1] = sub_1000AC914;
  v49 = v0[26];
  sub_100013E54();
  sub_1000135DC();

  return sub_1000A5930(v50);
}

uint64_t sub_1000AC914()
{
  sub_100002BAC();
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 208);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000ACA40()
{
  sub_10000636C();
  v1 = v0[46];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[25];
  swift_willThrow();
  v5 = v0[22];

  sub_10005A670();

  sub_100004B50();
  os_activity_scope_leave((v3 + 24));
  swift_endAccess();
  v6 = v0[46];
  sub_100018CAC();

  sub_100013D48();

  return v7();
}

uint64_t sub_1000ACB3C()
{
  sub_100002BAC();
  v2 = sub_10000D088(v1);
  v0[5] = v2;
  sub_100002F44(v2);
  v0[6] = v3;
  v5 = *(v4 + 64);
  v0[7] = sub_100002C58();
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v0[8] = v6;
  sub_100002F44(v6);
  v0[9] = v7;
  v9 = *(v8 + 64);
  v0[10] = sub_10000F0C0();
  v0[11] = swift_task_alloc();
  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000ACC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  sub_100026F54();
  v15[12] = v14;
  if (v14)
  {
    sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.inputStreamEnded(requestID:));
    sub_100007BCC();
    v16 = swift_task_alloc();
    v15[13] = v16;
    *v16 = v15;
    sub_100012670(v16);
    sub_100003540();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v26 = v15[11];
    v27 = v15[8];
    v28 = v15[9];
    v29 = v15[3];
    v30 = type metadata accessor for Logger();
    v31 = sub_10000641C(v30, qword_1001B9FA0);
    v32 = *(v28 + 16);
    v33 = sub_10000CC04();
    v34(v33);
    v35 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100006390();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v15[11];
    v39 = v15[8];
    v40 = v15[9];
    if (v37)
    {
      sub_100007698();
      sub_100003890();
      sub_10003EAA0();
      *v31 = 136315138;
      sub_10002E9D0();
      dispatch thunk of CustomStringConvertible.description.getter();
      v41 = sub_1000194A4();
      v43 = v42(v41);
      v45 = sub_1000190A0(v43, v44);

      *(v31 + 4) = v45;
      sub_1000033FC();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      sub_100001F88();
      sub_10000706C();
    }

    else
    {

      v51 = sub_1000194A4();
      v52(v51);
    }

    v53 = v15[5];
    sub_1000085DC();
    sub_10002EA7C(v54, v55);
    v15[15] = sub_10000C700();
    swift_task_alloc();
    sub_100004B34();
    v15[16] = v56;
    *v56 = v57;
    sub_100019A50(v56);
    sub_100003540();

    return sub_1000A5930(v58);
  }
}

uint64_t sub_1000ACE90()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 104);
  *v4 = *v2;
  *(v3 + 112) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 32);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000ACFA4()
{
  sub_100001ED0();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  sub_100002F54();

  return v5();
}

uint64_t sub_1000AD024()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 128);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AD11C()
{
  sub_100001ED0();
  v1 = v0[15];
  swift_willThrow();
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  sub_100001F00();

  return v6();
}

uint64_t sub_1000AD19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  sub_100018C30(v22[14]);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (sub_10000887C())
  {
    v25 = sub_100011BE0();
    if (v26(v25) == enum case for ModelManagerError.ipcError(_:))
    {
      v27 = v22[14];
      v29 = v22[6];
      v28 = v22[7];
      v30 = v22[5];

      v31 = *(v29 + 96);
      v32 = sub_100001F70();
      v33(v32);
      v35 = *v28;
      v34 = v28[1];
      if (qword_1001B8900 != -1)
      {
        sub_100005C18();
      }

      v37 = v22[9];
      v36 = v22[10];
      v38 = v22[8];
      v39 = v22[3];
      v40 = type metadata accessor for Logger();
      sub_10000641C(v40, qword_1001B9FA0);
      v41 = *(v37 + 16);
      v42 = sub_100036724();
      v43(v42);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      v46 = os_log_type_enabled(v44, v45);
      v48 = v22[9];
      v47 = v22[10];
      v49 = v22[8];
      if (v46)
      {
        v50 = sub_1000267F8();
        a11 = sub_1000080A4();
        *v50 = 136315394;
        sub_10002E9D0();
        v90 = v35;
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        v54 = *(v48 + 8);
        v55 = sub_100004CB0();
        v56(v55);
        v57 = sub_100004A3C(v51, v53, &a11);

        *(v50 + 4) = v57;
        *(v50 + 12) = 2080;
        sub_100004A3C(v90, v34, &a11);
        sub_100003170();

        *(v50 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v44, v45, "InferenceProvider requestInputStreamInference (%s) failed with %s", v50, 0x16u);
        sub_10000BEE8();
        sub_100003420();
        sub_100012684();
      }

      else
      {

        v80 = *(v48 + 8);
        v81 = sub_100004CB0();
        v82(v81);
      }

      v83 = v22[5];
      sub_1000085DC();
      sub_10002EA7C(v84, v85);
      v22[17] = sub_10000C700();
      swift_task_alloc();
      sub_100004B34();
      v22[18] = v86;
      *v86 = v87;
      sub_100019A50(v86);
      sub_100003540();

      return sub_1000A5930(v88);
    }

    v59 = v22[12];
    v61 = v22[6];
    v60 = v22[7];
    v62 = v22[5];

    v63 = *(v61 + 8);
    v64 = sub_100001F70();
    v65(v64);
  }

  else
  {
    v58 = v22[12];
  }

  v66 = v22[2];

  v67 = v22[14];
  v69 = v22[10];
  v68 = v22[11];
  v70 = v22[7];

  sub_100001F00();
  sub_100003540();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000AD4E4()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 144);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AD5DC()
{
  sub_100001ED0();
  v1 = v0[17];
  v2 = v0[12];
  swift_willThrow();

  v3 = v0[2];

  v4 = v0[17];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  sub_100001F00();

  return v8();
}

uint64_t sub_1000AD670()
{
  sub_100001ED0();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[23] = v5;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[28] = v6;
  sub_100002F44(v6);
  v1[29] = v7;
  v9 = *(v8 + 64);
  v1[30] = sub_100002C58();
  v10 = type metadata accessor for RequestMetadata();
  v1[31] = v10;
  sub_100002F44(v10);
  v1[32] = v11;
  v13 = *(v12 + 64);
  v1[33] = sub_10000F0C0();
  v1[34] = swift_task_alloc();
  v14 = type metadata accessor for ModelManagerError();
  v1[35] = v14;
  sub_100002F44(v14);
  v1[36] = v15;
  v17 = *(v16 + 64);
  v1[37] = sub_100002C58();
  v18 = type metadata accessor for InferenceProviderRequestConfiguration();
  v1[38] = v18;
  sub_100002F44(v18);
  v1[39] = v19;
  v21 = *(v20 + 64);
  v1[40] = sub_10000F0C0();
  v1[41] = swift_task_alloc();
  sub_1000071A8();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_1000ADDC8()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 368);
  *v4 = *v1;
  *(v3 + 376) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 216);
  if (v0)
  {
    v8 = sub_1000AE230;
  }

  else
  {
    v8 = sub_1000ADF10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000ADF10()
{
  sub_1000033DC();
  v1 = v0[43];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[30];
  v9 = v0[26];
  sub_10005A670();

  sub_100004B50();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100007A20();

  return v10();
}

uint64_t sub_1000AE02C()
{
  sub_100002BAC();
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 216);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000AE158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = *(v12 + 384);
  v14 = *(v12 + 344);
  swift_willThrow();
  sub_100005A10();
  os_activity_scope_leave((v14 + 24));
  swift_endAccess();
  v15 = *(v12 + 384);
  sub_100011D9C();

  sub_100013D48();
  sub_100001FBC();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1000AE230()
{
  v57 = v0;
  v0[22] = v0[47];
  v1 = v0[37];
  v2 = v0[35];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (!sub_10000887C())
  {
    v35 = v0[43];
    v34 = v0[44];
    v36 = v0[26];
    goto LABEL_7;
  }

  if ((*(v0[36] + 88))(v0[37], v0[35]) != enum case for ModelManagerError.ipcError(_:))
  {
    v35 = v0[43];
    v37 = v0[44];
    v38 = v0[26];
    (*(v0[36] + 8))(v0[37], v0[35]);
LABEL_7:
    v39 = v0[22];

    sub_10005A670();

    sub_100004B50();
    os_activity_scope_leave((v35 + 24));
    swift_endAccess();
    v40 = v0[47];
    sub_100011D9C();

    sub_100001F00();
    sub_1000135DC();

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[47];
  v4 = v0[45];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[31];
  v12 = v0[25];

  v13 = *(v6 + 96);
  v14 = sub_1000060A4();
  v15(v14);
  v16 = v5[1];
  v55 = *v5;
  v17 = *(v10 + 16);
  v17(v8, v12, v11);
  v17(v9, v12, v11);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[34];
  v22 = v0[31];
  v23 = v0[32];
  if (v20)
  {
    v52 = v0[31];
    v53 = v0[33];
    v24 = v0[29];
    v25 = v0[30];
    v26 = v0[28];
    v27 = swift_slowAlloc();
    v56 = sub_1000080A4();
    *v27 = 136315650;
    v54 = v19;
    RequestMetadata.id.getter();
    sub_10002E9D0();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v24 + 8))(v25, v26);
    v29 = *(v23 + 8);
    v29(v21, v52);
    v30 = sub_100001F70();
    sub_100004A3C(v30, v31, v32);
    sub_100003170();

    *(v27 + 4) = v28;
    *(v27 + 12) = 1024;
    v33 = RequestMetadata.subrequestID.getter();
    v29(v53, v52);
    *(v27 + 14) = v33;
    *(v27 + 18) = 2080;
    sub_100004A3C(v55, v16, &v56);
    sub_100001F0C();

    *(v27 + 20) = v33;
    _os_log_impl(&_mh_execute_header, v18, v54, "InferenceProvider requestInputStreamInference (%s : %u) failed with %s", v27, 0x1Cu);
    sub_10000BEE8();
    sub_100003420();
    sub_100012684();
  }

  else
  {
    v43 = *(v23 + 8);
    v43(v0[33], v0[31]);

    v43(v21, v22);
  }

  v44 = v0[35];
  sub_1000085DC();
  sub_10002EA7C(v45, v46);
  v0[50] = sub_10000C700();
  v47 = swift_task_alloc();
  v0[51] = v47;
  *v47 = v0;
  v47[1] = sub_1000AE6B8;
  v48 = v0[27];
  sub_100013E54();
  sub_1000135DC();

  return sub_1000A5930(v49);
}

uint64_t sub_1000AE6B8()
{
  sub_100002BAC();
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 216);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000AE7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = v12[50];
  v15 = v12[43];
  v14 = v12[44];
  v16 = v12[26];
  swift_willThrow();
  v17 = v12[22];

  sub_10005A670();

  sub_100004B50();
  os_activity_scope_leave((v15 + 24));
  swift_endAccess();
  v18 = v12[50];
  sub_100011D9C();

  sub_100013D48();
  sub_100001FBC();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1000AE8E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100004B70(sub_1000AE908, v2);
}

uint64_t sub_1000AE908()
{
  sub_100001ED0();
  sub_100026F54();
  v1[5] = v0;
  if (v0)
  {
    sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.willCancelActiveRequest(id:dueTo:));
    sub_100007BCC();
    v2 = swift_task_alloc();
    v1[6] = v2;
    *v2 = v1;
    v2[1] = sub_1000AE9E4;
    v3 = v1[3];
    v4 = sub_1000031B8(v1[2]);

    return v7(v4);
  }

  else
  {
    sub_100001F00();

    return v6();
  }
}

uint64_t sub_1000AE9E4()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
  }

  v9 = *(v3 + 40);

  sub_10000778C();

  return v10();
}

uint64_t sub_1000AEAD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100004B70(sub_1000AEAF4, v1);
}

uint64_t sub_1000AEAF4()
{
  sub_100001ED0();
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  if (v1)
  {
    sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.sendClientTerminated(for:));
    sub_100007BCC();
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1000AEBD4;
    v3 = sub_1000031B8(v0[2]);

    return v6(v3);
  }

  else
  {
    sub_100001F00();

    return v5();
  }
}

uint64_t sub_1000AEBD4()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100001F00();

  return v6();
}

uint64_t sub_1000AECD0()
{
  sub_100002BAC();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[12] = v3;
  sub_100002F44(v3);
  v1[13] = v4;
  v6 = *(v5 + 64);
  v1[14] = sub_100002C58();
  v7 = type metadata accessor for RequestKey();
  v1[15] = v7;
  sub_100002F44(v7);
  v1[16] = v8;
  v10 = *(v9 + 64);
  v1[17] = sub_100002C58();
  sub_1000071A8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000AEDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, NSObject *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26)
{
  sub_1000133FC();
  a25 = v27;
  a26 = v28;
  sub_10000C72C();
  a24 = v26;
  type metadata accessor for _OSActivity();
  v26[18] = swift_initStackObject();
  v26[19] = sub_10001B160("Awaiting end of stream", 22, 2);
  if (qword_1001B8900 != -1)
  {
    sub_100005C18();
  }

  v30 = v26[16];
  v29 = v26[17];
  v31 = v26[15];
  v32 = v26[10];
  v33 = v26[11];
  v34 = type metadata accessor for Logger();
  sub_10000641C(v34, qword_1001B9FA0);
  v35 = *(v30 + 16);
  v36 = sub_10000CC04();
  v37(v36);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v26[16];
  v42 = v26[17];
  v43 = v26[15];
  if (v40)
  {
    HIDWORD(a13) = v39;
    v44 = v26[13];
    v45 = v26[14];
    v46 = v26[12];
    a10 = v26[11];
    v47 = sub_1000267F8();
    a12 = sub_1000080A4();
    a14 = a12;
    *v47 = 136315394;
    a11 = v38;
    RequestKey.requestID.getter();
    sub_10002E9D0();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000294DC();
    (*(v44 + 8))(v45, v46);
    v48 = sub_10000E878();
    v49(v48, v43);
    v50 = sub_100036724();
    sub_100004A3C(v50, v51, v52);
    sub_10000E86C();

    sub_10001877C();
    v53 = type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v54, v55);
    sub_1000195C4();
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100004A3C(v56, v57, &a14);
    sub_100019130();
    *(v47 + 14) = v53;
    sub_10000C720();
    _os_log_impl(v58, v59, v60, v61, v62, 0x16u);
    swift_arrayDestroy();
    sub_100002BB8();
    sub_10000706C();
  }

  else
  {

    v63 = sub_10000E878();
    v64(v63, v43);
  }

  v65 = *(v26[11] + 112);
  v26[20] = v65;
  if (v65)
  {
    v66 = *(&async function pointer to dispatch thunk of InferenceProviderXPCSender.endOfStream(_:) + 1);

    v67 = swift_task_alloc();
    v26[21] = v67;
    *v67 = v26;
    v67[1] = sub_1000AF184;
    sub_1000031B8(v26[10]);
    sub_1000037A0();
  }

  else
  {
    sub_100003D34();
    sub_100005A10();
    os_activity_scope_leave(0x18);
    swift_endAccess();

    sub_100001F00();
    sub_1000037A0();
  }

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1000AF184()
{
  sub_100001ED0();
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 88);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_1000071A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000AF2D4()
{
  sub_100001ED0();
  sub_100003D34();
  sub_100005A10();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  sub_100001F00();

  return v1();
}

void sub_1000AF388(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = type metadata accessor for RequestKey();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B8900 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000641C(v12, qword_1001B9FA0);
  (*(v8 + 16))(v11, a1, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v15 = 136315138;
    RequestKey.requestID.getter();
    sub_10002E9D0();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v2;
    v19 = v18;
    (*(v3 + 8))(v6, v17);
    (*(v8 + 8))(v11, v7);
    v20 = sub_100004A3C(v16, v19, &v22);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "InferenceProvider await endOfStream (%s) finished", v15, 0xCu);
    sub_100003324(v21);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1000AF670()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  sub_1000071A8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000AF6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1000133FC();
  a25 = v27;
  a26 = v28;
  sub_10000C72C();
  a24 = v26;
  v29 = v26[5];
  v30 = *(v29 + 120);
  v26[6] = v30;
  if (v30)
  {
    v32 = v26[3];
    v31 = v26[4];
    v33 = *(v29 + 136);
    v26[7] = v33;
    objc_opt_self();
    sub_100003170();

    v34 = v30;
    v35 = sub_100005E98();
    v37 = [v35 v36];
    v26[8] = v37;
    sub_10000E2C0(0, &qword_1001BA458, RBSTerminateContext_ptr);
    a13 = 0;
    a14 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    a13 = 0xD00000000000002CLL;
    a14 = 0x8000000100176350;
    type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v38, v39);
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 8236;
    v41._object = 0xE200000000000000;
    String.append(_:)(v41);

    v42._countAndFlagsBits = v32;
    v42._object = v31;
    String.append(_:)(v42);

    v43 = sub_1000B0580();
    v26[9] = v43;
    v44 = sub_10000E2C0(0, &qword_1001BA460, RBSTerminateRequest_ptr);
    v45 = sub_1000B05F4(v37, v43);
    v26[2] = 0;
    v26[10] = v45;
    v46 = [v45 execute:v26 + 2];
    v47 = v26[2];
    if (v46)
    {
      v48 = qword_1001B8900;
      v49 = v47;
      if (v48 != -1)
      {
        sub_100005C18();
      }

      v51 = v26[4];
      v50 = v26[5];
      v52 = type metadata accessor for Logger();
      sub_100002FD0(v52, qword_1001B9FA0);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v56 = v26[3];
        v55 = v26[4];
        v57 = sub_1000267F8();
        a13 = sub_1000080A4();
        *v57 = 136315394;
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_100004A3C(v58, v59, &a13);
        sub_100019130();
        *(v57 + 4) = v29;
        *(v57 + 12) = 2080;
        v60 = sub_100005980();
        *(v57 + 14) = sub_100004A3C(v60, v61, v62);
        _os_log_impl(&_mh_execute_header, v53, v54, "Terminated inference provider %s, %s", v57, 0x16u);
        swift_arrayDestroy();
        sub_10000706C();
        sub_100002BB8();
      }
    }

    else
    {
      v72 = v47;
      sub_10001E4A8();
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1001B8900 != -1)
      {
        sub_100005C18();
      }

      v73 = v26[5];
      v74 = type metadata accessor for Logger();
      sub_100002FD0(v74, qword_1001B9FA0);

      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v53, v75))
      {

        goto LABEL_16;
      }

      v76 = sub_1000267F8();
      swift_slowAlloc();
      v77 = sub_100003890();
      a13 = v77;
      *v76 = 136315394;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_100004A3C(v78, v79, &a13);
      sub_100019130();
      *(v76 + 4) = v29;
      *(v76 + 12) = 2112;
      swift_errorRetain();
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 14) = v80;
      *v73 = v80;
      _os_log_impl(&_mh_execute_header, v53, v75, "Unable to terminated inference provider %s, %@", v76, 0x16u);
      sub_10000ECD8(v73, &qword_1001B8F68, &qword_10016FB80);
      sub_10000706C();
      sub_100003324(v77);
      sub_100002BB8();
      sub_100002BB8();
    }

LABEL_16:
    v81 = type metadata accessor for TimeoutExecutor();
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    v84 = swift_allocObject();
    v26[11] = v84;
    swift_defaultActor_initialize();
    sub_100065020(&qword_1001B9CE0, &qword_100170F90);
    sub_100003978();
    sub_100009BFC(v85, v86, v87, v88);
    *(v84 + OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_hitTimeout) = 0;
    v89 = swift_allocObject();
    v26[12] = v89;
    *(v89 + 16) = v33;

    v90 = swift_task_alloc();
    v26[13] = v90;
    *v90 = v26;
    v90[1] = sub_1000AFD0C;
    sub_1000031B8(0x8AC7230489E80000);
    sub_1000037A0();

    return sub_100126B04(v91, v92, v93, v94);
  }

  sub_100001F00();
  sub_1000037A0();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1000AFD0C()
{
  sub_10000CB70();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  sub_100004B40();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *v1;
  sub_100002B9C();
  *v9 = v8;
  *(v4 + 112) = v0;

  if (v0)
  {
    v10 = *(v4 + 40);
  }

  else
  {
    v12 = *(v4 + 88);
    v11 = *(v4 + 96);
    v13 = *(v4 + 40);

    *(v4 + 136) = v3 & 1;
  }

  sub_100004CC8();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000AFE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000636C();
  if (*(v14 + 136) == 1)
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v15 = type metadata accessor for Logger();
    sub_100002FD0(v15, qword_1001B9FA0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (sub_100002F80(v17))
    {
      v18 = sub_100007648();
      sub_10000A240(v18);
      sub_1000059D8(&_mh_execute_header, v19, v20, "terminatedExtensionError TimeoutExecutor timed out");
      sub_100002F64();
    }

    v21 = *(v14 + 72);
    v22 = *(v14 + 80);

    v23 = type metadata accessor for ModelManagerError();
    sub_1000085DC();
    sub_10002EA7C(v24, v25);
    sub_10000A418();
    sub_100006098(v23);
    (*(v26 + 104))();
    swift_willThrow();

    v27 = *(v14 + 56);
    v28 = *(v14 + 48);

    sub_100013D48();
    goto LABEL_12;
  }

  v30 = *(*(v14 + 40) + 144);
  *(v14 + 120) = v30;
  if (!v30)
  {
    v39 = *(v14 + 72);
    v38 = *(v14 + 80);
    v40 = *(v14 + 56);
    v41 = *(v14 + 48);

    sub_100013D48();
LABEL_12:

    return v29();
  }

  v31 = async function pointer to Task<>.value.getter[1];

  v32 = swift_task_alloc();
  *(v14 + 128) = v32;
  *v32 = v14;
  v32[1] = sub_1000B0114;

  return Task<>.value.getter(v32, v30, &type metadata for () + 8, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000B0114()
{
  sub_100001ED0();
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 40);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_1000071A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000B0264()
{
  sub_10000CB70();
  sub_100003884();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);

  sub_100007A20();
  sub_100004CC8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000B030C()
{
  sub_100001ED0();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  v7 = *(v0 + 48);

  sub_100001F00();

  return v8();
}

void sub_1000B03C8()
{
  if (!qword_1001B9FF0)
  {
    type metadata accessor for InferenceProviderExtensionConnection(255);
    sub_10002EA7C(&unk_1001B9FF8, type metadata accessor for InferenceProviderExtensionConnection);
    v0 = type metadata accessor for WorkQueue();
    if (!v1)
    {
      atomic_store(v0, &qword_1001B9FF0);
    }
  }
}

uint64_t sub_1000B0484()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B050C()
{
  result = type metadata accessor for BuiltInInferenceProvider();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1000B0580()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithExplanation:v1];

  return v2;
}

id sub_1000B05F4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPredicate:a1 context:a2];

  return v4;
}

uint64_t sub_1000B0650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a1)
  {
    v16 = async function pointer to Task<>.value.getter[1];
    v17 = swift_task_alloc();
    *(v14 + 16) = v17;
    *v17 = v14;
    v17[1] = sub_1000B0728;

    return Task<>.value.getter(v17, a1, &type metadata for () + 8, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v23 = *(v14 + 8);

    return v23();
  }
}

uint64_t sub_1000B0728()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_10003A4D4, 0, 0);
}

uint64_t sub_1000B0814()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000B08AC;

  return sub_1000A982C();
}

uint64_t sub_1000B08AC()
{
  sub_100002BAC();
  v3 = v2;
  sub_100001EF4();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;

  v8 = *(v6 + 8);
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_1000B09A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000B0A3C;

  return sub_1000AA54C();
}

uint64_t sub_1000B0A3C()
{
  sub_100001ED0();
  sub_1000135C4();
  sub_100001EF4();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = sub_100002CBC();
  }

  return v7(v6);
}

uint64_t sub_1000B0B34()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_1000ABBF8();
}

uint64_t sub_1000B0BF8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006F558;

  return sub_1000AD670();
}

uint64_t sub_1000B0CBC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_1000ACB3C();
}

uint64_t sub_1000B0D54()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000B0D74, v2, 0);
}

uint64_t sub_1000B0D90()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000B0DB0, v2, 0);
}

uint64_t sub_1000B0DB0()
{
  sub_100002BAC();
  v1 = *(v0 + 16);
  sub_1000A5928();
  sub_100001F00();

  return v2();
}

uint64_t sub_1000B0E08()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_1000A79EC();
}

uint64_t sub_1000B0EB0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10006FA64;

  return sub_1000AE8E8(a1, a2);
}

uint64_t sub_1000B0F58(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006FA64;

  return sub_1000AEAD8(a1);
}

uint64_t sub_1000B0FF0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_1000AECD0();
}

uint64_t sub_1000B1088()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_1000AF670();
}

uint64_t sub_1000B1130()
{
  v0 = sub_10000C1A0();
  v1 = *(type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(v0) + 20);
  return static UUID.== infix(_:_:)() & 1;
}

Swift::Int sub_1000B11A0()
{
  Hasher.init(_seed:)();
  v1 = v0 + *(type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0) + 20);
  UUID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B11F8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = v2 + *(a2 + 20);
  UUID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100002BAC();
  v16 = *(v14 + 16);
  v17 = swift_task_alloc();
  *(v15 + 16) = v17;
  *v17 = v15;
  sub_100004B28(v17);

  return sub_1000B0650(v16, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

BOOL sub_1000B1318()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_1000B1358()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10000501C(v1);

  return sub_10005354C();
}

uint64_t sub_1000B13E4()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10000501C(v1);

  return sub_10005354C();
}

uint64_t sub_1000B1470()
{
  sub_1000135C4();
  v0 = sub_100065020(&qword_1001BA4C8, &qword_100171028);
  sub_100002F04(v0);
  v2 = *(v1 + 80);
  v3 = sub_100002CBC();

  return sub_1000A6880(v3, v4);
}

uint64_t sub_1000B14F0()
{
  sub_100002BAC();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  sub_100004B28(v2);

  return sub_1000A61D8(v0);
}

uint64_t sub_1000B1578()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10000501C(v1);

  return sub_1000A5898();
}

uint64_t sub_1000B1604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1668()
{
  sub_10000639C();
  sub_100003884();
  sub_1000135C4();
  v1 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  sub_100002F04(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = sub_100004B00(v5);
  *v6 = v7;
  v6[1] = sub_10006FA64;
  sub_100003D20();

  return sub_1000A4684(v8, v9, v10);
}

void *sub_1000B1740(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

    sub_10008BEEC(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1000B17D0()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10000501C(v1);

  return sub_1000A9350();
}

uint64_t sub_1000B1904()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BA4D0);
  sub_10000641C(v0, qword_1001BA4D0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B1978()
{
  sub_100002BAC();
  sub_10000A5D8(v1, v2);
  v3 = type metadata accessor for RemoteIPCRequest();
  v0[5] = v3;
  sub_100002F44(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = sub_100002C58();
  v7 = sub_100003000();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000B1A18()
{
  sub_100002BAC();
  v1 = v0[7];
  v2 = v0[3];
  TaskCancellingXPCReceivedMessage.decode()();
  swift_task_alloc();
  sub_100004B34();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_1000B1AB8;
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[2];

  return sub_1000B1D1C(v7, v6);
}

uint64_t sub_1000B1AB8()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v8 + 72) = v0;

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000B1BB4()
{
  sub_100002BAC();
  v0 = sub_100005C38();
  v1(v0);

  sub_100001F00();

  return v2();
}

uint64_t sub_1000B1C1C()
{
  sub_100001ED0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v2[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v2[4] = sub_1000B4F30(&qword_1001B9A10);
  v2[5] = sub_100005804(&qword_1001B99F8);
  sub_10000366C(v2);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  swift_storeEnumTagMultiPayload();

  v3 = sub_100005C38();
  v4(v3);

  sub_100001F00();

  return v5();
}

uint64_t sub_1000B1D1C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_100003000();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000B1D48()
{
  sub_100001ED0();
  v1 = v0[9];
  sub_1000B23E0(v0 + 2);
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_100003370(v0 + 2, v3);
  swift_task_alloc();
  sub_100004B34();
  v0[10] = v5;
  *v5 = v6;
  v5[1] = sub_1000B1E08;
  v7 = v0[7];
  v8 = v0[8];

  return sub_1000B2738(v7, v4, v8, v3, v2);
}

uint64_t sub_1000B1E08()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000B1F04()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100001F00();

  return v1();
}

uint64_t sub_1000B1F60()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100001F00();
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_1000B1FBC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1001B8908 != -1)
  {
    sub_1000050B4();
  }

  v3 = type metadata accessor for Logger();
  sub_10000641C(v3, qword_1001BA4D0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    sub_100007698();
    v6 = sub_1000039DC();
    *v1 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v7);
    _os_log_impl(&_mh_execute_header, v4, v5, "Error during decoding the remoteIPC message %@", v1, 0xCu);
    sub_10000C790(v6, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  a1[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  a1[4] = sub_100005804(&qword_1001B99F8);
  v8 = sub_10000366C(a1);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  _print_unlocked<A, B>(_:_:)();
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = enum case for ModelManagerError.ipcError(_:);
  v10 = type metadata accessor for ModelManagerError();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000B21AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_1000B1978();
}

uint64_t sub_1000B2258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to TaskCancellablePeerHandler.handleIncomingRequestWithReply(_:callback:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10006FA64;

  return TaskCancellablePeerHandler.handleIncomingRequestWithReply(_:callback:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1000B2320(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to TaskCancellablePeerHandler.handleCancellation()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10006F558;

  return TaskCancellablePeerHandler.handleCancellation()(a1, a2);
}

uint64_t sub_1000B23E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteIPCRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for RemoteIPCRequest.isVersionSupported(_:))
  {
    (*(v5 + 96))(v8, v4);
    IsVersionSupported = type metadata accessor for RemoteIPCRequest.IsVersionSupported();
    a1[3] = IsVersionSupported;
    v11 = &unk_1001BA5E8;
    v12 = &type metadata accessor for RemoteIPCRequest.IsVersionSupported;
LABEL_11:
    a1[4] = sub_1000B5058(v11, v12);
    v13 = sub_10000366C(a1);
    return (*(*(IsVersionSupported - 8) + 32))(v13, v8, IsVersionSupported);
  }

  if (v9 == enum case for RemoteIPCRequest.executeRemoteRequest(_:))
  {
    (*(v5 + 96))(v8, v4);
    IsVersionSupported = type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest();
    a1[3] = IsVersionSupported;
    v11 = &unk_1001BA5E0;
    v12 = &type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest;
    goto LABEL_11;
  }

  if (v9 == enum case for RemoteIPCRequest.executeRemoteStreamingRequest(_:))
  {
    (*(v5 + 96))(v8, v4);
    IsVersionSupported = type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest();
    a1[3] = IsVersionSupported;
    v11 = &unk_1001BA5D8;
    v12 = &type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest;
    goto LABEL_11;
  }

  if (v9 == enum case for RemoteIPCRequest.fetchNextStreamResult(_:))
  {
    (*(v5 + 96))(v8, v4);
    IsVersionSupported = type metadata accessor for RemoteIPCRequest.FetchNextStreamingResult();
    a1[3] = IsVersionSupported;
    v11 = &unk_1001BA5D0;
    v12 = &type metadata accessor for RemoteIPCRequest.FetchNextStreamingResult;
    goto LABEL_11;
  }

  if (v9 == enum case for RemoteIPCRequest.checkAvailabilityRequest(_:))
  {
    (*(v5 + 96))(v8, v4);
    IsVersionSupported = type metadata accessor for RemoteIPCRequest.CheckAvailabilityRequest();
    a1[3] = IsVersionSupported;
    v11 = &unk_1001BA5C8;
    v12 = &type metadata accessor for RemoteIPCRequest.CheckAvailabilityRequest;
    goto LABEL_11;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1000B2738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return _swift_task_switch(sub_1000B2760, 0, 0);
}

uint64_t sub_1000B2760()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = *(v1 + 16);
  v5 = *(v1 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModelManagerError();
  sub_1000B5058(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
  v3[3] = type metadata accessor for IPCResult();
  v6 = sub_1000352C0();
  v7 = sub_1000352C0();
  v8 = sub_1000B5058(&qword_1001B9A00, &type metadata accessor for ModelManagerError);
  sub_100005694();
  v10 = sub_1000B5058(v9, &type metadata accessor for ModelManagerError);
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v10;
  v3[4] = swift_getWitnessTable();
  v0[6] = v6;
  v0[7] = v7;
  v0[8] = v8;
  v0[9] = v10;
  v3[5] = swift_getWitnessTable();
  v11 = sub_10000366C(v3);
  v20 = (v4 + *v4);
  v12 = v4[1];
  swift_task_alloc();
  sub_100004B34();
  v0[15] = v13;
  *v13 = v14;
  v13[1] = sub_1000B29EC;
  v15 = v0[13];
  v16 = v0[14];
  v18 = v0[11];
  v17 = v0[12];

  return v20(v11, v17, v15, v16);
}

uint64_t sub_1000B29EC()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v8 + 128) = v0;

  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    sub_100001F00();

    return v12();
  }
}

uint64_t sub_1000B2B04()
{
  sub_100002BAC();
  sub_1000B5008(*(v0 + 80));
  sub_100001F00();
  v2 = *(v0 + 128);

  return v1();
}

uint64_t sub_1000B2B64()
{
  sub_100002BAC();
  *(v0 + 16) = v1;
  v2 = sub_100065020(&qword_1001BA600, &unk_100172720);
  sub_100002F04(v2);
  v4 = *(v3 + 64);
  *(v0 + 24) = sub_100002C58();
  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000B2BE8()
{
  sub_100001ED0();
  if (qword_1001B8908 != -1)
  {
    sub_1000050B4();
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BA4D0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received availability check request, automatically replying true", v4, 2u);
  }

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  static RemoteInterfaceInformation.currentInterface.getter();
  v7 = type metadata accessor for RemoteInterfaceInformation();
  sub_100009BFC(v5, 0, 1, v7);
  sub_1000185B8();
  RemoteIPCRequest.CheckAvailabilityRequest.Response.init(interface:available:)();
  sub_100065020(&qword_1001BA620, &unk_1001712E0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v8();
}

uint64_t sub_1000B2D48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_1000B2B64();
}

uint64_t sub_1000B2DE0(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA4F8, &type metadata accessor for RemoteIPCRequest.CheckAvailabilityRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B2E38()
{
  sub_100002BAC();
  sub_10000A5D8(v1, v2);
  v3 = type metadata accessor for Version();
  v0[5] = v3;
  sub_100002F44(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = sub_100002C58();
  v7 = sub_100065020(&qword_1001BA600, &unk_100172720);
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  v0[8] = sub_10000BF98();
  v0[9] = swift_task_alloc();
  v10 = type metadata accessor for RemoteInterfaceInformation();
  v0[10] = v10;
  sub_100002F44(v10);
  v0[11] = v11;
  v13 = *(v12 + 64);
  v0[12] = sub_100002C58();
  v14 = sub_100003000();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000B2F5C()
{
  sub_100001ED0();
  v2 = v0[9];
  v1 = v0[10];
  sub_10000EE44();
  RemoteIPCRequest.IsVersionSupported.interface.getter();
  sub_10000F0D8();
  if (v3 == 1)
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[12];
    static RemoteInterfaceInformation.unknownInterface.getter();
    sub_100012A24();
    if (!v7)
    {
      sub_10000C790(v0[9], &qword_1001BA600, &unk_100172720);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  }

  v8 = v0[7];
  v9 = v0[4];
  RemoteIPCRequest.IsVersionSupported.version.getter();
  RemoteIPCRequest.IsVersionSupported.assetBundleIdentifier.getter();
  v0[13] = v10;
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1000B3084;
  v12 = v0[12];
  v13 = v0[7];

  return sub_1000EFF7C();
}

uint64_t sub_1000B3084(char a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_100002B9C();
  *v6 = v5;
  v7 = v4[14];
  v8 = v4[13];
  *v6 = *v2;
  v5[15] = v1;

  v9 = v4[12];
  v10 = v4[11];
  v11 = v4[10];
  v12 = v4[7];
  v13 = v4[6];
  v14 = v4[5];
  if (!v1)
  {
    *(v5 + 128) = a1 & 1;
  }

  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);
  sub_1000059F8();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1000B3294()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  static RemoteInterfaceInformation.currentInterface.getter();
  sub_100009BFC(v3, 0, 1, v2);
  RemoteIPCRequest.IsVersionSupported.Response.init(interface:supported:)();
  sub_1000078A0();
  sub_100065020(&qword_1001BA618, &qword_1001712D0);
  sub_100013808();
  swift_storeEnumTagMultiPayload();

  sub_100001F00();
  sub_100003D20();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000B336C()
{
  sub_10000639C();
  sub_100003884();
  if (qword_1001B8908 != -1)
  {
    sub_1000050B4();
  }

  v1 = *(v0 + 120);
  v2 = type metadata accessor for Logger();
  sub_100007C3C(v2, qword_1001BA4D0);
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013E64();
  if (sub_1000124B4())
  {
    v4 = *(v0 + 120);
    sub_100007698();
    v5 = sub_1000039DC();
    sub_100013730(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v6);
    sub_1000064D0(&_mh_execute_header, v7, v8, "Failed to execute isVersionSupported with error: %@");
    sub_10000C790(v5, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  v9 = *(v0 + 120);
  v10 = *(v0 + 16);

  sub_1000185B8();
  ModelManagerError.init(wrapping:)();
  sub_1000078A0();
  sub_100065020(&qword_1001BA618, &qword_1001712D0);
  sub_100013808();
  swift_storeEnumTagMultiPayload();

  sub_100001F00();
  sub_100003D20();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000B34C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B5110;

  return sub_1000B2E38();
}

uint64_t sub_1000B3570(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA500, &type metadata accessor for RemoteIPCRequest.IsVersionSupported);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B35C8()
{
  sub_100002BAC();
  sub_10000A5D8(v1, v2);
  v3 = type metadata accessor for Version();
  v0[5] = v3;
  sub_100002F44(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = sub_100002C58();
  v7 = sub_100065020(&qword_1001BA600, &unk_100172720);
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  v0[8] = sub_10000BF98();
  v0[9] = swift_task_alloc();
  v10 = type metadata accessor for RemoteInterfaceInformation();
  v0[10] = v10;
  sub_100002F44(v10);
  v0[11] = v11;
  v13 = *(v12 + 64);
  v0[12] = sub_100002C58();
  v14 = type metadata accessor for ClientData();
  v0[13] = v14;
  sub_100002F44(v14);
  v0[14] = v15;
  v17 = *(v16 + 64);
  v0[15] = sub_10000BF98();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v18 = sub_100003000();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1000B3750()
{
  sub_10000639C();
  sub_100003884();
  v2 = v0[9];
  v1 = v0[10];
  sub_10000EE44();
  RemoteIPCRequest.ExecuteRemoteRequest.interface.getter();
  sub_10000F0D8();
  if (v3 == 1)
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[12];
    static RemoteInterfaceInformation.unknownInterface.getter();
    sub_100012A24();
    if (!v7)
    {
      sub_10000C790(v0[9], &qword_1001BA600, &unk_100172720);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  }

  v8 = v0[16];
  v9 = v0[7];
  v10 = v0[4];
  RemoteIPCRequest.ExecuteRemoteRequest.requestVersion.getter();
  v11 = RemoteIPCRequest.ExecuteRemoteRequest.bundleIdentifier.getter();
  sub_10000A438(v11, v12);
  RemoteIPCRequest.ExecuteRemoteRequest.clientData.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[19] = v13;
  *v13 = v14;
  v13[1] = sub_1000B386C;
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[12];
  v18 = v0[7];
  sub_10000343C();
  sub_100003D20();

  return sub_1000F0B18();
}

uint64_t sub_1000B386C()
{
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = v5[19];
  v7 = v5[18];
  v28 = v5[16];
  sub_100007A30();
  v9 = *(v8 + 112);
  v27 = *(v10 + 104);
  sub_100007A30();
  v30 = *(v11 + 96);
  sub_100007A30();
  v13 = *(v12 + 88);
  v29 = *(v14 + 80);
  sub_100007A30();
  v16 = *(v15 + 56);
  v18 = *(v17 + 48);
  v19 = *(v17 + 40);
  v20 = *v1;
  sub_100002B9C();
  *v21 = v20;
  v3[20] = v0;

  v22 = *(v9 + 8);
  v3[21] = v22;
  v3[22] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v28, v27);
  (*(v18 + 8))(v16, v19);
  (*(v13 + 8))(v30, v29);
  sub_1000059F8();

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_1000B3AAC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[2];
  static RemoteInterfaceInformation.currentInterface.getter();
  sub_100009BFC(v8, 0, 1, v7);
  (*(v5 + 16))(v4, v3, v6);
  RemoteIPCRequest.ExecuteRemoteRequest.Response.init(interface:result:)();
  v2(v3, v6);
  sub_10000A888();
  sub_100065020(&qword_1001BA610, &qword_1001712C0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v10();
}

uint64_t sub_1000B3BF0()
{
  if (qword_1001B8908 != -1)
  {
    sub_1000050B4();
  }

  v1 = *(v0 + 160);
  v2 = type metadata accessor for Logger();
  sub_100007C3C(v2, qword_1001BA4D0);
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013E64();
  if (sub_1000124B4())
  {
    v4 = *(v0 + 160);
    sub_100007698();
    v5 = sub_1000039DC();
    sub_100013730(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v6);
    sub_1000064D0(&_mh_execute_header, v7, v8, "Failed to execute remote oneShotRequest with error: %@");
    sub_10000C790(v5, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 16);

  sub_1000185B8();
  ModelManagerError.init(wrapping:)();
  sub_10000A888();
  sub_100065020(&qword_1001BA610, &qword_1001712C0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v11();
}

uint64_t sub_1000B3D7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B5110;

  return sub_1000B35C8();
}

uint64_t sub_1000B3E24(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA508, &type metadata accessor for RemoteIPCRequest.ExecuteRemoteRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B3E7C()
{
  sub_100002BAC();
  sub_10000A5D8(v1, v2);
  v3 = type metadata accessor for ClientData();
  v0[5] = v3;
  sub_100002F44(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = sub_100002C58();
  v7 = type metadata accessor for Version();
  v0[8] = v7;
  sub_100002F44(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_100002C58();
  v11 = sub_100065020(&qword_1001BA600, &unk_100172720);
  sub_100002F04(v11);
  v13 = *(v12 + 64);
  v0[11] = sub_100002C58();
  v14 = type metadata accessor for RemoteInterfaceInformation();
  v0[12] = v14;
  sub_100002F44(v14);
  v0[13] = v15;
  v17 = *(v16 + 64);
  v0[14] = sub_100002C58();
  v18 = type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response();
  v0[15] = v18;
  sub_100002F44(v18);
  v0[16] = v19;
  v21 = *(v20 + 64);
  v0[17] = sub_100002C58();
  v22 = sub_100003000();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_1000B402C()
{
  sub_10000639C();
  sub_100003884();
  v2 = v0[11];
  v1 = v0[12];
  sub_10000EE44();
  RemoteIPCRequest.ExecuteRemoteStreamingRequest.interface.getter();
  sub_10000F0D8();
  if (v3 == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[14];
    static RemoteInterfaceInformation.unknownInterface.getter();
    sub_100012A24();
    if (!v7)
    {
      sub_10000C790(v0[11], &qword_1001BA600, &unk_100172720);
    }
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  }

  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[4];
  RemoteIPCRequest.ExecuteRemoteStreamingRequest.requestVersion.getter();
  v11 = RemoteIPCRequest.ExecuteRemoteStreamingRequest.bundleIdentifier.getter();
  sub_10000A438(v11, v12);
  RemoteIPCRequest.ExecuteRemoteStreamingRequest.clientData.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[19] = v13;
  *v13 = v14;
  v13[1] = sub_1000B414C;
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[10];
  v18 = v0[7];
  sub_10000343C();
  sub_100003D20();

  return sub_1000F1128();
}

uint64_t sub_1000B414C()
{
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[18];
  v27 = v4[14];
  sub_100007A30();
  v8 = *(v7 + 104);
  v26 = *(v9 + 96);
  sub_100007A30();
  v25 = *(v10 + 80);
  sub_100007A30();
  v12 = *(v11 + 72);
  v14 = v13[8];
  v15 = v13[7];
  v16 = v13[6];
  v17 = v13[5];
  v18 = *v1;
  sub_100002B9C();
  *v19 = v18;
  *(v20 + 160) = v0;

  (*(v16 + 8))(v15, v17);
  (*(v12 + 8))(v25, v14);
  (*(v8 + 8))(v27, v26);
  sub_1000059F8();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1000B4384()
{
  sub_100003884();
  (*(v0[16] + 32))(v0[2], v0[17], v0[15]);
  sub_1000088A0();
  sub_100065020(&qword_1001BA608, &qword_1001712B0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v1();
}

uint64_t sub_1000B4450()
{
  sub_100003884();
  if (qword_1001B8908 != -1)
  {
    sub_1000050B4();
  }

  v1 = *(v0 + 160);
  v2 = type metadata accessor for Logger();
  sub_100007C3C(v2, qword_1001BA4D0);
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013E64();
  if (sub_1000124B4())
  {
    v4 = *(v0 + 160);
    sub_100007698();
    v5 = sub_1000039DC();
    sub_100013730(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v6);
    sub_1000064D0(&_mh_execute_header, v7, v8, "Failed to execute remote streamingRequest with error: %@");
    sub_10000C790(v5, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 16);

  sub_1000185B8();
  ModelManagerError.init(wrapping:)();
  sub_1000088A0();
  sub_100065020(&qword_1001BA608, &qword_1001712B0);
  swift_storeEnumTagMultiPayload();

  sub_100001F00();

  return v11();
}

uint64_t sub_1000B45C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B4668;

  return sub_1000B3E7C();
}

uint64_t sub_1000B4668()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_100001F00();

  return v5();
}

uint64_t sub_1000B474C(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA510, &type metadata accessor for RemoteIPCRequest.ExecuteRemoteStreamingRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B47A4()
{
  sub_100002BAC();
  sub_10000A5D8(v1, v2);
  v3 = type metadata accessor for RemoteInterfaceInformation();
  v0[5] = v3;
  sub_100002F44(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = sub_10000BF98();
  v0[8] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  v0[9] = sub_10000BF98();
  v0[10] = swift_task_alloc();
  v10 = sub_100003000();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000B4888()
{
  sub_100001ED0();
  v1 = v0[8];
  v2 = v0[4];
  v3 = *(v0[3] + 16);
  RemoteIPCRequest.FetchNextStreamingResult.interface.getter();
  v4 = type metadata accessor for UUID();
  v0[11] = v4;
  sub_100002F44(v4);
  v0[12] = v5;
  v7 = *(v6 + 64);
  v0[13] = sub_100002C58();
  RemoteIPCRequest.FetchNextStreamingResult.requestId.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[14] = v8;
  *v8 = v9;
  v8[1] = sub_1000B4990;
  v10 = v0[10];
  v11 = v0[8];

  return sub_1000F24DC();
}

uint64_t sub_1000B4990()
{
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = v5[6];
  v12 = v5[5];
  v13 = *v1;
  sub_100002B9C();
  *v14 = v13;
  *(v3 + 120) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v11 + 8))(v10, v12);
  if (!v0)
  {
    v15 = *(v3 + 104);
  }

  sub_1000059F8();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1000B4B64()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[2];
  static RemoteInterfaceInformation.currentInterface.getter();
  sub_1000B50A0(v2, v1);
  RemoteIPCRequest.FetchNextStreamingResult.Response.init(interface:result:)();
  sub_10000C790(v2, &qword_1001BA5F0, &qword_100171290);
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[2];
  sub_100065020(&qword_1001BA5F8, &qword_100171298);
  sub_100013808();
  swift_storeEnumTagMultiPayload();

  sub_100001F00();
  sub_100003D20();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1000B4C54()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[13];

  if (qword_1001B8908 != -1)
  {
    sub_1000050B4();
  }

  v2 = v0[15];
  v3 = type metadata accessor for Logger();
  sub_100007C3C(v3, qword_1001BA4D0);
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013E64();
  if (sub_1000124B4())
  {
    v5 = v0[15];
    sub_100007698();
    v6 = sub_1000039DC();
    sub_100013730(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    sub_100001FD4(v7);
    sub_1000064D0(&_mh_execute_header, v8, v9, "Failed to fetch next streaming result with error: %@");
    sub_10000C790(v6, &qword_1001B8F68, &qword_10016FB80);
    sub_100004B78();
    sub_10000706C();
  }

  v10 = v0[15];
  v11 = v0[2];

  sub_1000185B8();
  ModelManagerError.init(wrapping:)();
  v12 = v0[9];
  v13 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[2];
  sub_100065020(&qword_1001BA5F8, &qword_100171298);
  sub_100013808();
  swift_storeEnumTagMultiPayload();

  sub_100001F00();
  sub_100003D20();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1000B4DC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1000B47A4();
}

uint64_t sub_1000B4E6C(uint64_t a1)
{
  result = sub_1000B5058(&qword_1001BA518, &type metadata accessor for RemoteIPCRequest.FetchNextStreamingResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B4F30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B99F0, &qword_100170530);
    sub_1000B5058(&qword_1001B9A00, &type metadata accessor for ModelManagerError);
    sub_100005694();
    sub_1000B5058(v3, &type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1000B5008(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_1000B5058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B50A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000B5114(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LoadState();
  v3 = sub_100002BDC(State);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v10 = v9 - v8;
  v46 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v11 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  sub_100002B8C();
  v50 = v13 - v12;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_1000050D4();
    sub_1000B5AE0(v14, v15);
    Set.Iterator.init(_cocoa:)();
    a2 = v56;
    v16 = v57;
    v17 = v58;
    v18 = v59;
    v19 = v60;
  }

  else
  {
    v16 = a2 + 56;
    v20 = *(a2 + 56);
    v17 = ~(-1 << *(a2 + 32));
    sub_10000A5E8();
    v19 = v21 & v22;

    v18 = 0;
  }

  v44 = v17;
  v23 = (v17 + 64) >> 6;
  v48 = enum case for LoadState.unloaded(_:);
  v47 = (v5 + 104);
  v49 = a2;
  v24 = v50;
  while (1)
  {
    v25 = v19;
    v26 = v18;
    if ((a2 & 0x8000000000000000) == 0)
    {
      break;
    }

    v30 = __CocoaSet.Iterator.next()();
    v29 = State;
    if (!v30)
    {
      goto LABEL_29;
    }

    v52 = v30;
    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v19 = v54;
    v24 = v50;
    if (!v54)
    {
      goto LABEL_29;
    }

LABEL_14:
    v45 = v25;
    v31 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_10001938C(v31 + v19, v24);
    (*v47)(v10, v48, v29);
    sub_1000085F4();
    v10 = sub_1000B5AE0(&dword_1001BA628, v32);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v54 == v52 && v55 == v53)
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        v42 = sub_100011374();
        v43(v42, State);
        sub_1000193F0(v50);

        a2 = v49;
LABEL_30:
        v25 = v45;
LABEL_29:
        sub_100019334(a2, v16, v44, v26, v25);
        return;
      }
    }

    v16 = v50;
    v35 = v50 + *(v46 + 20);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    a2 = v55;
    v24 = v53;
    if (v54 == v52 && v55 == v53)
    {

      v40 = sub_100011374();
      v41(v40, State);
      sub_1000193F0(v50);

      sub_100002CC8();
    }

    else
    {
      v10 = State;
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v38 = sub_100011374();
      v39(v38, State);
      sub_1000193F0(v50);

      sub_100002CC8();
      if ((v37 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  v27 = v18;
  v28 = v19;
  v29 = State;
  if (v19)
  {
LABEL_10:
    v19 = *(*(a2 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v28)))));

    if (!v19)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v18 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      v25 = 0;
      goto LABEL_29;
    }

    v28 = *(v16 + 8 * v18);
    ++v27;
    if (v28)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void *sub_1000B55EC(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LoadState();
  v4 = sub_100002BDC(State);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002B8C();
  v11 = v10 - v9;
  v47 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v12 = *(*(v47 - 1) + 64);
  __chkstk_darwin(v47);
  sub_100002B8C();
  v49 = v14 - v13;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_1000050D4();
    sub_1000B5AE0(v15, v16);
    result = Set.Iterator.init(_cocoa:)();
    a2 = v54;
    v18 = v55;
    v19 = v56;
    v20 = v57;
    v21 = v58;
  }

  else
  {
    v18 = a2 + 56;
    v22 = *(a2 + 56);
    v19 = ~(-1 << *(a2 + 32));
    sub_10000A5E8();
    v21 = v23 & v24;

    v20 = 0;
  }

  v42 = v19;
  v25 = (v19 + 64) >> 6;
  v45 = enum case for LoadState.loaded(_:);
  v43 = (v6 + 8);
  v44 = (v6 + 104);
  v46 = a2;
  while (a2 < 0)
  {
    v31 = __CocoaSet.Iterator.next()();
    if (!v31 || (v50 = v31, type metadata accessor for InferenceProviderAsset(0), swift_dynamicCast(), v30 = v52, v28 = v20, v29 = v21, !v52))
    {
LABEL_35:
      sub_100019334(a2, v18, v42, v20, v21);
      return _swiftEmptyArrayStorage;
    }

LABEL_14:
    v48 = v29;
    v32 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_10001938C(v32 + v30, v49);
    (*v44)(v11, v45, State);
    sub_1000085F4();
    sub_1000B5AE0(&dword_1001BA628, v33);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v52 == v50 && v53 == v51)
    {
LABEL_25:

      goto LABEL_26;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
LABEL_26:
      (*v43)(v11, State);
      v39 = v49;
LABEL_27:
      if (*(*(v39 + v47[12]) + 16))
      {
        goto LABEL_28;
      }

      v40 = *(v39 + v47[16]);
      sub_1000193F0(v39);
      a2 = v46;
      if (v40 == 1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v41 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
      }

      v20 = v28;
      v21 = v48;
    }

    else
    {
      v36 = v49 + v47[5];
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v52 == v50 && v53 == v51)
      {
        goto LABEL_25;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v43)(v11, State);
      v39 = v49;
      if (v38)
      {
        goto LABEL_27;
      }

LABEL_28:
      sub_1000193F0(v39);

      v20 = v28;
      v21 = v48;
      a2 = v46;
    }
  }

  v26 = v20;
  v27 = v21;
  v28 = v20;
  if (v21)
  {
LABEL_10:
    v29 = (v27 - 1) & v27;
    v30 = *(*(a2 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

    if (!v30)
    {
      goto LABEL_35;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      v21 = 0;
      goto LABEL_35;
    }

    v27 = *(v18 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B5AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B5B28()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BA630);
  sub_10000641C(v0, qword_1001BA630);
  return generalLogHandle.getter();
}

double sub_1000B5B74@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BuiltInInferenceProvider();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BA4FC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *(v18 + 1);

      v39 = *(sub_100065020(&qword_1001BA9F8, &qword_100171570) + 48);
      v21 = type metadata accessor for UUID();
      v41 = &v38;
      v22 = *(v21 - 8);
      v23 = *(v22 + 64);
      __chkstk_darwin(v21);
      v40 = v3;
      v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 32))(v24, &v18[v39], v21);
      v25 = (*(v6 + 16))(v9, v42, v5);
      __chkstk_darwin(v25);
      (*(v22 + 16))(v24, v24, v21);
      v26 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
      sub_1000480AC(v40 + *(v26 + 28), v43);
      v27 = type metadata accessor for InferenceProviderExtensionConnection(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1000A8700(v9, v24, v43);
      a2[3] = v27;
      a2[4] = &off_1001B0C88;
      *a2 = v30;
      (*(v22 + 8))(v24, v21);
    }

    else
    {
      v33 = a2;
      if (qword_1001B8910 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000641C(v34, qword_1001BA630);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Cannot make an instanceID connection from a direct connection", v37, 2u);
      }

      v33[4] = 0;
      result = 0.0;
      *v33 = 0u;
      *(v33 + 1) = 0u;
    }
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    type metadata accessor for InferenceProviderManager(0);
    v32 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
    sub_1000B6010(v14, v42, v3 + *(v32 + 28), a2);
    (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_1000B6010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for InferenceProviderDescriptor();
  v10 = sub_100002BDC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002B8C();
  v17 = v16 - v15;
  v18 = type metadata accessor for BuiltInInferenceProvider();
  v19 = sub_100002BDC(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = sub_100004BB8(v22, v29);
  v24(v23, a1);
  (*(v12 + 16))(v17, a2, v9);
  sub_1000480AC(a3, v30);
  v25 = type metadata accessor for InferenceProviderExtensionConnection(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  result = sub_1000A8534(v4, v17, v30);
  a4[3] = v25;
  a4[4] = &off_1001B0C88;
  *a4 = result;
  return result;
}

void sub_1000B61AC()
{
  sub_100003884();
  v2 = *(v1 + 248);
  v3 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  *(v1 + 256) = v3;
  v4 = *(v3 + 20);
  sub_100012F04();
  if (*(v1 + 152))
  {
    v5 = *(v1 + 160);
    sub_100003370((v1 + 128), *(v1 + 152));
    sub_100005828();
    v28 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    *(v1 + 264) = v9;
    *v9 = v1;
    v10 = sub_1000B6428;
  }

  else
  {
    sub_10000ECD8(v1 + 128, &qword_1001B9CB0, &qword_100171E70);
    v11 = sub_100007DE0();
    if (v2)
    {
      v12 = 0;
LABEL_8:
      sub_10000EE54(v11);
      sub_1000081F4();
      v17 = v12;
    }

    else
    {
      sub_10000BFB0();
      while (v13 != v14)
      {
        v12 = v14 + 1;
        if (*(v15 + 8 * v14++))
        {
          goto LABEL_8;
        }
      }

      sub_1000039F8();
    }

    *(v1 + 280) = v0;
    *(v1 + 288) = v17;
    if (!sub_100012794())
    {
      v25 = *(v1 + 272);

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }

    sub_100004A04((v1 + 32), v1 + 208);
    v18 = *(v1 + 240);
    sub_100003370((v1 + 208), *(v1 + 232));
    sub_100005828();
    v29 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    *(v1 + 296) = v22;
    *v22 = v1;
    sub_100003010();
  }

  v9[1] = v10;
  sub_1000088B8();
  sub_100004CC8();

  __asm { BRAA            X2, X16 }
}