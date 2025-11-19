uint64_t sub_1002C60BC()
{
  v1 = v0[200];
  v0[216] = sub_1006146AC();
  v2 = sub_10058CB08();
  v0[217] = v3;
  v0[218] = v4;
  v5 = v2;
  v6 = v3;
  v8 = v7;
  v9 = v4;
  v10 = swift_task_alloc();
  v0[219] = v10;
  *v10 = v0;
  v10[1] = sub_1002C6200;
  v11 = v0[211];

  return sub_100612ED4(v11, v5, v6, v8, v9);
}

uint64_t sub_1002C6200()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 1752);
  v5 = *v1;

  v6 = v2[218];
  v7 = v2[217];
  v8 = v2[216];
  if (v0)
  {

    v3[220] = v0;
    v9 = v3[201];
    v10 = sub_1002C6558;
  }

  else
  {
    v11 = v3[201];

    v10 = sub_1002C6398;
    v9 = v11;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1002C6398()
{
  v1 = v0[213];
  v2 = v0[211];
  v3 = v0[201];
  (*(v0[203] + 56))(v2, 0, 1, v0[202]);
  swift_beginAccess();
  sub_1002C73C0(v2, v3 + v1);
  swift_endAccess();
  v4 = v0[215];
  v5 = v0[214];
  v6 = v0[210];
  v7 = v0[202];
  sub_10000BBC4(v0[201] + v0[213], v6, &qword_10083D4B0, &qword_1006DC940);
  v8 = v5(v6, 1, v7);
  v9 = v0[210];
  if (v8)
  {
    sub_10000BE18(v9, &qword_10083D4B0, &qword_1006DC940);
    v10 = 0;
  }

  else
  {
    v11 = v0[204];
    v12 = v0[210];
    sub_1001A2050(v9, v11);
    sub_10000BE18(v12, &qword_10083D4B0, &qword_1006DC940);
    v10 = *(v11 + 64);

    sub_1001A1FAC(v11);
  }

  v0[221] = v10;
  v13 = swift_task_alloc();
  v0[222] = v13;
  *v13 = v0;
  v13[1] = sub_1002C6838;
  v14 = v0[200];

  return sub_1002A8D74((v0 + 2), v10, v14);
}

uint64_t sub_1002C6558()
{
  v34 = v0;
  v1 = v0[220];
  v2 = v0[209];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[220];
    v32 = v0[209];
    v6 = v0[206];
    v7 = v0[205];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[191];
    v11 = v0[192];
    v12 = v0[193];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v33);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ignore the static workflow fetch error %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v32, v7);
  }

  else
  {
    v16 = v0[220];
    v17 = v0[209];
    v18 = v0[206];
    v19 = v0[205];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[215];
  v21 = v0[214];
  v22 = v0[210];
  v23 = v0[202];
  sub_10000BBC4(v0[201] + v0[213], v22, &qword_10083D4B0, &qword_1006DC940);
  v24 = v21(v22, 1, v23);
  v25 = v0[210];
  if (v24)
  {
    sub_10000BE18(v25, &qword_10083D4B0, &qword_1006DC940);
    v26 = 0;
  }

  else
  {
    v27 = v0[204];
    v28 = v0[210];
    sub_1001A2050(v25, v27);
    sub_10000BE18(v28, &qword_10083D4B0, &qword_1006DC940);
    v26 = *(v27 + 64);

    sub_1001A1FAC(v27);
  }

  v0[221] = v26;
  v29 = swift_task_alloc();
  v0[222] = v29;
  *v29 = v0;
  v29[1] = sub_1002C6838;
  v30 = v0[200];

  return sub_1002A8D74((v0 + 2), v26, v30);
}

uint64_t sub_1002C6838()
{
  v18 = v1;
  v18 = *v1;
  v2 = v18;
  v3 = v18[222];
  v4 = *v1;
  v18 = v4;
  v2[223] = v0;

  if (v0)
  {
    v5 = v2[221];
    v6 = v2[201];

    return _swift_task_switch(sub_1002C6A5C, v6, 0);
  }

  else
  {
    v7 = v2[221];
    memcpy(v17, v2 + 2, sizeof(v17));

    memcpy(v2 + 124, v17, 0x1E8uLL);
    nullsub_7(v2 + 124);
    memcpy(v2 + 63, v2 + 124, 0x1E8uLL);
    v8 = v2[212];
    v9 = v2[211];
    v10 = v2[210];
    v11 = v2[209];
    v12 = v2[208];
    v13 = v2[207];
    v14 = v2[204];
    memcpy(v2[199], v2 + 63, 0x1E8uLL);

    v15 = *(v4 + 8);

    return v15();
  }
}

uint64_t sub_1002C6A5C()
{
  v34 = v0;
  v1 = *(v0 + 1784);
  v2 = *(v0 + 1664);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1784);
    v6 = *(v0 + 1664);
    v7 = *(v0 + 1648);
    v8 = *(v0 + 1640);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 1504);
    v12 = *(v0 + 1512);
    v13 = *(v0 + 1520);
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v33);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received an error while fetching the active config. %s", v9, 0xCu);
    sub_10000BB78(v10);

    v17 = *(v7 + 8);
    v17(v6, v8);
  }

  else
  {
    v18 = *(v0 + 1664);
    v19 = *(v0 + 1648);
    v20 = *(v0 + 1640);

    v17 = *(v19 + 8);
    v17(v18, v20);
  }

  v21 = *(v0 + 1784);
  v22 = *(v0 + 1656);
  v23 = *(v0 + 1640);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v17(v22, v23);
  sub_1002C7378(v0 + 504);
  v24 = *(v0 + 1696);
  v25 = *(v0 + 1688);
  v26 = *(v0 + 1680);
  v27 = *(v0 + 1672);
  v28 = *(v0 + 1664);
  v29 = *(v0 + 1656);
  v30 = *(v0 + 1632);
  memcpy(*(v0 + 1592), (v0 + 504), 0x1E8uLL);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002C6CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[132] = a5;
  v5[131] = a4;
  v5[130] = a3;
  v5[129] = a2;
  v5[128] = a1;
  v7 = type metadata accessor for Logger();
  v5[133] = v7;
  v8 = *(v7 - 8);
  v5[134] = v8;
  v9 = *(v8 + 64) + 15;
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[138] = v10;
  *v10 = v5;
  v10[1] = sub_1002C6E08;

  return sub_1002C5CDC((v5 + 63), a5);
}

uint64_t sub_1002C6E08()
{
  v1 = *(*v0 + 1104);
  v3 = *v0;

  return _swift_task_switch(sub_1002C6F04, 0, 0);
}

uint64_t sub_1002C6F04()
{
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) == 1)
  {
    v1 = v0[135];
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[135];
    v6 = v0[134];
    v7 = v0[133];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "ActiveConfig doesn't exist. Failed to create text replacement helper";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v2, v3, v9, v8, 2u);
    }
  }

  else
  {
    v11 = v0[60];
    v10 = v0[61];
    v0[125] = v11;
    if (v11)
    {
      v0[124] = v10;
      if (v10)
      {
        v26 = v0[132];
        v12 = v0[131];
        v13 = v0[130];
        v14 = v0[129];
        v15 = v0[128];
        sub_10000BBC4((v0 + 125), (v0 + 126), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BBC4((v0 + 124), (v0 + 127), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
        type metadata accessor for IdentityProofingTextReplacementHelper();

        v16 = IdentityProofingTextReplacementHelper.__allocating_init(attributeMessages:messageReplacements:state:country:documentType:)();
        goto LABEL_13;
      }

      v19 = v0[137];
      sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
      defaultLogger()();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      v20 = os_log_type_enabled(v2, v3);
      v5 = v0[137];
      v6 = v0[134];
      v7 = v0[133];
      if (v20)
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "messageReplacements doesn't exist. Failed to create text replacement helper";
        goto LABEL_11;
      }
    }

    else
    {
      v17 = v0[136];
      sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
      defaultLogger()();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      v18 = os_log_type_enabled(v2, v3);
      v5 = v0[136];
      v6 = v0[134];
      v7 = v0[133];
      if (v18)
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "attributeMessages doesn't exist. Failed to create text replacement helper";
        goto LABEL_11;
      }
    }
  }

  (*(v6 + 8))(v5, v7);
  v16 = 0;
LABEL_13:
  v21 = v0[137];
  v22 = v0[136];
  v23 = v0[135];

  v24 = v0[1];

  return v24(v16);
}

uint64_t sub_1002C7218()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow, &qword_10083D4B0, &qword_1006DC940);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for IdentityProofingTextReplacementHelperProvider()
{
  result = qword_10083FB98;
  if (!qword_10083FB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C72CC()
{
  sub_1001B4B18();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

double sub_1002C7378(uint64_t a1)
{
  *(a1 + 480) = 0;
  result = 0.0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1002C73C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D4B0, &qword_1006DC940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C7430(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 256) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v8 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v4 + 112) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100834140, &qword_1006DC180) - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v11 = type metadata accessor for NWPath();
  *(v4 + 144) = v11;
  v12 = *(v11 - 8);
  *(v4 + 152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_1002C75E0, 0, 0);
}

uint64_t sub_1002C75E0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = *(v0[8] + 16);
  NetworkMonitor.currentPath.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1002C8738(v0[17]);
    v17 = v0[20];
    v18 = v0[16];
    v19 = v0[17];
    v20 = v0[15];
    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];

    v24 = v0[1];

    return v24(0);
  }

  else
  {
    v5 = v0[6];
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v0[21] = sub_1006146AC();
    v6 = sub_10058CB08();
    v0[22] = v7;
    v0[23] = v8;
    v9 = v6;
    v10 = v7;
    v12 = v11;
    v13 = v8;
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = sub_1002C7948;
    v15 = v0[16];

    return sub_100612ED4(v15, v9, v10, v12, v13);
  }
}

uint64_t sub_1002C7948()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = v2[23];
  v6 = v2[22];
  v7 = v2[21];

  if (v0)
  {
    v8 = sub_1002C7DE0;
  }

  else
  {
    v8 = sub_1002C7AB4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002C7AB4()
{
  v47 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 128);
  v3 = *(v0 + 48);
  v4 = v2 + *(*(v0 + 112) + 52);
  *(v0 + 208) = *v4;
  *(v0 + 257) = *(v4 + 8);
  sub_1001A1FAC(v2);
  *(v0 + 216) = sub_1006146AC();
  v5 = sub_10058CB08();
  *(v0 + 224) = v6;
  *(v0 + 232) = v8;
  if (v1)
  {

    v9 = *(v0 + 88);
    defaultLogger()();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 144);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);
    if (v12)
    {
      v45 = *(v0 + 72);
      v19 = swift_slowAlloc();
      v44 = v15;
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v43 = v13;
      v22 = *(v0 + 16);
      v21 = *(v0 + 24);
      v23 = *(v0 + 32);
      v24 = Error.localizedDescription.getter();
      v42 = v16;
      v26 = sub_100141FE4(v24, v25, &v46);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v10, v11, "Received an error while fetching the static workflow to get the upload threshold %s", v19, 0xCu);
      sub_10000BB78(v20);

      (*(v17 + 8))(v42, v45);
      (*(v14 + 8))(v43, v44);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
    }

    v34 = *(v0 + 160);
    v35 = *(v0 + 128);
    v36 = *(v0 + 136);
    v37 = *(v0 + 120);
    v39 = *(v0 + 96);
    v38 = *(v0 + 104);
    v40 = *(v0 + 88);

    v41 = *(v0 + 8);

    return v41(0);
  }

  else
  {
    v27 = v5;
    v28 = v6;
    v29 = v7;
    v30 = v8;
    v31 = swift_task_alloc();
    *(v0 + 240) = v31;
    *v31 = v0;
    v31[1] = sub_1002C8034;
    v32 = *(v0 + 120);

    return sub_100612ED4(v32, v27, v28, v29, v30);
  }
}

uint64_t sub_1002C7DE0()
{
  v35 = v0;
  v1 = v0[25];
  v2 = v0[11];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v32 = v0[18];
    v33 = v0[20];
    v6 = v0[10];
    v30 = v0[9];
    v31 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v34);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received an error while fetching the static workflow to get the upload threshold %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v6 + 8))(v31, v30);
    (*(v5 + 8))(v33, v32);
  }

  else
  {
    v16 = v0[19];
    v15 = v0[20];
    v17 = v0[18];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
  }

  v21 = v0[20];
  v22 = v0[16];
  v23 = v0[17];
  v24 = v0[15];
  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];

  v28 = v0[1];

  return v28(0);
}

uint64_t sub_1002C8034()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];

  if (v0)
  {
    v8 = sub_1002C84C0;
  }

  else
  {
    v8 = sub_1002C81A0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002C81A0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = v1 + *(*(v0 + 112) + 56);
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_1001A1FAC(v1);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 56);
    if (*(v0 + 257))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v0 + 208);
    }

    v11 = swift_slowAlloc();
    *v11 = 134218496;
    *(v11 + 4) = v9;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v10;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v10 < v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Comparing the uploadSize %lld with the bill shock threshold %ld. isDataGreaterThanBillShockThreshold: %{BOOL}d", v11, 0x1Cu);
  }

  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);

  v16 = *(v15 + 8);
  v16(v12, v14);
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 56);
    if (*(v0 + 257))
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v0 + 208);
    }

    v21 = swift_slowAlloc();
    *v21 = 134218496;
    *(v21 + 4) = v19;
    *(v21 + 12) = 2048;
    *(v21 + 14) = v20;
    *(v21 + 22) = 1024;
    *(v21 + 24) = v6 < v19;
    _os_log_impl(&_mh_execute_header, v17, v18, "Comparing the uploadSize %lld with the low data mode threshold %ld. isDataGreaterThanLowDataModeThreshold: %{BOOL}d", v21, 0x1Cu);
  }

  v46 = v6;
  v22 = *(v0 + 257);
  v23 = *(v0 + 208);
  v24 = *(v0 + 160);
  v25 = *(v0 + 96);
  v26 = *(v0 + 72);
  v27 = *(v0 + 56);

  if (v22)
  {
    v28 = 0;
  }

  else
  {
    v28 = v23;
  }

  v16(v25, v26);
  v29 = NWPath.isExpensive.getter();
  v31 = *(v0 + 152);
  v30 = *(v0 + 160);
  v32 = *(v0 + 144);
  if ((v29 & 1) != 0 && v28 < v27)
  {
    (*(v31 + 8))(*(v0 + 160), *(v0 + 144));
    v33 = 1;
  }

  else
  {
    v34 = *(v0 + 256);
    v35 = *(v0 + 56);
    v36 = NWPath.isConstrained.getter();
    (*(v31 + 8))(v30, v32);
    v33 = v36 & (v34 ^ 1) & (v46 < v35);
  }

  v37 = *(v0 + 160);
  v39 = *(v0 + 128);
  v38 = *(v0 + 136);
  v40 = *(v0 + 120);
  v42 = *(v0 + 96);
  v41 = *(v0 + 104);
  v43 = *(v0 + 88);

  v44 = *(v0 + 8);

  return v44(v33);
}

uint64_t sub_1002C84C0()
{
  v35 = v0;
  v1 = v0[31];
  v2 = v0[11];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v32 = v0[18];
    v33 = v0[20];
    v6 = v0[10];
    v30 = v0[9];
    v31 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v34);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received an error while fetching the static workflow to get the upload threshold %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v6 + 8))(v31, v30);
    (*(v5 + 8))(v33, v32);
  }

  else
  {
    v16 = v0[19];
    v15 = v0[20];
    v17 = v0[18];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
  }

  v21 = v0[20];
  v22 = v0[16];
  v23 = v0[17];
  v24 = v0[15];
  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[11];

  v28 = v0[1];

  return v28(0);
}

uint64_t sub_1002C8738(uint64_t a1)
{
  v2 = sub_100007224(&unk_100834140, &qword_1006DC180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C87A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100041F04;

  return (sub_1002D0EC0)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1002C889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100027B9C;

  return (sub_1002D05A8)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1002C8998(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_1002D0358(a1, a2);
}

uint64_t sub_1002C8A54(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return _swift_task_switch(sub_1002C8A7C, 0, 0);
}

uint64_t sub_1002C8A7C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = String._bridgeToObjectiveC()();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002C8BB4;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083FFA0, &qword_1006DCCD0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002C8CC0;
  v0[13] = &unk_10080C678;
  v0[14] = v5;
  [v2 retrievePendingProvisioningsWithType:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002C8BB4()
{
  v4 = *v0;
  v1 = *(*v0 + 144);

  v2 = *(v4 + 8);

  return v2(v1);
}

uint64_t sub_1002C8CC0(uint64_t a1, uint64_t a2)
{
  v3 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_10001F8D4(0, &qword_10083FFA8, PKPendingProvisioning_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1002C8D74(uint64_t a1, uint64_t a2)
{
  v3[201] = v2;
  v3[200] = a2;
  v3[199] = a1;
  v4 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v3[202] = v4;
  v5 = *(v4 - 8);
  v3[203] = v5;
  v6 = *(v5 + 64) + 15;
  v3[204] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[205] = v7;
  v8 = *(v7 - 8);
  v3[206] = v8;
  v9 = *(v8 + 64) + 15;
  v3[207] = swift_task_alloc();
  v3[208] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_10083D4B0, &qword_1006DC940) - 8) + 64) + 15;
  v3[209] = swift_task_alloc();
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();

  return _swift_task_switch(sub_1002C8EF4, 0, 0);
}

uint64_t sub_1002C8EF4()
{
  v1 = v0[211];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[201];
  v5 = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  v0[212] = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_10083D4B0, &qword_1006DC940);
  v6 = *(v2 + 48);
  v0[213] = v6;
  v0[214] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v3) = v6(v1, 1, v3);
  sub_10000BE18(v1, &qword_10083D4B0, &qword_1006DC940);
  if (v3 == 1)
  {
    v7 = v0[200];
    v0[215] = sub_1006146AC();
    v8 = sub_10058CB08();
    v0[216] = v9;
    v0[217] = v10;
    v11 = v8;
    v12 = v9;
    v14 = v13;
    v15 = v10;
    v16 = swift_task_alloc();
    v0[218] = v16;
    *v16 = v0;
    v16[1] = sub_1002C9330;
    v17 = v0[210];

    return sub_100612ED4(v17, v11, v12, v14, v15);
  }

  else
  {
    v19 = v0[214];
    v20 = v0[213];
    v21 = v0[212];
    v22 = v0[209];
    v23 = v0[202];
    v24 = v0[201];
    v0[220] = *(v24 + 96);
    sub_10000BBC4(v24 + v21, v22, &qword_10083D4B0, &qword_1006DC940);
    v25 = v20(v22, 1, v23);
    v26 = v0[209];
    if (v25)
    {

      sub_10000BE18(v26, &qword_10083D4B0, &qword_1006DC940);
      v27 = 0;
    }

    else
    {
      v28 = v0[204];
      sub_1001A2050(v0[209], v28);

      sub_10000BE18(v26, &qword_10083D4B0, &qword_1006DC940);
      v27 = *(v28 + 64);

      sub_1001A1FAC(v28);
    }

    v0[221] = v27;
    v29 = swift_task_alloc();
    v0[222] = v29;
    *v29 = v0;
    v29[1] = sub_1002C9984;
    v30 = v0[200];

    return sub_1002A8D74((v0 + 2), v27, v30);
  }
}

uint64_t sub_1002C9330()
{
  v2 = *v1;
  v3 = *(*v1 + 1744);
  v4 = *v1;
  *(*v1 + 1752) = v0;

  v5 = v2[217];
  v6 = v2[216];
  v7 = v2[215];

  if (v0)
  {
    v8 = sub_1002C9690;
  }

  else
  {
    v8 = sub_1002C949C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002C949C()
{
  v1 = v0[212];
  v2 = v0[210];
  v3 = v0[201];
  (*(v0[203] + 56))(v2, 0, 1, v0[202]);
  swift_beginAccess();
  sub_1000B2764(v2, v3 + v1, &qword_10083D4B0, &qword_1006DC940);
  swift_endAccess();
  v4 = v0[214];
  v5 = v0[213];
  v6 = v0[212];
  v7 = v0[209];
  v8 = v0[202];
  v9 = v0[201];
  v0[220] = *(v9 + 96);
  sub_10000BBC4(v9 + v6, v7, &qword_10083D4B0, &qword_1006DC940);
  v10 = v5(v7, 1, v8);
  v11 = v0[209];
  if (v10)
  {

    sub_10000BE18(v11, &qword_10083D4B0, &qword_1006DC940);
    v12 = 0;
  }

  else
  {
    v13 = v0[204];
    sub_1001A2050(v0[209], v13);

    sub_10000BE18(v11, &qword_10083D4B0, &qword_1006DC940);
    v12 = *(v13 + 64);

    sub_1001A1FAC(v13);
  }

  v0[221] = v12;
  v14 = swift_task_alloc();
  v0[222] = v14;
  *v14 = v0;
  v14[1] = sub_1002C9984;
  v15 = v0[200];

  return sub_1002A8D74((v0 + 2), v12, v15);
}

uint64_t sub_1002C9690()
{
  v33 = v0;
  v1 = v0[219];
  v2 = v0[208];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v31 = v0[208];
    v5 = v0[206];
    v6 = v0[205];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[191];
    v10 = v0[192];
    v11 = v0[193];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v32);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ignore the static workflow fetch error %s", v7, 0xCu);
    sub_10000BB78(v8);

    (*(v5 + 8))(v31, v6);
  }

  else
  {
    v15 = v0[208];
    v16 = v0[206];
    v17 = v0[205];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[214];
  v19 = v0[213];
  v20 = v0[212];
  v21 = v0[209];
  v22 = v0[202];
  v23 = v0[201];
  v0[220] = *(v23 + 96);
  sub_10000BBC4(v23 + v20, v21, &qword_10083D4B0, &qword_1006DC940);
  v24 = v19(v21, 1, v22);
  v25 = v0[209];
  if (v24)
  {

    sub_10000BE18(v25, &qword_10083D4B0, &qword_1006DC940);
    v26 = 0;
  }

  else
  {
    v27 = v0[204];
    sub_1001A2050(v0[209], v27);

    sub_10000BE18(v25, &qword_10083D4B0, &qword_1006DC940);
    v26 = *(v27 + 64);

    sub_1001A1FAC(v27);
  }

  v0[221] = v26;
  v28 = swift_task_alloc();
  v0[222] = v28;
  *v28 = v0;
  v28[1] = sub_1002C9984;
  v29 = v0[200];

  return sub_1002A8D74((v0 + 2), v26, v29);
}

uint64_t sub_1002C9984()
{
  v18 = v1;
  v18 = *v1;
  v2 = v18;
  v3 = v18[222];
  v4 = *v1;
  v18 = v4;
  v2[223] = v0;

  if (v0)
  {
    v5 = v2[221];
    v6 = v2[220];

    return _swift_task_switch(sub_1002C9BA4, 0, 0);
  }

  else
  {
    v7 = v2[221];
    v8 = v2[220];
    memcpy(__dst, v2 + 2, sizeof(__dst));

    memcpy(v2 + 124, __dst, 0x1E8uLL);
    nullsub_7(v2 + 124);
    memcpy(v2 + 63, v2 + 124, 0x1E8uLL);
    v9 = v2[211];
    v10 = v2[210];
    v11 = v2[209];
    v12 = v2[208];
    v13 = v2[207];
    v14 = v2[204];
    memcpy(v2[199], v2 + 63, 0x1E8uLL);

    v15 = *(v4 + 8);

    return v15();
  }
}

uint64_t sub_1002C9BA4()
{
  v30 = v0;
  v1 = *(v0 + 1784);
  v2 = *(v0 + 1656);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1784);
    v28 = *(v0 + 1656);
    v6 = *(v0 + 1648);
    v7 = *(v0 + 1640);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 1504);
    v11 = *(v0 + 1512);
    v12 = *(v0 + 1520);
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v29);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to retrieve the active config, %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v28, v7);
  }

  else
  {
    v16 = *(v0 + 1784);
    v17 = *(v0 + 1656);
    v18 = *(v0 + 1648);
    v19 = *(v0 + 1640);

    (*(v18 + 8))(v17, v19);
  }

  sub_1002C7378(v0 + 504);
  v20 = *(v0 + 1688);
  v21 = *(v0 + 1680);
  v22 = *(v0 + 1672);
  v23 = *(v0 + 1664);
  v24 = *(v0 + 1656);
  v25 = *(v0 + 1632);
  memcpy(*(v0 + 1592), (v0 + 504), 0x1E8uLL);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1002C9DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[133] = v5;
  v6[132] = a5;
  v6[131] = a4;
  v6[130] = a3;
  v6[129] = a2;
  v6[128] = a1;
  v8 = type metadata accessor for Logger();
  v6[134] = v8;
  v9 = *(v8 - 8);
  v6[135] = v9;
  v10 = *(v9 + 64) + 15;
  v6[136] = swift_task_alloc();
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[139] = v11;
  *v11 = v6;
  v11[1] = sub_1002C9F10;

  return sub_1002C8D74((v6 + 63), a5);
}

uint64_t sub_1002C9F10()
{
  v1 = *(*v0 + 1112);
  v3 = *v0;

  return _swift_task_switch(sub_1002CA00C, 0, 0);
}

uint64_t sub_1002CA00C()
{
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) == 1)
  {
    v1 = v0[136];
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[136];
    v6 = v0[135];
    v7 = v0[134];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "ActiveConfig doesn't exist. Will not show a notification to the user";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v2, v3, v9, v8, 2u);
    }
  }

  else
  {
    v10 = v0[60];
    v11 = v0[61];
    v0[125] = v10;
    if (v10)
    {
      v0[124] = v11;
      if (v11)
      {
        v12 = v0[133];
        v27 = v0[131];
        v28 = v0[132];
        v13 = v0[130];
        v14 = v0[129];
        v15 = v0[128];
        sub_10000BBC4((v0 + 125), (v0 + 126), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BBC4((v0 + 124), (v0 + 127), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
        v16 = *(v12 + 104);

        v17 = dispatch thunk of IdentityProofingTextReplacementProvider.makeTextReplacementHelper(attributeMessages:messageReplacements:state:country:documentType:)();

        sub_10000BE18((v0 + 124), &qword_100836F98, &qword_1006DC5A0);
        sub_10000BE18((v0 + 125), &qword_100836F98, &qword_1006DC5A0);
        goto LABEL_13;
      }

      v20 = v0[138];
      sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
      defaultLogger()();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      v21 = os_log_type_enabled(v2, v3);
      v5 = v0[138];
      v6 = v0[135];
      v7 = v0[134];
      if (v21)
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "messageReplacements doesn't exist. Will not show a notification to the user";
        goto LABEL_11;
      }
    }

    else
    {
      v18 = v0[137];
      sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
      defaultLogger()();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      v19 = os_log_type_enabled(v2, v3);
      v5 = v0[137];
      v6 = v0[135];
      v7 = v0[134];
      if (v19)
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "attributeMessages doesn't exist. Will not show a notification to the user";
        goto LABEL_11;
      }
    }
  }

  (*(v6 + 8))(v5, v7);
  v17 = 0;
LABEL_13:
  v22 = v0[138];
  v23 = v0[137];
  v24 = v0[136];

  v25 = v0[1];

  return v25(v17);
}

uint64_t sub_1002CA338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 1192) = v7;
  *(v8 + 1352) = a7;
  *(v8 + 1184) = a6;
  *(v8 + 1176) = a5;
  *(v8 + 1168) = a4;
  *(v8 + 1160) = a3;
  *(v8 + 1152) = a2;
  *(v8 + 1144) = a1;
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 1200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 1216) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 1224) = v12;
  v13 = *(v12 - 8);
  *(v8 + 1232) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 1240) = swift_task_alloc();
  *(v8 + 1248) = swift_task_alloc();
  *(v8 + 1256) = swift_task_alloc();
  *(v8 + 1264) = swift_task_alloc();
  *(v8 + 1272) = swift_task_alloc();
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = swift_task_alloc();

  return _swift_task_switch(sub_1002CA4B8, 0, 0);
}

uint64_t sub_1002CA840()
{
  v1 = *(*v0 + 1312);
  v3 = *v0;

  return _swift_task_switch(sub_1002CA93C, 0, 0);
}

uint64_t sub_1002CA93C()
{
  v93 = v0;
  memcpy((v0 + 16), (v0 + 504), 0x1E8uLL);
  if (sub_1000A257C(v0 + 16) == 1 || (*(v0 + 1120) = *(v0 + 488), sub_10000BBC4(v0 + 1120, v0 + 1128, &qword_100836F98, &qword_1006DC5A0), sub_10000BE18(v0 + 504, &qword_100839998, &qword_1006DCAA0), (v1 = *(v0 + 1120)) == 0))
  {
    v13 = *(v0 + 1304);
LABEL_8:

LABEL_9:
    (*(*(v0 + 1208) + 104))(*(v0 + 1216), enum case for DIPError.Code.invalidAttribute(_:), *(v0 + 1200));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_10;
  }

  v2 = *(v0 + 1304);
  if (!*(v1 + 16))
  {
    sub_10000BE18(v0 + 1120, &qword_100836F98, &qword_1006DC5A0);
    goto LABEL_8;
  }

  v3 = sub_10003ADCC(*(v0 + 1296), *(v0 + 1304));
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    sub_10000BE18(v0 + 1120, &qword_100836F98, &qword_1006DC5A0);
    goto LABEL_9;
  }

  v6 = *(v0 + 1352);
  v7 = (*(v1 + 56) + 16 * v3);
  v9 = *v7;
  v8 = v7[1];
  *(v0 + 1320) = v8;

  sub_10000BE18(v0 + 1120, &qword_100836F98, &qword_1006DC5A0);
  if (v6 & 1) != 0 || ((v24 = *(v0 + 1176), v24 > 3) ? (v25 = 0) : (v25 = qword_1006DCD00[v24]), v26 = sub_1002D089C(*(v0 + 1184)), (v27))
  {
    v10 = *(v0 + 1216);
    v11 = *(v0 + 1208);
    v12 = *(v0 + 1200);

    (*(v11 + 104))(v10, enum case for DIPError.Code.invalidProofingActionStatus(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_10:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = *(v0 + 1288);
    v15 = *(v0 + 1280);
    v16 = *(v0 + 1272);
    v17 = *(v0 + 1264);
    v18 = *(v0 + 1256);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1240);
    v21 = *(v0 + 1216);

    v22 = *(v0 + 8);

    return v22();
  }

  v90 = v26;
  v28 = *(v0 + 1192);
  swift_beginAccess();
  sub_10000BBC4(v28 + 56, v0 + 1032, &unk_100845E80, &qword_1006DAD90);
  if (!*(v0 + 1056))
  {
    v51 = *(v0 + 1216);
    v52 = *(v0 + 1208);
    v53 = *(v0 + 1200);

    sub_10000BE18(v0 + 1032, &unk_100845E80, &qword_1006DAD90);
    (*(v52 + 104))(v51, enum case for DIPError.Code.watchConnectionFailure(_:), v53);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_10;
  }

  v88 = v25;
  v29 = *(v0 + 1288);
  sub_10001F358((v0 + 1032), v0 + 992);
  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "----- BEGIN SENDING THE DATA TO WATCH FOR NOTIFICATION ------", v32, 2u);
  }

  v33 = *(v0 + 1288);
  v34 = *(v0 + 1280);
  v35 = *(v0 + 1232);
  v36 = *(v0 + 1224);

  v37 = *(v35 + 8);
  *(v0 + 1328) = v37;
  v37(v33, v36);
  defaultLogger()();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 1280);
  v42 = *(v0 + 1232);
  v43 = *(v0 + 1224);
  v91 = v37;
  v89 = v9;
  if (v40)
  {
    v44 = *(v0 + 1184);
    v86 = *(v0 + 1280);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v92[0] = v46;
    *v45 = 136315138;
    v47 = IdentityProofingActionStatus.debugDescription.getter();
    v49 = sub_100141FE4(v47, v48, v92);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v38, v39, "actionStatus -> %s", v45, 0xCu);
    sub_10000BB78(v46);
    v37 = v91;

    v50 = v86;
  }

  else
  {

    v50 = v41;
  }

  v37(v50, v43);
  v54 = *(v0 + 1272);
  defaultLogger()();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 1272);
  v59 = *(v0 + 1232);
  v60 = *(v0 + 1224);
  if (v57)
  {
    v87 = *(v0 + 1272);
    v61 = *(v0 + 1176);
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v92[0] = v63;
    *v62 = 136315138;
    v64 = IdentityDocumentType.description.getter();
    v66 = sub_100141FE4(v64, v65, v92);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v55, v56, "documentType -> %s", v62, 0xCu);
    sub_10000BB78(v63);
    v37 = v91;

    v67 = v87;
  }

  else
  {

    v67 = v58;
  }

  v37(v67, v60);
  v68 = *(v0 + 1264);
  defaultLogger()();

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();

  v71 = os_log_type_enabled(v69, v70);
  v72 = *(v0 + 1264);
  v73 = *(v0 + 1232);
  v74 = *(v0 + 1224);
  if (v71)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v92[0] = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_100141FE4(v89, v8, v92);
    _os_log_impl(&_mh_execute_header, v69, v70, "issuerName -> %s", v75, 0xCu);
    sub_10000BB78(v76);

    v91(v72, v74);
  }

  else
  {

    v37(v72, v74);
  }

  v77 = *(v0 + 1256);
  defaultLogger()();
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "----- END SENDING THE DATA TO WATCH FOR NOTIFICATION------", v80, 2u);
  }

  v81 = *(v0 + 1256);
  v82 = *(v0 + 1232);
  v83 = *(v0 + 1224);

  v91(v81, v83);
  v84 = *sub_10000BA08((v0 + 992), *(v0 + 1016));
  v85 = swift_task_alloc();
  *(v0 + 1336) = v85;
  *v85 = v0;
  v85[1] = sub_1002CB3E0;

  return sub_1004C532C(v90, v88, v89, v8);
}

uint64_t sub_1002CB3E0()
{
  v2 = *v1;
  v3 = *(*v1 + 1336);
  v4 = *v1;
  *(*v1 + 1344) = v0;

  v5 = *(v2 + 1320);

  if (v0)
  {
    v6 = sub_1002CB69C;
  }

  else
  {
    v6 = sub_1002CB514;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002CB514()
{
  v1 = v0[156];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did show notification to the user on the watch", v4, 2u);
  }

  v5 = v0[166];
  v6 = v0[161];
  v7 = v0[160];
  v8 = v0[159];
  v9 = v0[158];
  v10 = v0[156];
  v15 = v0[157];
  v16 = v0[155];
  v11 = v0[154];
  v12 = v0[153];
  v17 = v0[152];

  v5(v10, v12);
  sub_10000BB78(v0 + 124);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002CB69C()
{
  v35 = v0;
  v1 = v0[168];
  v2 = v0[155];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[168];
    v33 = v0[166];
    v6 = v0[155];
    v7 = v0[154];
    v8 = v0[153];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = v0[137];
    v12 = v0[138];
    v13 = v0[139];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v34);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error occurred while showing notification to the user on the watch %s", v9, 0xCu);
    sub_10000BB78(v10);

    v33(v6, v8);
  }

  else
  {
    v17 = v0[166];
    v18 = v0[155];
    v19 = v0[154];
    v20 = v0[153];

    v17(v18, v20);
  }

  v21 = v0[168];
  swift_willThrow();
  sub_10000BB78(v0 + 124);
  v22 = v0[168];
  v23 = v0[161];
  v24 = v0[160];
  v25 = v0[159];
  v26 = v0[158];
  v27 = v0[157];
  v28 = v0[156];
  v29 = v0[155];
  v30 = v0[152];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1002CB8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 272) = v19;
  *(v9 + 280) = v8;
  *(v9 + 256) = v18;
  *(v9 + 240) = a7;
  *(v9 + 248) = a8;
  *(v9 + 224) = a5;
  *(v9 + 232) = a6;
  *(v9 + 208) = a3;
  *(v9 + 216) = a4;
  *(v9 + 192) = a1;
  *(v9 + 200) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 288) = v10;
  v11 = *(v10 - 8);
  *(v9 + 296) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 304) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v9 + 312) = v13;
  v14 = *(v13 - 8);
  *(v9 + 320) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1002CBA80, 0, 0);
}

uint64_t sub_1002CBA80()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v0[29];
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[50] = v3;
      *v3 = v0;
      v3[1] = sub_1002CBD7C;
      v4 = v0[35];
      v5 = v0[32];
      v6 = v0[30];
      v7 = v0[28];

      return sub_1002C9DE0(v7, v2, v6, v1, v5);
    }

    (*(v0[37] + 104))(v0[38], enum case for DIPError.Code.idStateUnavailable(_:), v0[36]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  else
  {
    (*(v0[37] + 104))(v0[38], enum case for DIPError.Code.idCountryUnavailable(_:), v0[36]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v10 = v0[48];
  v9 = v0[49];
  v12 = v0[46];
  v11 = v0[47];
  v14 = v0[44];
  v13 = v0[45];
  v16 = v0[42];
  v15 = v0[43];
  v17 = v0[41];
  v18 = v0[38];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002CBD7C(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_1002CBE7C, 0, 0);
}

uint64_t sub_1002CBE7C()
{
  v122 = v0;
  if (v0[51])
  {
    if (v0[25] && (v1 = v0[24], v2 = dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)(), (v0[52] = v3) != 0))
    {
      v4 = v3;
      if (v0[27])
      {
        v5 = v2;
        v6 = v0[26];
        v7 = dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)();
        v0[53] = v8;
        v118 = v8;
        if (v8)
        {
          v115 = v7;
          v116 = v5;
          v117 = v4;
          v9 = v0[49];
          defaultLogger()();
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&_mh_execute_header, v10, v11, "----- BEGIN LOGGING USER NOTIFICATION DATA------", v12, 2u);
          }

          v14 = v0[48];
          v13 = v0[49];
          v16 = v0[39];
          v15 = v0[40];
          v17 = v0[31];
          v18 = v0[29];

          v19 = *(v15 + 8);
          v0[54] = v19;
          v19(v13, v16);
          defaultLogger()();

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.debug.getter();

          v22 = os_log_type_enabled(v20, v21);
          v23 = v0[48];
          v24 = v0[39];
          v25 = v0[40];
          v119 = v19;
          if (v22)
          {
            v112 = v0[32];
            v113 = v0[40];
            v114 = v0[48];
            v26 = v0[30];
            v27 = v0[31];
            v29 = v0[28];
            v28 = v0[29];
            v30 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            *v30 = 136315650;
            *(v30 + 4) = sub_100141FE4(v29, v28, &v121);
            *(v30 + 12) = 2080;
            *(v30 + 14) = sub_100141FE4(v26, v27, &v121);
            *(v30 + 22) = 2080;
            v31 = IdentityDocumentType.description.getter();
            v33 = sub_100141FE4(v31, v32, &v121);

            *(v30 + 24) = v33;
            _os_log_impl(&_mh_execute_header, v20, v21, "State -> %s country -> %s documentType -> %s", v30, 0x20u);
            swift_arrayDestroy();

            v34 = v114;
          }

          else
          {

            v34 = v23;
          }

          v19(v34, v24);
          v68 = v0[47];
          defaultLogger()();

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.debug.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v0[47];
          v73 = v0[39];
          v74 = v0[40];
          if (v71)
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v121 = v76;
            *v75 = 136315138;
            *(v75 + 4) = sub_100141FE4(v116, v117, &v121);
            _os_log_impl(&_mh_execute_header, v69, v70, "title -> %s", v75, 0xCu);
            sub_10000BB78(v76);
          }

          v19(v72, v73);
          v77 = v0[46];
          defaultLogger()();

          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.debug.getter();

          v80 = os_log_type_enabled(v78, v79);
          v81 = v0[46];
          v82 = v0[39];
          v83 = v0[40];
          if (v80)
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v121 = v85;
            *v84 = 136315138;
            *(v84 + 4) = sub_100141FE4(v115, v118, &v121);
            _os_log_impl(&_mh_execute_header, v78, v79, "message -> %s", v84, 0xCu);
            sub_10000BB78(v85);
          }

          v19(v81, v82);
          v86 = v0[45];
          defaultLogger()();
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            _os_log_impl(&_mh_execute_header, v87, v88, "----- END LOGGING USER NOTIFICATION DATA------", v89, 2u);
          }

          v90 = v0[44];
          v91 = v0[45];
          v92 = v0[39];
          v93 = v0[40];
          v95 = v0[30];
          v94 = v0[31];
          v96 = v0[28];
          v97 = v0[29];

          v119(v91, v92);
          sub_100007224(&qword_100838818, &unk_1006D0F90);
          inited = swift_initStackObject();
          *(inited + 32) = 0xD000000000000012;
          *(inited + 16) = xmmword_1006BF740;
          *(inited + 40) = 0x800000010070AFF0;
          *(inited + 48) = v96;
          *(inited + 56) = v97;
          *(inited + 64) = 0x7972746E756F63;
          *(inited + 72) = 0xE700000000000000;
          *(inited + 80) = v95;
          *(inited + 88) = v94;

          v0[55] = sub_10003D21C(inited);
          swift_setDeallocating();
          sub_100007224(&qword_100838820, &unk_1006DB6B0);
          swift_arrayDestroy();
          defaultLogger()();
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&_mh_execute_header, v99, v100, "Will call update notification on PKPaymentService for the phone", v101, 2u);
          }

          v102 = v0[44];
          v104 = v0[39];
          v103 = v0[40];
          v105 = v0[35];

          v119(v102, v104);
          sub_100020260(v105 + 16, (v0 + 14));
          v106 = v0[18];
          sub_10000BA08(v0 + 14, v0[17]);
          v107 = *(v106 + 8);
          v120 = v107 + *v107;
          v108 = v107[1];
          v109 = swift_task_alloc();
          v0[56] = v109;
          *v109 = v0;
          v109[1] = sub_1002CC980;
          v111 = v0[33];
          v110 = v0[34];
          v124 = v106;

          __asm { BRAA            X8, X16 }
        }
      }

      v54 = v0[37];
      v55 = v0[38];
      v56 = v0[36];

      (*(v54 + 104))(v55, enum case for DIPError.Code.invalidAttribute(_:), v56);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    else
    {
      (*(v0[37] + 104))(v0[38], enum case for DIPError.Code.invalidAttribute(_:), v0[36]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v58 = v0[48];
    v57 = v0[49];
    v60 = v0[46];
    v59 = v0[47];
    v62 = v0[44];
    v61 = v0[45];
    v64 = v0[42];
    v63 = v0[43];
    v65 = v0[41];
    v66 = v0[38];

    v53 = v0[1];
  }

  else
  {
    v35 = v0[42];
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[42];
    v40 = v0[39];
    v41 = v0[40];
    if (v38)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to create textReplacementHelper. Will not show a notification to the user", v42, 2u);
    }

    (*(v41 + 8))(v39, v40);
    v44 = v0[48];
    v43 = v0[49];
    v46 = v0[46];
    v45 = v0[47];
    v48 = v0[44];
    v47 = v0[45];
    v50 = v0[42];
    v49 = v0[43];
    v51 = v0[41];
    v52 = v0[38];

    v53 = v0[1];
  }

  return v53();
}

uint64_t sub_1002CC980()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v10 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = sub_1002CCCE4;
  }

  else
  {
    v5 = *(v2 + 440);
    v8 = v2 + 416;
    v6 = *(v2 + 416);
    v7 = *(v8 + 8);

    v4 = sub_1002CCAB0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002CCAB0()
{
  v1 = v0[43];
  sub_10000BB78(v0 + 14);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did show notification to the user", v4, 2u);
  }

  v5 = v0[54];
  v6 = v0[51];
  v7 = v0[43];
  v8 = v0[39];
  v9 = v0[40];

  v5(v7, v8);
  v10 = type metadata accessor for IdentityManagementSessionDelegate();
  v11 = [objc_opt_self() defaultCenter];
  v12 = String._bridgeToObjectiveC()();
  v0[23] = v10;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v11 postNotificationName:v12 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v14 = v0[48];
  v13 = v0[49];
  v16 = v0[46];
  v15 = v0[47];
  v18 = v0[44];
  v17 = v0[45];
  v20 = v0[42];
  v19 = v0[43];
  v21 = v0[41];
  v22 = v0[38];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1002CCCE4()
{
  v41 = v0;
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[41];

  sub_10000BB78(v0 + 14);
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[57];
    v38 = v0[54];
    v10 = v0[40];
    v9 = v0[41];
    v11 = v0[39];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[21];
    v17 = Error.localizedDescription.getter();
    v19 = sub_100141FE4(v17, v18, &v40);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error occurred while showing notification to the user %s", v12, 0xCu);
    sub_10000BB78(v13);

    v38(v9, v11);
  }

  else
  {
    v20 = v0[54];
    v22 = v0[40];
    v21 = v0[41];
    v23 = v0[39];

    v20(v21, v23);
  }

  v24 = v0[57];
  v25 = v0[51];
  swift_willThrow();

  v39 = v0[57];
  v27 = v0[48];
  v26 = v0[49];
  v29 = v0[46];
  v28 = v0[47];
  v31 = v0[44];
  v30 = v0[45];
  v33 = v0[42];
  v32 = v0[43];
  v34 = v0[41];
  v35 = v0[38];

  v36 = v0[1];

  return v36();
}

uint64_t sub_1002CCF5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Attempting to clear the user notifications after provisioning completion", v17, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v3;
  v19[5] = a1;
  v19[6] = a2;

  sub_1003E653C(0, 0, v9, &unk_1006DCCC8, v19);
}

uint64_t sub_1002CD198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = type metadata accessor for Logger();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_1002CD268, 0, 0);
}

void sub_1002CD268()
{
  sub_100020260(v0[11] + 16, (v0 + 2));
  v1 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  v2 = *(v1 + 8);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1002CD3C0;
  v6 = v0[12];
  v5 = v0[13];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1002CD3C0()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1002CD5EC;
  }

  else
  {
    v3 = sub_1002CD4D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CD4D4()
{
  v1 = v0[17];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did clear the notification after provisioning completion", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);
  v10 = v0[16];
  v9 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002CD5EC()
{
  v26 = v0;
  v1 = v0[19];
  v2 = v0[16];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = v0[15];
    v24 = v0[16];
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[9];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100141FE4(v13, v14, &v25);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error occured while clearing notification to the user %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v24, v7);
  }

  else
  {
    v16 = v0[19];
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];

    (*(v18 + 8))(v17, v19);
  }

  v21 = v0[16];
  v20 = v0[17];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002CD7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 288) = a6;
  *(v8 + 296) = v7;
  *(v8 + 624) = a7;
  *(v8 + 272) = a4;
  *(v8 + 280) = a5;
  *(v8 + 256) = a2;
  *(v8 + 264) = a3;
  *(v8 + 248) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 304) = v9;
  v10 = *(v9 - 8);
  *(v8 + 312) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v12 = type metadata accessor for ProofingSession();
  *(v8 + 376) = v12;
  v13 = *(v12 - 8);
  *(v8 + 384) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v15 = sub_100007224(&qword_10083FF90, &qword_1006DCCA0);
  *(v8 + 400) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();

  return _swift_task_switch(sub_1002CD990, 0, 0);
}

uint64_t sub_1002CD990()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[9];
  v0[53] = v5;

  sub_100031918((v0 + 2));
  v6 = swift_allocObject();
  v0[54] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v0[55] = v8;
  *(v8 + 16) = sub_1002D14E0;
  *(v8 + 24) = v6;
  v9 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v10 = swift_task_alloc();
  v0[56] = v10;
  *v10 = v0;
  v10[1] = sub_1002CDB6C;
  v11 = v0[52];
  v12 = v0[50];

  return AsyncCoreDataContainer.performRead<A>(_:)(v11, sub_1000280B4, v8, v12);
}

uint64_t sub_1002CDB6C()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v9 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = sub_1002CE268;
  }

  else
  {
    v6 = v2[54];
    v5 = v2[55];
    v7 = v2[53];

    v4 = sub_1002CDC9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002CDC9C()
{
  v1 = *(v0 + 408);
  sub_10000BBC4(*(v0 + 416), v1, &qword_10083FF90, &qword_1006DCCA0);
  v2 = sub_100007224(&qword_10083FF98, &qword_1006DCCA8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 408);
    sub_10000BE18(*(v0 + 416), &qword_10083FF90, &qword_1006DCCA0);
LABEL_18:
    sub_10000BE18(v3, &qword_10083FF90, &qword_1006DCCA0);
    v40 = *(v0 + 408);
    v39 = *(v0 + 416);
    v41 = *(v0 + 392);
    v43 = *(v0 + 360);
    v42 = *(v0 + 368);
    v45 = *(v0 + 344);
    v44 = *(v0 + 352);
    v47 = *(v0 + 328);
    v46 = *(v0 + 336);
    v48 = *(v0 + 320);

    v49 = *(v0 + 8);

    return v49();
  }

  v4 = *(v0 + 376);
  v5 = *(*(v0 + 408) + *(v2 + 48));
  (*(*(v0 + 384) + 32))(*(v0 + 392));
  v6 = ProofingSession.state.getter();
  *(v0 + 464) = v7;
  if (!v7)
  {
    v33 = *(v0 + 344);
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v22, v23);
    v3 = *(v0 + 416);
    v26 = *(v0 + 384);
    v25 = *(v0 + 392);
    v27 = *(v0 + 376);
    v28 = *(v0 + 344);
    v30 = *(v0 + 304);
    v29 = *(v0 + 312);
    if (v34)
    {
      v70 = *(v0 + 392);
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "proofing session state doesn't exist. Will not show a notification to the user";
      goto LABEL_16;
    }

LABEL_17:

    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v25, v27);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = v6;
  v10 = *(v0 + 392);
  v11 = ProofingSession.country.getter();
  *(v0 + 472) = v12;
  if (!v12)
  {
    v35 = *(v0 + 352);

    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v22, v23);
    v3 = *(v0 + 416);
    v26 = *(v0 + 384);
    v25 = *(v0 + 392);
    v27 = *(v0 + 376);
    v28 = *(v0 + 352);
    v30 = *(v0 + 304);
    v29 = *(v0 + 312);
    if (v36)
    {
      v70 = *(v0 + 392);
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "proofing session country doesn't exist. Will not show a notification to the user";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v13 = v11;
  v14 = v12;
  v15 = *(v0 + 392);
  ProofingSession.documentType.getter();
  if (!v16)
  {
    v37 = *(v0 + 360);

    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v38 = os_log_type_enabled(v22, v23);
    v3 = *(v0 + 416);
    v26 = *(v0 + 384);
    v25 = *(v0 + 392);
    v27 = *(v0 + 376);
    v28 = *(v0 + 360);
    v30 = *(v0 + 304);
    v29 = *(v0 + 312);
    if (v38)
    {
      v70 = *(v0 + 392);
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "unable to derive document";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v17 = IdentityDocumentType.init(documentTypeString:)();
  if (v5)
  {
    v18 = *(v0 + 392);

    ProofingSession.proofingActionStatus.getter();
    v19 = IdentityProofingActionStatus.init(rawValue:)();
    if (v20)
    {
      v21 = *(v0 + 368);
      defaultLogger()();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      v24 = os_log_type_enabled(v22, v23);
      v3 = *(v0 + 416);
      v26 = *(v0 + 384);
      v25 = *(v0 + 392);
      v28 = *(v0 + 368);
      v27 = *(v0 + 376);
      v30 = *(v0 + 304);
      v29 = *(v0 + 312);
      if (v24)
      {
        v70 = *(v0 + 392);
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "invalid action status. Will not show the notification on the watch";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v22, v23, v32, v31, 2u);

        (*(v29 + 8))(v28, v30);
        (*(v26 + 8))(v70, v27);
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v59 = *(v0 + 392);
    if (*(v0 + 624))
    {
      v60 = 11;
    }

    else
    {
      v60 = v19;
    }

    v61 = ProofingSession.state.getter();
    v63 = v62;
    *(v0 + 480) = v62;
    v64 = ProofingSession.country.getter();
    v66 = v65;
    *(v0 + 488) = v65;
    v67 = swift_task_alloc();
    *(v0 + 496) = v67;
    *v67 = v0;
    v67[1] = sub_1002CE3A8;
    v68 = *(v0 + 296);

    return sub_1002CA338(v61, v63, v64, v66, v17, v60, 0);
  }

  else
  {
    v51 = *(v0 + 392);
    ProofingSession.productIdentifier.getter();
    *(v0 + 536) = v52;
    v53 = swift_task_alloc();
    *(v0 + 544) = v53;
    *v53 = v0;
    v53[1] = sub_1002CEADC;
    v54 = *(v0 + 296);
    v55 = *(v0 + 264);
    v56 = *(v0 + 272);
    v58 = *(v0 + 248);
    v57 = *(v0 + 256);

    return sub_1002CB8E4(v58, v57, v55, v56, v9, v8, v13, v14);
  }
}

uint64_t sub_1002CE268()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[53];

  v4 = v0[57];
  v5 = v0[42];
  v6 = v0[38];
  v7 = v0[39];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v7 + 8))(v5, v6);
  v9 = v0[51];
  v8 = v0[52];
  v10 = v0[49];
  v12 = v0[45];
  v11 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  v16 = v0[41];
  v15 = v0[42];
  v17 = v0[40];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002CE3A8()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v8 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = sub_1002CF3F8;
  }

  else
  {
    v6 = *(v2 + 480);
    v5 = *(v2 + 488);

    v4 = sub_1002CE4CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002CE4CC()
{
  v1 = v0[49];
  if (ProofingSession.shouldShowNotificationOnWatch.getter())
  {
    v2 = v0[49];
    v3 = ProofingSession.objectID.getter();
    v0[64] = v3;
    v4 = swift_task_alloc();
    v0[65] = v4;
    *v4 = v0;
    v4[1] = sub_1002CE688;

    return sub_1002D0B00(v3, sub_1002CFC90, 0);
  }

  else
  {
    v6 = v0[52];
    (*(v0[48] + 8))(v0[49], v0[47]);
    sub_10000BE18(v6, &qword_10083FF90, &qword_1006DCCA0);
    v8 = v0[51];
    v7 = v0[52];
    v9 = v0[49];
    v11 = v0[45];
    v10 = v0[46];
    v13 = v0[43];
    v12 = v0[44];
    v15 = v0[41];
    v14 = v0[42];
    v16 = v0[40];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1002CE688()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v6 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = sub_1002CE8B4;
  }

  else
  {

    v4 = sub_1002CE7A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002CE7A4()
{
  v1 = v0[52];
  (*(v0[48] + 8))(v0[49], v0[47]);
  sub_10000BE18(v1, &qword_10083FF90, &qword_1006DCCA0);
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[40];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002CE8B4()
{
  v24 = v0;

  *(v0 + 584) = *(v0 + 528);
  v1 = *(v0 + 328);
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 328);
    v5 = *(v0 + 304);
    v6 = *(v0 + 312);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 232);
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v23);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received an error while showing a notification on the watch %s", v7, 0xCu);
    sub_10000BB78(v8);

    v15 = *(v6 + 8);
    v15(v4, v5);
  }

  else
  {
    v16 = *(v0 + 328);
    v17 = *(v0 + 304);
    v18 = *(v0 + 312);

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  *(v0 + 592) = v15;
  v19 = *(v0 + 392);
  v20 = ProofingSession.objectID.getter();
  *(v0 + 600) = v20;
  v21 = swift_task_alloc();
  *(v0 + 608) = v21;
  *v21 = v0;
  v21[1] = sub_1002CEF8C;

  return sub_1002D0B00(v20, sub_1002CFE18, 0);
}

uint64_t sub_1002CEADC()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = v2[67];
  v6 = v2[59];
  v7 = v2[58];

  if (v0)
  {
    v8 = sub_1002CF628;
  }

  else
  {
    v8 = sub_1002CEC48;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002CEC48()
{
  v1 = v0[49];
  v2 = ProofingSession.objectID.getter();
  v0[70] = v2;
  v3 = swift_task_alloc();
  v0[71] = v3;
  *v3 = v0;
  v3[1] = sub_1002CED00;

  return sub_1002D0B00(v2, sub_1002CFFA4, 0);
}

uint64_t sub_1002CED00()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v5 = sub_1002CEE34;
  }

  else
  {
    v5 = sub_1002CE7A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002CEE34()
{
  v1 = v0[52];
  (*(v0[48] + 8))(v0[49], v0[47]);
  sub_10000BE18(v1, &qword_10083FF90, &qword_1006DCCA0);
  v2 = v0[72];
  v3 = v0[42];
  v4 = v0[38];
  v5 = v0[39];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v3, v4);
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[49];
  v10 = v0[45];
  v9 = v0[46];
  v12 = v0[43];
  v11 = v0[44];
  v14 = v0[41];
  v13 = v0[42];
  v15 = v0[40];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002CEF8C()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v5 = sub_1002CF290;
  }

  else
  {
    v5 = sub_1002CF0C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002CF0C0()
{
  v1 = v0[40];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[73];
  v6 = v0[52];
  v8 = v0[48];
  v7 = v0[49];
  v26 = v7;
  v27 = v0[74];
  v9 = v0[47];
  v10 = v0[39];
  v11 = v0[40];
  v12 = v0[38];
  if (v4)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "setting shouldShowNotificationOnWatch to true to show the notification to the user when the watch becomes active.", v13, 2u);
  }

  v27(v11, v12);
  (*(v8 + 8))(v26, v9);
  sub_10000BE18(v6, &qword_10083FF90, &qword_1006DCCA0);
  v15 = v0[51];
  v14 = v0[52];
  v16 = v0[49];
  v18 = v0[45];
  v17 = v0[46];
  v20 = v0[43];
  v19 = v0[44];
  v22 = v0[41];
  v21 = v0[42];
  v23 = v0[40];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1002CF290()
{
  v1 = v0[73];
  v2 = v0[52];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];

  (*(v4 + 8))(v3, v5);
  sub_10000BE18(v2, &qword_10083FF90, &qword_1006DCCA0);
  v6 = v0[77];
  v7 = v0[42];
  v8 = v0[38];
  v9 = v0[39];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v9 + 8))(v7, v8);
  v11 = v0[51];
  v10 = v0[52];
  v12 = v0[49];
  v14 = v0[45];
  v13 = v0[46];
  v16 = v0[43];
  v15 = v0[44];
  v18 = v0[41];
  v17 = v0[42];
  v19 = v0[40];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002CF3F8()
{
  v26 = v0;
  v2 = v0[60];
  v1 = v0[61];

  v0[73] = v0[63];
  v3 = v0[41];
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[41];
    v7 = v0[38];
    v8 = v0[39];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[29];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v25);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received an error while showing a notification on the watch %s", v9, 0xCu);
    sub_10000BB78(v10);

    v17 = *(v8 + 8);
    v17(v6, v7);
  }

  else
  {
    v18 = v0[41];
    v19 = v0[38];
    v20 = v0[39];

    v17 = *(v20 + 8);
    v17(v18, v19);
  }

  v0[74] = v17;
  v21 = v0[49];
  v22 = ProofingSession.objectID.getter();
  v0[75] = v22;
  v23 = swift_task_alloc();
  v0[76] = v23;
  *v23 = v0;
  v23[1] = sub_1002CEF8C;

  return sub_1002D0B00(v22, sub_1002CFE18, 0);
}

uint64_t sub_1002CF628()
{
  v1 = v0[52];
  (*(v0[48] + 8))(v0[49], v0[47]);
  sub_10000BE18(v1, &qword_10083FF90, &qword_1006DCCA0);
  v2 = v0[69];
  v3 = v0[42];
  v4 = v0[38];
  v5 = v0[39];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v3, v4);
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[49];
  v10 = v0[45];
  v9 = v0[46];
  v12 = v0[43];
  v11 = v0[44];
  v14 = v0[41];
  v13 = v0[42];
  v15 = v0[40];

  v16 = v0[1];

  return v16();
}

unint64_t sub_1002CF780@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, char *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  result = sub_1005791C8(a1, a2);
  if (!v3)
  {
    v16 = result;
    v41 = a1;
    v42 = v14;
    v43 = v8;
    if (result >> 62)
    {
      goto LABEL_27;
    }

    v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17;
    if (v17)
    {
      while (1)
      {
        v40 = v7;
        if (v18 == 1)
        {
          break;
        }

        v38 = 0;
        v39 = a3;
        if (v18 != 2)
        {
LABEL_15:

          a3 = v39;
          v23 = v42;
          v22 = v43;
          goto LABEL_20;
        }

        v12 = 0;
        v7 = v16 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v19 = *(v16 + 8 * v12 + 32);
          }

          v20 = v19;
          a3 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v21 = [v19 target];
          if (v21 == IdentityTarget.rawValue.getter())
          {

            v24 = 0;
            a3 = v39;
            goto LABEL_24;
          }

          ++v12;
          if (a3 == v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v33 = _CocoaArrayWrapper.endIndex.getter();
        if (!v33)
        {
          goto LABEL_29;
        }

        v17 = v33;
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      result = sub_1002D1610(v16);
      v24 = result;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = v42;
        v22 = v43;
      }

      else
      {
        v23 = v42;
        v22 = v43;
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v20 = *(v16 + 32);
      }

      if (v20)
      {
LABEL_24:
        v30 = v20;
        v31 = sub_100007224(&qword_10083FF98, &qword_1006DCCA8);
        v32 = *(v31 + 48);
        ProofingSession.init(_:)();

        a3[v32] = v24 & 1;
        return (*(*(v31 - 8) + 56))(a3, 0, 1, v31);
      }

LABEL_20:
      defaultLogger()();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v44 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_100141FE4(v41, a2, &v44);
        _os_log_impl(&_mh_execute_header, v25, v26, "proofing session for ID %s doesn't exist. Will not show a notification to the user.", v27, 0xCu);
        sub_10000BB78(v28);
      }

      (*(v22 + 8))(v23, v40);
      v29 = sub_100007224(&qword_10083FF98, &qword_1006DCCA8);
      return (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
    }

    else
    {
LABEL_29:

      defaultLogger()();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "proofing session doesn't exist. Will not show a notification to the user", v36, 2u);
      }

      (*(v43 + 8))(v12, v7);
      v37 = sub_100007224(&qword_10083FF98, &qword_1006DCCA8);
      return (*(*(v37 - 8) + 56))(a3, 1, 1, v37);
    }
  }

  return result;
}

id sub_1002CFC90(void *a1)
{
  result = [a1 managedObjectContext];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = 0;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1002D1570;
    *(v5 + 24) = v4;
    v8[4] = sub_10021E8E8;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10057E264;
    v8[3] = &unk_10080C4E8;
    v6 = _Block_copy(v8);
    v7 = a1;

    [v3 performBlockAndWait:v6];

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1002CFE18(void *a1)
{
  result = [a1 managedObjectContext];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = 1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1002D1980;
    *(v5 + 24) = v4;
    v8[4] = sub_10026CBB8;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10057E264;
    v8[3] = &unk_10080C560;
    v6 = _Block_copy(v8);
    v7 = a1;

    [v3 performBlockAndWait:v6];

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1002CFFA4(void *a1)
{
  result = [a1 managedObjectContext];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = 1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1002D1604;
    *(v5 + 24) = v4;
    v8[4] = sub_10026CBB8;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10057E264;
    v8[3] = &unk_10080C628;
    v6 = _Block_copy(v8);
    v7 = a1;

    [v3 performBlockAndWait:v6];

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002D0130(uint64_t a1, void *a2, void (*a3)(void))
{
  v5 = sub_10057886C(a2);
  if (!v3)
  {
    v6 = v5;
    a3();
    sub_1005783D4();
  }
}

uint64_t sub_1002D01A0()
{
  sub_10000BB78(v0 + 2);
  sub_10000BE18((v0 + 7), &unk_100845E80, &qword_1006DAD90);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow, &qword_10083D4B0, &qword_1006DC940);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingUserNotificationProvider()
{
  result = qword_10083FE00;
  if (!qword_10083FE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D02A0()
{
  sub_1001B4B18();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002D0358(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v3[18] = v4;
  v3[2] = v3;
  v3[3] = sub_1002D0488;
  v5 = swift_continuation_init();
  v3[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v3[10] = _NSConcreteStackBlock;
  v3[11] = 1107296256;
  v3[12] = sub_100429100;
  v3[13] = &unk_10080C6A0;
  v3[14] = v5;
  [v2 prepareIdentityProvisioningForTargetDeviceIdentifier:v4 completion:v3 + 10];

  return _swift_continuation_await(v3 + 2);
}

uint64_t sub_1002D0488()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    v4 = *(v1 + 48);
    swift_willThrow();
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_1002D05A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v8[18] = v11;
  v12 = String._bridgeToObjectiveC()();
  v8[19] = v12;
  if (a7 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8[20] = isa;
  v8[2] = v8;
  v8[3] = sub_1002D0744;
  v14 = swift_continuation_init();
  v8[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v8[10] = _NSConcreteStackBlock;
  v8[11] = 1107296256;
  v8[12] = sub_100429100;
  v8[13] = &unk_10080C6C8;
  v8[14] = v14;
  [v7 queueIdentityPassProvisioningWithPassMetadata:a1 targetDeviceIdentifier:v11 credentialIdentifier:v12 supplementalData:isa completion:v8 + 10];

  return _swift_continuation_await(v8 + 2);
}

uint64_t sub_1002D0744()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    v6 = *(v1 + 48);
    swift_willThrow();
  }

  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_1002D089C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result > 7)
  {
    if (result <= 9)
    {
      if (result != 8)
      {
        return 4;
      }
    }

    else
    {
      if (result == 10)
      {
        return 5;
      }

      if (result != 11)
      {
        if (result == 12)
        {
          return 7;
        }

LABEL_19:
        defaultLogger()();
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v16 = v11;
          *v10 = 136315138;
          v12 = IdentityProofingActionStatus.debugDescription.getter();
          v14 = sub_100141FE4(v12, v13, &v16);

          *(v10 + 4) = v14;
          _os_log_impl(&_mh_execute_header, v8, v9, "No corresponding option on the watch to show the notification with the action status %s ", v10, 0xCu);
          sub_10000BB78(v11);
        }

        (*(v3 + 8))(v7, v2);
        return 0;
      }
    }

    return 3;
  }

  if (result > 5)
  {
    return 2;
  }

  if (result)
  {
    if (result == 1)
    {
      return 6;
    }

    if (result == 4)
    {
      return 1;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002D0B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  return _swift_task_switch(sub_1002D0B24, 0, 0);
}

uint64_t sub_1002D0B24()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], v0 + 16);
  os_unfair_lock_unlock(v1 + 54);
  v2 = *(v0 + 232);
  v3 = *(v0 + 72);
  *(v0 + 240) = v3;

  v11 = *(v0 + 216);
  sub_100031918(v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 248) = v4;
  *(v4 + 16) = v11;
  *(v4 + 32) = v2;
  v5 = *(v3 + 16);
  v6 = swift_allocObject();
  *(v0 + 256) = v6;
  *(v6 + 16) = sub_1002D15E4;
  *(v6 + 24) = v4;
  v7 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
  v8 = v11;

  v9 = swift_task_alloc();
  *(v0 + 264) = v9;
  *v9 = v0;
  v9[1] = sub_1002D0D00;

  return AsyncCoreDataContainer.performWrite<A>(_:)();
}

uint64_t sub_1002D0D00()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_1002D0E48;
  }

  else
  {
    v6 = v2[31];
    v5 = v2[32];
    v7 = v2[30];

    v4 = sub_1002D0E30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D0E48()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];

  v4 = v0[1];
  v5 = v0[34];

  return v4();
}

uint64_t sub_1002D0EC0(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, NSString a5, uint64_t a6, NSString a7)
{
  isa = a3;
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
    v8[18] = v12;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  v8[18] = 0;
  if (a3)
  {
LABEL_3:
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_4:
  v8[19] = isa;
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  v8[20] = a5;
  if (a7)
  {
    a7 = String._bridgeToObjectiveC()();
  }

  v8[21] = a7;
  v8[2] = v8;
  v8[3] = sub_1002D1078;
  v13 = swift_continuation_init();
  v8[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v8[10] = _NSConcreteStackBlock;
  v8[11] = 1107296256;
  v8[12] = sub_100429100;
  v8[13] = &unk_10080C6F0;
  v8[14] = v13;
  [v7 updateNotificationForProductIdentifier:v12 configuration:isa localizedNotificationTitle:a5 localizedNotificationMessage:a7 completion:v8 + 10];

  return _swift_continuation_await(v8 + 2);
}

uint64_t sub_1002D1078()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v5 = *(*v0 + 152);
  v6 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    v7 = *(v1 + 48);
    swift_willThrow();
  }

  v8 = *(v2 + 8);

  return v8();
}

uint64_t sub_1002D11F0()
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v0 = [objc_allocWithZone(PKPaymentService) init];
  v22[3] = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  v22[4] = &off_10080C410;
  v22[0] = v0;
  type metadata accessor for IdentityProofingConfigProvider();
  v1 = swift_allocObject();
  v2 = type metadata accessor for IdentityProofingTextReplacementProvider();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = IdentityProofingTextReplacementProvider.init()();
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v6 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = type metadata accessor for IdentityProofingUserNotificationProvider();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0;
  v12 = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  v13 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  sub_100020260(v22, v11 + 16);
  sub_10000BBC4(v23, &v17, &unk_100845E80, &qword_1006DAD90);
  if (!v18)
  {
    if (qword_1008824A8 && (v14 = *(qword_1008824A8 + 152)) != 0)
    {
      *(&v20 + 1) = type metadata accessor for IdentityWatchSessionManagementListener();
      v21 = &off_10080C438;
      *&v19 = v14;
      v15 = v14;
      sub_10000BE18(v23, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78(v22);
      if (!v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_10000BE18(v23, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78(v22);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      if (!v18)
      {
        goto LABEL_9;
      }
    }

    sub_10000BE18(&v17, &unk_100845E80, &qword_1006DAD90);
    goto LABEL_9;
  }

  sub_10000BE18(v23, &unk_100845E80, &qword_1006DAD90);
  sub_10000BB78(v22);
  sub_10001F358(&v17, &v19);
LABEL_9:
  swift_beginAccess();
  sub_1000B2764(&v19, v11 + 56, &unk_100845E80, &qword_1006DAD90);
  swift_endAccess();
  *(v11 + 96) = v1;
  *(v11 + 104) = v5;
  *(v11 + 112) = v7;
  return v11;
}

uint64_t sub_1002D14A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002D1500()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002D1538()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1002D158C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D15A4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002D1610(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v16 = result;
  if (_CocoaArrayWrapper.endIndex.getter() != 1)
  {
    return 0;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  result = v16;
  if (!v17)
  {
    return 0;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = result;
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = result;
    v9 = *(a1 + 32);
  }

  v10 = v9;
  [v9 target];

  IdentityTarget.init(rawValue:)();
  if (v11)
  {
    return 0;
  }

  v12 = IdentityTarget.rawValue.getter();
  if (v12 != IdentityTarget.rawValue.getter())
  {
    return 0;
  }

  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Proofing is in gift watch scenario", v15, 2u);
  }

  (*(v3 + 8))(v7, v8);
  return 1;
}

uint64_t sub_1002D1810()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002D1858(uint64_t a1)
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

  return sub_1002CD198(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D198C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002D1A64, 0, 0);
}

uint64_t sub_1002D1A64()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if Wallet was deleted", v4, 2u);
  }

  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = *(v9 + 32);
  v0[2] = *(v9 + 24);
  v0[3] = v11;
  v12 = swift_task_alloc();
  *(v12 + 16) = v0 + 2;

  LOBYTE(v6) = sub_10035C8E4(sub_1000307C0, v12, v8);

  if (v6)
  {
    v13 = v0[9];
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Wallet has been deleted, will clear all the proofing sessions locally", v16, 2u);
    }

    v17 = v0[9];
    v18 = v0[6];
    v19 = v0[7];
    v20 = v0[5];

    v10(v17, v18);
    v0[11] = *(v20 + 16);

    v21 = swift_task_alloc();
    v0[12] = v21;
    *v21 = v0;
    v21[1] = sub_1002D1DB0;

    return sub_10028C2C4();
  }

  else
  {
    v23 = v0[8];
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[7];
    v27 = v0[8];
    v29 = v0[6];
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Wallet not deleted. Moving on...", v30, 2u);
    }

    v10(v27, v29);
    v32 = v0[9];
    v31 = v0[10];
    v33 = v0[8];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1002D1DB0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v9 = *v0;

  v4 = v1[10];
  v5 = v1[9];
  v6 = v1[8];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1002D1F1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1002D1F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002D20AC, 0, 0);
}

uint64_t sub_1002D20AC()
{
  v1 = *(v0[5] + 16);
  v2 = OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService;
  v0[14] = v1;
  v0[15] = v2;
  v3 = *(v1 + v2);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1002D2154;

  return sub_1006738C8();
}

uint64_t sub_1002D2154(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1002D2254, 0, 0);
}

uint64_t sub_1002D2254()
{
  v46 = v0;
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 24);
    v4 = [*(v0 + 136) deviceID];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v0 + 144) = v5;
    *(v0 + 152) = v7;
    defaultLogger()();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 104);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    if (v10)
    {
      v44 = *(v0 + 104);
      v14 = *(v0 + 24);
      v42 = *(v0 + 16);
      v43 = *(v0 + 56);
      v15 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_100141FE4(v5, v7, &v45);
      *(v15 + 12) = 2080;
      if (v14)
      {
        v16 = v42;
      }

      else
      {
        v16 = 7104878;
      }

      if (v14)
      {
        v17 = v3;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      v18 = sub_100141FE4(v16, v17, &v45);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "Established session with watch with pairingID: %s, proofingMinWatchOSVersion: %s", v15, 0x16u);
      swift_arrayDestroy();

      v19 = *(v12 + 8);
      v19(v44, v43);
    }

    else
    {

      v19 = *(v12 + 8);
      v19(v11, v13);
    }

    *(v0 + 160) = v19;
    v33 = *(v0 + 112);
    v34 = *(v0 + 120);
    v35._countAndFlagsBits = 0x6638643237646131;
    v36._countAndFlagsBits = 0x7369206863746157;
    v36._object = 0xEF64657269617020;
    v35._object = 0xE800000000000000;
    logMilestone(tag:description:)(v35, v36);
    v37 = *(v33 + v34);
    *(v0 + 168) = v37;
    v37;
    v38 = swift_task_alloc();
    *(v0 + 176) = v38;
    *v38 = v0;
    v38[1] = sub_1002D263C;
    v39 = *(v0 + 24);
    v40 = *(v0 + 32);
    v41 = *(v0 + 16);

    return sub_100675578(v41, v39, v40);
  }

  else
  {
    v20 = *(v0 + 80);
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 64);
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No watch is paired to the device", v25, 2u);
    }

    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 88);
    v29 = *(v0 + 72);
    v30 = *(v0 + 48);
    (*(v24 + 8))(*(v0 + 80), *(v0 + 56));

    v31 = *(v0 + 8);

    return v31(0);
  }
}

uint64_t sub_1002D263C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(v4 + 184) = v1;

  v7 = *(v4 + 168);
  if (v1)
  {
    v8 = *(v4 + 152);

    v9 = sub_1002D29F0;
  }

  else
  {

    *(v4 + 192) = a1 & 1;
    v9 = sub_1002D2794;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002D2794()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  if (v1 == 1)
  {
    v4 = (v0 + 96);
    v3 = *(v0 + 96);
    v5 = *(v0 + 144);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v9[5] = v5;
    v9[6] = v2;

    sub_1003E653C(0, 0, v6, &unk_1006DCDB8, v9);

    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 64);
    if (!v12)
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Watch is paired to the device and its preflight check is successful";
  }

  else
  {
    v4 = (v0 + 88);
    v16 = *(v0 + 88);
    v17 = *(v0 + 152);

    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v10, v11);
    v19 = *(v0 + 64);
    if (!v18)
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Watch is paired to the device but it failed the preflight check";
  }

  _os_log_impl(&_mh_execute_header, v10, v11, v15, v14, 2u);

LABEL_7:

  v20 = *v4;
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v24 = *(v0 + 80);
  v23 = *(v0 + 88);
  v25 = *(v0 + 72);
  v26 = *(v0 + 48);
  (*(v0 + 160))(v20, *(v0 + 56));

  v27 = *(v0 + 8);

  return v27(v1);
}

uint64_t sub_1002D29F0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 72);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Watch is paired to the device but it failed the preflight check: %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
    v10 = *(v0 + 184);
  }

  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v15 = *(v0 + 48);
  v16 = *(v0 + 64) + 8;
  (*(v0 + 160))(*(v0 + 72), *(v0 + 56));

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_1002D2BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for DIPError.Code();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002D2CE0, 0, 0);
}

uint64_t sub_1002D2CE0()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Kicked off prearm trust cleanup, if any", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[12] = v9;
  v9(v5, v6);
  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1002D2E28;
  v13 = v0[3];
  v12 = v0[4];

  return sub_1004B2600(v13, v12);
}

uint64_t sub_1002D2E28()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002D2F78, 0, 0);
  }

  else
  {
    v5 = v3[10];
    v4 = v3[11];
    v6 = v3[7];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1002D2F78()
{
  v1 = v0[14];
  v10 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.cleanupPrearmTrustError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v10(v2, v4);

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002D3138(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DIPError();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v9 = *(v8 + 64) + 15;
  v3[31] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[32] = v10;
  v11 = *(v10 - 8);
  v3[33] = v11;
  v12 = *(v11 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_1002D3308, 0, 0);
}

uint64_t sub_1002D3308()
{
  v0[42] = *(v0[25] + 16);
  v1 = swift_task_alloc();
  v0[43] = v1;
  *v1 = v0;
  v1[1] = sub_1002D33C0;
  v2 = v0[23];
  v3 = v0[24];

  return sub_1004C9820((v0 + 9), v2, v3);
}

uint64_t sub_1002D33C0()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return _swift_task_switch(sub_1002D34BC, 0, 0);
}

uint64_t sub_1002D34BC()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 56) = v1;
    *(v0 + 64) = *(v0 + 120);
    *(v0 + 66) = *(v0 + 122);
    v3 = swift_task_alloc();
    *(v0 + 352) = v3;
    *v3 = v0;
    v3[1] = sub_1002D3690;
    v4 = *(v0 + 336);

    return sub_1004B1CC8();
  }

  else
  {
    v6 = *(v0 + 296);
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "establishPrearmTrust - establishing a NEW trust", v9, 2u);
    }

    v10 = *(v0 + 296);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);

    v13 = *(v12 + 8);
    *(v0 + 392) = v13;
    v13(v10, v11);
    v14 = swift_task_alloc();
    *(v0 + 400) = v14;
    *v14 = v0;
    v14[1] = sub_1002D3E80;
    v15 = *(v0 + 336);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);

    return sub_1004BCE00(v17, v16);
  }
}

uint64_t sub_1002D3690(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a2;
  *(v4 + 152) = v2;
  *(v4 + 160) = a1;
  v5 = *(v3 + 352);
  v7 = *v2;
  *(v4 + 67) = a2;

  return _swift_task_switch(sub_1002D3798, 0, 0);
}

uint64_t sub_1002D3798()
{
  if ((*(v0 + 67) & 1) != 0 || *(v0 + 160))
  {
    v27 = *(v0 + 328);
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "establishPrearmTrust - fetching attestation from existing trust", v30, 2u);
    }

    v31 = *(v0 + 328);
    v32 = *(v0 + 256);
    v33 = *(v0 + 264);

    v34 = *(v33 + 8);
    *(v0 + 360) = v34;
    v34(v31, v32);
    v35 = swift_task_alloc();
    *(v0 + 368) = v35;
    *v35 = v0;
    v35[1] = sub_1002D3BCC;
    v36 = *(v0 + 336);
    v38 = *(v0 + 184);
    v37 = *(v0 + 192);

    return sub_1004B9EF8(v38, v37, v0 + 16);
  }

  else
  {
    v1 = *(v0 + 312);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "establishPrearmTrust - no identity passes on watch. Not re-using trust", v4, 2u);
    }

    v5 = *(v0 + 304);
    v6 = *(v0 + 312);
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v11 = *(v0 + 232);
    v12 = *(v0 + 208);

    v13 = *(v7 + 8);
    v13(v6, v8);
    (*(v9 + 104))(v10, enum case for DIPError.Code.invalidPrearmTrustReuseAttempt(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    sub_10000BE18(v0 + 72, &qword_100845E10, &qword_1006DCDA8);
    v13(v5, v8);

    v14 = *(v0 + 296);
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "establishPrearmTrust - establishing a NEW trust", v17, 2u);
    }

    v18 = *(v0 + 296);
    v19 = *(v0 + 256);
    v20 = *(v0 + 264);

    v21 = *(v20 + 8);
    *(v0 + 392) = v21;
    v21(v18, v19);
    v22 = swift_task_alloc();
    *(v0 + 400) = v22;
    *v22 = v0;
    v22[1] = sub_1002D3E80;
    v23 = *(v0 + 336);
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);

    return sub_1004BCE00(v25, v24);
  }
}

uint64_t sub_1002D3BCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_1002D4A14;
  }

  else
  {
    v5 = sub_1002D3CE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D3CE0()
{
  v1 = v0[40];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[45];
  v6 = v0[40];
  v7 = v0[32];
  v8 = v0[33];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "establishPrearmTrust - returning a watch attestation fetched based on existing trust", v9, 2u);
  }

  sub_10000BE18((v0 + 9), &qword_100845E10, &qword_1006DCDA8);

  v5(v6, v7);
  v22 = v0[47];
  v11 = v0[40];
  v10 = v0[41];
  v13 = v0[38];
  v12 = v0[39];
  v15 = v0[36];
  v14 = v0[37];
  v17 = v0[34];
  v16 = v0[35];
  v18 = v0[31];
  v19 = v0[28];

  v20 = v0[1];

  return v20(v22);
}

uint64_t sub_1002D3E80(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 400);
  v5 = *v3;
  v5[51] = a1;
  v5[52] = a2;
  v5[53] = v2;

  if (v2)
  {
    v7 = v5[40];
    v6 = v5[41];
    v9 = v5[38];
    v8 = v5[39];
    v11 = v5[36];
    v10 = v5[37];
    v13 = v5[34];
    v12 = v5[35];
    v17 = v5[31];
    v14 = v5[28];

    v15 = v5[1];

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_1002D4050, 0, 0);
  }
}

uint64_t sub_1002D4050()
{
  v74 = v0;
  if ([*(v0 + 408) credentialAccessibilityEnabled])
  {
    v1 = *(v0 + 288);
    v2 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 432) = v3;

    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 392);
    v8 = *(v0 + 288);
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    if (v6)
    {
      v70 = *(v0 + 392);
      v11 = swift_slowAlloc();
      v69 = v8;
      v12 = swift_slowAlloc();
      v73[0] = v12;
      *v11 = 136315138;
      v13 = Array.description.getter();
      v15 = sub_100141FE4(v13, v14, v73);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Phone's accessibility is enabled, trying to unregister for event: %s", v11, 0xCu);
      sub_10000BB78(v12);

      v70(v69, v10);
    }

    else
    {

      v7(v8, v10);
    }

    v29 = swift_task_alloc();
    *(v0 + 440) = v29;
    *v29 = v0;
    v29[1] = sub_1002D4684;
    v30 = *(v0 + 336);

    return sub_1004B8058(v3);
  }

  else
  {
    v16 = *(v0 + 272);
    v17 = *(v0 + 192);
    defaultLogger()();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 392);
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v24 = *(v0 + 256);
    if (v20)
    {
      v71 = *(v0 + 392);
      v26 = *(v0 + 184);
      v25 = *(v0 + 192);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v73[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_100141FE4(v26, v25, v73);
      _os_log_impl(&_mh_execute_header, v18, v19, "Trying to persist prearm trust key and certificate for watch with pairingID: %s", v27, 0xCu);
      sub_10000BB78(v28);

      v71(v22, v24);
    }

    else
    {

      v21(v22, v24);
    }

    v32 = *(v0 + 424);
    type metadata accessor for IdentityProofingDataContext();
    swift_allocObject();
    sub_10057E28C();
    if (v32)
    {
      v41 = *(v0 + 408);
      v40 = *(v0 + 416);
      v43 = *(v0 + 240);
      v42 = *(v0 + 248);
      v44 = *(v0 + 232);
      v45 = *(v0 + 208);

      (*(v43 + 104))(v42, enum case for DIPError.Code.internalError(_:), v44);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v47 = *(v0 + 320);
      v46 = *(v0 + 328);
      v49 = *(v0 + 304);
      v48 = *(v0 + 312);
      v51 = *(v0 + 288);
      v50 = *(v0 + 296);
      v53 = *(v0 + 272);
      v52 = *(v0 + 280);
      v54 = *(v0 + 248);
      v55 = *(v0 + 224);

      v56 = *(v0 + 8);

      return v56();
    }

    else
    {
      v34 = v33;
      v35 = *(v0 + 408);
      v37 = *(v0 + 184);
      v36 = *(v0 + 192);
      v38 = swift_allocObject();
      v38[2] = v34;
      v38[3] = v37;
      v38[4] = v36;
      v38[5] = v35;

      v39 = v35;
      sub_10057C18C(sub_1002D5680, v38);
      v57 = *(v0 + 408);

      v72 = *(v0 + 416);
      v59 = *(v0 + 320);
      v58 = *(v0 + 328);
      v61 = *(v0 + 304);
      v60 = *(v0 + 312);
      v63 = *(v0 + 288);
      v62 = *(v0 + 296);
      v65 = *(v0 + 272);
      v64 = *(v0 + 280);
      v66 = *(v0 + 248);
      v67 = *(v0 + 224);

      v68 = *(v0 + 8);

      return v68(v72);
    }
  }
}

uint64_t sub_1002D4684(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(v4 + 448) = a1;
  *(v4 + 456) = v1;

  v7 = *(v3 + 432);

  if (v1)
  {
    v8 = sub_1002D4B14;
  }

  else
  {
    v8 = sub_1002D47C0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002D47C0()
{
  v36 = v0;
  v1 = v0[56];
  v2 = v0[35];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[56];
  v7 = v0[51];
  v8 = v0[49];
  v9 = v0[35];
  v11 = v0[32];
  v10 = v0[33];
  if (v5)
  {
    v33 = v0[49];
    v12 = swift_slowAlloc();
    v32 = v9;
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315138;
    v31 = v11;
    v14 = Array.description.getter();
    v16 = v15;

    v17 = sub_100141FE4(v14, v16, &v35);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully unregistered for watch prearm event, current registered events: %s", v12, 0xCu);
    sub_10000BB78(v13);

    v33(v32, v31);
  }

  else
  {
    v18 = v0[56];

    v8(v9, v11);
  }

  v34 = v0[52];
  v20 = v0[40];
  v19 = v0[41];
  v22 = v0[38];
  v21 = v0[39];
  v24 = v0[36];
  v23 = v0[37];
  v26 = v0[34];
  v25 = v0[35];
  v27 = v0[31];
  v28 = v0[28];

  v29 = v0[1];

  return v29(v34);
}

uint64_t sub_1002D4A14()
{
  sub_10000BE18((v0 + 9), &qword_100845E10, &qword_1006DCDA8);
  v13 = v0[48];
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[31];
  v10 = v0[28];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002D4B14()
{
  v30 = v0[49];
  v1 = v0[38];
  v26 = v0[57];
  v27 = v0[33];
  v28 = v0[51];
  v29 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  _StringGuts.grow(_:)(58);
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x800000010070B280;
  String.append(_:)(v8);
  swift_getErrorValue();
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[18];
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  (*(v2 + 104))(v3, enum case for DIPError.Code.watchEventUnregistrationError(_:), v5);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v7 + 16))(v13, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v30(v1, v29);
  (*(v7 + 8))(v4, v6);

  v31 = v0[52];
  v15 = v0[40];
  v14 = v0[41];
  v17 = v0[38];
  v16 = v0[39];
  v19 = v0[36];
  v18 = v0[37];
  v21 = v0[34];
  v20 = v0[35];
  v22 = v0[31];
  v23 = v0[28];

  v24 = v0[1];

  return v24(v31);
}

void sub_1002D4DCC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057C8F0(a2, a3);
  if (!v4)
  {
    v35 = v10;
    v36 = v9;
    v38 = 0;
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 insertNewObjectForEntityForName:v15 inManagedObjectContext:*(a1 + 16)];

    type metadata accessor for StoredPrearmTrust();
    v37 = v16;
    v17 = swift_dynamicCastClassUnconditional();
    v18 = String._bridgeToObjectiveC()();
    [v17 setPairingID:v18];

    v19 = [a4 credentialKeyBlob];
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B90C(v20, v22);
    [v17 setKeyBlob:isa];

    v24 = [a4 credentialBAACertificate];
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B90C(v25, v27);
    [v17 setBaaCertificate:v28];

    [v17 setRequiresDeletion:0];
    [v17 setVersion:2];
    v29 = v38;
    sub_10057BA64();
    if (v29)
    {
    }

    else
    {
      v30 = v37;
      defaultLogger()();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v39 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_100141FE4(a2, a3, &v39);
        _os_log_impl(&_mh_execute_header, v31, v32, "Successfully persisted prearm trust key and certificate for watch with pairingID: %s", v33, 0xCu);
        sub_10000BB78(v34);
      }

      (*(v35 + 8))(v13, v36);
    }
  }
}

uint64_t sub_1002D515C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002D521C, 0, 0);
}

uint64_t sub_1002D521C()
{
  v20 = v0;
  v1 = v0[5];
  v2 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[6] = v3;

  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v18 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v12 = Array.description.getter();
    v14 = sub_100141FE4(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "IdentityProofingWatchProvider registering events: %{public}s", v10, 0xCu);
    sub_10000BB78(v11);

    (*(v7 + 8))(v18, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v15 = *(v0[2] + 16);
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_1002D541C;

  return sub_1004B74D8(v3);
}

uint64_t sub_1002D541C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002D559C, 0, 0);
  }

  else
  {
    v8 = *(v4 + 40);

    v9 = *(v7 + 8);

    return v9(a1);
  }
}

uint64_t sub_1002D559C()
{
  v1 = v0[8];
  v2 = v0[5];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1002D5638()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002D56A0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002D56E8(uint64_t a1)
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

  return sub_1002D2BB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D57B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002D57D0, 0, 0);
}

uint64_t sub_1002D57D0()
{
  v1 = v0[2];
  IdentityProofingConfiguration.targetDevice.getter();
  if ((v2 & 1) == 0)
  {
    v3 = IdentityTarget.rawValue.getter();
    if (v3 == IdentityTarget.rawValue.getter())
    {
      v4 = 0xEA00000000004543;
      v5 = 0x495645445F444441;
LABEL_9:
      v16 = v0[1];

      return v16(v5, v4);
    }
  }

  v6 = v0[2];
  v7 = IdentityProofingConfiguration.accountKeyIdentifier.getter();
  if (!v8)
  {
    v4 = 0xE400000000000000;
    v5 = 1280070982;
    goto LABEL_9;
  }

  v9 = v7;
  v10 = v8;
  v11 = *(v0[3] + 16);

  v12 = sub_100189C68(v9, v10);

  v0[4] = v12;

  v13 = type metadata accessor for IdentityProofingDeviceMigrationManager();
  v14 = swift_task_alloc();
  v0[5] = v14;
  *v14 = v0;
  v14[1] = sub_1002D59D4;

  return (sub_1001897BC)(v13, &off_10080A320);
}

uint64_t sub_1002D59D4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1002D5B98;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v7 = sub_1002D5B00;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002D5B00()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  if (v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 1280070982;
  }

  if (v1)
  {
    v4 = 0x80000001007063E0;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_1002D5B98()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1002D5BFC(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1002D5CC0, 0, 0);
}

uint64_t sub_1002D5CC0()
{
  v1 = v0[24];
  v2 = IdentityProofingConfiguration.state.getter();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v0[24];
    v7 = IdentityProofingConfiguration.country.getter();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = v0[24];
      v0[29] = IdentityProofingConfiguration.productIdentifier.getter();
      v0[30] = v12;
      if (v12)
      {
        sub_100007224(&qword_100838818, &unk_1006D0F90);
        inited = swift_initStackObject();
        v0[31] = inited;
        *(inited + 16) = xmmword_1006BFF90;
        strcpy((inited + 32), "resident_state");
        *(inited + 47) = -18;
        *(inited + 48) = v4;
        *(inited + 56) = v5;
        *(inited + 64) = 0xD000000000000010;
        *(inited + 72) = 0x800000010070B400;
        *(inited + 80) = v9;
        *(inited + 88) = v10;
        strcpy((inited + 96), "proofing_type");
        *(inited + 110) = -4864;
        v14 = swift_task_alloc();
        v0[32] = v14;
        *v14 = v0;
        v14[1] = sub_1002D60AC;
        v15 = v0[24];
        v16 = v0[25];

        return sub_1002D57B0(v15);
      }

      v22 = v0[27];
      v21 = v0[28];
      v23 = v0[26];

      (*(v22 + 104))(v21, enum case for DIPError.Code.productIdentifierUnavailable(_:), v23);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    else
    {
      v19 = v0[27];
      v18 = v0[28];
      v20 = v0[26];

      (*(v19 + 104))(v18, enum case for DIPError.Code.idCountryUnavailable(_:), v20);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }
  }

  else
  {
    (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.idStateUnavailable(_:), v0[26]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v24 = v0[28];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1002D60AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 256);
  v8 = *v3;
  *(*v3 + 264) = v2;

  if (v2)
  {
    v9 = v6[30];

    v10 = sub_1002D69E4;
  }

  else
  {
    v6[34] = a2;
    v6[35] = a1;
    v10 = sub_1002D61E8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1002D61E8()
{
  v1 = v0[34];
  v2 = v0[31];
  *(v2 + 112) = v0[35];
  *(v2 + 120) = v1;
  v0[36] = sub_10003D21C(v2);
  swift_setDeallocating();
  sub_100007224(&qword_100838820, &unk_1006DB6B0);
  swift_arrayDestroy();
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_1002D62B8;

  return sub_1002D6B30();
}

uint64_t sub_1002D62B8()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1002D67E4;
  }

  else
  {
    v3 = sub_1002D63CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002D63CC()
{
  *(v0 + 312) = sub_1006146AC();
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *v1 = v0;
  v1[1] = sub_1002D6474;

  return sub_1002D706C();
}

uint64_t sub_1002D6474(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_1002D6574, 0, 0);
}

uint64_t sub_1002D6574()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_1002D6638;
  v5 = v0[41];
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[29];

  return sub_100612114((v0 + 18), v5, v7, v8, v1, v3);
}

uint64_t sub_1002D6638()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = v2[41];
  v6 = v2[39];
  v7 = v2[36];
  v8 = v2[30];
  if (v0)
  {

    v9 = sub_1002D6AA8;
  }

  else
  {
    v10 = v2[36];

    v9 = sub_1002D685C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002D67E4()
{
  v1 = v0[36];
  v2 = v0[30];

  v3 = v0[38];
  v4 = v0[28];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D685C()
{
  v1 = *(v0 + 224);
  if (*(v0 + 168))
  {
    sub_10012D290((v0 + 144), *(v0 + 184));
  }

  else
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    sub_10022074C(v0 + 144);
    (*(v4 + 104))(v1, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v3);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v5 = *(v0 + 224);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002D69E4()
{
  v1 = v0[31];
  v2 = v1[13];

  v3 = v1[9];
  v4 = v1[11];

  v5 = v1[5];
  v6 = v1[7];

  swift_setDeallocating();
  sub_100007224(&qword_100838820, &unk_1006DB6B0);
  swift_arrayDestroy();
  v7 = v0[33];
  v8 = v0[28];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002D6AA8()
{
  v1 = v0[43];
  v2 = v0[28];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002D6B30()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002D6C48, 0, 0);
}

uint64_t sub_1002D6C48()
{
  v1 = sub_1003159F4();
  if (v2)
  {
    v3 = v0[4];
    v4 = v0[7];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v1;
    v8 = v0[7];
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v9, v10, "IdentityProofingWorkflowProvider enabled simulated delay (of %ld s) for fetching dynamic workflow", v11, 0xCu);
    }

    v13 = v0[6];
    v12 = v0[7];
    v15 = v0[4];
    v14 = v0[5];

    (*(v13 + 8))(v12, v14);
    static Clock<>.continuous.getter();
    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = sub_1002D6E44;
    v17 = v0[4];

    return (sub_1003DA1A4)(1000000000000000000 * v7, ((v7 >> 63) & 0xF21F494C589C0000) + ((v7 * 0xDE0B6B3A7640000uLL) >> 64), 0, 0, 1);
  }
}

uint64_t sub_1002D6E44()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_1002D6FFC, 0, 0);
  }

  else
  {
    v7 = v6[7];
    v8 = v6[4];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1002D6FFC()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1002D706C()
{
  v1 = type metadata accessor for UUID();
  v0[9] = v1;
  v2 = *(v1 - 8);
  v0[10] = v2;
  v3 = *(v2 + 64) + 15;
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002D7128, 0, 0);
}

uint64_t sub_1002D7128()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  type metadata accessor for IdentityProofingDatabaseProvider();
  v4 = swift_allocObject();
  v5 = type metadata accessor for IdentitySelfHealer();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v6[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v4;
  *(v0 + 56) = v6;
  *(v0 + 64) = v5;
  v8 = objc_msgSendSuper2((v0 + 56), "init");
  *(v0 + 96) = v8;
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 104) = v9;
  (*(v2 + 8))(v1, v3);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_1002D72A8;

  return sub_1005FB45C(v0 + 16, v8, &off_10080DB50, 0, 0);
}

uint64_t sub_1002D72A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v10 = *v1;

  sub_10000BB78((v3 + 16));

  v8 = *(v10 + 8);

  return v8(a1);
}

uint64_t sub_1002D740C(uint64_t a1)
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

uint64_t sub_1002D7444()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1002D7474()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1002D74A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1002D74D4()
{
  v1 = *(v0 + 96);
  sub_1000363B4(v1, *(v0 + 104));
  return v1;
}

uint64_t sub_1002D7508(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = type metadata accessor for Logger();
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1002D75C8, 0, 0);
}

uint64_t sub_1002D75C8()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[28];
  v3 = v0[9];
  v0[32] = v3;

  sub_100031918((v0 + 2));
  v4 = swift_allocObject();
  v0[33] = v4;
  *(v4 + 16) = v2;
  v5 = *(v3 + 16);
  v6 = swift_allocObject();
  v0[34] = v6;
  *(v6 + 16) = sub_1002E3F6C;
  *(v6 + 24) = v4;
  v7 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[35] = v8;
  v9 = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  *v8 = v0;
  v8[1] = sub_1002D7794;
  v10 = v0[27];

  return AsyncCoreDataContainer.performRead<A>(_:)(v10, sub_1000280B4, v6, v9);
}

uint64_t sub_1002D7794()
{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002D78F8, 0, 0);
  }

  else
  {
    v5 = v3[33];
    v4 = v3[34];
    v6 = v3[32];

    v7 = v3[31];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1002D78F8()
{
  v26 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];

  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[36];
  v9 = v0[30];
  v10 = v0[31];
  v11 = v0[29];
  if (v7)
  {
    v12 = v0[28];
    v24 = v0[31];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    v15 = IdentityDocumentType.description.getter();
    v17 = sub_100141FE4(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to retreieve a proofing session for %s", v13, 0xCu);
    sub_10000BB78(v14);

    (*(v9 + 8))(v24, v11);
  }

  else
  {
    v18 = v0[36];

    (*(v9 + 8))(v10, v11);
  }

  v19 = v0[27];
  v20 = type metadata accessor for ProofingSession();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = v0[31];

  v22 = v0[1];

  return v22();
}

void sub_1002D7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 a28, uint64_t a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34)
{
  v127 = a6;
  v128 = a8;
  v136 = a5;
  v137 = a7;
  v125 = a2;
  v126 = a4;
  v135 = a3;
  v140 = a17;
  v35 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v124 = *(v35 - 8);
  v36 = *(v124 + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v134 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v37);
  v133 = &v90 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v90 - v41;
  __chkstk_darwin(v40);
  v44 = &v90 - v43;
  type metadata accessor for StoredProofingSession();
  v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  (*(v47 + 16))(v44, a16, v46);
  v48 = *(v47 + 56);
  v48(v44, 0, 1, v46);
  v49 = IdentityProofingActionStatus.rawValue.getter();
  v48(v42, 1, 1, v46);
  v140 = v45;
  v50 = [v45 managedObjectContext];
  if (!v50)
  {
    goto LABEL_4;
  }

  v120 = a34;
  v119 = a33;
  v118 = a32;
  v117 = a31;
  v116 = a30;
  v115 = a29;
  v113 = a28;
  v114 = a27;
  v112 = a26;
  v105 = a25;
  v111 = a24;
  v110 = a23;
  v109 = a22;
  v132 = a21;
  v108 = a20;
  v107 = a19;
  v106 = a18;
  v104 = a15;
  v131 = a14;
  v103 = a13;
  v130 = a12;
  v100 = a11;
  v129 = a10;
  v97 = a9;
  v123 = v50;
  sub_10000BBC4(v44, v133, &unk_100849400, &unk_1006BFBB0);
  sub_10000BBC4(v42, v134, &unk_100849400, &unk_1006BFBB0);
  v51 = *(v124 + 80);
  v52 = (v51 + 136) & ~v51;
  v53 = (v36 + 7 + v52) & 0xFFFFFFFFFFFFFFF8;
  v124 = a1;
  v54 = (v51 + v53 + 16) & ~v51;
  v55 = (v36 + 7 + v54) & 0xFFFFFFFFFFFFFFF8;
  v121 = v42;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v122 = v44;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v57 + 39) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v58 + 39) & 0xFFFFFFFFFFFFFFF8;
  v90 = v49;
  v59 = (v96 + 19) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v59 + 17) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v59 + 41) & 0xFFFFFFFFFFFFFFF8;
  v102 = (v101 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v125;
  v60[2] = v140;
  v60[3] = v61;
  v62 = v126;
  v60[4] = v135;
  v60[5] = v62;
  v63 = v127;
  v60[6] = v136;
  v60[7] = v63;
  v64 = v128;
  v60[8] = v137;
  v60[9] = v64;
  v65 = v129;
  v60[10] = v97;
  v60[11] = v65;
  v66 = v130;
  v60[12] = v100;
  v60[13] = v66;
  v67 = v131;
  v60[14] = v103;
  v60[15] = v67;
  v60[16] = v104;
  sub_1002E4D54(v133, v60 + v52);
  v68 = (v60 + v53);
  *v68 = 0;
  v68[1] = 0;
  sub_1002E4D54(v134, v60 + v54);
  *(v60 + v55) = v105;
  v69 = (v60 + v56);
  *v69 = 0;
  v69[1] = 0;
  v70 = (v60 + v57);
  *v70 = 0;
  v70[1] = 0;
  v71 = v60 + v92;
  *v71 = v90;
  v71[8] = 0;
  v72 = (v60 + v93);
  *v72 = 0;
  v72[1] = 0;
  *(v60 + v95) = 0;
  *(v60 + v94) = v106;
  *(v60 + v58) = v107;
  v73 = v60 + v91;
  v73[16] = v109 & 1;
  v74 = v132;
  *v73 = v108;
  *(v73 + 1) = v74;
  v75 = v60 + v96;
  *v75 = v110;
  *(v75 + 2) = 0;
  v76 = v60 + v59;
  *v76 = v111;
  *(v76 + 4) = 0;
  v77 = v60 + v98;
  v77[16] = v113 & 1;
  v78 = v114;
  *v77 = v112;
  *(v77 + 1) = v78;
  v79 = (v60 + v101);
  v80 = v115;
  v44 = v116;
  *v79 = v115;
  v79[1] = v44;
  v81 = (v60 + v102);
  v82 = v118;
  *v81 = v117;
  v81[1] = v82;
  v83 = (v60 + v99);
  v84 = v119;
  v85 = v120;
  *v83 = v119;
  v83[1] = v85;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1002E4DC4;
  *(v86 + 24) = v60;
  aBlock[4] = sub_10026CBB8;
  v139 = v86;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_10080CC08;
  v87 = _Block_copy(aBlock);
  v134 = v139;

  v88 = v140;

  sub_1000363B4(v80, v44);

  sub_1000363B4(v84, v85);

  v89 = v123;
  [v123 performBlockAndWait:v87];

  _Block_release(v87);
  v42 = &unk_1006BFBB0;
  sub_10000BE18(v121, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v122, &unk_100849400, &unk_1006BFBB0);
  LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

  if (v89)
  {
    __break(1u);
LABEL_4:
    sub_10000BE18(v42, &unk_100849400, &unk_1006BFBB0);
    sub_10000BE18(v44, &unk_100849400, &unk_1006BFBB0);
  }

  sub_1005783D4();
}

void sub_1002D836C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45[4] = a3;
  v17 = type metadata accessor for DIPError.Code();
  v42 = *(v17 - 8);
  v43 = v17;
  v18 = *(v42 + 64);
  __chkstk_darwin(v17);
  v44 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || (a4 & 1) != 0)
  {
    goto LABEL_3;
  }

  v40 = v23;
  v41 = v22;
  sub_10057BE48(a1, a2);
  if (v10)
  {
    return;
  }

  v27 = v28;
  if (v28)
  {
    defaultLogger()();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45[0] = v39;
      *v31 = 136315394;
      *(v31 + 4) = sub_100141FE4(a1, a2, v45);
      *(v31 + 12) = 2080;
      v32 = IdentityTarget.debugDescription.getter();
      v34 = v27;
      v35 = sub_100141FE4(v32, v33, v45);

      *(v31 + 14) = v35;
      v27 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "fetchProofingActionsStatus called for proofingSessionID: %s and target: %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    (*(v40 + 8))(v25, v41);
  }

  else
  {
LABEL_3:
    sub_10057C320(a6, a7, a8, 0, 1, 0);
    if (v10)
    {
      return;
    }

    v27 = v26;
    if (!v26)
    {
      (*(v42 + 104))(v44, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v43);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }
  }

  swift_beginAccess();
  *(a9 + 16) = 1;
  [v27 proofingActionStatus];
  v36 = IdentityProofingActionStatus.init(rawValue:)();
  if (v37)
  {
    (*(v42 + 104))(v44, enum case for DIPError.Code.storedProofingActionStatusDoesntExist(_:), v43);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v38 = v36;

    swift_beginAccess();
    *(a10 + 16) = v38;
  }
}

void sub_1002D887C(char *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a7;
  v49 = a6;
  v54 = a1;
  v11 = type metadata accessor for DIPError.Code();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  v19 = IdentityProofingConfiguration.documentType.getter();
  v20 = a4;
  v21 = String.lowercased()();
  v22 = v56;
  sub_10057C320(v19, v21._countAndFlagsBits, v21._object, a5, 0, 0);
  v56 = v22;
  if (v22)
  {
  }

  else
  {
    v24 = v23;
    v45 = a3;
    v46 = a5;
    v47 = v15;
    v25 = v50;
    v26 = v51;
    v54 = v14;

    if (v24)
    {
      v44 = v24;
      v27 = v18;
      defaultLogger()();
      v28 = v25;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v55[0] = swift_slowAlloc();
        *v31 = 136315650;
        IdentityProofingConfiguration.documentType.getter();
        v32 = IdentityDocumentType.description.getter();
        v34 = sub_100141FE4(v32, v33, v55);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_100141FE4(v45, v20, v55);
        *(v31 + 22) = 2080;
        v35 = IdentityTarget.debugDescription.getter();
        v37 = sub_100141FE4(v35, v36, v55);

        *(v31 + 24) = v37;
        _os_log_impl(&_mh_execute_header, v29, v30, "fetchProofingActionsStatus called for documentType: %s identifier: %s and target: %s", v31, 0x20u);
        swift_arrayDestroy();
      }

      (*(v48 + 8))(v27, v47);
      v38 = v49;
      swift_beginAccess();
      *(v38 + 16) = 1;
      v39 = v44;
      [v44 proofingActionStatus];
      v40 = IdentityProofingActionStatus.init(rawValue:)();
      if (v41)
      {
        (*(v52 + 104))(v54, enum case for DIPError.Code.storedProofingActionStatusDoesntExist(_:), v53);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      else
      {
        v42 = v40;

        swift_beginAccess();
        *(v26 + 16) = v42;
      }
    }

    else
    {
      (*(v52 + 104))(v54, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v53);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_1002D8DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{
  v90 = a6;
  v91 = a8;
  v93 = a7;
  v94 = a5;
  v11 = type metadata accessor for Logger();
  v92 = *(v11 - 8);
  v12 = *(v92 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v86 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v86 - v20;
  __chkstk_darwin(v19);
  v23 = &v86 - v22;
  v24 = v96;
  sub_10057C320(a2, a3, a4, v94, 0, 0);
  if (!v24)
  {
    v88 = a2;
    v89 = v11;
    v26 = v93;
    v94 = a3;
    v96 = 0;
    if (!v25)
    {
      v48 = v15;
      defaultLogger()();
      v49 = a4;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();

      v52 = os_log_type_enabled(v50, v51);
      v53 = v94;
      if (v52)
      {
        v54 = swift_slowAlloc();
        v95[0] = swift_slowAlloc();
        *v54 = 136446466;
        v55 = IdentityDocumentType.description.getter();
        v57 = sub_100141FE4(v55, v56, v95);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2082;
        *(v54 + 14) = sub_100141FE4(v53, v49, v95);
        _os_log_impl(&_mh_execute_header, v50, v51, "Proofing Session for documentType %{public}s identifier %{public}s doesn't exist", v54, 0x16u);
        swift_arrayDestroy();
      }

      v46 = *(v92 + 8);
      v47 = v48;
      goto LABEL_14;
    }

    v27 = v21;
    v28 = v25;
    v29 = [v25 proofingSessionID];
    v30 = a4;
    if (!v29)
    {
      defaultLogger()();

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v95[0] = swift_slowAlloc();
        *v60 = 136446466;
        v61 = IdentityDocumentType.description.getter();
        v63 = sub_100141FE4(v61, v62, v95);

        *(v60 + 4) = v63;
        *(v60 + 12) = 2082;
        *(v60 + 14) = sub_100141FE4(v94, v30, v95);
        _os_log_impl(&_mh_execute_header, v58, v59, "ProofingSessionID for documentType %{public}s identifier %{public}s doesn't exist", v60, 0x16u);
        swift_arrayDestroy();
      }

      v46 = *(v92 + 8);
      v47 = v18;
      goto LABEL_14;
    }

    v31 = v29;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    [v28 target];
    v35 = IdentityTarget.init(rawValue:)();
    v36 = v89;
    if (v37)
    {

      v38 = v27;
      defaultLogger()();

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v39, v40))
      {

        (*(v92 + 8))(v27, v36);
        return;
      }

      v41 = swift_slowAlloc();
      v42 = v38;
      v95[0] = swift_slowAlloc();
      *v41 = 136446466;
      v43 = IdentityDocumentType.description.getter();
      v45 = sub_100141FE4(v43, v44, v95);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_100141FE4(v94, v30, v95);
      _os_log_impl(&_mh_execute_header, v39, v40, "Target for documentType %{public}s identifier %{public}s doesn't exist", v41, 0x16u);
      swift_arrayDestroy();

      goto LABEL_7;
    }

    v94 = v35;
    v64 = [v28 credentialIdentifier];
    v86 = v32;
    v87 = v28;
    if (v64)
    {
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      if (!v26)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v66 = 0;
      v68 = 0;
      if (!v26)
      {
        goto LABEL_26;
      }
    }

    v69 = v26;
    v70 = [v87 pairingID];
    if (v70)
    {
      v71 = v70;
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = v90;
      if ((v72 != v90 || v74 != v69) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v42 = v23;
        defaultLogger()();

        v79 = v69;
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v95[0] = swift_slowAlloc();
          *v82 = 136446466;
          v83 = sub_100141FE4(v72, v74, v95);
          v84 = v75;
          v85 = v83;

          *(v82 + 4) = v85;
          *(v82 + 12) = 2082;
          *(v82 + 14) = sub_100141FE4(v84, v79, v95);
          _os_log_impl(&_mh_execute_header, v80, v81, "PairingID mismatch, storedPairingID: %{public}s, passedPairingID: %{public}s", v82, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

LABEL_7:
        v46 = *(v92 + 8);
        v47 = v42;
LABEL_14:
        v46(v47, v89);
        return;
      }
    }

LABEL_26:

    v76 = v91;
    swift_beginAccess();
    v77 = v76[3];
    v76[2] = v86;
    v76[3] = v34;
    v78 = v76[6];
    v76[4] = v94;
    v76[5] = v66;
    v76[6] = v68;
  }
}

void sub_1002D95A0(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *(a1 + 16);
  type metadata accessor for StoredProofingSession();
  v5 = static StoredProofingSession.fetchRequest()();
  v6 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v2)
  {
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a2 = v7 != 0;
  }
}

unint64_t sub_1002D964C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProofingSession();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10057A980();
  if (v1)
  {
    return result;
  }

  v19 = v3;
  v13 = v22;
  if (!result)
  {
LABEL_11:
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v20 = 0xD000000000000026;
    v21 = 0x800000010070B540;
    v17._countAndFlagsBits = IdentityDocumentType.description.getter();
    String.append(_:)(v17);

    (*(v19 + 104))(v6, enum case for DIPError.Code.internalError(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v14 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v18 = result;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    result = v18;
    if (v16)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*(v14 + 16))
  {
    v15 = *(result + 32);
LABEL_8:

    ProofingSession.init(_:)();
    (*(v8 + 32))(v13, v11, v7);
    return (*(v8 + 56))(v13, 0, 1, v7);
  }

  __break(1u);
  return result;
}

void sub_1002D9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6, const char *a7, const char *a8, const char *a9)
{
  v69 = a8;
  v70 = a7;
  v71 = a5;
  v72 = a6;
  v12 = type metadata accessor for Logger();
  v73 = *(v12 - 1);
  v13 = *(v73 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v63 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v63 - v21;
  __chkstk_darwin(v20);
  v24 = &v63 - v23;
  v25 = v75;
  sub_10057C320(a2, a3, a4, 0, 1, 1);
  if (!v25)
  {
    v27 = v26;
    v68 = a3;
    v75 = 0;
    if (v26)
    {
      v28 = a4;
      v29 = v16;
      v30 = [v26 *v72];
      if (v30)
      {
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = [v27 proofingSessionID];
        v36 = v73;
        if (v35)
        {
          v67 = v32;
          v69 = v12;
          v37 = v35;
          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v40 = v29;
          defaultLogger()();

          v41 = v28;

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = v40;
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v66 = v39;
            v47 = v36;
            v64 = v41;
            v74[0] = v46;
            *v45 = 136446722;
            *(v45 + 4) = sub_100141FE4(v72, v66, v74);
            v65 = v27;
            *(v45 + 12) = 2082;
            v48 = v67;
            *(v45 + 14) = sub_100141FE4(v67, v34, v74);
            *(v45 + 22) = 2082;
            *(v45 + 24) = sub_100141FE4(v68, v64, v74);
            _os_log_impl(&_mh_execute_header, v42, v43, v70, v45, 0x20u);
            swift_arrayDestroy();

            (*(v47 + 8))(v44, v69);
            v39 = v66;
            v49 = v71;
          }

          else
          {

            (*(v36 + 8))(v40, v69);
            v49 = v71;
            v48 = v67;
          }

          swift_beginAccess();
          v59 = v49[2];
          v60 = v49[3];
          v61 = v49[4];
          v62 = v49[5];
          v49[2] = v72;
          v49[3] = v39;
          v49[4] = v48;
          v49[5] = v34;
          sub_1000B00AC(v59, v60);
        }

        else
        {

          defaultLogger()();
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v56, v57, v69, v58, 2u);
          }

          (*(v36 + 8))(v19, v12);
        }
      }

      else
      {
        defaultLogger()();
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, a9, v55, 2u);
        }

        (*(v73 + 8))(v22, v12);
      }
    }

    else
    {
      defaultLogger()();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Proofing Session doesn't exist for the given country and document type", v52, 2u);
      }

      (*(v73 + 8))(v24, v12);
    }
  }
}

void *sub_1002D9FB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10057C738(a2, a3);
  if (!v4)
  {
    if (result)
    {
      v14 = result;
      v15 = [result proofingSessionID];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0;
      }

      swift_beginAccess();
      v22 = *(a4 + 24);
      *(a4 + 16) = v17;
      *(a4 + 24) = v19;
    }

    else
    {
      v23[1] = 0;
      v23[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v20._countAndFlagsBits = 0xD00000000000003CLL;
      v20._object = 0x800000010070B760;
      String.append(_:)(v20);
      v21._countAndFlagsBits = a2;
      v21._object = a3;
      String.append(_:)(v21);
      (*(v9 + 104))(v12, enum case for DIPError.Code.internalError(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1002DA21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CCBC(a2, a3);
  if (v4)
  {
    return;
  }

  if (!v13)
  {
LABEL_14:
    (*(v9 + 104))(v12, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v14 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    v23 = v13;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v13 = v23;
    if (v24)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      return;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v17 = [v16 learnMoreURLString];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {

    v19 = 0;
    v21 = 0;
  }

  swift_beginAccess();
  v22 = *(a4 + 24);
  *(a4 + 16) = v19;
  *(a4 + 24) = v21;
}

void sub_1002DA4D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v63 = type metadata accessor for Logger();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v63);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  isEscapingClosureAtFileLocation = &v51 - v15;
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  if (a2)
  {
    sub_10057CCBC(a1, a2);
    if (!v4)
    {
      v21 = v19;
      if (v19)
      {
        v22 = (v19 & 0xFFFFFFFFFFFFFF8);
        if (v19 >> 62)
        {
          goto LABEL_33;
        }

        for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v52 = v22;
          v24 = 0;
          v61 = v21 & 0xC000000000000001;
          v62 = isEscapingClosureAtFileLocation;
          v54 = (v9 + 8);
          v55 = v66;
          v57 = "Proofing State Unavailable";
          *&v20 = 136446466;
          v51 = v20;
          v9 = v56;
          v59 = v21;
          v60 = a3;
          v58 = i;
          while (v61)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            isEscapingClosureAtFileLocation = v62;
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_30;
            }

LABEL_13:
            v64 = v26;
            [v25 target];
            IdentityTarget.init(rawValue:)();
            if ((v27 & 1) == 0)
            {
              defaultLogger()();
              v28 = Logger.logObject.getter();
              v29 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v28, v29))
              {
                v30 = swift_slowAlloc();
                v31 = swift_slowAlloc();
                v53 = v5;
                aBlock[0] = v31;
                *v30 = v51;
                v32 = IdentityProofingActionStatus.debugDescription.getter();
                v34 = sub_100141FE4(v32, v33, aBlock);
                v9 = v56;

                *(v30 + 4) = v34;
                *(v30 + 12) = 2080;
                v35 = IdentityTarget.debugDescription.getter();
                v37 = sub_100141FE4(v35, v36, aBlock);

                *(v30 + 14) = v37;
                _os_log_impl(&_mh_execute_header, v28, v29, "Storing the current proofing action status to: %{public}s on target: %s", v30, 0x16u);
                swift_arrayDestroy();
                v5 = v53;

                (*v54)(v62, v63);
              }

              else
              {

                (*v54)(isEscapingClosureAtFileLocation, v63);
              }
            }

            v38 = IdentityProofingActionStatus.rawValue.getter();
            v39 = [v25 managedObjectContext];
            if (v39)
            {
              v22 = v39;
              a3 = swift_allocObject();
              *(a3 + 16) = v25;
              *(a3 + 24) = v38;
              *(a3 + 32) = 0;
              v21 = swift_allocObject();
              *(v21 + 16) = sub_100267984;
              *(v21 + 24) = a3;
              v66[2] = sub_10021E8E8;
              v66[3] = v21;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v66[0] = sub_10057E264;
              v66[1] = &unk_10080CAA0;
              v40 = _Block_copy(aBlock);
              v41 = v25;

              [v22 performBlockAndWait:v40];

              _Block_release(v40);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                goto LABEL_31;
              }
            }

            a3 = v60;
            sub_10057BA64();
            if (v5)
            {

              return;
            }

            v42 = type metadata accessor for IdentityManagementSessionDelegate();
            v43 = [objc_opt_self() defaultCenter];
            v22 = String._bridgeToObjectiveC()();
            aBlock[0] = v42;
            sub_100007224(&qword_10083D698, &unk_1006DB6F0);
            [v43 postNotificationName:v22 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

            swift_unknownObjectRelease();
            ++v24;
            v21 = v59;
            if (v64 == v58)
            {
              goto LABEL_21;
            }
          }

          isEscapingClosureAtFileLocation = v62;
          if (v24 >= v52[2])
          {
            goto LABEL_32;
          }

          v25 = *(v21 + 8 * v24 + 32);
          v26 = v24 + 1;
          if (!__OFADD__(v24, 1))
          {
            goto LABEL_13;
          }

LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          ;
        }

LABEL_21:
      }

      else
      {
        defaultLogger()();

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          aBlock[0] = v50;
          *v49 = 136315138;
          *(v49 + 4) = sub_100141FE4(a1, a2, aBlock);
          _os_log_impl(&_mh_execute_header, v47, v48, "Proofing session with %s doesn't exist", v49, 0xCu);
          sub_10000BB78(v50);
        }

        (*(v9 + 8))(v13, v63);
      }
    }
  }

  else
  {
    defaultLogger()();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "ProofingSessionID doesn't exist. Cannot look for proofing session.", v46, 2u);
    }

    (*(v9 + 8))(v18, v63);
  }
}

void sub_1002DABE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CCBC(a2, a3);
  if (!v3)
  {
    v32 = 0;
    if (v12)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      if (v12 >> 62)
      {
        v24 = v12;
        v25 = _CocoaArrayWrapper.endIndex.getter();
        v12 = v24;
        if (v25)
        {
LABEL_5:
          if ((v12 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(v13 + 16))
            {
              __break(1u);
              goto LABEL_29;
            }

            v14 = *(v12 + 32);
          }

          v7 = v14;

          v15 = [v7 uploadAssets];
          if (v15)
          {
            v11 = v15;
            v16 = sub_10031F088(v11);

            v17 = sub_10057A09C(v16);

            if (v17)
            {
              if (!(v17 >> 62))
              {
                if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {

                  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                  sub_1002E4980();
                  v18 = v17;
                  goto LABEL_13;
                }

LABEL_31:

                goto LABEL_32;
              }

LABEL_29:
              if (_CocoaArrayWrapper.endIndex.getter() >= 1)
              {
                sub_1002E4980();

                v18 = _bridgeCocoaArray<A>(_:)();

LABEL_13:

                v31 = a1;
                if (v18 >> 62)
                {
                  v19 = _CocoaArrayWrapper.endIndex.getter();
                  if (v19)
                  {
                    goto LABEL_15;
                  }
                }

                else
                {
                  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v19)
                  {
LABEL_15:
                    if (v19 < 1)
                    {
                      __break(1u);
                      return;
                    }

                    v20 = 0;
                    v21 = *(v31 + 16);
                    do
                    {
                      if ((v18 & 0xC000000000000001) != 0)
                      {
                        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v22 = *(v18 + 8 * v20 + 32);
                      }

                      v23 = v22;
                      ++v20;
                      [v21 deleteObject:{v22, v31}];
                    }

                    while (v19 != v20);
                  }
                }

                v30 = v32;
                sub_10057BA64();
                if (v30)
                {
                }

                else
                {
                }

                return;
              }

              goto LABEL_31;
            }
          }

LABEL_32:

          return;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }
    }

    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100141FE4(a2, a3, &v33);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to delete the uploaded assets for proofingSession with proofingSessionID %s", v28, 0xCu);
      sub_10000BB78(v29);
    }

    (*(v8 + 8))(v11, v7);
  }
}

void sub_1002DAFE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10057C738(a2, a3);
  if (!v4)
  {
    if (v13)
    {
      v14 = v13;
      [v13 target];
      IdentityTarget.init(rawValue:)();
      if (v15)
      {
        (*(v9 + 104))(v12, enum case for DIPError.Code.targetUnavailable(_:), v8);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      else
      {
        v18 = IdentityTarget.rawValue.getter();
        if (v18 == IdentityTarget.rawValue.getter())
        {
          v19 = [v14 didAttemptComboProofing];

          swift_beginAccess();
          *(a4 + 16) = v19 ^ 1;
        }

        else
        {
        }
      }
    }

    else
    {
      v20[1] = 0;
      v20[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v16._countAndFlagsBits = 0xD00000000000003CLL;
      v16._object = 0x800000010070B760;
      String.append(_:)(v16);
      v17._countAndFlagsBits = a2;
      v17._object = a3;
      String.append(_:)(v17);
      (*(v9 + 104))(v12, enum case for DIPError.Code.internalError(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_1002DB330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v143 = a5;
  v146 = a4;
  v144 = a3;
  v138 = type metadata accessor for DIPError.Code();
  v137 = *(v138 - 8);
  v7 = *(v137 + 64);
  __chkstk_darwin(v138);
  v139 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for Logger();
  v9 = *(v159 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v159);
  v141 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v127 - v14;
  v16 = __chkstk_darwin(v13);
  v140 = &v127 - v17;
  __chkstk_darwin(v16);
  v19 = &v127 - v18;
  v20 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v127 - v22;
  v157 = type metadata accessor for URL();
  v24 = *(*(v157 - 8) + 64);
  v25 = __chkstk_darwin(v157);
  v135 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v150 = &v127 - v28;
  v30 = a1 + 64;
  v29 = *(a1 + 64);
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  v145 = _swiftEmptyArrayStorage;
  v167 = _swiftEmptyArrayStorage;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v29;
  v34 = (v31 + 63) >> 6;
  v155 = (v27 + 48);
  v147 = (v27 + 32);
  v148 = (v27 + 8);
  v35 = (v9 + 8);
  v134 = (v27 + 16);
  v132 = v166;
  v160 = a1;

  v36 = 0;
  *&v37 = 136315138;
  v149 = v37;
  *&v37 = 136315394;
  v133 = v37;
  v158 = a2;
  v151 = v35;
  v152 = v15;
  v136 = v19;
  v156 = v23;
  v154 = a1 + 64;
  v153 = v34;
  if (v33)
  {
    while (1)
    {
      while (1)
      {
LABEL_8:
        v39 = __clz(__rbit64(v33)) | (v36 << 6);
        v40 = *(*(v160 + 48) + 16 * v39 + 8);
        v41 = *(*(v160 + 56) + 8 * v39);
        v42 = objc_opt_self();

        v163 = v41;

        v43 = String._bridgeToObjectiveC()();
        v44 = [v42 insertNewObjectForEntityForName:v43 inManagedObjectContext:*(a2 + 16)];

        type metadata accessor for StoredUploadAsset();
        v45 = swift_dynamicCastClass();
        v161 = v40;
        if (v45)
        {
          v162 = v45;
        }

        else
        {

          v162 = 0;
        }

        v33 &= v33 - 1;
        v46 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
        v47 = v163;
        swift_beginAccess();
        sub_10000BBC4(v47 + v46, v23, &unk_100844540, &unk_1006BFBC0);
        v48 = v157;
        if ((*v155)(v23, 1, v157) == 1)
        {
          sub_10000BE18(v23, &unk_100844540, &unk_1006BFBC0);
          goto LABEL_15;
        }

        v49 = v150;
        (*v147)(v150, v23, v48);
        v50 = *(v47 + 48);
        if (v50 != 5)
        {
          break;
        }

        (*v148)(v49, v48);
        v15 = v152;
LABEL_15:
        defaultLogger()();

        v51 = v163;

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          aBlock[0] = v55;
          *v54 = v149;
          v56 = *(v51 + 48);
          if (v56 > 2)
          {
            if (v56 == 3)
            {
              v57 = 0x7373656E6576696CLL;
              v58 = 0xED00006F65646956;
            }

            else if (v56 == 4)
            {
              v57 = 0x7261696C69787561;
              v58 = 0xEE006F6564695679;
            }

            else
            {
              v57 = 0;
              v58 = 0xE000000000000000;
            }
          }

          else if (*(v51 + 48))
          {
            if (v56 == 1)
            {
              v57 = 0x656D75636F446469;
              v58 = 0xEE006B636142746ELL;
            }

            else
            {
              v58 = 0xE600000000000000;
              v57 = 0x6569666C6573;
            }
          }

          else
          {
            v57 = 0x656D75636F446469;
            v58 = 0xEF746E6F7246746ELL;
          }

          v59 = sub_100141FE4(v57, v58, aBlock);

          *(v54 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v52, v53, "Error occurred in retrieving asset path for assetType: %s", v54, 0xCu);
          sub_10000BB78(v55);

          v35 = v151;
          v15 = v152;
          (*v151)(v152, v159);
          a2 = v158;
          v23 = v156;
          goto LABEL_30;
        }

        (*v35)(v15, v159);
        v23 = v156;
        v30 = v154;
        v34 = v153;
        a2 = v158;
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      v60 = v136;
      defaultLogger()();
      v61 = v135;
      (*v134)(v135, v49, v48);
      v62 = Logger.logObject.getter();
      LODWORD(v130) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v62, v130))
      {
        break;
      }

      v131 = *v148;
      v131(v61, v48);
      v130 = *v35;
      v130(v60, v159);
      a2 = v158;
LABEL_44:
      v76 = v146;
      if (v162)
      {
        v145 = v162;
        v77 = URL.absoluteString.getter();
        v79 = 0x7373656E6576696CLL;
        if (v50 != 3)
        {
          v79 = 0x7261696C69787561;
        }

        v80 = 0xED00006F65646956;
        if (v50 != 3)
        {
          v80 = 0xEE006F6564695679;
        }

        if (v50 == 2)
        {
          v79 = 0x6569666C6573;
          v80 = 0xE600000000000000;
        }

        v81 = 0xEF746E6F7246746ELL;
        if (v50)
        {
          v81 = 0xEE006B636142746ELL;
        }

        v82 = v50 <= 1;
        if (v50 <= 1)
        {
          v83 = 0x656D75636F446469;
        }

        else
        {
          v83 = v79;
        }

        if (v82)
        {
          v84 = v81;
        }

        else
        {
          v84 = v80;
        }

        v85 = v77;
        v86 = v78;
        v87 = *(v163 + 16);
        v88 = *(v163 + 24);

        v89 = [v145 managedObjectContext];
        if (v89)
        {
          v90 = v89;
          v91 = swift_allocObject();
          v92 = v86;
          v93 = v91;
          v94 = v85;
          v95 = v145;
          v91[2] = v145;
          v91[3] = v94;
          v91[4] = v92;
          v91[5] = v83;
          v91[6] = v84;
          v91[7] = v87;
          v91[8] = v88;
          v96 = swift_allocObject();
          *(v96 + 16) = sub_1002E5148;
          *(v96 + 24) = v93;
          v166[2] = sub_10026CBB8;
          v166[3] = v96;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v166[0] = sub_10057E264;
          v166[1] = &unk_10080CCA8;
          v97 = _Block_copy(aBlock);
          v98 = v95;

          [v90 performBlockAndWait:v97];

          _Block_release(v97);
          LOBYTE(v90) = swift_isEscapingClosureAtFileLocation();

          if (v90)
          {
LABEL_79:
            __break(1u);
            return;
          }
        }

        else
        {
        }

        v99 = v145;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        a2 = v158;
        v23 = v156;
        if (*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v167 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v109 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v145 = v167;
        v76 = v146;
      }

      defaultLogger()();

      v100 = v163;

      v101 = Logger.logObject.getter();
      v102 = v76;
      v103 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v101, v103))
      {
        v104 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        aBlock[0] = v129;
        *v104 = v133;
        v105 = *(v100 + 16);
        v106 = *(v100 + 24);

        v107 = sub_100141FE4(v105, v106, aBlock);
        v128 = v101;
        v108 = v107;

        *(v104 + 4) = v108;
        *(v104 + 12) = 2080;
        *(v104 + 14) = sub_100141FE4(v144, v102, aBlock);
        v101 = v128;
        _os_log_impl(&_mh_execute_header, v128, v103, "Creating an StoredUploadAsset with recordUUID %s and proofingSessionID: %s", v104, 0x16u);
        swift_arrayDestroy();

        v23 = v156;
        a2 = v158;
      }

      v35 = v151;
      v130(v140, v159);
      v131(v150, v157);
      v15 = v152;
LABEL_30:
      v30 = v154;
      v34 = v153;
      if (!v33)
      {
        goto LABEL_4;
      }
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v63 = v133;
    v129 = v62;
    v128 = v64;
    if (v50 <= 1)
    {
      v65 = 0x656D75636F446469;
      v66 = 0xEF746E6F7246746ELL;
      a2 = v158;
      if (!v50)
      {
        goto LABEL_43;
      }

      v67 = 0x6B636142746ELL;
    }

    else
    {
      a2 = v158;
      if (v50 == 2)
      {
        v66 = 0xE600000000000000;
        v65 = 0x6569666C6573;
        goto LABEL_43;
      }

      if (v50 == 3)
      {
        v65 = 0x7373656E6576696CLL;
        v66 = 0xED00006F65646956;
LABEL_43:
        v68 = sub_100141FE4(v65, v66, aBlock);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2080;
        v69 = v63;
        v70 = v135;
        v71 = URL.absoluteString.getter();
        v73 = v72;
        v131 = *v148;
        v131(v70, v157);
        v74 = sub_100141FE4(v71, v73, aBlock);

        *(v69 + 14) = v74;
        v75 = v129;
        _os_log_impl(&_mh_execute_header, v129, v130, "Persisted assetType: %s with path: %s to database", v69, 0x16u);
        swift_arrayDestroy();

        v130 = *v151;
        v130(v136, v159);
        goto LABEL_44;
      }

      v65 = 0x7261696C69787561;
      v67 = 0x6F6564695679;
    }

    v66 = v67 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    goto LABEL_43;
  }

  while (1)
  {
LABEL_4:
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v38 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v38);
    ++v36;
    if (v33)
    {
      v36 = v38;
      goto LABEL_8;
    }
  }

  v110 = v143;
  swift_beginAccess();
  v111 = *(v110 + 16);
  v112 = v142;
  sub_10057BE48(v144, v146);
  if (v112)
  {
  }

  else
  {
    v114 = v113;
    if (v113)
    {
      v115 = [v113 managedObjectContext];
      if (v115)
      {
        v116 = v115;
        __chkstk_darwin(v115);
        sub_100007224(&qword_1008402E8, &qword_1006E0E10);
        NSManagedObjectContext.performAndWait<A>(_:)();
      }

      v117 = v141;
      defaultLogger()();

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = v110;
        v122 = swift_slowAlloc();
        v164 = v122;
        *v120 = v149;
        swift_beginAccess();
        v123 = *(v121 + 16);
        v124 = IdentityTarget.debugDescription.getter();
        v126 = sub_100141FE4(v124, v125, &v164);

        *(v120 + 4) = v126;
        _os_log_impl(&_mh_execute_header, v118, v119, "Saved upload assets to %s proofingSession", v120, 0xCu);
        sub_10000BB78(v122);
      }

      (*v151)(v117, v159);
      sub_10057BA64();
    }

    else
    {

      (*(v137 + 104))(v139, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v138);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

unint64_t sub_1002DC694(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v8 = type metadata accessor for Logger();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - v14;
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  v18 = a4;
  v19 = v58;
  result = sub_10057A388(a2, a3, a4 & 1);
  if (!v19)
  {
    v21 = result;
    v51 = v15;
    v52 = a1;
    v53 = v8;
    v54 = v12;
    v56 = a3;
    LODWORD(v58) = v18;
    v22 = v55;
    if (result)
    {
      v23 = result >> 62;
      if (result >> 62)
      {
        goto LABEL_47;
      }

      for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v25 = v17;
        v57 = i;
        if (!i)
        {
          break;
        }

        defaultLogger()();

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v17 = swift_slowAlloc();
          *v17 = 134217984;
          if (v23)
          {
            v28 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v28 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v23 = v53;
          *(v17 + 4) = v28;

          _os_log_impl(&_mh_execute_header, v26, v27, "IdentityDatabaseProvider fetched %ld eligible sessions for deletion", v17, 0xCu);
        }

        else
        {

          v23 = v53;
        }

        v33 = *(v22 + 8);
        v22 += 8;
        v55 = v22;
        v50 = v33;
        v33(v25, v23);
        v34 = 0;
        v59 = _swiftEmptyArrayStorage;
        v35 = v21 & 0xC000000000000001;
        v36 = v21 & 0xFFFFFFFFFFFFFF8;
        v54 = v21;
        do
        {
          if (v35)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v34 >= *(v36 + 16))
            {
              goto LABEL_44;
            }

            v37 = *(v21 + 8 * v34 + 32);
          }

          v17 = v37;
          v22 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          if ((v58 & 1) != 0 || (v38 = [v37 documentType]) == 0 || (v39 = v38, static String._unconditionallyBridgeFromObjectiveC(_:)(), v39, v21 = v54, IdentityDocumentType.init(documentTypeString:)(), v23 = IdentityDocumentType.rawValue.getter(), v23 == IdentityDocumentType.rawValue.getter()))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v23 = v59[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v34;
        }

        while (v22 != v57);
        v40 = v59;
        v41 = v51;
        defaultLogger()();

        v42 = v41;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v23 = swift_slowAlloc();
          *v23 = 134217984;
          if ((v40 & 0x8000000000000000) != 0 || (v40 & 0x4000000000000000) != 0)
          {
            v45 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v45 = *(v40 + 16);
          }

          *(v23 + 4) = v45;

          _os_log_impl(&_mh_execute_header, v43, v44, "IdentityDatabaseProvider fetched %ld eligible sessions for deletion", v23, 0xCu);

          v21 = v54;
        }

        else
        {
        }

        v50(v42, v53);
        v46 = 0;
        v22 = v52;
        v17 = v57;
        while (1)
        {
          if (v35)
          {
            v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v46 >= *(v36 + 16))
            {
              goto LABEL_46;
            }

            v47 = *(v21 + 8 * v46 + 32);
          }

          v48 = v47;
          v23 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          v59 = v47;
          sub_1002DCC28(&v59, v22);

          ++v46;
          if (v23 == v17)
          {

            return sub_1005783D4();
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        ;
      }
    }

    v29 = v54;
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "IdentityDatabaseProvider no proofing sessions to delete", v32, 2u);
    }

    return (*(v22 + 8))(v29, v53);
  }

  return result;
}

id sub_1002DCC28(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  [*a1 target];
  IdentityTarget.init(rawValue:)();
  if (v10)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v32 = 0xD000000000000016;
    v33 = 0x800000010070B490;
    v34 = [v9 target];
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v14 = v32;
    v13 = v33;
  }

  else
  {
    v14 = IdentityTarget.debugDescription.getter();
    v13 = v15;
  }

  defaultLogger()();

  v16 = v9;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v28 = v5;
    v29 = a2;
    v30 = v2;
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = sub_100141FE4(v14, v13, &v32);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2082;
    v21 = [v16 pairingID];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = sub_100141FE4(v23, v25, &v32);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "IdentityDatabaseProvider trying to delete proofing session for target : %{public}s with pairingID : %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v8, v28);
    a2 = v29;
  }

  else
  {

    (*(v31 + 8))(v8, v5);
  }

  return [*(a2 + 16) deleteObject:v16];
}

uint64_t sub_1002DCF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[33] = v6;
  v7 = *(v6 - 8);
  v5[34] = v7;
  v8 = *(v7 + 64) + 15;
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_1002DD038, 0, 0);
}

uint64_t sub_1002DD038()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[9];
  v0[36] = v7;

  sub_100031918((v0 + 2));
  v8 = swift_allocObject();
  v0[37] = v8;
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v2;
  v9 = *(v7 + 16);
  v10 = swift_allocObject();
  v0[38] = v10;
  *(v10 + 16) = sub_1002E0D78;
  *(v10 + 24) = v8;
  v11 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v12 = swift_task_alloc();
  v0[39] = v12;
  v13 = type metadata accessor for IdentityProofingConfiguration();
  *v12 = v0;
  v12[1] = sub_1002DD22C;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 27, sub_1002A6FB8, v10, v13);
}

uint64_t sub_1002DD22C()
{
  v2 = *(*v1 + 312);
  v3 = *v1;
  v3[40] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002DD39C, 0, 0);
  }

  else
  {
    v4 = v3[37];
    v5 = v3[38];
    v7 = v3[35];
    v6 = v3[36];

    v8 = v3[27];

    v9 = v3[1];

    return v9(v8);
  }
}

uint64_t sub_1002DD39C()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];

  (*(v7 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

void sub_1002DD510(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char **a6@<X8>)
{
  v86 = a5;
  v84 = a3;
  v85 = a4;
  v82 = a6;
  v8 = type metadata accessor for Logger();
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v78 - v14;
  __chkstk_darwin(v13);
  v17 = &v78 - v16;
  v18 = type metadata accessor for DIPError.Code();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v87;
  v24 = sub_1005796D0(a2, v84, v85, v86);
  if (v23)
  {
    return;
  }

  v80 = a1;
  v81 = v12;
  v85 = v19;
  v86 = v22;
  v87 = v8;
  if (v24 >> 62)
  {
    v76 = v24;
    v77 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v76;
    v25 = v18;
    if (v77)
    {
      goto LABEL_4;
    }

LABEL_31:

    (*(v85 + 104))(v86, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v25 = v18;
  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_4:
  v84 = 0;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v26 = *(v24 + 32);
  }

  v27 = v26;

  v28 = [v27 documentType];
  if (v28)
  {

    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "IdentityProofingDatabaseProvider proofing data exists, returning mapped proofing configuration", v31, 2u);
    }

    (*(v83 + 8))(v17, v87);
    v32 = v84;
    v33 = sub_1002E371C(v27);

    if (!v32)
    {
      *v82 = v33;
    }
  }

  else
  {
    v79 = v25;
    [v27 target];
    IdentityTarget.init(rawValue:)();
    if (v34)
    {
      v88 = 0;
      v89 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v88 = 0xD000000000000016;
      v89 = 0x800000010070B490;
      v90 = [v27 target];
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v38 = v88;
      v37 = v89;
    }

    else
    {
      v38 = IdentityTarget.debugDescription.getter();
      v37 = v39;
    }

    v40 = 0x3E6C696E3CLL;
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v88 = 0x6E6F69737365535BLL;
    v89 = 0xEA00000000002820;
    v41 = [v27 state];
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
    }

    else
    {
      v45 = 0xE500000000000000;
      v43 = 0x3E6C696E3CLL;
    }

    v46._countAndFlagsBits = v43;
    v46._object = v45;
    String.append(_:)(v46);

    v47._countAndFlagsBits = 8236;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    v48 = [v27 country];
    if (v48)
    {
      v49 = v48;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v51 = 0xE500000000000000;
    }

    v52 = v15;
    v82 = v27;
    v53._countAndFlagsBits = v40;
    v53._object = v51;
    String.append(_:)(v53);

    v54._countAndFlagsBits = 0x7465677261742029;
    v54._object = 0xED0000203A676E69;
    String.append(_:)(v54);
    v55._countAndFlagsBits = v38;
    v55._object = v37;
    String.append(_:)(v55);

    v56._countAndFlagsBits = 93;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
    v57 = v88;
    v58 = v89;
    defaultLogger()();

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v15;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v88 = v63;
      *v62 = 136446210;
      *(v62 + 4) = sub_100141FE4(v57, v58, &v88);
      _os_log_impl(&_mh_execute_header, v59, v60, "IdentityProofingDatabaseProvider %{public}s does not have a valid document type. This is likely a legacy proofing session and should be deleted.", v62, 0xCu);
      sub_10000BB78(v63);

      v64 = *(v83 + 8);
      v65 = v61;
    }

    else
    {

      v64 = *(v83 + 8);
      v65 = v52;
    }

    v66 = v87;
    v64(v65, v87);
    v67 = v81;
    defaultLogger()();

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v88 = v71;
      *v70 = 136446210;
      v72 = sub_100141FE4(v57, v58, &v88);

      *(v70 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v68, v69, "IdentityProofingDatabaseProvider trying to delete legacy proofing session %{public}s", v70, 0xCu);
      sub_10000BB78(v71);

      v64(v81, v66);
    }

    else
    {

      v64(v67, v66);
      v18 = v79;
    }

    v73 = v85;
    v74 = v82;
    [*(v80 + 16) deleteObject:v82];
    v75 = v84;
    sub_1005783D4();
    if (!v75)
    {
      (*(v73 + 104))(v86, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v18);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002DDE50()
{
  v1[28] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[29] = v2;
  v3 = *(v2 - 8);
  v1[30] = v3;
  v4 = *(v3 + 64) + 15;
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1002DDF10, 0, 0);
}

uint64_t sub_1002DDF10()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.clearIdentityProofingData.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[32] = v4;
    *v4 = v0;
    v4[1] = sub_1002DE184;

    return sub_1002E0570(1, 0, 1);
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v6 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v6 + 54);
    sub_100031B5C(&v6[4], (v0 + 2));
    os_unfair_lock_unlock(v6 + 54);
    v7 = v0[28];
    v8 = v0[9];
    v0[36] = v8;

    sub_100031918((v0 + 2));
    v9 = *(v8 + 16);
    v10 = swift_allocObject();
    v0[37] = v10;
    *(v10 + 16) = sub_1002E3F88;
    *(v10 + 24) = v7;
    v11 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
    swift_retain_n();
    v12 = swift_task_alloc();
    v0[38] = v12;
    v13 = type metadata accessor for IdentityProofingStatus();
    *v12 = v0;
    v12[1] = sub_1002DE754;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 27, sub_1002A7770, v10, v13);
  }
}

uint64_t sub_1002DE184()
{
  v2 = *(*v1 + 256);
  v3 = *v1;
  *(v3 + 264) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002DE428, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v3 + 272) = v4;
    *v4 = v3;
    v4[1] = sub_1002DE314;

    return sub_1002E0570(2, 0, 1);
  }
}

uint64_t sub_1002DE314()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1002DE604;
  }

  else
  {
    v3 = sub_1002DE578;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002DE428()
{
  v1 = v0[33];
  (*(v0[30] + 104))(v0[31], enum case for DIPError.Code.internalError(_:), v0[29]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002DE578()
{
  v1 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
  v2 = IdentityProofingStatus.init(activeConfigurations:availability:)();
  v3 = *(v0 + 248);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1002DE604()
{
  v1 = v0[35];
  (*(v0[30] + 104))(v0[31], enum case for DIPError.Code.internalError(_:), v0[29]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002DE754()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002DE8C4, 0, 0);
  }

  else
  {
    v5 = v3[36];
    v4 = v3[37];
    v6 = v3[28];

    v7 = v3[27];
    v8 = v3[31];

    v9 = v3[1];

    return v9(v7);
  }
}

uint64_t sub_1002DE8C4()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[28];

  v4 = v0[39];
  (*(v0[30] + 104))(v0[31], enum case for DIPError.Code.internalError(_:), v0[29]);
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

void sub_1002DEA30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = a3;
  v71 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v72 = &v67 - v11;
  __chkstk_darwin(v10);
  v13 = &v67 - v12;
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "IdentityProofingDatabaseProvider fetching all the proofing sessions to derive the proofing status", v16, 2u);
  }

  v19 = *(v6 + 8);
  v17 = v6 + 8;
  v18 = v19;
  v19(v13, v5);
  v20 = *(a1 + 16);
  type metadata accessor for StoredProofingSession();
  v21 = static StoredProofingSession.fetchRequest()();
  v22 = NSManagedObjectContext.fetch<A>(_:)();
  v23 = v3;

  if (v3)
  {
    return;
  }

  v74 = a1;
  v75 = v18;
  v67 = v17;
  v77 = _swiftEmptyArrayStorage;
  if (v22 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = v75;
    v26 = _swiftEmptyArrayStorage;
    v76 = i;
    if (i)
    {
      v68 = v5;
      v27 = 0;
      v28 = v22 & 0xC000000000000001;
      v5 = v22 & 0xFFFFFFFFFFFFFF8;
      v29 = &selRef_setSupportedEncoding_;
      v73 = v22 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v28)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v5 + 16))
          {
            goto LABEL_31;
          }

          v35 = *(v22 + 8 * v27 + 32);
        }

        v36 = v35;
        v37 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v38 = [v35 v29[179]];
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v30 = v28;
          v31 = v23;
          v32 = v22;
          v33 = v29;
          v34 = v77[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v29 = v33;
          v22 = v32;
          v23 = v31;
          v28 = v30;
          v5 = v73;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v27;
        if (v37 == v76)
        {
          v26 = v77;
          v5 = v68;
          v25 = v75;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_18:
    if ((v26 & 0x8000000000000000) == 0 && (v26 & 0x4000000000000000) == 0)
    {
      v40 = *(v26 + 16);
      if (!v40)
      {
        break;
      }

      goto LABEL_21;
    }

    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (!v40)
    {
      break;
    }

LABEL_21:
    v41 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *(v26 + 16))
        {
          goto LABEL_33;
        }

        v42 = *(v26 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v77 = v42;
      sub_1002DF16C(&v77, v74);

      ++v41;
      v45 = v44 == v40;
      v25 = v75;
      if (v45)
      {
        goto LABEL_36;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_36:

  sub_1005783D4();
  v46 = _swiftEmptyArrayStorage;
  v77 = _swiftEmptyArrayStorage;
  v47 = v76;
  if (v76)
  {
    v68 = v5;
    v48 = 0;
    v25 = (v22 & 0xC000000000000001);
    v5 = v22 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v25)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v49 = *(v22 + 8 * v48 + 32);
      }

      v50 = v49;
      v46 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v51 = [v49 documentType];
      if (v51)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v52 = v77[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v47 = v76;
      }

      else
      {
      }

      ++v48;
    }

    while (v46 != v47);
    v46 = v77;
    v5 = v68;
    v25 = v75;
  }

  if ((v46 & 0x8000000000000000) != 0 || (v46 & 0x4000000000000000) != 0)
  {
    goto LABEL_67;
  }

  for (j = *(v46 + 16); j > 0; j = _CocoaArrayWrapper.endIndex.getter())
  {
    defaultLogger()();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "IdentityProofingDatabaseProvider proofing data exists, send .activeSession as availability with the fetched proofing data", v56, 2u);
    }

    v25(v72, v5);
    v77 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v57 = 0;
    while (v57 < j)
    {
      v5 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_65;
      }

      if ((v46 & 0xC000000000000001) != 0)
      {
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v57 >= *(v46 + 16))
        {
          goto LABEL_66;
        }

        v58 = *(v46 + 8 * v57 + 32);
      }

      v59 = v58;
      v25 = sub_1002E371C(v58);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v60 = v77[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v57;
      if (v5 == j)
      {

        v61 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
        goto LABEL_71;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v62 = v69;
  defaultLogger()();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "IdentityProofingDatabaseProvider no proofing sessions exist, mark proofingAvailability as available ", v65, 2u);
  }

  v75(v62, v5);
  v66 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
LABEL_71:
  *v70 = IdentityProofingStatus.init(activeConfigurations:availability:)();
}

id sub_1002DF16C(id *a1, uint64_t a2)
{
  v54 = a2;
  v53 = type metadata accessor for Logger();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v53);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v10 = *a1;
  [*a1 target];
  IdentityTarget.init(rawValue:)();
  v55 = v7;
  if (v11)
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v56 = 0xD000000000000016;
    v57 = 0x800000010070B490;
    v58 = [v10 target];
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v15 = v56;
    v14 = v57;
  }

  else
  {
    v15 = IdentityTarget.debugDescription.getter();
    v14 = v16;
  }

  v17 = 0x3E6C696E3CLL;
  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v56 = 0x6E6F69737365535BLL;
  v57 = 0xEA00000000002820;
  v18 = [v10 state];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v22 = 0xE500000000000000;
    v20 = 0x3E6C696E3CLL;
  }

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25 = [v10 country];
  if (v25)
  {
    v26 = v25;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  v52 = v10;
  v29._countAndFlagsBits = v17;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0x7465677261742029;
  v30._object = 0xED0000203A676E69;
  String.append(_:)(v30);
  v31._countAndFlagsBits = v15;
  v31._object = v14;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 93;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33 = v56;
  v34 = v57;
  defaultLogger()();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v51 = v33;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56 = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_100141FE4(v33, v34, &v56);
    _os_log_impl(&_mh_execute_header, v35, v36, "IdentityProofingDatabaseProvider %{public}s does not have a valid document type. This is likely a legacy proofing session and should be deleted.", v38, 0xCu);
    sub_10000BB78(v39);
  }

  v40 = *(v3 + 8);
  v41 = v9;
  v42 = v53;
  v40(v41, v53);
  v43 = v55;
  defaultLogger()();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56 = v47;
    *v46 = 136446210;
    v48 = sub_100141FE4(v51, v34, &v56);

    *(v46 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v44, v45, "IdentityProofingDatabaseProvider trying to delete legacy proofing session %{public}s", v46, 0xCu);
    sub_10000BB78(v47);

    v49 = v55;
  }

  else
  {

    v49 = v43;
  }

  v40(v49, v42);
  return [*(v54 + 16) deleteObject:v52];
}

uint64_t sub_1002DF674(void *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 proofingActionStatus];
  v7 = IdentityProofingActionStatus.init(rawValue:)();
  if (v8)
  {
    (*(v3 + 104))(v6, enum case for DIPError.Code.storedProofingActionStatusDoesntExist(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  else
  {
    v10 = v7;
    v11 = IdentityProofingActionStatus.rawValue.getter();
    if (v11 == IdentityProofingActionStatus.rawValue.getter())
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_1002DF830@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 actions];
  if (!v4 || (v5 = v4, v6 = [v4 array], v5, v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v8 = sub_10057A0E4(v7), , !v8))
  {

    v8 = _swiftEmptyArrayStorage;
  }

  v24 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_19;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v20 = v3;
  for (i = a2; v9; i = a2)
  {
    v10 = 0;
    a2 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v3 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v23 = v11;
      sub_1002DFAE0(&v23, &v22);

      if (v22)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v10;
      if (v3 == v9)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v3;
  }

LABEL_20:

  v13 = [v20 title];
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = [v20 message];
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v17 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessage());
  result = IdentityProofingPrecursorPassMessage.init(title:message:actions:)();
  *i = result;
  return result;
}