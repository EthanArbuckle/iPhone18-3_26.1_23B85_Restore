uint64_t sub_100072B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_1000236F4(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a3 + 56);
    v12 = a4(0);
    sub_100002C00(v12);
    (*(v13 + 16))(a5, v11 + *(v13 + 72) * v10, v12);
    v14 = a5;
    v15 = 0;
    v16 = 1;
    v17 = v12;
  }

  else
  {
    a4(0);
    v14 = sub_100007A04();
  }

  return sub_100009BFC(v14, v15, v16, v17);
}

uint64_t sub_100072C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_1000236F4(a1, a2);
    if (v5)
    {
      v6 = (*(a3 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
    }
  }

  return sub_1000062B0();
}

double sub_100072C94@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1001173E4(), (v4 & 1) != 0))
  {
    sub_1000190EC(v3);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_100072CDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000236F4(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000603C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100072D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000236F4(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100072D98()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B9218);
  sub_10000641C(v0, qword_1001B9218);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100072E0C()
{
  sub_100003324(v0 + 14);
  sub_100003324(v0 + 19);
  v1 = v0[24];

  sub_100003324(v0 + 25);
  sub_100003324(v0 + 30);
  v2 = v0[35];

  v3 = v0[36];

  v4 = v0[37];

  v5 = v0[38];

  v6 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__workQueue;
  v7 = sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100002C00(v7);
  (*(v8 + 8))(v0 + v6);
  v9 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);

  v10 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy;
  v11 = type metadata accessor for Policy();
  sub_100002C00(v11);
  (*(v12 + 8))(v0 + v10);
  v13 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100072F18()
{
  sub_100072E0C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100072F44()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F44(v5);
  v1[6] = v6;
  v1[7] = *(v7 + 64);
  v1[8] = swift_task_alloc();
  v8 = sub_100002C10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100073004()
{
  sub_10000D054();
  sub_1000033DC();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[2];
  sub_10001E72C(v0[4], v2, &qword_1001B9420, &qword_100170118);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[9] = v9;
  sub_10002F6B4(v2, v9 + v7, &qword_1001B9420, &qword_100170118);
  *(v9 + v8) = v3;
  v10 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v6;
  v10[1] = v5;
  v11 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v12 = swift_task_alloc();
  v0[10] = v12;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100026B34();
  *v12 = v13;
  v12[1] = sub_1000731C0;
  v14 = v0[5];
  sub_100010B78();
  sub_1000062BC();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v15, v16, v17);
}

uint64_t sub_1000731C0()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 72);
    v11 = *(v3 + 40);

    v12 = sub_100002C10();

    return _swift_task_switch(v12, v13, v14);
  }

  return result;
}

uint64_t sub_1000732C0()
{
  sub_100002BAC();
  v1 = *(v0 + 64);

  sub_100001F00();

  return v2();
}

uint64_t sub_100073318()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v3 = type metadata accessor for Assertion.DaemonRep();
  v1[5] = v3;
  sub_100002F44(v3);
  v1[6] = v4;
  v1[7] = *(v5 + 64);
  v1[8] = swift_task_alloc();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000733CC()
{
  sub_10000D054();
  sub_1000033DC();
  v1 = v0[7];
  v2 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v0[8], v0[3], v0[5]);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v3;
  v6 = *(v2 + 32);
  sub_1000135D0();
  v7();
  v8 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v9 = swift_task_alloc();
  v0[10] = v9;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_100026B34();
  *v9 = v10;
  v9[1] = sub_100073570;
  v11 = v0[4];
  sub_1000062BC();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v12, v13, v14);
}

uint64_t sub_100073570()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *(v5 + 72);
  v8 = *v1;
  sub_100002B9C();
  *v9 = v8;

  v10 = *(v3 + 32);
  if (v0)
  {
    v11 = sub_1000736EC;
  }

  else
  {
    v11 = sub_100073694;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100073694()
{
  sub_100002BAC();
  v1 = *(v0 + 64);

  sub_100002F54();

  return v2();
}

uint64_t sub_1000736EC()
{
  sub_100002BAC();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  sub_100001F00();

  return v3();
}

uint64_t sub_100073748()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v1[4] = v3;
  sub_100002F44(v3);
  v1[5] = v4;
  v1[6] = *(v5 + 64);
  v1[7] = swift_task_alloc();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100073808()
{
  sub_10000D054();
  sub_1000033DC();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[3];
  (*(v2 + 16))(v0[7], v0[2], v0[4]);
  v4 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_allocObject();
  v0[8] = v5;
  v6 = *(v2 + 32);
  sub_1000135D0();
  v7();
  *(v5 + v4) = v3;
  v8 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v9 = swift_task_alloc();
  v0[9] = v9;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100026B34();
  *v9 = v10;
  v9[1] = sub_100073988;
  v11 = v0[3];
  sub_100009E4C();
  sub_100010B78();
  sub_1000062BC();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v12, v13, v14);
}

uint64_t sub_100073988()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 64);
    v11 = *(v3 + 24);

    v12 = sub_100002C10();

    return _swift_task_switch(v12, v13, v14);
  }

  return result;
}

uint64_t sub_100073A88()
{
  sub_100002BAC();
  v1 = *(v0 + 56);

  sub_100001F00();

  return v2();
}

void sub_100073AF8()
{
  v1 = *(v0 + 64);
  v2 = sub_100003370((v1 + 112), *(v1 + 136));
  if (qword_1001B8AA0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FilePath();
  v3 = sub_10000641C(v29, qword_1001BEB20);
  v4 = *v2;
  v5 = sub_1000EE598(v3);
  v7 = v6;
  v8 = sub_10007B5C8();
  v10 = v9;
  v11 = *(v0 + 64);
  sub_10008D16C(v5, v7);
  v12 = *(v11 + 280);
  *(v11 + 280) = v8;

  swift_beginAccess();
  v13 = *(v11 + 304);
  *(v11 + 304) = v10;

  if (os_variant_has_internal_content())
  {
    v14 = sub_100003370((v1 + 112), *(v1 + 136));
    if (qword_1001B8AA8 != -1)
    {
      swift_once();
    }

    v15 = sub_10000641C(v29, qword_1001BEB38);
    v16 = *v14;
    v17 = sub_1000EE598(v15);
    v19 = v18;
    sub_10007B5C8();
    v20 = *(v0 + 64);
    sub_10008D16C(v17, v19);
    v21 = *(v20 + 280);

    v23 = sub_100074404(v22, v21, v20);
    v24 = *(v20 + 280);
    *(v20 + 280) = v23;

    swift_beginAccess();

    sub_1001406BC(v25);
    swift_endAccess();
  }

  v26 = *(v0 + 64);
  sub_1000744DC();
  sub_100001F00();
  sub_100003540();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100074064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_100065020(&qword_1001B9480, &qword_1001701A8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (v27 - v9);
  v11 = *(a2 + 280);
  v27[4] = a1;

  sub_100127F2C();

  v12 = sub_100065020(&qword_1001B9458, &qword_100174250);
  result = sub_10000C6C0(v10, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v27[1] = v3;
    v15 = *v10;
    v14 = v10[1];
    v16 = *(v12 + 48);
    v17 = type metadata accessor for Policy();
    v18 = *(v17 - 8);
    (*(v18 + 8))(v10 + v16, v17);
    if (qword_1001B88D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000641C(v19, qword_1001B9218);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v27[0] = a1;
      v23 = a3;
      v24 = v22;
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      v26 = sub_100004A3C(v15, v14, &v28);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Internal policy file contains policy with same name as existing policy: %s", v24, 0xCu);
      sub_100003324(v25);

      a3 = v23;
      a1 = v27[0];
    }

    else
    {
    }

    return (*(v18 + 16))(a3, a1, v17);
  }

  return result;
}

uint64_t sub_10007432C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a2;
  sub_10007C698(a1, sub_10007C628, 0, isUniquelyReferenced_nonNull_native, &v9, a3, &_swift_bridgeObjectRelease, sub_100079504);

  if (v3)
  {
  }

  else
  {
    return v9;
  }
}

uint64_t sub_100074404(uint64_t a1, uint64_t a2, uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a2;
  sub_10007C698(a1, sub_10007C628, 0, isUniquelyReferenced_nonNull_native, &v9, a3, &_swift_release, sub_100074064);

  if (v3)
  {
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1000744DC()
{
  v1 = v0[35];
  swift_beginAccess();
  v2 = v0[36];
  swift_bridgeObjectRetain_n();

  v4 = sub_10007432C(v3, v1, v1);
  v5 = v0[37];
  v0[37] = v4;
}

uint64_t sub_100074558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v7 = *(*(sub_100065020(&qword_1001B9420, &qword_100170118) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000745FC, a3, 0);
}

uint64_t sub_1000745FC()
{
  sub_10000636C();
  v2 = v1[7];
  type metadata accessor for Policy();
  v3 = sub_100012484();
  if (sub_10000C6C0(v3, 1, v4) == 1)
  {
    v6 = v1[9];
    v5 = v1[10];
    v7 = *(v1[8] + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);

    sub_100072460(v8);
    sub_100009540();

    v1[5] = v6;
    v1[6] = v5;
    v9 = swift_task_alloc();
    *(v9 + 16) = v1 + 5;
    sub_100009A9C(sub_10001609C, v9, v0);
    sub_100005F2C();
  }

  v10 = v1[10];
  v12 = v1[8];
  v11 = v1[9];
  sub_10001E72C(v1[7], v1[11], &qword_1001B9420, &qword_100170118);
  swift_beginAccess();

  sub_1000FF1B4();
  swift_endAccess();
  sub_1000744DC();

  sub_100002F54();

  return v13();
}

uint64_t sub_10007484C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = type metadata accessor for Assertion.DaemonRep();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = *(*(sub_100065020(&qword_1001B9420, &qword_100170118) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100074970, a2, 0);
}

uint64_t sub_100074970()
{
  v122 = v0;
  v1 = v0[11];
  v3 = v0[2];
  v2 = v0[3];
  Assertion.DaemonRep.policy.getter();
  v4 = *(v3 + 296);

  v5 = sub_100007660();
  sub_100072B78(v5, v6, v4, v7, v8);

  v9 = type metadata accessor for Policy();
  LODWORD(v2) = sub_10000C6C0(v1, 1, v9);
  sub_10000C7F0(v1, &qword_1001B9420);
  if (v2 == 1)
  {
    if (qword_1001B88D8 != -1)
    {
      sub_100004FDC();
    }

    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    v13 = v0[3];
    v14 = type metadata accessor for Logger();
    v15 = sub_10000641C(v14, qword_1001B9218);
    v16 = *(v11 + 16);
    v17 = sub_100007660();
    v18(v17);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    if (v21)
    {
      sub_100007698();
      v25 = sub_100003890();
      v121[0] = v25;
      *v15 = 136315138;
      v26 = Assertion.DaemonRep.policy.getter();
      v28 = v27;
      (*(v23 + 8))(v22, v24);
      v29 = sub_100004A3C(v26, v28, v121);

      *(v15 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to acquire assertion: Policy %s does not exist", v15, 0xCu);
      sub_100003324(v25);
      sub_100002BB8();
      sub_10000706C();
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    v55 = v0[10];
    v56 = v0[11];
    v57 = v0[8];
    v58 = v0[9];
    v119 = v0[7];
    v60 = v0[3];
    v59 = v0[4];
    v61 = type metadata accessor for ModelManagerError();
    sub_10000814C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    v62 = swift_allocError();
    v64 = v63;
    *v63 = Assertion.DaemonRep.policy.getter();
    v64[1] = v65;
    sub_100006098(v61);
    (*(v66 + 104))(v64);
    swift_willThrow();
    *v59 = v62;

    sub_100001F00();
    goto LABEL_19;
  }

  v30 = v0[3];
  v31 = *(v0[2] + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);

  LOBYTE(v30) = sub_1000751F4(v30, v31);

  if (v30)
  {
    if (qword_1001B88D8 != -1)
    {
      sub_100004FDC();
    }

    v32 = v0[8];
    v33 = v0[5];
    v34 = v0[6];
    v35 = v0[3];
    v36 = type metadata accessor for Logger();
    sub_10000641C(v36, qword_1001B9218);
    v37 = *(v34 + 16);
    v38 = sub_100007660();
    v37(v38);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (sub_100002F80(v40))
    {
      v41 = v0[8];
      v42 = v0[9];
      v44 = v0[5];
      v43 = v0[6];
      sub_100007698();
      v118 = sub_10000767C();
      v121[0] = v118;
      *v35 = 136315138;
      v45 = sub_100004CA4();
      v37(v45);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      (*(v43 + 8))(v41, v44);
      v49 = sub_100004A3C(v46, v48, v121);

      *(v35 + 4) = v49;
      sub_100003DD0();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      sub_100003324(v118);
      sub_100002BB8();
      sub_100002F64();
    }

    else
    {
      v91 = v0[8];
      v92 = v0[5];
      v93 = v0[6];

      v94 = *(v93 + 8);
      v95 = sub_1000060A4();
      v96(v95);
    }

    v98 = v0[10];
    v97 = v0[11];
    v100 = v0[8];
    v99 = v0[9];
    v101 = v0[7];

    sub_100002F54();
LABEL_19:
    sub_100003D04();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1001B88D8 != -1)
  {
    sub_100004FDC();
  }

  v67 = v0[10];
  v68 = v0[5];
  v69 = v0[6];
  v70 = v0[3];
  v71 = type metadata accessor for Logger();
  sub_10000641C(v71, qword_1001B9218);
  v72 = *(v69 + 16);
  v73 = sub_100007660();
  v72(v73);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v76 = sub_100002F80(v75);
  v77 = v0[10];
  if (v76)
  {
    v78 = v0[9];
    v80 = v0[5];
    v79 = v0[6];
    sub_100007698();
    v117 = sub_10000767C();
    v121[0] = v117;
    v81 = sub_10001AF84(4.8149e-34);
    v72(v81);
    sub_100007B78();
    v82 = String.init<A>(describing:)();
    v120 = v72;
    v84 = v83;
    (*(v79 + 8))(v77, v80);
    v85 = sub_100004A3C(v82, v84, v121);
    v72 = v120;

    *(v70 + 4) = v85;
    sub_100003DD0();
    _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
    sub_100003324(v117);
    sub_100002BB8();
    sub_100002F64();
  }

  else
  {
    v104 = v0[5];
    v105 = v0[6];

    (*(v105 + 8))(v77, v104);
  }

  v106 = v0[5];
  v107 = v0[6];
  v108 = v0[3];
  sub_100065020(&qword_1001B9438, &qword_100170150);
  v109 = sub_100011A30();
  v110 = sub_100026B6C(v109, xmmword_10016FF40);
  v72(v110);
  sub_100065D3C();
  v0[12] = v111;
  v112 = swift_task_alloc();
  v0[13] = v112;
  *v112 = v0;
  v112[1] = sub_100075054;
  v113 = v0[2];
  sub_100003D04();

  return sub_100075874(v114);
}

void sub_100075054()
{
  sub_100003884();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = v1[11];
  v7 = v1[10];
  v8 = v1[9];
  v9 = v1[8];
  v10 = v1[7];

  v11 = *(v4 + 8);
  sub_100003D20();

  __asm { BRAA            X1, X16 }
}

BOOL sub_1000751F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep);
  v18 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_10000814C(&qword_1001B8BA8, &type metadata accessor for Assertion.DaemonRep);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

void sub_1000753F8()
{
  sub_1000055B0();
  if (*(v2 + 16))
  {
    sub_1000135C4();
    v3 = type metadata accessor for UUID();
    v4 = *(v0 + 40);
    sub_10005F2BC(&qword_1001B8C00);
    sub_100012484();
    v15 = v1;
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v16 = v0 + 56;
    sub_100012A00();
    v7 = ~v6;
    do
    {
      v8 = v5 & v7;
      if (((1 << (v5 & v7)) & *(v16 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v9 = *(v3 - 8);
      v10 = *(v9 + 64);
      __chkstk_darwin(v5);
      v12 = &v15 - v11;
      (*(v9 + 16))(&v15 - v11, *(v0 + 48) + *(v13 + 72) * v8, v3);
      sub_10005F2BC(&qword_1001B94A8);
      sub_10008D330();
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v9 + 8))(v12, v3);
      v5 = v8 + 1;
    }

    while ((v14 & 1) == 0);
  }

  sub_100002EEC();
}

void sub_1000755A4()
{
  sub_1000055B0();
  sub_1000135C4();
  v35 = type metadata accessor for ModelCatalogAsset(0);
  v3 = sub_100002BDC(v35);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v10 = (v9 - v8);
  if (!v0[2])
  {
    goto LABEL_48;
  }

  v11 = v0[5];
  Hasher.init(_seed:)();
  sub_10000C228(&v38);
  Hasher._finalize()();
  sub_100012A00();
  v14 = v13 & ~v12;
  v37 = v15;
  if (((*(v15 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    goto LABEL_48;
  }

  v36 = ~v12;
  v16 = *v1;
  v17 = v1[1];
  v18 = *(v5 + 72);
  while (1)
  {
    v19 = v0[6];
    sub_100003B04();
    sub_10000931C();
    v20 = *v10 == v16 && v10[1] == v17;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_47;
    }

    v21 = v10[2];
    sub_100016458();
    if (!v20)
    {
      goto LABEL_47;
    }

    if (v2 && v23 != v22)
    {
      break;
    }

LABEL_23:
    if (sub_1000BB718(v10[3], v1[3]) & 1) != 0 && (sub_1000BB718(v10[4], v1[4]))
    {
      v28 = v35[8];
      if (static AssetCost.== infix(_:_:)())
      {
        sub_10000BF5C(v35[9]);
        if (v20)
        {
          sub_10000BF5C(v35[10]);
          if (v20)
          {
            sub_10000BF5C(v35[11]);
            if (v20)
            {
              sub_10000BF5C(v35[12]);
              if (v20)
              {
                sub_10000BF5C(v35[13]);
                if (v20)
                {
                  v29 = v35[14];
                  v30 = *(v10 + v29);
                  v31 = *(v1 + v29);
                  v32 = *(v30 + 16);
                  if (v32 == *(v31 + 16))
                  {
                    if (!v32 || v30 == v31)
                    {
LABEL_46:
                      sub_10000BF5C(v35[15]);
                      if (v20)
                      {
                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      v2 = (v30 + 40);
                      v33 = (v31 + 40);
                      while (1)
                      {
                        v34 = *(v2 - 1) == *(v33 - 1) && *v2 == *v33;
                        if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {
                          break;
                        }

                        v2 += 2;
                        v33 += 2;
                        if (!--v32)
                        {
                          goto LABEL_46;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_47:
    sub_100011314();
    sub_10000D2AC();
    v14 = (v14 + 1) & v36;
    if (((*(v37 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  v25 = (v23 + 40);
  v26 = (v22 + 40);
  while (v2)
  {
    v27 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_47;
    }

    v25 += 2;
    v26 += 2;
    v2 = (v2 - 1);
    if (!v2)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_50:
  sub_100011314();
  sub_10000D2AC();
LABEL_48:
  sub_100002EEC();
}

uint64_t sub_100075874(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_10007588C()
{
  sub_100003884();
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions;
  v0[4] = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions;
  v4 = *(v2 + v3);

  v6 = sub_100078B74(v5, v4);
  v0[5] = v6;
  v7 = *(v2 + v3);

  sub_10007B7D0(v6, v7);
  sub_100005F2C();

  if (v2)
  {

    sub_100001F00();
    sub_100003D20();

    __asm { BRAA            X1, X16 }
  }

  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  sub_10000766C(v10);
  sub_100003D20();

  return sub_100078F00();
}

uint64_t sub_1000759B0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[3];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  return _swift_task_switch(sub_100075ACC, v4, 0);
}

uint64_t sub_100075ACC()
{
  sub_100001ED0();
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction;
  if (!*(v1 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction) && *(*(v1 + *(v0 + 32)) + 16))
  {
    type metadata accessor for _OSTransaction();
    v3 = _OSTransaction.__allocating_init(_:)();
    v4 = *(v1 + v2);
    *(v1 + v2) = v3;
  }

  sub_100001F00();

  return v5();
}

uint64_t sub_100075B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100075C58, a3, 0);
}

uint64_t sub_100075C58()
{
  v34 = v0;
  if (qword_1001B88D8 != -1)
  {
    sub_100004FDC();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v6 = sub_10000641C(v5, qword_1001B9218);
  v7 = *(v2 + 16);
  v8 = sub_100007660();
  v7(v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  if (v11)
  {
    sub_100007698();
    v32 = sub_100003890();
    v33 = v32;
    *v6 = 136315138;
    sub_10001B2C0(&qword_1001B9430, &qword_1001B8B78);
    v31 = v10;
    v15 = v7;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = v16;
    v7 = v15;
    v20 = sub_100004A3C(v19, v18, &v33);

    *(v6 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v31, "Releasing assertion: %s", v6, 0xCu);
    sub_100003324(v32);
    sub_100002BB8();
    sub_10000706C();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v21 = v0[4];
  v22 = v0[5];
  v23 = v0[2];
  sub_100065020(&qword_1001B9098, &unk_10016FD00);
  v24 = sub_100011A30();
  v25 = sub_100026B6C(v24, xmmword_10016FF40);
  v7(v25);
  sub_100065FA8();
  v0[7] = v26;
  v27 = swift_task_alloc();
  v0[8] = v27;
  *v27 = v0;
  sub_10000766C(v27);
  sub_100003540();

  return sub_100075FE8(v28);
}

uint64_t sub_100075ED0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[6];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  sub_100002F54();

  return v7();
}

uint64_t sub_100075FE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_100076000()
{
  sub_10000636C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions;
  v0[4] = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions;
  v4 = *(v2 + v3);

  v6 = sub_10008A428(v5, v1);
  v0[5] = v6;
  v7 = *(v2 + v3);

  sub_10007B7D0(v6, v7);
  sub_100005F2C();

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  sub_10000766C(v8);

  return sub_100078F00();
}

uint64_t sub_10007613C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[3];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  return _swift_task_switch(sub_100076258, v4, 0);
}

uint64_t sub_100076258()
{
  sub_100002BAC();
  v1 = *(v0 + 24);
  if (*(v1 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction) && !*(*(v1 + *(v0 + 32)) + 16))
  {
    *(v1 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction) = 0;
  }

  sub_100001F00();

  return v2();
}

uint64_t sub_1000762D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_1000762EC()
{
  sub_100003884();
  v2 = v0[2];
  v1 = v0[3];
  sub_100002EE0();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v5 = swift_task_alloc();
  v0[5] = v5;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100026B34();
  *v5 = v6;
  v5[1] = sub_100076424;
  v7 = v0[3];
  sub_100009E4C();
  sub_100010B78();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v8, v9, v10);
}

uint64_t sub_100076424()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v11 = *(v3 + 24);
    v10 = *(v3 + 32);

    v12 = sub_100002C10();

    return _swift_task_switch(v12, v13, v14);
  }

  return result;
}

uint64_t sub_100076520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100076540, a3, 0);
}

uint64_t sub_100076540()
{
  sub_1000033DC();
  v16 = v0;
  v2 = v0[2];
  v3 = v0[3];

  v5 = sub_10008AA34(v4, v3);
  v0[4] = v5;
  if (*(v5 + 16))
  {
    if (qword_1001B88D8 != -1)
    {
      sub_100004FDC();
    }

    v6 = type metadata accessor for Logger();
    sub_10000641C(v6, qword_1001B9218);
    sub_100003170();

    v7 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005F2C();

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_100007698();
      v8 = sub_100003890();
      v15 = v8;
      *v1 = 136315138;
      type metadata accessor for Assertion.DaemonRep();
      sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep);
      v9 = Set.description.getter();
      v11 = sub_100004A3C(v9, v10, &v15);

      *(v1 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restoring assertions: %s", v1, 0xCu);
      sub_100003324(v8);
      sub_100002BB8();
      sub_10000706C();
    }

    v12 = swift_task_alloc();
    v0[5] = v12;
    *v12 = v0;
    sub_10000766C(v12);

    return sub_100075874(v5);
  }

  else
  {

    sub_100002F54();

    return v14();
  }
}

uint64_t sub_100076774()
{
  sub_100002BAC();
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v1 + 32);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_10007687C(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_100076898()
{
  sub_100003884();
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  sub_100065020(&qword_1001B9400, &qword_1001700B0);
  sub_100026B34();
  *v5 = v6;
  v5[1] = sub_1000769E0;
  v7 = *(v0 + 16);
  sub_100010B78();
  sub_100003D20();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v8, v9, v10);
}

uint64_t sub_1000769E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);

    v12 = sub_100002C10();

    return _swift_task_switch(v12, v13, v14);
  }

  return result;
}

uint64_t sub_100076ADC(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 + 64) = a3;
  *(v3 + 16) = a2;
  v5 = type metadata accessor for Assertion.DaemonRep();
  *(v3 + 24) = v5;
  v6 = *(v5 - 8);
  *(v3 + 32) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100076BD0, a2, 0);
}

uint64_t sub_100076BD0()
{
  sub_1000033DC();
  v55 = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = *(v2 + 32) & 0x3F;
  sub_100003878();
  v6 = (v5 + 63) >> 6;
  v7 = 8 * v6;

  if (v4 > 0xD)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v47 = v3;
    v45[1] = v45;
    v53 = v0;
    v9 = *(v0 + 32);
    __chkstk_darwin(v8);
    v46 = v6;
    v48 = (v45 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100011624(0, v6, v48);
    v6 = 0;
    v52 = v2;
    v3 = v2 + 56;
    v10 = *(v2 + 56);
    v11 = *(v2 + 32);
    sub_100002F28();
    v14 = v13 & v12;
    v2 = (v15 + 63) >> 6;
    v51 = v9 + 16;
    v49 = 0;
    v50 = v9 + 8;
    while (v14)
    {
      sub_10002F700();
LABEL_10:
      v7 = *(v53 + 40);
      v20 = *(v53 + 24);
      v0 = *(v53 + 64);
      (*(v9 + 16))(v7, *(v52 + 48) + *(v9 + 72) * (v16 | (v6 << 6)), v20);
      v21 = Assertion.DaemonRep.acquirerPID.getter();
      (*(v9 + 8))(v7, v20);
      if (v21 == v0)
      {
        sub_100005AF4();
        sub_10000CCF0(v22);
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
LABEL_14:
          v24 = sub_10008C1EC(v48, v46, v49, v52);
          v0 = v53;
          v3 = v47;
          goto LABEL_15;
        }
      }
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        goto LABEL_14;
      }

      ++v17;
      if (*(v3 + 8 * v6))
      {
        sub_1000062A0();
        v14 = v19 & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v44 = swift_slowAlloc();
  v24 = sub_10008C15C(v44, v6, v2, sub_100078464);

  sub_100002BB8();
LABEL_15:

  sub_100072770(v24);
  sub_100009540();

  sub_1000776E8();
  *(v0 + 48) = v25;
  if (!*(v25 + 16))
  {
    v41 = *(v0 + 40);

    sub_100001F00();
    sub_1000062BC();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1001B88D8 != -1)
  {
    sub_100004FDC();
  }

  v26 = type metadata accessor for Logger();
  sub_10000641C(v26, qword_1001B9218);
  sub_100003170();

  v27 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005F2C();

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(v0 + 64);
    swift_slowAlloc();
    v29 = sub_100003890();
    v54 = v29;
    *v3 = 67109378;
    *(v3 + 4) = v28;
    *(v3 + 8) = 2080;
    v30 = sub_100007B78();
    sub_100065020(v30, v31);
    sub_1000081B4();
    sub_10001B2C0(v32, &qword_1001B8B78);
    v33 = Set.description.getter();
    v35 = sub_100004A3C(v33, v34, &v54);

    *(v3 + 10) = v35;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Releasing all assertions from pid %d: %s", v3, 0x12u);
    sub_100003324(v29);
    sub_100002BB8();
    sub_10000706C();
  }

  v36 = swift_task_alloc();
  *(v0 + 56) = v36;
  *v36 = v0;
  v36[1] = sub_1000770FC;
  v37 = *(v0 + 16);
  sub_1000062BC();

  return sub_100075FE8(v38);
}

uint64_t sub_1000770FC()
{
  sub_100001ED0();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_100077254(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v9 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v9;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_10002AB2C();
    sub_10007CC90();
  }

  __break(1u);
  return result;
}

void sub_100077310()
{
  sub_1000055B0();
  sub_10002A104();
  v2 = type metadata accessor for StateDump.AssetState();
  v3 = sub_100002BDC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000A51C();
  __chkstk_darwin(v6);
  sub_100007D80();
  sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState);
  sub_100012484();
  v7 = Set.init(minimumCapacity:)();
  sub_10001E654(v7);
  if (v0)
  {
    sub_100008390();
    do
    {
      v8 = sub_100001F30();
      v1(v8);
      v9 = sub_10001858C();
      sub_10007D654(v9, v10);
      v11 = sub_100013D38();
      v12(v11);
      sub_100019188();
    }

    while (!v13);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077448()
{
  sub_1000055B0();
  sub_10002A104();
  v2 = type metadata accessor for StateDump.SessionState();
  v3 = sub_100002BDC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000A51C();
  __chkstk_darwin(v6);
  sub_100007D80();
  sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState);
  sub_100012484();
  v7 = Set.init(minimumCapacity:)();
  sub_10001E654(v7);
  if (v0)
  {
    sub_100008390();
    do
    {
      v8 = sub_100001F30();
      v1(v8);
      v9 = sub_10001858C();
      sub_10007D91C(v9, v10);
      v11 = sub_100013D38();
      v12(v11);
      sub_100019188();
    }

    while (!v13);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077580()
{
  sub_1000055B0();
  sub_10002A104();
  v2 = type metadata accessor for StateDump.RequestState();
  v3 = sub_100002BDC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000A51C();
  __chkstk_darwin(v6);
  sub_100007D80();
  sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState);
  sub_100012484();
  v7 = Set.init(minimumCapacity:)();
  sub_10001E654(v7);
  if (v0)
  {
    sub_100008390();
    do
    {
      v8 = sub_100001F30();
      v1(v8);
      v9 = sub_10001858C();
      sub_10007DBE4(v9, v10);
      v11 = sub_100013D38();
      v12(v11);
      sub_100019188();
    }

    while (!v13);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_1000776E8()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100005F38(v7, v5);
  v11 = sub_100065020(v9, v10);
  v12 = sub_100002BDC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100005630();
  sub_100016678();
  __chkstk_darwin(v17);
  sub_10000C1B0();
  v18 = *(v8 + 16);
  sub_1000081B4();
  sub_10001B2C0(v4, v6);
  v19 = Set.init(minimumCapacity:)();
  sub_10001E654(v19);
  if (v6)
  {
    v20 = v14 + 16;
    v29 = *(v14 + 16);
    v21 = v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v22 = *(v14 + 72);
    v23 = v2;
    v24 = (v20 - 8);
    do
    {
      v29(v0, v21, v11);
      v25 = sub_100004CA4();
      v23(v25);
      v26 = *v24;
      v27 = sub_100005FEC();
      v28(v27);
      v21 += v22;
      --v6;
    }

    while (v6);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077864()
{
  sub_1000055B0();
  sub_10002A104();
  v2 = type metadata accessor for StateDump.RemoteRequestState();
  v3 = sub_100002BDC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000A51C();
  __chkstk_darwin(v6);
  sub_100007D80();
  sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState);
  sub_100012484();
  v7 = Set.init(minimumCapacity:)();
  sub_10001E654(v7);
  if (v0)
  {
    sub_100008390();
    do
    {
      v8 = sub_100001F30();
      v1(v8);
      v9 = sub_10001858C();
      sub_10007E174(v9, v10);
      v11 = sub_100013D38();
      v12(v11);
      sub_100019188();
    }

    while (!v13);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_10007799C()
{
  sub_1000055B0();
  sub_10002A104();
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v3 = sub_100002BDC(active);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000A51C();
  __chkstk_darwin(v6);
  sub_100007D80();
  sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest);
  sub_100012484();
  v7 = Set.init(minimumCapacity:)();
  sub_10001E654(v7);
  if (v0)
  {
    sub_100008390();
    do
    {
      v8 = sub_100001F30();
      v1(v8);
      v9 = sub_10001858C();
      sub_10007E43C(v9, v10);
      v11 = sub_100013D38();
      v12(v11);
      sub_100019188();
    }

    while (!v13);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077AD4()
{
  sub_1000055B0();
  sub_10002A104();
  v2 = type metadata accessor for InferenceProviderAssetDescriptor();
  v3 = sub_100002BDC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000A51C();
  __chkstk_darwin(v6);
  sub_100007D80();
  sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor);
  sub_100012484();
  v7 = Set.init(minimumCapacity:)();
  sub_10001E654(v7);
  if (v0)
  {
    sub_100008390();
    do
    {
      v8 = sub_100001F30();
      v1(v8);
      v9 = sub_10001858C();
      sub_10007E94C(v9, v10);
      v11 = sub_100013D38();
      v12(v11);
      sub_100019188();
    }

    while (!v13);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077C0C()
{
  sub_1000134E8();
  v4 = sub_10002A104();
  v5 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(v4);
  v6 = sub_100002BDC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005630();
  sub_100018C20();
  __chkstk_darwin(v9);
  sub_10001885C();
  sub_10000814C(&qword_1001B9510, type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation);
  sub_100004CA4();
  Set.init(minimumCapacity:)();
  v10 = *(v0 + 16);
  if (v10)
  {
    sub_10000CB40();
    do
    {
      sub_10000CF04();
      sub_10000931C();
      sub_10007F0E4(v2, v1);
      sub_10000D2AC();
      v5 += v3;
      --v10;
    }

    while (v10);
  }

  sub_100009C38();
}

void sub_100077D78()
{
  sub_1000055B0();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00);
  sub_100012484();
  v5 = Set.init(minimumCapacity:)();
  v6 = sub_10001E654(v5);
  if (v0)
  {
    v7 = *(v4 - 8);
    v8 = *(v7 + 16);
    v16 = v7 + 16;
    v17 = v8;
    v9 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = *(v7 + 64);
    v10 = *(v7 + 72);
    v14[1] = v2;
    v15 = v10;
    v12 = (v7 + 8);
    do
    {
      v13 = __chkstk_darwin(v6);
      __chkstk_darwin(v13);
      sub_10002AB2C();
      v17();
      sub_10007EE00();
      v6 = (*v12)(v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v9 += v15;
      --v0;
    }

    while (v0);
  }

  else
  {
    sub_100003170();
  }

  sub_100011BA4();
  sub_100002EEC();
}

void sub_100077EE0(uint64_t a1)
{
  sub_10000E8DC(a1);
  v5 = type metadata accessor for DaemonRequest(0);
  sub_10000814C(&qword_1001B8F78, type metadata accessor for DaemonRequest);
  sub_100012484();
  v7[1] = Set.init(minimumCapacity:)();
  sub_10000E8DC(a1);
  sub_10001D2F0();
  while (1)
  {
    if (v5 == v1)
    {

      return;
    }

    if (v2)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    sub_10007D34C(v7, v6);

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void static AssetPolicy.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000055B0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for AssetPolicy();
  v26 = sub_100002BDC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_100005630();
  sub_100018C20();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  v34 = *(v28 + 16);
  v34(&a9 - v32, v24, v25);
  v35 = *(v28 + 88);
  v36 = v35(v33, v25);
  v37 = enum case for AssetPolicy.standard(_:);
  if ((v36 == enum case for AssetPolicy.standard(_:) || v36 == enum case for AssetPolicy.unloadCached(_:)) && ((v38 = sub_10000D01C(), (v34)(v38), v39 = v35(v20, v25), v39 == v37) || v39 == enum case for AssetPolicy.unloadCached(_:)))
  {
    sub_100002EEC();
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t type metadata accessor for PolicyManager()
{
  result = qword_1001B9260;
  if (!qword_1001B9260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100078224()
{
  sub_100078330();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Policy();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100078330()
{
  if (!qword_1001B9270)
  {
    type metadata accessor for PolicyManager();
    sub_10000814C(&qword_1001B8BE0, type metadata accessor for PolicyManager);
    v0 = type metadata accessor for WorkQueue();
    if (!v1)
    {
      atomic_store(v0, &qword_1001B9270);
    }
  }
}

uint64_t sub_1000783C4()
{
  sub_100001ED0();
  sub_1000135C4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v6 = sub_10003F82C(v4);

  return sub_100076ADC(v6, v1, v2);
}

void sub_1000784A4()
{
  sub_1000055B0();
  v78 = v2;
  v61 = type metadata accessor for RequestPriority();
  v3 = sub_100002BDC(v61);
  v80 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100005630();
  v77 = v7 - v8;
  sub_100002F1C();
  __chkstk_darwin(v9);
  sub_100016678();
  v11 = __chkstk_darwin(v10);
  v13 = &v57[-v12];
  __chkstk_darwin(v11);
  v79 = &v57[-v14];
  sub_100003B1C();
  v15 = type metadata accessor for AssetPolicy();
  v16 = sub_100002BDC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100005630();
  sub_100018C20();
  v22 = __chkstk_darwin(v21);
  v24 = &v57[-v23];
  __chkstk_darwin(v22);
  v26 = &v57[-v25];
  v69 = Policy.memoryBudget.getter();
  v68 = v27;
  v65 = Policy.memoryBudget.getter();
  v70 = v28;
  Policy.assetPolicy.getter();
  Policy.assetPolicy.getter();
  v75 = v26;
  sub_1000789B0(v24, v0, v26);
  v73 = v18;
  v29 = *(v18 + 8);
  v29(v0, v15);
  v74 = v24;
  v76 = v15;
  v71 = v29;
  v72 = v18 + 8;
  v29(v24, v15);
  Policy.cancelPriority.getter();
  Policy.cancelPriority.getter();
  sub_10000814C(&qword_1001B9428, &type metadata accessor for RequestPriority);
  v30 = v61;
  v31 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v32 = v80;
  v33 = *(v80 + 8);
  v34 = (v31 & 1) == 0;
  if (v31)
  {
    v35 = v13;
  }

  else
  {
    v35 = v1;
  }

  if (v34)
  {
    v36 = v13;
  }

  else
  {
    v36 = v1;
  }

  v66 = *(v80 + 8);
  v67 = v80 + 8;
  v33(v35, v30);
  v37 = v30;
  (*(v32 + 32))(v79, v36, v30);
  v38 = COERCE_DOUBLE(Policy.inactiveAssetTimeout.getter());
  v40 = v39;
  *&v41 = COERCE_DOUBLE(Policy.inactiveAssetTimeout.getter());
  if (v40)
  {
    v63 = v42;
    v38 = *&v41;
  }

  else
  {
    v63 = 0;
    if ((v42 & 1) == 0)
    {
      v38 = sub_10001874C(v41, v38);
    }
  }

  *&v43 = COERCE_DOUBLE(Policy.assetTransitionDelay.getter());
  v45 = v44;
  *&v46 = COERCE_DOUBLE(Policy.assetTransitionDelay.getter());
  if (v45)
  {
    v60 = v47;
    v62 = *&v46;
  }

  else if (v47)
  {
    v62 = *&v43;
    v60 = 0;
  }

  else
  {
    v60 = 0;
    v62 = sub_10001874C(v46, *&v43);
  }

  *&v48 = COERCE_DOUBLE(Policy.unentitledBackgroundInferenceWindow.getter());
  v50 = v49;
  *&v51 = COERCE_DOUBLE(Policy.unentitledBackgroundInferenceWindow.getter());
  v64 = v38;
  if (v50)
  {
    v59 = *&v51;
    v58 = v52;
  }

  else
  {
    v58 = 0;
    if (v52)
    {
      v59 = *&v48;
    }

    else
    {
      v59 = sub_10001874C(v51, *&v48);
    }
  }

  if (v65 >= v69)
  {
    v53 = v69;
  }

  else
  {
    v53 = v65;
  }

  if (v70)
  {
    v53 = v69;
  }

  v68 &= 1u;
  if (v68)
  {
    v53 = v65;
  }

  v69 = v53;
  Policy.unentitledBackgroundInferenceCap.getter();
  Policy.unentitledBackgroundInferenceCap.getter();
  v54 = v75;
  v55 = v76;
  (*(v73 + 16))(v74, v75, v76);
  v56 = v79;
  (*(v80 + 16))(v77, v79, v37);
  Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  v66(v56, v37);
  v71(v54, v55);
  sub_100002EEC();
}

uint64_t sub_1000789B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v26 = a3;
  v4 = type metadata accessor for AssetPolicy();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = v5[2];
  v25 = a2;
  v12(&v23 - v10, a2, v4);
  v13 = v5[11];
  v14 = v13(v11, v4);
  v15 = enum case for AssetPolicy.standard(_:);
  v16 = enum case for AssetPolicy.unloadCached(_:);
  if (v14 != enum case for AssetPolicy.standard(_:) && v14 != enum case for AssetPolicy.unloadCached(_:))
  {
    goto LABEL_12;
  }

  v18 = v14;
  v19 = v24;
  (v12)(v9);
  v20 = v13(v9, v4);
  if (v20 == v15)
  {
    v21 = v25;
    return (v12)(v26, v21, v4);
  }

  if (v20 == v16)
  {
    v21 = v25;
    if (v18 == v15)
    {
      v21 = v19;
    }

    return (v12)(v26, v21, v4);
  }

LABEL_12:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100078B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v26 - v11;
  result = __chkstk_darwin(v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_10007CDBC(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100078D90()
{
  sub_1000055B0();
  v1 = sub_10002A104();
  v2 = type metadata accessor for ModelCatalogAsset(v1);
  v3 = sub_100002F44(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000A51C();
  __chkstk_darwin(v8);
  sub_100016678();
  __chkstk_darwin(v9);
  sub_10000C1B0();
  v10 = 0;
  v11 = *(v0 + 56);
  v12 = *(v0 + 32);
  sub_100002F28();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  if ((v14 & v13) != 0)
  {
    do
    {
      v18 = v10;
LABEL_7:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = *(v0 + 48);
      v22 = *(v5 + 72);
      sub_100012D60(v20);
      sub_10000931C();
      sub_100005FEC();
      sub_10000D460();
      sub_10001858C();
      sub_100008B58();
      sub_100011314();
      sub_10000D2AC();
    }

    while (v15);
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      sub_100002EEC();
      return;
    }

    v15 = *(v0 + 56 + 8 * v18);
    ++v10;
    if (v15)
    {
      v10 = v18;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_100078F00()
{
  sub_100002BAC();
  v1[10] = v2;
  v1[11] = v0;
  v3 = type metadata accessor for Policy();
  v1[12] = v3;
  sub_100002F44(v3);
  v1[13] = v4;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100078FC4()
{
  v43 = v0;
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[11];
  sub_100079814();
  if (qword_1001B88D8 != -1)
  {
    sub_100004FDC();
  }

  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[12];
  v7 = v0[13];
  v8 = type metadata accessor for Logger();
  v0[17] = sub_10000641C(v8, qword_1001B9218);
  v9 = *(v7 + 16);
  v10 = sub_1000062B0();
  v9(v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = sub_100002F80(v12);
  v14 = v0[15];
  if (v13)
  {
    v15 = v0[13];
    v16 = v0[14];
    v17 = v0[12];
    sub_100007698();
    v41 = sub_10000767C();
    v42 = v41;
    v18 = sub_10001AF84(4.8149e-34);
    v9(v18);
    sub_100007B78();
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v14, v17);
    v23 = sub_100004A3C(v19, v21, &v42);

    *(v6 + 4) = v23;
    sub_100003DD0();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    sub_100003324(v41);
    sub_100002BB8();
    sub_100002F64();
  }

  else
  {
    v29 = v0[12];
    v30 = v0[13];

    v22 = *(v30 + 8);
    v22(v14, v29);
  }

  v0[18] = v22;
  v31 = v0[16];
  v32 = v0[11];
  v33 = sub_100072460(v0[10]);
  v34 = sub_100077254(v33);
  v0[19] = v34;
  sub_100007130(v32 + 200, (v0 + 2));
  v35 = *(v32 + 192);
  sub_10000814C(&qword_1001B8BE0, type metadata accessor for PolicyManager);
  v36 = swift_task_alloc();
  v0[20] = v36;
  v36[2] = v31;
  v36[3] = v34;
  v36[4] = v0 + 2;
  v36[5] = v35;
  v37 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v38 = swift_task_alloc();
  v0[21] = v38;
  *v38 = v0;
  v38[1] = sub_10007927C;
  v44 = &type metadata for () + 8;
  sub_100003540();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10007927C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[21];
  v3 = v1[20];
  v4 = v1[19];
  v5 = v1[11];
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  return _swift_task_switch(sub_1000793BC, v5, 0);
}

uint64_t sub_1000793BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = v10[16];
  v12 = v10[17];
  v13 = v10[12];
  v14 = v10[13];
  v15 = v10[11];
  v16 = *(v15 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);
  *(v15 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions) = v10[10];

  v17 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy;
  sub_1000187D8();
  (*(v14 + 24))(v15 + v17, v11, v13);
  swift_endAccess();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (sub_100002F80(v19))
  {
    *swift_slowAlloc() = 0;
    sub_100003DD0();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    sub_100002F64();
  }

  v25 = v10[18];
  v27 = v10[15];
  v26 = v10[16];
  v29 = v10[13];
  v28 = v10[14];
  v30 = v10[12];

  sub_100003324(v10 + 2);
  v25(v26, v30);

  sub_100001F00();
  sub_100006378();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_100079504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100065020(&qword_1001B9480, &qword_1001701A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (v24 - v7);
  v24[4] = a1;
  sub_100127F2C();
  v9 = sub_100065020(&qword_1001B9458, &qword_100174250);
  result = sub_10000C6C0(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24[1] = v2;
    v12 = *v8;
    v11 = v8[1];
    v13 = *(v9 + 48);
    v14 = type metadata accessor for Policy();
    v15 = *(v14 - 8);
    (*(v15 + 8))(v8 + v13, v14);
    if (qword_1001B88D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000641C(v16, qword_1001B9218);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24[0] = a1;
      v20 = a2;
      v21 = v19;
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      v23 = sub_100004A3C(v12, v11, &v25);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Trial policy with same name as file policy: %s", v21, 0xCu);
      sub_100003324(v22);

      a2 = v20;
      a1 = v24[0];
    }

    else
    {
    }

    return (*(v15 + 16))(a2, a1, v14);
  }

  return result;
}

void sub_100079814()
{
  sub_1000055B0();
  v118 = v0;
  v2 = v1;
  v113 = v3;
  v4 = 0;
  v5 = type metadata accessor for RequestPriority();
  v6 = sub_100002F04(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002B8C();
  v111 = v10 - v9;
  sub_100003B1C();
  v11 = type metadata accessor for AssetPolicy();
  v12 = sub_100002F04(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100002B8C();
  v109[1] = v16 - v15;
  sub_100003B1C();
  v123 = type metadata accessor for Policy();
  v17 = sub_100002BDC(v123);
  v110 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100005630();
  v117 = v21 - v22;
  sub_100002F1C();
  __chkstk_darwin(v23);
  v114 = v109 - v24;
  v25 = &qword_10016F740;
  v26 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100002BDC(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_100004B1C();
  __chkstk_darwin(v31);
  v130 = v109 - v32;
  sub_100003B1C();
  v33 = type metadata accessor for Assertion.DaemonRep();
  v34 = sub_100002BDC(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_100005630();
  v122 = v39 - v40;
  sub_100002F1C();
  __chkstk_darwin(v41);
  v43 = v109 - v42;
  sub_1000081B4();
  v45 = sub_10001B2C0(v44, &qword_1001B8B78);
  v121 = v26;
  v109[0] = v45;
  v46 = Dictionary.init(dictionaryLiteral:)();
  v48 = v2 + 56;
  v47 = *(v2 + 56);
  v49 = *(v2 + 32);
  sub_100002F28();
  sub_100057A30();
  v51 = v50 >> 6;
  v125 = v36 + 16;
  v126 = v36;
  v115 = v28 + 16;
  v116 = v28;
  v119 = (v28 + 8);
  v124 = v36 + 8;

  v112 = 0;
  v128 = v2 + 56;
  v129 = v33;
  v127 = v2;
  v120 = v43;
  if (&qword_10016F740)
  {
LABEL_6:
    while (1)
    {
      (*(v126 + 16))(v43, *(v2 + 48) + *(v126 + 72) * (__clz(__rbit64(v25)) | (v4 << 6)), v33);
      v53 = v130;
      Assertion.DaemonRep.id.getter();
      v54 = Assertion.DaemonRep.policy.getter();
      v33 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v46;
      sub_100117378(v53);
      v59 = v46[2];
      v60 = (v58 & 1) == 0;
      v61 = v59 + v60;
      if (__OFADD__(v59, v60))
      {
        break;
      }

      v62 = v57;
      v63 = v58;
      sub_100065020(&qword_1001B9418, &qword_100170110);
      v43 = &v131;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v61))
      {
        v43 = v131;
        sub_100117378(v130);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_36;
        }

        v62 = v64;
      }

      v46 = v131;
      if (v63)
      {
        v66 = (v131[7] + 16 * v62);
        v67 = v66[1];
        *v66 = v54;
        v66[1] = v33;

        (*v119)(v130, v121);
        v68 = sub_100045740();
        v69(v68);
      }

      else
      {
        v131[(v62 >> 6) + 8] |= 1 << v62;
        v70 = v116;
        v2 = v130;
        v43 = v121;
        (*(v116 + 16))(v46[6] + *(v116 + 72) * v62, v130, v121);
        v71 = (v46[7] + 16 * v62);
        *v71 = v54;
        v71[1] = v33;
        (*(v70 + 8))(v2, v43);
        v72 = sub_100045740();
        v73(v72);
        v74 = v46[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_33;
        }

        v46[2] = v76;
      }

      v25 &= v25 - 1;
      v2 = v127;
      v48 = v128;
      if (!v25)
      {
        goto LABEL_2;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_100004FDC();
  }

  else
  {
    while (1)
    {
LABEL_2:
      v52 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v52 >= v51)
      {
        break;
      }

      v25 = *(v48 + 8 * v52);
      ++v4;
      if (v25)
      {
        v4 = v52;
        goto LABEL_6;
      }
    }

    if (qword_1001B88D8 != -1)
    {
      goto LABEL_34;
    }
  }

  v77 = type metadata accessor for Logger();
  sub_10000641C(v77, qword_1001B9218);
  sub_100003170();

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v78, v79))
  {
    sub_100007698();
    v80 = sub_10000767C();
    v131 = v80;
    *v51 = 136315138;
    Dictionary.description.getter();

    v81 = sub_100007B78();
    v84 = sub_100004A3C(v81, v82, v83);

    *(v51 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v78, v79, "Building effective policy from assertions: %s", v51, 0xCu);
    sub_100003324(v80);
    sub_10000706C();
    sub_100002F64();
  }

  else
  {
  }

  v51 = v112;
  v85 = v113;
  v86 = v110;
  default argument 0 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  default argument 2 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  v87 = v114;
  Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  v88 = *(v86 + 16);
  v86 += 16;
  v88(v85, v87, v123);
  v89 = 1 << *(v2 + 32);
  v90 = *(v2 + 56);
  sub_100012714();
  v93 = v92 & v91;
  v95 = (v94 + 63) >> 6;
  v96 = (v86 - 8);
  v97 = (v86 + 16);

  v98 = 0;
  v99 = v117;
  while (1)
  {
    if (!v93)
    {
      v101 = v129;
      v2 = v122;
      while (1)
      {
        v100 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_31;
        }

        if (v100 >= v95)
        {
          (*v96)(v114, v123);

          sub_100002EEC();
          return;
        }

        v93 = *(v128 + 8 * v100);
        ++v98;
        if (v93)
        {
          goto LABEL_27;
        }
      }
    }

    v100 = v98;
    v101 = v129;
    v2 = v122;
LABEL_27:
    (*(v126 + 16))(v2, *(v127 + 48) + *(v126 + 72) * (__clz(__rbit64(v93)) | (v100 << 6)), v101);
    sub_10007A00C(v85, v2, v118, v99);
    if (v51)
    {
      break;
    }

    v93 &= v93 - 1;
    v102 = sub_10002EAEC();
    v103(v102);
    (*v96)(v85, v123);
    v104 = *v97;
    v105 = sub_100007B78();
    v106(v105);
    v98 = v100;
  }

  v107 = sub_10002EAEC();
  v108(v107);
  (*v96)(v85, v123);
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10007A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v7 = type metadata accessor for Assertion.DaemonRep();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100065020(&qword_1001B9420, &qword_100170118);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Policy();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Assertion.DaemonRep.policy.getter();
  v22 = v21;
  v23 = *(a3 + 296);

  sub_100072B78(v20, v22, v23, &type metadata accessor for Policy, v14);

  if (sub_10000C6C0(v14, 1, v15) == 1)
  {
    v38 = a4;
    sub_10000C7F0(v14, &qword_1001B9420);
    if (qword_1001B88D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000641C(v24, qword_1001B9218);
    v26 = v39;
    v25 = v40;
    (*(v39 + 16))(v10, a2, v40);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136315138;
      v31 = Assertion.DaemonRep.policy.getter();
      v32 = v26;
      v34 = v33;
      (*(v32 + 8))(v10, v40);
      v35 = sub_100004A3C(v31, v34, &v42);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error while building policy: No such policy %s", v29, 0xCu);
      sub_100003324(v30);
    }

    else
    {

      (*(v26 + 8))(v10, v25);
    }

    return (*(v16 + 16))(v38, v41, v15);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    sub_1000784A4();
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_10007A404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[7] = a2;
  v7 = type metadata accessor for Policy();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v6[14] = *(v8 + 64);
  v6[15] = swift_task_alloc();
  v9 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_10007A50C, 0, 0);
}

uint64_t sub_10007A50C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v26 = *(v0 + 88);
  v27 = *(v0 + 72);
  v24 = *(v0 + 64);
  v22 = *(v0 + 56);
  v25 = type metadata accessor for TaskPriority();
  sub_100009BFC(v1, 1, 1, v25);
  v23 = *(v3 + 16);
  v7 = sub_100004CA4();
  v8(v7);
  sub_100007130(v6, v0 + 16);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = (((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v20 = *(v3 + 32);
  v20(v10 + v21, v2, v5);
  *(v10 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_100004A04((v0 + 16), v10 + v9);

  sub_10007AE90();
  sub_10000C7F0(v1, &qword_1001BB050);
  v11 = sub_100007A04();
  sub_100009BFC(v11, v12, v13, v25);
  v23(v2, v24, v5);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v20(v14 + v21, v2, v5);
  *(v14 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  *(v14 + v9) = v26;

  sub_10007AE90();
  sub_10000C7F0(v1, &qword_1001BB050);
  v15 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  v17 = sub_100065020(&qword_1001B9408, &qword_100174090);
  *v16 = v0;
  v16[1] = sub_10007A7D0;
  v18 = *(v0 + 56);

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v17);
}

uint64_t sub_10007A7D0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[17];
  v3 = v1[16];
  v4 = v1[15];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  sub_100001F00();

  return v7();
}

uint64_t sub_10007A8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for AssetPolicy();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = type metadata accessor for Policy();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v13 = _s6PolicyVMa_0();
  v6[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_10007AA64, 0, 0);
}

uint64_t sub_10007AA64()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v23 = v0[15];
  v24 = v5;
  v6 = v0[14];
  v26 = v0[13];
  v27 = v0[12];
  v25 = v0[11];
  v22 = v0[10];
  type metadata accessor for _OSActivity();
  v0[21] = swift_initStackObject();
  v0[22] = sub_10001B160("Setting AssetManager policy", 27, 2);
  (*(v3 + 16))(v4, v22, v5);

  Policy.assetPolicy.getter();
  v7 = Policy.memoryBudget.getter();
  LOBYTE(v22) = v8;
  v9 = Policy.inactiveAssetTimeout.getter();
  v11 = v10;
  v12 = Policy.assetTransitionDelay.getter();
  v21 = v13;
  (*(v3 + 8))(v4, v24);
  (*(v6 + 32))(v1, v23, v26);
  v14 = v1 + v2[5];
  *v14 = v7;
  *(v14 + 8) = v22 & 1;
  *(v1 + v2[8]) = v25;
  v15 = *&v9;
  if (v11)
  {
    v15 = 900.0;
  }

  *(v1 + v2[6]) = v15;
  v16 = *&v12;
  if (v21)
  {
    v16 = 10.0;
  }

  *(v1 + v2[7]) = v16;
  v17 = *sub_100003370(v27, v27[3]);
  v18 = swift_task_alloc();
  v0[23] = v18;
  *v18 = v0;
  v18[1] = sub_10007AC94;
  v19 = v0[20];

  return sub_1000C92F8();
}

uint64_t sub_10007AC94()
{
  sub_100002BAC();
  v1 = *(*v0 + 184);
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  return _swift_task_switch(sub_10007ADB0, 0, 0);
}

uint64_t sub_10007ADB0()
{
  sub_100003884();
  sub_100005F70();
  sub_10000D2AC();
  sub_1000187D8();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  sub_100001F00();

  return v1();
}

void sub_10007AE90()
{
  sub_1000134E8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v8);
  v10 = *(v9 + 64);
  sub_100004B1C();
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  sub_10001E72C(v7, v24 - v12, &qword_1001BB050, &qword_10016F6E0);
  v14 = type metadata accessor for TaskPriority();
  if (sub_10000C6C0(v13, 1, v14) == 1)
  {
    sub_10000C7F0(v13, &qword_1001BB050);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006098(v14);
    (*(v15 + 8))(v13, v14);
  }

  if (*(v3 + 16))
  {
    v16 = *(v3 + 24);
    v17 = *(v3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = *v1;
  sub_100002EE0();
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = v3;
  v23 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v23 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v23;
  v24[3] = v21;
  swift_task_create();

  sub_100009C38();
}

uint64_t sub_10007B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for RequestPriority();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = type metadata accessor for Policy();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v13 = _s6PolicyVMa();
  v6[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_10007B1E8, 0, 0);
}

uint64_t sub_10007B1E8()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v22 = v5;
  v23 = v0[19];
  v6 = v0[14];
  v24 = v0[13];
  v7 = v0[10];
  v21 = v0[11];
  type metadata accessor for _OSActivity();
  v0[21] = swift_initStackObject();
  v0[22] = sub_10001B160("Setting RequestManager policy", 29, 2);
  (*(v3 + 16))(v2, v7, v4);

  Policy.cancelPriority.getter();
  v8 = Policy.unentitledBackgroundInferenceWindow.getter();
  v10 = v9;
  v11 = Policy.unentitledBackgroundInferenceCap.getter();
  v13 = v12;
  (*(v3 + 8))(v2, v4);
  *(v1 + v23[7]) = v21;
  (*(v6 + 32))(v1, v22, v24);
  v14 = *&v8;
  if (v10)
  {
    v14 = 86400.0;
  }

  *(v1 + v23[5]) = v14;
  v15 = 204;
  if ((v13 & 1) == 0)
  {
    v15 = v11;
  }

  *(v1 + v23[6]) = v15;
  v16 = swift_task_alloc();
  v0[23] = v16;
  *v16 = v0;
  v16[1] = sub_10007B3CC;
  v17 = v0[20];
  v18 = v0[12];
  sub_100003D04();

  return sub_10013B4B8();
}

uint64_t sub_10007B3CC()
{
  sub_100002BAC();
  v1 = *(*v0 + 184);
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  return _swift_task_switch(sub_10007B4E8, 0, 0);
}

uint64_t sub_10007B4E8()
{
  sub_100003884();
  sub_100005F70();
  sub_10000D2AC();
  sub_1000187D8();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  sub_100001F00();

  return v1();
}

uint64_t sub_10007B5C8()
{
  v1 = type metadata accessor for PropertyListDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10008D1C4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    return v5;
  }

  return result;
}

void sub_10007B664()
{
  sub_10000355C();
  if (v1 == v2 || (v3 = v2, *(v1 + 16) != *(v2 + 16)))
  {
LABEL_21:
    sub_100005F10();
  }

  else
  {
    v4 = 0;
    v6 = v1 + 56;
    v5 = *(v1 + 56);
    v7 = *(v1 + 32);
    sub_10002B00C();
    sub_100057A30();
    v9 = v8 >> 6;
    if (v0)
    {
      while (2)
      {
        sub_1000137E0();
LABEL_10:
        v15 = (*(v10 + 48) + 16 * (v11 | (v4 << 6)));
        v17 = *v15;
        v16 = v15[1];
        v18 = *(v3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        sub_100012A00();
        v21 = ~v20;
        do
        {
          v22 = v19 & v21;
          if (((*(v3 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
          {

            goto LABEL_21;
          }

          v23 = (*(v3 + 48) + 16 * v22);
          if (*v23 == v17 && v23[1] == v16)
          {
            break;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v19 = v22 + 1;
        }

        while ((v25 & 1) == 0);

        if (v0)
        {
          continue;
        }

        break;
      }
    }

    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        goto LABEL_21;
      }

      ++v12;
      if (*(v6 + 8 * v4))
      {
        sub_1000062A0();
        v0 = v14 & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10007B7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v45 = &v34 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v34 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v41 = v5 + 32;
  v43 = a2 + 56;
  v44 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v34 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (2)
    {
      v22 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v42 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v42 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v45, v14, v4);
      v27 = *(a2 + 40);
      sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = a2;
      v30 = ~(-1 << *(a2 + 32));
      do
      {
        v31 = v28 & v30;
        if (((*(v43 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
        {
          (*v21)(v45, v4);
          return 0;
        }

        v26(v9, *(v29 + 48) + v31 * v42, v4);
        sub_10000814C(&qword_1001B8BA8, &type metadata accessor for Assertion.DaemonRep);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v21;
        (*v21)(v9, v4);
        v28 = v31 + 1;
      }

      while ((v32 & 1) == 0);
      result = (v33)(v45, v4);
      a2 = v29;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v40;
      if (v40)
      {
        continue;
      }

      break;
    }
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
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v40 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10007BB54()
{
  sub_1000055B0();
  v4 = sub_10000C1A0();
  v5 = type metadata accessor for ModelCatalogAsset(v4);
  v6 = sub_100002BDC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100005630();
  v11 = (v9 - v10);
  __chkstk_darwin(v12);
  v119 = (v106 - v13);
  sub_100002F1C();
  __chkstk_darwin(v14);
  v16 = v106 - v15;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_125:
    sub_100002EEC();
  }

  else
  {
    v17 = *(v1 + 56);
    v18 = *(v1 + 32);
    sub_10002B00C();
    v24 = -1;
    if (v21 < 64)
    {
      v25 = ~(-1 << v21);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v20;
    v27 = (v21 + 63) >> 6;
    v118 = v0 + 56;
    if (v26)
    {
      do
      {
        sub_100014454(v19);
        v31 = __clz(__rbit64(v30));
        v106[0] = (v30 - 1) & v30;
LABEL_13:
        v107 = v28;
        v110 = v1;
        v36 = *(v1 + 48);
        v109 = v29;
        v117 = *(v29 + 72);
        sub_100012D60(v31 | (v28 << 6));
        sub_10000931C();
        v108 = v16;
        sub_10000D460();
        v37 = *(v0 + 40);
        Hasher.init(_seed:)();
        sub_10000C228(&v122);
        v38 = Hasher._finalize()();
        v39 = -1 << *(v0 + 32);
        v40 = v38 & ~v39;
        if (((*(v118 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
LABEL_124:
          sub_10000D2AC();
          goto LABEL_125;
        }

        v115 = ~v39;
        v116 = v0;
        v41 = *v119;
        v120 = v119[1];
        v121 = v41;
        while (1)
        {
          v42 = *(v0 + 48);
          sub_100003B04();
          sub_10000931C();
          v43 = *v11 == v121 && v11[1] == v120;
          if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_119;
          }

          v44 = v11[2];
          v45 = v119[2];
          v46 = *(v44 + 16);
          if (v46 != *(v45 + 16))
          {
            goto LABEL_119;
          }

          if (v46)
          {
            v47 = v44 == v45;
          }

          else
          {
            v47 = 1;
          }

          if (!v47)
          {
            v48 = (v44 + 40);
            v24 = v45 + 40;
            do
            {
              if (!v46)
              {
                __break(1u);
LABEL_127:
                __break(1u);
                goto LABEL_128;
              }

              v49 = *(v48 - 1) == *(v24 - 8) && *v48 == *v24;
              if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_119;
              }

              v48 += 2;
              v24 += 16;
            }

            while (--v46);
          }

          v50 = v11[3];
          v51 = v119[3];
          v52 = *(v50 + 16);
          if (v52 != *(v51 + 16))
          {
            goto LABEL_119;
          }

          if (v52)
          {
            v53 = v50 == v51;
          }

          else
          {
            v53 = 1;
          }

          if (!v53)
          {
            sub_100003290();
            if (v65)
            {
              v71 = v66 == v67;
            }

            else
            {
              v71 = 0;
            }

            v113 = v52;
            if (!v71)
            {
              sub_100012E28();
              v2 = v11;
              _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_10000CC5C();
              v52 = v113;
              if ((v72 & 1) == 0)
              {
                goto LABEL_119;
              }
            }

            v73 = 0;
            v74 = 1;
            v112 = v51;
            if (v24)
            {
LABEL_75:
              if (v3)
              {
                if (v69 != v70 || v24 != v3)
                {
                  if (sub_1000267D0() & 1) == 0 || ((v2 ^ v24))
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_85;
                }

                goto LABEL_84;
              }
            }

            else
            {
              while (!v3)
              {
LABEL_84:
                if ((v2 ^ v68))
                {
                  goto LABEL_119;
                }

LABEL_85:
                if (v52 == v74)
                {
                  goto LABEL_39;
                }

                if (v74 >= v52)
                {
                  goto LABEL_127;
                }

                sub_100007F94();
                if (!v43 || v76 != v77)
                {
                  v114 = v73;
                  v79 = v50;
                  v80 = v2;
                  v81 = v11;
                  v82 = v68;
                  v83 = v74;
                  v84 = v3;
                  v85 = v40;
                  v86 = v69;
                  v87 = v70;
                  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v70 = v87;
                  v69 = v86;
                  v40 = v85;
                  v3 = v84;
                  v74 = v83;
                  v68 = v82;
                  v11 = v81;
                  v2 = v80;
                  v50 = v79;
                  v52 = v113;
                  v73 = v114;
                  if ((v88 & 1) == 0)
                  {
                    goto LABEL_119;
                  }
                }

                v73 += 40;
                ++v74;
                if (v24)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_119;
          }

LABEL_39:
          v54 = v11[4];
          v55 = v119[4];
          v56 = *(v54 + 16);
          if (v56 != *(v55 + 16))
          {
            goto LABEL_119;
          }

          if (!v56 || v54 == v55)
          {
            break;
          }

          sub_100003290();
          if (v89)
          {
            v95 = v90 == v91;
          }

          else
          {
            v95 = 0;
          }

          v112 = v56;
          if (!v95)
          {
            sub_100012E28();
            v2 = v96;
            _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_10000CC5C();
            v56 = v112;
            if ((v97 & 1) == 0)
            {
              goto LABEL_119;
            }
          }

          v98 = 0;
          v99 = 1;
          if (v24)
          {
LABEL_100:
            if (v3)
            {
              if (v93 != v94 || v24 != v3)
              {
                if (sub_1000267D0() & 1) == 0 || ((v2 ^ v24))
                {
                  goto LABEL_119;
                }

                goto LABEL_110;
              }

              goto LABEL_109;
            }
          }

          else
          {
            while (!v3)
            {
LABEL_109:
              if ((v2 ^ v92))
              {
                break;
              }

LABEL_110:
              if (v56 == v99)
              {
                goto LABEL_45;
              }

              if (v99 >= v56)
              {
                goto LABEL_129;
              }

              sub_100007F94();
              if (!v43 || v101 != v102)
              {
                v113 = v98;
                v114 = v99;
                sub_100012E28();
                v2 = v104;
                _stringCompareWithSmolCheck(_:_:expecting:)();
                sub_10000CC5C();
                v56 = v112;
                v98 = v113;
                v99 = v114;
                if ((v105 & 1) == 0)
                {
                  break;
                }
              }

              v98 += 40;
              ++v99;
              if (v24)
              {
                goto LABEL_100;
              }
            }
          }

LABEL_119:
          sub_100011314();
          sub_10000D2AC();
          v0 = v116;
          v40 = (v40 + 1) & v115;
          if (((*(v118 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_124;
          }
        }

LABEL_45:
        v58 = v111[8];
        if ((static AssetCost.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_119;
        }

        sub_100019A08(v111[9]);
        if (!v43)
        {
          goto LABEL_119;
        }

        sub_100019A08(v111[10]);
        if (!v43)
        {
          goto LABEL_119;
        }

        sub_100019A08(v111[11]);
        if (!v43)
        {
          goto LABEL_119;
        }

        sub_100019A08(v111[12]);
        if (!v43)
        {
          goto LABEL_119;
        }

        sub_100019A08(v111[13]);
        if (!v43)
        {
          goto LABEL_119;
        }

        v59 = v111[14];
        v60 = *(v11 + v59);
        v61 = *(v119 + v59);
        v62 = *(v60 + 16);
        if (v62 != *(v61 + 16))
        {
          goto LABEL_119;
        }

        if (v62 && v60 != v61)
        {
          v63 = (v60 + 40);
          v24 = v61 + 40;
          do
          {
            v64 = *(v63 - 1) == *(v24 - 8) && *v63 == *v24;
            if (!v64 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_119;
            }

            v63 += 2;
            v24 += 16;
          }

          while (--v62);
        }

        sub_100019A08(v111[15]);
        if (!v43)
        {
          goto LABEL_119;
        }

        sub_100007190();
        sub_10000D2AC();
        sub_10000D2AC();
        v0 = v116;
        v1 = v110;
        v19 = v111;
        v16 = v108;
        v22 = v107;
        v23 = v106[2];
        v24 = -1;
        v27 = v106[1];
      }

      while (v106[0]);
    }

    v32 = v22;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v27)
      {
        goto LABEL_125;
      }

      ++v32;
      if (*(v23 + 8 * v33))
      {
        sub_100014454(v19);
        sub_1000062A0();
        v106[0] = v35 & v34;
        goto LABEL_13;
      }
    }

LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    __break(1u);
  }
}

uint64_t sub_10007C228(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for Policy();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9478, &qword_1001701A0);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v12;
    return result;
  }

  v42 = v2;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v43 = (v6 + 16);
  v44 = v9;
  v45 = v6;
  v47 = (v6 + 32);
  v19 = result + 64;
  if (!v17)
  {
LABEL_9:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_35;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      sub_100011624(0, (v40 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v23 = v20 | (v13 << 6);
    v24 = *(v9 + 56);
    v25 = (*(v9 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v45 + 72);
    v29 = v24 + v28 * v23;
    if (v46)
    {
      (*v47)(v48, v29, v49);
    }

    else
    {
      (*v43)(v48, v29, v49);
    }

    v30 = *(v12 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v31 = -1 << *(v12 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
    {
      break;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v19 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v12 + 48) + 16 * v34);
    *v39 = v27;
    v39[1] = v26;
    result = (*v47)(*(v12 + 56) + v28 * v34, v48, v49);
    ++*(v12 + 16);
    v9 = v44;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v19 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10007C5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Policy();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_10007C628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_100065020(&qword_1001B9458, &qword_100174250) + 48);
  v5 = sub_100065020(&qword_1001B9460, &qword_100170188);
  result = sub_10007C5A8(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_10007C698(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v87 = a8;
  v82 = a7;
  v88 = a6;
  v94 = a5;
  v93 = a4;
  sub_10002A104();
  v11 = type metadata accessor for Policy();
  v12 = sub_100002BDC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100005630();
  v19 = v17 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = v80 - v22;
  __chkstk_darwin(v21);
  sub_10000C1B0();
  v24 = sub_100065020(&qword_1001B9468, &qword_100170190);
  sub_100002F04(v24);
  v26 = *(v25 + 64);
  sub_100004B1C();
  __chkstk_darwin(v27);
  v29 = (v80 - v28);
  v30 = sub_1000062B0();
  sub_10008CAB0(v30, v31, a3, v32);
  v80[0] = v99;
  v92 = (v14 + 32);
  v84 = v14 + 16;
  v85 = (v14 + 8);
  v90 = v14;
  v83 = (v14 + 40);
  v81 = v8;

  v80[1] = a3;

  v86 = v23;
  for (i = v29; ; v29 = i)
  {
    sub_10008CAEC(v29);
    v33 = sub_100065020(&qword_1001B9460, &qword_100170188);
    if (sub_10000C6C0(v29, 1, v33) == 1)
    {
      sub_100007F18();
      v67 = sub_10000C978();
      v68(v67);
    }

    v34 = v19;
    v35 = *(v33 + 48);
    v36 = v9;
    v38 = *v29;
    v37 = v29[1];
    v97 = *v29;
    v98 = v37;
    v39 = *v92;
    v40 = v36;
    v41 = v11;
    (*v92)();
    v42 = *v94;
    v43 = sub_100005FEC();
    v46 = sub_1000236F4(v43, v44);
    v47 = *(v42 + 16);
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v74 = sub_10000C978();
      v75(v74);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_21;
    }

    v50 = v45;
    if (*(v42 + 24) >= v49)
    {
      if ((v93 & 1) == 0)
      {
        sub_100065020(&qword_1001B9470, &qword_100170198);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      v51 = v94;
      sub_10007C228(v49, v93 & 1);
      v52 = *v51;
      v53 = sub_100005FEC();
      v55 = sub_1000236F4(v53, v54);
      if ((v50 & 1) != (v56 & 1))
      {
        goto LABEL_20;
      }

      v46 = v55;
    }

    v57 = *v94;
    if (v50)
    {
      break;
    }

    v57[(v46 >> 6) + 8] |= 1 << v46;
    v62 = (v57[6] + 16 * v46);
    *v62 = v38;
    v62[1] = v37;
    v63 = v57[7] + *(v90 + 72) * v46;
    v9 = v40;
    v11 = v41;
    (v39)(v63, v40, v41);
    v64 = v57[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_19;
    }

    v57[2] = v66;
    v19 = v34;
LABEL_14:
    v93 = 1;
  }

  v58 = *(v90 + 72) * v46;
  v19 = v34;
  (*(v90 + 16))(v34, v57[7] + v58, v41);
  v59 = v86;
  v9 = v40;
  v60 = v91;
  v87(v19, v40, v88);
  v91 = v60;
  if (!v60)
  {
    v61 = *v85;
    (*v85)(v19, v41);
    v61(v40, v41);
    v11 = v41;

    (*v83)(v57[7] + v58, v59, v41);
    goto LABEL_14;
  }

  v70 = *v85;
  (*v85)(v19, v41);
  v100 = v91;
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v71 = sub_100004CA4();
    (v70)(v71);
    sub_100007F18();

    v72 = sub_10000C978();
    return v73(v72);
  }

LABEL_21:
  v95 = 0;
  v96 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v76._object = 0x8000000100175B60;
  v76._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v76);
  _print_unlocked<A, B>(_:_:)();
  v77._countAndFlagsBits = 39;
  v77._object = 0xE100000000000000;
  String.append(_:)(v77);
  v78 = sub_10000C978();
  v79(v78);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10007CC90()
{
  sub_10000355C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v9 = *(v7 + 32);
  sub_100011E24();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v14 = (*(v7 + 48) + 16 * v13);
    v15 = *v14 == v4 && v14[1] == v2;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v16 = (*(v7 + 48) + 16 * v13);
      v17 = v16[1];
      *v6 = *v16;
      v6[1] = v17;

      goto LABEL_11;
    }

    v10 = v13 + 1;
  }

  v18 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v0;

  v20 = sub_10000CF04();
  sub_1000837F0(v20, v21, v13, isUniquelyReferenced_nonNull_native);
  *v0 = v22;
  *v6 = v4;
  v6[1] = v2;
LABEL_11:
  sub_100005F10();
}

BOOL sub_10007CDBC(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for Assertion.DaemonRep();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_100083958(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10000814C(&qword_1001B8BA8, &type metadata accessor for Assertion.DaemonRep);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_10007D084(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_100083C08(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10001B2C0(&qword_1001B8B90, &qword_1001B8B78);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

void sub_10007D4FC()
{
  sub_10000355C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = *(*v0 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  v11 = Hasher._finalize()();
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((1 << (v11 & v12)) & *(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v14 = *v0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v0;

      sub_100084074(v6, v4, v2, v13, isUniquelyReferenced_nonNull_native);
      *v0 = v19;
      *v8 = v6;
      *(v8 + 8) = v4;
      *(v8 + 16) = v2;
      goto LABEL_7;
    }

    if (*(*(v9 + 48) + 24 * v13) == v6)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v16 = *(v9 + 48) + 24 * v13;
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  *v8 = *v16;
  *(v8 + 8) = v17;
  *(v8 + 16) = v18;

LABEL_7:
  sub_100005F10();
}

BOOL sub_10007D654(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for StateDump.AssetState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_1000841D4(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10000814C(&qword_1001B95D0, &type metadata accessor for StateDump.AssetState);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_10007D91C(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for StateDump.SessionState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_100084484(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10000814C(&qword_1001B95B8, &type metadata accessor for StateDump.SessionState);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_10007DBE4(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for StateDump.RequestState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_100084734(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10000814C(&qword_1001B95A0, &type metadata accessor for StateDump.RequestState);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_10007DEAC(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10001B2C0(&qword_1001B9580, &qword_1001B8F48);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_1000849E4(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10001B2C0(&qword_1001B9588, &qword_1001B8F48);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_10007E174(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for StateDump.RemoteRequestState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_100084C90(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10000814C(&qword_1001B9570, &type metadata accessor for StateDump.RemoteRequestState);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

BOOL sub_10007E43C(char *a1, char *a2)
{
  v25 = a1;
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v5 = *(active - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(active);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, active);
      v31 = *v19;
      sub_100084F40(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, active);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, active);
    sub_10000814C(&qword_1001B9558, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, active);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, active);
  v16(v25, *(v27 + 48) + v15, active);
  return v14 == 0;
}

void sub_10007E704()
{
  sub_1000055B0();
  v1 = type metadata accessor for StateDump.InferenceProviderState();
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v9 = v8 - v7;
  v32 = v0;
  v10 = *v0;
  v11 = *(*v0 + 40);
  sub_10000CD8C();
  sub_10000814C(v12, v13);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = *(v10 + 32);
  sub_100011E24();
  v17 = ~v16;
  while (1)
  {
    v18 = v15 & v17;
    sub_100006358((v15 & v17) >> 3);
    if (((v19 << v18) & v20) == 0)
    {
      v26 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v4[2];
      sub_10002AB2C();
      v29();
      v33 = *v32;
      sub_1000851F0(v9, v18, isUniquelyReferenced_nonNull_native);
      *v32 = v33;
      v30 = v4[4];
      sub_10002AB2C();
      v31();
      goto LABEL_7;
    }

    sub_10000A050();
    v21 = v4[9] * v18;
    v22 = v4[2];
    sub_100036E1C();
    v22();
    sub_10000CD8C();
    sub_10000814C(&qword_1001B9540, v23);
    v24 = sub_100035368();
    v25 = v4[1];
    sub_10000CBD8();
    v25();
    if (v24)
    {
      break;
    }

    v15 = v18 + 1;
  }

  sub_10000CBD8();
  v25();
  sub_10000A050();
  sub_100036E1C();
  v22();
LABEL_7:
  sub_100002EEC();
}

BOOL sub_10007E94C(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for InferenceProviderAssetDescriptor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_1000854A0(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_10000814C(&qword_1001B94C0, &type metadata accessor for InferenceProviderAssetDescriptor);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

void sub_10007EC14()
{
  sub_1000055B0();
  v1 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v2 = sub_100002BDC(v1);
  v26 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v8 = v7 - v6;
  v25 = v0;
  v9 = *v0;
  v10 = *(*v0 + 40);
  Hasher.init(_seed:)();
  v11 = v1;
  v12 = *(v1 + 20);
  UUID.hash(into:)();
  Hasher._finalize()();
  v13 = *(v9 + 32);
  sub_100011E24();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v9 + 56 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v22 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10000931C();
      v27 = *v25;
      sub_100085750(v8, v17, isUniquelyReferenced_nonNull_native);
      *v25 = v27;
      sub_10000D460();
      goto LABEL_7;
    }

    v18 = *(v9 + 48);
    v19 = *(v26 + 72) * v17;
    sub_100005B9C();
    sub_10000931C();
    v20 = v8 + *(v11 + 20);
    v21 = static UUID.== infix(_:_:)();
    sub_100005618();
    sub_10000D2AC();
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  sub_100005618();
  sub_10000D2AC();
  v24 = *(v9 + 48);
  sub_100005B9C();
  sub_10000931C();
LABEL_7:
  sub_100002EEC();
}

void sub_10007EE00()
{
  sub_1000055B0();
  v2 = v1;
  v32 = v3;
  v4 = type metadata accessor for UUID();
  v31 = v0;
  v5 = *v0;
  v6 = *(*v0 + 40);
  sub_10005F2BC(&qword_1001B8C00);
  sub_100012484();
  v37 = v2;
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = *(v5 + 32);
  sub_100011E24();
  v35 = ~v9;
  v36 = v10;
  v33 = v5;
  v34 = v4 - 8;
  while (1)
  {
    v11 = v8 & v35;
    if (((1 << (v8 & v35)) & *(v36 + (((v8 & v35) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v21 = v31;
      v22 = *v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v4 - 8);
      v25 = *(v24 + 64);
      sub_100004B1C();
      __chkstk_darwin(v26);
      v28 = &v30 - v27;
      v29 = v37;
      (*(v24 + 16))(&v30 - v27, v37, v4);
      v39 = *v21;
      sub_1000859A4(v28, v11, isUniquelyReferenced_nonNull_native);
      *v21 = v39;
      (*(v24 + 32))(v32, v29, v4);
      goto LABEL_7;
    }

    v38 = &v30;
    v12 = *(v4 - 8);
    v13 = v12[8];
    __chkstk_darwin(v8);
    v15 = &v30 - v14;
    v17 = *(v16 + 72) * v11;
    v18 = v12[2];
    v18(&v30 - v14, *(v33 + 48) + v17, v4);
    sub_10005F2BC(&qword_1001B94A8);
    v19 = sub_100035368();
    v20 = v12[1];
    v20(v15, v4);
    if (v19)
    {
      break;
    }

    v8 = v11 + 1;
  }

  v20(v37, v4);
  v18(v32, *(v33 + 48) + v17, v4);
LABEL_7:
  sub_100002EEC();
}

uint64_t sub_10007F0E4(uint64_t a1, void *a2)
{
  v32 = a1;
  v4 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v30 = (&v30 - v10);
  v31 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v13 = *a2;
  v14 = a2[1];
  String.hash(into:)();
  v33 = v4;
  v15 = *(v4 + 20);
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00);
  v34 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v11 + 32);
  v18 = v16 & ~v17;
  if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      v21 = *(v11 + 48);
      sub_10000931C();
      v22 = *v9 == v13 && v9[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v23 = v9 + *(v33 + 20);
        if (static UUID.== infix(_:_:)())
        {
          break;
        }
      }

      sub_10000D2AC();
      v18 = (v18 + 1) & v19;
      if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_10000D2AC();
    sub_10000D2AC();
    v29 = *(v11 + 48);
    sub_10000931C();
    return 0;
  }

  else
  {
LABEL_10:
    v24 = v31;
    v25 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v30;
    sub_10000931C();
    v35 = *v24;
    sub_100085C1C(v27, v18, isUniquelyReferenced_nonNull_native);
    *v24 = v35;
    sub_10000D460();
    return 1;
  }
}

void sub_10007F3D4()
{
  sub_1000055B0();
  v1 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  sub_100002BDC(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_100004B1C();
  __chkstk_darwin(v6);
  sub_10008D314();
  sub_1000081B4();
  sub_10001B2C0(v7, &qword_1001B94D0);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = *(v0 + 32);
  sub_100011E24();
  sub_1000294B8();
  while (1)
  {
    v10 = v9 & v0;
    sub_100006358((v9 & v0) >> 3);
    if (((v11 << v10) & v12) == 0)
    {
      v16 = *v24;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = v3[2];
      sub_10002AB2C();
      v18();
      v19 = sub_1000265A0();
      sub_1000861B4(v19, v20, v21);
      *v24 = v25;
      v22 = v3[4];
      sub_10002AB2C();
      v23();
      goto LABEL_7;
    }

    v13 = sub_10008D2D0();
    (qword_1001B94D0)(v13);
    sub_1000039B4();
    sub_10001B2C0(&qword_1001B94E8, &qword_1001B94D0);
    sub_10008D330();
    v14 = sub_100035368();
    v15 = v3[1];
    sub_10000CBD8();
    v15();
    if (v14)
    {
      break;
    }

    v9 = v10 + 1;
  }

  sub_10000CBD8();
  v15();
  sub_10000A050();
  sub_100036E1C();
  (qword_1001B94D0)();
LABEL_7:
  sub_100002EEC();
}

Swift::Int sub_10007F978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100065020(&qword_1001B9498, &qword_1001701B0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      sub_10000E094();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1000834A4(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10007FB34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100065020(&qword_1001B9410, &qword_100170108);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_100011624(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10007FD90(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Assertion.DaemonRep();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B8B98, &qword_10016F750);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000800E8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B8B80, &qword_10016F748);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100080494(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelCatalogAsset(0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4 - 8);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9440, &qword_100170160);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v28 = v2;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    for (i = result + 56; v15; ++*(v10 + 16))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v7 + 48) + *(v31 + 72) * (v17 | (v11 << 6));
      sub_10000D460();
      v21 = *(v10 + 40);
      Hasher.init(_seed:)();
      sub_10000C228(v32);
      Hasher._finalize()();
      v22 = -1 << *(v10 + 32);
      v23 = i;
      v24 = _HashTable.nextHole(atOrAfter:)();
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = *(v10 + 48);
      result = sub_10000D460();
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v19 = v12[v11];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v7 + 32);
    if (v26 >= 64)
    {
      sub_100011624(0, (v26 + 63) >> 6, v7 + 56);
    }

    else
    {
      *v12 = -1 << v26;
    }

    v2 = v28;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100080730(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100065020(&qword_1001B9448, &qword_100170168);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_100011624(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v6 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v18);
    result = Hasher._finalize()();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 24 * v25;
    *v30 = v18;
    *(v30 + 8) = v19;
    *(v30 + 16) = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000809A4(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for StateDump.AssetState();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B95D8, &qword_100170220);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100080CFC(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for StateDump.SessionState();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B95C0, &qword_100170218);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100081054(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for StateDump.RequestState();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B95A8, &qword_100170210);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000813AC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9590, &qword_100170208);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10001B2C0(&qword_1001B9580, &qword_1001B8F48);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100081708(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for StateDump.RemoteRequestState();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9578, &qword_100170200);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100081A60(uint64_t a1)
{
  v2 = v1;
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v4 = *(active - 8);
  v5 = v4[8];
  __chkstk_darwin(active);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9560, &qword_1001701F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, active);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, active);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100081DB8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for StateDump.InferenceProviderState();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9548, &qword_1001701F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000814C(&qword_1001B9538, &type metadata accessor for StateDump.InferenceProviderState);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100082110(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for InferenceProviderAssetDescriptor();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B94C8, &qword_1001701C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100082468(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9520, &qword_1001701E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v35 = v2;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      sub_100011624(0, (v34 + 63) >> 6, v8 + 56);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v35;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48) + *(v36 + 72) * (v19 | (v12 << 6));
    sub_10000D460();
    v23 = *(v11 + 40);
    Hasher.init(_seed:)();
    v24 = &v7[*(v37 + 20)];
    UUID.hash(into:)();
    result = Hasher._finalize()();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v11 + 48);
    result = sub_10000D460();
    ++*(v11 + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100082778(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100065020(&qword_1001B94A0, &qword_1001701B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v35 = v2;
  v36 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  v37 = result;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      sub_100011624(0, (v34 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v40 = (v11 - 1) & v11;
LABEL_14:
    v17 = v14 | (v7 << 6);
    v18 = type metadata accessor for UUID();
    v39 = &v35;
    v19 = *(v18 - 8);
    v20 = v19[8];
    __chkstk_darwin(v18);
    v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v19[9];
    v24 = *(v3 + 48) + v23 * v17;
    v38 = v19[4];
    v38(v22, v24, v18);
    v6 = v37;
    v25 = *(v37 + 40);
    sub_10005F2BC(&qword_1001B8C00);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v38)(*(v6 + 48) + v29 * v23, v22, v18);
    ++*(v6 + 16);
    v11 = v40;
    v3 = v36;
    if (!v40)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v13 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100082AA4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B9518, &qword_1001701D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v38 = v2;
  v39 = v8;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = v13[v12];
      ++v19;
      if (v20)
      {
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v8 + 32);
    if (v36 >= 64)
    {
      sub_100011624(0, (v36 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v36;
    }

    v2 = v38;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v16 &= v16 - 1;
LABEL_14:
    v21 = *(v8 + 48);
    v22 = *(v40 + 72);
    sub_10000D460();
    v23 = *(v11 + 40);
    Hasher.init(_seed:)();
    v24 = *v7;
    v25 = v7[1];
    String.hash(into:)();
    v26 = *(v41 + 20);
    type metadata accessor for UUID();
    sub_10005F2BC(&qword_1001B8C00);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v11 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = *(v11 + 48);
    result = sub_10000D460();
    ++*(v11 + 16);
    v8 = v39;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v18 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100082DEC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B94F8, &qword_1001701D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10001B2C0(&qword_1001B9500, &qword_1001B94F0);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100083148(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100065020(&qword_1001B94D8, &qword_1001701C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_100011624(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10001B2C0(&qword_1001B94E0, &qword_1001B94D0);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000834A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100065020(&qword_1001B9498, &qword_1001701B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_100011624(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 8 * v21) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1000836C8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v6 = *(a2 + 40);
  Hasher.init(_seed:)();
  a3(v11);
  Hasher._finalize()();
  v7 = *(a2 + 32);
  sub_100011E24();
  _HashTable.nextHole(atOrAfter:)();
  sub_100005AF4();
  *(a2 + 56 + v10) |= v9 << v8;
  *(*(a2 + 48) + 8 * v8) = a1;
  ++*(a2 + 16);
}

unint64_t sub_10008376C(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_1000837F0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10007FB34(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_100086CF0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_100086460();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_100083958(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for Assertion.DaemonRep();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10007FD90(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100086F24(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10000814C(&qword_1001B8BA0, &type metadata accessor for Assertion.DaemonRep);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B8BA8, &type metadata accessor for Assertion.DaemonRep);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100083C08(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000800E8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_10008723C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10001B2C0(&qword_1001B8B88, &qword_1001B8B78);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10001B2C0(&qword_1001B8B90, &qword_1001B8B78);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100027D74();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_100084074(Swift::UInt a1, int a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_100080730(v10 + 1);
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      sub_1000877C0(v10 + 1);
LABEL_10:
      v17 = *v5;
      v18 = *(*v5 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(a1);
      v19 = Hasher._finalize()();
      v20 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a4 = v19 & v20;
        if (((*(v17 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v17 + 48) + 24 * a4) == a1)
        {
          goto LABEL_15;
        }

        v19 = a4 + 1;
      }
    }

    sub_1000865CC();
  }

LABEL_7:
  v12 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v13 = *(v12 + 48) + 24 * a4;
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }
}

uint64_t sub_1000841D4(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for StateDump.AssetState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000809A4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100087A18(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10000814C(&qword_1001B95C8, &type metadata accessor for StateDump.AssetState);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B95D0, &type metadata accessor for StateDump.AssetState);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100084484(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for StateDump.SessionState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100080CFC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100087D30(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10000814C(&qword_1001B95B0, &type metadata accessor for StateDump.SessionState);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B95B8, &type metadata accessor for StateDump.SessionState);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100084734(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for StateDump.RequestState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100081054(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100088048(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10000814C(&qword_1001B9598, &type metadata accessor for StateDump.RequestState);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B95A0, &type metadata accessor for StateDump.RequestState);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1000849E4(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000813AC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100088360(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10001B2C0(&qword_1001B9580, &qword_1001B8F48);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10001B2C0(&qword_1001B9588, &qword_1001B8F48);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100027D74();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100084C90(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for StateDump.RemoteRequestState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100081708(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_10008867C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10000814C(&qword_1001B9568, &type metadata accessor for StateDump.RemoteRequestState);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B9570, &type metadata accessor for StateDump.RemoteRequestState);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100084F40(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v7 = *(active - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(active);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100081A60(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100088994(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10000814C(&qword_1001B9550, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, active);
        sub_10000814C(&qword_1001B9558, &type metadata accessor for StateDump.InferenceProviderState.ActiveRequest);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, active);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, active);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1000851F0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for StateDump.InferenceProviderState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100081DB8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100088CAC(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10000814C(&qword_1001B9538, &type metadata accessor for StateDump.InferenceProviderState);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B9540, &type metadata accessor for StateDump.InferenceProviderState);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1000854A0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for InferenceProviderAssetDescriptor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100082110(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100088FC4(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10000814C(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10000814C(&qword_1001B94C0, &type metadata accessor for InferenceProviderAssetDescriptor);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000866EC();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100085750(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100082468(v9 + 1);
      goto LABEL_8;
    }

    if (v10 <= v9)
    {
      sub_1000892DC(v9 + 1);
LABEL_8:
      v27 = v3;
      v11 = *v3;
      v12 = *(*v3 + 40);
      Hasher.init(_seed:)();
      v13 = *(v6 + 20);
      UUID.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = ~(-1 << *(v11 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v11 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        v16 = *(v11 + 48);
        v17 = *(v7 + 72);
        sub_10000931C();
        v18 = *(v6 + 20);
        v19 = static UUID.== infix(_:_:)();
        sub_10000D2AC();
        if (v19)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v27;
      goto LABEL_13;
    }

    sub_100086848();
  }

LABEL_13:
  v20 = *v3;
  *(v20 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v21 = *(v20 + 48);
  v22 = *(v7 + 72);
  result = sub_10000D460();
  v24 = *(v20 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v26;
  }

  return result;
}

uint64_t sub_1000859A4(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100082778(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_1000895BC(v5 + 1);
LABEL_8:
      v25 = v3;
      v7 = *v3;
      v8 = *(*v3 + 40);
      v9 = type metadata accessor for UUID();
      sub_10005F2BC(&qword_1001B8C00);
      v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v11 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v12 = *(v9 - 8);
        v13 = *(v12 + 64);
        __chkstk_darwin(v10);
        v15 = &v25 - v14;
        (*(v12 + 16))(&v25 - v14, *(v7 + 48) + *(v16 + 72) * a2, v9);
        sub_10005F2BC(&qword_1001B94A8);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v12 + 8))(v15, v9);
        if (v17)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v3 = v25;
      goto LABEL_13;
    }

    sub_1000869B0();
  }

LABEL_13:
  v18 = *v3;
  *(v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48);
  v20 = type metadata accessor for UUID();
  result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * a2, v26, v20);
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v24;
  }

  return result;
}

uint64_t sub_100085C1C(uint64_t *a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v30 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    sub_100082AA4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100086848();
      goto LABEL_17;
    }

    sub_1000898C8(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v14 = *v32;
  v15 = v32[1];
  String.hash(into:)();
  v16 = *(v6 + 20);
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00);
  dispatch thunk of Hashable.hash(into:)();
  v17 = Hasher._finalize()();
  v18 = -1 << *(v12 + 32);
  a2 = v17 & ~v18;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v31 + 72);
    do
    {
      v21 = *(v12 + 48);
      sub_10000931C();
      v22 = *v9 == v14 && v9[1] == v15;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v23 = v9 + *(v6 + 20);
        if (static UUID.== infix(_:_:)())
        {
          goto LABEL_20;
        }
      }

      sub_10000D2AC();
      a2 = (a2 + 1) & v19;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_17:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v25 = *(v24 + 48) + *(v31 + 72) * a2;
  result = sub_10000D460();
  v27 = *(v24 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v24 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_20:
  sub_10000D2AC();
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100085F08(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100082DEC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100089BE0(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10001B2C0(&qword_1001B9500, &qword_1001B94F0);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10001B2C0(&qword_1001B9508, &qword_1001B94F0);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100027D74();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1000861B4(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100083148(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100089EFC(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10001B2C0(&qword_1001B94E0, &qword_1001B94D0);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10001B2C0(&qword_1001B94E8, &qword_1001B94D0);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100027D74();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}