uint64_t sub_1000D7794(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100014650;

  return sub_1000D7860(a1, a3, a2, a4, a5);
}

uint64_t sub_1000D7860(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 176) = a2;
  *(v5 + 24) = a1;
  v6 = *(*(type metadata accessor for XPCActivity.Criteria.Options() - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = type metadata accessor for XPCActivity.Priority();
  *(v5 + 56) = v7;
  v8 = *(v7 - 8);
  *(v5 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v10 = type metadata accessor for XPCActivity.Criteria();
  *(v5 + 80) = v10;
  v11 = *(v10 - 8);
  *(v5 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  *(v5 + 104) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  *(v5 + 120) = v16;
  *v16 = v5;
  v16[1] = sub_1000D7A1C;

  return daemon.getter();
}

uint64_t sub_1000D7A1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FinderStateObserver();
  v9 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1000DFF1C(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver);
  *v6 = v12;
  v6[1] = sub_1000D7C00;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000D7C00(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 136);
  v7 = *v2;

  v8 = *(v4 + 128);
  if (v1)
  {

    v9 = sub_1000D8A4C;
  }

  else
  {

    *(v5 + 144) = a1;
    v9 = sub_1000D7D54;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000D7D54()
{
  v19 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 144);

    return _swift_task_switch(sub_1000D7F78, v1, 0);
  }

  else
  {
    if (qword_101694428 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A488);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 176);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = sub_100B28010(v6);
      v11 = sub_1000136BC(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "                    FindMyNetworkPublishActivityService has finder disabled.                     Removing publish criteria for policy %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    (*(*(v0 + 88) + 56))(*(v0 + 24), 1, 1, *(v0 + 80));
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1000D7F78()
{
  v1 = v0[18];
  v2 = sub_1000DFF1C(&qword_101696CC8, 255, type metadata accessor for FinderStateObserver);
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1000D808C;
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF74, v5, v7);
}

uint64_t sub_1000D808C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_1000D81A4, 0, 0);
}

uint64_t sub_1000D81A4()
{
  v24 = v0;
  v1 = *(v0 + 112);
  v2 = type metadata accessor for FinderStateInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
LABEL_9:
    v7 = *(v0 + 144);
    if (qword_101694428 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177A488);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 176);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136446210;
      v14 = sub_100B28010(v11);
      v16 = sub_1000136BC(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "                    FindMyNetworkPublishActivityService has finder disabled.                     Removing publish criteria for policy %{public}s.", v12, 0xCu);
      sub_100007BAC(v13);
    }

    (*(*(v0 + 88) + 56))(*(v0 + 24), 1, 1, *(v0 + 80));
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);
    v19 = *(v0 + 72);
    v20 = *(v0 + 48);

    v21 = *(v0 + 8);

    return v21();
  }

  v3 = *v1;
  sub_1000DD708(v1);
  if (v3 != 1)
  {
    goto LABEL_9;
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v4 = qword_10177B348;
  *(v0 + 160) = qword_10177B348;
  v5 = async function pointer to unsafeBlocking<A>(_:)[1];

  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_1000D84D8;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v4, &type metadata for Configuration);
}

uint64_t sub_1000D84D8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_1000D85F0, 0, 0);
}

uint64_t sub_1000D85F0()
{
  v42 = v1;
  sub_10107341C(*(v1 + 16));
  v3 = v2;
  v4 = *&v2;

  if ((v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3 < 9.22337204e18)
  {
    v5 = *(v1 + 96);
    v7 = *(v1 + 64);
    v6 = *(v1 + 72);
    v9 = *(v1 + 48);
    v8 = *(v1 + 56);
    v4 = v3;
    v10 = *(v1 + 176);
    v0 = sub_100B28108(*(v1 + 32), *(v1 + 40), v10);
    (*(v7 + 104))(v6, enum case for XPCActivity.Priority.maintenance(_:), v8);
    sub_1000DB700(v10);
    XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
    if (qword_101694428 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_5:
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177A488);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v1 + 176);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v41 = v16;
    *v15 = 136446722;
    if (v14 <= 3)
    {
      v26 = 0xE800000000000000;
      v27 = 0x7265776F50776F6CLL;
      v28 = 0xE900000000000072;
      v29 = 0x65776F5068676968;
      if (v14 != 2)
      {
        v29 = 0x4F7265776F506E6FLL;
        v28 = 0xED0000694669576ELL;
      }

      if (v14)
      {
        v27 = 0x6F506D756964656DLL;
        v26 = 0xEB00000000726577;
      }

      if (v14 <= 1)
      {
        v23 = v27;
      }

      else
      {
        v23 = v29;
      }

      if (v14 <= 1)
      {
        v24 = v26;
      }

      else
      {
        v24 = v28;
      }
    }

    else
    {
      v17 = 0xEF6C6C65436E4F79;
      v18 = 0x7265747461426E6FLL;
      v19 = 0xEF79627261654E6ELL;
      v20 = 0x6F696E61706D6F63;
      if (v14 != 7)
      {
        v20 = 0x6857796669746F6ELL;
        v19 = 0xEF646E756F466E65;
      }

      if (v14 != 6)
      {
        v18 = v20;
        v17 = v19;
      }

      v21 = 0xED00006C6C65436ELL;
      v22 = 0x4F7265776F506E6FLL;
      if (v14 != 4)
      {
        v22 = 0x7265747461426E6FLL;
        v21 = 0xEF694669576E4F79;
      }

      if (v14 <= 5)
      {
        v23 = v22;
      }

      else
      {
        v23 = v18;
      }

      if (v14 <= 5)
      {
        v24 = v21;
      }

      else
      {
        v24 = v17;
      }
    }

    v30 = *(v1 + 144);
    v31 = sub_1000136BC(v23, v24, &v41);

    *(v15 + 4) = v31;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v0;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v12, v13, "Renewed criteria for policy: %{public}s.\ndelay: %lld, gracePeriod: %lld.", v15, 0x20u);
    sub_100007BAC(v16);
  }

  else
  {
    v25 = *(v1 + 144);
  }

  v32 = *(v1 + 88);
  v33 = *(v1 + 80);
  v34 = *(v1 + 24);
  (*(v32 + 32))(v34, *(v1 + 96), v33);
  (*(v32 + 56))(v34, 0, 1, v33);
  v35 = *(v1 + 112);
  v36 = *(v1 + 96);
  v37 = *(v1 + 72);
  v38 = *(v1 + 48);

  v39 = *(v1 + 8);

  return v39();
}

uint64_t sub_1000D8A4C()
{
  v17 = v0;
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 176);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    v7 = sub_100B28010(v4);
    v9 = sub_1000136BC(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "                    FindMyNetworkPublishActivityService has finder disabled.                     Removing publish criteria for policy %{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  (*(*(v0 + 88) + 56))(*(v0 + 24), 1, 1, *(v0 + 80));
  v10 = *(v0 + 112);
  v11 = *(v0 + 96);
  v12 = *(v0 + 72);
  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000D8C18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 144) = a3;
  *(v4 + 16) = a1;
  v6 = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  *(v4 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v8 = type metadata accessor for XPCActivity.State();
  *(v4 + 56) = v8;
  v9 = *(v8 - 8);
  *(v4 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1000D8D2C, a4, 0);
}

uint64_t sub_1000D8D2C()
{
  v46 = v0;
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for Logger();
  *(v0 + 88) = sub_1000076D4(v5, qword_10177A488);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  if (v9)
  {
    v44 = v6;
    v13 = *(v0 + 144);
    v43 = v8;
    v14 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = sub_100B28010(v13);
    v17 = sub_1000136BC(v15, v16, &v45);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    sub_1000DFF1C(&qword_101696CD0, 255, &type metadata accessor for XPCActivity.State);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v10, v12);
    v22 = v18;
    v6 = v44;
    v23 = sub_1000136BC(v22, v20, &v45);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v7, v43, "Publish activity %{public}s, state: %s.", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v21 = *(v11 + 8);
    v21(v10, v12);
  }

  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  v26 = *(v0 + 56);
  v6(v24, *(v0 + 24), v26);
  v27 = (*(v25 + 88))(v24, v26);
  if (v27 != enum case for XPCActivity.State.checkIn(_:) && v27 != enum case for XPCActivity.State.wait(_:))
  {
    if (v27 == enum case for XPCActivity.State.run(_:))
    {
      v34 = swift_task_alloc();
      *(v0 + 136) = v34;
      *v34 = v0;
      v34[1] = sub_1000D9BEC;
      v35 = *(v0 + 32);
      v36 = *(v0 + 144);

      return sub_1000D9F8C(v36);
    }

    if (v27 == enum case for XPCActivity.State.defer(_:))
    {
      v37 = *(v0 + 16);
      type metadata accessor for XPCActivity();
      sub_1000DFF1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
      v39 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_1000D9250, v39, v38);
    }

    if (v27 != enum case for XPCActivity.State.continue(_:) && v27 != enum case for XPCActivity.State.done(_:))
    {
      if (v27 == enum case for XPCActivity.State.invalidated(_:))
      {
        v40 = async function pointer to daemon.getter[1];
        v41 = swift_task_alloc();
        *(v0 + 96) = v41;
        *v41 = v0;
        v41[1] = sub_1000D92BC;

        return daemon.getter();
      }

      v42 = *(v0 + 64) + 8;
      v21(*(v0 + 72), *(v0 + 56));
    }
  }

  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 48);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1000D9250()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1000DFF68, v1, 0);
}

uint64_t sub_1000D92BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FinderStateObserver();
  v9 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1000DFF1C(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver);
  *v6 = v12;
  v6[1] = sub_1000D94A0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000D94A0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 112);
  v7 = *v2;

  v8 = *(v4 + 104);
  v9 = *(v4 + 32);
  if (v1)
  {

    v10 = sub_1000D9E34;
  }

  else
  {

    *(v5 + 120) = a1;
    v10 = sub_1000D9608;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000D9608()
{
  v18 = v0;
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 120);

    return _swift_task_switch(sub_1000D97B8, v1, 0);
  }

  else
  {
    v3 = *(v0 + 88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 144);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136446210;
      v9 = sub_100B28010(v6);
      v11 = sub_1000136BC(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "                    FindMyNetworkPublishActivityService has finder disabled.                     ignoring invalidation of policy %{public}s.", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 48);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1000D97B8()
{
  v1 = v0[15];
  v2 = sub_1000DFF1C(&qword_101696CC8, 255, type metadata accessor for FinderStateObserver);
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1000D98CC;
  v5 = v0[15];
  v7 = v0[5];
  v6 = v0[6];

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF14, v5, v7);
}

uint64_t sub_1000D98CC()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_1000D99F8, v3, 0);
}

uint64_t sub_1000D99F8()
{
  v22 = v0;
  v1 = *(v0 + 48);
  v2 = type metadata accessor for FinderStateInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
  }

  else
  {
    v3 = *v1;
    sub_1000DD708(v1);
    if (v3 == 1)
    {
      v4 = *(v0 + 120);
      v5 = *(v0 + 32);

      *(v5 + 176) = 1;
      goto LABEL_8;
    }
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    v13 = sub_100B28010(v10);
    v15 = sub_1000136BC(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "                    FindMyNetworkPublishActivityService has finder disabled.                     ignoring invalidation of policy %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }

LABEL_8:
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000D9BEC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 16);
  v6 = *v0;

  type metadata accessor for XPCActivity();
  sub_1000DFF1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9D54, v4, v3);
}

uint64_t sub_1000D9D54()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_1000D9DC0, v1, 0);
}

uint64_t sub_1000D9DC0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D9E34()
{
  v16 = v0;
  v1 = *(v0 + 88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 144);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = sub_100B28010(v4);
    v9 = sub_1000136BC(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "                    FindMyNetworkPublishActivityService has finder disabled.                     ignoring invalidation of policy %{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 48);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D9F8C(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 184) = a1;
  v3 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000DA02C, v1, 0);
}

uint64_t sub_1000DA02C()
{
  v26 = v0;
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = sub_1000076D4(v1, qword_10177A488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136446210;
    if (v4 <= 3)
    {
      v15 = 0xE800000000000000;
      v16 = 0x7265776F50776F6CLL;
      v17 = 0xE900000000000072;
      v18 = 0x65776F5068676968;
      if (v4 != 2)
      {
        v18 = 0x4F7265776F506E6FLL;
        v17 = 0xED0000694669576ELL;
      }

      if (v4)
      {
        v16 = 0x6F506D756964656DLL;
        v15 = 0xEB00000000726577;
      }

      if (v4 <= 1)
      {
        v13 = v16;
      }

      else
      {
        v13 = v18;
      }

      if (v4 <= 1)
      {
        v14 = v15;
      }

      else
      {
        v14 = v17;
      }
    }

    else
    {
      v7 = 0xEF6C6C65436E4F79;
      v8 = 0x7265747461426E6FLL;
      v9 = 0xEF79627261654E6ELL;
      v10 = 0x6F696E61706D6F63;
      if (v4 != 7)
      {
        v10 = 0x6857796669746F6ELL;
        v9 = 0xEF646E756F466E65;
      }

      if (v4 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xED00006C6C65436ELL;
      v12 = 0x4F7265776F506E6FLL;
      if (v4 != 4)
      {
        v12 = 0x7265747461426E6FLL;
        v11 = 0xEF694669576E4F79;
      }

      if (v4 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v4 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v19 = sub_1000136BC(v13, v14, &v25);

    *(v5 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v2, v3, "FindMyNetworkPublishActivityService runPublishActivity with policy: %{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  type metadata accessor for FindMyNetworkPublishDateProvider();
  *(v0 + 64) = swift_allocObject();
  swift_defaultActor_initialize();
  v20 = sub_1011298C8(&off_1016075F0);
  v21 = sub_1008ECAD0();
  v22 = sub_10112C0E0(v21, v20) & 1;
  *(v0 + 185) = v22;

  v23 = swift_task_alloc();
  *(v0 + 72) = v23;
  *v23 = v0;
  v23[1] = sub_1000DA3A4;

  return sub_1000DDA18(v22);
}

uint64_t sub_1000DA3A4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *v1;

  if (a1)
  {
    v6 = swift_task_alloc();
    *(v3 + 176) = v6;
    *v6 = v5;
    v6[1] = sub_1000DB204;
    v7 = *(v3 + 185);
    v8 = *(v3 + 40);

    return sub_1000DB94C(v7);
  }

  else
  {
    v10 = *(v3 + 40);

    return _swift_task_switch(sub_1000DA518, v10, 0);
  }
}

uint64_t sub_1000DA518()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[10] = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v0[11] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[12] = v8;
  v0[13] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(&v4[v5], 1, 1, v6);
  v8(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000034;
  *(v4 + 16) = 0x800000010134AD90;

  return _swift_task_switch(sub_1000DA670, v4, 0);
}

uint64_t sub_1000DA670()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[5];
  v5 = v0[6];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v7);
  swift_endAccess();

  return _swift_task_switch(sub_1000DA73C, v6, 0);
}

uint64_t sub_1000DA73C()
{
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1000DA7F8;
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 184);

  return sub_101168A88(v3, v4, v5);
}

uint64_t sub_1000DA7F8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v2 + 120) = v7;
  *v7 = v5;
  v7[1] = sub_1000DA954;

  return daemon.getter();
}

uint64_t sub_1000DA954(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v9 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1000DFF1C(&unk_10169BA60, 255, type metadata accessor for FindMyNetworkPublisherService);
  *v6 = v12;
  v6[1] = sub_1000DAB38;

  return ActorServiceDaemon.getService<A>()(v7, MyNetworkPublisherService, v9, v10);
}

uint64_t sub_1000DAB38(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v7 = v4[5];

    return _swift_task_switch(sub_1000DAE18, v7, 0);
  }

  else
  {
    v8 = v4[16];
    v9 = v4[10];

    v10 = swift_task_alloc();
    v4[20] = v10;
    *v10 = v6;
    v10[1] = sub_1000DACD4;

    return sub_1008EDF50(v9);
  }
}

uint64_t sub_1000DACD4(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v12 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[5];
    v7 = sub_1000DB384;
  }

  else
  {
    v8 = v4[18];
    v9 = v4[10];
    v10 = v4[5];

    v7 = sub_1000DB188;
    v6 = v10;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000DAE18()
{
  v32 = v0;
  v1 = *(v0 + 128);

  v2 = *(v0 + 152);
  v3 = *(v0 + 56);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v7 = 136446466;
    if (v6 <= 3)
    {
      v20 = 0xE800000000000000;
      v21 = 0x7265776F50776F6CLL;
      v22 = 0xE900000000000072;
      v23 = 0x65776F5068676968;
      if (v6 != 2)
      {
        v23 = 0x4F7265776F506E6FLL;
        v22 = 0xED0000694669576ELL;
      }

      if (v6)
      {
        v21 = 0x6F506D756964656DLL;
        v20 = 0xEB00000000726577;
      }

      if (v6 <= 1)
      {
        v16 = v21;
      }

      else
      {
        v16 = v23;
      }

      if (v6 <= 1)
      {
        v17 = v20;
      }

      else
      {
        v17 = v22;
      }
    }

    else
    {
      v10 = 0xEF6C6C65436E4F79;
      v11 = 0x7265747461426E6FLL;
      v12 = 0xEF79627261654E6ELL;
      v13 = 0x6F696E61706D6F63;
      if (v6 != 7)
      {
        v13 = 0x6857796669746F6ELL;
        v12 = 0xEF646E756F466E65;
      }

      if (v6 != 6)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = 0xED00006C6C65436ELL;
      v15 = 0x4F7265776F506E6FLL;
      if (v6 != 4)
      {
        v15 = 0x7265747461426E6FLL;
        v14 = 0xEF694669576E4F79;
      }

      if (v6 <= 5)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      if (v6 <= 5)
      {
        v17 = v14;
      }

      else
      {
        v17 = v10;
      }
    }

    v24 = *(v0 + 80);
    v30 = *(v0 + 64);
    v25 = sub_1000136BC(v16, v17, &v31);

    *(v7 + 4) = v25;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v26;
    *v8 = v26;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed publish activity %{public}s, error: %@.", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);
  }

  v27 = *(v0 + 48);
  *(*(v0 + 40) + 176) = 1;

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1000DB188()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[6];
  *(v0[5] + 176) = 1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DB204()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1000DB314, v2, 0);
}

uint64_t sub_1000DB314()
{
  v1 = v0[8];

  v2 = v0[6];
  *(v0[5] + 176) = 1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000DB384()
{
  v33 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);

  v3 = *(v0 + 168);
  v4 = *(v0 + 56);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v8 = 136446466;
    if (v7 <= 3)
    {
      v21 = 0xE800000000000000;
      v22 = 0x7265776F50776F6CLL;
      v23 = 0xE900000000000072;
      v24 = 0x65776F5068676968;
      if (v7 != 2)
      {
        v24 = 0x4F7265776F506E6FLL;
        v23 = 0xED0000694669576ELL;
      }

      if (v7)
      {
        v22 = 0x6F506D756964656DLL;
        v21 = 0xEB00000000726577;
      }

      if (v7 <= 1)
      {
        v17 = v22;
      }

      else
      {
        v17 = v24;
      }

      if (v7 <= 1)
      {
        v18 = v21;
      }

      else
      {
        v18 = v23;
      }
    }

    else
    {
      v11 = 0xEF6C6C65436E4F79;
      v12 = 0x7265747461426E6FLL;
      v13 = 0xEF79627261654E6ELL;
      v14 = 0x6F696E61706D6F63;
      if (v7 != 7)
      {
        v14 = 0x6857796669746F6ELL;
        v13 = 0xEF646E756F466E65;
      }

      if (v7 != 6)
      {
        v12 = v14;
        v11 = v13;
      }

      v15 = 0xED00006C6C65436ELL;
      v16 = 0x4F7265776F506E6FLL;
      if (v7 != 4)
      {
        v16 = 0x7265747461426E6FLL;
        v15 = 0xEF694669576E4F79;
      }

      if (v7 <= 5)
      {
        v17 = v16;
      }

      else
      {
        v17 = v12;
      }

      if (v7 <= 5)
      {
        v18 = v15;
      }

      else
      {
        v18 = v11;
      }
    }

    v25 = *(v0 + 80);
    v31 = *(v0 + 64);
    v26 = sub_1000136BC(v17, v18, &v32);

    *(v8 + 4) = v26;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v27;
    *v9 = v27;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed publish activity %{public}s, error: %@.", v8, 0x16u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
  }

  v28 = *(v0 + 48);
  *(*(v0 + 40) + 176) = 1;

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1000DB700(unsigned __int8 a1)
{
  v2 = type metadata accessor for XPCActivity.Criteria.Options();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  static XPCActivity.Criteria.Options.usesDuetPowerBudgeting.getter();
  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  sub_1000DD1B0(v9, v7);
  v10 = *(v3 + 8);
  v10(v7, v2);
  v10(v9, v2);
  static XPCActivity.Criteria.Options.usesDuetNetworkBudgeting.getter();
  sub_1000DD1B0(v9, v7);
  v10(v7, v2);
  v10(v9, v2);
  static XPCActivity.Criteria.Options.preventDeviceSleep.getter();
  sub_1000DD1B0(v9, v7);
  v10(v7, v2);
  result = (v10)(v9, v2);
  if (a1 > 4u)
  {
    if (a1 - 7 < 2)
    {
      return result;
    }

    if (a1 != 5)
    {
      static XPCActivity.Criteria.Options.allowBattery.getter();
      goto LABEL_9;
    }

    static XPCActivity.Criteria.Options.allowBattery.getter();
    sub_1000DD1B0(v9, v7);
    v10(v7, v2);
    v10(v9, v2);
LABEL_7:
    static XPCActivity.Criteria.Options.requiresInexpensiveNetwork.getter();
LABEL_9:
    sub_1000DD1B0(v9, v7);
    v10(v7, v2);
    return (v10)(v9, v2);
  }

  if (a1 == 3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000DB94C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000DB9E4;

  return daemon.getter();
}

uint64_t sub_1000DB9E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1000DFF1C(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1000DBBC8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000DBBC8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v4 + 32);
  if (v1)
  {

    v10 = sub_1000DC1F4;
  }

  else
  {

    *(v5 + 48) = a1;
    v10 = sub_1000DBD30;
  }

  return _swift_task_switch(v10, v7, 0);
}

uint64_t sub_1000DBD30()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = v1;
  v2 = type metadata accessor for AnalyticsEvent(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v0 + 64) = v5;
  swift_defaultActor_initialize();
  *(v5 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(*(v7 - 8) + 56);
  v8(&v5[v6], 1, 1, v7);
  v8(&v5[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v7);
  *(v5 + 15) = 0xD000000000000037;
  *(v5 + 16) = 0x800000010134AD10;

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1000DBEE0;
  v10 = *(v0 + 96);

  return sub_101169B00(v5, v1, v10);
}

uint64_t sub_1000DBEE0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v5 = *v1;

  if (v0)
  {
  }

  type metadata accessor for AnalyticsPublisher();
  v2[10] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v5;
  v6[1] = sub_1000DC060;
  v7 = v2[8];

  return sub_101163F78(v7);
}

uint64_t sub_1000DC060()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_1000DC18C, v3, 0);
}

uint64_t sub_1000DC18C()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000DC1F4()
{
  *(v0 + 56) = 0;
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  swift_defaultActor_initialize();
  *(v4 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 56);
  v7(&v4[v5], 1, 1, v6);
  v7(&v4[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v6);
  *(v4 + 15) = 0xD000000000000037;
  *(v4 + 16) = 0x800000010134AD10;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1000DBEE0;
  v9 = *(v0 + 96);

  return sub_101169B00(v4, 0, v9);
}

uint64_t sub_1000DC390(uint64_t a1, char a2)
{
  *(v2 + 264) = a2;
  *(v2 + 240) = a1;
  return _swift_task_switch(sub_1000DC3B4, 0, 0);
}

uint64_t sub_1000DC3B4()
{
  if (*(v0 + 240))
  {
    v1 = swift_task_alloc();
    *(v0 + 248) = v1;
    *v1 = v0;
    v1[1] = sub_1000DC5A0;

    return sub_1010CC098();
  }

  else
  {
    v3 = *(v0 + 264);
    sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138B360;
    *(inited + 32) = 0x6E6F73616572;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = sub_1000DF96C();
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x800000010134AD50;
    *(inited + 88) = 1;
    *(inited + 96) = 0xD000000000000010;
    *(inited + 104) = 0x800000010134AD70;
    *(inited + 136) = &type metadata for Int64;
    *(inited + 144) = sub_1000DF9C0();
    *(inited + 112) = 0;
    *(inited + 152) = 2;
    *(inited + 160) = 0x7265747461426E6FLL;
    *(inited + 168) = 0xE900000000000079;
    *(inited + 176) = v3;
    *(inited + 216) = 0;
    v5 = sub_100907D24(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
    swift_arrayDestroy();
    v6 = *(v0 + 8);

    return v6(v5);
  }
}

uint64_t sub_1000DC5A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_1000DC854;
  }

  else
  {
    *(v4 + 256) = a1;
    v7 = sub_1000DC6CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000DC6CC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x6E6F73616572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = sub_1000DF96C();
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x800000010134AD50;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x800000010134AD70;
  *(inited + 136) = &type metadata for Int64;
  *(inited + 144) = sub_1000DF9C0();
  *(inited + 112) = v1;
  *(inited + 152) = 2;
  *(inited + 160) = 0x7265747461426E6FLL;
  *(inited + 168) = 0xE900000000000079;
  *(inited + 176) = v2;
  *(inited + 216) = 0;
  v4 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1000DC854()
{
  v1 = *(v0 + 264);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x6E6F73616572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = sub_1000DF96C();
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x800000010134AD50;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x800000010134AD70;
  *(inited + 136) = &type metadata for Int64;
  *(inited + 144) = sub_1000DF9C0();
  *(inited + 112) = 0;
  *(inited + 152) = 2;
  *(inited + 160) = 0x7265747461426E6FLL;
  *(inited + 168) = 0xE900000000000079;
  *(inited + 176) = v1;
  *(inited + 216) = 0;
  v3 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000DC9D0()
{
  v1 = v0[15];

  sub_100007BAC(v0 + 16);
  v2 = v0[21];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000DCA18(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(MyNetworkPublishActivityService, a2);
}

uint64_t sub_1000DCAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, MyNetworkPublishActivityService, a4);
}

uint64_t sub_1000DCB84(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(MyNetworkPublishActivityService, a2);
}

uint64_t sub_1000DCC2C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000DCCF0, v0, 0);
}

uint64_t sub_1000DCCF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;

  sub_1008CE048(0, 0, v1, &unk_10138B580, v5);

  sub_10000B3A8(v1, &qword_101698C00, &qword_10138B570);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1000DCE3C;
  v7 = v0[2];

  return sub_1000D6D44();
}

uint64_t sub_1000DCE3C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000DCF50(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(MyNetworkPublishActivityService, a2);
}

uint64_t sub_1000DCFF8()
{
  v1 = *v0;
  type metadata accessor for FindMyNetworkPublishActivityService();
  sub_1000DFF1C(&qword_101696C78, v2, type metadata accessor for FindMyNetworkPublishActivityService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1000DD0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1000D58D8(a1, v4, v5, v7);
}

uint64_t sub_1000DD1B0(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = sub_1000BC4D4(&qword_101696CD8, &qword_10138B658);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v28 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v25 - v8;
  v10 = type metadata accessor for XPCActivity.Criteria.Options();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v25 - v16;
  v26 = *(v11 + 16);
  v27 = v2;
  v26(v15, v2, v10);
  v25[1] = sub_1000DFF1C(&qword_101696CE0, 255, &type metadata accessor for XPCActivity.Criteria.Options);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v18 = v4;
  sub_1000DFF1C(&qword_101696CE8, 255, &type metadata accessor for XPCActivity.Criteria.Options);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v4 + 48);
  *v9 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v11 + 32))(&v9[v20], v17, v10);
  }

  else
  {
    (*(v11 + 8))(v17, v10);
    v21 = v26;
    v26(&v9[v20], a2, v10);
    v21(v15, a2, v10);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v28;
  sub_1000D2AD8(v9, v28, &qword_101696CD8, &qword_10138B658);
  v23 = *v22;
  (*(v11 + 32))(v29, &v22[*(v18 + 48)], v10);
  return v23;
}

uint64_t sub_1000DD4C0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1000DD644(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1000BC4D4(&qword_101696C70, &qword_10138B5B8);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(result + 16) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_1000DD6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinderStateInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD708(uint64_t a1)
{
  v2 = type metadata accessor for FinderStateInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DD764(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1000BC4D4(&qword_101696C80, &qword_10138B5C0);
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v2[2] = v1;
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    v3 = *(*(sub_1000BC4D4(&qword_101696C80, &qword_10138B5C0) - 8) + 80);
    return v2;
  }

  return result;
}

uint64_t sub_1000DD810()
{
  v0 = type metadata accessor for NetworkReachabilityStatus();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v8 = type metadata accessor for NetworkReachability();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  NetworkReachability.init()();
  dispatch thunk of NetworkReachability.status.getter();
  (*(v1 + 104))(v5, enum case for NetworkReachabilityStatus.reachableViaWiFi(_:), v0);
  sub_1000DFF1C(&qword_101696C88, 255, &type metadata accessor for NetworkReachabilityStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14[2] == v14[0] && v14[3] == v14[1])
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v12 = *(v1 + 8);
  v12(v5, v0);
  v12(v7, v0);

  return v11 & 1;
}

uint64_t sub_1000DDA18(char a1)
{
  *(v1 + 554) = a1;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v1 + 440) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v1 + 448) = swift_task_alloc();
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 464) = swift_task_alloc();
  *(v1 + 472) = swift_task_alloc();
  *(v1 + 480) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v1 + 488) = v5;
  v6 = *(v5 - 8);
  *(v1 + 496) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 504) = swift_task_alloc();
  *(v1 + 512) = swift_task_alloc();
  *(v1 + 520) = swift_task_alloc();
  *(v1 + 528) = swift_task_alloc();

  return _swift_task_switch(sub_1000DDBC4, 0, 0);
}

uint64_t sub_1000DDBC4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 536) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 544) = v3;
  *v3 = v0;
  v3[1] = sub_1000DDCC4;

  return unsafeBlocking<A>(_:)(v0 + 400, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_1000DDCC4()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v4 = *v0;

  return _swift_task_switch(sub_1000DDDDC, 0, 0);
}

uint64_t sub_1000DDDDC()
{
  v131 = v0;
  v4 = *(v0 + 400);
  v5 = sub_101074350(v4);
  v6 = sub_10107436C(v4);

  if (__OFADD__(v5, v6))
  {
    goto LABEL_98;
  }

  v111 = v5 + v6;
  v7 = *(v0 + 496);
  v8 = sub_10030DB78();
  v9 = *(v8 + 16);
  v119 = (v7 + 48);
  v3 = (v7 + 8);
  if (!v9)
  {
LABEL_40:

    v2 = 0;
    goto LABEL_84;
  }

  v1 = 0;
  v117 = (v7 + 32);
  v114 = v8;
  v10 = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v127 = *(v7 + 72);
  v121 = *(v8 + 16);
  v118 = (v7 + 8);
  v120 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  do
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 304) = 0x7365547265646E75;
    *(v0 + 312) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 552) == 1)
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 isInternalBuild];

      if (v12)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v13 = *(v0 + 480);
        v14 = *(v0 + 488);
        v15 = sub_1000076D4(*(v0 + 440), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v15, v13, &unk_101696900, &unk_10138B1E0);
        if ((*v119)(v13, 1, v14) != 1)
        {
          (*v117)(*(v0 + 520), *(v0 + 480), *(v0 + 488));
          goto LABEL_34;
        }

        sub_10000B3A8(*(v0 + 480), &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    *(v0 + 136) = My;
    *(v0 + 144) = sub_1000DFF1C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
    v17 = sub_1000280DC((v0 + 112));
    (*(*(My - 8) + 104))(v17, v120, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 112));
    if (My)
    {
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v18 = *(v0 + 376);
      if ((*(v0 + 368) & 1) == 0)
      {
        v19 = [objc_opt_self() defaultCenter];
        *(v0 + 96) = sub_1000DFF70;
        *(v0 + 104) = 0;
        *(v0 + 64) = _NSConcreteStackBlock;
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_100F0FA50;
        *(v0 + 88) = &unk_10160EB38;
        v20 = _Block_copy((v0 + 64));
        v21 = *(v0 + 104);

        v22 = [v19 addObserverForName:NSSystemClockDidChangeNotification object:0 queue:0 usingBlock:v20];
        _Block_release(v20);

        v9 = v121;
        swift_unknownObjectRelease();
      }

      if (qword_101694FE8 != -1)
      {
        swift_once();
      }

      if (*&qword_1016C0DA0 >= v18)
      {
        sub_100F10324(0);
      }

      Current = CFAbsoluteTimeGetCurrent();
      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v0 + 384) - *(v0 + 392) > 86400.0)
      {
        v25 = *(v0 + 424);
        v24 = *(v0 + 432);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v26 = type metadata accessor for TaskPriority();
        v27 = *(v26 - 8);
        (*(v27 + 56))(v24, 1, 1, v26);
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        *(v28 + 24) = 0;
        sub_1000D2A70(v24, v25, &qword_101698C00, &qword_10138B570);
        LODWORD(v24) = (*(v27 + 48))(v25, 1, v26);

        v29 = *(v0 + 424);
        if (v24 == 1)
        {
          sub_10000B3A8(*(v0 + 424), &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v27 + 8))(v29, v26);
        }

        v31 = *(v28 + 16);
        v32 = *(v28 + 24);
        swift_unknownObjectRetain();

        if (v31)
        {
          swift_getObjectType();
          v33 = dispatch thunk of Actor.unownedExecutor.getter();
          v35 = v34;
          swift_unknownObjectRelease();
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        sub_10000B3A8(*(v0 + 432), &qword_101698C00, &qword_10138B570);
        v36 = swift_allocObject();
        *(v36 + 16) = &unk_10138B620;
        *(v36 + 24) = v28;
        if (v35 | v33)
        {
          *(v0 + 224) = 0;
          *(v0 + 232) = 0;
          *(v0 + 240) = v33;
          *(v0 + 248) = v35;
        }

        v3 = v118;
        v9 = v121;
        swift_task_create();
      }

      v37 = *(v0 + 520);
      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      v30 = *(v0 + 520);
      Date.init()();
    }

LABEL_34:
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    v40 = *(v0 + 488);
    Date.addingTimeInterval(_:)();
    v41 = *v3;
    (*v3)(v39, v40);
    LOBYTE(v39) = static Date.> infix(_:_:)();
    v125 = v41;
    v41(v38, v40);
    if (v39)
    {
      goto LABEL_37;
    }

    ++v1;
    v10 += v127;
  }

  while (v9 != v1);
  v1 = v9;
LABEL_37:
  v42 = *(v114 + 16);
  if (v42 >= v1)
  {
    if (v1 != v42)
    {
      v112 = *(v114 + 16);
      v113 = 1;
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v112 = v1;
  v113 = -1;
  v1 = *(v114 + 16);
LABEL_42:
  v2 = 0;
  v122 = *(v114 + 16);
  while (2)
  {
    v43 = __OFADD__(v2, v113);
    v2 += v113;
    if (v43)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v1 == v42)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      swift_once();
      goto LABEL_85;
    }

    v115 = v2;
    do
    {
      v2 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (v2 == v42)
      {
        v1 = v42;
        goto LABEL_44;
      }

      if (v2 >= v42)
      {
        goto LABEL_95;
      }

      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      *(v0 + 320) = 0x7365547265646E75;
      *(v0 + 328) = 0xE900000000000074;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      if (*(v0 + 553) == 1)
      {
        v48 = [objc_opt_self() sharedInstance];
        v49 = [v48 isInternalBuild];

        if (v49)
        {
          if (qword_101694418 != -1)
          {
            swift_once();
          }

          v50 = *(v0 + 488);
          v51 = *(v0 + 456);
          v52 = sub_1000076D4(*(v0 + 440), qword_101696A00);
          swift_beginAccess();
          sub_1000D2A70(v52, v51, &unk_101696900, &unk_10138B1E0);
          if ((*v119)(v51, 1, v50) != 1)
          {
            (*v117)(*(v0 + 504), *(v0 + 456), *(v0 + 488));
            goto LABEL_49;
          }

          sub_10000B3A8(*(v0 + 456), &unk_101696900, &unk_10138B1E0);
        }
      }

      v53 = type metadata accessor for Feature.FindMy();
      *(v0 + 176) = v53;
      *(v0 + 184) = sub_1000DFF1C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
      v54 = sub_1000280DC((v0 + 152));
      (*(*(v53 - 8) + 104))(v54, v120, v53);
      LOBYTE(v53) = isFeatureEnabled(_:)();
      sub_100007BAC((v0 + 152));
      if (v53)
      {
        if (qword_101694FD8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v55 = *(v0 + 344);
        if ((*(v0 + 336) & 1) == 0)
        {
          v56 = [objc_opt_self() defaultCenter];
          *(v0 + 48) = sub_1000DFB44;
          *(v0 + 56) = 0;
          *(v0 + 16) = _NSConcreteStackBlock;
          *(v0 + 24) = 1107296256;
          *(v0 + 32) = sub_100F0FA50;
          *(v0 + 40) = &unk_10160EAC0;
          v57 = _Block_copy((v0 + 16));
          v58 = *(v0 + 56);

          v59 = [v56 addObserverForName:NSSystemClockDidChangeNotification object:0 queue:0 usingBlock:v57];
          _Block_release(v57);

          swift_unknownObjectRelease();
        }

        if (qword_101694FE8 != -1)
        {
          swift_once();
        }

        if (*&qword_1016C0DA0 >= v55)
        {
          sub_100F10324(0);
        }

        v60 = CFAbsoluteTimeGetCurrent();
        sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        if (v60 - *(v0 + 352) - *(v0 + 360) > 86400.0)
        {
          v61 = *(v0 + 408);
          v62 = *(v0 + 416);
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v63 = type metadata accessor for TaskPriority();
          v64 = *(v63 - 8);
          (*(v64 + 56))(v62, 1, 1, v63);
          v65 = swift_allocObject();
          *(v65 + 16) = 0;
          *(v65 + 24) = 0;
          sub_1000D2A70(v62, v61, &qword_101698C00, &qword_10138B570);
          LODWORD(v61) = (*(v64 + 48))(v61, 1, v63);

          v66 = *(v0 + 408);
          if (v61 == 1)
          {
            sub_10000B3A8(*(v0 + 408), &qword_101698C00, &qword_10138B570);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v64 + 8))(v66, v63);
          }

          v67 = *(v65 + 16);
          v68 = *(v65 + 24);
          swift_unknownObjectRetain();

          if (v67)
          {
            swift_getObjectType();
            v69 = dispatch thunk of Actor.unownedExecutor.getter();
            v71 = v70;
            swift_unknownObjectRelease();
          }

          else
          {
            v69 = 0;
            v71 = 0;
          }

          sub_10000B3A8(*(v0 + 416), &qword_101698C00, &qword_10138B570);
          v72 = swift_allocObject();
          *(v72 + 16) = &unk_10138B610;
          *(v72 + 24) = v65;
          if (v71 | v69)
          {
            *(v0 + 192) = 0;
            *(v0 + 200) = 0;
            *(v0 + 208) = v69;
            *(v0 + 216) = v71;
          }

          v3 = v118;
          swift_task_create();
        }

        v73 = *(v0 + 504);
        Date.init(timeIntervalSinceReferenceDate:)();
      }

      else
      {
        v44 = *(v0 + 504);
        Date.init()();
      }

LABEL_49:
      v45 = *(v0 + 504);
      v46 = *(v0 + 512);
      v47 = *(v0 + 488);
      Date.addingTimeInterval(_:)();
      v125(v45, v47);
      LOBYTE(v45) = static Date.> infix(_:_:)();
      v125(v46, v47);
      ++v1;
      v42 = v122;
    }

    while ((v45 & 1) == 0);
    v1 = v2;
LABEL_44:
    v2 = v115;
    if (v1 != v112)
    {
      continue;
    }

    break;
  }

LABEL_84:
  v74 = *(v0 + 472);
  v75 = sub_10030DB78();
  sub_10030BB60(v75, v74);

  v1 = v111;
  if (qword_101694420 != -1)
  {
    goto LABEL_99;
  }

LABEL_85:
  v76 = *(v0 + 464);
  v77 = *(v0 + 472);
  v78 = type metadata accessor for Logger();
  sub_1000076D4(v78, qword_10177A470);
  sub_1000D2A70(v77, v76, &unk_101696900, &unk_10138B1E0);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = *(v0 + 488);
    v82 = v2;
    v83 = *(v0 + 464);
    v84 = *(v0 + 448);
    v85 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v130 = v128;
    *v85 = 134219010;
    v116 = v82;
    *(v85 + 4) = v82;
    *(v85 + 12) = 2048;
    *(v85 + 14) = v1;
    *(v85 + 22) = 2082;
    sub_1000D2A70(v83, v84, &unk_101696900, &unk_10138B1E0);
    if ((*v119)(v84, 1, v81) == 1)
    {
      sub_10000B3A8(*(v0 + 448), &unk_101696900, &unk_10138B1E0);
      v86 = 0xE300000000000000;
      v87 = 7104878;
    }

    else
    {
      v91 = *(v0 + 488);
      v92 = *(v0 + 448);
      v93 = Date.debugDescription.getter();
      v94 = v3;
      v87 = v93;
      v86 = v95;
      (*v94)(v92, v91);
    }

    v2 = v116;
    v96 = *(v0 + 472);
    v97 = *(v0 + 554);
    sub_10000B3A8(*(v0 + 464), &unk_101696900, &unk_10138B1E0);
    v98 = sub_1000136BC(v87, v86, &v130);

    *(v85 + 24) = v98;
    *(v85 + 32) = 1024;
    *(v85 + 34) = v1 < v116;
    v1 = v111;
    *(v85 + 38) = 1024;
    *(v85 + 40) = v97;
    _os_log_impl(&_mh_execute_header, v79, v80, "Publish limit check: %ld / %ld, finderStartOfDay: %{public}s. Reached maximum: %{BOOL}d, on battery: %{BOOL}d.", v85, 0x2Cu);
    sub_100007BAC(v128);

    v90 = v96;
  }

  else
  {
    v89 = *(v0 + 464);
    v88 = *(v0 + 472);

    sub_10000B3A8(v89, &unk_101696900, &unk_10138B1E0);
    v90 = v88;
  }

  sub_10000B3A8(v90, &unk_101696900, &unk_10138B1E0);
  v99 = *(v0 + 528);
  v129 = v1 < v2;
  v100 = *(v0 + 520);
  v102 = *(v0 + 504);
  v101 = *(v0 + 512);
  v104 = *(v0 + 472);
  v103 = *(v0 + 480);
  v106 = *(v0 + 456);
  v105 = *(v0 + 464);
  v107 = *(v0 + 448);
  v108 = *(v0 + 432);
  v123 = *(v0 + 424);
  v124 = *(v0 + 416);
  v126 = *(v0 + 408);

  v109 = *(v0 + 8);

  return v109(v129);
}

double sub_1000DF124()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FindMyNetworkPublishDateProvider();
  swift_allocObject();
  swift_defaultActor_initialize();
  v9 = sub_10030DB78();
  sub_1012BAD7C(v9, v3);

  v10 = *(v5 + 48);
  if (v10(v3, 1, v4) == 1)
  {
    static Date.trustedNow.getter(v8);
    if (v10(v3, 1, v4) != 1)
    {
      sub_10000B3A8(v3, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
  }

  Date.timeIntervalSinceNow.getter();
  v12 = v11;

  (*(v5 + 8))(v8, v4);
  return fabs(v12);
}

uint64_t sub_1000DF31C(uint64_t a1, char a2)
{
  *(v2 + 544) = a2;
  v4 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  *(v2 + 496) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v2 + 504) = v5;
  v6 = *(v5 - 8);
  *(v2 + 512) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 520) = swift_task_alloc();

  return _swift_task_switch(sub_1000DF418, a1, 0);
}

uint64_t sub_1000DF418()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 496);
  type metadata accessor for FindMyNetworkPublishDateProvider();
  swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000DD4C0(v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 496);
    v5 = *(v0 + 504);
    static Date.trustedNow.getter(*(v0 + 520));
    if (v4(v6, 1, v5) != 1)
    {
      sub_10000B3A8(*(v0 + 496), &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(*(v0 + 512) + 32))(*(v0 + 520), *(v0 + 496), *(v0 + 504));
  }

  v7 = *(v0 + 520);
  v8 = *(v0 + 504);
  v9 = *(v0 + 512);
  Date.timeIntervalSinceNow.getter();
  *(v0 + 528) = v10;

  (*(v9 + 8))(v7, v8);
  *(v0 + 536) = sub_1000DF124();

  return _swift_task_switch(sub_1000DF57C, 0, 0);
}

uint64_t sub_1000DF57C()
{
  v1 = *(v0 + 544);
  if (v1 <= 3)
  {
    if (*(v0 + 544) <= 1u)
    {
      if (*(v0 + 544))
      {
        v21 = 0xEB00000000726577;
        v2 = 0x6F506D756964656DLL;
        goto LABEL_21;
      }

      v21 = 0xE800000000000000;
      v3 = 0x776F50776F6CLL;
      goto LABEL_20;
    }

    if (v1 == 2)
    {
      v2 = 0x65776F5068676968;
      v21 = 0xE900000000000072;
      goto LABEL_21;
    }

    v4 = 0x694669576ELL;
    goto LABEL_16;
  }

  if (*(v0 + 544) <= 5u)
  {
    if (v1 != 4)
    {
      v5 = 0xEF694669576E4F79;
      goto LABEL_19;
    }

    v4 = 0x6C6C65436ELL;
LABEL_16:
    v21 = v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    v2 = 0x4F7265776F506E6FLL;
    goto LABEL_21;
  }

  if (v1 == 6)
  {
    v5 = 0xEF6C6C65436E4F79;
LABEL_19:
    v21 = v5;
    v3 = 0x747461426E6FLL;
LABEL_20:
    v2 = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
    goto LABEL_21;
  }

  if (v1 == 7)
  {
    v21 = 0xEF79627261654E6ELL;
    v2 = 0x6F696E61706D6F63;
  }

  else
  {
    v21 = 0xEF646E756F466E65;
    v2 = 0x6857796669746F6ELL;
  }

LABEL_21:
  v6 = *(v0 + 536);
  v7 = *(v0 + 520);
  v8 = *(v0 + 496);
  v9 = fabs(*(v0 + 528));
  v10 = sub_10116887C(v6);
  v11 = sub_10116887C(v9);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B420;
  *(inited + 32) = 0x7265747461426E6FLL;
  *(inited + 40) = 0xE900000000000079;
  v13 = sub_1011298C8(&off_1016075C8);
  v14 = sub_1008ECAD0();
  v15 = sub_10112C0E0(v14, v13);

  *(inited + 48) = v15 & 1;
  *(inited + 88) = 0;
  *(inited + 96) = 0x696669576E6FLL;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 112) = sub_1000DD810() & 1;
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x800000010134ADD0;
  *(inited + 200) = &type metadata for Double;
  v16 = sub_1000DFA84();
  *(inited + 208) = v16;
  *(inited + 176) = v6;
  *(inited + 216) = 3;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x800000010134ADF0;
  *(inited + 264) = &type metadata for Double;
  *(inited + 272) = v16;
  *(inited + 240) = v9;
  *(inited + 280) = 3;
  *(inited + 288) = 0xD000000000000016;
  *(inited + 296) = 0x800000010134AE10;
  *(inited + 328) = &type metadata for String;
  *(inited + 336) = sub_1000DF96C();
  *(inited + 304) = v2;
  *(inited + 312) = v21;
  *(inited + 344) = 1;
  *(inited + 352) = 0xD000000000000019;
  *(inited + 360) = 0x800000010134AE30;
  *(inited + 392) = &type metadata for Int;
  v17 = sub_1000DFAD8();
  *(inited + 400) = v17;
  *(inited + 368) = v10;
  *(inited + 408) = 2;
  *(inited + 416) = 0xD000000000000019;
  *(inited + 424) = 0x800000010134AE50;
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = v17;
  *(inited + 432) = v11;
  *(inited + 472) = 2;
  v18 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();

  v19 = *(v0 + 8);

  return v19(v18);
}

unint64_t sub_1000DF96C()
{
  result = qword_1016B11C0;
  if (!qword_1016B11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B11C0);
  }

  return result;
}

unint64_t sub_1000DF9C0()
{
  result = qword_101696C98;
  if (!qword_101696C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696C98);
  }

  return result;
}

uint64_t sub_1000DFA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DFA84()
{
  result = qword_101696CB0;
  if (!qword_101696CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696CB0);
  }

  return result;
}

unint64_t sub_1000DFAD8()
{
  result = qword_1016B1D00;
  if (!qword_1016B1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1D00);
  }

  return result;
}

uint64_t sub_1000DFB78()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100F10214();
}

uint64_t sub_1000DFC24()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100F10214();
}

uint64_t sub_1000DFCD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100010F48(a1, v5);
}

uint64_t sub_1000DFD88(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 16);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100014744;

  return sub_1000D7794(a1, a2, v9, v6, v7);
}

uint64_t sub_1000DFE54(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014744;

  return sub_1000D8C18(a1, a2, v8, v6);
}

uint64_t sub_1000DFF1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for LostModeStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LostModeStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000E0114()
{
  v1 = 1684826487;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t sub_1000E015C()
{
  result = qword_101696CF0;
  if (!qword_101696CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696CF0);
  }

  return result;
}

uint64_t type metadata accessor for AirPodsPairingLockCheckEndPoint()
{
  result = qword_101696D50;
  if (!qword_101696D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E0224()
{
  result = type metadata accessor for AccountURLComponents();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMNAccountType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1000E02A8()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0xD000000000000017;
  v3._object = 0x800000010134B160;
  String.append(_:)(v3);
  v2(&v9, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C218;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 isInternalBuild];

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = [v4 stringForKey:v7];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_1000E0498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for FMNAccountType();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for AccessoryPairingLockCheckEndPoint()
{
  result = qword_101696DE8;
  if (!qword_101696DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E05A0()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  URLComponents.path.setter();
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C218;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 stringForKey:v5];

    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

void *sub_1000E0768()
{
  v15 = _swiftEmptyDictionarySingleton;
  sub_1000E0A3C();
  v1 = DataProtocol.intValue.getter();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Number of beacons: %{public}ld", v5, 0xCu);
  }

  if (v1 < 2)
  {
    return _swiftEmptyDictionarySingleton;
  }

  result = static MACAddress.length.getter();
  if (__OFADD__(result, 20))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = result + 21;
  if (__OFADD__(result + 20, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = (result + 22);
  if (__OFADD__(v7, 1))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v8 = Data.chunked(into:)();
  sub_1000E1260(v8, &v15);

  result = v15;
  if (v0)
  {
  }

  if (v15[2] != v1)
  {
    v9 = v15;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      *(v12 + 4) = v9[2];
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected number of serial numbers: %{public}ld", v12, 0xCu);
    }

    v13 = type metadata accessor for BinaryEncodingError();
    sub_1000E17C4(&qword_101696E20, &type metadata accessor for BinaryEncodingError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for BinaryEncodingError.encodingError(_:), v13);
    swift_willThrow();
  }

  return result;
}

unint64_t sub_1000E0A3C()
{
  result = qword_101698C90;
  if (!qword_101698C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698C90);
  }

  return result;
}

unint64_t sub_1000E0A90(uint64_t *a1, uint64_t a2)
{
  v79 = a2;
  v4 = sub_1000BC4D4(&qword_101696E28, &qword_1013EAD80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v69 - v6;
  v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v69 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = Data.subdata(in:)();
  v16 = v15;
  v77 = v14;
  v78 = v15;
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v74 = Data.trimmed.getter();
    v29 = v28;
    v30 = static MACAddress.length.getter();
    if (__OFADD__(v30, 20))
    {
      __break(1u);
    }

    else if (v30 + 20 >= 20)
    {
      v72 = v29;
      v73 = v2;
      v31 = v14;
      v14 = v16;
      v32 = Data.subdata(in:)();
      v34 = v33;
      sub_100017D5C(v32, v33);
      v70 = v32;
      v71 = v34;
      MACAddress.init(data:type:)();
      v35 = static MACAddress.length.getter();
      v36 = v35 + 20;
      if (!__OFADD__(v35, 20))
      {
        v37 = static MACAddress.length.getter();
        if (!__OFADD__(v37, 20))
        {
          if (!__OFADD__(v37 + 20, 1))
          {
            if (v37 + 21 >= v36)
            {
              v75 = Data.subdata(in:)();
              v76 = v38;
              v39 = static MACAddress.length.getter();
              v40 = v39 + 20;
              if (!__OFADD__(v39, 20))
              {
                result = v39 + 21;
                if (!__OFADD__(v40, 1))
                {
                  v41 = v13 >> 62;
                  if ((v13 >> 62) > 1)
                  {
                    v42 = v14;
                    if (v41 != 2)
                    {
                      v43 = 0;
                      goto LABEL_25;
                    }

                    v45 = *(v12 + 16);
                    v44 = *(v12 + 24);
                    v43 = v44 - v45;
                    if (!__OFSUB__(v44, v45))
                    {
                      goto LABEL_25;
                    }

                    __break(1u);
                  }

                  else
                  {
                    v42 = v14;
                    if (!v41)
                    {
                      v43 = BYTE6(v13);
LABEL_25:
                      v14 = v31;
                      goto LABEL_26;
                    }
                  }

                  if (__OFSUB__(HIDWORD(v12), v12))
                  {
                    goto LABEL_49;
                  }

                  v14 = v31;
                  v43 = HIDWORD(v12) - v12;
LABEL_26:
                  if (v43 >= result)
                  {
                    v73 = v11;
                    v12 = Data.subdata(in:)();
                    v13 = v46;
                    v77 = v12;
                    v78 = v46;
                    v47 = DataProtocol.intValue.getter();
                    v48 = v47 + 1;
                    v69 = v42;
                    if ((v47 + 1) > 2)
                    {
                      if (qword_1016950D0 == -1)
                      {
LABEL_32:
                        v54 = type metadata accessor for Logger();
                        sub_1000076D4(v54, qword_10177C418);
                        sub_100017D5C(v12, v13);
                        v55 = Logger.logObject.getter();
                        v56 = static os_log_type_t.error.getter();
                        sub_100016590(v12, v13);
                        if (os_log_type_enabled(v55, v56))
                        {
                          v57 = swift_slowAlloc();
                          v58 = swift_slowAlloc();
                          v77 = v58;
                          *v57 = 136446210;
                          v59 = Data.hexString.getter();
                          v61 = v13;
                          v62 = sub_1000136BC(v59, v60, &v77);

                          *(v57 + 4) = v62;
                          _os_log_impl(&_mh_execute_header, v55, v56, "Invalid pairing type %{public}s!", v57, 0xCu);
                          sub_100007BAC(v58);

                          v63 = v73;
                        }

                        else
                        {

                          v63 = v73;
                          v61 = v13;
                        }

                        v64 = v74;
                        v66 = v70;
                        v65 = v71;
                        v67 = type metadata accessor for BinaryDecodingError();
                        sub_1000E17C4(&qword_101696E30, &type metadata accessor for BinaryDecodingError);
                        swift_allocError();
                        (*(*(v67 - 8) + 104))(v68, enum case for BinaryDecodingError.decodingError(_:), v67);
                        swift_willThrow();
                        sub_100016590(v75, v76);
                        sub_100016590(v64, v72);
                        sub_100016590(v12, v61);
                        sub_100016590(v66, v65);
                        sub_100016590(v14, v69);
                        v53 = v63;
                        return sub_10000B3A8(v53, &qword_1016A40D0, &unk_10138BE70);
                      }

LABEL_47:
                      swift_once();
                      goto LABEL_32;
                    }

                    v77 = v75;
                    v78 = v76;
                    result = DataProtocol.intValue.getter();
                    if ((result & 0x8000000000000000) == 0)
                    {
                      v49 = result;
                      if (result <= 0xFF)
                      {
                        v50 = type metadata accessor for MultipartAccessoryPairingInfo(0);
                        v51 = v13;
                        v52 = v73;
                        sub_1000D2A70(v73, &v7[*(v50 + 24)], &qword_1016A40D0, &unk_10138BE70);
                        *v7 = v49;
                        v7[1] = 0;
                        v7[*(v50 + 28)] = v48;
                        (*(*(v50 - 8) + 56))(v7, 0, 1, v50);
                        sub_1001DD1AC(v7, v74, v72);
                        sub_100016590(v75, v76);
                        sub_100016590(v12, v51);
                        sub_100016590(v70, v71);
                        sub_100016590(v14, v69);
                        v53 = v52;
                        return sub_10000B3A8(v53, &qword_1016A40D0, &unk_10138BE70);
                      }

                      __break(1u);
LABEL_49:
                      __break(1u);
                      return result;
                    }

LABEL_46:
                    __break(1u);
                    goto LABEL_47;
                  }

LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C418);
  sub_100017D5C(v14, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  sub_100016590(v14, v16);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v77 = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v22 = Data.hexString.getter();
    v24 = sub_1000136BC(v22, v23, &v77);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Invalid serial number %{private,mask.hash}s", v20, 0x16u);
    sub_100007BAC(v21);
  }

  v25 = type metadata accessor for BinaryDecodingError();
  sub_1000E17C4(&qword_101696E30, &type metadata accessor for BinaryDecodingError);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, enum case for BinaryDecodingError.decodingError(_:), v25);
  swift_willThrow();
  return sub_100016590(v14, v16);
}

uint64_t sub_1000E1260(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    v6 = v3 - 1;
    do
    {
      v7 = v6;
      v8 = *v5++;
      v9 = v8;
      sub_100017D5C(v8, *(&v8 + 1));
      sub_1000E0A90(&v9, a2);
      result = sub_100016590(v9, *(&v9 + 1));
      if (v2)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1000E12E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v79 = a3;
  v80 = a4;
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = v68 - v11;
  v12 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = (v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v14);
  v19 = (v68 - v18);
  __chkstk_darwin(v17);
  v21 = v68 - v20;
  v22 = sub_1000E0768();
  if (v4)
  {
    return v19;
  }

  v23 = v22;
  v68[1] = 0;
  v79 = v12;
  v24 = v22 + 8;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22[8];
  v73 = (v25 + 63) >> 6;

  v29 = 0;
  v78 = v19;
  v19 = _swiftEmptyDictionarySingleton;
  v80 = v21;
  v69 = v24;
  v70 = v28;
  v71 = v6;
  v72 = v10;
  while (v27)
  {
    v77 = v19;
    v30 = v16;
LABEL_13:
    v32 = __clz(__rbit64(v27)) | (v29 << 6);
    v33 = v23[7];
    v34 = (v23[6] + 16 * v32);
    v35 = *v34;
    v36 = v34[1];
    v37 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
    v38 = v33 + *(*v37 + 72) * v32;
    v39 = v79;
    v40 = v80;
    sub_1000E180C(v38, v80 + *(v79 + 48));
    *v40 = v35;
    v40[1] = v36;
    v41 = v78;
    sub_1000D2A70(v40, v78, &qword_101696E38, &qword_1013D8510);
    v42 = v41[1];
    v75 = *v41;
    v76 = v42;
    sub_1000D2A70(v40, v30, &qword_101696E38, &qword_1013D8510);
    v43 = *v30;
    v44 = v30[1];
    sub_100017D5C(v35, v36);
    sub_100016590(v43, v44);
    v45 = *(v39 + 48);
    v16 = v30;
    v46 = v30 + v45;
    v47 = v30 + v45 + v37[8];
    v48 = v74;
    sub_1000D2A70(v47, v74, &qword_1016A40D0, &unk_10138BE70);
    sub_1000E1870(v46);
    v49 = v72;
    sub_1000E18CC(v48, v72);
    v50 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v50;
    v52 = v75;
    v53 = v76;
    v54 = sub_100771E30(v75, v76);
    v56 = v50[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      goto LABEL_25;
    }

    v60 = v55;
    if (v50[3] >= v59)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = v54;
        sub_1010052E8();
        v54 = v66;
      }
    }

    else
    {
      sub_100FE68E4(v59, isUniquelyReferenced_nonNull_native);
      v54 = sub_100771E30(v52, v53);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_27;
      }
    }

    v62 = v80;
    v19 = v81;
    if (v60)
    {
      sub_1000E193C(v49, v81[7] + *(v71 + 72) * v54);
      sub_100016590(v52, v53);
      sub_10000B3A8(v62, &qword_101696E38, &qword_1013D8510);
    }

    else
    {
      v81[(v54 >> 6) + 8] |= 1 << v54;
      v63 = (v19[6] + 16 * v54);
      *v63 = v52;
      v63[1] = v53;
      sub_1000E18CC(v49, v19[7] + *(v71 + 72) * v54);
      sub_10000B3A8(v62, &qword_101696E38, &qword_1013D8510);
      v64 = v19[2];
      v58 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v58)
      {
        goto LABEL_26;
      }

      v19[2] = v65;
    }

    v27 &= v27 - 1;
    sub_1000E1870(v78 + *(v79 + 48));
    v24 = v69;
    v23 = v70;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v73)
    {

      return v19;
    }

    v27 = v24[v31];
    ++v29;
    if (v27)
    {
      v77 = v19;
      v30 = v16;
      v29 = v31;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E17C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E180C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E1870(uint64_t a1)
{
  v2 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E18CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E193C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E19AC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177A4A0);
  sub_1000076D4(v0, qword_10177A4A0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

unint64_t sub_1000E1B08()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x64757469676E6F6CLL;
  if (v1 != 6)
  {
    v3 = 0x7369747265766461;
  }

  v4 = 0x6567617373656DLL;
  if (v1 != 4)
  {
    v4 = 0x656475746974616CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 2)
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E1C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E3700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E1C68(uint64_t a1)
{
  v2 = sub_1000E3028();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E1CA4(uint64_t a1)
{
  v2 = sub_1000E3028();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E1CE0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  Data.hash(into:)();
  v4 = type metadata accessor for LostModeInfoRecord();
  v5 = v4[5];
  type metadata accessor for UUID();
  sub_1000E39C4(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v6 = v1 + v4[6];
  dispatch thunk of Hashable.hash(into:)();
  v7 = (v1 + v4[7]);
  if (v7[1])
  {
    v8 = *v7;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = (v1 + v4[8]);
  if (v9[1])
  {
    v10 = *v9;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = *(v1 + v4[9]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  Hasher._combine(_:)(*&v11);
  v12 = *(v1 + v4[10]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  v13 = (v1 + v4[11]);
  v14 = *v13;
  v15 = v13[1];

  return Data.hash(into:)();
}

Swift::Int sub_1000E1E7C()
{
  Hasher.init(_seed:)();
  sub_1000E1CE0();
  return Hasher._finalize()();
}

Swift::Int sub_1000E1EC0()
{
  Hasher.init(_seed:)();
  sub_1000E1CE0();
  return Hasher._finalize()();
}

uint64_t sub_1000E1F00(id *a1)
{
  v2 = v1;
  [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for LostModeInfoRecord();
  v4 = v3[6];
  v5 = UUID.uuidString.getter();
  if (!v24)
  {

    goto LABEL_9;
  }

  if (*&v23 == v5 && v24 == v6)
  {

    goto LABEL_11;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
LABEL_9:
    v23 = COERCE_DOUBLE(UUID.uuidString.getter());
    v24 = v9;
    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  v10 = (v1 + v3[7]);
  v12 = *v10;
  v11 = *(v10 + 1);
  if (!v24)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v23 = v12;
    v24 = v11;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_21;
  }

  if (!v11)
  {

    v12 = 0.0;
    goto LABEL_20;
  }

  if (*&v23 == *&v12 && v24 == v11)
  {

    goto LABEL_21;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v14 = (v2 + v3[8]);
  v16 = *v14;
  v15 = *(v14 + 1);
  if (!v24)
  {
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (!v15)
  {

    v16 = 0.0;
    goto LABEL_30;
  }

  if (*&v23 != *&v16 || v24 != v15)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_31;
    }

LABEL_30:
    v23 = v16;
    v24 = v15;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_31;
  }

LABEL_31:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v24 & 1) != 0 || v23 != *(v2 + v3[9]))
  {
    v23 = *(v2 + v3[9]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  if ((v24 & 1) != 0 || v23 != *(v2 + v3[10]))
  {
    v23 = *(v2 + v3[10]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v18 = v2 + v3[11];
  v20 = *v18;
  v19 = *(v18 + 8);
  if (v24 >> 60 == 15)
  {
    if (v19 >> 60 == 15)
    {
      sub_100017D5C(*v18, *(v18 + 8));
      swift_unknownObjectRelease();
      return sub_100006654(*&v23, v24);
    }
  }

  else if (v19 >> 60 != 15)
  {
    sub_100017D5C(*v18, *(v18 + 8));
    sub_100017D5C(v20, v19);
    sub_10002E98C(*&v23, v24);
    v22 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*&v23, v24, v20, v19);
    sub_100016590(v20, v19);
    sub_100006654(*&v23, v24);
    sub_100006654(v20, v19);
    sub_100006654(*&v23, v24);
    if (v22)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_42;
  }

  sub_100017D5C(*v18, *(v18 + 8));
  sub_100006654(*&v23, v24);
  sub_100006654(v20, v19);
LABEL_42:
  sub_100017D5C(*v18, *(v18 + 8));
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000E24B4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_101696E68, &qword_10138B860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1000E3028();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v27 = *v3;
  v28 = v11;
  v29 = 0;
  sub_100017D5C(v27, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v27, v28);
    v26 = type metadata accessor for LostModeInfoRecord();
    v13 = v26[5];
    LOBYTE(v27) = 1;
    type metadata accessor for UUID();
    sub_1000E39C4(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v26[6];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v26[7]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v27) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v26[8]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + v26[9]);
    LOBYTE(v27) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + v26[10]);
    LOBYTE(v27) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = (v3 + v26[11]);
    v24 = v23[1];
    v27 = *v23;
    v28 = v24;
    v29 = 7;
    sub_100017D5C(v27, v24);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v27, v28);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000E2820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for UUID();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v36 - v8;
  v10 = sub_1000BC4D4(&qword_101696E58, &qword_10138B858);
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  __chkstk_darwin(v10);
  v13 = v36 - v12;
  v14 = type metadata accessor for LostModeInfoRecord();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  sub_1000035D0(a1, v18);
  sub_1000E3028();
  v42 = v13;
  v20 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100007BAC(v44);
  }

  v37 = v7;
  v21 = v40;
  v43 = v14;
  v22 = v17;
  v46 = 0;
  v23 = sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v17 = v45;
  LOBYTE(v45) = 1;
  sub_1000E39C4(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36[0] = v23;
  v24 = *(v39 + 32);
  v24(v22 + v43[5], v9, v3);
  LOBYTE(v45) = 2;
  v25 = v37;
  v36[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24(v22 + v43[6], v25, v3);
  LOBYTE(v45) = 3;
  v26 = v41;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = (v22 + v43[7]);
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v45) = 4;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = (v22 + v43[8]);
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v45) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v22 + v43[9]) = v33;
  LOBYTE(v45) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v22 + v43[10]) = v34;
  v46 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 8))(v42, v26);
  *(v22 + v43[11]) = v45;
  sub_1000E30D0(v22, v38);
  sub_100007BAC(v44);
  return sub_1000E3134(v22);
}

uint64_t sub_1000E2E28(uint64_t a1)
{
  if (qword_101694430 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for URL();
  sub_1000076D4(v3, qword_10177A4A0);
  v4 = v1 + *(a1 + 24);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_1000E2F00(uint64_t a1)
{
  *(a1 + 8) = sub_1000E39C4(&qword_101696E40, type metadata accessor for LostModeInfoRecord);
  result = sub_1000E39C4(&qword_101696E48, type metadata accessor for LostModeInfoRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for LostModeInfoRecord()
{
  result = qword_101696EC8;
  if (!qword_101696EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E2FD0(uint64_t a1)
{
  result = sub_1000E39C4(&qword_101696E50, type metadata accessor for LostModeInfoRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E3028()
{
  result = qword_101696E60;
  if (!qword_101696E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696E60);
  }

  return result;
}

unint64_t sub_1000E307C()
{
  result = qword_101697F30;
  if (!qword_101697F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F30);
  }

  return result;
}

uint64_t sub_1000E30D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfoRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3134(uint64_t a1)
{
  v2 = type metadata accessor for LostModeInfoRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000E3190()
{
  result = qword_101697F50;
  if (!qword_101697F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceEventSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceEventSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1000E335C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000E3404();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000E3404()
{
  if (!qword_1016BD350)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BD350);
    }
  }
}

unint64_t sub_1000E34A0()
{
  result = qword_101696F20;
  if (!qword_101696F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696F20);
  }

  return result;
}

unint64_t sub_1000E34F8()
{
  result = qword_101696F28;
  if (!qword_101696F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696F28);
  }

  return result;
}

unint64_t sub_1000E3550()
{
  result = qword_101696F30;
  if (!qword_101696F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696F30);
  }

  return result;
}

uint64_t sub_1000E35A4(uint64_t a1, uint64_t a2)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LostModeInfoRecord();
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[7];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  v18 = *v14 == *v16 && v15 == v17;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (*(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v19 = v4[11];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = *v22;
  v24 = v22[1];

  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v21, v23, v24);
}

uint64_t sub_1000E3700(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xED0000746E656D65)
  {

    return 7;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1000E39C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for KeyDropBeaconGroupAttributes()
{
  result = qword_101696F90;
  if (!qword_101696F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E3A80()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000E3AF4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_101696FC8, &qword_10138BA80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1000E418C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = 0;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for KeyDropBeaconGroupAttributes() + 20));
    v13[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000E3C98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = type metadata accessor for UUID();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&qword_101696FD8, &qword_10138BA88);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for KeyDropBeaconGroupAttributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1000E418C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v20 = v13;
  v15 = v22;
  v27 = 0;
  sub_1000096E8(&qword_101698300);
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v20;
  (*(v15 + 32))(v20, v6, v16);
  v26 = 1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v23 + 8))(v9, v25);
  *(v17 + *(v10 + 20)) = v18;
  sub_1000E41E0(v17, v21);
  sub_100007BAC(a1);
  return sub_1000E4244(v17);
}

uint64_t sub_1000E3FC0()
{
  if (*v0)
  {
    result = 0x644974726170;
  }

  else
  {
    result = 0x65644970756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_1000E4004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000)
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

uint64_t sub_1000E40E4(uint64_t a1)
{
  v2 = sub_1000E418C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E4120(uint64_t a1)
{
  v2 = sub_1000E418C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000E418C()
{
  result = qword_101696FD0;
  if (!qword_101696FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696FD0);
  }

  return result;
}

uint64_t sub_1000E41E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropBeaconGroupAttributes();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4244(uint64_t a1)
{
  v2 = type metadata accessor for KeyDropBeaconGroupAttributes();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DatabaseState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E43F4()
{
  result = qword_101696FE0;
  if (!qword_101696FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696FE0);
  }

  return result;
}

unint64_t sub_1000E444C()
{
  result = qword_101696FE8;
  if (!qword_101696FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696FE8);
  }

  return result;
}

unint64_t sub_1000E44A4()
{
  result = qword_101696FF0;
  if (!qword_101696FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696FF0);
  }

  return result;
}

uint64_t sub_1000E44F8(uint64_t a1, uint64_t *a2)
{
  v55 = a2;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v54 = &v51 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return result;
  }

  v11 = (a1 + 40);
  *&v8 = 141558275;
  v52 = v8;
  while (1)
  {
    v15 = *(v11 - 1);
    v14 = *v11;
    sub_100017D5C(v15, *v11);
    v16 = Data.subdata(in:)();
    v18 = v17;
    v59[0] = v16;
    v59[1] = v17;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000076D4(v19, qword_10177C418);
      sub_100017D5C(v16, v18);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      sub_100016590(v16, v18);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v60 = v10;
        v23 = v22;
        v24 = swift_slowAlloc();
        v58 = v14;
        v59[0] = v24;
        v25 = v24;
        *v23 = v52;
        *(v23 + 4) = 1752392040;
        *(v23 + 12) = 2081;
        v26 = Data.hexString.getter();
        v57 = v15;
        v28 = sub_1000136BC(v26, v27, v59);

        *(v23 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v20, v21, "Invalid serial number %{private,mask.hash}s", v23, 0x16u);
        sub_100007BAC(v25);

        v10 = v60;

        sub_100016590(v16, v18);

        v12 = v57;
        v13 = v58;
      }

      else
      {

        sub_100016590(v16, v18);
        v12 = v15;
        v13 = v14;
      }

      result = sub_100016590(v12, v13);
      goto LABEL_5;
    }

    v57 = v15;
    v58 = v14;
    v60 = v10;
    v29 = Data.trimmed.getter();
    v31 = v30;
    v32 = type metadata accessor for MACAddress();
    v33 = v54;
    (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
    sub_1000D2AD8(v33, v56, &qword_1016A40D0, &unk_10138BE70);
    v34 = v55;
    v35 = *v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v34;
    v59[0] = v37;
    v39 = sub_100771E30(v29, v31);
    v40 = *(v37 + 16);
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      break;
    }

    v43 = v38;
    if (*(v37 + 24) >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v46 = v59[0];
        if ((v38 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1010052E8();
        v46 = v59[0];
        if ((v43 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_100FE68E4(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_100771E30(v29, v31);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_26;
      }

      v39 = v44;
      v46 = v59[0];
      if ((v43 & 1) == 0)
      {
LABEL_15:
        v46[(v39 >> 6) + 8] |= 1 << v39;
        v47 = (v46[6] + 16 * v39);
        *v47 = v29;
        v47[1] = v31;
        sub_1000D2AD8(v56, v46[7] + *(v53 + 72) * v39, &qword_1016A40D0, &unk_10138BE70);
        v48 = v46[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_25;
        }

        v46[2] = v50;
        goto LABEL_20;
      }
    }

    sub_10002311C(v56, v46[7] + *(v53 + 72) * v39, &qword_1016A40D0, &unk_10138BE70);
    sub_100016590(v29, v31);
LABEL_20:
    *v55 = v46;
    sub_100016590(v16, v18);
    result = sub_100016590(v57, v58);
    v10 = v60;
LABEL_5:
    v11 += 2;
    if (!--v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E49CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A4B8);
  sub_1000076D4(v0, qword_10177A4B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E4A50()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_101696FF8);
  v1 = sub_1000076D4(v0, qword_101696FF8);
  if (qword_101694438 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A4B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000E4B18()
{
  result = Data.init(base64Encoded:options:)();
  qword_101697010 = result;
  *algn_101697018 = v1;
  return result;
}

unint64_t sub_1000E4B58()
{
  v1 = type metadata accessor for StandaloneBeacon();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AirPodsLEPairingService.BeaconCreationResult();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100101E08(v0, v16, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100101DA0(v16, v4, type metadata accessor for StandaloneBeacon);
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v30 = 0xD000000000000014;
    v31 = 0x800000010134B540;
    type metadata accessor for UUID();
    sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = v30;
    v20 = type metadata accessor for StandaloneBeacon;
    v21 = v4;
  }

  else
  {
    v22 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    sub_100101DA0(v16, v12, type metadata accessor for OwnedBeaconGroup);
    sub_100101DA0(&v16[v22], v8, type metadata accessor for OwnedBeaconRecord);
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v30 = 0xD000000000000010;
    v31 = 0x800000010134B560;
    v23 = *(v9 + 24);
    type metadata accessor for UUID();
    sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x6E6F63616562202CLL;
    v25._object = 0xEA0000000000203ALL;
    String.append(_:)(v25);
    v26 = &v8[*(v5 + 20)];
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 41;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v19 = v30;
    sub_100101E70(v8, type metadata accessor for OwnedBeaconRecord);
    v20 = type metadata accessor for OwnedBeaconGroup;
    v21 = v12;
  }

  sub_100101E70(v21, v20);
  return v19;
}

uint64_t sub_1000E5314(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000017;
  *(v1 + 120) = 0x800000010138BC70;
  v4 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v5 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  *(v1 + 192) = 0u;
  *(v1 + 144) = v5;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0xF000000000000000;
  *(v1 + 176) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0;
  *(v1 + 274) = 1;
  v6 = static Data.random(bytes:)();
  v8 = v7;
  v9 = type metadata accessor for AccessoryPairingInfo(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_100017D5C(v6, v8);
  v12 = sub_10024C9E8(v6, v8);
  if (v12)
  {
    *(v1 + 184) = v12;
    type metadata accessor for AccessoryPairingValidator();
    v13 = swift_allocObject();
    v14 = type metadata accessor for DeviceIdentityUtility();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_100016590(v6, v8);
    v18 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
    *(v17 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
    *(v17 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
    *(v17 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
    *(v13 + 16) = v17;
    *(v13 + 24) = 0;
    *(v2 + 128) = v13;
    *(v2 + 136) = a1;
  }

  else
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_101696FF8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing critical information to init pairing ", v23, 2u);
    }

    sub_100016590(v6, v8);

    v24 = *(v2 + 120);

    v25 = *(v2 + 152);

    sub_100006654(*(v2 + 160), *(v2 + 168));
    sub_10000B3A8(v2 + 192, &qword_101697380, &unk_10138BEF0);
    sub_10000B3A8(v2 + 232, &qword_1016973E8, &unk_10138BFA0);
    type metadata accessor for AirPodsLEPairingService();
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_1000E5640()
{
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_101696FF8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AirPodsLEPairingService: Starting up.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E5758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 121) = v10;
  *(v8 + 120) = a8;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  return _swift_task_switch(sub_1000E5794, 0, 0);
}

uint64_t sub_1000E5794()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_1000E58B4;
    v4 = *(v0 + 121);
    v5 = *(v0 + 120);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);

    return sub_1000E5A60(v10, v8, v9, v6, v7, v5, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000E58B4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1000E59FC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1000E59D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E59FC()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_1000E5A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 7840) = v7;
  *(v8 + 7832) = a5;
  *(v8 + 7824) = a4;
  *(v8 + 8662) = a7;
  *(v8 + 7816) = a3;
  *(v8 + 8661) = a6;
  *(v8 + 7808) = a2;
  *(v8 + 7800) = a1;
  v9 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v8 + 7848) = swift_task_alloc();
  v10 = type metadata accessor for BinaryDecoder();
  *(v8 + 7856) = v10;
  v11 = *(v10 - 8);
  *(v8 + 7864) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 7872) = swift_task_alloc();
  v13 = type metadata accessor for BinaryEncoder();
  *(v8 + 7880) = v13;
  v14 = *(v13 - 8);
  *(v8 + 7888) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 7896) = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  *(v8 + 7904) = v16;
  v17 = *(v16 - 8);
  *(v8 + 7912) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 7920) = swift_task_alloc();
  v19 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  *(v8 + 7928) = v19;
  v20 = *(v19 - 8);
  *(v8 + 7936) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 7944) = swift_task_alloc();
  v22 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  *(v8 + 7952) = swift_task_alloc();
  v23 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  *(v8 + 7960) = swift_task_alloc();
  v24 = type metadata accessor for Peripheral.ConnectionOptions();
  *(v8 + 7968) = v24;
  v25 = *(v24 - 8);
  *(v8 + 7976) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 7984) = swift_task_alloc();
  v27 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  *(v8 + 7992) = swift_task_alloc();
  v28 = type metadata accessor for AccessoryProductInfo();
  *(v8 + 8000) = v28;
  v29 = *(v28 - 8);
  *(v8 + 8008) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 8016) = swift_task_alloc();
  *(v8 + 8024) = swift_task_alloc();
  v31 = type metadata accessor for UUID();
  *(v8 + 8032) = v31;
  v32 = *(v31 - 8);
  *(v8 + 8040) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 8048) = swift_task_alloc();
  v34 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  *(v8 + 8056) = swift_task_alloc();
  *(v8 + 8064) = swift_task_alloc();
  *(v8 + 8072) = swift_task_alloc();
  v35 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  *(v8 + 8080) = swift_task_alloc();
  *(v8 + 8088) = swift_task_alloc();
  v36 = *(*(type metadata accessor for RawAccessoryMetadata(0) - 8) + 64) + 15;
  *(v8 + 8096) = swift_task_alloc();
  v37 = *(*(type metadata accessor for AccessoryMetadata(0) - 8) + 64) + 15;
  *(v8 + 8104) = swift_task_alloc();
  *(v8 + 8112) = swift_task_alloc();
  v38 = type metadata accessor for CentralManager.State();
  *(v8 + 8120) = v38;
  v39 = *(v38 - 8);
  *(v8 + 8128) = v39;
  v40 = *(v39 + 64) + 15;
  *(v8 + 8136) = swift_task_alloc();
  v41 = type metadata accessor for MACAddress();
  *(v8 + 8144) = v41;
  v42 = *(v41 - 8);
  *(v8 + 8152) = v42;
  *(v8 + 8160) = *(v42 + 64);
  *(v8 + 8168) = swift_task_alloc();
  *(v8 + 8176) = swift_task_alloc();

  return _swift_task_switch(sub_1000E6034, v7, 0);
}

uint64_t sub_1000E6034()
{
  v37 = v0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v1 = v0 + 1024;
  v2 = v0[1022];
  v3 = v0[1019];
  v4 = v0[1018];
  v5 = v0[976];
  v6 = type metadata accessor for Logger();
  v0[1023] = sub_1000076D4(v6, qword_101696FF8);
  v7 = *(v3 + 16);
  v0[1024] = v7;
  v0[1025] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[1022];
  v12 = v0[1019];
  v13 = v0[1018];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v14 = 136446210;
    sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = v15;
    v1 = v0 + 1024;
    v19 = sub_1000136BC(v18, v17, &v36);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing AirPods LE with MAC address %{public}s", v14, 0xCu);
    sub_100007BAC(v35);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = v0[980];
  v21 = *(v1 + 470);
  *(v20 + 272) = *(v1 + 469);
  *(*(v20 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = v21;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v6, qword_10177C418);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Pairing LE using CCCKG2", v24, 2u);
  }

  v25 = v0[1017];
  v26 = v0[1016];
  v27 = v0[1015];

  (*(v26 + 104))(v25, enum case for CentralManager.State.poweredOn(_:), v27);
  v28 = type metadata accessor for CentralManager();
  v29 = sub_100102448(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  v30 = async function pointer to dispatch thunk of CentralManagerProtocol.await(state:)[1];
  v31 = swift_task_alloc();
  v0[1026] = v31;
  *v31 = v0;
  v31[1] = sub_1000E6438;
  v32 = v0[1017];
  v33 = v0[975];

  return dispatch thunk of CentralManagerProtocol.await(state:)(v32, v28, v29);
}

uint64_t sub_1000E6438()
{
  v2 = *v1;
  v3 = *(*v1 + 8208);
  v4 = *v1;
  *(*v1 + 8216) = v0;

  v5 = v2[1017];
  v6 = v2[1016];
  v7 = v2[1015];
  v8 = v2[980];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_1000E686C;
  }

  else
  {
    v9 = sub_1000E65B4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000E65B4()
{
  v1 = *(v0 + 8200);
  v2 = *(v0 + 8168);
  v3 = *(v0 + 8160);
  v4 = *(v0 + 8152);
  v5 = *(v0 + 8144);
  v6 = *(v0 + 7840);
  v7 = *(v0 + 7800);
  (*(v0 + 0x2000))(v2, *(v0 + 7808), v5);
  v8 = *(v4 + 80);
  *(v0 + 8656) = v8;
  v9 = (v8 + 32) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 8224) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  v11 = *(v4 + 32);
  *(v0 + 8232) = v11;
  *(v0 + 8240) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v2, v5);
  v12 = async function pointer to withTimeout<A>(_:block:)[1];

  v13 = swift_task_alloc();
  *(v0 + 8248) = v13;
  v14 = type metadata accessor for Peripheral();
  *(v0 + 8256) = v14;
  *v13 = v0;
  v13[1] = sub_1000E6744;

  return withTimeout<A>(_:block:)(v0 + 7760, 0x40AAD21B3B700000, 3, &unk_10138BDE0, v10, v14);
}

uint64_t sub_1000E6744()
{
  v2 = *v1;
  v3 = *(*v1 + 8248);
  v9 = *v1;
  *(*v1 + 8264) = v0;

  if (v0)
  {
    v4 = *(v2 + 7840);
    v5 = sub_1000E6BDC;
  }

  else
  {
    v6 = *(v2 + 8224);
    v7 = *(v2 + 7840);

    v5 = sub_1000E6A1C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000E686C()
{
  v26 = v0[1027];
  v1 = v0[1022];
  v2 = v0[1021];
  v3 = v0[1017];
  v4 = v0[1014];
  v5 = v0[1013];
  v6 = v0[1012];
  v7 = v0[1011];
  v8 = v0[1010];
  v9 = v0[1009];
  v10 = v0[1008];
  v13 = v0[1007];
  v14 = v0[1006];
  v15 = v0[1003];
  v16 = v0[1002];
  v17 = v0[999];
  v18 = v0[998];
  v19 = v0[995];
  v20 = v0[994];
  v21 = v0[993];
  v22 = v0[990];
  v23 = v0[987];
  v24 = v0[984];
  v25 = v0[981];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000E6A1C()
{
  v14 = v0;
  v1 = v0[1023];
  v2 = v0[970];
  v0[1034] = v2;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[1032];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[974] = v2;
    sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    v11 = sub_1000136BC(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Reading AIS from peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  return _swift_task_switch(sub_1000E6D94, 0, 0);
}

uint64_t sub_1000E6BDC()
{
  v1 = v0[1028];

  v27 = v0[1033];
  v2 = v0[1022];
  v3 = v0[1021];
  v4 = v0[1017];
  v5 = v0[1014];
  v6 = v0[1013];
  v7 = v0[1012];
  v8 = v0[1011];
  v9 = v0[1010];
  v10 = v0[1009];
  v11 = v0[1008];
  v14 = v0[1007];
  v15 = v0[1006];
  v16 = v0[1003];
  v17 = v0[1002];
  v18 = v0[999];
  v19 = v0[998];
  v20 = v0[995];
  v21 = v0[994];
  v22 = v0[993];
  v23 = v0[990];
  v24 = v0[987];
  v25 = v0[984];
  v26 = v0[981];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000E6D94()
{
  v1 = v0[1011];
  v2 = type metadata accessor for ConnectUseCase();
  v0[1035] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[1036] = v4;
  v0[1037] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[1038] = v5;
  *v5 = v0;
  v5[1] = sub_1000E6EA0;
  v6 = v0[1034];
  v7 = v0[1012];
  v8 = v0[1011];

  return sub_1011FC38C(v7, v6, 2, v8);
}

uint64_t sub_1000E6EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 8304);
  v4 = *v1;
  *(*v1 + 8312) = v0;

  sub_10000B3A8(*(v2 + 8088), &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v5 = sub_1000E707C;
  }

  else
  {
    v5 = sub_1000E6FE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E6FE4()
{
  v1 = v0[1039];
  sub_100232154(v0[1012], v0[1014]);
  v0[1040] = v1;
  if (v1)
  {
    v0[1041] = v1;
    v2 = v0[980];
    v3 = sub_1000E7B18;
  }

  else
  {
    v2 = v0[980];
    v3 = sub_1000E70A0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000E70A0()
{
  v104 = v0;
  v1 = *(v0 + 8184);
  sub_100101E08(*(v0 + 8112), *(v0 + 8104), type metadata accessor for AccessoryMetadata);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 8104);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v103[0] = v7;
    *v6 = 136446210;
    v8 = sub_100230E34();
    v10 = v9;
    sub_100101E70(v5, type metadata accessor for AccessoryMetadata);
    v11 = sub_1000136BC(v8, v10, v103);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "AIS: %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {

    sub_100101E70(v5, type metadata accessor for AccessoryMetadata);
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 7736) = 0x7365547265646E75;
  *(v0 + 7744) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 8660) == 1)
  {
    v12 = *(v0 + 8072);
    v13 = *(v0 + 8048);
    v14 = *(v0 + 8040);
    v15 = *(v0 + 8032);
    v16 = *(v0 + 8008);
    v17 = *(v0 + 8000);
    type metadata accessor for BeaconStore(0);
    UUID.init()();
    sub_10110F124(0, v12);
    (*(v14 + 8))(v13, v15);
    (*(v16 + 56))(v12, 0, 1, v17);
    v18 = *(v0 + 8320);
    v19 = *(v0 + 8056);
    v20 = *(v0 + 8008);
    v21 = *(v0 + 8000);
    sub_1000D2A70(*(v0 + 8072), v19, &qword_101697268, &qword_101394FE0);
    v22 = (*(v20 + 48))(v19, 1, v21);
    v23 = *(v0 + 8184);
    v24 = *(v0 + 8056);
    if (v22 == 1)
    {
      sub_10000B3A8(v24, &qword_101697268, &qword_101394FE0);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Missing product info!", v27, 2u);
      }

      v28 = *(v0 + 8272);
      v29 = *(v0 + 8112);
      v30 = *(v0 + 8072);

      sub_100100904();
      swift_allocError();
      *v31 = 0x800000000000000CLL;
      swift_willThrow();

      goto LABEL_19;
    }

    v36 = *(v0 + 8024);
    v37 = *(v0 + 8016);
    sub_100101DA0(v24, v36, type metadata accessor for AccessoryProductInfo);
    sub_100101E08(v36, v37, type metadata accessor for AccessoryProductInfo);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 8016);
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v103[0] = v43;
      *v42 = 136446210;
      v44 = sub_1011A0624(v43);
      v46 = v45;
      sub_100101E70(v41, type metadata accessor for AccessoryProductInfo);
      v47 = sub_1000136BC(v44, v46, v103);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "Product info: %{public}s)", v42, 0xCu);
      sub_100007BAC(v43);
    }

    else
    {

      sub_100101E70(v41, type metadata accessor for AccessoryProductInfo);
    }

    v48 = *(v0 + 7840);
    sub_1000EF008(*(v0 + 8112), *(v0 + 8024));
    if (v18)
    {
      v49 = *(v0 + 8272);
      v29 = *(v0 + 8112);
      v30 = *(v0 + 8072);
      v50 = *(v0 + 8024);

      sub_100101E70(v50, type metadata accessor for AccessoryProductInfo);
LABEL_19:
      sub_10000B3A8(v30, &qword_101697268, &qword_101394FE0);
      sub_100101E70(v29, type metadata accessor for AccessoryMetadata);
      v51 = *(v0 + 8176);
      v52 = *(v0 + 8168);
      v53 = *(v0 + 8136);
      v54 = *(v0 + 8112);
      v55 = *(v0 + 8104);
      v56 = *(v0 + 8096);
      v57 = *(v0 + 8088);
      v58 = *(v0 + 8080);
      v59 = *(v0 + 8072);
      v60 = *(v0 + 8064);
      v87 = *(v0 + 8056);
      v88 = *(v0 + 8048);
      v89 = *(v0 + 8024);
      v90 = *(v0 + 8016);
      v91 = *(v0 + 7992);
      v92 = *(v0 + 7984);
      v93 = *(v0 + 7960);
      v94 = *(v0 + 7952);
      v95 = *(v0 + 7944);
      v96 = *(v0 + 7920);
      v97 = *(v0 + 7896);
      v98 = *(v0 + 7872);
      v100 = *(v0 + 7848);

      v61 = *(v0 + 8);

      return v61();
    }

    v62 = *(v0 + 8296);
    v63 = *(v0 + 8288);
    v64 = *(v0 + 8280);
    v65 = *(v0 + 8080);
    v102 = *(v0 + 7992);
    v66 = *(v0 + 7976);
    v67 = *(v0 + 7968);
    v99 = *(v0 + 7984);
    v101 = *(v0 + 7960);
    v68 = *(v0 + 7952);
    v69 = *(v0 + 7840);
    v70 = *(v0 + 7832);
    v71 = *(v0 + 7824);
    v72 = *(v69 + 160);
    v73 = *(v69 + 168);
    *(v69 + 160) = v71;
    *(v69 + 168) = v70;
    sub_10002E98C(v71, v70);
    sub_100006654(v72, v73);
    v63(v65, 1, 1, v64);
    sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
    v74 = *(v66 + 72);
    v75 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_101385D80;
    static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
    *(v0 + 7752) = v76;
    sub_100102448(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions);
    sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
    sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v77 = type metadata accessor for PeripheralPairingInfo();
    (*(*(v77 - 8) + 56))(v101, 1, 1, v77);
    v78 = type metadata accessor for LongTermKey();
    (*(*(v78 - 8) + 56))(v68, 1, 1, v78);
    Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
    v79 = type metadata accessor for Peripheral.Options();
    (*(*(v79 - 8) + 56))(v102, 0, 1, v79);
    v80 = sub_100102448(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    *(v0 + 8352) = v80;
    v81 = async function pointer to dispatch thunk of PeripheralProtocol.connect(useCase:options:)[1];
    v82 = swift_task_alloc();
    *(v0 + 8360) = v82;
    *v82 = v0;
    v82[1] = sub_1000E7DFC;
    v83 = *(v0 + 8272);
    v84 = *(v0 + 8256);
    v85 = *(v0 + 8080);
    v86 = *(v0 + 7992);

    return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v85, v86, v84, v80);
  }

  else
  {
    type metadata accessor for AccessoryMetadataManager();
    v32 = swift_task_alloc();
    *(v0 + 8336) = v32;
    *v32 = v0;
    v32[1] = sub_1000E7CD0;
    v33 = *(v0 + 8112);
    v34 = *(v0 + 8064);

    return sub_100359F48(v34, v33, 3);
  }
}

uint64_t sub_1000E7B18()
{
  v1 = v0[1034];

  v27 = v0[1041];
  v2 = v0[1022];
  v3 = v0[1021];
  v4 = v0[1017];
  v5 = v0[1014];
  v6 = v0[1013];
  v7 = v0[1012];
  v8 = v0[1011];
  v9 = v0[1010];
  v10 = v0[1009];
  v11 = v0[1008];
  v14 = v0[1007];
  v15 = v0[1006];
  v16 = v0[1003];
  v17 = v0[1002];
  v18 = v0[999];
  v19 = v0[998];
  v20 = v0[995];
  v21 = v0[994];
  v22 = v0[993];
  v23 = v0[990];
  v24 = v0[987];
  v25 = v0[984];
  v26 = v0[981];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000E7CD0()
{
  v2 = *v1;
  v3 = *(*v1 + 8336);
  v4 = *v1;
  *(*v1 + 8344) = v0;

  v5 = *(v2 + 7840);
  if (v0)
  {
    v6 = sub_1000ECC14;
  }

  else
  {
    v6 = sub_1000EC450;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E7DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 8360);
  v4 = *v1;
  *(*v1 + 8368) = v0;

  v5 = v2[1010];
  v6 = v2[999];
  v7 = v2[980];
  sub_10000B3A8(v6, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v8 = sub_1000E81B0;
  }

  else
  {
    v8 = sub_1000E7F80;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000E7F80()
{
  v23 = v0;
  v1 = v0[1034];
  v2 = v0[1023];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[1034];
    v6 = v0[1032];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v0[973] = v5;
    sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;

    v12 = sub_1000136BC(v9, v11, &v22);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connected to peripheral: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = v0[1034];
  }

  v14 = v0[993];
  v0[1047] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v15 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
  v16 = swift_task_alloc();
  v0[1048] = v16;
  *v16 = v0;
  v16[1] = sub_1000E83C4;
  v17 = v0[1044];
  v18 = v0[1034];
  v19 = v0[1032];
  v20 = v0[993];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v20, v19, v17);
}

uint64_t sub_1000E81B0()
{
  v1 = v0[1034];
  v2 = v0[1014];
  v3 = v0[1009];
  v4 = v0[1003];

  sub_100101E70(v4, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v3, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v2, type metadata accessor for AccessoryMetadata);
  v30 = v0[1046];
  v5 = v0[1022];
  v6 = v0[1021];
  v7 = v0[1017];
  v8 = v0[1014];
  v9 = v0[1013];
  v10 = v0[1012];
  v11 = v0[1011];
  v12 = v0[1010];
  v13 = v0[1009];
  v14 = v0[1008];
  v17 = v0[1007];
  v18 = v0[1006];
  v19 = v0[1003];
  v20 = v0[1002];
  v21 = v0[999];
  v22 = v0[998];
  v23 = v0[995];
  v24 = v0[994];
  v25 = v0[993];
  v26 = v0[990];
  v27 = v0[987];
  v28 = v0[984];
  v29 = v0[981];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000E83C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 8384);
  v6 = *v2;
  v4[1049] = a1;
  v4[1050] = v1;

  v7 = v3[993];
  v8 = v3[992];
  v9 = v3[991];
  v10 = v3[980];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_1000E87FC;
  }

  else
  {
    v11 = sub_1000E854C;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_1000E854C()
{
  v1 = v0[990];
  v0[1051] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = sub_100102448(&qword_1016972A8, 255, &type metadata accessor for Service);
  v3 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v4 = swift_task_alloc();
  v0[1052] = v4;
  *v4 = v0;
  v4[1] = sub_1000E8658;
  v5 = v0[1049];
  v6 = v0[1047];
  v7 = v0[990];

  return dispatch thunk of ServiceProtocol.subscript.getter(v7, v6, v2);
}

uint64_t sub_1000E8658(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 8416);
  v6 = *v2;
  v4[1053] = a1;
  v4[1054] = v1;

  v7 = v3[1049];
  v8 = v3[990];
  v9 = v3[989];
  v10 = v3[988];
  v11 = v3[980];
  (*(v9 + 8))(v8, v10);

  if (v1)
  {
    v12 = sub_1000E8C80;
  }

  else
  {
    v12 = sub_1000E8A10;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_1000E87FC()
{
  v1 = v0[1034];
  v2 = v0[1014];
  v3 = v0[1009];
  v4 = v0[1003];

  sub_100101E70(v4, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v3, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v2, type metadata accessor for AccessoryMetadata);
  v30 = v0[1050];
  v5 = v0[1022];
  v6 = v0[1021];
  v7 = v0[1017];
  v8 = v0[1014];
  v9 = v0[1013];
  v10 = v0[1012];
  v11 = v0[1011];
  v12 = v0[1010];
  v13 = v0[1009];
  v14 = v0[1008];
  v17 = v0[1007];
  v18 = v0[1006];
  v19 = v0[1003];
  v20 = v0[1002];
  v21 = v0[999];
  v22 = v0[998];
  v23 = v0[995];
  v24 = v0[994];
  v25 = v0[993];
  v26 = v0[990];
  v27 = v0[987];
  v28 = v0[984];
  v29 = v0[981];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000E8A10()
{
  v25 = v0;
  v1 = v0[1023];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy services and Pairing characteristic.", v4, 2u);
  }

  v5 = v0[1034];
  v6 = v0[1023];

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[1034];
  if (v9)
  {
    v11 = v0[1032];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v0[972] = v10;
    sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    v17 = sub_1000136BC(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pairing peripheral: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {
  }

  v18 = async function pointer to dispatch thunk of PeripheralProtocol.pair()[1];
  v19 = swift_task_alloc();
  v0[1055] = v19;
  *v19 = v0;
  v19[1] = sub_1000E8E94;
  v20 = v0[1044];
  v21 = v0[1034];
  v22 = v0[1032];

  return dispatch thunk of PeripheralProtocol.pair()(v22, v20);
}

uint64_t sub_1000E8C80()
{
  v1 = v0[1034];
  v2 = v0[1014];
  v3 = v0[1009];
  v4 = v0[1003];

  sub_100101E70(v4, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v3, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v2, type metadata accessor for AccessoryMetadata);
  v30 = v0[1054];
  v5 = v0[1022];
  v6 = v0[1021];
  v7 = v0[1017];
  v8 = v0[1014];
  v9 = v0[1013];
  v10 = v0[1012];
  v11 = v0[1011];
  v12 = v0[1010];
  v13 = v0[1009];
  v14 = v0[1008];
  v17 = v0[1007];
  v18 = v0[1006];
  v19 = v0[1003];
  v20 = v0[1002];
  v21 = v0[999];
  v22 = v0[998];
  v23 = v0[995];
  v24 = v0[994];
  v25 = v0[993];
  v26 = v0[990];
  v27 = v0[987];
  v28 = v0[984];
  v29 = v0[981];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000E8E94()
{
  v2 = *v1;
  v3 = *(*v1 + 8440);
  v4 = *v1;
  *(*v1 + 8448) = v0;

  v5 = *(v2 + 7840);
  if (v0)
  {
    v6 = sub_1000E9524;
  }

  else
  {
    v6 = sub_1000E8FC0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E8FC0()
{
  v45 = v0;
  v1 = v0[1034];
  v2 = v0[1023];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[1034];
    v6 = v0[1032];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136315138;
    v0[971] = v5;
    sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;

    v12 = sub_1000136BC(v9, v11, v44);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Paired peripheral: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = v0[1034];
  }

  v14 = v0[987];
  v15 = v0[984];
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  sub_100100958((v0 + 68));
  memcpy(v0 + 662, v0 + 68, 0x108uLL);
  SharingCircleWildAdvertisementKey.init(key:)(v0 + 662);
  memcpy(v0 + 134, v0 + 68, 0x108uLL);
  memcpy(v0 + 101, v0 + 662, 0x108uLL);
  v16 = v0[1056];
  v17 = v0[1023];
  sub_100100988((v0 + 134), (v0 + 167));
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  sub_1001009E4((v0 + 134));
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44[0] = v21;
    *v20 = 136315138;
    memcpy(v0 + 299, v0 + 134, 0x108uLL);
    sub_100100988((v0 + 134), (v0 + 266));
    v22 = String.init<A>(describing:)();
    v24 = sub_1000136BC(v22, v23, v44);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Sending command: %s", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v25 = v0[987];
  memcpy(v0 + 398, v0 + 134, 0x108uLL);
  v0[1057] = sub_100100A38();
  v0[1058] = BinaryEncoder.encode<A>(_:)();
  v0[1059] = v26;
  if (v16)
  {
    sub_1001009E4((v0 + 134));
    v0[1076] = v16;
    v27 = v0[1023];
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Pairing command error: %{public}@", v30, 0xCu);
      sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

    sub_100100A8C((v0 + 431));
    v33 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v34 = swift_task_alloc();
    v0[1077] = v34;
    *v34 = v0;
    v34[1] = sub_1000EB3E4;
    v35 = v0[1044];
    v36 = v0[1034];
    v37 = v0[1032];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v37, v35);
  }

  else
  {
    v38 = sub_100102448(&qword_1016972C0, 255, &type metadata accessor for Characteristic);
    v39 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v40 = swift_task_alloc();
    v0[1060] = v40;
    *v40 = v0;
    v40[1] = sub_1000E9744;
    v41 = v0[1053];
    v42 = v0[1051];

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v42, v38);
  }
}

uint64_t sub_1000E9524()
{
  v1 = v0[1053];
  v2 = v0[1034];
  v3 = v0[1014];
  v4 = v0[1009];
  v5 = v0[1003];

  sub_100101E70(v5, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v4, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v3, type metadata accessor for AccessoryMetadata);
  v31 = v0[1056];
  v6 = v0[1022];
  v7 = v0[1021];
  v8 = v0[1017];
  v9 = v0[1014];
  v10 = v0[1013];
  v11 = v0[1012];
  v12 = v0[1011];
  v13 = v0[1010];
  v14 = v0[1009];
  v15 = v0[1008];
  v18 = v0[1007];
  v19 = v0[1006];
  v20 = v0[1003];
  v21 = v0[1002];
  v22 = v0[999];
  v23 = v0[998];
  v24 = v0[995];
  v25 = v0[994];
  v26 = v0[993];
  v27 = v0[990];
  v28 = v0[987];
  v29 = v0[984];
  v30 = v0[981];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000E9744(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 8480);
  v6 = *v2;
  *(*v2 + 8488) = v1;

  v7 = *(v4 + 7840);
  if (v1)
  {
    v8 = sub_1000E9A58;
  }

  else
  {
    *(v4 + 8496) = a1;
    v8 = sub_1000E9870;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000E9870()
{
  v1 = v0[1062];
  v2 = v0[1059];
  v3 = v0[1058];
  v4 = fragment(data:mtu:)();
  memcpy(v0 + 464, v0 + 134, 0x108uLL);
  if (sub_100100ACC((v0 + 464)) == 5)
  {
    v5 = v0[1053];
    sub_1000479AC((v0 + 464));
    v6 = swift_allocObject();
    v0[1063] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = async function pointer to withTimeout<A>(_:block:)[1];

    v8 = swift_task_alloc();
    v0[1064] = v8;
    *v8 = v0;
    v8[1] = sub_1000E9C1C;
    v9 = &unk_10138BE28;
    v10 = &type metadata for () + 8;
  }

  else
  {
    v11 = v0[1053];
    v6 = swift_allocObject();
    v0[1066] = v6;
    *(v6 + 16) = v11;
    *(v6 + 24) = v4;
    v12 = async function pointer to withTimeout<A>(_:block:)[1];

    v13 = swift_task_alloc();
    v0[1067] = v13;
    *v13 = v0;
    v13[1] = sub_1000E9D74;
    v10 = &type metadata for Data;
    v9 = &unk_10138BE10;
    v8 = v0 + 965;
  }

  return withTimeout<A>(_:block:)(v8, 0x40AAD21B3B700000, 3, v9, v6, v10);
}

uint64_t sub_1000E9A58()
{
  sub_100016590(v0[1058], v0[1059]);
  sub_1001009E4((v0 + 134));
  v0[1076] = v0[1061];
  v1 = v0[1023];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pairing command error: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

  sub_100100A8C((v0 + 431));
  v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v8 = swift_task_alloc();
  v0[1077] = v8;
  *v8 = v0;
  v8[1] = sub_1000EB3E4;
  v9 = v0[1044];
  v10 = v0[1034];
  v11 = v0[1032];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v9);
}

uint64_t sub_1000E9C1C()
{
  v2 = *v1;
  v3 = *(*v1 + 8512);
  v11 = *v1;
  *(*v1 + 8520) = v0;

  if (v0)
  {
    v4 = *(v2 + 8504);
    v5 = *(v2 + 7840);

    v6 = sub_1000EA3BC;
    v7 = v5;
  }

  else
  {
    v8 = *(v2 + 8504);
    v9 = *(v2 + 7840);
    sub_10000B3A8(v2 + 808, &qword_1016972B8, &unk_10138BDF8);

    v6 = sub_1000E9EBC;
    v7 = v9;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000E9D74()
{
  v2 = *v1;
  v3 = *(*v1 + 8536);
  v4 = *v1;
  *(*v1 + 8544) = v0;

  v5 = *(v2 + 8528);
  v6 = *(v2 + 7840);

  if (v0)
  {
    v7 = sub_1000EBAD8;
  }

  else
  {
    v7 = sub_1000EB5A0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000E9EBC()
{
  v50 = v0;
  v1 = *(v0 + 8184);
  memcpy((v0 + 280), (v0 + 1072), 0x108uLL);
  v2 = sub_1000479AC(v0 + 280);
  sub_100017D5C(*v2, *(v2 + 8));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  sub_1001009E4(v0 + 1072);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v49 = v6;
    *v5 = 136315138;
    memcpy((v0 + 2656), (v0 + 1072), 0x108uLL);
    memcpy((v0 + 2920), (v0 + 1072), 0x108uLL);
    v7 = sub_1000479AC(v0 + 2920);
    sub_100017D5C(*v7, *(v7 + 8));
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v49);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sent final command: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v11 = *(v0 + 8184);
  *(*(v0 + 7840) + 176) = 9;
  sub_100100A8C(v0 + 3976);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Pairing completed succesfully!", v14, 2u);
  }

  v15 = *(v0 + 8184);
  v16 = *(v0 + 8661);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  if (v16 == 1)
  {
    if (v19)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Sent pairing complete, skip ackRequest for standalone.", v20, 2u);
    }

    v21 = *(v0 + 8472);
    v22 = *(v0 + 8464);
    sub_1001009E4(v0 + 1072);
    sub_100016590(v22, v21);

    v23 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v24 = swift_task_alloc();
    *(v0 + 8552) = v24;
    *v24 = v0;
    v25 = sub_1000EA588;
  }

  else
  {
    if (v19)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Sent pairing complete, continue with ackRequest.", v26, 2u);
    }

    v47 = *(v0 + 8464);
    v48 = *(v0 + 8472);
    v45 = *(v0 + 8232);
    v46 = *(v0 + 8240);
    v27 = *(v0 + 8656);
    v28 = *(v0 + 8200);
    v29 = *(v0 + 0x2000);
    v30 = *(v0 + 8168);
    v44 = *(v0 + 8160);
    v31 = *(v0 + 8144);
    v32 = *(v0 + 7848);
    v33 = *(v0 + 7840);
    v34 = *(v0 + 7816);

    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
    v29(v30, v34, v31);
    v37 = sub_100102448(&qword_101697238, v36, type metadata accessor for AirPodsLEPairingService);
    v38 = swift_allocObject();
    *(v38 + 2) = v33;
    *(v38 + 3) = v37;
    *(v38 + 4) = v33;
    v45(&v38[(v27 + 40) & ~v27], v30, v31);
    swift_retain_n();
    sub_10025EDD4(0, 0, v32, &unk_10138BE38, v38);
    sub_1001009E4(v0 + 1072);

    sub_100016590(v47, v48);
    v39 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v24 = swift_task_alloc();
    *(v0 + 8600) = v24;
    *v24 = v0;
    v25 = sub_1000EB230;
  }

  v24[1] = v25;
  v40 = *(v0 + 8352);
  v41 = *(v0 + 8272);
  v42 = *(v0 + 8256);

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v42, v40);
}

uint64_t sub_1000EA3BC()
{
  v1 = v0[1059];
  v2 = v0[1058];
  sub_1001009E4((v0 + 134));
  sub_100016590(v2, v1);
  v0[1076] = v0[1065];
  v3 = v0[1023];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Pairing command error: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

  sub_100100A8C((v0 + 431));
  v9 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v10 = swift_task_alloc();
  v0[1077] = v10;
  *v10 = v0;
  v10[1] = sub_1000EB3E4;
  v11 = v0[1044];
  v12 = v0[1034];
  v13 = v0[1032];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v13, v11);
}

uint64_t sub_1000EA588()
{
  v2 = *v1;
  v3 = *(*v1 + 8552);
  v4 = *v1;

  if (v0)
  {
    memcpy(v2 + 200, v2 + 497, 0x108uLL);
    v2[1074] = 0;
    v2[1073] = v0;
    v5 = v2[980];

    return _swift_task_switch(sub_1000EA868, v5, 0);
  }

  else
  {
    memcpy(v2 + 233, v2 + 497, 0x108uLL);
    v2[1070] = 0;
    v6 = async function pointer to dispatch thunk of PeripheralProtocol.unpair()[1];
    v7 = swift_task_alloc();
    v2[1071] = v7;
    *v7 = v4;
    v7[1] = sub_1000EA73C;
    v8 = v2[1044];
    v9 = v2[1034];
    v10 = v2[1032];

    return dispatch thunk of PeripheralProtocol.unpair()(v10, v8);
  }
}

uint64_t sub_1000EA73C()
{
  v2 = *v1;
  v3 = *(*v1 + 8568);
  v4 = *v1;
  *(*v1 + 8576) = v0;

  v5 = *(v2 + 7840);
  if (v0)
  {
    v6 = sub_1000EAFA0;
  }

  else
  {
    v6 = sub_1000EAAF8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000EA868()
{
  v1 = v0[1074];
  v2 = v0[1053];
  v3 = v0[1034];
  v35 = v0[1009];
  v37 = v0[1014];
  v4 = v0[1003];
  v5 = v0[987];
  v6 = v0[986];
  v7 = v0[985];
  v8 = v0[984];
  v9 = v0[983];
  v10 = v0[982];

  sub_10000B3A8((v0 + 200), &qword_1016972B8, &unk_10138BDF8);

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  sub_100101E70(v4, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v35, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v37, type metadata accessor for AccessoryMetadata);
  v38 = v0[1073];
  v11 = v0[1022];
  v12 = v0[1021];
  v13 = v0[1017];
  v14 = v0[1014];
  v15 = v0[1013];
  v16 = v0[1012];
  v17 = v0[1011];
  v18 = v0[1010];
  v19 = v0[1009];
  v20 = v0[1008];
  v23 = v0[1007];
  v24 = v0[1006];
  v25 = v0[1003];
  v26 = v0[1002];
  v27 = v0[999];
  v28 = v0[998];
  v29 = v0[995];
  v30 = v0[994];
  v31 = v0[993];
  v32 = v0[990];
  v33 = v0[987];
  v34 = v0[984];
  v36 = v0[981];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000EAAF8()
{
  v1 = v0[1053];
  v2 = v0[1034];
  if (v0[1070])
  {
    v57 = v0[1009];
    v60 = v0[1014];
    v54 = v0[1003];
    v3 = v0[987];
    v4 = v0[986];
    v5 = v0[985];
    v6 = v0[984];
    v7 = v0[983];
    v8 = v0[982];
    v63 = v0[1070];
    swift_willThrow();

    sub_10000B3A8((v0 + 233), &qword_1016972B8, &unk_10138BDF8);

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    sub_100101E70(v54, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v57, &qword_101697268, &qword_101394FE0);
    sub_100101E70(v60, type metadata accessor for AccessoryMetadata);
    v9 = v0[1022];
    v10 = v0[1021];
    v11 = v0[1017];
    v12 = v0[1014];
    v13 = v0[1013];
    v14 = v0[1012];
    v15 = v0[1011];
    v16 = v0[1010];
    v17 = v0[1009];
    v18 = v0[1008];
    v34 = v0[1007];
    v36 = v0[1006];
    v38 = v0[1003];
    v40 = v0[1002];
    v42 = v0[999];
    v44 = v0[998];
    v46 = v0[995];
    v48 = v0[994];
    v50 = v0[993];
    v52 = v0[990];
    v55 = v0[987];
    v58 = v0[984];
    v61 = v0[981];
  }

  else
  {
    v30 = v0[1022];
    v31 = v0[1021];
    v32 = v0[1017];
    v33 = v0[1013];
    v35 = v0[1012];
    v37 = v0[1011];
    v28 = v0[1009];
    v29 = v0[1014];
    v39 = v0[1010];
    v41 = v0[1008];
    v43 = v0[1007];
    v45 = v0[1006];
    v20 = v0[1003];
    v47 = v0[1002];
    v49 = v0[999];
    v51 = v0[998];
    v53 = v0[995];
    v56 = v0[994];
    v59 = v0[993];
    v21 = v0[987];
    v22 = v0[986];
    v23 = v0[985];
    v24 = v0[984];
    v25 = v0[983];
    v26 = v0[982];
    v62 = v0[990];
    v64 = v0[981];

    sub_10000B3A8((v0 + 233), &qword_1016972B8, &unk_10138BDF8);

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    sub_100101E70(v20, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v28, &qword_101697268, &qword_101394FE0);
    sub_100101E70(v29, type metadata accessor for AccessoryMetadata);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000EAFA0()
{
  v1 = v0[1070];
  v2 = v0[1053];
  v3 = v0[1034];
  v35 = v0[1009];
  v37 = v0[1014];
  v4 = v0[1003];
  v5 = v0[987];
  v6 = v0[986];
  v7 = v0[985];
  v8 = v0[984];
  v9 = v0[983];
  v10 = v0[982];

  sub_10000B3A8((v0 + 233), &qword_1016972B8, &unk_10138BDF8);

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  sub_100101E70(v4, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v35, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v37, type metadata accessor for AccessoryMetadata);
  v38 = v0[1072];
  v11 = v0[1022];
  v12 = v0[1021];
  v13 = v0[1017];
  v14 = v0[1014];
  v15 = v0[1013];
  v16 = v0[1012];
  v17 = v0[1011];
  v18 = v0[1010];
  v19 = v0[1009];
  v20 = v0[1008];
  v23 = v0[1007];
  v24 = v0[1006];
  v25 = v0[1003];
  v26 = v0[1002];
  v27 = v0[999];
  v28 = v0[998];
  v29 = v0[995];
  v30 = v0[994];
  v31 = v0[993];
  v32 = v0[990];
  v33 = v0[987];
  v34 = v0[984];
  v36 = v0[981];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000EB230()
{
  v2 = *v1;
  v3 = *(*v1 + 8600);
  v4 = *v1;

  if (v0)
  {
    memcpy(v2 + 200, v2 + 497, 0x108uLL);
    v2[1074] = 0;
    v2[1073] = v0;
    v5 = v2[980];

    return _swift_task_switch(sub_1000EA868, v5, 0);
  }

  else
  {
    memcpy(v2 + 233, v2 + 497, 0x108uLL);
    v2[1070] = 0;
    v6 = async function pointer to dispatch thunk of PeripheralProtocol.unpair()[1];
    v7 = swift_task_alloc();
    v2[1071] = v7;
    *v7 = v4;
    v7[1] = sub_1000EA73C;
    v8 = v2[1044];
    v9 = v2[1034];
    v10 = v2[1032];

    return dispatch thunk of PeripheralProtocol.unpair()(v10, v8);
  }
}

uint64_t sub_1000EB3E4()
{
  v2 = *v1;
  v3 = *(*v1 + 8616);
  v4 = *v1;

  if (v0)
  {
    memcpy(v2 + 200, v2 + 431, 0x108uLL);
    v2[1074] = v2[1076];
    v2[1073] = v0;
    v5 = v2[980];

    return _swift_task_switch(sub_1000EA868, v5, 0);
  }

  else
  {
    v6 = v2[1076];
    memcpy(v2 + 233, v2 + 431, 0x108uLL);
    v2[1070] = v6;
    v7 = async function pointer to dispatch thunk of PeripheralProtocol.unpair()[1];
    v8 = swift_task_alloc();
    v2[1071] = v8;
    *v8 = v4;
    v8[1] = sub_1000EA73C;
    v9 = v2[1044];
    v10 = v2[1034];
    v11 = v2[1032];

    return dispatch thunk of PeripheralProtocol.unpair()(v11, v9);
  }
}

uint64_t sub_1000EB5A0()
{
  v43 = v0;
  v1 = v0[1023];
  v2 = v0[965];
  v0[1078] = v2;
  v3 = v0[966];
  v0[1079] = v3;
  sub_100100988((v0 + 134), (v0 + 530));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  sub_1001009E4((v0 + 134));
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42[0] = v7;
    *v6 = 136315138;
    memcpy(v0 + 893, v0 + 134, 0x108uLL);
    sub_100100988((v0 + 134), (v0 + 926));
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, v42);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sent command: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = v0[1068];
  v12 = v0[984];
  v13 = sub_100100BA4();
  BinaryDecoder.decode<A>(_:from:)();
  if (v11)
  {
    v14 = v0[1059];
    v15 = v0[1058];
    sub_100016590(v2, v3);
    sub_100016590(v15, v14);
    sub_1001009E4((v0 + 134));
    v0[1076] = v11;
    v16 = v0[1023];
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Pairing command error: %{public}@", v19, 0xCu);
      sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

    sub_100100A8C((v0 + 431));
    v22 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v23 = swift_task_alloc();
    v0[1077] = v23;
    *v23 = v0;
    v23[1] = sub_1000EB3E4;
    v24 = v0[1044];
    v25 = v0[1034];
    v26 = v0[1032];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v26, v24);
  }

  else
  {
    v27 = v0[1023];
    memcpy(v0 + 596, v0 + 563, 0x108uLL);
    sub_100100988((v0 + 596), (v0 + 629));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    sub_1001009E4((v0 + 596));
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42[0] = v31;
      *v30 = 136315138;
      memcpy(v0 + 827, v0 + 596, 0x108uLL);
      sub_100100988((v0 + 596), (v0 + 860));
      v32 = String.init<A>(describing:)();
      v34 = sub_1000136BC(v32, v33, v42);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Received response: %s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    v35 = v0[1057];
    v0[962] = &type metadata for AirPodsSWPairingCommand;
    v0[963] = v13;
    v0[964] = v35;
    v36 = swift_allocObject();
    v0[959] = v36;
    memcpy((v36 + 16), v0 + 596, 0x108uLL);
    sub_100100988((v0 + 596), (v0 + 695));
    v37 = swift_task_alloc();
    v0[1080] = v37;
    *v37 = v0;
    v37[1] = sub_1000EBCA4;
    v38 = v0[1034];
    v39 = v0[980];
    v40 = v0[977];

    return sub_1000F047C((v0 + 2), v38, (v0 + 959), v40);
  }
}

uint64_t sub_1000EBAD8()
{
  v1 = v0[1059];
  v2 = v0[1058];
  sub_1001009E4((v0 + 134));
  sub_100016590(v2, v1);
  v0[1076] = v0[1068];
  v3 = v0[1023];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Pairing command error: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

  sub_100100A8C((v0 + 431));
  v9 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v10 = swift_task_alloc();
  v0[1077] = v10;
  *v10 = v0;
  v10[1] = sub_1000EB3E4;
  v11 = v0[1044];
  v12 = v0[1034];
  v13 = v0[1032];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v13, v11);
}

uint64_t sub_1000EBCA4()
{
  v2 = *v1;
  v3 = (*v1)[1080];
  v8 = *v1;
  (*v1)[1081] = v0;

  if (v0)
  {
    v4 = v2[980];
    v5 = sub_1000EC258;
  }

  else
  {
    v6 = v2[980];
    memcpy(v2 + 761, v2 + 2, 0x108uLL);
    sub_10000B3A8((v2 + 101), &qword_1016972B8, &unk_10138BDF8);
    sub_100007BAC(v2 + 959);
    v5 = sub_1000EBE04;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000EBE04()
{
  v34 = v0;
  v1 = v0[1079];
  v2 = v0[1078];
  v3 = v0[1059];
  v4 = v0[1058];
  sub_1001009E4((v0 + 134));
  sub_1001009E4((v0 + 596));
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  memcpy(v0 + 728, v0 + 761, 0x108uLL);
  SharingCircleWildAdvertisementKey.init(key:)(v0 + 728);
  sub_100100988((v0 + 2), (v0 + 794));
  memcpy(v0 + 134, v0 + 761, 0x108uLL);
  memcpy(v0 + 101, v0 + 728, 0x108uLL);
  v5 = v0[1081];
  v6 = v0[1023];
  sub_100100988((v0 + 134), (v0 + 167));
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_1001009E4((v0 + 134));
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    memcpy(v0 + 299, v0 + 134, 0x108uLL);
    sub_100100988((v0 + 134), (v0 + 266));
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v33);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending command: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v14 = v0[987];
  memcpy(v0 + 398, v0 + 134, 0x108uLL);
  v0[1057] = sub_100100A38();
  v0[1058] = BinaryEncoder.encode<A>(_:)();
  v0[1059] = v15;
  if (v5)
  {
    sub_1001009E4((v0 + 134));
    v0[1076] = v5;
    v16 = v0[1023];
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Pairing command error: %{public}@", v19, 0xCu);
      sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

    sub_100100A8C((v0 + 431));
    v22 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v23 = swift_task_alloc();
    v0[1077] = v23;
    *v23 = v0;
    v23[1] = sub_1000EB3E4;
    v24 = v0[1044];
    v25 = v0[1034];
    v26 = v0[1032];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v26, v24);
  }

  else
  {
    v27 = sub_100102448(&qword_1016972C0, 255, &type metadata accessor for Characteristic);
    v28 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v29 = swift_task_alloc();
    v0[1060] = v29;
    *v29 = v0;
    v29[1] = sub_1000E9744;
    v30 = v0[1053];
    v31 = v0[1051];

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v31, v27);
  }
}

uint64_t sub_1000EC258()
{
  v1 = v0[1079];
  v2 = v0[1078];
  v3 = v0[1059];
  v4 = v0[1058];
  sub_1001009E4((v0 + 134));
  sub_1001009E4((v0 + 596));
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_100007BAC(v0 + 959);
  v0[1076] = v0[1081];
  v5 = v0[1023];
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pairing command error: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

  sub_100100A8C((v0 + 431));
  v11 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v12 = swift_task_alloc();
  v0[1077] = v12;
  *v12 = v0;
  v12[1] = sub_1000EB3E4;
  v13 = v0[1044];
  v14 = v0[1034];
  v15 = v0[1032];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v15, v13);
}

uint64_t sub_1000EC450()
{
  v84 = v0;
  sub_1000D2AD8(v0[1008], v0[1009], &qword_101697268, &qword_101394FE0);
  v1 = v0[1043];
  v2 = v0[1007];
  v3 = v0[1001];
  v4 = v0[1000];
  sub_1000D2A70(v0[1009], v2, &qword_101697268, &qword_101394FE0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = v0[1023];
  v7 = v0[1007];
  if (v5 == 1)
  {
    sub_10000B3A8(v7, &qword_101697268, &qword_101394FE0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing product info!", v10, 2u);
    }

    v11 = v0[1034];
    v12 = v0[1014];
    v13 = v0[1009];

    sub_100100904();
    swift_allocError();
    *v14 = 0x800000000000000CLL;
    swift_willThrow();

    goto LABEL_10;
  }

  v15 = v0[1003];
  v16 = v0[1002];
  sub_100101DA0(v7, v15, type metadata accessor for AccessoryProductInfo);
  sub_100101E08(v15, v16, type metadata accessor for AccessoryProductInfo);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[1002];
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v83 = v22;
    *v21 = 136446210;
    v23 = sub_1011A0624(v22);
    v25 = v24;
    sub_100101E70(v20, type metadata accessor for AccessoryProductInfo);
    v26 = sub_1000136BC(v23, v25, &v83);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Product info: %{public}s)", v21, 0xCu);
    sub_100007BAC(v22);
  }

  else
  {

    sub_100101E70(v20, type metadata accessor for AccessoryProductInfo);
  }

  v27 = v0[980];
  sub_1000EF008(v0[1014], v0[1003]);
  if (v1)
  {
    v28 = v0[1034];
    v12 = v0[1014];
    v13 = v0[1009];
    v29 = v0[1003];

    sub_100101E70(v29, type metadata accessor for AccessoryProductInfo);
LABEL_10:
    sub_10000B3A8(v13, &qword_101697268, &qword_101394FE0);
    sub_100101E70(v12, type metadata accessor for AccessoryMetadata);
    v30 = v0[1022];
    v31 = v0[1021];
    v32 = v0[1017];
    v33 = v0[1014];
    v34 = v0[1013];
    v35 = v0[1012];
    v36 = v0[1011];
    v37 = v0[1010];
    v38 = v0[1009];
    v39 = v0[1008];
    v67 = v0[1007];
    v68 = v0[1006];
    v69 = v0[1003];
    v70 = v0[1002];
    v71 = v0[999];
    v72 = v0[998];
    v73 = v0[995];
    v74 = v0[994];
    v75 = v0[993];
    v76 = v0[990];
    v77 = v0[987];
    v78 = v0[984];
    v80 = v0[981];

    v40 = v0[1];

    return v40();
  }

  v42 = v0[1037];
  v43 = v0[1036];
  v44 = v0[1035];
  v45 = v0[1010];
  v82 = v0[999];
  v46 = v0[997];
  v47 = v0[996];
  v79 = v0[998];
  v81 = v0[995];
  v48 = v0[994];
  v49 = v0[980];
  v50 = v0[979];
  v51 = v0[978];
  v52 = *(v49 + 160);
  v53 = *(v49 + 168);
  *(v49 + 160) = v51;
  *(v49 + 168) = v50;
  sub_10002E98C(v51, v50);
  sub_100006654(v52, v53);
  v43(v45, 1, 1, v44);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v54 = *(v46 + 72);
  v55 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[969] = v56;
  sub_100102448(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v57 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v57 - 8) + 56))(v81, 1, 1, v57);
  v58 = type metadata accessor for LongTermKey();
  (*(*(v58 - 8) + 56))(v48, 1, 1, v58);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v59 = type metadata accessor for Peripheral.Options();
  (*(*(v59 - 8) + 56))(v82, 0, 1, v59);
  v60 = sub_100102448(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v0[1044] = v60;
  v61 = async function pointer to dispatch thunk of PeripheralProtocol.connect(useCase:options:)[1];
  v62 = swift_task_alloc();
  v0[1045] = v62;
  *v62 = v0;
  v62[1] = sub_1000E7DFC;
  v63 = v0[1034];
  v64 = v0[1032];
  v65 = v0[1010];
  v66 = v0[999];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v65, v66, v64, v60);
}

uint64_t sub_1000ECC14()
{
  v1 = v0[1034];
  v2 = v0[1014];

  sub_100101E70(v2, type metadata accessor for AccessoryMetadata);
  v28 = v0[1043];
  v3 = v0[1022];
  v4 = v0[1021];
  v5 = v0[1017];
  v6 = v0[1014];
  v7 = v0[1013];
  v8 = v0[1012];
  v9 = v0[1011];
  v10 = v0[1010];
  v11 = v0[1009];
  v12 = v0[1008];
  v15 = v0[1007];
  v16 = v0[1006];
  v17 = v0[1003];
  v18 = v0[1002];
  v19 = v0[999];
  v20 = v0[998];
  v21 = v0[995];
  v22 = v0[994];
  v23 = v0[993];
  v24 = v0[990];
  v25 = v0[987];
  v26 = v0[984];
  v27 = v0[981];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000ECDEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016973D0, &qword_10138BF60) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016C11A0, &qword_10138BF68);
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  v3[14] = v11;
  v12 = *(v11 - 8);
  v3[15] = v12;
  v13 = *(v12 + 64) + 15;
  v3[16] = swift_task_alloc();
  v14 = type metadata accessor for ScanMode();
  v3[17] = v14;
  v15 = *(v14 - 8);
  v3[18] = v15;
  v16 = *(v15 + 64) + 15;
  v3[19] = swift_task_alloc();
  v17 = sub_1000BC4D4(&unk_1016C2160, &qword_10138BF78);
  v3[20] = v17;
  v18 = *(v17 - 8);
  v3[21] = v18;
  v19 = *(v18 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v20 = type metadata accessor for CentralManager.State();
  v3[24] = v20;
  v21 = *(v20 - 8);
  v3[25] = v21;
  v22 = *(v21 + 64) + 15;
  v3[26] = swift_task_alloc();
  v23 = type metadata accessor for MACAddress();
  v3[27] = v23;
  v24 = *(v23 - 8);
  v3[28] = v24;
  v25 = *(v24 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED18C, v2, 0);
}

uint64_t sub_1000ED18C()
{
  v28 = v0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[31] = sub_1000076D4(v5, qword_101696FF8);
  v6 = *(v3 + 16);
  v0[32] = v6;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136446210;
    sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v27);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting discovery scan for peripherals matching macAddress: %{public}s", v13, 0xCu);
    sub_100007BAC(v26);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[34] = v17;
  (*(v0[25] + 104))(v0[26], enum case for CentralManager.State.poweredOn(_:), v0[24]);
  v19 = type metadata accessor for CentralManager();
  v0[35] = v19;
  v20 = sub_100102448(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  v0[36] = v20;
  v21 = async function pointer to dispatch thunk of CentralManagerProtocol.await(state:)[1];
  v22 = swift_task_alloc();
  v0[37] = v22;
  *v22 = v0;
  v22[1] = sub_1000ED498;
  v23 = v0[26];
  v24 = v0[2];

  return dispatch thunk of CentralManagerProtocol.await(state:)(v23, v19, v20);
}

uint64_t sub_1000ED498()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 304) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 32);
  if (v0)
  {
    v9 = sub_1000ED984;
  }

  else
  {
    v9 = sub_1000ED620;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000ED620()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  v4 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  Identifier.init(stringLiteral:)();
  *v1 = v7;
  (*(v2 + 104))(v1, enum case for ScanMode.serviceIdentifiers(_:), v3);
  v8 = async function pointer to dispatch thunk of CentralManagerProtocol.scanForPeripherals(scanMode:garbageCollectInterval:)[1];
  v9 = swift_task_alloc();
  v0[39] = v9;
  *v9 = v0;
  v9[1] = sub_1000ED7FC;
  v10 = v0[35];
  v11 = v0[36];
  v12 = v0[23];
  v13 = v0[19];
  v14 = v0[2];

  return dispatch thunk of CentralManagerProtocol.scanForPeripherals(scanMode:garbageCollectInterval:)(v12, v13, 0xD02AB486CEDC0000, 0, v10, v11);
}

uint64_t sub_1000ED7FC()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 320) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 32);
  if (v0)
  {
    v9 = sub_1000EDCA0;
  }

  else
  {
    v9 = sub_1000EDA7C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000ED984()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[9];
  v10 = v0[10];
  v13 = v0[8];
  v14 = v0[38];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000EDA7C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[5];
  (*(v0[21] + 16))(v0[22], v0[23], v0[20]);
  *(swift_allocObject() + 16) = v5;
  v0[41] = type metadata accessor for Peripheral();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78);
  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v7 = sub_100102448(&qword_101697238, v6, type metadata accessor for AirPodsLEPairingService);
  v0[42] = v7;
  v8 = v0[4];
  v9 = swift_task_alloc();
  v0[43] = v9;
  *v9 = v0;
  v9[1] = sub_1000EDD98;
  v10 = v0[13];

  return sub_1011EBA70(v8, v7);
}

uint64_t sub_1000EDCA0()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[9];
  v10 = v0[10];
  v13 = v0[8];
  v14 = v0[40];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000EDD98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {
    v8 = sub_1000EE1EC;
  }

  else
  {
    v8 = sub_1000EDECC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000EDECC()
{
  if (!v0[44])
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
LABEL_7:
    v9 = v0[31];
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Missing peripheral after scanning!", v12, 2u);
    }

    v13 = v0[23];
    v14 = v0[20];
    v15 = v0[21];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];

    sub_100100904();
    swift_allocError();
    *v19 = 0x800000000000000BLL;
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v13, v14);
    v21 = v0[29];
    v20 = v0[30];
    v22 = v0[26];
    v24 = v0[22];
    v23 = v0[23];
    v25 = v0[19];
    v26 = v0[16];
    v27 = v0[13];
    v28 = v0[9];
    v29 = v0[10];
    v38 = v0[8];

    v30 = v0[1];

    return v30();
  }

  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[31];
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Task cancelled!", v8, 2u);
    }

    (*(v6 + 8))(v5, v7);
    goto LABEL_7;
  }

  v32 = async function pointer to dispatch thunk of CentralManagerProtocol.retrievePeripheral(macAddress:)[1];
  v33 = swift_task_alloc();
  v0[46] = v33;
  *v33 = v0;
  v33[1] = sub_1000EE4D0;
  v34 = v0[35];
  v35 = v0[36];
  v37 = v0[2];
  v36 = v0[3];

  return dispatch thunk of CentralManagerProtocol.retrievePeripheral(macAddress:)(v36, v34, v35);
}

uint64_t sub_1000EE1EC()
{
  v1 = v0[45];
  v2 = v0[31];
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during scan: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[31];
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Missing peripheral after scanning!", v11, 2u);
  }

  v12 = v0[23];
  v13 = v0[20];
  v14 = v0[21];
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];

  sub_100100904();
  swift_allocError();
  *v18 = 0x800000000000000BLL;
  swift_willThrow();
  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v12, v13);
  v20 = v0[29];
  v19 = v0[30];
  v21 = v0[26];
  v23 = v0[22];
  v22 = v0[23];
  v24 = v0[19];
  v25 = v0[16];
  v26 = v0[13];
  v27 = v0[9];
  v28 = v0[10];
  v31 = v0[8];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1000EE4D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {
    v8 = sub_1000EED1C;
  }

  else
  {
    v8 = sub_1000EE604;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000EE604()
{
  v79 = v0;
  if (*(v0 + 376))
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 328);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    sub_100102448(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    dispatch thunk of PeripheralProtocol.id.getter();
    v7 = static Identifier.== infix(_:_:)();

    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
    if (v7)
    {
      v10 = *(v0 + 232);
      v9 = *(v0 + 240);
      v11 = *(v0 + 184);
      v71 = *(v0 + 208);
      v72 = *(v0 + 176);
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = *(v0 + 152);
      v16 = *(v0 + 120);
      v15 = *(v0 + 128);
      v17 = *(v0 + 112);
      v73 = *(v0 + 80);
      v74 = *(v0 + 72);
      v76 = *(v0 + 64);
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      (*(v16 + 8))(v15, v17);
      (*(v12 + 8))(v11, v13);

      v18 = *(v0 + 8);
      v19 = *(v0 + 352);

      return v18(v19);
    }

    else
    {
      v36 = *(v0 + 352);

      v37 = *(v0 + 336);
      v38 = *(v0 + 32);
      v39 = swift_task_alloc();
      *(v0 + 344) = v39;
      *v39 = v0;
      v39[1] = sub_1000EDD98;
      v40 = *(v0 + 104);

      return sub_1011EBA70(v38, v37);
    }
  }

  else
  {
    v21 = *(v0 + 264);
    v22 = *(v0 + 248);
    (*(v0 + 256))(*(v0 + 232), *(v0 + 24), *(v0 + 216));
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 272);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 216);
    if (v25)
    {
      v77 = *(v0 + 272);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v78 = v31;
      *v30 = 136446210;
      sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v77(v27, v29);
      v35 = sub_1000136BC(v32, v34, &v78);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "Missing peripheral for %{public}s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    else
    {

      v26(v27, v29);
    }

    v41 = *(v0 + 352);
    sub_100100904();
    swift_allocError();
    *v42 = 0x800000000000000BLL;
    swift_willThrow();

    v43 = *(v0 + 248);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138543362;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "Error during scan: %{public}@", v46, 0xCu);
      sub_10000B3A8(v47, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v49 = *(v0 + 248);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Missing peripheral after scanning!", v52, 2u);
    }

    v53 = *(v0 + 184);
    v54 = *(v0 + 160);
    v55 = *(v0 + 168);
    v57 = *(v0 + 120);
    v56 = *(v0 + 128);
    v58 = *(v0 + 112);

    swift_allocError();
    *v59 = 0x800000000000000BLL;
    swift_willThrow();
    (*(v57 + 8))(v56, v58);
    (*(v55 + 8))(v53, v54);
    v61 = *(v0 + 232);
    v60 = *(v0 + 240);
    v62 = *(v0 + 208);
    v64 = *(v0 + 176);
    v63 = *(v0 + 184);
    v65 = *(v0 + 152);
    v66 = *(v0 + 128);
    v67 = *(v0 + 104);
    v68 = *(v0 + 72);
    v69 = *(v0 + 80);
    v75 = *(v0 + 64);

    v70 = *(v0 + 8);

    return v70();
  }
}

uint64_t sub_1000EED1C()
{
  v1 = v0[44];

  v2 = v0[48];
  v3 = v0[31];
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error during scan: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[31];
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Missing peripheral after scanning!", v12, 2u);
  }

  v13 = v0[23];
  v14 = v0[20];
  v15 = v0[21];
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[14];

  sub_100100904();
  swift_allocError();
  *v19 = 0x800000000000000BLL;
  swift_willThrow();
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v13, v14);
  v21 = v0[29];
  v20 = v0[30];
  v22 = v0[26];
  v24 = v0[22];
  v23 = v0[23];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[13];
  v28 = v0[9];
  v29 = v0[10];
  v32 = v0[8];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1000EF008(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v86 = a1;
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v79 - v9;
  v11 = *(v2 + 184);
  v87 = type metadata accessor for AccessoryProductInfo();
  v12 = *(v87 + 96);
  v89 = a2;
  v13 = (a2 + v12);
  v14 = *v13;
  v15 = v13[1];
  if (v15 >> 60 == 15)
  {
    v16 = qword_101694448;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_101697010;
    v18 = *algn_101697018;
    sub_10002E98C(qword_101697010, *algn_101697018);
  }

  else
  {

    v17 = v14;
    v18 = v15;
  }

  sub_10002E98C(v14, v15);
  v19 = sub_100F4F600(v17, v18);
  v21 = v20;

  sub_100006654(v17, v18);
  if (v21 >> 60 == 15)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_101696FF8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to generate E1 blob.", v25, 2u);
    }

    sub_100100904();
    swift_allocError();
    *v26 = 0x8000000000000000;
    return swift_willThrow();
  }

  else
  {
    v28 = sub_100F54748();
    if (v29 >> 60 == 15)
    {
      if (qword_101694440 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000076D4(v30, qword_101696FF8);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Unable to generate FindMyNetworkId.", v33, 2u);
      }

      sub_100100904();
      swift_allocError();
      *v34 = 0x8000000000000000;
      swift_willThrow();
      return sub_100006654(v19, v21);
    }

    else
    {
      v35 = v28;
      v81 = v29;
      v82 = v10;
      v85 = v5;
      if (qword_101694440 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_101696FF8);
      sub_100017D5C(v19, v21);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      sub_100006654(v19, v21);
      v39 = os_log_type_enabled(v37, v38);
      v83 = v19;
      v84 = v4;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v80 = v35;
        v41 = v40;
        v42 = swift_slowAlloc();
        v88[0] = v42;
        *v41 = 136315138;
        sub_100017D5C(v19, v21);
        v43 = Data.hexString.getter();
        v44 = v19;
        v46 = v45;
        sub_100006654(v44, v21);
        v47 = sub_1000136BC(v43, v46, v88);

        *(v41 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v37, v38, "E1: %s", v41, 0xCu);
        sub_100007BAC(v42);

        v35 = v80;
      }

      v48 = v85;
      v49 = v81;
      sub_100017D5C(v35, v81);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      sub_100006654(v35, v49);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = v35;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v88[0] = v54;
        *v53 = 136315138;
        sub_100017D5C(v52, v49);
        v55 = Data.hexString.getter();
        v57 = v56;
        sub_100006654(v52, v49);
        v58 = sub_1000136BC(v55, v57, v88);

        *(v53 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v50, v51, "findMyNetworkId: %s", v53, 0xCu);
        sub_100007BAC(v54);

        v35 = v52;
        v48 = v85;
      }

      v59 = *(v48 + 184);
      v60 = type metadata accessor for AccessoryMetadata(0);
      v61 = v86;
      v62 = *(v86 + *(v60 + 32));

      v63 = sub_10098E010();
      v64 = *(v59 + 96);
      *(v59 + 88) = v63;
      *(v59 + 96) = v65;

      v66 = *(v48 + 184);
      v67 = (v61 + *(v60 + 20));
      v69 = *v67;
      v68 = v67[1];
      v70 = *(v66 + 104);
      v71 = *(v66 + 112);
      *(v66 + 104) = *v67;
      *(v66 + 112) = v68;

      sub_100017D5C(v69, v68);
      sub_100006654(v70, v71);

      v72 = (*(v48 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
      v73 = *v72;
      v74 = v72[1];
      *v72 = v35;
      v72[1] = v49;
      sub_10002E98C(v35, v49);

      sub_100006654(v73, v74);

      v75 = *(v48 + 184);
      v76 = v82;
      sub_100101E08(v89, v82, type metadata accessor for AccessoryProductInfo);
      (*(*(v87 - 8) + 56))(v76, 0, 1);
      v77 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
      swift_beginAccess();

      sub_10002311C(v76, v75 + v77, &qword_101697268, &qword_101394FE0);
      swift_endAccess();

      v78 = *(v48 + 144);
      CurrentLocationMonitor.requestLocation()();
      sub_100006654(v35, v49);
      return sub_100006654(v83, v21);
    }
  }
}

uint64_t sub_1000EF77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Characteristic();
  v6 = sub_100102448(&qword_1016972C0, 255, &type metadata accessor for Characteristic);
  v7 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(a3, v5, v6);
}

uint64_t sub_1000EF874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014650;

  return sub_1000EF910(a5);
}

uint64_t sub_1000EF910(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for MACAddress();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000EF9F8, v1, 0);
}

uint64_t sub_1000EF9F8()
{
  v27 = v0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_101696FF8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136446210;
    sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "ackPairing with %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[3];
  v20 = v0[4];
  v21 = sub_100102448(&qword_101697238, v18, type metadata accessor for AirPodsLEPairingService);
  v22 = swift_task_alloc();
  v0[8] = v22;
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  v23 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  v0[9] = v24;
  *v24 = v0;
  v24[1] = sub_1000EFCFC;

  return withCheckedContinuation<A>(isolation:function:_:)(v24, v19, v21, 0xD00000000000001ELL, 0x800000010134B350, sub_1001010A0, v22, &type metadata for () + 8);
}

uint64_t sub_1000EFCFC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_1000EFE28, v3, 0);
}

uint64_t sub_1000EFE28()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EFE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v9 = type metadata accessor for Characteristic();
  v10 = sub_100102448(&qword_1016972C0, 255, &type metadata accessor for Characteristic);
  v11 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_1000EFFFC;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v8, a3, v9, v10);
}

uint64_t sub_1000EFFFC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F0340, 0, 0);
  }

  else
  {
    v4 = async function pointer to AsyncSequence<>.reassemble()[1];
    v5 = swift_task_alloc();
    v3[8] = v5;
    v6 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v5 = v3;
    v5[1] = sub_1000F01B4;
    v7 = v3[5];
    v8 = v3[3];

    return AsyncSequence<>.reassemble()(v8, v6);
  }
}

uint64_t sub_1000F01B4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  v6[9] = v2;

  v9 = v6[5];
  v10 = v6[4];
  v11 = v6[3];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_1000F0418;
  }

  else
  {
    v6[10] = a2;
    v6[11] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_1000F03A4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1000F0340()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000F03A4()
{
  v1 = v0[2].i64[1];
  *v0[1].i64[0] = vextq_s8(v0[5], v0[5], 8uLL);

  v2 = v0->i64[1];

  return v2();
}

uint64_t sub_1000F0418()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000F047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2129] = v4;
  v5[2128] = a4;
  v5[2127] = a3;
  v5[2126] = a2;
  v5[2125] = a1;
  v6 = *(*(type metadata accessor for StandaloneBeacon() - 8) + 64) + 15;
  v5[2130] = swift_task_alloc();
  v5[2131] = swift_task_alloc();
  v5[2132] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord();
  v5[2133] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[2134] = swift_task_alloc();
  v5[2135] = swift_task_alloc();
  v9 = type metadata accessor for AirPodsLEPairingService.BeaconCreationResult();
  v5[2136] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[2137] = swift_task_alloc();
  v5[2138] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  v5[2139] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[2140] = swift_task_alloc();
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v5[2141] = v13;
  v14 = *(v13 - 8);
  v5[2142] = v14;
  v15 = *(v14 + 64) + 15;
  v5[2143] = swift_task_alloc();
  v5[2144] = swift_task_alloc();
  v16 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v5[2145] = swift_task_alloc();
  v17 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v5[2146] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[2147] = swift_task_alloc();
  v5[2148] = swift_task_alloc();
  v5[2149] = swift_task_alloc();
  v5[2150] = swift_task_alloc();
  v19 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v5[2151] = swift_task_alloc();
  v20 = type metadata accessor for MACAddress();
  v5[2152] = v20;
  v21 = *(v20 - 8);
  v5[2153] = v21;
  v5[2154] = *(v21 + 64);
  v5[2155] = swift_task_alloc();
  v5[2156] = swift_task_alloc();
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v5[2157] = v23;
  *v23 = v5;
  v23[1] = sub_1000F07B4;

  return daemon.getter();
}

uint64_t sub_1000F07B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 17256);
  v12 = *v1;
  *(v3 + 17264) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 17272) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1000F0998;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000F0998(uint64_t a1)
{
  v3 = *(*v2 + 17272);
  v4 = *v2;
  v4[2160] = a1;
  v4[2161] = v1;

  if (v1)
  {
    v5 = v4[2129];

    return _swift_task_switch(sub_1000F442C, v5, 0);
  }

  else
  {
    v6 = v4[2158];

    v7 = type metadata accessor for Peripheral();
    v8 = sub_100102448(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v9 = async function pointer to dispatch thunk of PeripheralProtocol.macAddress.getter[1];
    v10 = swift_task_alloc();
    v4[2162] = v10;
    *v10 = v4;
    v10[1] = sub_1000F0B78;
    v11 = v4[2151];
    v12 = v4[2126];

    return dispatch thunk of PeripheralProtocol.macAddress.getter(v11, v7, v8);
  }
}

uint64_t sub_1000F0B78()
{
  v1 = *(*v0 + 17296);
  v2 = *(*v0 + 17032);
  v4 = *v0;

  return _swift_task_switch(sub_1000F0C88, v2, 0);
}

uint64_t sub_1000F0C88()
{
  v495 = v0;
  v1 = v0;
  v2 = v0[2153];
  v3 = v0[2152];
  v4 = v0[2151];
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_10000B3A8(v4, &qword_1016A40D0, &unk_10138BE70);
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_101696FF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Peripheral is missing MAC address!", v8, 2u);
    }

    v9 = v0[2160];

    sub_100100904();
    swift_allocError();
    *v10 = 0x8000000000000008;
    swift_willThrow();

    goto LABEL_52;
  }

  v11 = v0[2156];
  v12 = v0[2127];
  v13 = *(v2 + 32);
  v0[2163] = v13;
  v0[2164] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v11, v4, v3);
  sub_1001011C0(v12, (v0 + 2050));
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v22 = v0[2127];
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_101696FF8);
    sub_1001011C0(v22, (v0 + 2056));
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v493 = v27;
      *v26 = 136446210;
      sub_1001011C0(v1 + 16448, v1 + 16496);
      v28 = String.init<A>(describing:)();
      v30 = sub_1000136BC(v28, v29, &v493);

      *(v26 + 4) = v30;
      sub_100007BAC((v1 + 16448));
      _os_log_impl(&_mh_execute_header, v24, v25, "Invalid command from payload %{public}s", v26, 0xCu);
      sub_100007BAC(v27);
    }

    else
    {

      sub_100007BAC(v0 + 2056);
    }

    v53 = *(v1 + 17280);
    v54 = *(v1 + 17248);
    v55 = *(v1 + 17224);
    v56 = *(v1 + 17216);
    sub_100100904();
    swift_allocError();
    *v57 = 0x8000000000000006;
    swift_willThrow();

    goto LABEL_51;
  }

  memcpy(v0 + 861, v0 + 267, 0x108uLL);
  memcpy(v0 + 366, v0 + 267, 0x108uLL);
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v0[2165] = v14;
  v0[2166] = sub_1000076D4(v14, qword_101696FF8);
  sub_100100988((v0 + 861), (v0 + 399));
  sub_100100988((v0 + 861), (v0 + 432));
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v493 = v18;
    *v17 = 136446210;
    memcpy(v0 + 135, v0 + 861, 0x108uLL);
    sub_100100988((v0 + 861), (v0 + 102));
    v19 = String.init<A>(describing:)();
    v21 = sub_1000136BC(v19, v20, &v493);

    *(v17 + 4) = v21;
    sub_1001009E4((v0 + 861));
    sub_1001009E4((v0 + 861));
    _os_log_impl(&_mh_execute_header, v15, v16, "Received command: %{public}s", v17, 0xCu);
    sub_100007BAC(v18);
  }

  else
  {

    sub_1001009E4((v0 + 861));
    sub_1001009E4((v0 + 861));
  }

  memcpy(v0 + 36, v0 + 861, 0x108uLL);
  v31 = sub_100100ACC((v0 + 36));
  if (v31 == 4)
  {
    sub_1000479AC((v0 + 36));
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Received pairing status.", v73, 2u);
    }

    v74 = v0[2129];

    *(v74 + 176) = 5;
    sub_100391750((v1 + 16800));
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if (swift_dynamicCast())
    {
      v75 = v1 + 16336;
      v76 = *(v1 + 16256);
      *(v1 + 16368) = *(v1 + 16240);
      *(v1 + 0x4000) = v76;
      v77 = *(v1 + 16224);
      *(v1 + 16336) = *(v1 + 16208);
      *(v1 + 16352) = v77;
      v78 = *(v1 + 16352);
      v79 = v1;
      v1 = *(v1 + 16360);
      sub_100017D5C(v78, v1);
      v80 = sub_1008CDF88(v78, v1);
      if (v80)
      {
        v1 = v79;
        v81 = v80;
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *&v493 = v85;
          *v84 = 136446210;
          v86 = sub_1008CDD10(v81);
          v88 = sub_1000136BC(v86, v87, &v493);

          *(v84 + 4) = v88;
          _os_log_impl(&_mh_execute_header, v82, v83, "Pairing failed with status %{public}s", v84, 0xCu);
          sub_100007BAC(v85);
        }

        v89 = *(v1 + 17280);
        v90 = *(v1 + 17248);
        v91 = *(v1 + 17224);
        v92 = *(v1 + 17216);
        sub_100100904();
        swift_allocError();
        v94 = 0x8000000000000009;
        goto LABEL_153;
      }

      v227 = (v79 + 2095);
      v471 = v79;
      v488 = v75;
      if (*(v79[2129] + 274))
      {
        v230 = &type metadata for CollaborativeKeyGen.v2.C3;
        v231 = sub_10010194C();
        goto LABEL_90;
      }

LABEL_89:
      v230 = &type metadata for CollaborativeKeyGen.v1.C3;
      v231 = sub_100101704();
LABEL_90:
      v235 = v231;
      v236 = v471[2161];
      v237 = v471[2042];
      v238 = v471[2043];
      v471[2098] = v230;
      v471[2099] = v231;
      sub_1000280DC(v227);
      sub_100017D5C(v237, v238);
      KeyRepresentable<>.init(data:)(v237, v238, v230, *(v235 + 8));
      if (v236)
      {

        sub_100101758(v227);
        *(v227 + 32) = 0;
        *v227 = 0u;
        *(v227 + 16) = 0u;
        sub_10000B3A8(v227, &qword_101697320, &qword_10138BE90);
        v1 = v471;
        v75 = v488;
        sub_1001017A8(v488, (v471 + 2018));
        sub_1001017A8(v488, (v471 + 2010));
        v239 = Logger.logObject.getter();
        v240 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v239, v240))
        {
          v241 = swift_slowAlloc();
          v242 = swift_slowAlloc();
          *&v493 = v242;
          *v241 = 136315138;
          v243 = Data.hexString.getter();
          v245 = sub_1000136BC(v243, v244, &v493);

          *(v241 + 4) = v245;
          sub_1001016B0(v488);
          sub_1001016B0(v488);
          _os_log_impl(&_mh_execute_header, v239, v240, "Invalid C3: %s", v241, 0xCu);
          sub_100007BAC(v242);
        }

        else
        {

          sub_1001016B0(v488);
          sub_1001016B0(v488);
        }

        v431 = v471[2160];
        v90 = v471[2156];
        v91 = v471[2153];
        v92 = v471[2152];
        sub_100100904();
        swift_allocError();
        v94 = 0x8000000000000007;
LABEL_153:
        *v93 = v94;
        swift_willThrow();

        sub_1001009E4(v1 + 6888);
        sub_1001016B0(v75);
        (*(v91 + 8))(v90, v92);
        goto LABEL_52;
      }

      v260 = v471[2129];
      sub_10000A748(v227, (v471 + 2085));
      v261 = *(v260 + 184);
      sub_10001F280((v471 + 2085), (v471 + 2105));
      v262 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      swift_beginAccess();

      sub_10002311C((v471 + 2105), v261 + v262, &qword_101697320, &qword_10138BE90);
      swift_endAccess();

      v263 = (*(v260 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
      v265 = *v263;
      v264 = v263[1];
      *v263 = v78;
      v263[1] = v1;
      sub_100017D5C(v78, v1);

      sub_100006654(v265, v264);

      v266 = *(v260 + 184);
      v267 = v471[2046];
      v268 = v471[2047];
      v269 = (v266 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v271 = *(v266 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v270 = *(v266 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
      *v269 = v267;
      v269[1] = v268;

      v479 = v267;
      v482 = v268;
      sub_100017D5C(v267, v268);
      sub_100006654(v271, v270);

      v272 = Logger.logObject.getter();
      v273 = static os_log_type_t.default.getter();
      v224 = v488;
      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        *&v493 = v275;
        *v274 = 136446210;
        v276 = sub_1008CDD10(0);
        v278 = sub_1000136BC(v276, v277, &v493);

        *(v274 + 4) = v278;
        v1 = v471;
        _os_log_impl(&_mh_execute_header, v272, v273, "status: %{public}s", v274, 0xCu);
        sub_100007BAC(v275);
      }

      else
      {
        v1 = v471;
      }

      sub_1001017A8(v488, v1 + 16016);
      sub_1001017A8(v488, v1 + 15952);
      sub_1001017A8(v488, v1 + 15888);
      v432 = Logger.logObject.getter();
      v433 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v432, v433))
      {

        sub_1001016B0(v488);
        sub_1001016B0(v488);
        sub_1001016B0(v488);
        goto LABEL_168;
      }

      v434 = swift_slowAlloc();
      v424 = swift_slowAlloc();
      v435 = v424;
      *&v493 = v424;
      *v434 = 134218242;
      v436 = v482 >> 62;
      if ((v482 >> 62) > 1)
      {
        v437 = v479;
        if (v436 != 2)
        {
          v438 = 0;
          goto LABEL_167;
        }

        v440 = *(v479 + 16);
        v439 = *(v479 + 24);
        v234 = __OFSUB__(v439, v440);
        v438 = v439 - v440;
        if (!v234)
        {
          goto LABEL_167;
        }

        __break(1u);
      }

      else
      {
        v437 = v479;
        if (!v436)
        {
          v438 = BYTE6(v482);
LABEL_167:
          *(v434 + 4) = v438;
          sub_1001016B0(v488);
          *(v434 + 12) = 2080;
          v441 = Data.hexString.getter();
          v443 = sub_1000136BC(v441, v442, &v493);

          *(v434 + 14) = v443;
          sub_1001016B0(v488);
          sub_1001016B0(v488);
          _os_log_impl(&_mh_execute_header, v432, v433, "S4 count %ld: %s", v434, 0x16u);
          sub_100007BAC(v435);

          v1 = v471;
LABEL_168:
          sub_1001017A8(v488, v1 + 15824);
          sub_1001017A8(v488, v1 + 15760);
          v444 = Logger.logObject.getter();
          v445 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v444, v445))
          {
            v446 = swift_slowAlloc();
            v447 = swift_slowAlloc();
            *&v493 = v447;
            *v446 = 136315138;
            v448 = Data.hexString.getter();
            v450 = sub_1000136BC(v448, v449, &v493);

            *(v446 + 4) = v450;
            sub_1001016B0(v488);
            sub_1001016B0(v488);
            _os_log_impl(&_mh_execute_header, v444, v445, "C3: %s", v446, 0xCu);
            sub_100007BAC(v447);
          }

          else
          {

            sub_1001016B0(v488);
            sub_1001016B0(v488);
          }

          v451 = *(v1 + 17032);
          v452 = *(v1 + 16704);
          v453 = *(v1 + 16712);
          sub_1000035D0((v1 + 16680), v452);
          v454 = (*(*(*(v453 + 8) + 8) + 40))(v452);
          v456 = v455;
          sub_1000FAAA0(v454, v455, (v1 + 15600));
          sub_100016590(v454, v456);
          v457 = *(v1 + 15608);
          v227 = 6888;
          if (v457 >> 60 != 15)
          {
            *(v1 + 15680) = *(v1 + 15600);
            *(v1 + 15688) = v457;
            *(v1 + 15696) = *(v1 + 15616);
            *(v1 + 15712) = *(v1 + 15632);
            *(v1 + 15728) = *(v1 + 15648);
            *(v1 + 15744) = *(v1 + 15664);
            v466 = swift_task_alloc();
            *(v1 + 17440) = v466;
            *v466 = v1;
            v466[1] = sub_1000F5F78;
            v467 = *(v1 + 17248);
            v468 = *(v1 + 17120);
            v469 = *(v1 + 17032);
            v470 = *(v1 + 17024);

            return sub_1000FACBC(v468, v1 + 15680, v467, v470);
          }

          if (qword_1016950E0 == -1)
          {
LABEL_173:
            sub_1000076D4(v14, qword_10177C448);
            v458 = Logger.logObject.getter();
            v459 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v458, v459))
            {
              v460 = swift_slowAlloc();
              *v460 = 0;
              _os_log_impl(&_mh_execute_header, v458, v459, "Unable to generate initial pairing data from owner context and C3!)", v460, 2u);
            }

            v461 = *(v1 + 17280);
            v462 = *(v1 + 17248);
            v463 = *(v1 + 17224);
            v464 = *(v1 + 17216);

            sub_100100904();
            swift_allocError();
            *v465 = 0x8000000000000007;
            swift_willThrow();

            sub_1001009E4(v1 + v227);
            sub_1001016B0(v224);
            (*(v463 + 8))(v462, v464);
            sub_100007BAC((v1 + 16680));
            goto LABEL_52;
          }

LABEL_181:
          swift_once();
          goto LABEL_173;
        }
      }

      LODWORD(v438) = HIDWORD(v437) - v437;
      if (__OFSUB__(HIDWORD(v437), v437))
      {
        __break(1u);
        return _swift_task_switch(v424, v185, v425);
      }

      v438 = v438;
      goto LABEL_167;
    }

    sub_100100988(v1 + 6888, v1 + 5304);
    sub_100100988(v1 + 6888, v1 + 5568);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v493 = v105;
      *v104 = 136446210;
      memcpy((v1 + 6096), (v1 + 2928), 0x108uLL);
      v113 = sub_1000479AC(v1 + 6096);
      *(v1 + 16744) = &type metadata for AirPodsSWSendPairingStatusCommandPayload;
      *(v1 + 16752) = sub_100101224();
      v114 = swift_allocObject();
      *(v1 + 16720) = v114;
      v115 = v113[3];
      v117 = *v113;
      v116 = v113[1];
      v114[3] = v113[2];
      v114[4] = v115;
      v114[1] = v117;
      v114[2] = v116;
      memcpy((v1 + 5832), (v1 + 2928), 0x108uLL);
      v118 = sub_1000479AC(v1 + 5832);
      sub_1000D2A70(v118, v1 + 16272, &qword_101697310, &qword_10139E330);
      v119 = String.init<A>(describing:)();
      v121 = sub_1000136BC(v119, v120, &v493);

      *(v104 + 4) = v121;
      sub_1001009E4(v1 + 6888);
      sub_1001009E4(v1 + 6888);
      v112 = "Invalid sendPairingStatus payload %{public}s";
      goto LABEL_42;
    }

LABEL_43:

    sub_1001009E4(v1 + 6888);
    sub_1001009E4(v1 + 6888);
    goto LABEL_44;
  }

  if (v31 != 2)
  {
    if (!v31)
    {
      v32 = sub_1000479AC((v0 + 36));
      v33 = *v32;
      v0[2167] = *v32;
      v34 = v32[1];
      v0[2168] = v34;
      v489 = v32[2];
      v0[2169] = v489;
      v35 = v32[3];
      v0[2170] = v35;
      memcpy(v0 + 828, v0 + 366, 0x108uLL);
      v36 = sub_1000479AC((v0 + 828));
      v37 = *v36;
      v38 = v36[1];
      v39 = v36[2];
      v40 = v36[3];
      sub_100100988((v0 + 861), (v0 + 795));
      sub_100017D5C(v37, v38);
      sub_100017D5C(v39, v40);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v493 = v44;
        *&v45 = v33;
        *(&v45 + 1) = v34;
        *v43 = 136315138;
        *&v46 = v489;
        *(&v46 + 1) = v35;
        *(v1 + 16920) = v45;
        *(v1 + 16936) = v46;
        memcpy((v1 + 1872), (v1 + 2928), 0x108uLL);
        v47 = sub_1000479AC(v1 + 1872);
        v49 = v47[2];
        v48 = v47[3];
        sub_100017D5C(*v47, v47[1]);
        sub_100017D5C(v49, v48);
        v50 = String.init<A>(describing:)();
        v52 = sub_1000136BC(v50, v51, &v493);

        *(v43 + 4) = v52;
        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
        _os_log_impl(&_mh_execute_header, v41, v42, "Received beacon group data %s", v43, 0xCu);
        sub_100007BAC(v44);
      }

      else
      {

        sub_1001009E4((v0 + 861));
        sub_1001009E4((v0 + 861));
      }

      memcpy((v1 + 5040), (v1 + 2928), 0x108uLL);
      v125 = sub_1000479AC(v1 + 5040);
      v127 = *v125;
      v126 = v125[1];
      v128 = v125[2];
      v129 = v125[3];
      sub_100100988(v1 + 6888, v1 + 4776);
      sub_100017D5C(v127, v126);
      sub_100017D5C(v128, v129);
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *&v493 = v133;
        *v132 = 136315138;
        v134 = Data.hexString.getter();
        v136 = sub_1000136BC(v134, v135, &v493);

        *(v132 + 4) = v136;
        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
        _os_log_impl(&_mh_execute_header, v130, v131, "numberOfBeacons: %s", v132, 0xCu);
        sub_100007BAC(v133);
      }

      else
      {

        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
      }

      memcpy((v1 + 2664), (v1 + 2928), 0x108uLL);
      v151 = sub_1000479AC(v1 + 2664);
      v153 = *v151;
      v152 = v151[1];
      v154 = v151[2];
      v155 = v151[3];
      sub_100100988(v1 + 6888, v1 + 2400);
      sub_100017D5C(v153, v152);
      sub_100017D5C(v154, v155);
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *&v493 = v159;
        *v158 = 136315138;
        v160 = Data.hexString.getter();
        v162 = sub_1000136BC(v160, v161, &v493);

        *(v158 + 4) = v162;
        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
        _os_log_impl(&_mh_execute_header, v156, v157, "beaconGroupData: %s", v158, 0xCu);
        sub_100007BAC(v159);
      }

      else
      {

        sub_1001009E4(v1 + 6888);
        sub_1001009E4(v1 + 6888);
      }

      v163 = *(v1 + 17032);
      *(v163 + 176) = 2;
      if (*(v163 + 272) == 1)
      {
        v164 = *(v1 + 17200);
        (*(*(v1 + 17136) + 56))(v164, 1, 1, *(v1 + 17128));
        v165 = sub_10110D3E0(v164, 255);
        v167 = v166;
        v168 = *(v1 + 17360);
        v169 = *(v1 + 17352);
        v170 = *(v1 + 17344);
        v171 = *(v1 + 17336);
        v172 = *(v1 + 17288);
        sub_10000B3A8(*(v1 + 17200), &unk_1016AF8B0, &unk_1013A0700);
        v173 = sub_1000E0768();
        if (v172)
        {
          v248 = *(v1 + 17328);
          swift_errorRetain();
          swift_errorRetain();
          v249 = Logger.logObject.getter();
          v250 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v249, v250))
          {
            v251 = swift_slowAlloc();
            v252 = swift_slowAlloc();
            *v251 = 138543362;
            swift_errorRetain();
            v253 = _swift_stdlib_bridgeErrorToNSError();
            *(v251 + 4) = v253;
            *v252 = v253;

            _os_log_impl(&_mh_execute_header, v249, v250, "Unable to parse beacon group info due to %{public}@", v251, 0xCu);
            sub_10000B3A8(v252, &qword_10169BB30, &unk_10138B3C0);
          }

          else
          {
          }

          v254 = *(v1 + 17224);
          v255 = *(v1 + 17032);
          sub_1000F7068(v165, v167, (v1 + 1344));
          v256 = (v254 + 8);
          v257 = *(v1 + 17280);
          v258 = *(v1 + 17248);
          v259 = *(v1 + 17216);
          memcpy(__dst, (v1 + 1344), sizeof(__dst));

          sub_100016590(v165, v167);

          sub_1001009E4(v1 + 6888);
          (*v256)(v258, v259);
        }

        else
        {
          v174 = v173;
          v175 = *(v1 + 17328);
          swift_bridgeObjectRetain_n();
          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            *&v493 = v179;
            *v178 = 136315138;
            type metadata accessor for MultipartAccessoryPairingInfo(0);
            sub_100101BAC();
            v180 = v1;

            v181 = Dictionary.description.getter();
            v183 = v182;

            v184 = sub_1000136BC(v181, v183, &v493);
            v1 = v180;

            *(v178 + 4) = v184;
            swift_bridgeObjectRelease_n();
            _os_log_impl(&_mh_execute_header, v176, v177, "beaconGroupInfo: %s", v178, 0xCu);
            sub_100007BAC(v179);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v246 = *(*(v1 + 17032) + 184);
          v247 = *(v246 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
          *(v246 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = v174;

          sub_1000F7068(v165, v167, (v1 + 1608));
          v279 = *(v1 + 17280);
          v280 = *(v1 + 17248);
          v281 = *(v1 + 17224);
          v282 = *(v1 + 17216);
          memcpy(__dst, (v1 + 1608), sizeof(__dst));

          sub_100016590(v165, v167);
          sub_1001009E4(v1 + 6888);
          (*(v281 + 8))(v280, v282);
        }

        v283 = v1;
        v284 = *(v1 + 17248);
        v285 = *(v283 + 17240);
        v286 = *(v283 + 17208);
        v287 = *(v283 + 17200);
        v288 = *(v283 + 17192);
        v289 = *(v283 + 17184);
        v290 = *(v283 + 17176);
        v291 = *(v283 + 17160);
        v292 = *(v283 + 17152);
        v473 = *(v283 + 17144);
        v475 = *(v283 + 17120);
        v477 = *(v283 + 17104);
        v480 = *(v283 + 17096);
        v483 = *(v283 + 17080);
        v485 = *(v283 + 17072);
        v487 = *(v283 + 17056);
        v491 = *(v283 + 17048);
        v492 = *(v283 + 17040);
        memcpy(*(v283 + 17000), __dst, 0x108uLL);

        v149 = *(v283 + 8);
        goto LABEL_53;
      }

      v185 = *(v1 + 17280);
      v186 = sub_1000F459C;
      goto LABEL_145;
    }

    sub_100100988((v0 + 861), (v0 + 465));
    sub_100100988((v0 + 861), (v0 + 498));
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v493 = v98;
      *v97 = 136446210;
      memcpy(v0 + 531, v0 + 861, 0x108uLL);
      sub_100100988((v0 + 861), (v0 + 564));
      v99 = String.init<A>(describing:)();
      v101 = sub_1000136BC(v99, v100, &v493);

      *(v97 + 4) = v101;
      sub_1001009E4((v0 + 861));
      sub_1001009E4((v0 + 861));
      _os_log_impl(&_mh_execute_header, v95, v96, "Received unexpected command %{public}s", v97, 0xCu);
      sub_100007BAC(v98);
    }

    else
    {

      sub_1001009E4((v0 + 861));
      sub_1001009E4((v0 + 861));
    }

    v137 = v0[2160];
    v54 = v0[2156];
    v55 = *(v1 + 17224);
    v56 = *(v1 + 17216);
    sub_100100904();
    swift_allocError();
    v124 = 0x8000000000000006;
    goto LABEL_50;
  }

  sub_1000479AC((v0 + 36));
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "Received pairing data.", v60, 2u);
  }

  sub_100391750(v0 + 2110);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (!swift_dynamicCast())
  {
    sub_100100988((v0 + 861), (v0 + 1389));
    sub_100100988((v0 + 861), (v0 + 1422));
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v493 = v105;
      *v104 = 136446210;
      memcpy(v0 + 1488, v0 + 366, 0x108uLL);
      v106 = sub_1000479AC((v0 + 1488));
      *(v1 + 16664) = &type metadata for AirPodsSWSendPairingDataCommandPayload;
      *(v1 + 16672) = sub_1001019A0();
      v107 = swift_allocObject();
      *(v1 + 16640) = v107;
      memcpy((v107 + 16), v106, 0x108uLL);
      memcpy((v1 + 11640), (v1 + 2928), 0x108uLL);
      v108 = sub_1000479AC(v1 + 11640);
      sub_1000D2A70(v108, v1 + 12432, &qword_101697348, &unk_10138BEB0);
      v109 = String.init<A>(describing:)();
      v111 = sub_1000136BC(v109, v110, &v493);

      *(v104 + 4) = v111;
      sub_1001009E4(v1 + 6888);
      sub_1001009E4(v1 + 6888);
      v112 = "Invalid sendPairingData payload %{public}s";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v102, v103, v112, v104, 0xCu);
      sub_100007BAC(v105);

LABEL_44:
      v122 = *(v1 + 17280);
      v54 = *(v1 + 17248);
      v55 = *(v1 + 17224);
      v56 = *(v1 + 17216);
      sub_100100904();
      swift_allocError();
      v124 = 0x8000000000000007;
LABEL_50:
      *v123 = v124;
      swift_willThrow();

      sub_1001009E4(v1 + 6888);
LABEL_51:
      (*(v55 + 8))(v54, v56);
LABEL_52:
      v138 = *(v1 + 17248);
      v139 = *(v1 + 17240);
      v140 = *(v1 + 17208);
      v141 = *(v1 + 17200);
      v142 = v1;
      v143 = *(v1 + 17192);
      v144 = v142[2148];
      v145 = v142[2147];
      v146 = v142[2145];
      v147 = v142[2144];
      v148 = v142[2143];
      v472 = v142[2140];
      v474 = v142[2138];
      v476 = v142[2137];
      v478 = v142[2135];
      v481 = v142[2134];
      v484 = v142[2132];
      v486 = v142[2131];
      v490 = v142[2130];

      v149 = v142[1];
LABEL_53:

      return v149();
    }

    goto LABEL_43;
  }

  v61 = v0;
  memcpy(v61 + 1917, v61 + 1356, 0x108uLL);
  sub_1001019F4((v61 + 1917), (v61 + 1587));
  sub_1001019F4((v61 + 1917), (v61 + 1620));
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v493 = v65;
    *v64 = 136315138;
    v66 = *(v1 + 15368);
    v67 = *(v1 + 15376);
    v68 = Data.hexString.getter();
    v70 = sub_1000136BC(v68, v69, &v493);

    *(v64 + 4) = v70;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v62, v63, "SerialNumber: %s", v64, 0xCu);
    sub_100007BAC(v65);
  }

  else
  {

    sub_100101A50((v0 + 1917));
    sub_100101A50((v0 + 1917));
  }

  sub_1001019F4(v1 + 15336, v1 + 13224);
  sub_1001019F4(v1 + 15336, v1 + 13488);
  v187 = Logger.logObject.getter();
  v188 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    *&v493 = v190;
    *v189 = 136315138;
    v191 = *(v1 + 15584);
    v192 = *(v1 + 15592);
    v193 = Data.hexString.getter();
    v195 = sub_1000136BC(v193, v194, &v493);

    *(v189 + 4) = v195;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v187, v188, "AltSerialNumber: %s", v189, 0xCu);
    sub_100007BAC(v190);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 13752);
  sub_1001019F4(v1 + 15336, v1 + 14016);
  v196 = Logger.logObject.getter();
  v197 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    *&v493 = v199;
    *v198 = 136315138;
    v200 = *(v1 + 15352);
    v201 = *(v1 + 15360);
    v202 = Data.hexString.getter();
    v204 = sub_1000136BC(v202, v203, &v493);

    *(v198 + 4) = v204;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v196, v197, "numberOfBeacons: %s", v198, 0xCu);
    sub_100007BAC(v199);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 14280);
  sub_1001019F4(v1 + 15336, v1 + 14544);
  v205 = Logger.logObject.getter();
  v206 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v205, v206))
  {
    v207 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    *&v493 = v208;
    *v207 = 136315138;
    v209 = *(v1 + 15384);
    v210 = *(v1 + 15392);
    v211 = Data.hexString.getter();
    v213 = sub_1000136BC(v211, v212, &v493);

    *(v207 + 4) = v213;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v205, v206, "otherSerialNumber: %s", v207, 0xCu);
    sub_100007BAC(v208);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  v78 = 15336;
  sub_1001019F4(v1 + 15336, v1 + 14808);
  sub_1001019F4(v1 + 15336, v1 + 15072);
  v214 = Logger.logObject.getter();
  v215 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v214, v215))
  {
    v216 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    *&v493 = v217;
    *v216 = 136315138;
    v218 = *(v1 + 15400);
    v219 = *(v1 + 15408);
    v220 = Data.hexString.getter();
    v222 = sub_1000136BC(v220, v221, &v493);

    *(v216 + 4) = v222;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v214, v215, "seed: %s", v216, 0xCu);
    sub_100007BAC(v217);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 552);
  sub_1001019F4(v1 + 15336, v1 + 12168);
  sub_1001019F4(v1 + 15336, v1 + 10584);
  v223 = Logger.logObject.getter();
  v224 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v223, v224))
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    goto LABEL_106;
  }

  v225 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *&v493 = v14;
  *v225 = 134218242;
  v226 = *(v1 + 15416);
  v227 = *(v1 + 15424);
  v228 = v227 >> 62;
  if ((v227 >> 62) <= 1)
  {
    if (v228)
    {
      LODWORD(v229) = HIDWORD(v226) - v226;
      if (__OFSUB__(HIDWORD(v226), v226))
      {
        __break(1u);
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v229 = v229;
    }

    else
    {
      v229 = BYTE6(v227);
    }

    goto LABEL_105;
  }

  if (v228 == 2)
  {
    v233 = *(v226 + 16);
    v232 = *(v226 + 24);
    v234 = __OFSUB__(v232, v233);
    v229 = v232 - v233;
    if (!v234)
    {
      goto LABEL_105;
    }

    __break(1u);
    goto LABEL_89;
  }

  v229 = 0;
LABEL_105:
  *(v225 + 4) = v229;
  sub_100101A50(v1 + 15336);
  *(v225 + 12) = 2080;
  v293 = Data.hexString.getter();
  v295 = sub_1000136BC(v293, v294, &v493);

  *(v225 + 14) = v295;
  sub_100101A50(v1 + 15336);
  sub_100101A50(v1 + 15336);
  _os_log_impl(&_mh_execute_header, v223, v224, "attestation (S1) count %ld: %s", v225, 0x16u);
  sub_100007BAC(v14);

LABEL_106:
  sub_1001019F4(v1 + 15336, v1 + 10320);
  sub_1001019F4(v1 + 15336, v1 + 9792);
  sub_1001019F4(v1 + 15336, v1 + 9528);
  v296 = Logger.logObject.getter();
  v224 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v296, v224))
  {
    v297 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v493 = v14;
    *v297 = 134218242;
    v298 = *(v1 + 15496);
    v227 = *(v1 + 15504);
    v299 = v227 >> 62;
    if ((v227 >> 62) > 1)
    {
      if (v299 != 2)
      {
        v300 = 0;
        goto LABEL_118;
      }

      v302 = *(v298 + 16);
      v301 = *(v298 + 24);
      v234 = __OFSUB__(v301, v302);
      v300 = v301 - v302;
      if (!v234)
      {
        goto LABEL_118;
      }

      __break(1u);
    }

    else if (!v299)
    {
      v300 = BYTE6(v227);
LABEL_118:
      *(v297 + 4) = v300;
      sub_100101A50(v1 + 15336);
      *(v297 + 12) = 2080;
      v303 = Data.hexString.getter();
      v305 = sub_1000136BC(v303, v304, &v493);

      *(v297 + 14) = v305;
      sub_100101A50(v1 + 15336);
      sub_100101A50(v1 + 15336);
      _os_log_impl(&_mh_execute_header, v296, v224, "BAA signature (S2) count %ld: %s", v297, 0x16u);
      sub_100007BAC(v14);

      goto LABEL_119;
    }

    LODWORD(v300) = HIDWORD(v298) - v298;
    if (!__OFSUB__(HIDWORD(v298), v298))
    {
      v300 = v300;
      goto LABEL_118;
    }

    goto LABEL_180;
  }

  sub_100101A50(v1 + 15336);
  sub_100101A50(v1 + 15336);
  sub_100101A50(v1 + 15336);
LABEL_119:
  sub_1001019F4(v1 + 15336, v1 + 9264);
  v306 = Logger.logObject.getter();
  v307 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v306, v307))
  {
    v308 = swift_slowAlloc();
    *v308 = 16777472;
    v308[4] = *(v1 + 15544);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v306, v307, "beaconPartId: %hhu", v308, 5u);
  }

  else
  {

    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 9000);
  sub_1001019F4(v1 + 15336, v1 + 8736);
  v309 = Logger.logObject.getter();
  v310 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v309, v310))
  {
    v311 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    *&v493 = v312;
    *v311 = 136315138;
    v313 = *(v1 + 15336);
    v314 = *(v1 + 15344);
    v315 = Data.hexString.getter();
    v317 = sub_1000136BC(v315, v316, &v493);

    *(v311 + 4) = v317;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v309, v310, "C1: %s", v311, 0xCu);
    sub_100007BAC(v312);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 8472);
  sub_1001019F4(v1 + 15336, v1 + 8208);
  v318 = Logger.logObject.getter();
  v319 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v318, v319))
  {
    v320 = swift_slowAlloc();
    v321 = swift_slowAlloc();
    *&v493 = v321;
    *v320 = 136315138;
    v322 = *(v1 + 15432);
    v323 = *(v1 + 15440);
    v324 = Data.hexString.getter();
    v326 = sub_1000136BC(v324, v325, &v493);

    *(v320 + 4) = v326;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v318, v319, "Certs: %s", v320, 0xCu);
    sub_100007BAC(v321);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  sub_1001019F4(v1 + 15336, v1 + 7944);
  sub_1001019F4(v1 + 15336, v1 + 7680);
  v327 = Logger.logObject.getter();
  v328 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v327, v328))
  {
    v329 = swift_slowAlloc();
    v330 = swift_slowAlloc();
    *&v493 = v330;
    *v329 = 136315138;
    v331 = *(v1 + 15568);
    v332 = *(v1 + 15576);
    v333 = Data.hexString.getter();
    v335 = sub_1000136BC(v333, v334, &v493);

    *(v329 + 4) = v335;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v327, v328, "AuthNonce: %s", v329, 0xCu);
    sub_100007BAC(v330);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  v336 = v1;
  sub_1001019F4(v336 + 15336, v336 + 7416);
  sub_1001019F4(v336 + 15336, v336 + 7152);
  v337 = Logger.logObject.getter();
  v338 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v337, v338))
  {
    v339 = swift_slowAlloc();
    v340 = swift_slowAlloc();
    *&v493 = v340;
    *v339 = 136315138;
    v341 = *(v1 + 15464);
    v342 = *(v1 + 15472);
    v343 = Data.hexString.getter();
    v345 = sub_1000136BC(v343, v344, &v493);

    *(v339 + 4) = v345;
    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
    _os_log_impl(&_mh_execute_header, v337, v338, "CSR: %s", v339, 0xCu);
    sub_100007BAC(v340);
  }

  else
  {

    sub_100101A50(v1 + 15336);
    sub_100101A50(v1 + 15336);
  }

  v346 = *(v1 + 17288);
  v347 = *(v1 + 17032);
  *(v347 + 176) = 3;
  v348 = *(v347 + 184);
  v349 = *(v1 + 15336);
  v350 = *(v1 + 15344);

  sub_100017D5C(v349, v350);
  sub_1004A4714(v349, v350, &v493);
  if (v346)
  {

    v351 = xmmword_10138BBF0;
  }

  else
  {
    v351 = v493;
  }

  v352 = *(v1 + 17160);
  v353 = *(v348 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v354 = *(v348 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
  *(v348 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v351;
  sub_100006654(v353, v354);

  v355 = *(v1 + 15368);
  v356 = *(v1 + 15376);
  v357 = (*(v347 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v358 = *v357;
  v359 = v357[1];
  *v357 = v355;
  v357[1] = v356;

  sub_100017D5C(v355, v356);
  sub_100006654(v358, v359);

  v360 = *(v1 + 15496);
  v361 = *(v1 + 15504);
  v362 = (*(v347 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
  v363 = *v362;
  v364 = v362[1];
  *v362 = v360;
  v362[1] = v361;

  sub_100017D5C(v360, v361);
  sub_100006654(v363, v364);

  v365 = *(v1 + 15416);
  v366 = *(v1 + 15424);
  v367 = (*(v347 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
  v368 = *v367;
  v369 = v367[1];
  *v367 = v365;
  v367[1] = v366;

  sub_100017D5C(v365, v366);
  sub_100006654(v368, v369);

  v370 = *(v1 + 15400);
  v371 = *(v1 + 15408);
  v372 = (*(v347 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
  v373 = *v372;
  v374 = v372[1];
  *v372 = v370;
  v372[1] = v371;

  sub_100017D5C(v370, v371);
  sub_100006654(v373, v374);

  v375 = *(v347 + 184);
  v376 = (v375 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  *v376 = *(v1 + 15544);
  v376[1] = 0;
  *(v1 + 16976) = *(v1 + 15352);
  sub_1000E0A3C();

  *(v375 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = DataProtocol.intValue.getter();

  v377 = *(v1 + 15552);
  v378 = *(v1 + 15560);
  v379 = Data.trimmed.getter();
  v381 = v380;
  static String.Encoding.utf8.getter();
  v382 = String.init(data:encoding:)();
  v384 = v383;
  sub_100016590(v379, v381);
  if (!v384)
  {
    v385 = Data.trimmed.getter();
    v387 = v386;
    v382 = Data.hexString.getter();
    v384 = v388;
    sub_100016590(v385, v387);
  }

  *(v1 + 17384) = v384;
  swift_bridgeObjectRetain_n();
  v389 = Logger.logObject.getter();
  v390 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v389, v390))
  {
    v391 = swift_slowAlloc();
    v392 = swift_slowAlloc();
    *&v493 = v392;
    *v391 = 136446210;

    v393 = sub_1000136BC(v382, v384, &v493);

    *(v391 + 4) = v393;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v389, v390, "beaconDisplayName: %{public}s", v391, 0xCu);
    sub_100007BAC(v392);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v394 = *(v1 + 17032);
  v395 = (*(v347 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
  v396 = v395[1];
  *v395 = v382;
  v395[1] = v384;

  v397 = *(v1 + 15568);
  v398 = *(v1 + 15576);
  v399 = (*(v347 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
  v400 = *v399;
  v401 = v399[1];
  *v399 = v397;
  v399[1] = v398;

  sub_100017D5C(v397, v398);
  sub_100006654(v400, v401);

  v402 = *(v1 + 15584);
  v403 = *(v1 + 15592);
  v404 = (*(v347 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
  v405 = *v404;
  v406 = v404[1];
  *v404 = v402;
  v404[1] = v403;

  sub_100017D5C(v402, v403);
  sub_100006654(v405, v406);

  v407 = *(v1 + 15432);
  v408 = *(v1 + 15440);
  v409 = (*(v347 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
  v410 = *v409;
  v411 = v409[1];
  *v409 = v407;
  v409[1] = v408;

  sub_100017D5C(v407, v408);
  sub_100006654(v410, v411);

  v412 = *(v1 + 15464);
  v413 = *(v1 + 15472);
  v414 = (*(v347 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
  v415 = *v414;
  v416 = v414[1];
  *v414 = v412;
  v414[1] = v413;

  sub_100017D5C(v412, v413);
  sub_100006654(v415, v416);

  v417 = *(v1 + 15384);
  v418 = *(v1 + 15392);
  v419 = Data.chunked(into:)();
  *(v1 + 17392) = v419;
  *(v1 + 17400) = sub_1000F7A60(v419);
  *(v1 + 17408) = 0;
  v420 = *(v347 + 184);
  v421 = *(v420 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
  *(v420 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers) = v419;

  if ((*(v394 + 272) & 1) == 0)
  {
    v185 = *(v1 + 17280);
    v186 = sub_1000F4F14;
LABEL_145:
    v424 = v186;
    v425 = 0;

    return _swift_task_switch(v424, v185, v425);
  }

  v422 = *(*(v1 + 17032) + 184);

  v423 = sub_1000F7BD0();
  v426 = *(v422 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses);
  *(v422 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = v423;

  v427 = swift_task_alloc();
  *(v1 + 17432) = v427;
  *v427 = v1;
  v427[1] = sub_1000F5908;
  v428 = *(v1 + 17248);
  v429 = *(v1 + 17032);
  v430 = *(v1 + 17024);

  return sub_1000F7F88(v1 + 16, v428, v430);
}