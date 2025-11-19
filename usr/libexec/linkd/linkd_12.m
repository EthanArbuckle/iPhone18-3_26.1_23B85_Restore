uint64_t sub_1000F9E88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000F9F3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100009A00();
  v5 = v4(v3);
  sub_10000482C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000077D8();
  v9(v8);
  return a2;
}

uint64_t sub_1000F9FFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000C390C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1000FA028@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_100060168(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000FA054(uint64_t a1)
{
  v24 = type metadata accessor for LSLinkBundleSource();
  v25 = &off_10018EDB8;
  v23[0] = a1;
  sub_1000034B4(v23, v24);

  v2 = sub_1000F1DFC();
  v4 = v3;
  v5 = sub_10007AD78(0xD000000000000018);
  v7 = v6;
  if (qword_100198200 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000347C(v8, qword_10019DBF0);
  sub_1000098F0(v2, v4);
  sub_1000FA61C(v5, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_100009B18(v2, v4);
  sub_10000D4DC(v5, v7);
  v11 = v7 >> 60;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_1000CCB28(v2, v4);
    v15 = sub_100004C50(v13, v14, v22);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    if (v7 >> 60 == 15)
    {
      v16 = 0xE400000000000000;
      v17 = 1701736302;
    }

    else
    {
      v17 = sub_1000CCB28(v5, v7);
      v16 = v18;
    }

    v19 = sub_100004C50(v17, v16, v22);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Application source version: %s\nMetadata store version: %s", v12, 0x16u);
    swift_arrayDestroy();

    v11 = v7 >> 60;
  }

  else
  {
  }

  if (v4 >> 60 != 15)
  {
    if (v11 <= 0xE)
    {
      sub_1000098F0(v2, v4);
      sub_1000098F0(v2, v4);
      sub_1000FA61C(v5, v7);
      v20 = static Data.== infix(_:_:)();
      sub_10000D4DC(v5, v7);
      sub_10000D4DC(v5, v7);
      sub_100009B18(v2, v4);
      sub_100009B18(v2, v4);
      sub_10000D4DC(v2, v4);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v11 <= 0xE)
  {
LABEL_13:
    sub_10000D4DC(v2, v4);
    sub_10000D4DC(v5, v7);
    v20 = 0;
    goto LABEL_15;
  }

  sub_10000D4DC(v2, v4);
  v20 = 1;
LABEL_15:
  sub_1000034F8(v23);
  return v20 & 1;
}

uint64_t sub_1000FA39C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t))
{
  v13[3] = type metadata accessor for LSLinkBundleRecord(0);
  v13[4] = a4;
  sub_100013234(v13);
  sub_100013CEC();
  sub_1000F9F3C(a2, v10);
  v11 = *a3;
  *(v11 + 16) = a1 + 1;
  return a5(v13, v11 + 40 * a1 + 32);
}

uint64_t sub_1000FA42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNBundleRecord();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FA490()
{
  sub_1000FDB84();
  sub_1000FCEF0();
  sub_100011414();
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_task_alloc();
  v6 = sub_100004DC8(v5);
  *v6 = v7;
  v6[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_1000208A0();
  sub_1000FD244();

  return sub_1000F110C(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000FA534()
{
  sub_1000FDB84();
  sub_1000FCEF0();
  sub_100011414();
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_task_alloc();
  v6 = sub_100004DC8(v5);
  *v6 = v7;
  v6[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_1000208A0();
  sub_1000FD244();

  return sub_1000F19DC(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_1000FA5D8()
{
  v1 = *(v0 + 24);
  sub_100003854();
  sub_1000F1750();
}

uint64_t sub_1000FA61C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000098F0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000FA630()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FA6C0()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FA750()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000FA7E0()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000FA870()
{
  sub_100027014();
  sub_1000036C4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = sub_100004BD0(v5);
  *v6 = v7;
  v6[1] = sub_10000BEC4;
  sub_100091EFC();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1000FA924()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000FA9B4()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FAA44()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FAAD4()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FAB64()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v16 = v10[6];
  v15 = v10[7];
  v17 = swift_task_alloc();
  v18 = sub_100004BD0(v17);
  *v18 = v19;
  v18[1] = sub_10000BEC4;
  sub_100012928();
  sub_100091FC0();

  return v26(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1000FACA8()
{
  sub_1000FDB84();
  sub_1000FCEF0();
  sub_100011414();
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_task_alloc();
  v6 = sub_100004DC8(v5);
  *v6 = v7;
  v6[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_1000208A0();
  sub_1000FD244();

  return sub_1000E9E14(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1000FAD78()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FAE08()
{
  sub_100013D88();
  sub_100004884();
  sub_100011414();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v4[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_100091FC0();

  return sub_1000E9168(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000FAECC()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FAF5C()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FAFEC()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB07C()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB10C()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB19C()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB22C()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB2BC()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FB34C()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FB3DC()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FB46C()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000FB4FC()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

unint64_t sub_1000FB58C(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    sub_100003D44(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000FB5D8()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB668()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB6F8()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000FB788()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB818()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FB8A8()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB938()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000FB9C8()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000FBA58()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000FBAE8()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FBB78()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FBC08()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FBC98()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FBD28()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FBDB8()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1000131F0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000FBDF8()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FBE88()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FBF18()
{
  _Block_release(*(v0 + 40));

  v1 = sub_100029498();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000FBF60()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FBFF0()
{
  _Block_release(*(v0 + 16));

  v1 = sub_10000EEA4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000FC028()
{
  sub_1000070C8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004BD0(v3);
  *v4 = v5;
  v6 = sub_100011638(v4);

  return v7(v6);
}

uint64_t sub_1000FC0B8()
{
  sub_1000036A0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_100004BD0(v2);
  *v3 = v4;
  v3[1] = sub_10000BFAC;

  return sub_1000D0310(v1, v0 + 24, v0 + 64);
}

void sub_1000FC1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {

    sub_10000D4DC(a4, a5);
  }
}

void sub_1000FC220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {

    sub_1000FA61C(a4, a5);
  }
}

uint64_t sub_1000FC2B8()
{
  sub_1000070C8();
  sub_1000FD3FC();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100004DC8(v2);
  *v3 = v4;
  v3[1] = sub_10000BEC4;
  v5 = sub_1000079F8();

  return sub_1000CD49C(v5, v6, v7, v1);
}

uint64_t sub_1000FC358(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v4 = *a2;
  v5[0] = v2;
  *(v5 + 9) = *(a2 + 25);
  return sub_1000C3C7C(a1, &v4);
}

uint64_t sub_1000FC3A8(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v4 = *a2;
  v5[0] = v2;
  *(v5 + 9) = *(a2 + 25);
  return sub_1000C39D4(a1, &v4);
}

uint64_t sub_1000FC404(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000FDAEC(a1, a2);
  v5 = sub_10002EB80(v3, v4);
  sub_10000482C(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1000FC468()
{
  sub_100027014();
  sub_1000036C4();
  sub_1000FD3FC();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v4[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_100091EFC();

  return sub_1000C877C(v6, v7, v8, v9);
}

uint64_t sub_1000FC504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100013294(a1, a2, a3, a4);
  sub_10000482C(v5);
  v7 = *(v6 + 40);
  v8 = sub_1000077D8();
  v9(v8);
  return v4;
}

uint64_t sub_1000FC550()
{
  sub_100028788();
  sub_1000036C4();
  sub_100011414();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_100004DC8(v2);
  *v3 = v4;
  v3[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_10001A7B0();

  return sub_1000C7E80(v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000FC5F0()
{
  result = qword_10019BC68;
  if (!qword_10019BC68)
  {
    sub_10002EC70(&qword_10019BC60, &qword_1001516B8);
    sub_1000FC674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BC68);
  }

  return result;
}

unint64_t sub_1000FC674()
{
  result = qword_10019BC70;
  if (!qword_10019BC70)
  {
    sub_10002EC70(&qword_10019BC78, &qword_1001516C0);
    sub_1000FC744(&unk_10019BC80);
    sub_1000FC7C4(&unk_10019BCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BC70);
  }

  return result;
}

unint64_t sub_1000FC744(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v4 = sub_1000FDAEC(0, v3);
    sub_10002EC70(v4, v5);
    sub_100018788();
    sub_1000FC7C4(v6);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000FC7C4(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v4 = sub_1000FDAEC(0, v3);
    sub_10002EC70(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000FC804()
{
  result = qword_10019BCB8;
  if (!qword_10019BCB8)
  {
    sub_10002EC70(&qword_10019BCB0, &qword_1001516E0);
    sub_1000FC888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BCB8);
  }

  return result;
}

unint64_t sub_1000FC888()
{
  result = qword_10019BCC0;
  if (!qword_10019BCC0)
  {
    sub_10002EC70(&qword_10019BCC8, &qword_1001516E8);
    sub_1000FC744(&unk_10019BCD0);
    sub_1000FC7C4(&qword_10019BB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BCC0);
  }

  return result;
}

uint64_t sub_1000FC958(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

void sub_1000FC974()
{
  sub_1000FC9FC();
  if (v0 <= 0x3F)
  {
    sub_1000FCA24();
    if (v1 <= 0x3F)
    {
      sub_1000FCA6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_1000FC9FC()
{
  result = qword_10019BD80;
  if (!qword_10019BD80)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10019BD80);
  }

  return result;
}

void sub_1000FCA24()
{
  if (!qword_10019BD88)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_10019BD88);
    }
  }
}

unint64_t sub_1000FCA6C()
{
  result = qword_10019BD90;
  if (!qword_10019BD90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10019BD90);
  }

  return result;
}

void sub_1000FCAC8()
{
  sub_1000F4DE8(319, &qword_10019A8C0, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for LSLinkBundleRecord.RecordType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LSLinkBundleRecord.RecordType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000FCD14()
{
  result = qword_10019BE68;
  if (!qword_10019BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BE68);
  }

  return result;
}

uint64_t sub_1000FCE24()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1000FCE34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1000FCE6C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1000FCE7C()
{
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
}

uint64_t sub_1000FCE9C()
{

  return swift_arrayDestroy();
}

unint64_t sub_1000FCEB8(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100027F58();
}

uint64_t sub_1000FCED4()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return swift_slowAlloc();
}

uint64_t sub_1000FCEFC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000FCF18(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = a1;

  return sub_100004C50(v4, v3, va);
}

uint64_t sub_1000FCF70(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = a1;

  return sub_100004C50(v4, v3, va);
}

void sub_1000FCF90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_1000FCFBC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void sub_1000FCFD8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1000FCFE4(uint64_t result)
{
  *(result + 8) = sub_1000EEE30;
  v2 = *(v1 + 16);
  return result;
}

uint64_t sub_1000FD020(uint64_t a1)
{
  *(a1 + 8) = sub_1000DF9F8;
  v2 = *(v1 + 56);
  return v1 + 16;
}

uint64_t sub_1000FD060()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[4];

  return type metadata accessor for Logger();
}

unint64_t sub_1000FD0D4(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100027F58();
}

uint64_t sub_1000FD118()
{

  return sub_100061918(0, v0, sub_1000F84D0, v1);
}

void sub_1000FD150()
{
  v2 = v0[68];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[64];
  v6 = (v0[58] + 200);

  os_unfair_lock_lock(v6);
}

void sub_1000FD178()
{
  v1[12] = sub_1000E825C;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_1000FD190()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  return swift_slowAlloc();
}

void sub_1000FD1AC()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
}

uint64_t sub_1000FD228(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_100004C50(v1, v2, va);
}

void sub_1000FD260()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);

  sub_1000FC1C0(v2, v3, v4, v5, v6);
}

void sub_1000FD280()
{
  *(v0 + 233) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;

  os_unfair_lock_unlock((v0 + 200));
}

uint64_t sub_1000FD2F4()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 1024;
  v4 = *(v1 + 144);
}

void sub_1000FD33C()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
}

unint64_t sub_1000FD34C(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100027F58();
}

uint64_t sub_1000FD368()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return swift_slowAlloc();
}

uint64_t sub_1000FD398()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[4];

  return type metadata accessor for Logger();
}

uint64_t sub_1000FD3C0()
{

  return swift_once();
}

void sub_1000FD3E0()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
}

uint64_t sub_1000FD464(uint64_t result)
{
  *(result + 8) = v1;
  v4 = *(v2 + 40);
  v3 = *(v2 + 48);
  return result;
}

uint64_t sub_1000FD494(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100004C50(v3, v4, a3);
}

BOOL sub_1000FD4AC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000FD4C4()
{
}

uint64_t sub_1000FD4DC()
{
  v2 = *(v0 + 32);

  return type metadata accessor for Logger();
}

void sub_1000FD4F4()
{

  sub_1000C9340();
}

void sub_1000FD554()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);

  sub_1000FC1C0(v2, v3, v4, v5, v6);
}

void sub_1000FD574()
{
  *(v0 + 233) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;

  os_unfair_lock_unlock((v0 + 200));
}

void sub_1000FD5A0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
}

void sub_1000FD5E8()
{
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
}

void sub_1000FD61C()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
}

double sub_1000FD634()
{
  *(v0 + 240) = 0;
  result = 0.0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  return result;
}

uint64_t sub_1000FD684(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v6;
  a1[5] = v1;
  a1[6] = v5;
  a1[7] = v4;
  a1[8] = v3;
  a1[9] = v2;
}

uint64_t sub_1000FD6AC()
{
  v2 = *(v0 + 40);

  return type metadata accessor for Logger();
}

uint64_t sub_1000FD6C4()
{
  *(v0 + 16) = v1;
  sub_10001A798((v2 + 328), v0 + 40 * v3 + 32);
  sub_1000034F8((v2 + 288));
}

void sub_1000FD708(uint64_t a1@<X8>)
{
  v3 = v1 + 16 * a1;
  *(v2 + 592) = *(v3 + 32);
  *(v2 + 600) = *(v3 + 40);
}

void sub_1000FD720()
{
  v1 = *(v0[57] + 8);
  v0[79] = v1;
  v0[80] = *(v1 + 16);
}

void sub_1000FD75C()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t sub_1000FD7C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 632) + 40 * a1 + 32;

  return sub_100013334(v3, v1 + 248);
}

void *sub_1000FD7EC(int a1, int a2, int a3, void *aBlock)
{

  return _Block_copy(aBlock);
}

uint64_t sub_1000FD810()
{
  v2 = v0[69];
  v4 = v0[57];
  v3 = v0[58];
}

uint64_t sub_1000FD848(uint64_t a1, unint64_t a2)
{
  v4 = *(*(v2 + 456) + 24);

  return sub_1000CCB28(v4, a2);
}

uint64_t sub_1000FD860()
{
  v2 = *(v0 + 456);

  return swift_slowAlloc();
}

uint64_t sub_1000FD87C(double a1)
{
  *(v1 - 144) = a1;

  return Data.init(bytes:count:)(v1 - 144, 8);
}

uint64_t sub_1000FD898@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1);
}

uint64_t sub_1000FD8B0()
{

  return type metadata accessor for LSLinkBundleRecord(0);
}

void sub_1000FD8CC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1000FD8E4()
{

  return BidirectionalCollection<>.joined(separator:)();
}

void sub_1000FD908()
{

  sub_1000C9340();
}

uint64_t sub_1000FD920()
{
}

uint64_t sub_1000FD938()
{
  v2 = *(v0 + 464);
}

uint64_t sub_1000FD950()
{
}

uint64_t sub_1000FD994()
{
  v1 = v0[82];
  v2 = v0[80];
  sub_1000034F8(v0 + 31);
  v3 = v0[39];

  return sub_10001C5D0((v0 + 36), v3);
}

void sub_1000FDA10()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
}

void sub_1000FDA24()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
}

void sub_1000FDA50()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  v6 = v0[6];
}

uint64_t sub_1000FDA64()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  return v0[7];
}

uint64_t sub_1000FDBBC()
{
  *(v1 + 656) = 1;

  return sub_100013334(v0 + 32, v1 + 248);
}

void sub_1000FDC0C(uint64_t a1)
{
  v4 = *(a1 + 20);
  v5 = *(v2 + v4);
  *(v2 + v4) = v1;
}

void sub_1000FDC2C()
{
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
}

uint64_t sub_1000FDC78()
{

  return sub_10000D4DC(0, 0xF000000000000000);
}

uint64_t sub_1000FDCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000FE3F8(v27);
  if (a2)
  {
    v8 = v28;
    v9 = v29;
    sub_1000034B4(v27, v28);
    if (qword_100198378 != -1)
    {
      sub_100002D08();
      swift_once();
    }

    sub_100003A8C(&qword_10019E200);
    *&v24 = a1;
    *(&v24 + 1) = a2;
    v10 = == infix<A>(_:_:)();
    v12 = v11;
    v14 = v13;
    v25 = v8;
    v26 = v9;
    sub_100013234(&v24);
    QueryType.filter(_:)(v10, v12, v14, v8, v9);

    sub_1000034F8(v27);
    sub_10001A798(&v24, v27);
  }

  if (a4)
  {
    v15 = v28;
    v16 = v29;
    sub_1000034B4(v27, v28);
    if (qword_100198380 != -1)
    {
      sub_1000080AC();
      swift_once();
    }

    sub_100003A8C(&qword_10019E218);
    *&v24 = a3;
    *(&v24 + 1) = a4;
    v17 = == infix<A>(_:_:)();
    v19 = v18;
    v21 = v20;
    v25 = v15;
    v26 = v16;
    sub_100013234(&v24);
    QueryType.filter(_:)(v17, v19, v21, v15, v16);

    sub_1000034F8(v27);
    sub_10001A798(&v24, v27);
  }

  v22 = sub_1000FE93C(v27);
  sub_1000034F8(v27);
  return v22;
}

uint64_t sub_1000FDED8()
{
  type metadata accessor for CodingUserInfoKey();
  sub_10002EB80(&unk_100198750, &unk_1001518C0);
  v0 = Dictionary.init(dictionaryLiteral:)();
  LNExamplePhraseDescription.asJson(userInfo:)(v0);
  if (v1)
  {
  }

  if (qword_100198370 != -1)
  {
    sub_100007C04();
    swift_once();
  }

  memcpy(__dst, &unk_10019E150, sizeof(__dst));
  memcpy(__src, &unk_10019E150, sizeof(__src));
  sub_1000196B0(__dst, v15);
  if (qword_100198378 != -1)
  {
    sub_100002D08();
    swift_once();
  }

  sub_100003A8C(&qword_10019E200);
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  *(swift_initStackObject() + 16) = xmmword_10014CE90;
  if (qword_100198388 != -1)
  {
    sub_10000726C();
    swift_once();
  }

  sub_100003A8C(&qword_10019E230);
  <- infix<A>(_:_:)();

  v3 = QueryType.insert(_:_:)(v15);
  v5 = v4;
  v7 = v6;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v15);
  memcpy(v18, __src, sizeof(v18));
  sub_10001970C(v18);
  v19.template._countAndFlagsBits = v3;
  v19.template._object = v5;
  v19.bindings._rawValue = v7;
  Connection.run(_:)(v19);
  if (!v8)
  {
  }

  v15[0] = v8;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (swift_dynamicCast())
  {

    v9 = __src[1];
    v10 = __src[2];
    v11 = __src[3];
    if (LODWORD(__src[2]) == 19)
    {
      type metadata accessor for Schema.RuntimeError();
      sub_100065094();
      swift_allocError();
      *v12 = 0xD0000000000000FALL;
      v12[1] = 0x8000000100155110;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v13 = __src[0];
      sub_10002EC1C();
      swift_allocError();
      *v14 = v13;
      *(v14 + 8) = v9;
      *(v14 + 16) = v10;
      *(v14 + 24) = v11;
      swift_willThrow();
    }
  }
}

uint64_t sub_1000FE2C8()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_1000FE32C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100155560, v0, v1);
}

uint64_t sub_1000FE390()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x7470697263736564, 0xEB000000006E6F69, v0, v1);
}

uint64_t sub_1000FE3F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100198370 != -1)
  {
    sub_100007C04();
    swift_once();
  }

  memcpy(__dst, &unk_10019E150, sizeof(__dst));
  if (qword_1001983B0 != -1)
  {
    swift_once();
  }

  memcpy(__src, &unk_10019E338, sizeof(__src));
  v1 = memcpy(v138, __dst, 0xB0uLL);
  if (qword_100198378 != -1)
  {
    sub_100002D08();
    v1 = swift_once();
  }

  v9 = qword_10019E200;
  v10 = *algn_10019E208;
  v11 = qword_10019E210;
  sub_1000068AC(v1, v2, v3, v4, v5, v6, v7, v8, v70, v79, v88, a1, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11], v129[12], v129[13], v129[14], v129[15], v129[16], v129[17], v129[18], v129[19], v129[20], v129[21], v130, v131, v132, v133, v134, v135[0]);
  QueryType.namespace<A>(_:)(v9, v10, v11, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v12, v13, v71, v10, v9, v98, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v129[3] = v20;
  v129[4] = &protocol witness table for Expression<A>;
  v129[0] = v15;
  v129[1] = v17;
  v129[2] = v19;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v21 = swift_allocObject();
  v29 = v21;
  *(v21 + 16) = xmmword_10014E1F0;
  if (qword_100198380 != -1)
  {
    sub_1000080AC();
    v21 = swift_once();
  }

  v30 = qword_10019E218;
  v31 = unk_10019E220;
  v32 = qword_10019E228;
  sub_1000068AC(v21, v22, v23, v24, v25, v26, v27, v28, v72, v80, v89, v99, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11], v129[12], v129[13], v129[14], v129[15], v129[16], v129[17], v129[18], v129[19], v129[20], v129[21], v130, v131, v132, v133, v134, v135[0]);
  QueryType.namespace<A>(_:)(v30, v31, v32, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v33, v34, v73, v81, v90, v100, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v29[7] = v20;
  v29[8] = &protocol witness table for Expression<A>;
  v29[4] = v35;
  v29[5] = v36;
  v29[6] = v37;
  if (qword_100198388 != -1)
  {
    sub_10000726C();
    v35 = swift_once();
  }

  v44 = qword_10019E230;
  v43 = *algn_10019E238;
  v45 = qword_10019E240;
  sub_1000068AC(v35, v36, v37, v38, v39, v40, v41, v42, v74, v82, v91, v101, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11], v129[12], v129[13], v129[14], v129[15], v129[16], v129[17], v129[18], v129[19], v129[20], v129[21], v130, v131, v132, v133, v134, v135[0]);
  QueryType.namespace<A>(_:)(v44, v43, v45, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v46, v47, v75, v83, v92, v102, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v29[12] = v20;
  v29[13] = &protocol witness table for Expression<A>;
  v29[9] = v48;
  v29[10] = v49;
  v29[11] = v50;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  memcpy(v135, __src, sizeof(v135));
  QueryType.namespace<A>(_:)(qword_10019E418, unk_10019E420, qword_10019E428, &type metadata for Table, &type metadata for Int, &protocol witness table for Table, v51, v52, v76, v84, v93, v103, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v29[17] = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v29[18] = &protocol witness table for Expression<A>;
  v29[14] = v54;
  v29[15] = v56;
  v29[16] = v58;
  SchemaType.select(_:_:)(v129, v29, &type metadata for Table, &protocol witness table for Table);
  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(v129);
  memcpy(v138, v135, 0xB0uLL);
  v133 = &type metadata for Table;
  v134 = &protocol witness table for Table;
  v130 = swift_allocObject();
  memcpy((v130 + 16), __src, 0xB0uLL);
  memcpy(v129, __dst, sizeof(v129));
  sub_1000196B0(__src, &v107);
  QueryType.namespace<A>(_:)(v94, v85, v11, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v59, v60, v77, v85, v94, v104, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  if (qword_1001983B8 != -1)
  {
    swift_once();
  }

  memcpy(v129, __src, sizeof(v129));
  QueryType.namespace<A>(_:)(qword_10019E3E8, unk_10019E3F0, qword_10019E3F8, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v61, v62, v78, v86, v95, v105, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v63 = == infix<A>(_:_:)();
  v65 = v64;
  v67 = v66;

  v106[3] = &type metadata for Table;
  v106[4] = &protocol witness table for Table;
  *v106 = swift_allocObject();
  memcpy(v129, v138, sizeof(v129));
  QueryType.join(_:_:on:)(1, &v130, v63, v65, v67, &type metadata for Table, &protocol witness table for Table, v68, &protocol witness table for String, v87, v96, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);

  sub_10001970C(v138);
  return sub_1000034F8(&v130);
}

uint64_t sub_1000FE93C(void *a1)
{
  v3 = Connection.prepareRowIterator(_:)(a1);
  if (!v1)
  {
    __chkstk_darwin(v3);

    RowIterator.compactMap<A>(_:)();
    v2 = v5;
  }

  return v2;
}

uint64_t sub_1000FEA48()
{
  if (qword_100198378 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198388 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_1000FEBEC();
  static LNExamplePhraseDescription.fromJSON(_:)();

  return v1;
}

uint64_t sub_1000FEBB4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
    a1[2] = v8;
  }

  return result;
}

unint64_t sub_1000FEBEC()
{
  result = qword_10019B2B0;
  if (!qword_10019B2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019B2B0);
  }

  return result;
}

id sub_1000FEC40(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

BOOL sub_1000FED2C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_1000FED6C(uint64_t a1, void *a2, uint64_t a3)
{
  v186._countAndFlagsBits = a1;
  v186._object = a2;
  v4 = sub_10002EB80(&unk_10019BB40, &unk_100150FE8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v183 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v182 = (&v169 - v8);
  v184 = sub_10002EB80(&unk_10019BB60, &qword_100150FF8);
  v9 = *(*(v184 - 8) + 64);
  __chkstk_darwin(v184);
  v11 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v169 - v13;
  __chkstk_darwin(v15);
  v17 = &v169 - v16;
  __chkstk_darwin(v18);
  v20 = &v169 - v19;
  __chkstk_darwin(v21);
  v23 = &v169 - v22;
  __chkstk_darwin(v24);
  v26 = &v169 - v25;
  __chkstk_darwin(v27);
  v29 = &v169 - v28;
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = *(a3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  v34 = v185;
  sub_1000A7FE8();
  if (v34)
  {
    return a3;
  }

  a3 = v35;
  v180 = v29;
  v181 = v26;
  v177 = v11;
  v178 = v23;
  v174 = v32;
  v175 = v17;
  v179 = v14;
  v176 = v20;
  v185 = 0;
  v36 = sub_1000232F4(v35);
  v37 = 0;
  v38 = a3 & 0xC000000000000001;
  while (1)
  {
    if (v36 == v37)
    {

      v47 = _swiftEmptyArrayStorage;
      v48 = v185;
      goto LABEL_20;
    }

    if (v38)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v39 = *(a3 + 8 * v37 + 32);
    }

    v40 = v39;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:

      (*(v36 + 8))(v177, v38);
LABEL_100:

      v61 = v183;
      v48 = v184;
      v62 = v176;
      sub_100103180(v179, v183);
      sub_1000075C4(v61, 0, 1, v48);
      v149 = v170;
LABEL_83:

      if (sub_1000032C4(v61, 1, v48) == 1)
      {
        sub_100003E9C(v61, &unk_10019BB40, &unk_100150FE8);
        v150 = v149[3];
        if (v149[2] >= v150 >> 1)
        {
          sub_100002AB8(v150);
          sub_100013A60();
          v149 = v168;
        }

        v151 = 0;
        sub_100007280();
        *(v154 + 32) = v152 + 25;
        *(v154 + 40) = v153;
        v191 = v149;
        goto LABEL_94;
      }

      sub_100103180(v61, v62);
      v155 = v185;
      v156 = sub_10010070C(*(v62 + *(v48 + 48)));
      v185 = v155;
      if (v155)
      {

        v148 = v62;
        goto LABEL_89;
      }

      sub_10006E3AC(v156);

      v157 = v62;
LABEL_92:
      sub_100003E9C(v157, &unk_10019BB60, &qword_100150FF8);
      goto LABEL_93;
    }

    v41 = [v39 bundleIdentifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (v42 == v186._countAndFlagsBits && v44 == v186._object)
    {
      break;
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v37;
    if (v46)
    {
      goto LABEL_17;
    }
  }

LABEL_17:

  countAndFlagsBits = 0;
  v188 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  object = v186._object;

  countAndFlagsBits = v186._countAndFlagsBits;
  v188 = object;
  v50._object = 0x80000001001579E0;
  v50._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v50);
  v51._countAndFlagsBits = countAndFlagsBits;
  v52 = v188;
  countAndFlagsBits = 0x6D32333B305B1BLL;
  v188 = 0xE700000000000000;
  v51._object = v52;
  String.append(_:)(v51);
  v53._countAndFlagsBits = 0x6D303B305B1BLL;
  v53._object = 0xE600000000000000;
  String.append(_:)(v53);

  v54 = countAndFlagsBits;
  v55 = v188;
  sub_100013A60();
  v47 = v56;
  v58 = v56[2];
  v57 = v56[3];
  v48 = v185;
  if (v58 >= v57 >> 1)
  {
    sub_100002AB8(v57);
    sub_100013A60();
    v47 = v165;
  }

  v47[2] = v58 + 1;
  v59 = &v47[2 * v58];
  v59[4] = v54;
  v59[5] = v55;
LABEL_20:
  countAndFlagsBits = 0;
  v188 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  countAndFlagsBits = 0xD00000000000001ELL;
  v188 = 0x8000000100157A00;
  String.append(_:)(v186);
  v60._countAndFlagsBits = 3026478;
  v60._object = 0xE300000000000000;
  String.append(_:)(v60);
  v61 = countAndFlagsBits;
  v62 = v188;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_21;
  }

LABEL_105:
  v162 = v47[2];
  sub_100013A60();
  v47 = v163;
LABEL_21:
  v64 = v47[2];
  v63 = v47[3];
  if (v64 >= v63 >> 1)
  {
    sub_100002AB8(v63);
    sub_100013A60();
    v47 = v164;
  }

  v47[2] = v64 + 1;
  v65 = &v47[2 * v64];
  v65[4] = v61;
  v65[5] = v62;
  v191 = v47;
  sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
  v66 = v186._object;

  v67 = v66;
  v68 = v48;
  v69 = sub_1000FEC40(v186._countAndFlagsBits, v67, 1);
  if (!v48)
  {
    v70 = v69;
    v71 = sub_1000FFD80(v69);
    v185 = 0;
    sub_10006E3AC(v71);

    goto LABEL_93;
  }

  v185 = 0;
  v190 = v48;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (swift_dynamicCast())
  {

    v72 = countAndFlagsBits;
    a3 = v188;
    v73 = v189;
    sub_10010312C();
    swift_allocError();
    *v74 = v72;
    *(v74 + 8) = a3;
    *(v74 + 16) = v73;
    swift_willThrow();

    return a3;
  }

  v61 = v47[2];
  v75 = v47[3];
  v173 = v48;
  if (v61 >= v75 >> 1)
  {
    sub_100002AB8(v75);
    sub_100013A60();
    v47 = v166;
  }

  sub_100007280();
  *(v78 + 32) = v76 + 27;
  *(v78 + 40) = v77;
  v79 = v47;
  v191 = v47;
  type metadata accessor for DaemonRecord();
  v48 = static DaemonRecord.enumerated.getter();
  v80 = sub_1000232F4(v48);
  v81 = 0;
  v62 = v48 & 0xC000000000000001;
  v47 = (v48 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v80 == v81)
    {

      v87 = v79;
      v61 = v79[2];
      v88 = v79[3];
      if (v61 >= v88 >> 1)
      {
        sub_100002AB8(v88);
        sub_100013A60();
        v87 = v167;
      }

      v89 = v180;
      v87[2] = v61 + 1;
      v90 = &v87[2 * v61];
      v90[4] = 0xD00000000000002CLL;
      v90[5] = 0x8000000100157A60;
      v170 = v87;
      v191 = v87;
      v169 = type metadata accessor for FrameworkRecord();
      v91 = static FrameworkRecord.enumerated.getter();
      sub_1000080C0(v91);
      v62 = v93 & v92;
      v48 = (v94 + 63) >> 6;

      v96 = 0;
      v171 = v68;
      v172 = v95;
      if (v62)
      {
        while (1)
        {
          v97 = v96;
LABEL_49:
          v98 = __clz(__rbit64(v62)) | (v97 << 6);
          v99 = *(v91 + 48);
          v100 = type metadata accessor for URL();
          sub_100002944(v100);
          v102 = v101;
          (*(v103 + 16))(v89, v99 + *(v103 + 72) * v98, v100);
          v104 = *(*(v91 + 56) + 8 * v98);
          v105 = v184;
          *(v89 + *(v184 + 48)) = v104;
          v106 = v89;
          v107 = v181;
          sub_100103180(v106, v181);
          v108 = v107;
          v109 = v178;
          sub_1001031F0(v108, v178);
          v110 = *(v109 + *(v105 + 48));
          v111 = v104;
          v112 = FrameworkRecord.bundleIdentifier.getter();
          v61 = v113;

          if (v112 == v186._countAndFlagsBits && v61 == v186._object)
          {
            break;
          }

          v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v116 = *(v102 + 8);
          v47 = (v102 + 8);
          v116(v109, v100);
          if (v115)
          {
            goto LABEL_63;
          }

          v62 &= v62 - 1;
          sub_100003E9C(v181, &unk_10019BB60, &qword_100150FF8);
          v96 = v97;
          v89 = v180;
          v68 = v171;
          v91 = v172;
          if (!v62)
          {
            goto LABEL_46;
          }
        }

        (*(v102 + 8))(v109, v100);
LABEL_63:

        v119 = v182;
        sub_100103180(v181, v182);
        v120 = v119;
        v121 = 0;
      }

      else
      {
        while (1)
        {
LABEL_46:
          v97 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            goto LABEL_103;
          }

          if (v97 >= v48)
          {
            break;
          }

          v62 = *(v68 + 8 * v97);
          ++v96;
          if (v62)
          {
            goto LABEL_49;
          }
        }

        v119 = v182;
        v120 = v182;
        v121 = 1;
      }

      v48 = v184;
      sub_1000075C4(v120, v121, 1, v184);
      v61 = v183;
      v62 = v176;
      a3 = v170;

      if (sub_1000032C4(v119, 1, v48) == 1)
      {
        sub_100003E9C(v119, &unk_10019BB40, &unk_100150FE8);
        a3 = v169;
        v47 = static FrameworkRecord.enumerated.getter();
        sub_1000080C0(v47);
        v124 = v123 & v122;
        v126 = (v125 + 63) >> 6;

        v128 = 0;
        v181 = v68;
        v182 = v127;
        if (v124)
        {
          goto LABEL_70;
        }

LABEL_66:
        while (1)
        {
          v129 = v128 + 1;
          if (__OFADD__(v128, 1))
          {
            goto LABEL_104;
          }

          if (v129 >= v126)
          {

            sub_1000075C4(v61, 1, 1, v48);
            v149 = v170;
            goto LABEL_83;
          }

          v124 = *(v68 + 8 * v129);
          ++v128;
          if (v124)
          {
            v128 = v129;
            while (1)
            {
LABEL_70:
              v130 = __clz(__rbit64(v124)) | (v128 << 6);
              v131 = v47[6];
              v38 = type metadata accessor for URL();
              sub_100002944(v38);
              v36 = v132;
              v134 = v131 + *(v133 + 72) * v130;
              v135 = v175;
              (*(v133 + 16))(v175, v134, v38);
              v136 = *(v47[7] + 8 * v130);
              *(v135 + *(v48 + 48)) = v136;
              v137 = v135;
              v138 = v179;
              sub_100103180(v137, v179);
              v139 = v177;
              sub_1001031F0(v138, v177);
              a3 = *(v139 + *(v48 + 48));
              v140 = v136;
              v141 = FrameworkRecord.hostBundleIdentifier.getter();
              v143 = v142;

              if (v143)
              {
                if (v141 == v186._countAndFlagsBits && v143 == v186._object)
                {
                  goto LABEL_99;
                }

                a3 = _stringCompareWithSmolCheck(_:_:expecting:)();

                (*(v36 + 8))(v177, v38);
                v47 = v182;
                if (a3)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                (*(v36 + 8))(v139, v38);
                v47 = v182;
              }

              v124 &= v124 - 1;
              sub_100003E9C(v179, &unk_10019BB60, &qword_100150FF8);
              v61 = v183;
              v48 = v184;
              v62 = v176;
              v68 = v181;
              if (!v124)
              {
                goto LABEL_66;
              }
            }
          }
        }
      }

      v145 = v174;
      sub_100103180(v119, v174);
      v146 = v185;
      v147 = sub_10010070C(*(v145 + *(v48 + 48)));
      v185 = v146;
      if (v146)
      {

        v148 = v145;
LABEL_89:
        sub_100003E9C(v148, &unk_10019BB60, &qword_100150FF8);
        return a3;
      }

      sub_10006E3AC(v147);

      v157 = v145;
      goto LABEL_92;
    }

    if (v62)
    {
      v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v81 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v82 = *(v48 + 8 * v81 + 32);
    }

    v83 = v82;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v84 = DaemonRecord.bundleIdentifier.getter();
    a3 = v85;
    if (v84 == v186._countAndFlagsBits && v85 == v186._object)
    {

      goto LABEL_58;
    }

    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v61)
    {
      break;
    }

    ++v81;
  }

  a3 = v48;
LABEL_58:

  v117 = v185;
  v118 = sub_1001001F8();
  v185 = v117;
  if (v117)
  {

    return a3;
  }

  sub_10006E3AC(v118);

LABEL_93:
  v151 = 1;
LABEL_94:
  countAndFlagsBits = v191;
  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_10009153C();
  a3 = BidirectionalCollection<>.joined(separator:)();
  v159 = v158;

  if ((v151 & 1) == 0)
  {
    sub_10010312C();
    swift_allocError();
    *v160 = a3;
    *(v160 + 8) = v159;
    *(v160 + 16) = 1;
    swift_willThrow();
  }

  return a3;
}

uint64_t sub_1000FFBE0(uint64_t a1, uint64_t a2, char a3)
{
  sub_10002EB80(&qword_10019B0D0, &unk_100150350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x706C6548776F6873;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = a3;

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000FFCC0()
{
  v0 = qword_10019BE80;

  return v0;
}

uint64_t sub_1000FFD08(uint64_t a1)
{
  v2 = sub_100103340();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000FFD44(uint64_t a1)
{
  v2 = sub_100103340();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000FFD80(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F8384(a1);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = a1;

      v15 = sub_100100984(v13);
    }

    else
    {
      sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10014BC40;
      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v49 = 0xD000000000000011;
      v50 = 0x8000000100157B00;
      v18._countAndFlagsBits = v10;
      v18._object = v11;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 544497952;
      v19._object = 0xE400000000000000;
      String.append(_:)(v19);
      v20 = [a1 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10003D5E8();
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      (*(v4 + 8))(v7, v3);
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v23 = [a1 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27._countAndFlagsBits = v24;
      v27._object = v26;
      String.append(_:)(v27);

      v28._countAndFlagsBits = v49;
      v29 = v50;
      v49 = 0x6D32333B305B1BLL;
      v50 = 0xE700000000000000;
      v28._object = v29;
      String.append(_:)(v28);
      v30._countAndFlagsBits = 0x6D303B305B1BLL;
      v30._object = 0xE600000000000000;
      String.append(_:)(v30);

      v31 = v50;
      *(v17 + 32) = v49;
      *(v17 + 40) = v31;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0xE000000000000000;
      v51 = v17;
      v32 = sub_100103260(a1);
      if (v33)
      {
        v34 = v32;
        v35 = v33;
        v49 = 0;
        v50 = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        v49 = 0xD000000000000010;
        v50 = 0x8000000100157B40;
        v36._countAndFlagsBits = v34;
        v36._object = v35;
        String.append(_:)(v36);

        v37 = v49;
        v38 = v50;
        sub_100013A60();
        v17 = v39;
        v39[2] = 3;
        v39[8] = v37;
        v39[9] = v38;
        v51 = v39;
      }

      v15 = 0xD000000000000010;
      if ([a1 appProtectionHidden])
      {
        v49 = 0x6D33333B305B1BLL;
        v50 = 0xE700000000000000;
        v40._countAndFlagsBits = 0xD000000000000015;
        v40._object = 0x8000000100157B20;
        String.append(_:)(v40);
        v41._countAndFlagsBits = 0x6D303B305B1BLL;
        v41._object = 0xE600000000000000;
        String.append(_:)(v41);
        v42 = v49;
        v43 = v50;
        v44 = *(v17 + 16);
        v15 = v44 + 1;
        if (v44 >= *(v17 + 24) >> 1)
        {
          sub_100013A60();
          v17 = v48;
        }

        *(v17 + 16) = v15;
        v45 = v17 + 16 * v44;
        *(v45 + 32) = v42;
        *(v45 + 40) = v43;
        v51 = v17;
      }

      v46 = sub_100100FF0(a1);
      if (v1)
      {
      }

      else
      {
        sub_10006E3AC(v46);
        return v51;
      }
    }
  }

  else
  {
    v15 = 0x8000000100157AC0;
    sub_10010312C();
    swift_allocError();
    *v16 = 0xD000000000000039;
    *(v16 + 8) = 0x8000000100157AC0;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  return v15;
}

void *sub_1001001F8()
{
  v50 = type metadata accessor for URL();
  v48 = *(v50 - 8);
  v0 = *(v48 + 64);
  __chkstk_darwin(v50);
  v49 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = DaemonRecord.attributionBundleIdentifier.getter();
  v4 = v3;
  if (v3)
  {
    v5 = v2;
    v52[0] = 0;
    v52[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v52[0] = 0x6269727474612820;
    v52[1] = 0xEF203A6E6F697475;
    v6._countAndFlagsBits = v5;
    v6._object = v4;
    String.append(_:)(v6);

    v7._countAndFlagsBits = 41;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v4 = v52[0];
    v8 = v52[1];
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v52[0] = 0xD000000000000011;
  v52[1] = 0x8000000100157E50;
  v10._countAndFlagsBits = DaemonRecord.bundleIdentifier.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = v4;
  v11._object = v8;
  String.append(_:)(v11);

  v12._countAndFlagsBits = v52[0];
  v13 = v52[1];
  strcpy(v52, "\x1B[0;32m");
  v52[1] = 0xE700000000000000;
  v12._object = v13;
  String.append(_:)(v12);
  v14._countAndFlagsBits = 0x6D303B305B1BLL;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);

  v15 = v52[1];
  *(inited + 32) = v52[0];
  *(inited + 40) = v15;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(v52, "Details for ");
  BYTE5(v52[1]) = 0;
  HIWORD(v52[1]) = -5120;
  v16._countAndFlagsBits = DaemonRecord.bundleIdentifier.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 8250;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = *(DaemonRecord.metadataURLs.getter() + 16);

  v53._countAndFlagsBits = 0xD000000000000013;
  v53._object = 0x8000000100157D50;
  v19._countAndFlagsBits = sub_100102904(v18 != 0, v53);
  String.append(_:)(v19);

  v20 = v52[1];
  *(inited + 64) = v52[0];
  *(inited + 72) = v20;
  v21 = *(DaemonRecord.metadataURLs.getter() + 16);

  if (v21)
  {
    sub_100013A60();
    v23 = v22;
    v22[2] = 4;
    v22[10] = 0x646174656D202D20;
    v22[11] = 0xEB00000000617461;
    v24 = DaemonRecord.metadataURLs.getter();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v48 + 16;
      v27 = *(v48 + 16);
      v28 = *(v48 + 80);
      v46 = v24;
      v29 = v24 + ((v28 + 32) & ~v28);
      v47 = *(v48 + 72);
      v48 = v27;
      v30 = (v26 - 8);
      do
      {
        v31 = v49;
        v32 = v50;
        (v48)(v49, v29, v50);
        v52[0] = 0x2020202020;
        v52[1] = 0xE500000000000000;
        v33 = URL.path(percentEncoded:)(1);
        (*v30)(v31, v32);
        String.append(_:)(v33);

        v34 = v52[0];
        v35 = v52[1];
        v36 = v23[2];
        if (v36 >= v23[3] >> 1)
        {
          sub_100013A60();
          v23 = v38;
        }

        v23[2] = v36 + 1;
        v37 = &v23[2 * v36];
        v37[4] = v34;
        v37[5] = v35;
        v29 += v47;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    v52[0] = 0;
    v52[1] = 0xE000000000000000;
    v39._object = 0xEC00000020617461;
    v39._countAndFlagsBits = 0x646174656D202D20;
    String.append(_:)(v39);
    v51._countAndFlagsBits = 0x6D31333B305B1BLL;
    v51._object = 0xE700000000000000;
    v40._countAndFlagsBits = 0x29656E6F6E28;
    v40._object = 0xE600000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 0x6D303B305B1BLL;
    v41._object = 0xE600000000000000;
    String.append(_:)(v41);
    String.append(_:)(v51);

    v42 = v52[0];
    v43 = v52[1];
    sub_100013A60();
    v23 = v44;
    v44[2] = 4;
    v44[10] = v42;
    v44[11] = v43;
  }

  return v23;
}

unint64_t sub_100102844(void *a1)
{
  v1 = [a1 containingBundleRecord];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000F8384(v1);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x8000000100157CD0;
    sub_10010312C();
    swift_allocError();
    *v6 = 0xD000000000000041;
    *(v6 + 8) = 0x8000000100157CD0;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_100102904(char a1, Swift::String a2)
{
  String.append(_:)(a2);
  v3._countAndFlagsBits = 61;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  v14._countAndFlagsBits = sub_1001030A4(v7);
  v14._object = v8;
  v9._countAndFlagsBits = v5;
  v9._object = v6;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x6D303B305B1BLL;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  String.append(_:)(v14);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x6D303B305B1BLL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);

  return 1831951131;
}

uint64_t sub_100102A20(uint64_t a1, void *a2, id a3, uint64_t a4)
{
  v7 = [a3 entitlements];
  v8 = String._bridgeToObjectiveC()();
  sub_100003D44(0, &qword_100199510, NSArray_ptr);
  v9 = [v7 objectForKey:v8 ofClass:swift_getObjCClassFromMetadata()];

  if (!v9)
  {
    goto LABEL_11;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004D14(v65, &v63);
  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000034F8(v65);
LABEL_11:
    v65[0] = 0;
    v65[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    strcpy(v65, "- entitlement:");
    HIBYTE(v65[1]) = -18;
    v37._countAndFlagsBits = a1;
    v37._object = a2;
    String.append(_:)(v37);
    v38._countAndFlagsBits = 0x6F727020746F6E20;
    v38._object = 0xEF202C6465646976;
    String.append(_:)(v38);
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0x6E49707041736168;
    v39._object = 0xED000073746E6574;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 61;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v64._countAndFlagsBits = 0x6D31333B305B1BLL;
    v64._object = 0xE700000000000000;
    v41._countAndFlagsBits = 0x65736C6166;
    v41._object = 0xE500000000000000;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0x6D303B305B1BLL;
    v42._object = 0xE600000000000000;
    String.append(_:)(v42);
    String.append(_:)(v64);

    v43._countAndFlagsBits = v63._countAndFlagsBits;
    object = v63._object;
    v63._countAndFlagsBits = 1831951131;
    v63._object = 0xE400000000000000;
    v43._object = object;
    String.append(_:)(v43);
    v45._countAndFlagsBits = 0x6D303B305B1BLL;
    v45._object = 0xE600000000000000;
    String.append(_:)(v45);

    String.append(_:)(v63);

    v46 = v65[0];
    v47 = v65[1];
    swift_beginAccess();
    sub_1000F507C();
    v48 = *(*(a4 + 16) + 16);
    sub_1000F5108(v48);
    v49 = *(a4 + 16);
    *(v49 + 16) = v48 + 1;
    v50 = v49 + 16 * v48;
    *(v50 + 32) = v46;
    *(v50 + 40) = v47;
    *(a4 + 16) = v49;
    return swift_endAccess();
  }

  countAndFlagsBits = v64._countAndFlagsBits;
  if (*(v64._countAndFlagsBits + 16))
  {
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v63._countAndFlagsBits = 0x6C7469746E65202DLL;
    v63._object = 0xEF3A73746E656D65;
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0x6E49707041736168;
    v13._object = 0xED000073746E6574;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 61;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 1702195828;
    v15._object = 0xE400000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x6D303B305B1BLL;
    v16._object = 0xE600000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0x6D32333B305B1BLL;
    v17._object = 0xE700000000000000;
    String.append(_:)(v17);

    v18._countAndFlagsBits = v64._countAndFlagsBits;
    v19 = v64._object;
    v64._countAndFlagsBits = 1831951131;
    v64._object = 0xE400000000000000;
    v18._object = v19;
    String.append(_:)(v18);
    v20._countAndFlagsBits = 0x6D303B305B1BLL;
    v20._object = 0xE600000000000000;
    String.append(_:)(v20);

    String.append(_:)(v64);

    v21 = v63._countAndFlagsBits;
    v22 = v63._object;
    swift_beginAccess();
    sub_1000F507C();
    v23 = *(*(a4 + 16) + 16);
    sub_1000F5108(v23);
    v24 = *(a4 + 16);
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
    *(a4 + 16) = v24;
    swift_endAccess();
    v26 = *(countAndFlagsBits + 16);
    if (v26)
    {
      v64._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_100011438(0, v26, 0);
      v27 = v64._countAndFlagsBits;
      v28 = (countAndFlagsBits + 40);
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        v63._countAndFlagsBits = 538976288;
        v63._object = 0xE400000000000000;

        v31._countAndFlagsBits = v29;
        v31._object = v30;
        String.append(_:)(v31);

        v33 = v63._countAndFlagsBits;
        v32 = v63._object;
        v64._countAndFlagsBits = v27;
        v35 = v27[2];
        v34 = v27[3];
        if (v35 >= v34 >> 1)
        {
          sub_100011438(v34 > 1, v35 + 1, 1);
          v27 = v64._countAndFlagsBits;
        }

        v27[2] = v35 + 1;
        v36 = &v27[2 * v35];
        v36[4] = v33;
        v36[5] = v32;
        v28 += 2;
        --v26;
      }

      while (v26);
    }

    else
    {

      v27 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    sub_10006E3AC(v27);
  }

  else
  {

    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v52._object = 0xEE003A746E656D65;
    v52._countAndFlagsBits = 0x6C7469746E65202DLL;
    String.append(_:)(v52);
    v53._countAndFlagsBits = a1;
    v53._object = a2;
    String.append(_:)(v53);
    v54._object = 0x8000000100157DF0;
    v54._countAndFlagsBits = 0xD000000000000028;
    String.append(_:)(v54);
    v55._countAndFlagsBits = v63._countAndFlagsBits;
    v56 = v63._object;
    v63._countAndFlagsBits = 0x6D31333B305B1BLL;
    v63._object = 0xE700000000000000;
    v55._object = v56;
    String.append(_:)(v55);
    v57._countAndFlagsBits = 0x6D303B305B1BLL;
    v57._object = 0xE600000000000000;
    String.append(_:)(v57);

    v58 = v63._countAndFlagsBits;
    v59 = v63._object;
    swift_beginAccess();
    sub_1000F507C();
    v60 = *(*(a4 + 16) + 16);
    sub_1000F5108(v60);
    v61 = *(a4 + 16);
    *(v61 + 16) = v60 + 1;
    v62 = v61 + 16 * v60;
    *(v62 + 32) = v58;
    *(v62 + 40) = v59;
    *(a4 + 16) = v61;
  }

  swift_endAccess();
  return sub_1000034F8(v65);
}

uint64_t sub_1001030A4(char a1)
{
  result = 1831951131;
  switch(a1)
  {
    case 1:
      v3 = 0x32333B305B1BLL;
      goto LABEL_6;
    case 2:
      v3 = 0x33333B305B1BLL;
      goto LABEL_6;
    case 3:
      v3 = 0x31333B305B1BLL;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D000000000000;
      break;
    case 4:
      result = 0x6D303B305B1BLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10010312C()
{
  result = qword_10019BE90;
  if (!qword_10019BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BE90);
  }

  return result;
}

uint64_t sub_100103180(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&unk_10019BB60, &qword_100150FF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001031F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&unk_10019BB60, &qword_100150FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100103260(void *a1)
{
  v1 = [a1 bundleVersion];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1001032C4()
{
  result = qword_10019BE98;
  if (!qword_10019BE98)
  {
    sub_100003D44(255, &unk_10019BB50, LSApplicationExtensionRecord_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BE98);
  }

  return result;
}

unint64_t sub_100103340()
{
  result = qword_10019BEA0;
  if (!qword_10019BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BEA0);
  }

  return result;
}

char *sub_100103394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  if (qword_100198390 != -1)
  {
    swift_once();
  }

  memcpy(v51, &unk_10019E248, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v51, &v39);
    if (qword_100198398 != -1)
    {
      sub_100002D1C();
      swift_once();
    }

    v39 = a1;
    v40 = a2;
    v10 = == infix<A>(_:_:)();
    v12 = v11;
    v14 = v13;
    memcpy(v38, v51, sizeof(v38));
    QueryType.filter(_:)(v10, v12, v14, &type metadata for Table, &protocol witness table for Table, v15, v16, v17, v33, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15], v38[16], v38[17], v38[18], v38[19], v38[20], v38[21], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);

    sub_10001970C(v51);
    v18 = &v39;
  }

  else
  {
    sub_1000196B0(v51, &v39);
    v18 = v51;
  }

  memcpy(v50, v18, sizeof(v50));
  v42 = &type metadata for Table;
  v43 = &protocol witness table for Table;
  v39 = swift_allocObject();
  memcpy((v39 + 16), v50, 0xB0uLL);
  v19 = Connection.prepare(_:)(&v39);
  result = sub_1000034F8(&v39);
  if (!v3)
  {
    swift_retain_n();
    v34 = v19;
    v21 = dispatch thunk of _AnySequenceBox._makeIterator()();
    v35 = _swiftEmptyArrayStorage;
    v22 = &unk_100198000;
    v52 = v21;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v39)
      {
        break;
      }

      if (v22[115] != -1)
      {
        sub_100002D1C();
        swift_once();
      }

      Row.get<A>(_:)();
      v23 = v39;
      v24 = v40;
      if (qword_1001983A0 != -1)
      {
        swift_once();
      }

      Row.get<A>(_:)();
      v36 = v23;
      sub_1001039B4();
      v25 = type metadata accessor for URL();
      sub_1000075C4(v9, 1, 1, v25);
      v26 = static LNAssistantIntentNegativePhrases.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100070710(0, *(v35 + 2) + 1, 1, v35);
        v35 = v31;
      }

      v22 = &unk_100198000;
      v27 = v35;
      v29 = *(v35 + 2);
      v28 = *(v35 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_100070710(v28 > 1, v29 + 1, 1, v35);
        v27 = v32;
      }

      *(v27 + 2) = v29 + 1;
      v35 = v27;
      v30 = &v27[24 * v29];
      *(v30 + 4) = v36;
      *(v30 + 5) = v24;
      *(v30 + 6) = v26;
    }

    return v35;
  }

  return result;
}

uint64_t sub_1001038E4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100103948()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x657669746167656ELL, 0xEF73657361726850, v0, v1);
}

unint64_t sub_1001039B4()
{
  result = qword_10019BEA8;
  if (!qword_10019BEA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019BEA8);
  }

  return result;
}

uint64_t sub_100103A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 112) = a6;
  v7 = sub_100007C18(a1, a2, a3, a4, a5);
  sub_10000729C(v7);
  *(v6 + 88) = v8;
  v10 = *(v9 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100103AC4, 0, 0);
}

uint64_t sub_100103AC4()
{
  v46 = v0;
  v1 = *(v0 + 104);
  UUID.init()();
  if (qword_100198308 != -1)
  {
    sub_1000029BC();
    swift_once();
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = type metadata accessor for Logger();
  sub_10000347C(v8, qword_10019E050);
  (*(v5 + 16))(v2, v3, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 80);
  if (v11)
  {
    v43 = v10;
    v15 = *(v0 + 112);
    v41 = *(v0 + 56);
    v42 = *(v0 + 64);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v18 = 67109890;
    *(v18 + 4) = v15;
    *(v18 + 8) = 2080;
    *(v18 + 10) = sub_100004C50(v17, v16, v45);
    *(v18 + 18) = 2080;
    *(v0 + 16) = v41;
    *(v0 + 24) = v42;

    sub_10002EB80(&unk_100199100, &qword_10014E230);
    v19 = String.init<A>(describing:)();
    v21 = sub_100004C50(v19, v20, v45);

    *(v18 + 20) = v21;
    *(v18 + 28) = 2080;
    sub_10010575C();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v13 + 8);
    v25(v12, v14);
    v26 = sub_100004C50(v22, v24, v45);

    *(v18 + 30) = v26;
    _os_log_impl(&_mh_execute_header, v9, v43, "%d Registering for observation status changes for %s/%s: %s", v18, 0x26u);
    swift_arrayDestroy();
    sub_1000036AC();
    sub_1000036AC();
  }

  else
  {

    v25 = *(v13 + 8);
    v25(v12, v14);
  }

  v27 = *(v0 + 104);
  v29 = *(v0 + 64);
  v28 = *(v0 + 72);
  v30 = *(v0 + 112);
  v31 = *(v0 + 56);
  v44 = *(v0 + 40);
  v32 = *(v0 + 32);
  v33 = *(v28 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  v34 = swift_task_alloc();
  *(v34 + 16) = v44;
  *(v34 + 32) = v27;
  *(v34 + 40) = v30;
  *(v34 + 48) = v31;
  *(v34 + 56) = v29;
  *(v34 + 64) = v28;
  os_unfair_lock_lock((v33 + 24));
  sub_100105848((v33 + 16), v32);
  v36 = *(v0 + 96);
  v35 = *(v0 + 104);
  v37 = *(v0 + 80);
  v38 = *(v0 + 88);
  os_unfair_lock_unlock((v33 + 24));

  v25(v35, v37);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100103E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 104) = a6;
  v7 = sub_100007C18(a1, a2, a3, a4, a5);
  sub_10000729C(v7);
  *(v6 + 88) = v8;
  v10 = *(v9 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100103F0C, 0, 0);
}

uint64_t sub_100103F0C()
{
  v37 = v0;
  if (qword_100198308 != -1)
  {
    sub_1000029BC();
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = type metadata accessor for Logger();
  sub_10000347C(v7, qword_10019E050);
  (*(v2 + 16))(v1, v5, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 80);
  if (v10)
  {
    v14 = *(v0 + 104);
    v32 = *(v0 + 48);
    v33 = *(v0 + 56);
    v30 = *(v0 + 32);
    v31 = *(v0 + 40);
    v15 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v15 = 67109890;
    *(v15 + 4) = v14;
    *(v15 + 8) = 2080;
    sub_10010575C();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_100004C50(v16, v18, v36);

    *(v15 + 10) = v19;
    *(v15 + 18) = 2080;
    *(v15 + 20) = sub_100004C50(v30, v31, v36);
    *(v15 + 28) = 2080;
    *(v0 + 16) = v32;
    *(v0 + 24) = v33;

    sub_10002EB80(&unk_100199100, &qword_10014E230);
    v20 = String.init<A>(describing:)();
    v22 = sub_100004C50(v20, v21, v36);

    *(v15 + 30) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "%d Unregistering %s for observation status changes for %s/%s", v15, 0x26u);
    swift_arrayDestroy();
    sub_1000036AC();
    sub_1000036AC();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v24 = *(v0 + 64);
  v23 = *(v0 + 72);
  v34 = *(v0 + 32);
  v35 = *(v0 + 48);
  v25 = *(v23 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  v26 = swift_task_alloc();
  *(v26 + 16) = v34;
  *(v26 + 32) = v35;
  *(v26 + 48) = v24;
  *(v26 + 56) = v23;
  os_unfair_lock_lock((v25 + 24));
  sub_100105738((v25 + 16));
  v27 = *(v0 + 96);
  os_unfair_lock_unlock((v25 + 24));

  v28 = *(v0 + 8);

  return v28();
}

void sub_100104254(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v40 = a1;
  v41 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v50 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a5 + 56;
  v13 = 1 << *(a5 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a5 + 56);
  v16 = (v13 + 63) >> 6;
  v46 = 0x8000000100157E70;
  v47 = v10 + 16;
  v51 = v10;
  v52 = a5;
  v45 = v10 + 8;

  v17 = 0;
  *&v18 = 136315650;
  v39 = v18;
  v48 = v16;
  v49 = a5 + 56;
  if (v15)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      do
      {
LABEL_8:
        v20 = v51;
        v21 = v50;
        (*(v51 + 16))(v50, *(v52 + 48) + *(v51 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v8);
        v54 = 0;
        v55 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        v54 = 0xD000000000000022;
        v55 = v46;
        v22 = UUID.uuidString.getter();
        v24 = v23;
        (*(v20 + 8))(v21, v8);
        v25._countAndFlagsBits = v22;
        v25._object = v24;
        String.append(_:)(v25);

        v26 = v54;
        v27 = v55;
        if (qword_100198308 != -1)
        {
          sub_1000029BC();
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10000347C(v28, qword_10019E050);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v43 = v29;
          v42 = v30;
          v32 = v31;
          v44 = swift_slowAlloc();
          v53 = v44;
          *v32 = v39;
          *(v32 + 4) = sub_100004C50(v26, v27, &v53);
          *(v32 + 12) = 2080;
          *(v32 + 14) = sub_100004C50(v40, a2, &v53);
          *(v32 + 22) = 2080;
          v54 = v41;
          v55 = a4;

          sub_10002EB80(&unk_100199100, &qword_10014E230);
          v33 = String.init<A>(describing:)();
          v35 = sub_100004C50(v33, v34, &v53);

          *(v32 + 24) = v35;
          v36 = v43;
          _os_log_impl(&_mh_execute_header, v43, v42, "Posting observation status change notification %s for %s/%s", v32, 0x20u);
          swift_arrayDestroy();
          sub_1000036AC();
          sub_1000036AC();
        }

        else
        {
        }

        v12 = v49;
        v15 &= v15 - 1;
        v37 = [objc_opt_self() defaultCenter];
        v38 = String._bridgeToObjectiveC()();

        [v37 postNotificationName:v38 object:0];

        v16 = v48;
      }

      while (v15);
    }
  }

  __break(1u);
}

uint64_t sub_1001046B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v75 = a8;
  v76 = a9;
  LODWORD(v69) = a5;
  v15 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  v16 = v15 - 8;
  v70 = *(v15 - 8);
  v17 = *(v70 + 8);
  __chkstk_darwin(v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v74 = a1;
  v21 = *a1;
  v23 = &v68 - v22;
  v78 = a2;
  v80 = a3;
  v24 = sub_10000E898(a2, a3, v21);
  if (v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  v79 = v27;
  if (v24)
  {
    v28 = v25;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  if (v24)
  {
    v29 = v26;
  }

  else
  {
    v29 = _swiftEmptyDictionarySingleton;
  }

  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v77 = a4;
  v72 = v32;
  v73 = v30;
  v71 = v31 + 16;
  (v32)(v23, a4);
  *&v23[*(v16 + 28)] = v69;
  if (a7)
  {
    v68 = v28;
    v33 = a7;
    v34 = sub_1000A0E7C(a6, a7, v29);
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = _swiftEmptyArrayStorage;
    }

    v69 = v36;
    if (v34)
    {
      v37 = v35;
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100070EEC(0, v37[2] + 1, 1, v37);
      v37 = v64;
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      sub_100070EEC(v38 > 1, v39 + 1, 1, v37);
      v37 = v65;
    }

    v37[2] = v39 + 1;
    v40 = v37 + ((v70[80] + 32) & ~v70[80]) + *(v70 + 9) * v39;
    v70 = v23;
    sub_10004092C(v23, v40);

    swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v29;
    v41 = a6;
    sub_10006971C();
    if (qword_100198308 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000347C(v42, qword_10019E050);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v45 = 136315906;
      *(v45 + 4) = sub_100004C50(v78, v80, v81);
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_100004C50(v41, v33, v81);
      *(v45 + 22) = 2048;
      *(v45 + 24) = v69[2];
      *(v45 + 32) = 2048;
      *(v45 + 34) = v37[2];
      _os_log_impl(&_mh_execute_header, v43, v44, "%s/%s: # of event listeners for %ld # of observation status change clients): %ld", v45, 0x2Au);
      swift_arrayDestroy();
    }

    v23 = v70;
  }

  else
  {
    v68 = a6;
    v69 = v29;
    sub_10004092C(v23, v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100070EEC(0, v28[2] + 1, 1, v28);
      v28 = v66;
    }

    v46 = v80;
    v48 = v28[2];
    v47 = v28[3];
    if (v48 >= v47 >> 1)
    {
      sub_100070EEC(v47 > 1, v48 + 1, 1, v28);
      v28 = v67;
    }

    v28[2] = v48 + 1;
    sub_1000C2A64(v19, v28 + ((v70[80] + 32) & ~v70[80]) + *(v70 + 9) * v48);
    v49 = qword_100198308;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000347C(v50, qword_10019E050);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v78;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v55 = 136315906;
      *(v55 + 4) = sub_100004C50(v54, v46, &v82);
      *(v55 + 12) = 2080;
      v81[0] = v68;
      v81[1] = 0;
      sub_10002EB80(&unk_100199100, &qword_10014E230);
      v56 = String.init<A>(describing:)();
      v58 = sub_100004C50(v56, v57, &v82);

      *(v55 + 14) = v58;
      *(v55 + 22) = 2048;
      v59 = v79[2];

      *(v55 + 24) = v59;

      *(v55 + 32) = 2048;
      v60 = v28[2];

      *(v55 + 34) = v60;

      _os_log_impl(&_mh_execute_header, v51, v52, "%s/%s: # of event listeners for %ld # of observation status change clients): %ld", v55, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  v61 = v74;
  v62 = *v74;
  swift_isUniquelyReferenced_nonNull_native();
  v81[0] = *v61;
  sub_1000695E0();
  *v61 = v81[0];
  sub_1000C0A28();
  sub_100040990(v23);
  v72(v76, v77, v73);
}

uint64_t sub_100104E38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a7;
  v13 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  v89 = *(v13 - 8);
  v14 = *(v89 + 64);
  __chkstk_darwin(v13 - 8);
  v84 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v85 = &v74 - v17;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  __chkstk_darwin(v24);
  v88 = &v74 - v25;
  v78 = a1;
  v26 = sub_10000E898(a2, a3, *a1);
  v29 = v26 == 0;
  if (v26)
  {
    v30 = v27;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
    v30 = _swiftEmptyArrayStorage;
  }

  if (v29)
  {
    v28 = _swiftEmptyDictionarySingleton;
  }

  v82 = v28;
  v83 = a3;
  v86 = a2;
  v87 = a6;
  v81 = v26;
  if (!a5)
  {
    v84 = v23;
    v76 = &v74;
    v90 = v26;
    v91 = v30;
    __chkstk_darwin(v26);
    *(&v74 - 2) = a6;

    v38 = v80;
    result = sub_1000F8230(sub_1001057B4, (&v74 - 4), v30);
    v80 = v38;
    if (v39)
    {
      v40 = v30[2];
      a6 = v30;
    }

    else
    {
      v40 = result;
      v85 = v20;
      v77 = v30;
      v20 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_75;
      }

      a6 = v77;
      while (1)
      {
        v56 = *(a6 + 16);
        if (v20 == v56)
        {
          break;
        }

        if (v20 >= v56)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v57 = v88;
        v58 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v59 = a6 + v58;
        v60 = *(v89 + 72);
        a5 = v60 * v20;
        sub_10004092C(a6 + v58 + v60 * v20, v88);
        v23 = static UUID.== infix(_:_:)();
        sub_100040990(v57);
        if ((v23 & 1) == 0)
        {
          if (v20 != v40)
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }

            v61 = *(a6 + 16);
            if (v40 >= v61)
            {
              goto LABEL_67;
            }

            v23 = v60 * v40;
            v62 = v59 + v60 * v40;
            v63 = v84;
            sub_10004092C(v62, v84);
            if (v20 >= v61)
            {
              goto LABEL_68;
            }

            sub_10004092C(v59 + a5, v85);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000F5234(a6);
              a6 = v64;
            }

            sub_1001057E4(v85, a6 + v58 + v23);
            if (v20 >= *(a6 + 16))
            {
              goto LABEL_69;
            }

            sub_1001057E4(v63, a6 + v58 + a5);
            v91 = a6;
          }

          ++v40;
        }

        a2 = v86;
        ++v20;
      }
    }

    if (*(a6 + 16) < v40)
    {
      __break(1u);
    }

    else
    {
      sub_1000F550C();
      v65 = v91;
      v66 = qword_100198308;

      v23 = v65;

      if (v66 == -1)
      {
LABEL_56:
        v67 = type metadata accessor for Logger();
        sub_10000347C(v67, qword_10019E050);

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v92 = v71;
          *v70 = 136315650;
          *(v70 + 4) = sub_100004C50(a2, v83, &v92);
          *(v70 + 12) = 2048;
          *(v70 + 14) = v81[2];
          *(v70 + 22) = 2048;
          *(v70 + 24) = *(v23 + 16);
          _os_log_impl(&_mh_execute_header, v68, v69, "%s: # of event listeners for  %ld # of observation status change clients): %ld", v70, 0x20u);
          sub_1000034F8(v71);
        }

LABEL_59:

        v72 = v78;
        v73 = *v78;
        swift_isUniquelyReferenced_nonNull_native();
        v90 = *v72;
        sub_1000695E0();
        *v72 = v90;
        sub_1000C0A28();
      }
    }

    swift_once();
    goto LABEL_56;
  }

  v76 = a5;
  v77 = v30;
  v75 = a4;
  v31 = sub_1000A0E7C(a4, a5, v28);
  v74 = &v74;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  if (v31)
  {
    a5 = v32;
  }

  else
  {
    a5 = _swiftEmptyArrayStorage;
  }

  v90 = v33;
  v91 = a5;
  __chkstk_darwin(v31);
  *(&v74 - 2) = a6;
  v34 = v80;
  result = sub_1000F8230(sub_100105874, (&v74 - 4), a5);
  v80 = v34;
  if (v36)
  {
    v37 = *(a5 + 16);
LABEL_34:
    sub_1000F550C();
    a6 = v90;
    a5 = v91;

    v49 = v82;
    swift_isUniquelyReferenced_nonNull_native();
    v92 = v49;
    v20 = v75;
    v40 = v76;
    sub_10006971C();
    v82 = v92;
    if (qword_100198308 != -1)
    {
LABEL_71:
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000347C(v50, qword_10019E050);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v86;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v55 = 136315906;
      *(v55 + 4) = sub_100004C50(v54, v83, &v92);
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_100004C50(v20, v40, &v92);
      *(v55 + 22) = 2048;
      *(v55 + 24) = *(a6 + 16);
      *(v55 + 32) = 2048;
      *(v55 + 34) = *(a5 + 16);
      _os_log_impl(&_mh_execute_header, v51, v52, "%s/%s: # of event listeners for  %ld # of observation status change clients): %ld", v55, 0x2Au);
      swift_arrayDestroy();
    }

    goto LABEL_59;
  }

  v41 = result;
  v42 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v40 = a6;
    while (1)
    {
      v43 = *(a5 + 16);
      if (v42 == v43)
      {
        break;
      }

      if (v42 >= v43)
      {
        __break(1u);
        goto LABEL_61;
      }

      v44 = v88;
      v20 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v45 = a5 + v20;
      v46 = *(v89 + 72);
      a6 = v46 * v42;
      sub_10004092C(a5 + v20 + v46 * v42, v88);
      v40 = static UUID.== infix(_:_:)();
      sub_100040990(v44);
      if (v40)
      {
        v40 = v87;
      }

      else
      {
        if (v42 != v41)
        {
          if (v41 < 0)
          {
            goto LABEL_62;
          }

          v47 = *(a5 + 16);
          if (v41 >= v47)
          {
            goto LABEL_63;
          }

          v40 = v46 * v41;
          sub_10004092C(v45 + v46 * v41, v85);
          if (v42 >= v47)
          {
            goto LABEL_64;
          }

          sub_10004092C(v45 + a6, v84);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000F5234(a5);
            a5 = v48;
          }

          sub_1001057E4(v84, a5 + v20 + v40);
          if (v42 >= *(a5 + 16))
          {
            goto LABEL_65;
          }

          sub_1001057E4(v85, a5 + v20 + a6);
          v91 = a5;
        }

        v40 = v87;
        ++v41;
      }

      ++v42;
    }

    if (v42 < v41)
    {
      goto LABEL_70;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

unint64_t sub_10010575C()
{
  result = qword_10019BAD0;
  if (!qword_10019BAD0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BAD0);
  }

  return result;
}

uint64_t sub_1001057E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100105914(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = LNDaemonObservationStatusRegistryXPCInterface();
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v17;
  if (v17)
  {
    v5 = sub_1000034B4(aBlock, v17);
    v6 = *(v4 - 1);
    v7 = *(v6 + 64);
    v8 = __chkstk_darwin(v5);
    v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v10, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v11 = 0;
  }

  [a1 setExportedObject:v11];
  swift_unknownObjectRelease();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  v18 = sub_100107570;
  v19 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v17 = &unk_10018FD78;
  v15 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
}

void sub_100105B88(void *a1)
{
  swift_getObjectType();
  v2 = [a1 processIdentifier];
  v3 = sub_10006A1C4();
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v17;
  if (v17)
  {
    v5 = sub_1000034B4(aBlock, v17);
    v6 = *(v4 - 1);
    v7 = *(v6 + 64);
    v8 = __chkstk_darwin(v5);
    v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v10, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v11 = 0;
  }

  [a1 setExportedObject:v11];
  swift_unknownObjectRelease();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  v18 = sub_100107600;
  v19 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v17 = &unk_10018FE68;
  v15 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
}

void sub_100105E10(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = LNDaemonSuggestionsXPCInterface();
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v17;
  if (v17)
  {
    v5 = sub_1000034B4(aBlock, v17);
    v6 = *(v4 - 1);
    v7 = *(v6 + 64);
    v8 = __chkstk_darwin(v5);
    v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v10, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v11 = 0;
  }

  [a1 setExportedObject:v11];
  swift_unknownObjectRelease();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  v18 = sub_10010760C;
  v19 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v17 = &unk_10018FEE0;
  v15 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
}

uint64_t sub_100106084()
{
  sub_1000036A0();
  v1 = *v0;
  v2 = sub_1000080E8(dword_100151BC8);
  v3 = sub_100004BD0(v2);
  *v3 = v4;
  v12 = sub_100002D30(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_100106108()
{
  sub_1000036A0();
  v1 = *v0;
  v2 = sub_1000080E8(&unk_100151BE0);
  v3 = sub_100004BD0(v2);
  *v3 = v4;
  v12 = sub_100002D30(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_10010618C()
{
  sub_1000036A0();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001062A0()
{
  sub_1000036A0();
  v1 = *v0;
  v2 = sub_1000080E8(&unk_100151BF0);
  v3 = sub_100004BD0(v2);
  *v3 = v4;
  v12 = sub_100002D30(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_100106348()
{
  sub_1000036A0();
  v1 = *v0;
  v2 = sub_1000080E8(&unk_100151C00);
  v3 = sub_100004BD0(v2);
  *v3 = v4;
  v12 = sub_100002D30(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_1001063CC()
{
  sub_1000036A0();
  v1 = *v0;
  v2 = sub_1000080E8(&unk_100151C10);
  v3 = sub_100004BD0(v2);
  *v3 = v4;
  v12 = sub_100002D30(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_100106450()
{
  sub_1000036A0();
  v1[2] = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v1[3] = swift_isaMask & *v0;
  v1[4] = *((v3 & v2) + 0x50);
  sub_10000518C();
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100106548, v0, 0);
}

uint64_t sub_100106548()
{
  v1 = v0[6];
  v2 = v0[2];
  [*(v2 + 112) invalidate];
  v3 = *(v2 + 120);
  sub_100002794(v1);
  v4 = *(v0[3] + 88);
  v10 = (*(v4 + 32) + **(v4 + 32));
  v5 = *(*(v4 + 32) + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1001066D4;
  v7 = v0[6];
  v8 = v0[4];

  return v10(v8, v4);
}

uint64_t sub_1001066D4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[2];

    return _swift_task_switch(sub_10010687C, v7, 0);
  }

  else
  {
    v8 = v6[6];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_10010687C()
{
  sub_1000036A0();
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

void sub_1001068DC()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_10010692C()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10010695C()
{
  sub_10010692C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001069A0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100106A34()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10010762C;

  return sub_100106450();
}

void sub_100106AC4(int a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = type metadata accessor for ObservationStatusRegistry();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[1] = a3;
      v14 = v13;
      v21[0] = v13;
      *v12 = 67109378;
      *(v12 + 4) = a1;
      *(v12 + 8) = 2080;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = sub_100004C50(v15, v16, v21);

      *(v12 + 10) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalidated XPC connection from PID %d for service %s", v12, 0x12u);
      sub_1000034F8(v14);
    }

    (*(v6 + 8))(v9, v5);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100106D28(int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[0] = type metadata accessor for ConstraintValidationService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 67109378;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2080;
      if (qword_1001981B8 != -1)
      {
        swift_once();
      }

      *(v9 + 10) = sub_100004C50(qword_10019DB80, *algn_10019DB88, v14);
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalidated XPC connection from PID %d for service %s", v9, 0x12u);
      sub_1000034F8(v10);
    }

    (*(v3 + 8))(v6, v2);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100106FA0(int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[0] = type metadata accessor for SuggestedActionsService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 67109378;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2080;
      if (qword_1001981F8 != -1)
      {
        swift_once();
      }

      *(v9 + 10) = sub_100004C50(qword_10019DBD8, qword_10019DBE0, v14);
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalidated XPC connection from PID %d for service %s", v9, 0x12u);
      sub_1000034F8(v10);
    }

    (*(v3 + 8))(v6, v2);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100107218(int a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[0] = type metadata accessor for ExtensionService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 67109378;
      *(v9 + 4) = a1;
      *(v9 + 8) = 2080;
      if (qword_1001983A8 != -1)
      {
        swift_once();
      }

      *(v9 + 10) = sub_100004C50(qword_10019E328, unk_10019E330, v14);
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalidated XPC connection from PID %d for service %s", v9, 0x12u);
      sub_1000034F8(v10);
    }

    (*(v3 + 8))(v6, v2);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100107500()
{
  sub_100107490();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10010757C()
{
  sub_1000036A0();
  v1 = *v0;
  v2 = sub_1000080E8(&unk_100151C20);
  v3 = sub_100004BD0(v2);
  *v3 = v4;
  v12 = sub_100002D30(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

void sub_100107600()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100106D28(*(v0 + 16));
}

void sub_10010760C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100106FA0(*(v0 + 16));
}

void sub_100107618()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100107218(*(v0 + 16));
}

void sub_100107644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = 0;
  v85 = a2 & 0xC000000000000001;
  v86 = sub_1000232F4(a2);
  v84 = a2 & 0xFFFFFFFFFFFFFF8;
  v6 = _swiftEmptyArrayStorage;
  v72 = a2;
  v83 = a2 + 32;
  while (v5 != v86)
  {
    if (v85)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v84 + 16))
      {
        goto LABEL_87;
      }

      v7 = *(v83 + 8 * v5);
    }

    v8 = v7;
    v9 = __OFADD__(v5, 1);
    v10 = v5 + 1;
    if (v9)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      return;
    }

    v11 = v3;
    sub_1001081C8(a1);
    if (v3)
    {

      goto LABEL_85;
    }

    v13 = v12;

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v6 >> 62;
    if (v6 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v16 + v14;
    if (__OFADD__(v16, v14))
    {
      goto LABEL_88;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v15)
      {
LABEL_20:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
        v19 = *(v18 + 16);
      }

      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_22;
    }

    if (v15)
    {
      goto LABEL_20;
    }

    v18 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v17 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

LABEL_22:
    v88 = v10;
    sub_1000184A4();
    if (v13 >> 62)
    {
      v22 = sub_1000120BC();
      if (!v22)
      {
        goto LABEL_36;
      }

      v23 = v22;
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v15 < v24)
      {
        goto LABEL_95;
      }

      if (v23 < 1)
      {
        goto LABEL_97;
      }

      v75 = v24;
      v77 = v14;
      sub_10010900C(&qword_10019C040, &qword_10019C038, &qword_100151C30);
      for (i = 0; i != v23; ++i)
      {
        v26 = sub_10002EB80(&qword_10019C038, &qword_100151C30);
        v34 = sub_100011184(v26, v27, v28, v29, v30, v31, v32, v33, v72, v73, v75, v77);
        v36 = *v35;
        v34(v87, 0);
        *(v17 + 32 + 8 * i) = v36;
      }

      v14 = v77;
      v3 = v11;
      v21 = v75;
LABEL_32:

      v5 = v88;
      if (v21 < v14)
      {
        goto LABEL_89;
      }

      if (v21 > 0)
      {
        v37 = *(v82 + 16);
        v9 = __OFADD__(v37, v21);
        v38 = v37 + v21;
        if (v9)
        {
          goto LABEL_94;
        }

        *(v82 + 16) = v38;
      }
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        if (v15 < v20)
        {
          goto LABEL_96;
        }

        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10002EB80(&qword_10019C030, &qword_100151C28);
        sub_1000116A0();
        goto LABEL_32;
      }

LABEL_36:

      v5 = v88;
      if (v14 > 0)
      {
        goto LABEL_89;
      }
    }
  }

  v39 = sub_1000232F4(v6);
  v9 = __OFSUB__(a1, v39);
  v80 = a1 - v39;
  if (v9)
  {
    goto LABEL_102;
  }

  v40 = 0;
  v41 = _swiftEmptyArrayStorage;
  v81 = v6;
  while (1)
  {
    if (v40 == v86)
    {
      v87[0] = v6;
      sub_10006E1D4(v41);
      return;
    }

    if (v85)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v40 >= *(v84 + 16))
      {
        goto LABEL_91;
      }

      v42 = *(v83 + 8 * v40);
    }

    v43 = v42;
    v9 = __OFADD__(v40, 1);
    v44 = v40 + 1;
    if (v9)
    {
      goto LABEL_90;
    }

    sub_1001085D4(v80);
    if (v3)
    {
      break;
    }

    v46 = v45;

    if (v46 >> 62)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v41 >> 62;
    v88 = v44;
    if (v41 >> 62)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v49 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v49 + v47;
    if (__OFADD__(v49, v47))
    {
      goto LABEL_92;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v48)
      {
        goto LABEL_61;
      }

      v51 = v41 & 0xFFFFFFFFFFFFFF8;
      if (v50 <= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v48)
      {
LABEL_61:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_62;
      }

      v51 = v41 & 0xFFFFFFFFFFFFFF8;
    }

    v52 = *(v51 + 16);
LABEL_62:
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_63:
    sub_1000184A4();
    if (v46 >> 62)
    {
      v55 = sub_1000120BC();
      if (v55)
      {
        v56 = v55;
        v57 = _CocoaArrayWrapper.endIndex.getter();
        if (v48 < v57)
        {
          goto LABEL_99;
        }

        if (v56 < 1)
        {
          goto LABEL_101;
        }

        v74 = v57;
        v76 = v47;
        v78 = v41;
        sub_10010900C(&qword_10019C040, &qword_10019C038, &qword_100151C30);
        for (j = 0; j != v56; ++j)
        {
          v59 = sub_10002EB80(&qword_10019C038, &qword_100151C30);
          v67 = sub_100011184(v59, v60, v61, v62, v63, v64, v65, v66, v72, v74, v76, v78);
          v69 = *v68;
          v67(v87, 0);
          *(v50 + 32 + 8 * j) = v69;
        }

        v41 = v78;
        v54 = v74;
        v47 = v76;
        goto LABEL_73;
      }
    }

    else
    {
      v53 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        if (v48 < v53)
        {
          goto LABEL_100;
        }

        v54 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10002EB80(&qword_10019C030, &qword_100151C28);
        sub_1000116A0();
LABEL_73:

        v6 = v81;
        v40 = v88;
        if (v54 < v47)
        {
          goto LABEL_93;
        }

        if (v54 > 0)
        {
          v70 = *(v82 + 16);
          v9 = __OFADD__(v70, v54);
          v71 = v70 + v54;
          if (v9)
          {
            goto LABEL_98;
          }

          *(v82 + 16) = v71;
        }

        continue;
      }
    }

    v6 = v81;
    v40 = v88;
    if (v47 > 0)
    {
      goto LABEL_93;
    }
  }

LABEL_85:
}

void sub_100107C44(void *a1)
{
  v2 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v62 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v15 = [a1 localizedPhrase];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v68 = v16;
  v69 = v18;
  sub_10000BE0C();
  v19 = StringProtocol.hash.getter();

  v20 = [a1 parameterIdentifier];
  v63 = v8;
  if (v20)
  {
    v21 = v20;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 32))(v14, v12, v7);
    v68 = 0x726F68736F747561;
    v69 = 0xEF2F2F3A74756374;
    v22 = [v64 actionIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 35;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v70 = v19;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 35;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    sub_10010575C();
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31 = v69;
    v64 = v68;
    (*(v8 + 8))(v14, v7);
  }

  else
  {
    v68 = 0x726F68736F747561;
    v69 = 0xEF2F2F3A74756374;
    v32 = [v64 actionIdentifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);

    v37._countAndFlagsBits = 35;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v70 = v19;
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    v31 = v69;
    v64 = v68;
  }

  v39 = [a1 localizedPhrase];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = [a1 basePhraseTemplate];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v47 = [a1 parameterIdentifier];
  v48 = v66;
  if (v47)
  {
    v49 = v47;
    v50 = v65;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = 0;
  }

  else
  {
    v51 = 1;
    v50 = v65;
  }

  sub_1000075C4(v50, v51, 1, v7);
  sub_100037B80(v50, v48);
  if (sub_1000032C4(v48, 1, v7) == 1)
  {
    sub_100108BA4(v48);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v52 = UUID.uuidString.getter();
    v53 = v54;
    (*(v63 + 8))(v48, v7);
  }

  v55 = objc_allocWithZone(CCAppShortcutPhraseContent);
  v56 = v67;
  v57 = sub_10010886C(v40, v42, v44, v46, v52, v53, v64, v31);
  if (v56)
  {
  }

  else
  {
    v58 = v57;
    v59 = objc_allocWithZone(CCAppShortcutPhraseMetaContent);
    v60 = sub_1000377E0();
    v61 = objc_allocWithZone(CCItemInstance);
    sub_1000378AC(v58, v60);
  }
}

void sub_1001081C8(uint64_t a1)
{
  if (a1 >= 1)
  {
    v29 = v2;
    v7 = [v2 orderedPhrases];
    sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000232F4(v8);
    sub_100013588();
    while (v5 != v6)
    {
      if (v4)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_29;
        }

        v9 = *(v8 + 8 * v6 + 32);
      }

      v10 = v9;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if ([v9 *(v1 + 328)])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = _swiftEmptyArrayStorage[2];
        sub_100009A50();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_100009A50();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
    }

    sub_100003880(v12, _swiftEmptyArrayStorage, v13, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr, v14, v15, v16, v29, v31, a1);
    v32 = v19 >> 1;
    v20 = (v19 >> 1) - v18;
    if (__OFSUB__(v19 >> 1, v18))
    {
      goto LABEL_32;
    }

    if (!v20)
    {
      swift_unknownObjectRelease();
      return;
    }

    v21 = v17;
    v22 = v18;
    v34 = v30;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v20 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v24 = v21 + 8 * v22;
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_30;
        }

        if ((v22 + v23) >= v32 || v23 >= v20)
        {
          goto LABEL_31;
        }

        v27 = *(v24 + 8 * v23);
        sub_100107C44(v27);
        if (v3)
        {

          swift_unknownObjectRelease();

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = _swiftEmptyArrayStorage[2];
        sub_10001AB54();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_10001AB54();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v23;
        if (v25 == v20)
        {

          swift_unknownObjectRelease();
          return;
        }
      }
    }

LABEL_33:
    __break(1u);
  }
}

uint64_t sub_100108488(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t), unint64_t *a4, uint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v15 = _CocoaArrayWrapper.subscript.getter();

    return v15;
  }

  v9 = a3(a2);
  v10 = sub_100108A5C(0, a1, v9);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 < 0)
  {
    goto LABEL_16;
  }

  sub_100108A00(0, a2);
  sub_100108A00(v12, a2);
  if ((a2 & 0xC000000000000001) != 0 && v12)
  {
    sub_100003D44(0, a4, a5);

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v13);
      v13 = v14;
    }

    while (v12 != v14);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_1001085D4(uint64_t a1)
{
  if (a1 >= 1)
  {
    v29 = v2;
    v7 = [v2 orderedPhrases];
    sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000232F4(v8);
    sub_100013588();
    while (v5 != v6)
    {
      if (v4)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_29;
        }

        v9 = *(v8 + 8 * v6 + 32);
      }

      v10 = v9;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if ([v9 *(v1 + 328)])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = _swiftEmptyArrayStorage[2];
        sub_100009A50();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_100009A50();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v6;
    }

    sub_100003880(v12, _swiftEmptyArrayStorage, v13, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr, v14, v15, v16, v29, v31, a1);
    v32 = v19 >> 1;
    v20 = (v19 >> 1) - v18;
    if (__OFSUB__(v19 >> 1, v18))
    {
      goto LABEL_32;
    }

    if (!v20)
    {
      swift_unknownObjectRelease();
      return;
    }

    v21 = v17;
    v22 = v18;
    v34 = v30;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v20 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v24 = v21 + 8 * v22;
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_30;
        }

        if ((v22 + v23) >= v32 || v23 >= v20)
        {
          goto LABEL_31;
        }

        v27 = *(v24 + 8 * v23);
        sub_100107C44(v27);
        if (v3)
        {

          swift_unknownObjectRelease();

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = _swiftEmptyArrayStorage[2];
        sub_10001AB54();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_10001AB54();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v23;
        if (v25 == v20)
        {

          swift_unknownObjectRelease();
          return;
        }
      }
    }

LABEL_33:
    __break(1u);
  }
}

id sub_10010886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v13 = String._bridgeToObjectiveC()();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v13 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = String._bridgeToObjectiveC()();

  if (a8)
  {
LABEL_5:
    v15 = String._bridgeToObjectiveC()();

    goto LABEL_10;
  }

LABEL_9:
  v15 = 0;
LABEL_10:
  v20 = 0;
  v16 = [v8 initWithPhrase:v12 baseTemplate:v13 templateParameterValue:v14 actionIdentifier:v15 error:&v20];

  if (v16)
  {
    v17 = v20;
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v16;
}

uint64_t sub_100108A00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_100108A5C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100108BA4(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010900C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002EC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100109060()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019E328 = result;
  unk_10019E330 = v1;
  return result;
}

uint64_t sub_100109090()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 112);
  *(v2 + 272) = v4;
  if (v4)
  {
    v5 = sub_100109378;
  }

  else
  {
    v5 = sub_100109198;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100109198()
{
  sub_1000070C8();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);

  v5 = sub_1000038A8();

  return v6(v5);
}

uint64_t sub_100109204()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 288) = v4;
  if (v4)
  {
    v5 = sub_1001093E0;
  }

  else
  {
    v5 = sub_10010930C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10010930C()
{
  sub_1000070C8();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);

  v5 = sub_1000038A8();

  return v6(v5);
}

uint64_t sub_100109378()
{
  sub_1000070C8();
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  swift_willThrow();

  v3 = *(v0 + 272);
  sub_100003A00();

  return v4();
}

uint64_t sub_1001093E0()
{
  sub_1000070C8();
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  swift_willThrow();

  v3 = *(v0 + 288);
  sub_100003A00();

  return v4();
}

uint64_t *sub_100109448(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  result = sub_1000034B4((a1 + 32), *(a1 + 56));
  v10 = *result;
  if (a5)
  {
    v11 = a5;

    return sub_100038184(v10, v11);
  }

  else if (a3)
  {
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    return sub_100032704(v10, a2, v13, v15, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010951C(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v9 = *v4;
  v10 = *(*v4 + 40);
  v11 = *(*v4 + 32);
  v12 = *(*v4 + 16);
  v13 = *v4;
  sub_10000298C();
  *v14 = v13;

  v15 = *(v9 + 24);
  if (v5)
  {
    v16 = _convertErrorToNSError(_:)();

    (v15)[2](v15, 0, 0, v16);

    _Block_release(v15);
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    (v15)[2](v15, a1, isa, 0);

    _Block_release(v15);
    sub_100009B18(a2, a3);
  }

  v18 = *(v13 + 8);

  return v18();
}

uint64_t sub_100109754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10003CC10(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_1000032C4(v12, 1, v13) == 1)
  {
    sub_1000075EC(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000075EC(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000075EC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001099F0()
{
  sub_1000070C8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v6 = sub_1000070A8(v4);

  return v7(v6);
}

void sub_100109F48()
{
  sub_100004DF0();
  v2 = v1;
  v31 = v3;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58();
  }

  memcpy(__dst, &unk_10019E338, sizeof(__dst));
  if (qword_1001983B8 != -1)
  {
    sub_100008144();
  }

  sub_100003A8C(&qword_10019E3E8);
  v4 = == infix<A>(_:_:)();
  v6 = v5;
  v8 = v7;
  memcpy(v28, __dst, sizeof(v28));
  QueryType.filter(_:)(v4, v6, v8, &type metadata for Table, &protocol witness table for Table, v9, v10, v11, v24, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], v26[17], v26[18], v26[19], v26[20], v26[21], v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14]);

  if (v2)
  {
    memcpy(v28, __src, sizeof(v28));
    if (qword_1001983D0 != -1)
    {
      sub_1000072C4();
    }

    sub_100003A8C(&qword_10019C128);
    v12 = == infix<A>(_:_:)();
    v14 = v13;
    v16 = v15;
    memcpy(v26, v28, sizeof(v26));
    QueryType.filter(_:)(v12, v14, v16, &type metadata for Table, &protocol witness table for Table, v17, v18, v19, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], v26[17], v26[18], v26[19], v26[20], v26[21], 0, v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14]);

    sub_10001970C(v28);
    memcpy(__src, v27, sizeof(__src));
  }

  v28[3] = &type metadata for Table;
  v28[4] = &protocol witness table for Table;
  sub_100003A98();
  v28[0] = swift_allocObject();
  memcpy((v28[0] + 16), __src, 0xB0uLL);
  v20 = Connection.pluck(_:)(v28);
  v22 = v21;
  sub_1000034F8(v28);
  if (!v0)
  {
    if (v20)
    {
      sub_10010B038(v20, v22, v31);
    }

    else
    {
      v23 = type metadata accessor for LNBundleRecord();
      sub_1000075C4(v31, 1, 1, v23);
    }
  }

  sub_100004674();
}

void sub_10010A1E0()
{
  sub_100004DF0();
  v1 = v0;
  v3 = v2;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58();
  }

  memcpy(__dst, &unk_10019E338, sizeof(__dst));
  if (qword_1001983B8 != -1)
  {
    sub_100008144();
  }

  sub_100003A8C(&qword_10019E3E8);
  __src[0] = v3;
  __src[1] = v1;
  == infix<A>(_:_:)();
  sub_1000052EC();
  memcpy(v12, __dst, sizeof(v12));
  v4 = sub_100006768();
  sub_1000120DC(v4, v5, v6, v7, v8, v9, v10, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v12[16], v12[17], v12[18], v12[19], v12[20], v12[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15]);

  memcpy(v15, __src, sizeof(v15));
  memcpy(__src, v15, sizeof(__src));
  QueryType.delete()();
  sub_10000754C();
  v16.template._countAndFlagsBits = sub_100006B18();
  Connection.run(_:)(v16);

  sub_100004674();
}

void sub_10010A348()
{
  sub_100004DF0();
  v1 = v0;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58();
  }

  memcpy(__dst, &unk_10019E338, sizeof(__dst));
  if (qword_1001983B8 != -1)
  {
    sub_100008144();
  }

  v2 = v1[1];
  __src[0] = *v1;

  v3 = == infix<A>(_:_:)();
  v5 = v4;
  v7 = v6;

  memcpy(v22, __dst, sizeof(v22));
  QueryType.filter(_:)(v3, v5, v7, &type metadata for Table, &protocol witness table for Table, v8, v9, v10, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17], v22[18], v22[19], v22[20], v22[21], __src[0], v2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v25, __src, 0xB0uLL);
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  sub_100003A98();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014BC40;
  if (qword_1001983C8 != -1)
  {
    sub_1000184BC();
  }

  v12 = type metadata accessor for LNBundleRecord();
  v13 = (v1 + *(v12 + 24));
  v14 = v13[1];
  v22[0] = *v13;
  v15 = v22[0];
  v22[1] = v14;
  <- infix<A>(_:_:)();
  v16 = v22[0];
  v17 = v22[1];
  sub_1000098F0(v15, v14);
  sub_100009B18(v16, v17);
  if (qword_1001983D0 != -1)
  {
    sub_1000072C4();
  }

  sub_100003A8C(&qword_10019C128);
  v22[0] = *(v1 + *(v12 + 28));
  <- infix<A>(_:_:)();
  memcpy(v22, v25, sizeof(v22));
  v26 = QueryType.update(_:)(v11);
  countAndFlagsBits = v26.template._countAndFlagsBits;
  object = v26.template._object;
  rawValue = v26.bindings._rawValue;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10001970C(v25);
  v27.template._countAndFlagsBits = countAndFlagsBits;
  v27.template._object = object;
  v27.bindings._rawValue = rawValue;
  Connection.run(_:)(v27);

  sub_100004674();
}

void sub_10010A624()
{
  sub_100004DF0();
  v23[2] = v0;
  v2 = v1;
  v3 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - v5;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58();
  }

  memcpy(v29, &unk_10019E338, 0xB0uLL);
  memcpy(v28, &unk_10019E338, sizeof(v28));
  sub_1000196B0(v29, v26);
  if (qword_1001983B8 != -1)
  {
    sub_100008144();
  }

  sub_100003A8C(&qword_10019E3E8);
  v7 = v2[1];
  v26[0] = *v2;
  v26[1] = v7;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  *(swift_initStackObject() + 16) = xmmword_10014ECA0;
  if (qword_1001983C0 != -1)
  {
    swift_once();
  }

  v23[0] = *algn_10019E408;
  v23[1] = qword_10019E400;
  v8 = type metadata accessor for LNBundleRecord();
  sub_100083E9C(v2 + v8[5], v6);
  v9 = type metadata accessor for URL();
  if (sub_1000032C4(v6, 1, v9) == 1)
  {
    sub_100003E9C(v6, &qword_1001990C0, &unk_10014E200);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v12 = URL.path(percentEncoded:)(0);
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;
    (*(*(v9 - 8) + 8))(v6, v9);
  }

  v24 = countAndFlagsBits;
  v25 = object;
  <- infix<A>(_:_:)();

  if (qword_1001983C8 != -1)
  {
    sub_1000184BC();
  }

  sub_100003A8C(&qword_10019C110);
  v13 = (v2 + v8[6]);
  v15 = v13[1];
  v24 = *v13;
  v14 = v24;
  v25 = v15;
  <- infix<A>(_:_:)();
  v16 = v24;
  v17 = v25;
  sub_1000098F0(v14, v15);
  sub_100009B18(v16, v17);
  if (qword_1001983D0 != -1)
  {
    sub_1000072C4();
  }

  sub_100003A8C(&qword_10019C128);
  v24 = *(v2 + v8[7]);
  <- infix<A>(_:_:)();
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019E418);
  v24 = *(v2 + v8[8]);
  <- infix<A>(_:_:)();
  v18 = QueryType.insert(_:_:)(v27);
  v20 = v19;
  v22 = v21;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v27);
  memcpy(v26, v28, sizeof(v26));
  sub_10001970C(v26);
  v30.template._countAndFlagsBits = v18;
  v30.template._object = v20;
  v30.bindings._rawValue = v22;
  Connection.run(_:)(v30);

  sub_100004674();
}

void sub_10010AA54()
{
  sub_100004DF0();
  v1 = v0;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58();
  }

  memcpy(__dst, &unk_10019E338, sizeof(__dst));
  __src[0] = v1;
  if (qword_1001983B8 != -1)
  {
    sub_100008144();
  }

  v2 = sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_1000038C4(&qword_100198790);
  v3 = sub_100006768();
  Collection<>.contains(_:)(v3, v4, v5, v2, v6, v7);
  sub_1000052EC();
  memcpy(v16, __dst, sizeof(v16));
  v8 = sub_100006768();
  sub_1000120DC(v8, v9, v10, v11, v12, v13, v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15]);

  memcpy(v19, __src, sizeof(v19));
  memcpy(__src, v19, sizeof(__src));
  QueryType.delete()();
  sub_10000754C();
  v20.template._countAndFlagsBits = sub_100006B18();
  Connection.run(_:)(v20);

  sub_100004674();
}

uint64_t sub_10010ABE4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100003E9C(v7, &qword_1001992F0, &qword_10014E000);
  }

  return 3;
}

uint64_t sub_10010AD0C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = sub_1000077D8();
  sub_1000098F0(v5, v6);
  return sub_1000077D8();
}

uint64_t sub_10010AD94()
{
  v0 = sub_1000077D8();
  v2 = sub_10002EB80(v0, v1);
  v3 = sub_100007C48(&qword_100198780);
  return ExpressionType.init(_:)(0x4449656C646E7562, 0xE800000000000000, v2, v3);
}

uint64_t sub_10010AE0C()
{
  v0 = sub_1000077D8();
  v2 = sub_10002EB80(v0, v1);
  v3 = sub_100007C48(&qword_100199520);
  return ExpressionType.init(_:)(7107189, 0xE300000000000000, v2, v3);
}

uint64_t sub_10010AE7C()
{
  v0 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v1 = sub_100013EBC(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  return ExpressionType.init(_:)(0xD000000000000011, 0x8000000100157FF0, v0, v1);
}

uint64_t sub_10010AF18()
{
  v0 = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v1 = sub_100013EBC(&qword_10019C140, &qword_100199EC8, &unk_10014ED00);
  return ExpressionType.init(_:)(0xD000000000000013, 0x8000000100158030, v0, v1);
}

uint64_t sub_10010AFB4()
{
  v0 = sub_1000077D8();
  v2 = sub_10002EB80(v0, v1);
  v3 = sub_100007C48(&qword_10019C140);
  return ExpressionType.init(_:)(0x617461646174656DLL, 0xEF6E6F6973726556, v2, v3);
}

uint64_t sub_10010B038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  if (qword_1001983B8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v11 = v25;
  v10 = v26;
  if (qword_1001983C0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019E400, *algn_10019E408, a1, a2, &type metadata for String, &protocol witness table for String, &v25);
  v12 = v26;
  if (qword_1001983C8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v13 = v25;
  v24 = v26;
  if (qword_1001983D0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v23 = v25;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v15 = v25;
  if (v12)
  {

    URL.init(fileURLWithPath:)();
    swift_bridgeObjectRelease_n();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for URL();
  sub_1000075C4(v9, v16, 1, v17);
  *a3 = v11;
  a3[1] = v10;
  v18 = type metadata accessor for LNBundleRecord();
  sub_10009EDDC(v9, a3 + v18[5]);
  v19 = (a3 + v18[6]);
  v20 = v23;
  v21 = v24;
  *v19 = v13;
  v19[1] = v21;
  *(a3 + v18[7]) = v20;
  *(a3 + v18[8]) = v15;
  return sub_1000075C4(a3, 0, 1, v18);
}

uint64_t type metadata accessor for LNBundleRecord()
{
  result = qword_10019C1A0;
  if (!qword_10019C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010B450()
{
  sub_100062140();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LNBundleMetadataVersion(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_10010B51C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = &TableBuilder;
  v8 = [a1 action];
  v9 = [v8 parameters];

  sub_10010BC00();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = v10;
  v61 = a5;
  v12 = *(a5 + 72);
  v11 = *(a5 + 80);
  v13 = [v6 identifiersByTypeMap];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = v12;
  v67 = v11;
  v15 = 0;
  v16 = sub_10010BC4C(v14, sub_10010BC44, v65);

  v17 = v16[2];
  if (v17 < 2)
  {
    if (!v17)
    {

      if (qword_1001982E8 != -1)
      {
        sub_100002D78();
      }

      v52 = type metadata accessor for Logger();
      sub_10000347C(v52, qword_10019DFF0);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v68 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_100004C50(v12, v11, &v68);
        _os_log_impl(&_mh_execute_header, v53, v54, "Cannot find parameter of type %s to bind value", v55, 0xCu);
        sub_1000034F8(v56);
      }

      v22 = [v6 action];
      goto LABEL_63;
    }

    v23 = 0;
    v24 = (v16 + 8);
    v25 = 1 << *(v16 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v6 = v26 & v16[8];
    v27 = (v25 + 63) >> 6;
    v58 = v27;
    v59 = (v16 + 8);
    v60 = v16;
    if (!v6)
    {
LABEL_10:
      while (1)
      {
        v28 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v28 >= v27)
        {

          objc_allocWithZone(LNAction);

          return sub_1000BAA38(a2);
        }

        v6 = *&v24[8 * v28];
        ++v23;
        if (v6)
        {
          v23 = v28;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    while (1)
    {
LABEL_14:
      v29 = (v16[6] + ((v23 << 10) | (16 * __clz(__rbit64(v6)))));
      v30 = *v29;
      v31 = v29[1];
      swift_bridgeObjectRetain_n();
      v63 = v31;
      v64 = v30;
      sub_10010C45C(&v69, v30, v31);
      v7 = v32;
      v33 = v69;
      v34 = v69 >> 62;
      if (v69 >> 62)
      {
        sub_100008164(v69 & 0xFFFFFFFFFFFFFF8);
        v35 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v35 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = v35 - v7;
      if (v35 < v7)
      {
        goto LABEL_67;
      }

      if (v7 < 0)
      {
        goto LABEL_68;
      }

      if (v34)
      {
        sub_100008164(v33 & 0xFFFFFFFFFFFFFF8);
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v37 < v35)
      {
        goto LABEL_69;
      }

      v38 = v7 - v35;
      if (__OFSUB__(0, v36))
      {
        goto LABEL_70;
      }

      if (v34)
      {
        sub_100008164(v33 & 0xFFFFFFFFFFFFFF8);
        v39 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v39 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v39 - v36;
      if (__OFADD__(v39, v38))
      {
        goto LABEL_71;
      }

      v62 = v15;
      v41 = v7;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v34)
        {
          goto LABEL_34;
        }

        v7 = v33 & 0xFFFFFFFFFFFFFF8;
        if (v40 <= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v34)
        {
LABEL_34:
          sub_100008164(v33 & 0xFFFFFFFFFFFFFF8);
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_35;
        }

        v7 = v33 & 0xFFFFFFFFFFFFFF8;
      }

      v42 = *(v7 + 16);
LABEL_35:
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v33 & 0xFFFFFFFFFFFFFF8;
LABEL_36:
      swift_arrayDestroy();
      if (v36)
      {
        if (v33 >> 62)
        {
          v43 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v43 = *(v7 + 16);
        }

        v44 = v43 - v35;
        if (__OFSUB__(v43, v35))
        {
          goto LABEL_72;
        }

        v45 = (v7 + 32 + 8 * v35);
        if (v35 != v41 || v7 + 32 + 8 * v41 >= v45 + 8 * v44)
        {
          memmove((v7 + 32 + 8 * v41), v45, 8 * v44);
        }

        if (v33 >> 62)
        {
          v47 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v47 = *(v7 + 16);
        }

        if (__OFADD__(v47, v38))
        {
          goto LABEL_73;
        }

        *(v7 + 16) = v47 - v36;
      }

      v69 = v33;
      v48 = *(v61 + 88);
      objc_allocWithZone(LNProperty);
      v49 = v48;
      v50 = sub_10010BB9C(v64, v63, v48);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v6 &= v6 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v24 = v59;
      v16 = v60;
      v27 = v58;
      v15 = v62;
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  if (qword_1001982E8 != -1)
  {
LABEL_74:
    sub_100002D78();
  }

  v18 = type metadata accessor for Logger();
  sub_10000347C(v18, qword_10019DFF0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Cannot support matching of the same parameter type more than once", v21, 2u);
  }

  v22 = [v6 *(v7 + 2984)];
LABEL_63:

  return v22;
}

uint64_t sub_10010BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == a5 && a4 == a6)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id sub_10010BB9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

unint64_t sub_10010BC00()
{
  result = qword_10019BBA0;
  if (!qword_10019BBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019BBA0);
  }

  return result;
}

void *sub_10010BC4C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), void *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_10010BF4C(v12, v8, v6, a2);

      return a3;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100047518(0, v8, v9);
  v10 = sub_10010BDD0(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

uint64_t sub_10010BDD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];

    LOBYTE(v19) = a4(v15, v16, v19, v18);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_10010C214(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_10010C214(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10010BF4C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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

    v8 = sub_10010BDD0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10010BFDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10002EB80(&qword_10019C1E8, &unk_100151D18);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    v34 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_10010C214(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10002EB80(&qword_10019AE50, &qword_10014FF88);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v36 = *v21;
    v23 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + 16 * v27);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

void sub_10010C45C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;

  v8 = sub_10010C708(v7, a2, a3);
  v10 = v8;
  if (v3)
  {
    goto LABEL_43;
  }

  v34 = a2;
  if (v9)
  {
    sub_1000232F4(v7);
LABEL_43:

    return;
  }

  v32 = 0;
  v33 = a1;
  v11 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    while (1)
    {
      v12 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 == v12)
      {
        goto LABEL_43;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
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
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          break;
        }

        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v13 = *(v7 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v16 == v34 && v18 == a3)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          if (v10 != v11)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_49;
              }

              v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v10 >= v23)
              {
                goto LABEL_50;
              }

              if (v11 >= v23)
              {
                goto LABEL_51;
              }

              v24 = *(v7 + 32 + 8 * v11);
              v21 = *(v7 + 32 + 8 * v10);
              v22 = v24;
            }

            v25 = v22;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
            {
              v7 = sub_1000FCD8C(v7);
              v26 = (v7 >> 62) & 1;
            }

            else
            {
              LODWORD(v26) = 0;
            }

            v27 = v7 & 0xFFFFFFFFFFFFFF8;
            v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
            *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v25;

            if ((v7 & 0x8000000000000000) != 0 || v26)
            {
              v7 = sub_1000FCD8C(v7);
              v27 = v7 & 0xFFFFFFFFFFFFFF8;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }
            }

            else if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v11 >= *(v27 + 16))
            {
              goto LABEL_48;
            }

            v29 = v27 + 8 * v11;
            v30 = *(v29 + 32);
            *(v29 + 32) = v21;

            *v33 = v7;
          }

          v31 = __OFADD__(v10++, 1);
          if (v31)
          {
            goto LABEL_47;
          }
        }
      }

      v31 = __OFADD__(v11++, 1);
      if (v31)
      {
        goto LABEL_46;
      }
    }
  }

  __break(1u);
}

uint64_t sub_10010C708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000232F4(a1);
  v18 = result;
  v7 = 0;
  while (1)
  {
    if (v18 == v7)
    {
      v17 = 0;
      goto LABEL_18;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v9 = v8;
    v10 = [v8 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == a2 && v13 == a3)
    {

LABEL_17:
      v17 = v7;
LABEL_18:

      return v17;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_20;
    }
  }

  if (v7 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a1 + 8 * v7 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10010C868(__int128 *a1)
{
  if (qword_1001983E0 != -1)
  {
    sub_100008170();
  }

  memcpy(__dst, &unk_10019E430, sizeof(__dst));
  memcpy(__src, &unk_10019E430, sizeof(__src));
  sub_1000196B0(__dst, v10);
  if (qword_1001983E8 != -1)
  {
    sub_100002D98();
  }

  v9 = *a1;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  *(swift_initStackObject() + 16) = xmmword_10014BC40;
  if (qword_1001983F0 != -1)
  {
    swift_once();
  }

  v12 = a1[1];
  v9 = a1[1];
  sub_1000BABFC(&v12, &v8);
  <- infix<A>(_:_:)();
  sub_10010CC68(&v12);
  if (qword_1001983F8 != -1)
  {
    swift_once();
  }

  *&v9 = *(a1 + 4);
  <- infix<A>(_:_:)();
  v2 = QueryType.insert(_:_:)(v10);
  v4 = v3;
  v6 = v5;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v10);
  memcpy(v14, __src, sizeof(v14));
  sub_10001970C(v14);
  v15.template._countAndFlagsBits = v2;
  v15.template._object = v4;
  v15.bindings._rawValue = v6;
  Connection.run(_:)(v15);
}

uint64_t sub_10010CB58()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_10010CBE0()
{
  v0 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v1 = sub_100013F04(&qword_100199520, &qword_100199518, &unk_10014ED10);
  return ExpressionType.init(_:)(0xD00000000000001ELL, 0x8000000100158070, v0, v1);
}

uint64_t sub_10010CC68(uint64_t a1)
{
  v2 = sub_10002EB80(&unk_100199100, &qword_10014E230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010CCD0()
{
  v0 = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v1 = sub_100013F04(&qword_10019C140, &qword_100199EC8, &unk_10014ED00);
  return ExpressionType.init(_:)(0xD000000000000011, 0x8000000100158050, v0, v1);
}

uint64_t sub_10010CD68()
{
  Statement.makeIterator()();
  v0 = _swiftEmptyArrayStorage;
  while (1)
  {
    v1 = Statement.failableNext()();
    if (v2)
    {
      break;
    }

    if (!v1)
    {

      return v0;
    }

    if (!*(v1 + 16))
    {
      __break(1u);
      break;
    }

    sub_10001B618(v1 + 32, v10);
    if (v11)
    {
      sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10010E64C(v10);
    }

    v12 = 0;
    v13 = 0;
LABEL_10:

    v3 = v13;
    if (v13)
    {
      v14 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = v0[2];
        sub_100013A60();
        v0 = v7;
      }

      v4 = v0[2];
      if (v4 >= v0[3] >> 1)
      {
        sub_100013A60();
        v0 = v8;
      }

      v0[2] = v4 + 1;
      v5 = &v0[2 * v4];
      v5[4] = v14;
      v5[5] = v3;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_10010CF04()
{
  v0 = Connection.handle.getter();
  sqlite3_extended_result_codes(v0, 1);
  v3 = 1;
  v1 = Connection.handle.getter();
  sqlite3_file_control(v1, 0, 10, &v3);
  v2._object = 0x8000000100158900;
  v2._countAndFlagsBits = 0xD000000000000018;
  Connection.execute(_:)(v2);
}

void sub_10010CFA0()
{
  Connection.run(_:_:)();
  v0 = sub_10010CD68();

  v1 = 0;
  v2 = *(v0 + 16);
LABEL_2:
  for (i = (v0 + 40 + 16 * v1); ; i += 2)
  {
    if (v2 == v1)
    {

      v13 = _swiftEmptyArrayStorage[2];

      return;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    v4 = *(i - 1);
    v5 = *i;
    if (v4 != 27503 || v5 != 0xE200000000000000)
    {
      v7 = *(i - 1);
      v8 = *i;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100011438(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          sub_100011438(v9 > 1, v10 + 1, 1);
          v11 = v10 + 1;
        }

        ++v1;
        _swiftEmptyArrayStorage[2] = v11;
        v12 = &_swiftEmptyArrayStorage[2 * v10];
        v12[4] = v4;
        v12[5] = v5;
        goto LABEL_2;
      }
    }

    ++v1;
  }

  __break(1u);
}

void sub_10010D13C()
{
  _StringGuts.grow(_:)(4231);
  sub_1000052FC();
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x6769666E6F63;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  sub_100011A38();
  v2._countAndFlagsBits = sub_10000892C();
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 7955819;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  sub_100006B28();
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_10001AA40();
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  sub_1000052FC();
  String.append(_:)(v6);
  v7._countAndFlagsBits = sub_100013D04();
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = sub_10000892C();
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x4449656C646E7562;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  sub_100006B28();
  String.append(_:)(v10);
  v11._countAndFlagsBits = 7107189;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_1000072E4();
  String.append(_:)(v12);
  sub_1000052FC();
  String.append(_:)(v13);
  sub_1000052FC();
  String.append(_:)(v14);
  sub_1000052FC();
  String.append(_:)(v15);
  sub_1000052FC();
  String.append(_:)(v16);
  v17._countAndFlagsBits = sub_1000118F8();
  String.append(_:)(v17);
  sub_1000052FC();
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_100012ADC();
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = sub_10000892C();
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  (sub_100008190)();
  v21._countAndFlagsBits = 0xD000000000000014;
  v21._object = 0x8000000100158180;
  String.append(_:)(v21);
  v22 = sub_1000111A8();
  sub_10001E160(v22);
  sub_1000052FC();
  String.append(_:)(v23);
  v24._countAndFlagsBits = sub_1000118F8();
  v24._object = 0xE800000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  v25._object = 0x8000000100158200;
  String.append(_:)(v25);
  v26 = (sub_100008190)();
  sub_100004FF8(v26);
  v27 = sub_1000111A8();
  sub_10001E160(v27);
  sub_10010E6B4();
  String.append(_:)(v28);
  (sub_100008190)();
  sub_10001AB60();
  sub_100009A5C();
  String.append(_:)(v29);
  v30._countAndFlagsBits = sub_100013D04();
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  (sub_1000038F0)();
  v31 = sub_100002DB8();
  sub_1000048C4(v31);
  sub_1000052FC();
  String.append(_:)(v32);
  v33._countAndFlagsBits = sub_100012ADC();
  v33._object = 0xE700000000000000;
  String.append(_:)(v33);
  v34 = (sub_1000038F0)();
  v35 = sub_100008190(v34);
  sub_100004FF8(v35);
  v36 = sub_1000111A8();
  sub_10001E160(v36);
  sub_1000052FC();
  String.append(_:)(v37);
  sub_1000052FC();
  String.append(_:)(v38);
  v39._countAndFlagsBits = sub_10000892C();
  v39._object = 0xE700000000000000;
  String.append(_:)(v39);
  sub_100008190(v40);
  sub_100003C6C();
  v41._countAndFlagsBits = sub_1000118F8();
  v41._object = 0xEE006C6F636F746FLL;
  String.append(_:)(v41);
  sub_100003C6C();
  (sub_1000068D8)();
  sub_1000052FC();
  String.append(_:)(v42);
  v44 = sub_100008190(v43);
  sub_100004FF8(v44);
  v45._countAndFlagsBits = sub_1000118F8();
  v45._object = 0xEE006C6F636F746FLL;
  String.append(_:)(v45);
  sub_10010E6B4();
  String.append(_:)(v46);
  sub_100008190(v47);
  sub_10000EED8(0x4552454645522029);
  v48._countAndFlagsBits = 0x73656C646E7562;
  v48._object = 0xE700000000000000;
  String.append(_:)(v48);
  v49 = (sub_1000038F0)();
  sub_1000187A0(v49);
  sub_1000052FC();
  String.append(_:)(v50);
  v51._countAndFlagsBits = sub_10001279C();
  v51._object = 0xE800000000000000;
  String.append(_:)(v51);
  v52 = sub_1000184DC();
  sub_100008190(v52);
  sub_100003C6C();
  v53._countAndFlagsBits = sub_1000118F8();
  v53._object = 0xE800000000000000;
  String.append(_:)(v53);
  sub_1000052FC();
  String.append(_:)(v54);
  sub_100007C74();
  sub_1000052FC();
  String.append(_:)(v55);
  v57 = sub_100008190(v56);
  sub_100004FF8(v57);
  v58._countAndFlagsBits = sub_1000118F8();
  v58._object = 0xE800000000000000;
  String.append(_:)(v58);
  v59 = sub_100024778(0xD000000000000013);
  sub_100008190(v59);
  v60._countAndFlagsBits = sub_100012ADC();
  v60._object = 0xEE006C6F636F746FLL;
  String.append(_:)(v60);
  v61._countAndFlagsBits = sub_1000135C0();
  v61._object = 0xE700000000000000;
  String.append(_:)(v61);
  (sub_1000038F0)();
  v62._countAndFlagsBits = sub_100013D04();
  v62._object = 0xE800000000000000;
  String.append(_:)(v62);
  sub_1000052FC();
  String.append(_:)(v63);
  v64._countAndFlagsBits = sub_10001279C();
  v64._object = 0xE800000000000000;
  String.append(_:)(v64);
  v65 = (sub_1000038F0)();
  v66 = sub_100008190(v65);
  sub_100004FF8(v66);
  v67._countAndFlagsBits = sub_1000118F8();
  v67._object = 0xE800000000000000;
  String.append(_:)(v67);
  sub_1000078E8();
  String.append(_:)(v68);
  v69._countAndFlagsBits = sub_1000135C0();
  v69._object = 0xE700000000000000;
  String.append(_:)(v69);
  v70 = sub_1000184DC();
  sub_100008190(v70);
  sub_100003C6C();
  sub_100007C74();
  sub_100003C6C();
  v71._countAndFlagsBits = sub_1000111A8();
  v71._object = 0xE900000000000065;
  String.append(_:)(v71);
  sub_1000052FC();
  String.append(_:)(v72);
  v73._countAndFlagsBits = 0x6564497972657571;
  v73._object = 0xEF7265696669746ELL;
  String.append(_:)(v73);
  sub_100006B28();
  String.append(_:)(v74);
  v75._countAndFlagsBits = sub_10001269C();
  v75._object = 0xEE00657079546575;
  String.append(_:)(v75);
  sub_1000052FC();
  String.append(_:)(v76);
  v77._countAndFlagsBits = sub_1000120F4();
  String.append(_:)(v77);
  sub_1000052FC();
  String.append(_:)(v78);
  v80 = sub_100008190(v79);
  sub_100004FF8(v80);
  v81._countAndFlagsBits = sub_1000111A8();
  v81._object = 0xE900000000000065;
  String.append(_:)(v81);
  v82._countAndFlagsBits = 0xD000000000000013;
  v82._object = 0x8000000100158220;
  String.append(_:)(v82);
  sub_100008190(v83);
  sub_10001AB60();
  sub_100009A5C();
  String.append(_:)(v84);
  v85 = sub_100002DB8();
  v86 = sub_10000C93C(v85);
  sub_1000038F0(v86);
  v87 = sub_100002DB8();
  sub_1000048C4(v87);
  sub_1000052FC();
  String.append(_:)(v88);
  v89._countAndFlagsBits = sub_1000135C0();
  v89._object = 0xE700000000000000;
  String.append(_:)(v89);
  v91 = sub_1000038F0(v90);
  v92 = sub_100008190(v91);
  sub_100004FF8(v92);
  v93._countAndFlagsBits = sub_1000111A8();
  v93._object = 0xE900000000000065;
  String.append(_:)(v93);
  sub_1000052FC();
  String.append(_:)(v94);
  v95._countAndFlagsBits = sub_1000135C0();
  v95._object = 0xE700000000000000;
  String.append(_:)(v95);
  sub_1000038F0(v96);
  v97._countAndFlagsBits = sub_10001269C();
  v97._object = 0xEE00657079546575;
  String.append(_:)(v97);
  sub_1000052FC();
  String.append(_:)(v98);
  v99._countAndFlagsBits = sub_1000135C0();
  v99._object = 0xE700000000000000;
  String.append(_:)(v99);
  sub_1000038F0(v100);
  v101._countAndFlagsBits = sub_1000120F4();
  String.append(_:)(v101);
  sub_1000078E8();
  String.append(_:)(v102);
  v103._countAndFlagsBits = 0x736D756E65;
  v103._object = 0xE500000000000000;
  String.append(_:)(v103);
  v104._countAndFlagsBits = 0x202020200A2820;
  v104._object = 0xE700000000000000;
  String.append(_:)(v104);
  sub_100008190(v105);
  sub_100003C6C();
  sub_10001E160(0x696669746E656469);
  sub_100006B28();
  String.append(_:)(v106);
  sub_100007C74();
  sub_1000052FC();
  String.append(_:)(v107);
  v109 = sub_100008190(v108);
  sub_100004FF8(v109);
  v110 = sub_10000892C();
  sub_10001E160(v110);
  v111._countAndFlagsBits = 0xD000000000000013;
  v111._object = 0x8000000100158220;
  String.append(_:)(v111);
  sub_100008190(v112);
  v113 = sub_100019D74();
  sub_1000248CC(v113);
  v114._countAndFlagsBits = 0x73656C646E7562;
  v114._object = 0xE700000000000000;
  String.append(_:)(v114);
  sub_1000038F0(v115);
  v116._countAndFlagsBits = 0x4449656C646E7562;
  v116._object = 0xE800000000000000;
  String.append(_:)(v116);
  sub_100024778(0xD000000000000025);
  sub_1000052FC();
  String.append(_:)(v117);
  v118._countAndFlagsBits = sub_1000135C0();
  v118._object = 0xE700000000000000;
  String.append(_:)(v118);
  sub_100008190(v119);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v120);
  v121._countAndFlagsBits = sub_1000072E4();
  String.append(_:)(v121);
  sub_1000052FC();
  String.append(_:)(v122);
  sub_1000052FC();
  String.append(_:)(v123);
  sub_100008190(v124);
  v125._countAndFlagsBits = sub_10000892C();
  v125._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v125);
  v126._countAndFlagsBits = sub_100012ADC();
  v126._object = 0xE700000000000000;
  String.append(_:)(v126);
  sub_1000038F0(v127);
  v128._countAndFlagsBits = sub_1000118F8();
  v128._object = 0xE800000000000000;
  String.append(_:)(v128);
  sub_10000756C();
  v129._countAndFlagsBits = 0x74726F6853707061;
  v129._object = 0xEC00000073747563;
  String.append(_:)(v129);
  sub_100011A38();
  v130._countAndFlagsBits = 0x696669746E656469;
  v130._object = 0xE700000000000000;
  String.append(_:)(v130);
  sub_100008190(v131);
  sub_100003C6C();
  sub_100007C74();
  sub_1000052FC();
  String.append(_:)(v132);
  sub_100008190(v133);
  v134._countAndFlagsBits = sub_1000135C0();
  v134._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v134);
  v135._countAndFlagsBits = sub_100012ADC();
  v135._object = 0xE700000000000000;
  String.append(_:)(v135);
  sub_1000038F0(v136);
  v137._countAndFlagsBits = sub_1000118F8();
  v137._object = 0xE800000000000000;
  String.append(_:)(v137);
  v138._countAndFlagsBits = 0xD000000000000025;
  v138._object = 0x80000001001582D0;
  String.append(_:)(v138);
  sub_1000052FC();
  String.append(_:)(v139);
  v140._countAndFlagsBits = sub_10000892C();
  v140._object = 0xE700000000000000;
  String.append(_:)(v140);
  sub_1000052FC();
  String.append(_:)(v141);
  sub_100003C6C();
  sub_100008190(v142);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v143);
  sub_100003C6C();
  sub_10001A8BC();
  v144._countAndFlagsBits = sub_1000111A8();
  String.append(_:)(v144);
  sub_100003C6C();
  (sub_1000068D8)();
  sub_100003C6C();
  v145._countAndFlagsBits = sub_1000111A8();
  v145._object = 0xE800000000000000;
  String.append(_:)(v145);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v146);
  v147._countAndFlagsBits = sub_1000072E4();
  String.append(_:)(v147);
  sub_1000052FC();
  String.append(_:)(v148);
  sub_1000052FC();
  String.append(_:)(v149);
  sub_100008190(v150);
  v151._countAndFlagsBits = sub_1000135C0();
  v151._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v151);
  v152._countAndFlagsBits = 0x73656C646E7562;
  v152._object = 0xE700000000000000;
  String.append(_:)(v152);
  sub_1000038F0(v153);
  v154 = sub_100002DB8();
  sub_1000048C4(v154);
  sub_100006B28();
  String.append(_:)(v155);
  (sub_1000068D8)();
  v156._countAndFlagsBits = sub_10000892C();
  v156._object = 0xE700000000000000;
  String.append(_:)(v156);
  sub_100008190(v157);
  sub_100003C6C();
  (sub_1000068D8)();
  sub_100003C6C();
  v158._countAndFlagsBits = 0x446465646F636E65;
  v158._object = 0xEB00000000617461;
  String.append(_:)(v158);
  sub_1000052FC();
  String.append(_:)(v159);
  v161 = sub_100008190(v160);
  v162 = sub_100004FF8(v161);
  sub_1000068D8(v162, 0x8000000100154C20);
  sub_1000052FC();
  String.append(_:)(v163);
  sub_100008190(v164);
  v165._countAndFlagsBits = sub_1000135C0();
  v165._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v165);
  v166._countAndFlagsBits = sub_100013D04();
  v166._object = 0xE700000000000000;
  String.append(_:)(v166);
  sub_1000038F0(v167);
  sub_100002738();
  v168._countAndFlagsBits = 0x444969746E656469;
  v168._object = 0xE800000000000000;
  String.append(_:)(v168);
  v169._countAndFlagsBits = 0xD000000000000025;
  v169._object = 0x80000001001582D0;
  String.append(_:)(v169);
  sub_1000068D8(v170, 0x8000000100155A80);
  v171._countAndFlagsBits = sub_10000892C();
  v171._object = 0xE700000000000000;
  String.append(_:)(v171);
  sub_100008190(v172);
  sub_100003C6C();
  sub_1000068D8(v173, 0x80000001001564D0);
  sub_100003C6C();
  v174._countAndFlagsBits = sub_10001AA40();
  v174._object = 0xE500000000000000;
  String.append(_:)(v174);
  sub_1000052FC();
  String.append(_:)(v175);
  v176._countAndFlagsBits = 0x746169636F737361;
  v176._object = 0xEE00617461446465;
  String.append(_:)(v176);
  sub_1000052FC();
  String.append(_:)(v177);
  v179 = sub_100008190(v178);
  v180 = sub_100004FF8(v179);
  sub_1000068D8(v180, 0x80000001001564D0);
  sub_1000052FC();
  String.append(_:)(v181);
  sub_100008190(v182);
  v183._countAndFlagsBits = 0x4552454645522029;
  v183._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v183);
  v184 = sub_100002DB8();
  v185 = sub_10000C93C(v184);
  sub_1000038F0(v185);
  v186._countAndFlagsBits = sub_1000135C0();
  v186._object = 0xE800000000000000;
  String.append(_:)(v186);
  sub_10000756C();
  v187._countAndFlagsBits = 0x746E6176656C6572;
  v187._object = 0xEF73746E65746E49;
  String.append(_:)(v187);
  v188._countAndFlagsBits = 0x696669746E656469;
  v188._object = 0xE700000000000000;
  String.append(_:)(v188);
  sub_100008190(v189);
  sub_100003C6C();
  sub_1000068D8(v190, 0x80000001001564D0);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v191);
  sub_1000052FC();
  String.append(_:)(v192);
  v193._object = 0xEA0000000000646ELL;
  v193._countAndFlagsBits = 0x694B746567646977;
  String.append(_:)(v193);
  v194._countAndFlagsBits = sub_1000072E4();
  String.append(_:)(v194);
  v195._countAndFlagsBits = 0x436465646F636E65;
  v195._object = 0xEE00747865746E6FLL;
  String.append(_:)(v195);
  sub_1000052FC();
  String.append(_:)(v196);
  v198 = sub_100008190(v197);
  v199 = sub_100004FF8(v198);
  sub_1000068D8(v199, 0x80000001001564D0);
  v200 = sub_100013D04();
  sub_10000EED8(v200);
  v201 = sub_10000C93C(0x6E6F69746361);
  v202 = sub_1000038F0(v201);
  v203 = sub_100008190(v202);
  sub_100004FF8(v203);
  sub_10001E160(0x696669746E656469);
  sub_10000756C();
  sub_1000068D8(v204, 0x8000000100155AA0);
  v205._countAndFlagsBits = sub_1000118F8();
  v205._object = 0xE700000000000000;
  String.append(_:)(v205);
  v206._countAndFlagsBits = sub_1000118F8();
  v206._object = 0xEE00726569666974;
  String.append(_:)(v206);
  sub_100003C6C();
  sub_100008190(v207);
  sub_100003C6C();
  sub_10001A8BC();
  String.append(_:)(v208);
  sub_100003C6C();
  sub_1000068D8(v209, 0x8000000100155350);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v210);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v211);
  sub_100003C6C();
  v212._countAndFlagsBits = sub_10001AA40();
  v212._object = 0xE500000000000000;
  String.append(_:)(v212);
  sub_1000052FC();
  String.append(_:)(v213);
  v214._countAndFlagsBits = sub_1000118F8();
  v214._object = 0xEE00726569666974;
  String.append(_:)(v214);
  v215._countAndFlagsBits = 8236;
  v215._object = 0xE200000000000000;
  String.append(_:)(v215);
  sub_100008190(v216);
  sub_1000052FC();
  String.append(_:)(v217);
  sub_100008190(v218);
  v219._countAndFlagsBits = sub_10001AB60();
  v219._object = 0x696669746E656469;
  String.append(_:)(v219);
  v220 = sub_100002DB8();
  v221 = sub_10000C93C(v220);
  sub_1000038F0(v221);
  v222 = sub_100002DB8();
  sub_1000048C4(v222);
  sub_10000756C();
  sub_100006B28();
  String.append(_:)(v223);
  v224._countAndFlagsBits = sub_100012ADC();
  v224._object = 0xE700000000000000;
  String.append(_:)(v224);
  sub_1000068D8(v225, 0x8000000100155560);
  sub_100003C6C();
  v226._countAndFlagsBits = 0x6D796E6F6E7973;
  v226._object = 0xE700000000000000;
  String.append(_:)(v226);
  sub_100003C6C();
  sub_100008190(v227);
  sub_1000078E8();
  String.append(_:)(v228);
  v230 = sub_1000068D8(v229, 0x8000000100155560);
  v231 = sub_100004FF8(v230);
  sub_100008190(v231);
  sub_100011B40();
  v233 = sub_1000068D8(v232, 0x8000000100155AA0);
  sub_1000038F0(v233);
  v234._countAndFlagsBits = 0x6E6564496E617073;
  v234._object = 0xEE00726569666974;
  String.append(_:)(v234);
  v236 = sub_100004FF8(v235);
  sub_100008190(v236);
  sub_1000052FC();
  String.append(_:)(v237);
  sub_100006B28();
  String.append(_:)(v238);
  v240 = sub_1000038F0(v239);
  sub_1000068D8(v240, 0x8000000100155560);
  v241._countAndFlagsBits = 8236;
  v241._object = 0xE200000000000000;
  String.append(_:)(v241);
  sub_100008190(v242);
  sub_1000052FC();
  String.append(_:)(v243);
  v244._countAndFlagsBits = 0x50656C706D617865;
  v244._object = 0xEE00736573617268;
  String.append(_:)(v244);
  v245._countAndFlagsBits = sub_1000111A8();
  v245._object = 0xE700000000000000;
  String.append(_:)(v245);
  sub_100008190(v246);
  sub_100003C6C();
  sub_1000068D8(v247, 0x8000000100155560);
  sub_1000052FC();
  String.append(_:)(v248);
  v249._countAndFlagsBits = 1684957547;
  v249._object = 0xE400000000000000;
  String.append(_:)(v249);
  sub_1000052FC();
  String.append(_:)(v250);
  v251._countAndFlagsBits = 0x7470697263736564;
  v251._object = 0xEB000000006E6F69;
  String.append(_:)(v251);
  sub_1000078E8();
  String.append(_:)(v252);
  sub_100008190(v253);
  sub_100011B40();
  sub_100002738();
  v254._countAndFlagsBits = "intentEnablement" & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v254._object = 0xE700000000000000;
  String.append(_:)(v254);
  v256 = sub_1000038F0(v255);
  sub_1000187A0(v256);
  sub_1000052FC();
  String.append(_:)(v257);
  sub_100006B28();
  String.append(_:)(v258);
  v259._countAndFlagsBits = sub_1000111A8();
  v259._object = 0xE700000000000000;
  String.append(_:)(v259);
  sub_100008190(v260);
  sub_1000116DC(0xD000000000000014);
  sub_100024778(0xD000000000000019);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v261);
  v262._countAndFlagsBits = 0xD000000000000020;
  v262._object = 0x8000000100158580;
  String.append(_:)(v262);
  sub_100008190(v263);
  sub_100019D74();
  sub_100009A5C();
  String.append(_:)(v264);
  v265._countAndFlagsBits = sub_1000135C0();
  v265._object = 0xE700000000000000;
  String.append(_:)(v265);
  sub_1000038F0(v266);
  v267._countAndFlagsBits = sub_100013D04();
  v267._object = 0xE800000000000000;
  String.append(_:)(v267);
  sub_1000052FC();
  String.append(_:)(v268);
  sub_100006B28();
  String.append(_:)(v269);
  sub_1000038F0(v270);
  sub_100024778(0xD000000000000019);
  sub_1000052FC();
  String.append(_:)(v271);
  v272._countAndFlagsBits = 0x6E61747369737361;
  v272._object = 0xEF746E65746E4974;
  String.append(_:)(v272);
  v273._countAndFlagsBits = 0x202020200A2820;
  v273._object = 0xE700000000000000;
  String.append(_:)(v273);
  sub_100008190(v274);
  sub_1000078E8();
  String.append(_:)(v275);
  sub_100007C74();
  v276 = sub_1000116DC(0xD000000000000020);
  sub_100008190(v276);
  sub_1000248CC(" INT NOT NULL,\n    FOREIGN KEY(");
  v277._countAndFlagsBits = sub_1000135C0();
  v277._object = 0xE700000000000000;
  String.append(_:)(v277);
  sub_1000038F0(v278);
  v279._countAndFlagsBits = 0x4449656C646E7562;
  v279._object = 0xE800000000000000;
  String.append(_:)(v279);
  sub_10010E6B4();
  String.append(_:)(v280);
  sub_1000052FC();
  String.append(_:)(v281);
  v282._countAndFlagsBits = sub_1000118F8();
  v282._object = 0xE700000000000000;
  String.append(_:)(v282);
  sub_100008190(v283);
  sub_1000078E8();
  String.append(_:)(v284);
  v285._countAndFlagsBits = 0x657669746167656ELL;
  v285._object = 0xEF73657361726850;
  String.append(_:)(v285);
  v286 = sub_1000116DC(0xD000000000000020);
  sub_100008190(v286);
  v287._countAndFlagsBits = sub_1000111A8();
  v287._object = "    PRIMARY KEY (";
  String.append(_:)(v287);
  v288._countAndFlagsBits = sub_100002DB8() & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v288._object = 0xE700000000000000;
  String.append(_:)(v288);
  sub_1000038F0(v289);
  v290._countAndFlagsBits = sub_10000892C();
  v290._object = 0xE800000000000000;
  String.append(_:)(v290);
  sub_10010E6B4();
  String.append(_:)(v291);
  sub_1000052FC();
  String.append(_:)(v292);
  v293 = sub_1000184DC();
  sub_100008190(v293);
  sub_1000078E8();
  String.append(_:)(v294);
  sub_100007C74();
  v295 = sub_1000116DC(0xD000000000000020);
  sub_100008190(v295);
  v296._countAndFlagsBits = sub_1000111A8();
  v296._object = "    PRIMARY KEY (";
  String.append(_:)(v296);
  v297._countAndFlagsBits = sub_1000118F8();
  v297._object = 0xE700000000000000;
  String.append(_:)(v297);
  sub_1000038F0(v298);
  v299._countAndFlagsBits = sub_10000892C();
  v299._object = 0xE800000000000000;
  String.append(_:)(v299);
  sub_1000052FC();
  String.append(_:)(v300);
  v301._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v301);

  v302._countAndFlagsBits = 59;
  v302._object = 0xE100000000000000;
  String.append(_:)(v302);
  qword_10019E528 = 0;
  unk_10019E530 = 0xE000000000000000;
}

uint64_t sub_10010E64C(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010E6C0(uint64_t a1, uint64_t a2)
{
  if (qword_100198408 != -1)
  {
    sub_1000081B0();
  }

  memcpy(v19, &unk_10019C1F0, sizeof(v19));
  if (qword_100198410 != -1)
  {
    sub_100002DCC();
  }

  sub_100003A8C(&qword_10019C2A0);
  v18[0] = a1;
  v5 = == infix<A>(_:_:)();
  v7 = v6;
  v9 = v8;
  memcpy(v17, v19, sizeof(v17));
  QueryType.filter(_:)(v5, v7, v9, &type metadata for Table, &protocol witness table for Table, v10, v11, v12, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12], v17[13], v17[14], v17[15], v17[16], v17[17], v17[18], v17[19], v17[20], v17[21], v18[0], a2, v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14]);

  memcpy(v20, v18, sizeof(v20));
  v18[3] = &type metadata for Table;
  v18[4] = &protocol witness table for Table;
  v18[0] = swift_allocObject();
  memcpy((v18[0] + 16), v20, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v18);
  v13 = sub_1000034F8(v18);
  if (!v2)
  {
    __chkstk_darwin(v13);

    RowIterator.compactMap<A>(_:)();
    v7 = v15;
  }

  return v7;
}

uint64_t sub_10010E91C(uint64_t a1)
{
  if (qword_100198408 != -1)
  {
    sub_1000081B0();
  }

  memcpy(__dst, &unk_10019C1F0, sizeof(__dst));
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  if (qword_100198410 != -1)
  {
    sub_100002DCC();
  }

  sub_100003A8C(&qword_10019C2A0);
  v9[0] = *a1;
  <- infix<A>(_:_:)();
  if (qword_100198418 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019C2B8);
  v9[0] = *(a1 + 16);
  <- infix<A>(_:_:)();
  if (qword_100198420 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019C2D0);
  *&v9[0] = *(a1 + 32);
  <- infix<A>(_:_:)();
  if (qword_100198428 != -1)
  {
    swift_once();
  }

  v3 = *(a1 + 48);
  if (v3 >> 60 != 15)
  {
    v4 = *(a1 + 40);
    sub_1000098F0(v4, v3);
    sub_10010F114(v4, v3);
  }

  <- infix<A>(_:_:)();

  memcpy(v9, __dst, sizeof(v9));
  v11 = QueryType.insert(or:_:)(AppIntents_SQLite_OnConflict_replace, inited);
  countAndFlagsBits = v11.template._countAndFlagsBits;
  object = v11.template._object;
  rawValue = v11.bindings._rawValue;
  swift_setDeallocating();
  sub_1000B3030();
  v12.template._countAndFlagsBits = countAndFlagsBits;
  v12.template._object = object;
  v12.bindings._rawValue = rawValue;
  Connection.run(_:)(v12);
}

uint64_t sub_10010EC5C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_10010ECE4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x80000001001564D0, v0, v1);
}

uint64_t sub_10010ED6C()
{
  v0 = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v1 = sub_100013F04(&qword_10019C140, &qword_100199EC8, &unk_10014ED00);
  return ExpressionType.init(_:)(0x65756C6176, 0xE500000000000000, v0, v1);
}

uint64_t sub_10010EDEC()
{
  v0 = sub_10002EB80(&qword_10019C300, &qword_100151D80);
  v1 = sub_100013F04(&qword_10019C308, &qword_10019C300, &qword_100151D80);
  return ExpressionType.init(_:)(0x746169636F737361, 0xEE00617461446465, v0, v1);
}

uint64_t sub_10010EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_100198410 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v7 = v13;
  v6 = v14;
  if (qword_100198418 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v9 = v13;
  v8 = v14;
  if (qword_100198420 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v10 = v13;
  if (qword_100198428 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019C2E8, unk_10019C2F0, a1, a2, &type metadata for Blob, &protocol witness table for Blob, &v13);
  result = v13;
  if (v13)
  {
    result = sub_1000F4E4C(v13);
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  *a3 = v7;
  a3[1] = v6;
  a3[2] = v9;
  a3[3] = v8;
  a3[4] = v10;
  a3[5] = result;
  a3[6] = v12;
  return result;
}

double sub_10010F0C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010EE7C(a1, a2, v6);
  v4 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v4;
  result = *&v7;
  *(a3 + 32) = v7;
  *(a3 + 48) = v8;
  return result;
}

void sub_10010F114(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v9 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v9 = BYTE6(a2);
LABEL_6:
      if (!v9)
      {
        goto LABEL_9;
      }

      sub_10000A7A4(v9, 0);
      v12 = Data._copyContents(initializing:)();
      sub_100009B18(a1, a2);
      (*(v5 + 8))(v8, v4);
      if (v12 != v9)
      {
        __break(1u);
LABEL_9:
        sub_100009B18(a1, a2);
      }

      return;
  }
}

double sub_10010F2A0@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    result = *&v9;
    *(a1 + 32) = v9;
    *(a1 + 48) = v10;
  }

  return result;
}

uint64_t sub_10010F2F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010F338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010F394(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10010F3B4, 0, 0);
}

uint64_t sub_10010F3B4()
{
  v1 = v0[2];
  v2 = v0[3];

  sub_10010F4A8(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10010F440(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v3;
    swift_errorRetain();
  }

  return result;
}

void sub_10010F4A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  aBlock = v2;
  v17 = v1;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v4);

  sub_100003D44(0, &qword_100199BC8, NSXPCConnection_ptr);
  v5 = sub_10010F8C4(aBlock, v17, 0);
  v6 = LNAppNotificationEventListenerXPCInterface();
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v20 = sub_1000B58F0;
  v21 = v7;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000A10D0;
  v19 = &unk_100190330;
  v9 = _Block_copy(&aBlock);

  v10 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  if (*v8)
  {
    swift_willThrow();
    swift_errorRetain();

    sub_1000034F8(v22);

    return;
  }

  sub_100004D14(v22, &aBlock);
  sub_10002EB80(&qword_10019C3C0, &qword_100151EA8);
  if (swift_dynamicCast())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v20 = sub_10010F9F0;
    v21 = v11;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10002FFF8;
    v19 = &unk_100190358;
    v13 = _Block_copy(&aBlock);

    [v15 sendAppNotificationEvents:isa reply:v13];
    _Block_release(v13);

    swift_beginAccess();
    if (*(v11 + 16))
    {
      swift_willThrow();
      swift_errorRetain();

      sub_1000034F8(v22);

      swift_unknownObjectRelease();

      return;
    }

    [v5 invalidate];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10010F99C();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }

  sub_1000034F8(v22);
}

id sub_10010F8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_10010F940()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_10010F99C()
{
  result = qword_10019C3C8;
  if (!qword_10019C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C3C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppNotificationEventListenerClient.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10010FAD8()
{
  result = qword_10019C3D0[0];
  if (!qword_10019C3D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10019C3D0);
  }

  return result;
}

id sub_10010FB60()
{
  result = getLNLogCategoryExecution();
  if (result)
  {
    qword_10019E550 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010FCF0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = type metadata accessor for OSSignposter();
  sub_100037CD8(v15, a2);
  sub_10000347C(v15, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v16 = sub_10000347C(v7, a4);
  v17 = *(v8 + 16);
  v17(v14, v16, v7);
  v17(v12, v14, v7);
  OSSignposter.init(logger:)();
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_10010FE80(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

id *sub_10010FF7C()
{
  v1 = *v0;

  v2 = qword_10019E588;
  v3 = type metadata accessor for Logger();
  sub_100002978(v3);
  (*(v4 + 8))(v0 + v2);

  v5 = *(*v0 + 16);
  v6 = v1[10];
  v7 = type metadata accessor for Optional();
  sub_100002978(v7);
  (*(v8 + 8))(v0 + v5);
  v9 = *(v0 + *(*v0 + 17));

  sub_1001100F4(v0 + *(*v0 + 18) + 8);
  return v0;
}

uint64_t sub_100110084()
{
  sub_10010FF7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1001100F4(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_10019C468, &qword_100152028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10011015C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100110178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 58))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001101B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100110218(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 32) == *(a2 + 32) ? (v6 = *(a1 + 40) == *(a2 + 40)) : (v6 = 0), (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100045314(*(a1 + 48), *(a2 + 48)) & 1) != 0 && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0)))
  {
    v7 = *(a1 + 57) ^ *(a2 + 57) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1001102E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Schema.RuntimeError();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  sub_100002958();
  v8 = v7 - v6;
  v9 = type metadata accessor for MetadataError();
  v10 = sub_100002944(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002958();
  v17 = v16 - v15;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (swift_dynamicCast())
  {

    (*(v12 + 32))(a2, v17, v9);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      sub_10011058C(v8, a2);
    }

    else
    {

      swift_errorRetain();
      if (!swift_dynamicCast())
      {

        *a2 = a1;
        return swift_storeEnumTagMultiPayload();
      }

      sub_10002EC1C();
      v19 = swift_allocError();
      *v20 = a1;
      *(v20 + 8) = v21;
      *(v20 + 16) = v22;
      *(v20 + 24) = v23;

      *a2 = v19;
      swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t type metadata accessor for Schema.RuntimeError()
{
  result = qword_10019C4E0;
  if (!qword_10019C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}