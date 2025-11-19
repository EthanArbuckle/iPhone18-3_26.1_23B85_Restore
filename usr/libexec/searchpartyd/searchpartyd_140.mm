uint64_t sub_100E9FCA4()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101372E30, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100E9FECC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA0058;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA0058()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA04B4;
  }

  else
  {
    v3 = sub_100EA016C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA016C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372D50, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA04B4()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372D50, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA06DC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA0868;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA0868()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA0CC4;
  }

  else
  {
    v3 = sub_100EA097C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA097C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101372D70, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA0CC4()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101372D70, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA0EEC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA1078;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA1078()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA14D4;
  }

  else
  {
    v3 = sub_100EA118C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA118C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101372BB0, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA14D4()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101372BB0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA16FC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA1888;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA1888()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA1CEC;
  }

  else
  {
    v3 = sub_100EA199C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA199C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0x654D796669746F4ELL, 0xEF74736575716552, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA1CEC()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0x654D796669746F4ELL, 0xEF74736575716552, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA1F1C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA20A8;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA20A8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA2504;
  }

  else
  {
    v3 = sub_100EA21BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA21BC()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000016, 0x8000000101372DE0, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA2504()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000016, 0x8000000101372DE0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA272C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA28B8;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA28B8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA2D14;
  }

  else
  {
    v3 = sub_100EA29CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA29CC()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372E00, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA2D14()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372E00, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA2F3C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA30C8;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA30C8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA3524;
  }

  else
  {
    v3 = sub_100EA31DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA31DC()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372DC0, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA3524()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372DC0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA374C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA38D8;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA38D8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA3D34;
  }

  else
  {
    v3 = sub_100EA39EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA39EC()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101372B90, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA3D34()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101372B90, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA3F5C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA40E8;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA40E8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA4544;
  }

  else
  {
    v3 = sub_100EA41FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA41FC()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372B70, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA4544()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372B70, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA476C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA48F8;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA48F8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA4D54;
  }

  else
  {
    v3 = sub_100EA4A0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA4A0C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000021, 0x8000000101372D20, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA4D54()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000021, 0x8000000101372D20, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA4F7C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA5108;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA5108()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA5568;
  }

  else
  {
    v3 = sub_100EA521C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA521C()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0x7165526863746546, 0xEC00000074736575, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA5568()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0x7165526863746546, 0xEC00000074736575, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA5794()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA5920;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA5920()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA5D7C;
  }

  else
  {
    v3 = sub_100EA5A34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA5A34()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372C80, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA5D7C()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372C80, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA5FA4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA6130;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA6130()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA658C;
  }

  else
  {
    v3 = sub_100EA6244;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA6244()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000014, 0x8000000101372BF0, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA658C()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000014, 0x8000000101372BF0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA67B4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA6940;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA6940()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA6D9C;
  }

  else
  {
    v3 = sub_100EA6A54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA6A54()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372C30, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA6D9C()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372C30, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA6FC4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA7150;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA7150()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA75AC;
  }

  else
  {
    v3 = sub_100EA7264;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA7264()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101372C60, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA75AC()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101372C60, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA77D4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA7960;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA7960()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA7DBC;
  }

  else
  {
    v3 = sub_100EA7A74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA7A74()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372C10, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA7DBC()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372C10, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA7FE4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for SearchpartyAccount();
  v0[6] = v6;
  v7 = *(v6 - 8);
  v0[7] = v7;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v9 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100EA8170;

  return static AppleAccount.searchpartyAccount.getter(v5);
}

uint64_t sub_100EA8170()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100EA85CC;
  }

  else
  {
    v3 = sub_100EA8284;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EA8284()
{
  v33 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    v4 = RequestCredential.authHeaders.getter();
    if (*(v4 + 16))
    {
      v5 = sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      if (v9)
      {
        v11 = v0[3];
        v10 = v0[4];
        v12 = v0[2];
        v13 = (*(v4 + 56) + 16 * v5);
        v14 = *v13;
        v15 = v13[1];

        static String.Encoding.utf8.getter();
        v16 = String.data(using:allowLossyConversion:)();
        v18 = v17;

        (*(v11 + 8))(v10, v12);
        (*(v7 + 8))(v6, v8);
        if (v18 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v7 + 8))(v6, v8);
      }
    }

    else
    {
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];

      (*(v20 + 8))(v19, v21);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C548);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372BD0, &v32);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s Could not read credential data.", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v16 = 0;
  v18 = 0xC000000000000000;
LABEL_14:
  v27 = v0[8];
  v29 = v0[4];
  v28 = v0[5];

  v30 = v0[1];

  return v30(v16, v18);
}

uint64_t sub_100EA85CC()
{
  v17 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C548);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372BD0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Cannot get authorization header %{public}@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = v0[8];
  v12 = v0[4];
  v13 = v0[5];

  v14 = v0[1];

  return v14(0, 0xC000000000000000);
}

uint64_t sub_100EA87F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v4 = type metadata accessor for HashAlgorithm();
  v3[49] = v4;
  v5 = *(v4 - 8);
  v3[50] = v5;
  v6 = *(v5 + 64) + 15;
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_100EA88B8, 0, 0);
}

uint64_t sub_100EA88B8()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3 && (v4 = String._bridgeToObjectiveC()(), v5 = [v1 BOOLForKey:v4], v4, v5))
  {
    if (qword_1016951C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C548);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "ExcludeBAACerts defaults is enabled. Skipping BAA", v9, 2u);
    }

    v10 = v0[51];

    v11 = v0[1];

    return v11(&_swiftEmptyDictionarySingleton);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[52] = v13;
    *v13 = v0;
    v13[1] = sub_100EA8B18;
    v14 = v0[47];
    v15 = v0[48];
    v16 = v0[46];

    return DeviceIdentityUtility.signDataWithDeviceIdentity(dataToSign:)((v0 + 30), v16, v14);
  }
}

uint64_t sub_100EA8B18()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 408);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100EB2DEC, 0, 0);
  }
}

uint64_t sub_100EA8C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v4 = type metadata accessor for HashAlgorithm();
  v3[49] = v4;
  v5 = *(v4 - 8);
  v3[50] = v5;
  v6 = *(v5 + 64) + 15;
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_100EA8D28, 0, 0);
}

uint64_t sub_100EA8D28()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3 && (v4 = String._bridgeToObjectiveC()(), v5 = [v1 BOOLForKey:v4], v4, v5))
  {
    if (qword_1016951C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C548);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "ExcludeBAACerts defaults is enabled. Skipping BAA", v9, 2u);
    }

    v10 = v0[51];

    v11 = v0[1];

    return v11(_swiftEmptyDictionarySingleton);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[52] = v13;
    *v13 = v0;
    v13[1] = sub_100EA8F88;
    v14 = v0[47];
    v15 = v0[48];
    v16 = v0[46];

    return DeviceIdentityUtility.signDataWithDeviceIdentity(dataToSign:)((v0 + 30), v16, v14);
  }
}

uint64_t sub_100EA8F88()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 408);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100EA90D4, 0, 0);
  }
}

uint64_t sub_100EA90D4()
{
  v49 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C548);
  sub_100017D5C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  sub_100016590(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 368);
    v6 = *(v0 + 376);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v48 = v9;
    *v8 = 136315138;
    v10 = Data.hexString.getter();
    v12 = sub_1000136BC(v10, v11, &v48);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully signed request: %s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  v16 = Data.base64EncodedString(options:)(0);
  countAndFlagsBits = v16._countAndFlagsBits;
  object = v16._object;
  *(v0 + 304) = *(v0 + 288);
  if (*(v0 + 264) >> 60 == 15)
  {
    sub_1000D2A70(v0 + 304, v0 + 320, &qword_1016A0AC0, &unk_1013926A0);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 256);
    sub_1000D2A70(v0 + 304, v0 + 352, &qword_1016A0AC0, &unk_1013926A0);
    v22 = Data.base64EncodedString(options:)(0);
    v19 = v22._countAndFlagsBits;
    v20 = v22._object;
  }

  if (*(v0 + 280) >> 60 == 15)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v47 = v13;
    v25 = *(v0 + 400);
    v26 = *(v0 + 408);
    v27 = *(v0 + 392);
    v28 = *(v0 + 272);
    (*(v25 + 104))(v26, enum case for HashAlgorithm.sha256(_:), v27);
    v29 = Data.hash(algorithm:)();
    v31 = v30;
    v32 = v27;
    object = v16._object;
    countAndFlagsBits = v16._countAndFlagsBits;
    (*(v25 + 8))(v26, v32);
    v13 = v47;
    v33 = Data.base64EncodedString(options:)(0);
    v23 = v33._countAndFlagsBits;
    v24 = v33._object;
    sub_100016590(v29, v31);
  }

  objc_autoreleasePoolPop(v13);
  if (v20 && v24)
  {
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138B360;
    strcpy((inited + 32), "X-Apple-Sign1");
    *(inited + 46) = -4864;
    *(inited + 48) = v19;
    *(inited + 56) = v20;
    strcpy((inited + 64), "X-Apple-Sign2");
    *(inited + 78) = -4864;
    *(inited + 80) = v23;
    *(inited + 88) = v24;
    strcpy((inited + 96), "X-Apple-Sign3");
    *(inited + 110) = -4864;
    *(inited + 112) = countAndFlagsBits;
    *(inited + 120) = object;
    v35 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    swift_arrayDestroy();
LABEL_16:
    sub_10000B3A8(v0 + 304, &qword_1016A0AC0, &unk_1013926A0);
    sub_100EB1AD0(v0 + 240);
    v39 = *(v0 + 408);

    v40 = *(v0 + 8);

    return v40(v35);
  }

  v36 = *(v0 + 312);
  if (v36)
  {
    v37 = *(v0 + 304);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_10138BBE0;
    strcpy((v38 + 32), "X-Apple-Sign");
    *(v38 + 45) = 0;
    *(v38 + 46) = -5120;
    *(v38 + 48) = countAndFlagsBits;
    *(v38 + 56) = object;
    strcpy((v38 + 64), "X-Apple-Cert");
    *(v38 + 77) = 0;
    *(v38 + 78) = -5120;
    *(v38 + 80) = v37;
    *(v38 + 88) = v36;
    sub_1000D2A70(v0 + 304, v0 + 336, &qword_1016A0AC0, &unk_1013926A0);
    v35 = sub_100907E70(v38);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    swift_arrayDestroy();

    goto LABEL_16;
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Could not get certs for attestation.", v44, 2u);
  }

  sub_100EB1A7C();
  swift_allocError();
  swift_willThrow();

  sub_10000B3A8(v0 + 304, &qword_1016A0AC0, &unk_1013926A0);
  sub_100EB1AD0(v0 + 240);
  v45 = *(v0 + 408);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_100EA96D4()
{
  v1 = *(v0 + *(type metadata accessor for FetchRequestBeacon(0) + 28));
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v49 = v1;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v48 = _swiftEmptyArrayStorage;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v7 << 10) | (16 * v10);
    v12 = *(*(v49 + 48) + v11);
    v13 = *(v49 + 56) + v11;
    v14 = *v13;
    v15 = v12;
    if (*(v13 + 8))
    {
      v52 = v12;
      sub_100017D5C(v12, *(&v12 + 1));
      sub_10025DB08();
      v51 = RawRepresentable<>.base64EncodedString(options:)();
      v24 = v23;
      v25 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_100A5EBF8(0, v48[2] + 1, 1, v48);
      }

      v27 = v48[2];
      v26 = v48[3];
      if (v27 >= v26 >> 1)
      {
        v48 = sub_100A5EBF8((v26 > 1), v27 + 1, 1, v48);
      }

      v48[2] = v27 + 1;
      v28 = &v48[3 * v27];
      v28[4] = v51;
      v28[5] = v24;
      v28[6] = v25;
      sub_100016590(v15, *(&v15 + 1));
    }

    else
    {
      v52 = v12;
      sub_100017D5C(v12, *(&v12 + 1));
      sub_10025DB08();
      v50 = RawRepresentable<>.base64EncodedString(options:)();
      v17 = v16;
      v18 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100A5EBF8(0, v8[2] + 1, 1, v8);
      }

      v20 = v8[2];
      v19 = v8[3];
      v21 = v8;
      if (v20 >= v19 >> 1)
      {
        v21 = sub_100A5EBF8((v19 > 1), v20 + 1, 1, v8);
      }

      v21[2] = v20 + 1;
      v8 = v21;
      v22 = &v21[3 * v20];
      v22[4] = v50;
      v22[5] = v17;
      v22[6] = v18;
      sub_100016590(v15, *(&v15 + 1));
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  *&v52 = v8;

  sub_100EAAE8C(&v52);
  v29 = v52;
  v30 = *(v52 + 16);
  if (v30)
  {
    *&v52 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v30, 0);
    v31 = v52;
    v32 = (v29 + 40);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      *&v52 = v31;
      v36 = v31[2];
      v35 = v31[3];

      if (v36 >= v35 >> 1)
      {
        sub_101123BB8((v35 > 1), v36 + 1, 1);
        v31 = v52;
      }

      v31[2] = v36 + 1;
      v37 = &v31[2 * v36];
      v37[4] = v33;
      v37[5] = v34;
      v32 += 3;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  *&v52 = v48;

  sub_100EAAE8C(&v52);
  v38 = v52;
  v39 = *(v52 + 16);
  if (v39)
  {
    *&v52 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v39, 0);
    v40 = v52;
    v41 = (v38 + 40);
    do
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      *&v52 = v40;
      v44 = *(v40 + 16);
      v45 = *(v40 + 24);

      if (v44 >= v45 >> 1)
      {
        sub_101123BB8((v45 > 1), v44 + 1, 1);
        v40 = v52;
      }

      *(v40 + 16) = v44 + 1;
      v46 = v40 + 16 * v44;
      *(v46 + 32) = v42;
      *(v46 + 40) = v43;
      v41 += 3;
      --v39;
    }

    while (v39);
  }

  return v31;
}

uint64_t sub_100EA9B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (static UUID.== infix(_:_:)())
  {
    RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
    sub_100EAD2FC(v2 + RequestBeacon[5], a1 + RequestBeacon[5], a2 + RequestBeacon[5]);
    sub_100EAD2FC(v2 + RequestBeacon[6], a1 + RequestBeacon[6], a2 + RequestBeacon[6]);
    v6 = RequestBeacon[7];
    v7 = *(v2 + v6);
    v8 = *(a1 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v7;
    sub_100EB0178(v8, sub_100EB0154, 0, isUniquelyReferenced_nonNull_native, &v23);

    v10 = v23;
    v11 = RequestBeacon[9];
    v12 = *(v2 + v11);
    v13 = *(a1 + v11);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v12;
    sub_100EB042C(v13, sub_100EB00EC, 0, v14, &v23);

    v15 = v23;
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 16))(a2, v2, v16);
    v18 = (v2 + RequestBeacon[8]);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v18 + 1);
    *(a2 + RequestBeacon[7]) = v10;
    v22 = a2 + RequestBeacon[8];
    *v22 = v19;
    *(v22 + 1) = v20;
    *(v22 + 8) = v21;
    *(a2 + RequestBeacon[9]) = v15;
  }

  else
  {
    sub_100EA9D20();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_100EA9D20()
{
  result = qword_1016BDEA0;
  if (!qword_1016BDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDEA0);
  }

  return result;
}

uint64_t sub_100EA9D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v93 = a8;
  v106 = a4;
  v90 = a3;
  v95 = a2;
  v91 = a1;
  v92 = a9;
  v16 = 0;
  v103 = type metadata accessor for HashAlgorithm();
  v17 = *(v103 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v103);
  v102 = &v88[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v94 = &v88[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v96 = &v88[-v24];
  v25 = type metadata accessor for TimeBasedKey();
  v104 = *(v25 - 8);
  v105 = v25;
  v26 = *(v104 + 64);
  __chkstk_darwin(v25);
  v28 = &v88[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = a6 >> 1;
  v30 = &_swiftEmptyDictionarySingleton;
  v89 = a7;
  if (v29 != a5)
  {
    v100 = enum case for HashAlgorithm.sha256(_:);
    v98 = (v17 + 8);
    v99 = (v17 + 104);
    v97 = a7 & 1;
    if (a5 <= v29)
    {
      v35 = v29;
    }

    else
    {
      v35 = a5;
    }

    v101 = v35;
    while (1)
    {
      LODWORD(v37) = v101;
      if (v101 == a5)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        if (v37 == 1)
        {
          LODWORD(v37) = HIDWORD(v11) - v11;
          if (!__OFSUB__(HIDWORD(v11), v11))
          {
            v87 = v37;
            goto LABEL_58;
          }

          __break(1u);
        }

        if (v37 != 2)
        {
          v87 = BYTE6(isUniquelyReferenced_nonNull_native);
          goto LABEL_58;
        }

        v78 = *(v11 + 16);
        v77 = *(v11 + 24);
        v87 = v77 - v78;
        if (!__OFSUB__(v77, v78))
        {
          goto LABEL_58;
        }

        __break(1u);
LABEL_52:
        static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_101385D80;
        v109[0] = v16;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v80 = String.init<A>(describing:)();
        v82 = v81;
        *(v79 + 56) = &type metadata for String;
        *(v79 + 64) = sub_100008C00();
        *(v79 + 32) = v80;
        *(v79 + 40) = v82;
        os_log(_:dso:log:_:_:)();

        sub_1001BAF88();
        v83 = swift_allocError();
        *v84 = 0;
        swift_willThrow();

        goto LABEL_55;
      }

      sub_100EB19AC(v106 + *(v104 + 72) * a5, v28, type metadata accessor for TimeBasedKey);
      v38 = sub_100A7A194(*&v28[*(v105 + 24) + 16], *&v28[*(v105 + 24) + 24]);
      if (v16)
      {
        goto LABEL_52;
      }

      v11 = sub_100A7829C(v38, 0);
      isUniquelyReferenced_nonNull_native = v39;
      CCECCryptorRelease();
      v37 = isUniquelyReferenced_nonNull_native >> 62;
      v107 = 0;
      if ((isUniquelyReferenced_nonNull_native >> 62) > 1)
      {
        if (v37 != 2)
        {
          goto LABEL_57;
        }

        v43 = *(v11 + 16);
        v42 = *(v11 + 24);
        v44 = __OFSUB__(v42, v43);
        v41 = v42 - v43;
        if (v44)
        {
          goto LABEL_42;
        }

        v40 = v30;
      }

      else if (v37)
      {
        LODWORD(v41) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_43;
        }

        v40 = v30;
        v41 = v41;
      }

      else
      {
        v40 = v30;
        v41 = BYTE6(isUniquelyReferenced_nonNull_native);
      }

      if (v41 != 28)
      {
        goto LABEL_44;
      }

      v16 = a5;
      v45 = v28;
      v47 = v102;
      v46 = v103;
      (*v99)(v102, v100, v103);
      v48 = Data.hash(algorithm:)();
      v50 = v49;
      sub_100016590(v11, isUniquelyReferenced_nonNull_native);
      (*v98)(v47, v46);
      v28 = v45;
      v51 = *v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109[0] = v40;
      v52 = sub_100772794(v48, v50);
      v54 = v40[2];
      v55 = (v53 & 1) == 0;
      v44 = __OFADD__(v54, v55);
      v37 = v54 + v55;
      if (v44)
      {
        goto LABEL_40;
      }

      v11 = v53;
      if (v40[3] < v37)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      isUniquelyReferenced_nonNull_native = v52;
      sub_101009FCC();
      v52 = isUniquelyReferenced_nonNull_native;
      v30 = v109[0];
      if (v11)
      {
LABEL_9:
        v36 = v30[7] + 16 * v52;
        *v36 = v51;
        *(v36 + 8) = v97;
        sub_100016590(v48, v50);
        goto LABEL_10;
      }

LABEL_28:
      v30[(v52 >> 6) + 8] |= 1 << v52;
      v57 = (v30[6] + 16 * v52);
      *v57 = v48;
      v57[1] = v50;
      v58 = v30[7] + 16 * v52;
      *v58 = v51;
      *(v58 + 8) = v97;
      v59 = v30[2];
      v44 = __OFADD__(v59, 1);
      v37 = v59 + 1;
      if (v44)
      {
        goto LABEL_41;
      }

      v30[2] = v37;
LABEL_10:
      a5 = v16 + 1;
      sub_100EB07F8(v28);
      v16 = v107;
      if (v29 == a5)
      {
        goto LABEL_2;
      }
    }

    sub_100FF02C8(v37, isUniquelyReferenced_nonNull_native);
    v52 = sub_100772794(v48, v50);
    if ((v11 & 1) != (v56 & 1))
    {
      while (1)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_57:
        v87 = 0;
LABEL_58:
        sub_100018350();
        v83 = swift_allocError();
        *v86 = 28;
        *(v86 + 8) = v87;
        *(v86 + 16) = 0;
        swift_willThrow();
        sub_100016590(v11, isUniquelyReferenced_nonNull_native);
LABEL_55:
        v109[0] = 0;
        v109[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        v85._object = 0x800000010134CB30;
        v85._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v85);
        v108 = v83;
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

LABEL_27:
    v30 = v109[0];
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_2:
  v109[0] = &_swiftEmptyDictionarySingleton;
  sub_100E9D064(a11, v109);

  v31 = v89;
  if (v89)
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v33 = v95;
    if ((v32 & 1) == 0)
    {
      v34 = type metadata accessor for DateInterval();
      (*(*(v34 - 8) + 56))(v96, 1, 1, v34);
LABEL_34:
      swift_unknownObjectRelease();

      goto LABEL_36;
    }
  }

  else
  {

    v33 = v95;
  }

  v60 = type metadata accessor for DateInterval();
  v61 = *(v60 - 8);
  v62 = v31;
  v63 = v96;
  (*(v61 + 16))(v96, v33, v60);
  v64 = *(v61 + 56);
  v64(v63, 0, 1, v60);
  if (v62)
  {
    goto LABEL_34;
  }

  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if ((v65 & 1) == 0)
  {
    (*(v61 + 8))(v33, v60);
    v76 = v94;
    v64(v94, 1, 1, v60);
    v68 = v76;
    goto LABEL_37;
  }

LABEL_36:
  v66 = type metadata accessor for DateInterval();
  v67 = *(v66 - 8);
  v68 = v94;
  (*(v67 + 32))(v94, v33, v66);
  (*(v67 + 56))(v68, 0, 1, v66);
LABEL_37:
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v70 = v92;
  sub_100EB0738(v96, v92 + RequestBeacon[5]);
  sub_100EB0738(v68, v70 + RequestBeacon[6]);
  v71 = v109[0];
  v72 = type metadata accessor for UUID();
  result = (*(*(v72 - 8) + 32))(v70, v91, v72);
  *(v70 + RequestBeacon[7]) = v30;
  v74 = v70 + RequestBeacon[8];
  v75 = BYTE1(v93);
  *v74 = v93;
  *(v74 + 1) = v75 & 1;
  *(v74 + 8) = a10;
  *(v70 + RequestBeacon[9]) = v71;
  return result;
}

uint64_t sub_100EAA7E8()
{
  v3 = 0x7261646E6F636553;
  v4 = *(v0 + *(type metadata accessor for FetchRequestBeacon(0) + 28));
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  v9 = ~v8;
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v10 = v7 & *(v4 + 64);
  v11 = (63 - v8) >> 6;
  swift_bridgeObjectRetain_n();

  v13 = 0;
  do
  {
    if (!v10)
    {
      v14 = v13;
      do
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v15 >= v11)
        {
          if (v11 <= v13 + 1)
          {
            v18 = v13 + 1;
          }

          else
          {
            v18 = v11;
          }

          v51 = v4;
          v52 = v4 + 64;
          v53 = v9;
          v54 = v18 - 1;
          v55 = 0;
          v56 = sub_100EB07F0;
          v57 = v5;
          v58 = sub_100046580;
          v59 = 0;
          v19 = &v51;
LABEL_17:
          sub_10000B3A8(v19, &qword_1016BDEB8, &qword_1013ED100);

          return 0;
        }

        v10 = *(v6 + 8 * v15);
        ++v14;
      }

      while (!v10);
      v13 = v15;
    }

    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(v4 + 56) + ((v13 << 10) | (16 * v16));
    v1 = *v17;
    if ((*(v17 + 8) & 1) == 0)
    {

      break;
    }

    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v2 & 1) == 0);
  while (v10)
  {
LABEL_26:
    v22 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v23 = *(v4 + 56) + ((v13 << 10) | (16 * v22));
    v24 = *v23;
    if (*(v23 + 8))
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_30;
      }
    }

    else
    {

LABEL_30:
      if (v24 < v1)
      {
        v1 = v24;
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v21 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v21);
    ++v20;
    if (v10)
    {
      v13 = v21;
      goto LABEL_26;
    }
  }

  if (v11 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = v11;
  }

  v51 = v4;
  v52 = v4 + 64;
  v53 = v9;
  v54 = v26 - 1;
  v55 = 0;
  v56 = sub_100EB07F0;
  v57 = v5;
  v58 = sub_100046580;
  v59 = 0;
  sub_10000B3A8(&v51, &qword_1016BDEB8, &qword_1013ED100);
  v27 = -1;
  v28 = -1 << *(v4 + 32);
  v41 = ~v28;
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v10 = v27 & *(v4 + 64);
  v13 = (63 - v28) >> 6;

  v11 = 0;
  while (v10)
  {
LABEL_45:
    v31 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v32 = *(v4 + 56) + ((v11 << 10) | (16 * v31));
    v2 = *v32;
    if (*(v32 + 8) == 1)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        continue;
      }
    }

    while (v10)
    {
LABEL_61:
      v37 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v38 = *(v4 + 56) + ((v11 << 10) | (16 * v37));
      v3 = *v38;
      if (*(v38 + 8) == 1)
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & 1) == 0)
        {
          continue;
        }
      }

LABEL_53:
      if (v2 <= v3)
      {
        v2 = v3;
      }
    }

    v35 = v11;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_71;
      }

      if (v36 >= v13)
      {
        if (v13 <= v11 + 1)
        {
          v40 = v11 + 1;
        }

        else
        {
          v40 = v13;
        }

        v42 = v4;
        v43 = v4 + 64;
        v44 = v41;
        v45 = v40 - 1;
        v46 = 0;
        v47 = sub_100EB07F0;
        v48 = v5;
        v49 = sub_100046580;
        v50 = 0;
        sub_10000B3A8(&v42, &qword_1016BDEB8, &qword_1013ED100);

        if (v2 < v1)
        {
          goto LABEL_72;
        }

        return v1;
      }

      v10 = *(v6 + 8 * v36);
      ++v35;
      if (v10)
      {
        v11 = v36;
        goto LABEL_61;
      }
    }
  }

  v29 = v11;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v13)
    {
      if (v13 <= v11 + 1)
      {
        v34 = v11 + 1;
      }

      else
      {
        v34 = v13;
      }

      v42 = v4;
      v43 = v4 + 64;
      v44 = v41;
      v45 = v34 - 1;
      v46 = 0;
      v47 = sub_100EB07F0;
      v48 = v5;
      v49 = sub_100046580;
      v50 = 0;
      v19 = &v42;
      goto LABEL_17;
    }

    v10 = *(v6 + 8 * v30);
    ++v29;
    if (v10)
    {
      v11 = v30;
      goto LABEL_45;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_100EAAD78(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(57);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x8000000101372B20;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v6._object = 0x8000000101372B50;
  v6._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v6);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    a2 = 0x74657320746F6ELL;
    v7 = 0xE700000000000000;
  }

  v8._countAndFlagsBits = a2;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 93;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0;
}

Swift::Int sub_100EAAE8C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B32160(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1000BC4D4(&qword_1016B3AD0, &qword_1013D4878);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_100EAF8AC(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100EAAFFC()
{
  v0 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  sub_100044B3C(v0, qword_1016BDE88);
  v1 = sub_1000076D4(v0, qword_1016BDE88);
  *v1 = sub_100281AE0;
  v1[1] = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100EAB098(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6974737561687865;
  }

  else
  {
    v4 = 0x6F4C74736574616CLL;
  }

  if (v3)
  {
    v5 = 0xEE006E6F69746163;
  }

  else
  {
    v5 = 0xEA00000000006576;
  }

  if (*a2)
  {
    v6 = 0x6974737561687865;
  }

  else
  {
    v6 = 0x6F4C74736574616CLL;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006576;
  }

  else
  {
    v7 = 0xEE006E6F69746163;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100EAB150()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EAB1E4()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100EAB264()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EAB2F4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AEA0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100EAB354(uint64_t *a1@<X8>)
{
  v2 = 0x6F4C74736574616CLL;
  if (*v1)
  {
    v2 = 0x6974737561687865;
  }

  v3 = 0xEE006E6F69746163;
  if (*v1)
  {
    v3 = 0xEA00000000006576;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100EAB3F4()
{
  _StringGuts.grow(_:)(52);
  v0._object = 0x8000000101372B00;
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x203A65646F6D202CLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x203A65676170202CLL;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 23854;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  return 0;
}

uint64_t sub_100EAB53C(void *a1, __int16 a2)
{
  v3 = HIBYTE(a2);
  v5 = sub_1000BC4D4(&qword_1016BE0C8, &qword_1013ED888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EB23DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v3 & 1;
    v14 = 1;
    sub_100EB2430();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100EAB6E8()
{
  v1 = 1701080941;
  if (*v0 != 1)
  {
    v1 = 1701273968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72617069746C756DLL;
  }
}

uint64_t sub_100EAB740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100EB2BB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100EAB768(uint64_t a1)
{
  v2 = sub_100EB23DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAB7A4(uint64_t a1)
{
  v2 = sub_100EB23DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EAB7E0(void *a1)
{
  v2 = *(v1 + 1);
  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_100EAB53C(a1, v3 | *v1);
}

uint64_t sub_100EAB814()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v0[1];
  return sub_100EAB3F4();
}

Swift::Int sub_100EAB840()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EAB934()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100EABA14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100EABB04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2248(*a1);
  *a2 = result;
  return result;
}

void sub_100EABB34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x7461447472617473;
  v5 = 0xE300000000000000;
  v6 = 7562345;
  v7 = 0xEC00000073644979;
  v8 = 0x7261646E6F636573;
  if (v2 != 3)
  {
    v8 = 0x6F43686372616573;
    v7 = 0xED0000747865746ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65746144646E65;
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

uint64_t sub_100EABBE4()
{
  v1 = *v0;
  v2 = 0x7461447472617473;
  v3 = 7562345;
  v4 = 0x7261646E6F636573;
  if (v1 != 3)
  {
    v4 = 0x6F43686372616573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65746144646E65;
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

unint64_t sub_100EABC90@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2248(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100EABCB8(uint64_t a1)
{
  v2 = sub_100EB2388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EABCF4(uint64_t a1)
{
  v2 = sub_100EB2388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EABD30@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v159 = a2;
  v3 = type metadata accessor for Date();
  v157 = *(v3 - 8);
  v158 = v3;
  v4 = *(v157 + 64);
  __chkstk_darwin(v3);
  v156 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v155 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v154 = &v151 - v10;
  v11 = type metadata accessor for DateInterval();
  v160 = *(v11 - 8);
  v161 = v11;
  v12 = *(v160 + 64);
  v13 = __chkstk_darwin(v11);
  v153 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v152 = &v151 - v15;
  v168 = 0xD000000000000014;
  v169 = 0x8000000101372A40;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v164 = a1;
  v16 = *(a1 + RequestBeacon[7]);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;

  v23 = 0;
  countAndFlagsBits = _swiftEmptyArrayStorage;
  v170 = v16;
  while (v20)
  {
LABEL_9:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = *(v16 + 56) + ((v23 << 10) | (16 * v26));
    v28 = *v27;
    v29 = *(v27 + 8);
    if ((v29 & 1) == 0)
    {

      goto LABEL_13;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
LABEL_13:
      result = swift_isUniquelyReferenced_nonNull_native();
      v167._countAndFlagsBits = countAndFlagsBits;
      if ((result & 1) == 0)
      {
        result = sub_101125788(0, countAndFlagsBits[2] + 1, 1);
        countAndFlagsBits = v167._countAndFlagsBits;
      }

      v32 = countAndFlagsBits[2];
      v31 = countAndFlagsBits[3];
      if (v32 >= v31 >> 1)
      {
        result = sub_101125788((v31 > 1), v32 + 1, 1);
        countAndFlagsBits = v167._countAndFlagsBits;
      }

      countAndFlagsBits[2] = v32 + 1;
      v33 = &countAndFlagsBits[2 * v32];
      v33[4] = v28;
      *(v33 + 40) = v29;
      v16 = v170;
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    if (v25 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v25);
    ++v23;
    if (v20)
    {
      v23 = v25;
      goto LABEL_9;
    }
  }

  v34 = countAndFlagsBits[2];
  if (!v34)
  {
    goto LABEL_46;
  }

  v35 = countAndFlagsBits[4];
  v36 = *(countAndFlagsBits + 40);
  v37 = v34 - 1;
  if (v37)
  {
    v38 = countAndFlagsBits + 7;
    do
    {
      v39 = *(v38 - 1);
      v41 = *v38;
      v38 += 16;
      v40 = v41;
      if (v39 < v35)
      {
        v35 = v39;
        v36 = v40;
      }

      --v37;
    }

    while (v37);
  }

  v42 = 1 << *(v16 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v16 + 64);
  v45 = (v42 + 63) >> 6;

  v46 = 0;
  v47 = _swiftEmptyArrayStorage;
  while (v44)
  {
    v16 = v170;
LABEL_34:
    v49 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v50 = *(v16 + 56) + ((v46 << 10) | (16 * v49));
    v162 = *v50;
    v51 = *(v50 + 8);
    if (v51)
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v52 & 1) == 0)
      {
        continue;
      }
    }

    else
    {
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v167._countAndFlagsBits = v47;
    if ((result & 1) == 0)
    {
      result = sub_101125788(0, v47[2] + 1, 1);
      v47 = v167._countAndFlagsBits;
    }

    v54 = v47[2];
    v53 = v47[3];
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v151 = v54 + 1;
      result = sub_101125788((v53 > 1), v54 + 1, 1);
      v55 = v151;
      v47 = v167._countAndFlagsBits;
    }

    v47[2] = v55;
    v56 = &v47[2 * v54];
    v56[4] = v162;
    *(v56 + 40) = v51;
  }

  v16 = v170;
  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_115;
    }

    if (v48 >= v45)
    {
      break;
    }

    v44 = *(v17 + 8 * v48);
    ++v46;
    if (v44)
    {
      v46 = v48;
      goto LABEL_34;
    }
  }

  v57 = v47[2];
  if (!v57)
  {
LABEL_46:

    goto LABEL_54;
  }

  v58 = v47[4];
  v59 = *(v47 + 40);
  v60 = v57 - 1;
  if (v60)
  {
    v61 = v47 + 7;
    do
    {
      v62 = *(v61 - 1);
      v63 = v58 >= v62;
      v65 = *v61;
      v61 += 16;
      v64 = v65;
      if (v58 <= v62)
      {
        v58 = v62;
      }

      if (!v63)
      {
        v59 = v64;
      }

      --v60;
    }

    while (v60);
  }

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v66._countAndFlagsBits = 0xD000000000000013;
  v66._object = 0x8000000101372A60;
  String.append(_:)(v66);
  v165 = v35;
  v166 = v36 & 1;
  sub_1000BC4D4(&qword_1016BDEB0, &qword_1013ED0F8);
  _print_unlocked<A, B>(_:_:)();
  v67._countAndFlagsBits = 45;
  v67._object = 0xE100000000000000;
  String.append(_:)(v67);
  v165 = v58;
  v166 = v59 & 1;
  _print_unlocked<A, B>(_:_:)();
  v68._countAndFlagsBits = 8236;
  v68._object = 0xE200000000000000;
  String.append(_:)(v68);
  String.append(_:)(v167);

LABEL_54:
  v69 = 1 << *(v16 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v16 + 64);
  v72 = (v69 + 63) >> 6;

  v73 = 0;
  v74 = _swiftEmptyArrayStorage;
  while (v71)
  {
LABEL_62:
    v76 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v77 = *(v16 + 56) + ((v73 << 10) | (16 * v76));
    v78 = *v77;
    v79 = *(v77 + 8);
    if (v79 == 1)
    {
    }

    else
    {
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v80 & 1) == 0)
      {
        continue;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v167._countAndFlagsBits = v74;
    if ((result & 1) == 0)
    {
      result = sub_101125788(0, v74[2] + 1, 1);
      v74 = v167._countAndFlagsBits;
    }

    v82 = v74[2];
    v81 = v74[3];
    if (v82 >= v81 >> 1)
    {
      result = sub_101125788((v81 > 1), v82 + 1, 1);
      v74 = v167._countAndFlagsBits;
    }

    v74[2] = v82 + 1;
    v83 = &v74[2 * v82];
    v83[4] = v78;
    *(v83 + 40) = v79;
    v16 = v170;
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_114;
    }

    if (v75 >= v72)
    {
      break;
    }

    v71 = *(v17 + 8 * v75);
    ++v73;
    if (v71)
    {
      v73 = v75;
      goto LABEL_62;
    }
  }

  v84 = v74[2];
  if (!v84)
  {
LABEL_105:

LABEL_106:
    v119 = v158;
    v120 = v161;
    v121 = v154;
    sub_1000D2A70(v164 + RequestBeacon[5], v154, &qword_1016BDEA8, &qword_1013ED0F0);
    v122 = v160;
    v123 = *(v160 + 48);
    if (v123(v121, 1, v120) == 1)
    {
      sub_10000B3A8(v121, &qword_1016BDEA8, &qword_1013ED0F0);
    }

    else
    {
      v124 = v152;
      (*(v122 + 32))(v152, v121, v120);
      v167._countAndFlagsBits = 0;
      v167._object = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v167._countAndFlagsBits = 0xD000000000000015;
      v167._object = 0x8000000101372AE0;
      v125 = v156;
      DateInterval.start.getter();
      sub_100EB07A8(&qword_1016969A0, &type metadata accessor for Date);
      v162 = v123;
      v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v126);

      v127 = *(v157 + 8);
      v127(v125, v119);
      v128._countAndFlagsBits = 2108704;
      v128._object = 0xE300000000000000;
      String.append(_:)(v128);
      DateInterval.end.getter();
      v129._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v129);

      v127(v125, v119);
      v120 = v161;
      v130._countAndFlagsBits = 8236;
      v130._object = 0xE200000000000000;
      String.append(_:)(v130);
      String.append(_:)(v167);
      v122 = v160;
      v123 = v162;

      (*(v122 + 8))(v124, v120);
    }

    v131 = v155;
    sub_1000D2A70(v164 + RequestBeacon[6], v155, &qword_1016BDEA8, &qword_1013ED0F0);
    if (v123(v131, 1, v120) == 1)
    {
      sub_10000B3A8(v131, &qword_1016BDEA8, &qword_1013ED0F0);
    }

    else
    {
      v132 = v153;
      (*(v122 + 32))(v153, v131, v120);
      v167._countAndFlagsBits = 0;
      v167._object = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v167._countAndFlagsBits = 0xD000000000000017;
      v167._object = 0x8000000101372AC0;
      v133 = v156;
      DateInterval.start.getter();
      sub_100EB07A8(&qword_1016969A0, &type metadata accessor for Date);
      v134._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v134);

      v135 = *(v157 + 8);
      v135(v133, v119);
      v136._countAndFlagsBits = 2108704;
      v136._object = 0xE300000000000000;
      String.append(_:)(v136);
      DateInterval.end.getter();
      v137._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v137);

      v135(v133, v119);
      v138._countAndFlagsBits = 8236;
      v138._object = 0xE200000000000000;
      String.append(_:)(v138);
      String.append(_:)(v167);

      v139 = v132;
      v16 = v170;
      (*(v122 + 8))(v139, v120);
    }

    v167._countAndFlagsBits = 0x203A736469;
    v167._object = 0xE500000000000000;
    v165 = *(v16 + 16);
    v140._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v140);

    v141._countAndFlagsBits = 8236;
    v141._object = 0xE200000000000000;
    String.append(_:)(v141);
    String.append(_:)(v167);

    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v167._countAndFlagsBits = 0x6F43686372616573;
    v167._object = 0xEF203A747865746ELL;
    v142 = RequestBeacon;
    v143 = v164;
    v144 = (v164 + RequestBeacon[8]);
    v145 = *v144;
    v146 = *(v144 + 1);
    v144[1];
    v147._countAndFlagsBits = sub_100EAB3F4();
    String.append(_:)(v147);

    String.append(_:)(v167);

    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v167._countAndFlagsBits = 0xD000000000000010;
    v167._object = 0x8000000101372AA0;
    v165 = *(*(v143 + v142[9]) + 16);
    v148._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v148);

    String.append(_:)(v167);

    v149 = v169;
    v150 = v159;
    *v159 = v168;
    v150[1] = v149;
    return result;
  }

  v85 = v74[4];
  v86 = *(v74 + 40);
  v87 = v84 - 1;
  if (v87)
  {
    v88 = v74 + 7;
    do
    {
      v89 = *(v88 - 1);
      v91 = *v88;
      v88 += 16;
      v90 = v91;
      if (v89 < v85)
      {
        v85 = v89;
        v86 = v90;
      }

      --v87;
    }

    while (v87);
  }

  v92 = 1 << *(v16 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & *(v16 + 64);
  v95 = (v92 + 63) >> 6;

  v96 = 0;
  v97 = _swiftEmptyArrayStorage;
  while (v94)
  {
    v16 = v170;
LABEL_87:
    v99 = __clz(__rbit64(v94));
    v94 &= v94 - 1;
    v100 = *(v16 + 56) + ((v96 << 10) | (16 * v99));
    v162 = *v100;
    v101 = *(v100 + 8);
    if (v101 == 1)
    {
    }

    else
    {
      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v102 & 1) == 0)
      {
        continue;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v167._countAndFlagsBits = v97;
    if ((result & 1) == 0)
    {
      result = sub_101125788(0, v97[2] + 1, 1);
      v97 = v167._countAndFlagsBits;
    }

    v104 = v97[2];
    v103 = v97[3];
    v105 = v104 + 1;
    if (v104 >= v103 >> 1)
    {
      v151 = v104 + 1;
      result = sub_101125788((v103 > 1), v104 + 1, 1);
      v105 = v151;
      v97 = v167._countAndFlagsBits;
    }

    v97[2] = v105;
    v106 = &v97[2 * v104];
    v106[4] = v162;
    *(v106 + 40) = v101;
  }

  v16 = v170;
  while (1)
  {
    v98 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      break;
    }

    if (v98 >= v95)
    {

      v107 = v97[2];
      if (!v107)
      {
        goto LABEL_105;
      }

      v108 = v97[4];
      v109 = *(v97 + 40);
      v110 = v107 - 1;
      if (v110)
      {
        v111 = v97 + 7;
        do
        {
          v112 = *(v111 - 1);
          v113 = v108 >= v112;
          v115 = *v111;
          v111 += 16;
          v114 = v115;
          if (v108 <= v112)
          {
            v108 = v112;
          }

          if (!v113)
          {
            v109 = v114;
          }

          --v110;
        }

        while (v110);
      }

      v167._countAndFlagsBits = 0;
      v167._object = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v116._object = 0x8000000101372A80;
      v116._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v116);
      v165 = v85;
      v166 = v86 & 1;
      sub_1000BC4D4(&qword_1016BDEB0, &qword_1013ED0F8);
      _print_unlocked<A, B>(_:_:)();
      v117._countAndFlagsBits = 45;
      v117._object = 0xE100000000000000;
      String.append(_:)(v117);
      v165 = v108;
      v166 = v109 & 1;
      _print_unlocked<A, B>(_:_:)();
      v118._countAndFlagsBits = 8236;
      v118._object = 0xE200000000000000;
      String.append(_:)(v118);
      String.append(_:)(v167);

      goto LABEL_106;
    }

    v94 = *(v17 + 8 * v98);
    ++v96;
    if (v94)
    {
      v96 = v98;
      goto LABEL_87;
    }
  }

LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_100EACD58(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v42 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000BC4D4(&qword_1016BE0B8, &qword_1013ED880);
  v41 = *(v44 - 8);
  v18 = *(v41 + 64);
  __chkstk_darwin(v44);
  v20 = &v38 - v19;
  v21 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EB2388();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v23 = *(RequestBeacon + 24);
  v24 = v2 + *(RequestBeacon + 20);
  v40 = v2;
  sub_100EAD2FC(v24, v2 + v23, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v25 = v43;
    sub_10000B3A8(v13, &qword_1016BDEA8, &qword_1013ED0F0);
    goto LABEL_3;
  }

  (*(v15 + 32))(v42, v13, v14);
  DateInterval.start.getter();
  v30 = type metadata accessor for Date();
  v31 = *(*(v30 - 8) + 56);
  v31(v9, 0, 1, v30);
  LOBYTE(v46) = 0;
  sub_100EB07A8(&unk_101697F60, &type metadata accessor for Date);
  v32 = v43;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v33 = v9;
  if (v32)
  {
LABEL_9:
    sub_10000B3A8(v33, &unk_101696900, &unk_10138B1E0);
    (*(v15 + 8))(v42, v14);
    return (*(v41 + 8))(v20, v44);
  }

  sub_10000B3A8(v9, &unk_101696900, &unk_10138B1E0);
  v34 = v31;
  v35 = v39;
  v43 = 0;
  DateInterval.end.getter();
  v34(v35, 0, 1, v30);
  LOBYTE(v46) = 1;
  v36 = v43;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v36)
  {
    v33 = v35;
    goto LABEL_9;
  }

  v25 = 0;
  sub_10000B3A8(v35, &unk_101696900, &unk_10138B1E0);
  (*(v15 + 8))(v42, v14);
LABEL_3:
  v26 = v44;
  v27 = sub_100EA96D4();
  v29 = v28;
  if (!*(v27 + 16))
  {

    if (!*(v29 + 16))
    {
LABEL_12:
      (*(v41 + 8))(v20, v26);
    }

LABEL_11:
    v46 = v29;
    v45 = 3;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    goto LABEL_12;
  }

  v46 = v27;
  v45 = 2;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1001E8254();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v25)
  {

    if (!*(v29 + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (*(v41 + 8))(v20, v26);
}

uint64_t sub_100EAD2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v5 = type metadata accessor for Date();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  v7 = __chkstk_darwin(v5);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v72 = &v62 - v10;
  v11 = __chkstk_darwin(v9);
  v70 = &v62 - v12;
  v13 = __chkstk_darwin(v11);
  v69 = &v62 - v14;
  v15 = __chkstk_darwin(v13);
  v71 = &v62 - v16;
  v17 = __chkstk_darwin(v15);
  v66 = &v62 - v18;
  v19 = __chkstk_darwin(v17);
  v65 = &v62 - v20;
  __chkstk_darwin(v19);
  v77 = &v62 - v21;
  v22 = type metadata accessor for DateInterval();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v76 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v78 = &v62 - v27;
  v28 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v68 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v62 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v62 - v36;
  __chkstk_darwin(v35);
  v39 = &v62 - v38;
  v67 = *(v23 + 56);
  v67(&v62 - v38, 1, 1, v22);
  v40 = *(v23 + 48);
  if (v40(a1, 1, v22) == 1)
  {
    sub_10000B3A8(v39, &qword_1016BDEA8, &qword_1013ED0F0);
    return sub_1000D2A70(a2, v79, &qword_1016BDEA8, &qword_1013ED0F0);
  }

  else if (v40(a2, 1, v22) == 1)
  {
    sub_10000B3A8(v39, &qword_1016BDEA8, &qword_1013ED0F0);
    return sub_1000D2A70(a1, v79, &qword_1016BDEA8, &qword_1013ED0F0);
  }

  else
  {
    sub_1000D2A70(a1, v37, &qword_1016BDEA8, &qword_1013ED0F0);
    if (v40(v37, 1, v22) == 1)
    {
      sub_10000B3A8(v37, &qword_1016BDEA8, &qword_1013ED0F0);
    }

    else
    {
      v42 = v37;
      v43 = *(v23 + 32);
      v43(v78, v42, v22);
      sub_1000D2A70(a2, v34, &qword_1016BDEA8, &qword_1013ED0F0);
      if (v40(v34, 1, v22) == 1)
      {
        (*(v23 + 8))(v78, v22);
        sub_10000B3A8(v34, &qword_1016BDEA8, &qword_1013ED0F0);
      }

      else
      {
        v43(v76, v34, v22);
        v44 = v65;
        DateInterval.start.getter();
        v45 = v66;
        DateInterval.start.getter();
        v62 = sub_100EB07A8(&qword_1016C9070, &type metadata accessor for Date);
        v46 = v75;
        v47 = dispatch thunk of static Comparable.< infix(_:_:)();
        v48 = v74;
        v49 = *(v74 + 8);
        v63 = v49;
        v64 = v74 + 8;
        v50 = (v47 & 1) == 0;
        if (v47)
        {
          v51 = v44;
        }

        else
        {
          v51 = v45;
        }

        if (v50)
        {
          v45 = v44;
        }

        v49(v51, v46);
        v66 = *(v48 + 32);
        (v66)(v77, v45, v46);
        v52 = v69;
        DateInterval.end.getter();
        v53 = v70;
        DateInterval.end.getter();
        v54 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v55 = (v54 & 1) == 0;
        if (v54)
        {
          v56 = v52;
        }

        else
        {
          v56 = v53;
        }

        if (!v55)
        {
          v52 = v53;
        }

        v63(v56, v46);
        v57 = v71;
        (v66)(v71, v52, v46);
        v58 = *(v48 + 16);
        v58(v72, v77, v46);
        v58(v73, v57, v46);
        v59 = v68;
        DateInterval.init(start:end:)();
        v60 = v63;
        v63(v57, v46);
        v60(v77, v46);
        v61 = *(v23 + 8);
        v61(v76, v22);
        v61(v78, v22);
        sub_10000B3A8(v39, &qword_1016BDEA8, &qword_1013ED0F0);
        v67(v59, 0, 1, v22);
        sub_100EB0738(v59, v39);
      }
    }

    return sub_100EB0738(v39, v79);
  }
}

unint64_t sub_100EADA48()
{
  v1 = objc_autoreleasePoolPush();
  sub_100EABD30(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_100EADA98(uint64_t a1, char a2)
{
  v2 = *(a1 + 8) == 0;
  if (*(a1 + 8))
  {
    v3 = 0x7261646E6F636553;
  }

  else
  {
    v3 = 0x7972616D697250;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000079;
  }

  if (a2)
  {
    v5 = 0x7261646E6F636553;
  }

  else
  {
    v5 = 0x7972616D697250;
  }

  if (a2)
  {
    v6 = 0xE900000000000079;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100EADB40(_BYTE *a1, _BYTE *a2)
{
  v2 = "foregroundClient";
  if (*a1 == 1)
  {
    v3 = "foregroundClient";
  }

  else
  {
    v3 = "backgroundClient";
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = "ole";
  }

  if (*a2 != 1)
  {
    v2 = "backgroundClient";
  }

  if (*a2)
  {
    v5 = v2;
  }

  else
  {
    v5 = "ole";
  }

  if ((v4 | 0x8000000000000000) == (v5 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

Swift::Int sub_100EADC00()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EADC8C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100EADD04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100EADD8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2294(*a1);
  *a2 = result;
  return result;
}

void sub_100EADDBC(void *a1@<X8>)
{
  v2 = "ole";
  v3 = "foregroundClient";
  if (*v1 != 1)
  {
    v3 = "backgroundClient";
  }

  if (*v1)
  {
    v2 = v3;
  }

  *a1 = 0xD000000000000010;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_100EADE58(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_1000BC4D4(&qword_1016BE158, &qword_1013EDE88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EB2ABC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_100EB2B10();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100EAE000(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v9 = sub_1000BC4D4(&qword_1016BE040, &qword_1013ED850);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EB1F90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v22 = 0;
  sub_1000BC4D4(&qword_1016BE050, &qword_1013ED858);
  sub_100EB1FE4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    LOBYTE(v19) = a3;
    v20 = v17;
    v21 = v18;
    v22 = 1;
    sub_100EB2098();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_100EAE1B8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7461447472617473;
    if (a1 != 2)
    {
      v5 = 0x65746144646E65;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 5294388599723750000;
    v2 = 0x76654464656E776FLL;
    if (a1 != 7)
    {
      v2 = 0x6570795479656BLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7261646E6F636573;
    if (a1 != 4)
    {
      v3 = 0x6F43686372616573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100EAE300()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x7963696C6F70;
  }

  *v0;
  return result;
}

uint64_t sub_100EAE33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7963696C6F70 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101372E50 == a2)
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

uint64_t sub_100EAE41C(uint64_t a1)
{
  v2 = sub_100EB2ABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAE458(uint64_t a1)
{
  v2 = sub_100EB2ABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EAE4C0()
{
  if (*v0)
  {
    result = 0x747865746E6F63;
  }

  else
  {
    result = 0x686372616573;
  }

  *v0;
  return result;
}

uint64_t sub_100EAE4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_100EAE5D0(uint64_t a1)
{
  v2 = sub_100EB1F90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAE60C(uint64_t a1)
{
  v2 = sub_100EB1F90();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EAE678()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076E8F0();
  return Hasher._finalize()();
}

Swift::Int sub_100EAE6C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076E8F0();
  return Hasher._finalize()();
}

unint64_t sub_100EAE70C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2B64(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100EAE73C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100EAE1B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100EAE784@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2B64(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100EAE7AC(uint64_t a1)
{
  v2 = sub_100EB21F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAE7E8(uint64_t a1)
{
  v2 = sub_100EB21F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EAE824(void *a1, char *a2, uint64_t *a3)
{
  v101 = a3;
  v108 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v92 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v96 = &v90 - v9;
  v10 = __chkstk_darwin(v8);
  v99 = &v90 - v11;
  __chkstk_darwin(v10);
  v103 = &v90 - v12;
  v13 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v95 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v98 = &v90 - v18;
  __chkstk_darwin(v17);
  v20 = &v90 - v19;
  v21 = type metadata accessor for DateInterval();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v100 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v104 = &v90 - v27;
  __chkstk_darwin(v26);
  v29 = &v90 - v28;
  v30 = sub_1000BC4D4(&qword_1016BE098, &qword_1013ED878);
  v102 = *(v30 - 8);
  v31 = *(v102 + 64);
  __chkstk_darwin(v30);
  v33 = &v90 - v32;
  v34 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EB21F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v35 = v22;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v94 = *(RequestBeacon + 20);
  sub_1000D2A70(&v108[v94], v20, &qword_1016BDEA8, &qword_1013ED0F0);
  v37 = v35 + 48;
  v38 = *(v35 + 48);
  v39 = v38(v20, 1, v21);
  v105 = v30;
  v106 = v33;
  v97 = v38;
  if (v39 == 1)
  {
    sub_10000B3A8(v20, &qword_1016BDEA8, &qword_1013ED0F0);
  }

  else
  {
    v93 = v35 + 48;
    (*(v35 + 32))(v29, v20, v21);
    v40 = v103;
    DateInterval.start.getter();
    v41 = type metadata accessor for Date();
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    LOBYTE(v110) = 0;
    sub_100EB07A8(&unk_101697F60, &type metadata accessor for Date);
    v42 = v107;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v43 = v42;
    if (v42)
    {
      sub_10000B3A8(v103, &unk_101696900, &unk_10138B1E0);
      (*(v35 + 8))(v29, v21);
      result = (*(v102 + 8))(v33, v30);
      goto LABEL_39;
    }

    v107 = 0;
    sub_10000B3A8(v103, &unk_101696900, &unk_10138B1E0);
    (*(v35 + 8))(v29, v21);
    v38 = v97;
    v37 = v93;
  }

  v45 = *(RequestBeacon + 24);
  v46 = v108;
  v47 = v98;
  sub_1000D2A70(&v108[v45], v98, &qword_1016BDEA8, &qword_1013ED0F0);
  v48 = v38(v47, 1, v21);
  v49 = v99;
  v91 = RequestBeacon;
  if (v48 == 1)
  {
    sub_10000B3A8(v47, &qword_1016BDEA8, &qword_1013ED0F0);
    v43 = v107;
    v50 = v96;
    v51 = v100;
  }

  else
  {
    v93 = v37;
    (*(v35 + 32))(v104, v47, v21);
    DateInterval.start.getter();
    v52 = type metadata accessor for Date();
    (*(*(v52 - 8) + 56))(v49, 0, 1, v52);
    LOBYTE(v110) = 1;
    sub_100EB07A8(&unk_101697F60, &type metadata accessor for Date);
    v53 = v49;
    v55 = v105;
    v54 = v106;
    v56 = v107;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v43 = v56;
    if (v56)
    {
      sub_10000B3A8(v53, &unk_101696900, &unk_10138B1E0);
      (*(v35 + 8))(v104, v21);
      result = (*(v102 + 8))(v54, v55);
      goto LABEL_39;
    }

    sub_10000B3A8(v53, &unk_101696900, &unk_10138B1E0);
    (*(v35 + 8))(v104, v21);
    v50 = v96;
    v51 = v100;
    v46 = v108;
  }

  v57 = &v46[v45];
  v58 = v95;
  sub_100EAD2FC(&v46[v94], v57, v95);
  if (v97(v58, 1, v21) != 1)
  {
    (*(v35 + 32))(v51, v58, v21);
    v107 = v21;
    DateInterval.start.getter();
    v63 = type metadata accessor for Date();
    v64 = v50;
    v65 = *(*(v63 - 8) + 56);
    v65(v64, 0, 1, v63);
    LOBYTE(v110) = 2;
    sub_100EB07A8(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    if (!v43)
    {
      sub_10000B3A8(v64, &unk_101696900, &unk_10138B1E0);
      v66 = v92;
      DateInterval.end.getter();
      v65(v66, 0, 1, v63);
      LOBYTE(v110) = 3;
      v67 = v105;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      sub_10000B3A8(v66, &unk_101696900, &unk_10138B1E0);
      (*(v35 + 8))(v100, v107);
      v59 = v67;
      goto LABEL_13;
    }

    sub_10000B3A8(v64, &unk_101696900, &unk_10138B1E0);
    (*(v35 + 8))(v100, v107);
    result = (*(v102 + 8))(v106, v105);
LABEL_39:
    *v101 = v43;
    return result;
  }

  sub_10000B3A8(v58, &qword_1016BDEA8, &qword_1013ED0F0);
  v59 = v105;
LABEL_13:
  v60 = sub_100EA96D4();
  v62 = v61;
  if (*(v60 + 16))
  {
    v110 = v60;
    v109 = 6;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v43)
    {
      (*(v102 + 8))(v106, v59);

LABEL_38:

      goto LABEL_39;
    }
  }

  if (*(v62 + 16))
  {
    v110 = v62;
    v109 = 4;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v43)
    {
LABEL_37:
      (*(v102 + 8))(v106, v59);
      goto LABEL_38;
    }
  }

  v104 = *&v46[*(v91 + 36)];
  if (*(v104 + 2))
  {
    v107 = v43;
    v68 = (v104 + 64);
    v69 = 1 << v104[32];
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v104 + 8);
    v72 = (v69 + 63) >> 6;

    v73 = 0;
    v74 = _swiftEmptyArrayStorage;
    v103 = v68;
    if (v71)
    {
      while (1)
      {
        v108 = v74;
LABEL_30:
        v76 = __clz(__rbit64(v71)) | (v73 << 6);
        v77 = (*(v104 + 6) + 16 * v76);
        v78 = *v77;
        v79 = v77[1];
        v80 = (*(v104 + 7) + 32 * v76);
        v81 = *v80;
        v82 = v80[1];
        v83 = v80[2];
        v84 = v80[3];
        sub_100017D5C(*v77, v79);
        sub_100017D5C(v78, v79);
        sub_100017D5C(v81, v82);
        sub_100017D5C(v83, v84);
        sub_100016590(v78, v79);
        sub_100016590(v81, v82);
        sub_100016590(v83, v84);
        v74 = v108;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5B734(0, *(v74 + 2) + 1, 1, v74);
          v74 = result;
        }

        v86 = *(v74 + 2);
        v85 = *(v74 + 3);
        v59 = v105;
        if (v86 >= v85 >> 1)
        {
          result = sub_100A5B734((v85 > 1), v86 + 1, 1, v74);
          v74 = result;
        }

        v71 &= v71 - 1;
        *(v74 + 2) = v86 + 1;
        v87 = &v74[16 * v86];
        *(v87 + 4) = v78;
        *(v87 + 5) = v79;
        v68 = v103;
        if (!v71)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
LABEL_26:
      v75 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        __break(1u);
        return result;
      }

      if (v75 >= v72)
      {
        break;
      }

      v71 = *(v68 + 8 * v75);
      ++v73;
      if (v71)
      {
        v108 = v74;
        v73 = v75;
        goto LABEL_30;
      }
    }

    v110 = v74;
    v109 = 7;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    v88 = v107;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v43 = v88;
    if (v88)
    {
      goto LABEL_37;
    }
  }

  LOBYTE(v110) = 8;
  v89 = v106;
  KeyedEncodingContainer.encode(_:forKey:)();
  result = (*(v102 + 8))(v89, v59);
  if (v43)
  {
    goto LABEL_39;
  }

  return result;
}

void sub_100EAF4C8(void *a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_100EAE824(a1, v1, &v4);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100EAF534(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v9 = sub_1000BC4D4(&qword_1016BE070, &qword_1013ED860);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EB20EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v22 = 0;
  sub_1000BC4D4(&qword_1016BE080, &unk_1013ED868);
  sub_100EB2140();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    LOBYTE(v19) = a3;
    v20 = v17;
    v21 = v18;
    v22 = 1;
    sub_100EB2098();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100EAF6EC()
{
  if (*v0)
  {
    result = 0x6F43746E65696C63;
  }

  else
  {
    result = 0x6863746566;
  }

  *v0;
  return result;
}

uint64_t sub_100EAF730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6863746566 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
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

uint64_t sub_100EAF810(uint64_t a1)
{
  v2 = sub_100EB20EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAF84C(uint64_t a1)
{
  v2 = sub_100EB20EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EAF8AC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100B31E68(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_100EAFE68((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_100A5B430((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_100EAFE68((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
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

uint64_t sub_100EAFE68(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 2) < *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_100EB00A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_100EB00EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  sub_100017D5C(v3, v2);
  sub_100017D5C(v4, v5);

  return sub_100017D5C(v6, v7);
}

uint64_t sub_100EB0154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  *a2 = *a1;
  v4 = *(a1 + 8);
  *(a2 + 8) = v4;
  *(a2 + 24) = v3;
  return sub_100017D5C(v2, v4);
}

uint64_t sub_100EB0178(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v13)));
    v17 = *(a1 + 56) + v16;
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v47 = *(*(a1 + 48) + v16);
    v48 = v18;
    v49 = v17;
    sub_100017D5C(v47, *(&v47 + 1));
    a2(&v50, &v47);
    sub_100016590(v47, *(&v47 + 1));
    v19 = v53;
    if (v53 == 2)
    {
LABEL_22:
      sub_1000128F8();
    }

    v21 = v50;
    v20 = v51;
    v46 = v52;
    v22 = *v54;
    v24 = sub_100772794(v50, v51);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_24;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((a4 & 1) == 0)
      {
        sub_101009FCC();
      }
    }

    else
    {
      v29 = v54;
      sub_100FF02C8(v27, a4 & 1);
      v30 = *v29;
      v31 = sub_100772794(v21, v20);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

      v24 = v31;
    }

    v33 = (v13 - 1) & v13;
    v34 = *v54;
    if (v28)
    {
      sub_100016590(v21, v20);
      v12 = v34[7] + 16 * v24;
      *v12 = v46;
      *(v12 + 8) = v19 & 1;
    }

    else
    {
      v34[(v24 >> 6) + 8] |= 1 << v24;
      v35 = (v34[6] + 16 * v24);
      *v35 = v21;
      v35[1] = v20;
      v36 = v34[7] + 16 * v24;
      *v36 = v46;
      *(v36 + 8) = v19 & 1;
      v37 = v34[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      v34[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v10 = v42;
    v6 = v43;
    v9 = v33;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100EB042C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v43 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  for (i = 0; ; i = v16)
  {
    v16 = i;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v8)) | (v16 << 6);
    v19 = (*(a1 + 56) + 32 * v18);
    v20 = *(*(a1 + 48) + 16 * v18);
    v48 = v19[1];
    v52 = *v19;
    v46 = v52;
    v53 = v48;
    v51 = v20;
    sub_100017D5C(v20, *(&v20 + 1));
    sub_100017D5C(v46, *(&v46 + 1));
    sub_100017D5C(v48, *(&v48 + 1));
    a2(&v54, &v51);
    v21 = v52;
    v22 = v53;
    sub_100016590(v51, *(&v51 + 1));
    sub_100016590(v21, *(&v21 + 1));
    sub_100016590(v22, *(&v22 + 1));
    v23 = v55;
    if (v55 >> 60 == 15)
    {
LABEL_22:
      sub_1000128F8();
    }

    v24 = v54;
    v47 = v56;
    v49 = v57;
    v25 = *v58;
    v27 = sub_100772794(v54, v55);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_24;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_101009E2C();
      }
    }

    else
    {
      v32 = v58;
      sub_100FEFFD8(v30, a4 & 1);
      v33 = *v32;
      v34 = sub_100772794(v24, v23);
      if ((v22 & 1) != (v35 & 1))
      {
        goto LABEL_26;
      }

      v27 = v34;
    }

    v8 &= v8 - 1;
    v36 = *v58;
    if (v31)
    {
      sub_100016590(v24, v23);
      v11 = (v36[7] + 32 * v27);
      v12 = *v11;
      v13 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      *v11 = v47;
      *(v11 + 1) = v49;
      sub_100016590(v12, v13);
      sub_100016590(v15, v14);
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v24;
      v37[1] = v23;
      v38 = (v36[7] + 32 * v27);
      *v38 = v47;
      v38[1] = v49;
      v39 = v36[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_25;
      }

      v36[2] = v41;
    }

    a4 = 1;
  }

  v17 = i;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v8 = *(v5 + 8 * v16);
    ++v17;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100EB0738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EB07A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100EB07F8(uint64_t a1)
{
  v2 = type metadata accessor for TimeBasedKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100EB0854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a3;
  v22[1] = a4;
  RequestBeacon_OwnedDevice = type metadata accessor for FetchRequestBeacon_OwnedDevice(0);
  v6 = *(RequestBeacon_OwnedDevice - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(RequestBeacon_OwnedDevice - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v11 = *(*(RequestBeacon - 8) + 64);
  __chkstk_darwin(RequestBeacon - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17 = *(v12 + 72);
  v18 = _swiftEmptyArrayStorage;
  do
  {
    sub_100EB19AC(v16, v14, type metadata accessor for FetchRequestBeacon);
    sub_100EB1A14(v14, v9, type metadata accessor for FetchRequestBeacon);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100A5D4F0(0, v18[2] + 1, 1, v18);
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_100A5D4F0(v19 > 1, v20 + 1, 1, v18);
    }

    v18[2] = v20 + 1;
    sub_100EB1A14(v9, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, type metadata accessor for FetchRequestBeacon_OwnedDevice);
    v16 += v17;
    --v15;
  }

  while (v15);
  return v18;
}

uint64_t sub_100EB0AA0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 377) = a5;
  *(v6 + 168) = a4;
  *(v6 + 176) = a6;
  *(v6 + 376) = a2;
  *(v6 + 152) = a1;
  *(v6 + 160) = a3;
  v7 = type metadata accessor for HashAlgorithm();
  *(v6 + 184) = v7;
  v8 = *(v7 - 8);
  *(v6 + 192) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v6 + 208) = v10;
  v11 = *(v10 - 8);
  *(v6 + 216) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v13 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v6 + 232) = v13;
  v14 = *(v13 - 8);
  *(v6 + 240) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100EB0C24, 0, 0);
}

void sub_100EB0C24()
{
  v1 = type metadata accessor for JSONEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 256) = JSONEncoder.init()();
  if (qword_101694F50 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  v7 = *(v0 + 377);
  v8 = sub_1000076D4(v6, qword_1016BDE88);
  (*(v5 + 16))(v4, v8, v6);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 376);
  if (v7 == 1)
  {
    v12 = *(v0 + 168);

    v14 = sub_100EB0854(v13, v11, v10, v9);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    *(v0 + 88) = v14;
    *(v0 + 96) = v16;
    *(v0 + 104) = v18;
    *(v0 + 112) = v20;
    sub_100EB1938();
    v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v23 = v22;
  }

  else
  {
    *(v0 + 56) = *(v0 + 152);
    *(v0 + 64) = v11;
    *(v0 + 72) = v10;
    *(v0 + 80) = v9;
    sub_100EB18E4();

    v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v23 = v24;
    v25 = *(v0 + 152);
  }

  *(v0 + 264) = 0;
  *(v0 + 272) = v23;
  *(v0 + 280) = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v27 = [objc_opt_self() currentDevice];
  if (!v27)
  {
    __break(1u);
    goto LABEL_12;
  }

  v28 = v27;
  v29 = [v27 serverFriendlyDescription];

  if (!v29)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v31 = *(v0 + 216);
  v30 = *(v0 + 224);
  v32 = *(v0 + 208);
  v33 = *(v0 + 168);
  v34 = *(v0 + 152);

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v35, v37, 0xD000000000000011, 0x800000010134EA40, v38);
  Date.init()();
  v39 = Date.epoch.getter();
  (*(v31 + 8))(v30, v32);
  *(v0 + 136) = v39;
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v41;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v40, v42, 0xD000000000000015, 0x800000010134EA60, v43);
  *(v0 + 144) = 1;
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v46 = v45;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v44, v46, 0xD000000000000013, 0x800000010134EA80, v47);
  v48 = sub_1008D9A78();
  v50 = v49;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v48, v50, 0x6567412D72657355, 0xEA0000000000746ELL, v51);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(52, 0xE100000000000000, 0x762D747065636341, 0xEE006E6F69737265, v52);
  *(v0 + 288) = _swiftEmptyDictionarySingleton;
  v53 = swift_task_alloc();
  *(v0 + 296) = v53;
  *v53 = v0;
  v53[1] = sub_100EB11BC;

  sub_100EA4F7C();
}

uint64_t sub_100EB11BC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v6 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = a2;

  return _swift_task_switch(sub_100EB12BC, 0, 0);
}

uint64_t sub_100EB12BC()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[24];
  v7 = v0[25];
  v0[15] = v2;
  v18 = v6;
  v19 = v0[23];
  v20 = v7;
  v0[16] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v4;
  v0[3] = v3;
  v8 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v9 = *v8;
  v10 = v8[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v4, v3);
  sub_100017DB0(v9, v10);
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v11 = v0[16];
  v0[40] = v0[15];
  v0[41] = v11;
  (*(v18 + 104))(v20, enum case for HashAlgorithm.sha256(_:), v19);
  v12 = Data.hash(algorithm:)();
  v14 = v13;
  v0[42] = v12;
  v0[43] = v13;
  (*(v18 + 8))(v20, v19);
  v15 = swift_task_alloc();
  v0[44] = v15;
  *v15 = v0;
  v15[1] = sub_100EB148C;
  v16 = v0[22];

  return sub_100EA8C64(v12, v14, v16);
}

uint64_t sub_100EB148C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = sub_100EB16C8;
  }

  else
  {
    v8 = v4[42];
    v9 = v4[43];
    v4[46] = a1;
    sub_100016590(v8, v9);
    v7 = sub_100EB15BC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100EB15BC()
{
  v18 = v0;
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[36];
  v6 = v0[32];
  v7 = v0[22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v17);

  sub_100016590(v4, v3);

  v9 = v17;
  v10 = v0[31];
  v11 = v0[28];
  v12 = v0[25];

  v13 = v0[1];
  v15 = v0[34];
  v14 = v0[35];

  return v13(v9, v14, v15);
}

uint64_t sub_100EB16C8()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_100016590(v0[42], v0[43]);
  sub_100016590(v1, v2);
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v3 = v0[45];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C348);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[45];
  v9 = v0[32];
  v10 = v0[22];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate fetch request attestation header: %{public}@.", v11, 0xCu);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v14 = v0[32];
  }

  v15 = v0[36];
  v16 = v0[31];
  v17 = v0[28];
  v18 = v0[25];

  v19 = v0[1];
  v21 = v0[34];
  v20 = v0[35];

  return v19(v15, v20, v21);
}

unint64_t sub_100EB18E4()
{
  result = qword_1016BDEC0;
  if (!qword_1016BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDEC0);
  }

  return result;
}

unint64_t sub_100EB1938()
{
  result = qword_1016BDEC8;
  if (!qword_1016BDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDEC8);
  }

  return result;
}

uint64_t sub_100EB19AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EB1A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100EB1A7C()
{
  result = qword_1016BDED0;
  if (!qword_1016BDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDED0);
  }

  return result;
}

uint64_t sub_100EB1B4C()
{
  result = type metadata accessor for FetchRequestBeacon(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100EB1C40()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100EB1D2C();
    if (v1 <= 0x3F)
    {
      sub_100EB1D84(319, &qword_1016BDFE0, &qword_1016BDEB0, &qword_1013ED0F8);
      if (v2 <= 0x3F)
      {
        sub_100EB1D84(319, &unk_1016BDFE8, &qword_10169C9B0, &qword_10139FC00);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100EB1D2C()
{
  if (!qword_1016BDFD8)
  {
    type metadata accessor for DateInterval();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BDFD8);
    }
  }
}

void sub_100EB1D84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000BC580(a3, a4);
    sub_10049EBF8();
    v5 = type metadata accessor for Dictionary();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FetchRequestBeacon.SearchContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FetchRequestBeacon.SearchContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100EB1E8C()
{
  result = qword_1016BE028;
  if (!qword_1016BE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE028);
  }

  return result;
}

unint64_t sub_100EB1EE4()
{
  result = qword_1016BE030;
  if (!qword_1016BE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE030);
  }

  return result;
}

unint64_t sub_100EB1F3C()
{
  result = qword_1016BE038;
  if (!qword_1016BE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE038);
  }

  return result;
}

unint64_t sub_100EB1F90()
{
  result = qword_1016BE048;
  if (!qword_1016BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE048);
  }

  return result;
}

unint64_t sub_100EB1FE4()
{
  result = qword_1016BE058;
  if (!qword_1016BE058)
  {
    sub_1000BC580(&qword_1016BE050, &qword_1013ED858);
    sub_100EB07A8(&qword_1016BE060, type metadata accessor for FetchRequestBeacon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE058);
  }

  return result;
}

unint64_t sub_100EB2098()
{
  result = qword_1016BE068;
  if (!qword_1016BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE068);
  }

  return result;
}

unint64_t sub_100EB20EC()
{
  result = qword_1016BE078;
  if (!qword_1016BE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE078);
  }

  return result;
}

unint64_t sub_100EB2140()
{
  result = qword_1016BE088;
  if (!qword_1016BE088)
  {
    sub_1000BC580(&qword_1016BE080, &unk_1013ED868);
    sub_100EB07A8(&qword_1016BE090, type metadata accessor for FetchRequestBeacon_OwnedDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE088);
  }

  return result;
}

unint64_t sub_100EB21F4()
{
  result = qword_1016BE0A0;
  if (!qword_1016BE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0A0);
  }

  return result;
}

unint64_t sub_100EB2248(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AE08, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100EB2294(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160B0F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100EB22E0()
{
  result = qword_1016BE0A8;
  if (!qword_1016BE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0A8);
  }

  return result;
}

unint64_t sub_100EB2334()
{
  result = qword_1016BE0B0;
  if (!qword_1016BE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0B0);
  }

  return result;
}

unint64_t sub_100EB2388()
{
  result = qword_1016BE0C0;
  if (!qword_1016BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0C0);
  }

  return result;
}

unint64_t sub_100EB23DC()
{
  result = qword_1016BE0D0;
  if (!qword_1016BE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0D0);
  }

  return result;
}

unint64_t sub_100EB2430()
{
  result = qword_1016BE0D8;
  if (!qword_1016BE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0D8);
  }

  return result;
}

uint64_t sub_100EB24D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100EB2530(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100EB2598()
{
  result = qword_1016BE0E0;
  if (!qword_1016BE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0E0);
  }

  return result;
}

unint64_t sub_100EB25F0()
{
  result = qword_1016BE0E8;
  if (!qword_1016BE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0E8);
  }

  return result;
}

unint64_t sub_100EB2648()
{
  result = qword_1016BE0F0;
  if (!qword_1016BE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0F0);
  }

  return result;
}

unint64_t sub_100EB26A0()
{
  result = qword_1016BE0F8;
  if (!qword_1016BE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0F8);
  }

  return result;
}

unint64_t sub_100EB26F8()
{
  result = qword_1016BE100;
  if (!qword_1016BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE100);
  }

  return result;
}

unint64_t sub_100EB2750()
{
  result = qword_1016BE108;
  if (!qword_1016BE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE108);
  }

  return result;
}

unint64_t sub_100EB27A8()
{
  result = qword_1016BE110;
  if (!qword_1016BE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE110);
  }

  return result;
}

unint64_t sub_100EB2800()
{
  result = qword_1016BE118;
  if (!qword_1016BE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE118);
  }

  return result;
}

unint64_t sub_100EB2858()
{
  result = qword_1016BE120;
  if (!qword_1016BE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE120);
  }

  return result;
}

unint64_t sub_100EB28B0()
{
  result = qword_1016BE128;
  if (!qword_1016BE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE128);
  }

  return result;
}

unint64_t sub_100EB2908()
{
  result = qword_1016BE130;
  if (!qword_1016BE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE130);
  }

  return result;
}

unint64_t sub_100EB2960()
{
  result = qword_1016BE138;
  if (!qword_1016BE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE138);
  }

  return result;
}

unint64_t sub_100EB29B8()
{
  result = qword_1016BE140;
  if (!qword_1016BE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE140);
  }

  return result;
}

unint64_t sub_100EB2A10()
{
  result = qword_1016BE148;
  if (!qword_1016BE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE148);
  }

  return result;
}

unint64_t sub_100EB2A68()
{
  result = qword_1016BE150;
  if (!qword_1016BE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE150);
  }

  return result;
}

unint64_t sub_100EB2ABC()
{
  result = qword_1016BE160;
  if (!qword_1016BE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE160);
  }

  return result;
}

unint64_t sub_100EB2B10()
{
  result = qword_1016BE168;
  if (!qword_1016BE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE168);
  }

  return result;
}

unint64_t sub_100EB2B64(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C768, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100EB2BB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72617069746C756DLL && a2 == 0xEE00746E756F4374;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_100EB2CE4()
{
  result = qword_1016BE170;
  if (!qword_1016BE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE170);
  }

  return result;
}

unint64_t sub_100EB2D3C()
{
  result = qword_1016BE178;
  if (!qword_1016BE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE178);
  }

  return result;
}

unint64_t sub_100EB2D94()
{
  result = qword_1016BE180;
  if (!qword_1016BE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE180);
  }

  return result;
}

uint64_t sub_100EB2DF8()
{
  v1 = *v0;
  strcpy(v5, ".secondary/(");
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v5[0];
}

unint64_t sub_100EB2E98()
{
  result = qword_1016BE188;
  if (!qword_1016BE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE188);
  }

  return result;
}

unint64_t sub_100EB2EEC()
{
  result = qword_1016BE190;
  if (!qword_1016BE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE190);
  }

  return result;
}

unint64_t sub_100EB2F40(void *a1)
{
  a1[1] = sub_100EB2FA0();
  a1[2] = sub_100EB2FF4();
  a1[3] = sub_100EB3048();
  a1[4] = sub_100EB309C();
  a1[5] = sub_100EB30F0();
  a1[6] = sub_100EB3144();
  a1[7] = sub_100EB3198();
  result = sub_100EB31EC();
  a1[8] = result;
  return result;
}

unint64_t sub_100EB2FA0()
{
  result = qword_1016BE198;
  if (!qword_1016BE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE198);
  }

  return result;
}

unint64_t sub_100EB2FF4()
{
  result = qword_1016BE1A0;
  if (!qword_1016BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1A0);
  }

  return result;
}

unint64_t sub_100EB3048()
{
  result = qword_1016BE1A8;
  if (!qword_1016BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1A8);
  }

  return result;
}

unint64_t sub_100EB309C()
{
  result = qword_1016BE1B0;
  if (!qword_1016BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1B0);
  }

  return result;
}

unint64_t sub_100EB30F0()
{
  result = qword_1016BE1B8;
  if (!qword_1016BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1B8);
  }

  return result;
}

unint64_t sub_100EB3144()
{
  result = qword_1016BE1C0;
  if (!qword_1016BE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1C0);
  }

  return result;
}

unint64_t sub_100EB3198()
{
  result = qword_1016BE1C8;
  if (!qword_1016BE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1C8);
  }

  return result;
}

unint64_t sub_100EB31EC()
{
  result = qword_1016BE1D0;
  if (!qword_1016BE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1D0);
  }

  return result;
}

uint64_t sub_100EB3244()
{
  v1 = 0x657470656363612ELL;
  if (*v0 != 1)
  {
    v1 = 0x656E696C6365642ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t type metadata accessor for LocalFindablePreferences()
{
  result = qword_1016BE230;
  if (!qword_1016BE230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EB332C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10015D6D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100EB3570()
{
  result = qword_1016BE270;
  if (!qword_1016BE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE270);
  }

  return result;
}

BOOL sub_100EB35C4(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LocalFindablePreferences();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      return 1;
    }

    goto LABEL_7;
  }

  if (v9 >> 60 == 15)
  {
LABEL_7:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    sub_100006654(v10, v9);
    return 0;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  return (v12 & 1) != 0;
}

uint64_t sub_100EB3708(char a1, uint64_t a2, void *a3)
{
  if (a1 == 1)
  {
    v3._countAndFlagsBits = 980182388;
    v3._object = 0xE400000000000000;
    String.deletingPrefix(_:)(v3);
    v4 = &selRef_handleWithPhoneNumber_;
LABEL_5:
    v6 = String._bridgeToObjectiveC()();

    v7 = [objc_opt_self() *v4];

    return v7;
  }

  if (!a1)
  {
    v5._countAndFlagsBits = 0x3A6F746C69616DLL;
    v5._object = 0xE700000000000000;
    String.deletingPrefix(_:)(v5);
    v4 = &selRef_handleWithEmailAddress_;
    goto LABEL_5;
  }

  _StringGuts.grow(_:)(21);

  v11._countAndFlagsBits = a2;
  v11._object = a3;
  String.append(_:)(v11);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100EB3858()
{
  v1 = v0;
  v2 = [v0 type];
  if (v2 != 1)
  {
    if (v2)
    {
      static os_log_type_t.error.getter();
      sub_10039722C();
      v5 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v6 = [v1 destination];
      if (!v6)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = String._bridgeToObjectiveC()();
      }

      v1 = IDSCopyIDForEmailAddress();

      if (v1)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    v3 = [v0 destination];
    if (!v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = String._bridgeToObjectiveC()();
    }

    v1 = IDSCopyIDForEmailAddress();

    if (v1)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v4 = [v1 destination];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v1 = IDSCopyIDForPhoneNumber();

  if (v1)
  {
LABEL_14:
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_100EB3A04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
    v7 = [a3 stringForKey:v6];

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      v12 = v8 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v13 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v40 = 0;
          sub_1010DDF3C(v8, v10, 10);
          goto LABEL_65;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v39[0] = v8;
          v39[1] = v10 & 0xFFFFFFFFFFFFFFLL;
          if (v8 == 43)
          {
            if (v11)
            {
              if (--v11)
              {
                v28 = 0;
                v29 = v39 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  v31 = 10 * v28;
                  if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                  {
                    break;
                  }

                  v28 = v31 + v30;
                  if (__OFADD__(v31, v30))
                  {
                    break;
                  }

                  ++v29;
                  if (!--v11)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

            goto LABEL_73;
          }

          if (v8 != 45)
          {
            if (v11)
            {
              v35 = 0;
              v36 = v39;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  break;
                }

                v35 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  break;
                }

                ++v36;
                if (!--v11)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v11)
          {
            if (--v11)
            {
              v20 = 0;
              v21 = v39 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  break;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  break;
                }

                v20 = v23 - v22;
                if (__OFSUB__(v23, v22))
                {
                  break;
                }

                ++v21;
                if (!--v11)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v14 = _StringObject.sharedUTF8.getter();
          }

          v15 = *v14;
          if (v15 == 43)
          {
            if (v12 >= 1)
            {
              v11 = v12 - 1;
              if (v12 != 1)
              {
                v24 = 0;
                if (v14)
                {
                  v25 = v14 + 1;
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      goto LABEL_63;
                    }

                    v27 = 10 * v24;
                    if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v24 = v27 + v26;
                    if (__OFADD__(v27, v26))
                    {
                      goto LABEL_63;
                    }

                    ++v25;
                    if (!--v11)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_72;
          }

          if (v15 != 45)
          {
            if (v12)
            {
              v32 = 0;
              if (v14)
              {
                while (1)
                {
                  v33 = *v14 - 48;
                  if (v33 > 9)
                  {
                    goto LABEL_63;
                  }

                  v34 = 10 * v32;
                  if ((v32 * 10) >> 64 != (10 * v32) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v32 = v34 + v33;
                  if (__OFADD__(v34, v33))
                  {
                    goto LABEL_63;
                  }

                  ++v14;
                  if (!--v12)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            LOBYTE(v11) = 1;
            goto LABEL_64;
          }

          if (v12 >= 1)
          {
            v11 = v12 - 1;
            if (v12 != 1)
            {
              v16 = 0;
              if (v14)
              {
                v17 = v14 + 1;
                while (1)
                {
                  v18 = *v17 - 48;
                  if (v18 > 9)
                  {
                    goto LABEL_63;
                  }

                  v19 = 10 * v16;
                  if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v16 = v19 - v18;
                  if (__OFSUB__(v19, v18))
                  {
                    goto LABEL_63;
                  }

                  ++v17;
                  if (!--v11)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v11) = 0;
LABEL_64:
              v40 = v11;
LABEL_65:

              return;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        return;
      }
    }
  }
}

id sub_100EB3DA0()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_10177C218 = result;
  return result;
}

void sub_100EB3DDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    sub_100EB3F84(a1, v16);
    v8 = v17;
    if (v17)
    {
      v9 = sub_1000035D0(v16, v17);
      v10 = *(v8 - 8);
      v11 = *(v10 + 64);
      __chkstk_darwin(v9);
      v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13);
      v14 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v10 + 8))(v13, v8);
      sub_100007BAC(v16);
    }

    else
    {
      v14 = 0;
    }

    v15 = String._bridgeToObjectiveC()();
    [a4 setValue:v14 forKey:v15];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100EB3F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EB400C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F666E49766461 && a2 == 0xE700000000000000)
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

uint64_t sub_100EB4094(uint64_t a1)
{
  v2 = sub_100EB5814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EB40D0(uint64_t a1)
{
  v2 = sub_100EB5814();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100EB410C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100EB569C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result);
  }

  return result;
}

uint64_t sub_100EB4140(void *a1, uint64_t a2)
{
  v4 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  if (a2 != 3)
  {
    LOBYTE(v8) = 1;
    sub_10015049C(v6, v7);
    sub_1000198E8();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    if (!v2)
    {
      v8 = a2;
      v9 = BYTE2(a2) & 1;
      v10 = BYTE3(a2);
      v11 = BYTE4(a2);
      sub_10015049C(v6, v7);
      sub_100EB5524();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    }
  }

  return sub_100007BAC(v6);
}

uint64_t sub_100EB4260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100EB49C8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result);
  }

  return result;
}

uint64_t sub_100EB42B8(uint64_t a1)
{
  v4 = v1;
  v64 = type metadata accessor for Data.Iterator();
  v6 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a1 + 16);
  if (v68)
  {
    v9 = 0;
    v66 = a1 + 32;
    v62 = (v7 + 8);
    v61 = _swiftEmptyArrayStorage;
    v65 = a1;
    while (1)
    {
      if (v9 >= *(a1 + 16))
      {
LABEL_59:
        __break(1u);
LABEL_60:

        sub_100EB54D0();
        swift_allocError();
        swift_willThrow();
        sub_100016590(v3, v2);
        return sub_100EB5404(&v79);
      }

      v10 = (v66 + 16 * v9);
      v3 = *v10;
      v2 = v10[1];
      v11 = v2 >> 62;
      if ((v2 >> 62) > 1)
      {
        if (v11 != 2)
        {
          goto LABEL_18;
        }

        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        v12 = v13 - v14;
        if (__OFSUB__(v13, v14))
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (!v11)
        {
          v12 = BYTE6(v2);
          if (BYTE6(v2))
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        }

        if (__OFSUB__(HIDWORD(v3), v3))
        {
          goto LABEL_62;
        }

        v12 = HIDWORD(v3) - v3;
      }

      sub_100017D5C(v3, v2);
      sub_100017D5C(v3, v2);
      if (v12)
      {
LABEL_16:
        if (v12 < 1)
        {
          v15 = _swiftEmptyArrayStorage;
        }

        else
        {
          sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
          v15 = swift_allocObject();
          v16 = j__malloc_size(v15);
          v15[2] = v12;
          v15[3] = 2 * v16 - 64;
        }

        v17 = v63;
        v18 = Data._copyContents(initializing:)();
        sub_100016590(v3, v2);
        (*v62)(v17, v64);
        if (v18 != v12)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
        }

        goto LABEL_21;
      }

LABEL_18:
      sub_100016590(v3, v2);
      v15 = _swiftEmptyArrayStorage;
LABEL_21:
      v72 = v15;
      v73 = 0;
      sub_10112C0E8(&v79);
      v19 = v80;
      if (v80)
      {
        v20 = v82;
        v21 = v81;
        while (1)
        {
          if (v79 != 1)
          {
            do
            {
              sub_100EB5404(&v79);
              sub_10112C0E8(&v79);
              v19 = v80;
              if (!v80)
              {
                goto LABEL_3;
              }
            }

            while (v79 != 1);
            v21 = v81;
            v20 = v82;
          }

          v69 = v20;
          v22 = sub_1000BC4D4(&qword_10169CB00, &qword_101399648);
          v77 = v22;
          v78 = sub_100EB546C();
          v23 = swift_allocObject();
          v74 = v23;
          *(v23 + 16) = v19;
          *(v23 + 24) = v21;
          *(v23 + 32) = v69;
          v24 = sub_1000035D0(&v74, v22);
          v25 = v24[2];
          v26 = v24[3] >> 1;
          v27 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            __break(1u);
            goto LABEL_59;
          }

          if (!v27)
          {
            break;
          }

          v28 = v24[1];
          if (v27 > 14)
          {
            v29 = type metadata accessor for __DataStorage();
            v30 = *(v29 + 48);
            v31 = *(v29 + 52);
            swift_allocObject();
            swift_unknownObjectRetain();
            v32 = __DataStorage.init(bytes:length:)();
            v33 = v32;
            if (v27 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v34 = swift_allocObject();
              *(v34 + 16) = 0;
              *(v34 + 24) = v27;
              v35 = v33 | 0x8000000000000000;
            }

            else
            {
              v34 = v27 << 32;
              v35 = v32 | 0x4000000000000000;
            }

            sub_100007BAC(&v74);
            goto LABEL_39;
          }

          *&v69 = v4;
          memset(__dst, 0, sizeof(__dst));
          v71 = v26 - v25;
          memcpy(__dst, (v28 + v25), v26 - v25);
          v34 = *__dst;
          v36 = *&__dst[8] | (*&__dst[12] << 32);
          v37 = v71;
          v38 = v67 & 0xF00000000000000 | (v71 << 48) | v36;
          swift_unknownObjectRetain();
          sub_100007BAC(&v74);
          v67 = v38;
          if ((v37 - 5) < 0xFFFFFFFC)
          {
            goto LABEL_36;
          }

          if (v37 == 2)
          {
            v41 = 0;
            v43 = 0;
            v42 = &v74;
            v39 = 1;
            v40 = 2;
          }

          else
          {
            if (v37 != 3)
            {
LABEL_36:
              v35 = v38;
              goto LABEL_39;
            }

            v39 = 0;
            v40 = v34 & 1;
            v41 = v34 & 0xFE;
            v42 = __dst;
            v43 = 1;
          }

          if (v43 >= v37)
          {
            goto LABEL_64;
          }

          __dst[0] = BYTE1(v34);
          LOBYTE(v74) = v34;
          v44 = v43 + 1;
          if (v44 >= v37)
          {
            goto LABEL_65;
          }

          v60 = v39;
          v59 = v41;
          HIDWORD(v58) = *v42;
          v74 = v34;
          v75 = v36;
          v76 = WORD2(v36);
          v45 = *(&v74 | v44);
          sub_100016590(v34, v38);
          v46 = v61;
          if (*(v61 + 2))
          {
            goto LABEL_60;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_100A5C4F8(0, 1, 1, v46);
          }

          v4 = v69;
          v61 = v46;
          v48 = *(v46 + 2);
          v47 = *(v46 + 3);
          if (v48 >= v47 >> 1)
          {
            v61 = sub_100A5C4F8((v47 > 1), v48 + 1, 1, v61);
          }

          sub_100EB5404(&v79);
          v49 = v61;
          *(v61 + 2) = v48 + 1;
          v50 = &v49[5 * v48];
          v50[32] = v40;
          v50[33] = v59;
          v50[34] = v60;
          v50[35] = BYTE4(v58);
          v50[36] = v45;
LABEL_40:
          sub_10112C0E8(&v79);
          v19 = v80;
          v21 = v81;
          v20 = v82;
          if (!v80)
          {
            goto LABEL_3;
          }
        }

        swift_unknownObjectRetain();
        sub_100007BAC(&v74);
        v34 = 0;
        v35 = 0xC000000000000000;
LABEL_39:
        sub_10030AF5C();
        swift_allocError();
        swift_willThrow();
        v4 = 0;
        sub_100016590(v34, v35);

        sub_100EB5404(&v79);
        goto LABEL_40;
      }

LABEL_3:
      ++v9;

      sub_100016590(v3, v2);
      a1 = v65;
      if (v9 == v68)
      {

        v51 = v61;
        if (!*(v61 + 2))
        {
          goto LABEL_57;
        }

LABEL_53:
        v52 = v51[34];
        v53 = v51[35];
        v54 = v51[36];
        v55 = *(v51 + 16);

        v56 = 0x10000;
        if (!v52)
        {
          v56 = 0;
        }

        return v55 | v56 | (v53 << 24) | (v54 << 32);
      }
    }
  }

  v51 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_53;
  }

LABEL_57:

  return 3;
}