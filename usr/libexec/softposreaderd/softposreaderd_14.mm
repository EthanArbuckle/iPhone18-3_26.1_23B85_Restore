uint64_t sub_10014E988@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 96, &v22);
  if (!v23)
  {
    sub_10014F0D0(&v22);
    sub_10000CCE4(v1 + 280, v21);
    if (qword_10039D690 != -1)
    {
      swift_once();
    }

    v3 = qword_1003A6E30;
    v4 = *(v1 + 320);
    sub_100004074(&qword_10039E3C0, &unk_1002C7840);
    if (v4 == 1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1002C8EE0;
      v6 = qword_10039D6A0;
      v7 = v3;
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = qword_1003A6E40;
      *(v5 + 32) = qword_1003A6E40;
      v9 = qword_10039D6A8;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = qword_1003A6E48;
      *(v5 + 40) = qword_1003A6E48;
      v12 = (v5 + 48);
    }

    else
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1002C17A0;
      v13 = qword_10039D6A8;
      v14 = v3;
      if (v13 != -1)
      {
        swift_once();
      }

      v11 = qword_1003A6E48;
      *(v5 + 32) = qword_1003A6E48;
      v12 = (v5 + 40);
    }

    v15 = qword_10039D698;
    v16 = v11;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_1003A6E38;
    *v12 = qword_1003A6E38;
    v18 = v17;
    v23 = &type metadata for CertificateTrustVerifier;
    v24 = &off_100385290;
    v19 = swift_allocObject();
    *&v22 = v19;
    sub_100029790(v21, (v19 + 2));
    v19[7] = v3;
    v19[8] = v5;
    v19[9] = 0;
    sub_10000CCE4(&v22, v21);
    swift_beginAccess();
    sub_10014F170(v21, v1 + 96);
    swift_endAccess();
  }

  return sub_100029790(&v22, a1);
}

uint64_t sub_10014EC20@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 136, &v5);
  if (v6)
  {
    return sub_100029790(&v5, a1);
  }

  sub_10014F0D0(&v5);
  a1[3] = &type metadata for CertificateTimeVerifier;
  a1[4] = &off_1003852A8;
  v4 = swift_allocObject();
  *a1 = v4;
  sub_10000CCE4(v1 + 280, v4 + 24);
  *(v4 + 16) = *(v1 + 256);
  sub_10000CCE4(a1, &v5);
  swift_beginAccess();
  sub_10014F170(&v5, v1 + 136);
  return swift_endAccess();
}

uint64_t sub_10014ED08@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 176, &v5);
  if (v6)
  {
    return sub_100029790(&v5, a1);
  }

  sub_10014F0D0(&v5);
  a1[3] = &type metadata for CertificateTimeVerifier;
  a1[4] = &off_1003852A8;
  v4 = swift_allocObject();
  *a1 = v4;
  sub_10000CCE4(v1 + 280, v4 + 24);
  *(v4 + 16) = *(v1 + 264);
  sub_10000CCE4(a1, &v5);
  swift_beginAccess();
  sub_10014F170(&v5, v1 + 176);
  return swift_endAccess();
}

uint64_t sub_10014EDF0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10014F060(v1 + 216, &v5);
  if (v6)
  {
    return sub_100029790(&v5, a1);
  }

  sub_10014F0D0(&v5);
  a1[3] = &type metadata for CertificateTimeVerifier;
  a1[4] = &off_1003852A8;
  v4 = swift_allocObject();
  *a1 = v4;
  sub_10000CCE4(v1 + 280, v4 + 24);
  *(v4 + 16) = *(v1 + 272);
  sub_10000CCE4(a1, &v5);
  swift_beginAccess();
  sub_10014F170(&v5, v1 + 216);
  return swift_endAccess();
}

uint64_t sub_10014EED8()
{
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (result)
  {
    qword_1003A6E38 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014EF2C()
{
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (result)
  {
    qword_1003A6E40 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014EF80()
{
  type metadata accessor for SecCertificate(0);
  result = static SecCertificateRef.parse(base64Encoded:)();
  if (result)
  {
    qword_1003A6E48 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014EFD4()
{
  sub_10014F0D0(v0 + 16);
  sub_10014F0D0(v0 + 56);
  sub_10014F0D0(v0 + 96);
  sub_10014F0D0(v0 + 136);
  sub_10014F0D0(v0 + 176);
  sub_10014F0D0(v0 + 216);
  sub_10000959C((v0 + 280));

  return swift_deallocClassInstance();
}

uint64_t sub_10014F060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A4900, &unk_1002C8FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F0D0(uint64_t a1)
{
  v2 = sub_100004074(&qword_1003A4900, &unk_1002C8FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014F138()
{
  sub_10000959C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10014F170(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A4900, &unk_1002C8FB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014F1E0()
{
  sub_10000959C(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10014F228(uint64_t a1)
{
  sub_1000E4518(v26);
  if (!v2)
  {
    v4 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v5 = type metadata accessor for Settings();
    v6 = *(v4 + v5[6]);
    v7 = *(v4 + v5[10]);
    v8 = *(v4 + v5[11]);
    v9 = *(v4 + v5[12]);
    v10 = v27;
    v11 = sub_100022438(v26, v27);
    v12 = *(*(v10 - 8) + 64);
    __chkstk_darwin(v11);
    v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v17 = type metadata accessor for DefaultSecureTimeKeeper();
    v25[3] = v17;
    v25[4] = &off_100384E70;
    v25[0] = v16;
    type metadata accessor for CertificateVerifierFactory();
    v1 = swift_allocObject();
    v18 = sub_100022438(v25, v17);
    v19 = *(*(v17 - 8) + 64);
    __chkstk_darwin(v18);
    v21 = (v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = *v21;
    *(v1 + 304) = v17;
    *(v1 + 312) = &off_100384E70;
    *(v1 + 280) = v23;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 320) = (v6 & 1) == 0;
    *(v1 + 256) = v7;
    *(v1 + 264) = v8;
    *(v1 + 272) = v9;
    sub_10000959C(v25);
    sub_10000959C(v26);
  }

  return v1;
}

uint64_t sub_10014F48C@<X0>(uint64_t **a1@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v7 - 8);
  v8 = v81[8];
  __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = *a1;
  if (v16)
  {
    v17 = sub_100150B58(&qword_1003A4A40, type metadata accessor for BAASigner);
    *a3 = v16;
    a3[1] = v17;
  }

  else
  {
    v67 = v15;
    v68 = a3;
    v69 = v3;
    v18 = a2[36];
    v66 = a2[35];
    sub_10000CCE4((a2 + 2), v80);
    v19 = a2[10];
    v20 = a2[11];
    sub_10000BE18(a2 + 7, v19);
    v65 = v18;

    sub_1000C289C(5u, v19, v20);
    v21 = *sub_10000BE18(a2 + 12, a2[15]);
    sub_10014ED08(v78);
    v22 = a2[17];
    sub_10000CCE4((a2 + 18), v76);
    sub_10000CCE4((a2 + 25), v74);
    v23 = a2[23];
    v24 = a2[24];
    v63 = v23;
    sub_1001500A0();
    v64 = v22;

    static DispatchQoS.background.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    (v81[13])(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
    v81 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    if (qword_10039D6D8 != -1)
    {
      swift_once();
    }

    v25 = qword_10039D6D0;
    v61 = qword_1003A6E70;
    if (v25 != -1)
    {
      swift_once();
    }

    v26 = qword_1003A6E68;
    v27 = v77;
    v28 = sub_100022438(v76, v77);
    v62 = &v60;
    v29 = *(*(v27 - 8) + 64);
    __chkstk_darwin(v28);
    v31 = (&v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = v75;
    v34 = sub_100022438(v74, v75);
    v60 = &v60;
    v35 = *(*(v33 - 8) + 64);
    __chkstk_darwin(v34);
    v37 = (&v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = *v31;
    v40 = *v37;
    v41 = type metadata accessor for SystemInfo();
    v73[3] = v41;
    v73[4] = &off_100386330;
    v73[0] = v39;
    v71 = type metadata accessor for DefaultSecureTimeKeeper();
    v72 = &off_100384E70;
    v70[0] = v40;
    type metadata accessor for BAASigner();
    v42 = swift_allocObject();
    v43 = sub_100022438(v73, v41);
    v44 = *(*(v41 - 8) + 64);
    __chkstk_darwin(v43);
    v46 = (&v60 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    v48 = v71;
    v49 = sub_100022438(v70, v71);
    v50 = *(*(v48 - 8) + 64);
    __chkstk_darwin(v49);
    v52 = (&v60 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    v54 = *v46;
    v55 = *v52;

    v56 = sub_1001500EC(v66, v65, 400, 0x632D657275636573, 0xEE006C656E6E6168, 0, 0, 0, v80, v79, v78, v64, v54, v55, v63, v24, v81, v61, v26, 600000, v42);
    sub_10000959C(v70);
    sub_10000959C(v73);
    sub_10000959C(v74);
    sub_10000959C(v76);
    *v67 = v56;
    v57 = sub_100150B58(&qword_1003A4A40, type metadata accessor for BAASigner);
    v58 = v68;
    *v68 = v56;
    v58[1] = v57;
  }
}

void *sub_10014FBB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = v5;
  v35 = a5;
  LODWORD(v32) = a4;
  v37 = a2;
  v36 = a1;
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v31);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = v6[36];
  v34 = v6[35];
  sub_10000CCE4((v6 + 2), v44);
  v18 = v6[10];
  v17 = v6[11];
  sub_10000BE18(v6 + 7, v18);
  v33 = v16;

  v38 = a3;

  sub_1000C289C(v32, v18, v17);
  v19 = *sub_10000BE18(v6 + 12, v6[15]);
  sub_10014EC20(v42);
  v20 = v6[17];
  sub_10000CCE4((v6 + 18), v41);
  sub_10000CCE4((v6 + 25), v40);
  v21 = v6[23];
  v22 = v6[24];
  v32 = v21;
  sub_1001500A0();

  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v31);
  v23 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_10039D6C0 != -1)
  {
    swift_once();
  }

  v24 = qword_10039D6B8;
  v25 = qword_1003A6E58;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = qword_1003A6E50;
  v39[3] = &type metadata for SystemRandomNumberGenerator;
  v39[4] = &protocol witness table for SystemRandomNumberGenerator;
  type metadata accessor for SESSigner();
  swift_allocObject();

  v27 = v44[7];
  result = sub_10015EFC8(v34, v33, v36, v37, v38, v35 & 1, v44, v43, v42, v20, v41, v40, v32, v22, v23, v25, v26, v39);
  if (!v27)
  {
    v29 = result;
    sub_100150B58(&qword_1003A4A38, type metadata accessor for SESSigner);
    return v29;
  }

  return result;
}

uint64_t *sub_10014FFE0()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  sub_10000959C(v0 + 12);
  v1 = v0[17];

  sub_10000959C(v0 + 18);
  v2 = v0[24];

  sub_10000959C(v0 + 25);
  sub_10000959C(v0 + 30);
  v3 = v0[36];

  v4 = v0[37];

  return v0;
}

uint64_t sub_100150048()
{
  sub_10014FFE0();

  return swift_deallocClassInstance();
}

unint64_t sub_1001500A0()
{
  result = qword_10039D7D8;
  if (!qword_10039D7D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10039D7D8);
  }

  return result;
}

uint64_t *sub_1001500EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  v63 = *a21;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v73[3] = &type metadata for SystemRandomNumberGenerator;
  v73[4] = &protocol witness table for SystemRandomNumberGenerator;
  v72[3] = type metadata accessor for SystemInfo();
  v72[4] = &off_100386330;
  v72[0] = a13;
  v71[3] = type metadata accessor for DefaultSecureTimeKeeper();
  v71[4] = &off_100384E70;
  aBlock[5] = 0;
  v71[0] = a14;
  a21[9] = 0;
  aBlock[4] = nullsub_1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100385378;
  _Block_copy(aBlock);
  sub_100150B58(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_100150BA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = type metadata accessor for DispatchWorkItem();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  a21[46] = DispatchWorkItem.init(flags:block:)();
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v29 = a17;
  v28 = a18;
  v30 = type metadata accessor for Logger();
  sub_10000403C(v30, qword_1003A51C8);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = a5;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v34 = 136315394;
    nullsub_1(v63);
    v35 = _typeName(_:qualified:)();
    v37 = sub_100008F6C(v35, v36, aBlock);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1670;
    v62 = v32;
    v39 = a1;
    *(v38 + 32) = a1;
    *(v38 + 40) = a2;
    *(v38 + 88) = &type metadata for String;
    v40 = a4;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = a4;
    *(v38 + 72) = v33;

    v41 = showFunction(signature:_:)(0xD0000000000000C5, 0x8000000100352000, v38);
    v43 = v42;

    v44 = v41;
    v29 = a17;
    v45 = sub_100008F6C(v44, v43, aBlock);

    *(v34 + 14) = v45;
    v28 = a18;
    _os_log_impl(&_mh_execute_header, v31, v62, "%s.%s", v34, 0x16u);
    swift_arrayDestroy();

    v46 = a9;
    v47 = a10;
  }

  else
  {

    v46 = a9;
    v47 = a10;
    v40 = a4;
    v39 = a1;
  }

  a21[2] = v39;
  a21[3] = a2;
  a21[4] = a3;
  a21[5] = v40;
  a21[6] = v33;
  a21[7] = a7;
  a21[8] = a8;
  sub_10000CCE4(v46, (a21 + 10));
  sub_10000CCE4(v47, (a21 + 15));
  sub_10000CCE4(a11, (a21 + 35));
  a21[40] = a12;
  sub_10000CCE4(v72, (a21 + 41));
  sub_10000CCE4(v71, (a21 + 30));
  a21[20] = v29;
  a21[21] = v28;
  a21[22] = a19;
  a21[23] = a15;
  a21[24] = a16;
  sub_10000CCE4(v73, (a21 + 25));
  a21[47] = a20;

  v48 = v29;
  v49 = v28;
  v50 = sub_10016704C();
  if (v50)
  {
    v51 = v50;
    v52 = *(v50 + 24);
    v53 = *(v50 + 32);
    sub_1000094F4(v52, v53);
    v54 = sub_10016950C();
    sub_100009548(v52, v53);
    if (v54)
    {
      v55 = a21[9];
      a21[9] = v51;

      sub_10016807C(v51);

LABEL_9:

      goto LABEL_16;
    }

    sub_100167CE8();
  }

  if ((a6 & 1) == 0)
  {
    sub_100166890();
    v60 = v59;
    sub_100167650(v59);
    sub_10016807C(v60);

    goto LABEL_9;
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "Not allowed to create initial identity", v58, 2u);
  }

LABEL_16:
  sub_10000959C(a11);
  sub_10000959C(v47);
  sub_10000959C(v46);
  sub_10000959C(v73);
  sub_10000959C(v71);
  sub_10000959C(v72);
  return a21;
}

uint64_t sub_100150B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100150B58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100150BA0()
{
  result = qword_10039E2B0;
  if (!qword_10039E2B0)
  {
    sub_1000040BC(&qword_10039DD40, &qword_1002BFEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E2B0);
  }

  return result;
}

void *sub_100150C04()
{
  sub_1000E5EA8(v88);
  if (v0)
  {

    return v1;
  }

  sub_1000E6B70(v87);
  sub_1000E650C(v86);
  sub_1000EE288();
  v4 = v3;
  sub_1000E90C8(v85);
  sub_1000E5844(v84);
  sub_1000E4518(v83);
  v5 = v89;
  v6 = v90;
  sub_10000BE18(v88, v89);
  (*(v6 + 8))(v82, 0, v5, v6);
  sub_10000CCE4(v87, v81);
  sub_10000CCE4(v86, v79);
  sub_10000CCE4(v85, v77);
  result = [*(*sub_10000BE18(v84 v84[3]) + 16)];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v9;
    v62 = v8;

    sub_10000CCE4(v83, v75);
    v10 = v80;
    v11 = sub_100022438(v79, v80);
    v91 = v54;
    v12 = *(*(v10 - 8) + 64);
    __chkstk_darwin(v11);
    v14 = (v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = v78;
    v17 = sub_100022438(v77, v78);
    v60 = v54;
    v18 = *(*(v16 - 8) + 64);
    __chkstk_darwin(v17);
    v20 = (v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = v76;
    v23 = sub_100022438(v75, v76);
    v59 = v54;
    v24 = *(*(v22 - 8) + 64);
    __chkstk_darwin(v23);
    v26 = (v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = *v14;
    v29 = *v20;
    v30 = *v26;
    v73 = type metadata accessor for CertificateVerifierFactory();
    v74 = &off_1003852C0;
    v31 = v73;
    v72[0] = v28;
    v56 = type metadata accessor for SystemInfo();
    v70 = v56;
    v71 = &off_100386330;
    v69[0] = v29;
    v55 = type metadata accessor for DefaultSecureTimeKeeper();
    v67 = v55;
    v68 = &off_100384E70;
    v66[0] = v30;
    v64 = &type metadata for SystemRandomNumberGenerator;
    v65 = &protocol witness table for SystemRandomNumberGenerator;
    type metadata accessor for SignerFactory();
    v1 = swift_allocObject();
    v32 = sub_100022438(v72, v31);
    v58 = v54;
    v54[0] = v31;
    v33 = *(*(v31 - 8) + 64);
    __chkstk_darwin(v32);
    v35 = (v54 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35);
    v37 = v70;
    v38 = sub_100022438(v69, v70);
    v57 = v54;
    v39 = *(*(v37 - 8) + 64);
    __chkstk_darwin(v38);
    v41 = (v54 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = v67;
    v44 = sub_100022438(v66, v67);
    v54[1] = v54;
    v45 = *(*(v43 - 8) + 64);
    __chkstk_darwin(v44);
    v47 = (v54 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47);
    v49 = *v35;
    v50 = *v41;
    v51 = *v47;
    v1[15] = v54[0];
    v1[16] = &off_1003852C0;
    v1[12] = v49;
    v1[21] = v56;
    v1[22] = &off_100386330;
    v1[18] = v50;
    v1[28] = v55;
    v1[29] = &off_100384E70;
    v1[25] = v51;
    v1[35] = 0xD000000000000017;
    v1[36] = 0x800000010034A1A0;
    sub_100004074(&qword_1003A4A48, &qword_1002C9058);
    v52 = swift_allocObject();
    *(v52 + 24) = 0;

    sub_10000959C(v83);
    sub_10000959C(v85);
    sub_10000959C(v86);
    sub_10000959C(v87);
    *(v52 + 16) = 0;
    v1[37] = v52;
    sub_100029790(v82, (v1 + 2));
    sub_100029790(v81, (v1 + 7));
    v1[17] = v4;
    v53 = v61;
    v1[23] = v62;
    v1[24] = v53;
    sub_100029790(&v63, (v1 + 30));
    sub_10000959C(v66);
    sub_10000959C(v69);
    sub_10000959C(v72);
    sub_10000959C(v75);
    sub_10000959C(v77);
    sub_10000959C(v79);
    sub_10000959C(v84);
    sub_10000959C(v88);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10015140C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10015149C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      v11 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v5 == v8 && v6 == v9)
      {
        if (v7 != v10)
        {
          return 0;
        }
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v13 & 1) == 0 || v7 != v10)
        {
          return result;
        }
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100151598(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
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
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_1000094F4(v7, v6);
          sub_1000094F4(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_1000094F4(v7, v6);
        sub_1000094F4(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_1000094F4(v7, v6);
          sub_1000094F4(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_1000F5728(v24, v25, v26, v33);
          sub_100009548(v9, v8);
          sub_100009548(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_1000094F4(v7, v6);
        sub_1000094F4(v9, v8);
      }

      sub_1000F5728(v33, v9, v8, &v32);
      sub_100009548(v9, v8);
      sub_100009548(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1001519A4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for SecCertificate(0);
    v4 = v11;
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v3 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        sub_100155CFC(&qword_1003A4BA8, 255, type metadata accessor for SecCertificate);
        v19 = static _CFObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v5)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v3 + 32);
    v21 = (a2 + 32);
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = v5 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v25 = *v20++;
      v24 = v25;
      v26 = *v21++;
      v3 = sub_100155CFC(&qword_1003A4BA8, 255, type metadata accessor for SecCertificate);
      v27 = v24;
      v28 = v26;
      v19 = static _CFObject.== infix(_:_:)();

      v30 = a2-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v30)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_100151C68(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100151CC4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4A50);
  sub_10000403C(v0, qword_1003A4A50);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_100151D20()
{
  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C7370;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 104) = v5;
  *(v0 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 120) = v6;
  *(v0 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 136) = v7;
  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v8;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 160) = result;
  *(v0 + 168) = v10;
  qword_1003A6E50 = v0;
  return result;
}

void sub_100151E28()
{
  v0 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly, 0x40000001uLL, 0);
  if (v0)
  {
    v1 = v0;
    sub_100184270(&off_10037E138);
    sub_10000BD44(&unk_10037E158, &qword_1003A4B88, &qword_1002C9188);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();

    qword_1003A6E58 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100151EF8()
{
  v1 = v0;
  v2 = *v0;
  _StringGuts.grow(_:)(90);
  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 60;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v36 = v0[2];
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000014;
  v7._object = 0x8000000100352160;
  String.append(_:)(v7);
  v37 = v0[10];
  type metadata accessor for SecAccessControl(0);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 0x6F6C4279656B202CLL;
  v8._object = 0xEB00000000203A62;
  String.append(_:)(v8);
  v9 = v0[8];
  v10 = v0[9];
  v11 = Data.hexString()();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x203A6661656C202CLL;
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  v13 = v0[3];
  v14 = v1[4];
  sub_1000094F4(v1[3], v14);
  v15 = Data.base64EncodedString(options:)(0);
  sub_100009548(v13, v14);
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x8000000100352180;
  String.append(_:)(v16);
  v17 = v1[5];
  v18 = *(v17 + 16);
  if (v18)
  {

    sub_10004E2DC(0, v18, 0);
    v19 = (v17 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      sub_1000094F4(v20, *v19);
      v22 = Data.base64EncodedString(options:)(0);
      v23._countAndFlagsBits = 44;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      sub_100009548(v20, v21);
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        sub_10004E2DC((v24 > 1), v25 + 1, 1);
      }

      v19 += 2;
      _swiftEmptyArrayStorage[2] = v25 + 1;
      *&_swiftEmptyArrayStorage[2 * v25 + 4] = v22;
      --v18;
    }

    while (v18);
  }

  v26 = Array.description.getter();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._object = 0x80000001003521A0;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31 = *(v1 + 12);
  v32 = v1[7];
  v33._countAndFlagsBits = sub_10017233C();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 32044;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  return 0;
}

uint64_t sub_100152274()
{
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v1 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v1 + 104) > 0 || *(v1 + 112) == 1)
  {
    [*(v1 + 88) wait];
  }

  v2 = *(v1 + 96);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v1 + 96) = v4;
  [*(v1 + 88) unlock];
  if (*(v1 + 48))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v1 + 32);
  }

  if (*(v1 + 48))
  {
    v6 = -INFINITY;
  }

  else
  {
    v6 = *(v1 + 40);
  }

  [*(v1 + 88) lock];
  v7 = *(v1 + 96);
  v3 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v3)
  {
    goto LABEL_51;
  }

  *(v1 + 96) = v8;
  if (!v8)
  {
    [*(v1 + 88) broadcast];
  }

  [*(v1 + 88) unlock];
  v9 = *(v0 + 48);
  if (v5 < v9 || v9 >= v5 && v6 < *(v0 + 56))
  {
    return 1;
  }

  [*(v1 + 88) lock];
  if (*(v1 + 104) > 0 || *(v1 + 112) == 1)
  {
    do
    {
      do
      {
        [*(v1 + 88) wait];
      }

      while (*(v1 + 104) > 0);
    }

    while ((*(v1 + 112) & 1) != 0);
  }

  v11 = *(v1 + 96);
  v3 = __OFADD__(v11, 1);
  v12 = v11 + 1;
  if (v3)
  {
    goto LABEL_52;
  }

  *(v1 + 96) = v12;
  [*(v1 + 88) unlock];
  if (*(v1 + 56))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v1 + 52);
  }

  [*(v1 + 88) lock];
  v14 = *(v1 + 96);
  v3 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  if (v3)
  {
    goto LABEL_53;
  }

  *(v1 + 96) = v15;
  if (!v15)
  {
    [*(v1 + 88) broadcast];
  }

  [*(v1 + 88) unlock];
  TMGetKernelMonotonicClock();
  if (v13 < v5 || v5 >= v13 && v16 < v6)
  {
    v35 = v0;
    if (qword_10039D6B0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_1003A4A50);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "corrupt timestamp stored in device", v20, 2u);
    }

    result = [*(v1 + 88) lock];
    v21 = *(v1 + 104);
    v3 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 104) = v22;
      while (*(v1 + 96) > 0 || *(v1 + 112) == 1)
      {
        result = [*(v1 + 88) wait];
      }

      v23 = *(v1 + 104);
      v3 = __OFSUB__(v23, 1);
      v24 = v23 - 1;
      if (!v3)
      {
        *(v1 + 104) = v24;
        *(v1 + 112) = 1;
        [*(v1 + 88) unlock];
        *(v1 + 32) = 0;
        *(v1 + 40) = 0;
        *(v1 + 48) = 1;
        sub_100173040();
        [*(v1 + 88) lock];
        *(v1 + 112) = 0;
        [*(v1 + 88) broadcast];
        [*(v1 + 88) unlock];
        goto LABEL_46;
      }
    }

    __break(1u);
    return result;
  }

LABEL_46:
  if (qword_10039D6B0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000403C(v25, qword_1003A4A50);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = sub_10017233C();
    v31 = sub_100008F6C(v29, v30, &v36);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v32 = sub_10017233C();
    v34 = sub_100008F6C(v32, v33, &v36);

    *(v28 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "certificate timestamp(%s) is less than last MFD timestamp(%s)", v28, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

void sub_10015278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_10039D6B0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A4A50);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v104 = a8;
    v17 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v102 = a7;
    v20 = sub_100008F6C(v18, v19, &v117);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002C1660;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 32) = a1;
    *(v21 + 40) = a2;

    v22 = showFunction(signature:_:)(0xD00000000000004BLL, 0x8000000100352310, v21);
    v24 = v23;

    v25 = sub_100008F6C(v22, v24, &v117);

    *(v17 + 14) = v25;
    a7 = v102;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s.%s", v17, 0x16u);
    swift_arrayDestroy();

    a8 = v104;
  }

  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v117 = 0;
  v26 = [qword_1003A6EA0 canEvaluatePolicy:2 error:&v117];
  v27 = v117;
  v121 = v117;
  if (!v26)
  {
    v112 = v117;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = a7;
      v37 = swift_slowAlloc();
      v117 = v37;
      *v35 = 136315138;
      *&v120 = v27;
      sub_100004074(&qword_1003A10C0, &qword_1002C9180);
      v38 = Optional.debugDescription.getter();
      v40 = sub_100008F6C(v38, v39, &v117);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Owner authentication error: %s", v35, 0xCu);
      sub_10000959C(v37);
      a7 = v36;
    }

    sub_100020C74(10003, 0, 0, 0);
    swift_willThrow();
    sub_100009548(a7, a8);

    v41 = type metadata accessor for DispatchTime();
    (*(*(v41 - 8) + 8))(a10, v41);
    v42 = v112;
    goto LABEL_34;
  }

  v120 = xmmword_1002C3C70;
  v28 = type metadata accessor for NFSESessionBlock();
  v29 = v27;

  v30 = a5;
  v31 = sub_100100494(a10, v28, &v120, a3, a4, v30, &v121);
  if (v108)
  {
    v32 = type metadata accessor for DispatchTime();
    (*(*(v32 - 8) + 8))(a10, v32);

    sub_100009548(a7, a8);

LABEL_33:
    sub_10001A074(v120, *(&v120 + 1));
    v42 = v121;
LABEL_34:

    return;
  }

  if ((v31 & 1) == 0)
  {

    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v75._countAndFlagsBits = 0xD000000000000031;
    v75._object = 0x80000001003522D0;
    String.append(_:)(v75);
    v76._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v76);

    v77._countAndFlagsBits = 46;
    v77._object = 0xE100000000000000;
    String.append(_:)(v77);
    v78._countAndFlagsBits = showFunction(signature:_:)(0xD00000000000004BLL, 0x8000000100352310, _swiftEmptyArrayStorage);
    String.append(_:)(v78);

    sub_100020C74(10001, v117, v118, 0);
    swift_willThrow();
    sub_100009548(a7, a8);

    v79 = type metadata accessor for DispatchTime();
    (*(*(v79 - 8) + 8))(a10, v79);
    goto LABEL_33;
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v101 = v30;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v117 = v109;
    *v45 = 136315138;
    v46 = _typeName(_:qualified:)();
    v48 = a7;
    v49 = a8;
    v50 = sub_100008F6C(v46, v47, &v117);

    *(v45 + 4) = v50;
    a8 = v49;
    a7 = v48;
    _os_log_impl(&_mh_execute_header, v43, v44, "SESKeyAttest from %s.init(...)", v45, 0xCu);
    sub_10000959C(v109);
  }

  v51 = *(&v120 + 1);
  if (*(&v120 + 1) >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v110 = v120;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v53 = String._bridgeToObjectiveC()();
  v103 = a7;
  v105 = a8;
  v54 = Data._bridgeToObjectiveC()().super.isa;
  v113 = v51;
  v55 = Array._bridgeToObjectiveC()().super.isa;
  v56 = Int._bridgeToObjectiveC()().super.super.isa;
  v57 = v121;
  v117 = v121;
  v58 = SESKeyAttestWithSEBAA();

  v59 = v117;
  v121 = v117;
  v60 = v117;

  if (v58)
  {
    v114 = v60;
    v107 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    sub_1000094F4(v110, v113);

    if (qword_10039D708 != -1)
    {
      swift_once();
    }

    v63 = static GlobalState.shared;
    [*(static GlobalState.shared + 88) lock];
    while (*(v63 + 104) > 0 || *(v63 + 112) == 1)
    {
      [*(v63 + 88) wait];
    }

    v64 = *(v63 + 96);
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      __break(1u);
    }

    else
    {
      *(v63 + 96) = v66;
      [*(v63 + 88) unlock];
      if (*(v63 + 56))
      {
        v67 = 0;
      }

      else
      {
        v67 = *(v63 + 52);
      }

      [*(v63 + 88) lock];
      v68 = *(v63 + 96);
      v65 = __OFSUB__(v68, 1);
      v69 = v68 - 1;
      if (!v65)
      {
        *(v63 + 96) = v69;
        if (!v69)
        {
          [*(v63 + 88) broadcast];
        }

        [*(v63 + 88) unlock];
        TMGetKernelMonotonicClock();
        v71 = v70;
        v72 = swift_allocObject();
        *(v72 + 88) = 0;
        *(v72 + 72) = v113;
        *(v72 + 80) = v101;
        *(v72 + 64) = v110;
        *(v72 + 24) = v107;
        *(v72 + 32) = v62;
        *(v72 + 40) = _swiftEmptyArrayStorage;
        *(v72 + 48) = v67;
        *(v72 + 56) = v71;
        swift_beginAccess();
        v73 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
        swift_endAccess();
        sub_100009548(v103, v105);
        v74 = type metadata accessor for DispatchTime();
        (*(*(v74 - 8) + 8))(a10, v74);
        *(v72 + 16) = v73;
        sub_10001A074(v120, *(&v120 + 1));

        return;
      }
    }

    __break(1u);
  }

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v80, v81))
  {
    goto LABEL_38;
  }

  v82 = v60;
  v83 = swift_slowAlloc();
  v84 = swift_slowAlloc();
  v117 = v84;
  *v83 = 136315138;
  v119 = v59;
  sub_100004074(&qword_1003A10C0, &qword_1002C9180);
  v85 = Optional.debugDescription.getter();
  v87 = sub_100008F6C(v85, v86, &v117);

  *(v83 + 4) = v87;
  _os_log_impl(&_mh_execute_header, v80, v81, "Get certificate from SESKeyAttest failed: %s", v83, 0xCu);
  sub_10000959C(v84);

  v60 = v82;

  v88 = a10;
  v89 = v103;
  if (*(&v120 + 1) >> 60 == 15)
  {
    __break(1u);
LABEL_38:

    v88 = a10;
    v89 = v103;
  }

  v90 = Data._bridgeToObjectiveC()().super.isa;
  v117 = 0;
  SESKeyDelete();

  v91 = v117;
  if (v117)
  {
    v92 = v117;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v115 = v60;
      v95 = swift_slowAlloc();
      v96 = v88;
      v97 = swift_slowAlloc();
      *v95 = 138412290;
      *(v95 + 4) = v92;
      *v97 = v91;
      v98 = v89;
      v99 = v92;
      _os_log_impl(&_mh_execute_header, v93, v94, "Failed to delete SES key (init): %@", v95, 0xCu);
      sub_10000BD44(v97, &unk_10039E220, &qword_1002C3D60);
      v88 = v96;

      v60 = v115;

      v92 = v93;
      v93 = v99;
      v89 = v98;
    }
  }

  sub_100020C74(10002, 0, 0, 0);
  swift_willThrow();
  sub_100009548(v89, v105);

  v100 = type metadata accessor for DispatchTime();
  (*(*(v100 - 8) + 8))(v88, v100);

  sub_10001A074(v120, *(&v120 + 1));
}

uint64_t sub_100153494(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, id *a6)
{
  if (qword_10039D6B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A4A50);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v62 = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, &v62);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "SESKeyCreate from %s.init(...)", v10, 0xCu);
    sub_10000959C(v11);
  }

  v15 = String._bridgeToObjectiveC()();
  v62 = *a6;
  v16 = SESKeyCreateWithSession();

  v17 = v62;
  v18 = *a6;
  *a6 = v62;
  v19 = v17;

  if (v16)
  {
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v23 = *a2;
  v24 = a2[1];
  *a2 = v20;
  a2[1] = v22;
  result = sub_10001A074(v23, v24);
  if (a2[1] >> 60 == 15)
  {
    v26 = *a6;
    if (*a6)
    {
      v27 = v26;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v26;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Error from SESKeyCreate: %@", v30, 0xCu);
        sub_10000BD44(v31, &unk_10039E220, &qword_1002C3D60);

        v27 = v28;
        v28 = v32;
      }
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Attempt to restore SE-SEP pairing and retry SESKeyCreate", v35, 2u);
    }

    type metadata accessor for StatusInspector();
    swift_initStackObject();
    v36 = sub_10009100C(a1);
    v37 = a1;
    if ((sub_100091684() & 1) == 0 && *(v36 + 34) == 1)
    {
      sub_100020C74(10018, 0, 0, 0);
LABEL_27:
      swift_willThrow();
    }

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v62 = v41;
      *v40 = 136315138;
      v42 = _typeName(_:qualified:)();
      v44 = sub_100008F6C(v42, v43, &v62);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "SESKeyCreate from %s.init(...)", v40, 0xCu);
      sub_10000959C(v41);
    }

    v45 = String._bridgeToObjectiveC()();
    v62 = *a6;
    v46 = SESKeyCreateWithSession();

    v47 = v62;
    v48 = *a6;
    *a6 = v62;
    v49 = v47;

    if (v46)
    {
      v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0xF000000000000000;
    }

    v53 = *a2;
    v54 = a2[1];
    *a2 = v50;
    a2[1] = v52;
    sub_10001A074(v53, v54);
    if (a2[1] >> 60 == 15)
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "SESKeyCreate returned nil on second try", v57, 2u);
      }

      v58 = *a6;
      v59 = *a6;
      sub_100020C74(10001, 0, 0, v58);

      goto LABEL_27;
    }
  }

  return result;
}

uint64_t sub_100153AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v9 = *v3;
  if (qword_10039D6B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A4A50);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *&v30 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v30);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = showFunction(signature:_:)(0xD000000000000014, 0x80000001003522B0, _swiftEmptyArrayStorage);
    v19 = sub_100008F6C(v17, v18, &v30);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
    v5 = v4;
  }

  else
  {
  }

  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v20 = *(v6 + 80);
  v21 = qword_1003A6EA0;
  sub_1001849B0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v30 = 0;
  v23 = [v21 evaluateAccessControl:v20 operation:3 options:isa error:&v30];

  if (!v23)
  {
    v28 = v30;
    a2 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    sub_100020C74(10003, 0x617461446E676973, 0xE800000000000000, a2);

    swift_willThrow();

    return a2;
  }

  v24 = v30;

  v30 = xmmword_1002C3C70;

  sub_1000094F4(a1, a2);
  v25 = sub_100100A5C(a3, v6, a1, a2, &v30);
  sub_100009548(a1, a2);

  if (v5)
  {
LABEL_15:
    sub_10001A074(v30, *(&v30 + 1));
    return a2;
  }

  if ((v25 & 1) == 0)
  {
    sub_100020C74(10999, 0xD00000000000002BLL, 0x8000000100352280, 0);
    swift_willThrow();
    goto LABEL_15;
  }

  v27 = *(&v30 + 1);
  if (*(&v30 + 1) >> 60 != 15)
  {
    a2 = v30;
    sub_1000094F4(v30, *(&v30 + 1));
    sub_10001A074(a2, v27);
    return a2;
  }

  __break(1u);
  return result;
}

void sub_100153F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v34 = 0;
  v7 = [objc_opt_self() embeddedSecureElementWithError:&v34];
  if (v7)
  {
    v8 = v7;
    v9 = v34;
    v10 = [v8 serialNumber];

    if (v10)
    {
      v11 = *(a2 + 64);
      v12 = *(a2 + 72);
      v13.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v15 = qword_10039D728;
      v16 = kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = qword_1003A6EA0;
      v18 = [v17 externalizedContext];
      if (v18)
      {
        v19 = v18;

        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100009548(v20, v22);
        v34 = 0;
        v24 = SESKeySignDataWithSession();

        v25 = v34;
        v26 = v25;
        if (v24)
        {
          v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = *a5;
          v31 = a5[1];
          *a5 = v27;
          a5[1] = v29;
          sub_10001A074(v30, v31);
        }

        else
        {
          v33 = v25;
          sub_100020C74(10004, 0x695379654B534553, 0xEE00617461446E67, v26);

          swift_willThrow();
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_100020C74(10004, 0xD000000000000016, 0x8000000100352240, 0);
      swift_willThrow();
    }
  }

  else
  {
    v32 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100154200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v9 = *v3;
  if (qword_10039D6B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A4A50);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *&v30 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v30);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = showFunction(signature:_:)(0xD000000000000016, 0x8000000100352220, _swiftEmptyArrayStorage);
    v19 = sub_100008F6C(v17, v18, &v30);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
    v5 = v4;
  }

  else
  {
  }

  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v20 = *(v6 + 80);
  v21 = qword_1003A6EA0;
  sub_1001849B0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v30 = 0;
  v23 = [v21 evaluateAccessControl:v20 operation:3 options:isa error:&v30];

  if (!v23)
  {
    v28 = v30;
    a2 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    sub_100020C74(10003, 0x656769446E676973, 0xEA00000000007473, a2);

    swift_willThrow();

    return a2;
  }

  v24 = v30;

  v30 = xmmword_1002C3C70;

  sub_1000094F4(a1, a2);
  v25 = sub_100100A9C(a3, v6, a1, a2, &v30);
  sub_100009548(a1, a2);

  if (v5)
  {
LABEL_15:
    sub_10001A074(v30, *(&v30 + 1));
    return a2;
  }

  if ((v25 & 1) == 0)
  {
    sub_100020C74(10999, 0xD000000000000038, 0x80000001003521E0, 0);
    swift_willThrow();
    goto LABEL_15;
  }

  v27 = *(&v30 + 1);
  if (*(&v30 + 1) >> 60 != 15)
  {
    a2 = v30;
    sub_1000094F4(v30, *(&v30 + 1));
    sub_10001A074(a2, v27);
    return a2;
  }

  __break(1u);
  return result;
}

void sub_100154648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v34 = 0;
  v7 = [objc_opt_self() embeddedSecureElementWithError:&v34];
  if (v7)
  {
    v8 = v7;
    v9 = v34;
    v10 = [v8 serialNumber];

    if (v10)
    {
      v11 = *(a2 + 64);
      v12 = *(a2 + 72);
      v13.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v15 = qword_10039D728;
      v16 = kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = qword_1003A6EA0;
      v18 = [v17 externalizedContext];
      if (v18)
      {
        v19 = v18;

        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100009548(v20, v22);
        v34 = 0;
        v24 = SESKeySignPrecomputedDigestWithSession();

        v25 = v34;
        if (v24)
        {
          v26 = v34;
          v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = *a5;
          v31 = a5[1];
          *a5 = v27;
          a5[1] = v29;
          sub_10001A074(v30, v31);
        }

        else
        {
          v33 = v34;
          sub_100020C74(10004, 0xD00000000000001BLL, 0x8000000100352260, v25);

          swift_willThrow();
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_100020C74(10004, 0xD000000000000016, 0x8000000100352240, 0);
      swift_willThrow();
    }
  }

  else
  {
    v32 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100154914()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  isa = Data._bridgeToObjectiveC()().super.isa;
  SESKeyDelete();

  *(v1 + 88) = 1;
}

uint64_t sub_100154ADC()
{
  v1 = 0x6F43737365636361;
  v2 = 0x6369666974726563;
  if (*v0 != 2)
  {
    v2 = 0x73656D695479656BLL;
  }

  if (*v0)
  {
    v1 = 0x626F6C4279656BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100154B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100155200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100154B9C(uint64_t a1)
{
  v2 = sub_100155AE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100154BD8(uint64_t a1)
{
  v2 = sub_100155AE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100154C14(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A4B78, &unk_1002C9170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100155AE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 80);
  result = SecAccessControlCopyData();
  if (result)
  {
    v13 = result;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v20 = v14;
    v21 = v16;
    v22 = 0;
    sub_1001002CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      v17 = *(v3 + 72);
      v20 = *(v3 + 64);
      v21 = v17;
      v22 = 1;
      sub_1000094F4(v20, v17);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100009548(v20, v21);
      v18 = *(v3 + 32);
      v20 = *(v3 + 24);
      v21 = v18;
      v22 = 2;
      sub_1000094F4(v20, v18);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100009548(v20, v21);
      v19 = *(v3 + 56);
      LODWORD(v20) = *(v3 + 48);
      v21 = v19;
      v22 = 3;
      sub_100155B90();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v6 + 8))(v9, v5);
    return sub_100009548(v14, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100154EAC()
{
  sub_100009548(v0[3], v0[4]);
  v1 = v0[5];

  sub_100009548(v0[8], v0[9]);
  v2 = v0[10];
}

uint64_t sub_100154EEC()
{
  v1 = v0[3];
  v2 = v0[4];

  sub_100009548(v1, v2);
  v3 = v0[5];

  sub_100009548(v0[8], v0[9]);
  v4 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_100154F88()
{
  v1 = *(*v0 + 24);
  sub_1000094F4(v1, *(*v0 + 32));
  return v1;
}

void sub_100154FFC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_100155374(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_10015504C(void *a1, uint64_t a2)
{
  a1[1] = sub_100155CFC(&qword_1003A4B48, a2, type metadata accessor for SESSigningIdentity);
  a1[2] = sub_100155CFC(&qword_1003A4B50, v3, type metadata accessor for SESSigningIdentity);
  result = sub_100155CFC(&qword_1003A4B58, v4, type metadata accessor for SESSigningIdentity);
  a1[3] = result;
  return result;
}

BOOL sub_1001550F8(uint64_t a1, uint64_t a2)
{
  if ((sub_10017688C(*(a1 + 64), *(a1 + 72), *(a2 + 64), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1000094F4(v4, v5);
  sub_1000094F4(v6, v7);
  v8 = sub_10017688C(v4, v5, v6, v7);
  sub_100009548(v6, v7);
  sub_100009548(v4, v5);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);

  v11 = sub_100151598(v9, v10);

  return (v11 & 1) != 0 && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
}

uint64_t sub_100155200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43737365636361 && a2 == 0xED00006C6F72746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x626F6C4279656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369666974726563 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656D695479656BLL && a2 == 0xEC000000706D6174)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_100155374(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DecodingError();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  v6 = __chkstk_darwin(v4);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v43 - v8;
  v9 = sub_100004074(&qword_1003A4B60, &unk_1002C9160);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100155AE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v48 = v10;
    LOBYTE(v57) = 0;
    sub_100100278();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v53;
    v59 = 0;
    v47 = v52;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v22 = SecAccessControlCreateFromData();

    if (v22)
    {
      v46 = v22;
      LOBYTE(v57) = 3;
      sub_100155B3C();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v26 = v48;
      if (v54)
      {
        if (qword_10039D708 != -1)
        {
          swift_once();
        }

        v27 = static GlobalState.shared;
        [*(static GlobalState.shared + 88) lock];
        while (*(v27 + 104) > 0 || *(v27 + 112) == 1)
        {
          [*(v27 + 88) wait];
        }

        v28 = *(v27 + 96);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          __break(1u);
        }

        else
        {
          *(v27 + 96) = v30;
          [*(v27 + 88) unlock];
          v31 = *(v27 + 52);
          if (*(v27 + 56))
          {
            v31 = 0;
          }

          v45 = v31;
          [*(v27 + 88) lock];
          v32 = *(v27 + 96);
          v29 = __OFSUB__(v32, 1);
          v33 = v32 - 1;
          if (!v29)
          {
            *(v27 + 96) = v33;
            if (!v33)
            {
              [*(v27 + 88) broadcast];
            }

            [*(v27 + 88) unlock];
            TMGetKernelMonotonicClock();
            v35 = v34;
            v26 = v48;
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      v35 = v53;
      v45 = v52;
LABEL_25:
      LOBYTE(v52) = 1;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v44 = v57;
      v48 = v58;
      LOBYTE(v52) = 2;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v36 = v20;
      v37 = v26;
      v38 = v55;
      v39 = v56;
      type metadata accessor for SESSigningIdentity();
      v40 = swift_allocObject();
      *(v40 + 88) = 0;
      v41 = v46;
      *(v40 + 64) = v44;
      *(v40 + 72) = v48;
      *(v40 + 80) = v41;
      *(v40 + 24) = v38;
      *(v40 + 32) = v39;
      *(v40 + 40) = _swiftEmptyArrayStorage;
      *(v40 + 48) = v45;
      *(v40 + 56) = v35;
      swift_beginAccess();
      v42 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
      swift_endAccess();
      sub_100009548(v47, v36);
      (*(v37 + 8))(v13, v9);
      *(v40 + 16) = v42;
      sub_10000959C(a1);
      return;
    }

    v23 = v59;
    if (!v59)
    {
      __break(1u);
      return;
    }

    type metadata accessor for CFError(0);
    sub_100155CFC(&qword_1003A4758, 255, type metadata accessor for CFError);
    v24 = swift_allocError();
    *v25 = v23;
    v2 = sub_100020C74(10005, 0x6320737365636361, 0xEE006C6F72746E6FLL, v24);

    swift_willThrow();
    sub_100009548(v47, v20);
    (*(v48 + 8))(v13, v9);
  }

  v15 = v51;
  v52 = v2;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  if (swift_dynamicCast())
  {

    v17 = v49;
    v16 = v50;
    (*(v50 + 32))(v49, v15, v4);
    v18 = swift_allocError();
    (*(v16 + 16))(v19, v17, v4);
    sub_100020C74(10005, 0xD000000000000010, 0x80000001003521C0, v18);

    swift_willThrow();
    (*(v16 + 8))(v17, v4);
  }

  sub_10000959C(a1);
}

unint64_t sub_100155AE8()
{
  result = qword_1003A4B68;
  if (!qword_1003A4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B68);
  }

  return result;
}

unint64_t sub_100155B3C()
{
  result = qword_1003A4B70;
  if (!qword_1003A4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B70);
  }

  return result;
}

unint64_t sub_100155B90()
{
  result = qword_1003A4B80;
  if (!qword_1003A4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B80);
  }

  return result;
}

unint64_t sub_100155BF8()
{
  result = qword_1003A4B90;
  if (!qword_1003A4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B90);
  }

  return result;
}

unint64_t sub_100155C50()
{
  result = qword_1003A4B98;
  if (!qword_1003A4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4B98);
  }

  return result;
}

unint64_t sub_100155CA8()
{
  result = qword_1003A4BA0;
  if (!qword_1003A4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4BA0);
  }

  return result;
}

uint64_t sub_100155CFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100155D44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v22 = a4;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v21[-v16];
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v11 + 8);
  v18(v15, v10);
  v19 = (*(a6 + 32))(a1, a2, a3, v22, v17, v23, a6);
  v18(v17, v10);
  return v19;
}

uint64_t sub_100155ECC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v22 = a4;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v21[-v16];
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v11 + 8);
  v18(v15, v10);
  v19 = (*(a6 + 40))(a1, a2, a3, v22, v17, v23, a6);
  v18(v17, v10);
  return v19;
}

uint64_t sub_100156088(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_15:
      type metadata accessor for CFString(0);
      v12 = Array.description.getter();

      return v12;
    }

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        result = CFCopyDescription(v6);
        if (!result)
        {
          goto LABEL_20;
        }

        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v7 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v4;
        if (v5 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v8 = (v1 + 32);
      v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (v9)
      {
        v10 = *v8;
        result = CFCopyDescription(v10);
        if (!result)
        {
          goto LABEL_20;
        }

        v1 = result;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v9;
        ++v8;
        if (!--i)
        {
          goto LABEL_15;
        }
      }
    }

    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_10015623C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_15:
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_100064238();
    v19 = BidirectionalCollection<>.joined(separator:)();

    return v19;
  }

  result = sub_10004E2DC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = SecCertificateRef.pemRepresentation.getter();
        v7 = v6;
        swift_unknownObjectRelease();
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_10004E2DC((v8 > 1), v9 + 1, 1);
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[2 * v9];
        v10[4] = v5;
        v10[5] = v7;
      }

      while (v2 != v4);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *v11;
        v13 = SecCertificateRef.pemRepresentation.getter();
        v15 = v14;

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_10004E2DC((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = v13;
        v18[5] = v15;
        ++v11;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100156440()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4C50);
  sub_10000403C(v0, qword_1003A4C50);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_10015649C()
{
  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C1680;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 96) = result;
  *(v0 + 104) = v6;
  qword_1003A6E68 = v0;
  return result;
}

void sub_100156554()
{
  v0 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, 0);
  if (v0)
  {
    v1 = v0;
    sub_100184270(&off_10037EF50);
    sub_10000BD44(&unk_10037EF70, &qword_1003A4B88, &qword_1002C9188);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();

    qword_1003A6E70 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100156620()
{
  v1 = v0;
  v2 = *v0;
  _StringGuts.grow(_:)(89);
  v3._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v34 = v0[2];
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000014;
  v6._object = 0x8000000100352160;
  String.append(_:)(v6);
  v35 = *(v0 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_accessControl);
  type metadata accessor for SecAccessControl(0);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x73614879656B202CLL;
  v7._object = 0xEB00000000203A68;
  String.append(_:)(v7);
  v8 = *(v0 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_key);
  type metadata accessor for SecKey(0);
  sub_100159E44(&qword_1003A4D98, type metadata accessor for SecKey);
  _CFObject.hashValue.getter();
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x203A6661656C202CLL;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  v11 = v1[3];
  v12 = v1[4];
  sub_1000094F4(v11, v12);
  v13 = Data.base64EncodedString(options:)(0);
  sub_100009548(v11, v12);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000011;
  v14._object = 0x8000000100352180;
  String.append(_:)(v14);
  v15 = v1[5];
  v16 = *(v15 + 16);
  if (v16)
  {

    sub_10004E2DC(0, v16, 0);
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_1000094F4(v18, *v17);
      v20 = Data.base64EncodedString(options:)(0);
      v21._countAndFlagsBits = 44;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      sub_100009548(v18, v19);
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_10004E2DC((v22 > 1), v23 + 1, 1);
      }

      v17 += 2;
      _swiftEmptyArrayStorage[2] = v23 + 1;
      *&_swiftEmptyArrayStorage[2 * v23 + 4] = v20;
      --v16;
    }

    while (v16);
  }

  v24 = Array.description.getter();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._object = 0x80000001003521A0;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29 = *(v1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp);
  v30 = *(v1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp + 8);
  v31._countAndFlagsBits = sub_10017233C();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 32044;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  return 0;
}

NSObject *sub_100156A0C(uint64_t a1, int a2, void **a3, NSObject *a4, uint64_t a5, unint64_t a6, uint64_t a7, double a8)
{
  v158 = a3;
  v153 = a7;
  v163 = a5;
  v164 = a6;
  v150 = a2;
  v12 = type metadata accessor for UUID();
  v160 = *(v12 - 8);
  v161 = v12;
  v13 = *(v160 + 64);
  __chkstk_darwin(v12);
  v152 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v156 = *(v15 - 1);
  v157 = v15;
  v16 = *(v156 + 8);
  v17 = __chkstk_darwin(v15);
  v154 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v155 = &v139 - v19;
  if (qword_10039D6C8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_10000403C(v20, qword_1003A4C50);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v151 = v8;
  v162 = a4;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v166[0] = swift_slowAlloc();
    *v25 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = sub_100008F6C(v26, v27, v166);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = showFunction(signature:_:)(0xD00000000000003ALL, 0x8000000100352450, _swiftEmptyArrayStorage);
    v31 = sub_100008F6C(v29, v30, v166);

    *(v25 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s.%s", v25, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v166[0] = 0;
  v32 = [qword_1003A6EA0 canEvaluatePolicy:2 error:v166];
  v33 = v166[0];
  v34 = v166[0];
  v35 = v34;
  if (v32)
  {
    v149 = v34;
    v36 = DeviceIdentityUCRTAttestationSupported();
    if ((v36 & 1) == 0)
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "UCRT not supported, switching to SCRT", v39, 2u);
      }
    }

    v144 = v21;
    v40 = v153 / 60;
    sub_100004074(&qword_10039E4C0, &unk_1002C3780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C9390;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v42;
    v153 = a1;
    v43 = UUID.uuidString.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v43;
    *(inited + 56) = v44;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v45;
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = 0xD000000000000017;
    *(inited + 104) = 0x800000010034A1A0;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v46;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 0;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v47;
    *(inited + 216) = &type metadata for Double;
    *(inited + 192) = 0x401C000000000000;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v48;
    *(inited + 264) = &type metadata for Int;
    *(inited + 240) = v40;
    *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 280) = v49;
    *(inited + 312) = &type metadata for Bool;
    *(inited + 288) = v36 ^ 1;
    *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 328) = v50;
    *(inited + 360) = &type metadata for Data;
    v52 = v163;
    v51 = v164;
    *(inited + 336) = v163;
    *(inited + 344) = v51;
    *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 376) = v53;
    type metadata accessor for SecAccessControl(0);
    *(inited + 408) = v54;
    v55 = v158;
    *(inited + 384) = v158;
    *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 424) = v56;
    *(inited + 456) = &type metadata for Int;
    *(inited + 432) = 1;
    *(inited + 464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 472) = v57;
    *(inited + 504) = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    *(inited + 480) = v162;
    sub_1000094F4(v52, v51);
    v146 = v55;

    v58 = sub_100182BA0(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
    swift_arrayDestroy();
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    v143 = (v59 + 16);
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    v142 = (v60 + 16);
    v61 = swift_allocObject();
    v61[2] = 0;
    v141 = v61 + 2;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    v140 = (v62 + 16);
    v63 = dispatch_semaphore_create(0);
    v145 = v58;
    sub_100157C18(v58);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v65 = swift_allocObject();
    v65[2] = v63;
    v65[3] = v59;
    v65[4] = v60;
    v65[5] = v61;
    v66 = v159;
    v65[6] = v62;
    v65[7] = v66;
    v166[4] = sub_100159E14;
    v166[5] = v65;
    v166[0] = _NSConcreteStackBlock;
    v166[1] = 1107296256;
    v166[2] = sub_1001584EC;
    v166[3] = &unk_1003855E0;
    v67 = _Block_copy(v166);
    v68 = v63;
    v69 = v62;
    v70 = v68;
    v147 = v59;

    v148 = v60;

    v158 = v61;
    v71 = v70;

    DeviceIdentityIssueClientCertificateWithCompletion();
    _Block_release(v67);

    v72 = v154;
    static DispatchTime.now()();
    v73 = v155;
    + infix(_:_:)();
    v74 = v157;
    v75 = *(v156 + 1);
    v75(v72, v157);
    OS_dispatch_semaphore.wait(timeout:)();
    v75(v73, v74);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      v21 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v21, v76, "Time out requesting BAA certificate.", v77, 2u);
      }

      sub_100020C74(10002, 0, 0, 0);
      swift_willThrow();

      sub_100009548(v163, v164);
      (*(v160 + 8))(v153, v161);
LABEL_31:

LABEL_32:

      return v21;
    }

    v21 = v162;
    v86 = v143;
    swift_beginAccess();
    if (*v86)
    {
      swift_errorRetain();

      swift_willThrow();

      sub_100009548(v163, v164);
      (*(v160 + 8))(v153, v161);

      return v21;
    }

    v87 = v142;
    swift_beginAccess();
    v88 = *v87;
    v89 = v153;
    if (!v88 || (v90 = v141, swift_beginAccess(), (v91 = *v90) == 0) || (v92 = v140, swift_beginAccess(), (v93 = *v92) == 0))
    {
      v21 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v21, v107, "Unexpected nil value after receiving BAA certificate", v108, 2u);
      }

      sub_100020C74(10002, 0, 0, 0);
      swift_willThrow();

      sub_100009548(v163, v164);
      (*(v160 + 8))(v89, v161);
      goto LABEL_31;
    }

    v162 = v69;
    v94 = v93;
    v95 = v91;
    v96 = v94;
    v97 = v95;
    v157 = v88;
    v98 = SecCertificateCopyData(v97);
    v99 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    v102 = SecCertificateCopyData(v96);
    v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;

    v106 = v101 >> 62;
    v156 = v99;
    if ((v101 >> 62) > 1)
    {
      if (v106 != 2)
      {
        goto LABEL_46;
      }

      v110 = *(v99 + 16);
      v111 = *(v99 + 24);
    }

    else
    {
      if (!v106)
      {
        if ((v101 & 0xFF000000000000) == 0)
        {
          goto LABEL_46;
        }

LABEL_38:
        v112 = v105 >> 62;
        if ((v105 >> 62) > 1)
        {
          if (v112 != 2)
          {
            goto LABEL_46;
          }

          v113 = *(v103 + 16);
          v114 = *(v103 + 24);
        }

        else
        {
          if (!v112)
          {
            if ((v105 & 0xFF000000000000) == 0)
            {
LABEL_46:
              v21 = Logger.logObject.getter();
              v115 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v21, v115))
              {
                v116 = swift_slowAlloc();
                v159 = v101;
                *v116 = 0;
                _os_log_impl(&_mh_execute_header, v21, v115, "Unexpected empty data after copying BAA certificate data", v116, 2u);
                v71 = v70;
                v101 = v159;
LABEL_48:

                goto LABEL_49;
              }

              goto LABEL_49;
            }

LABEL_51:
            type metadata accessor for SecCertificate(0);
            v117 = static SecCertificateRef.parse(derRepresentation:)();
            if (v117)
            {
              v154 = v117;
              v155 = v70;
              v118 = SecCertificateRef.publicKey.getter();
              if (v118)
              {
                v119 = v118;
                v120 = SecKeyRef.externalRepresentation.getter();
                v122 = v121;

                if (v122 >> 60 != 15)
                {
                  v127 = Data.sha256Digest.getter();
                  v142 = v128;
                  v143 = v127;
                  v145 = v122;
                  v141 = *(v160 + 16);
                  (v141)(v152, v153, v161);
                  sub_100004074(&qword_10039FE58, &qword_1002C96F0);
                  v129 = swift_allocObject();
                  v144 = v120;
                  v130 = v129;
                  *(v129 + 16) = xmmword_1002C1660;
                  *(v129 + 32) = v103;
                  *(v129 + 40) = v105;
                  v131 = *(v159 + 48);
                  v132 = *(v159 + 52);
                  v21 = swift_allocObject();
                  *(&v21->isa + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_accessControl) = v146;
                  (v141)(v21 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_uuid, v152, v161);
                  *(&v21->isa + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_key) = v157;
                  v21[3].isa = v156;
                  v21[4].isa = v101;
                  v21[5].isa = v130;
                  v133 = (v21 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp);
                  *v133 = v150;
                  v133[1] = a8;
                  v134 = (&v21->isa + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest);
                  v135 = v142;
                  *v134 = v143;
                  v134[1] = v135;
                  swift_beginAccess();
                  sub_1000094F4(v103, v105);
                  v136 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
                  swift_endAccess();

                  sub_10001A074(v144, v145);
                  sub_100009548(v103, v105);

                  sub_100009548(v163, v164);
                  v137 = v161;
                  v138 = *(v160 + 8);
                  v138(v153, v161);
                  v138(v152, v137);

                  v21[2].isa = v136;
                  return v21;
                }
              }

              v21 = Logger.logObject.getter();
              v123 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v21, v123))
              {
                v124 = swift_slowAlloc();
                *v124 = 0;
                _os_log_impl(&_mh_execute_header, v21, v123, "Could not get public key from SecCertificate", v124, 2u);
              }

              sub_100020C74(10001, 0, 0, 0);
              swift_willThrow();

              sub_100009548(v156, v101);
              sub_100009548(v103, v105);

              goto LABEL_50;
            }

            v21 = Logger.logObject.getter();
            v125 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v21, v125))
            {
              v126 = swift_slowAlloc();
              v155 = v70;
              *v126 = 0;
              _os_log_impl(&_mh_execute_header, v21, v125, "Could not create SecCertificate from derRepresentation", v126, 2u);
              v71 = v155;
              goto LABEL_48;
            }

LABEL_49:

            sub_100020C74(10002, 0, 0, 0);
            swift_willThrow();

            sub_100009548(v156, v101);
            sub_100009548(v103, v105);

LABEL_50:
            sub_100009548(v163, v164);
            (*(v160 + 8))(v153, v161);

            goto LABEL_32;
          }

          v113 = v103;
          v114 = v103 >> 32;
        }

        if (v113 == v114)
        {
          goto LABEL_46;
        }

        goto LABEL_51;
      }

      v110 = v99;
      v111 = v99 >> 32;
    }

    if (v110 == v111)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = v35;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v166[0] = v82;
    *v81 = 136315138;
    v165 = v33;
    sub_100004074(&qword_1003A10C0, &qword_1002C9180);
    v83 = Optional.debugDescription.getter();
    v21 = v84;
    v85 = sub_100008F6C(v83, v84, v166);

    *(v81 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v78, v79, "Owner authentication error: %s", v81, 0xCu);
    sub_10000959C(v82);

    v35 = v80;
  }

  sub_100020C74(10003, 0xD000000000000019, 0x8000000100352430, 0);
  swift_willThrow();

  sub_100009548(v163, v164);
  (*(v160 + 8))(a1, v161);

  return v21;
}

uint64_t sub_100157C18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004074(&qword_1003A4DA8, &unk_1002C94B0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000BDA4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100019D3C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100019D3C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100019D3C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100019D3C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100157EE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    if (qword_10039D6C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_1003A4C50);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v53[0] = v15;
      *v13 = 136315394;
      v16 = _typeName(_:qualified:)();
      v18 = sub_100008F6C(v16, v17, v53);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v19;
      *v14 = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s.init(...): Error getting DeviceIdentity certificate: %@", v13, 0x16u);
      sub_10000BD44(v14, &unk_10039E220, &qword_1002C3D60);

      sub_10000959C(v15);
    }

    v20 = sub_100020C74(10001, 0, 0, 0);
    swift_beginAccess();
    v21 = *(a5 + 16);
    *(a5 + 16) = v20;
    goto LABEL_27;
  }

  if (a1)
  {
    if (a2)
    {
      v23 = *(a2 + 16);
      if (v23 == 2)
      {
        swift_beginAccess();
        v27 = *(a6 + 16);
        *(a6 + 16) = a1;
        v28 = a1;

        sub_10000BDA4(a2 + 32, v53);
        type metadata accessor for SecCertificate(0);
        swift_dynamicCast();
        swift_beginAccess();
        v29 = *(a7 + 16);
        *(a7 + 16) = v51;

        sub_10000BDA4(a2 + 64, v53);
        swift_dynamicCast();
        swift_beginAccess();
        v30 = *(a8 + 16);
        *(a8 + 16) = v52;

        OS_dispatch_semaphore.signal()();
        return spr_releaseCFObject();
      }

      v43 = qword_10039D6C8;
      v38 = a1;
      if (v43 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000403C(v44, qword_1003A4C50);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = v23;

        _os_log_impl(&_mh_execute_header, v45, v46, "BAA returned incorrect number of certificate references. Expected: 2, received: %ld", v47, 0xCu);
      }

      else
      {
      }
    }

    else
    {
      v37 = qword_10039D6C8;
      v38 = a1;
      if (v37 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000403C(v39, qword_1003A4C50);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Failed to create certificate references", v42, 2u);
      }
    }

    v48 = sub_100020C74(10002, 0, 0, 0);

    swift_beginAccess();
    v49 = *(a5 + 16);
    *(a5 + 16) = v48;
LABEL_27:

    OS_dispatch_semaphore.signal()();
    return spr_releaseCFObject();
  }

  if (qword_10039D6C8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000403C(v31, qword_1003A4C50);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed to create key reference", v34, 2u);
  }

  v35 = sub_100020C74(10001, 0, 0, 0);
  swift_beginAccess();
  v36 = *(a5 + 16);
  *(a5 + 16) = v35;

  OS_dispatch_semaphore.signal()();
  return spr_releaseCFObject();
}

uint64_t sub_1001584EC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

uint64_t sub_100158674@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X5>, void *a5@<X6>, uint64_t *a6@<X8>)
{
  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  v9 = *(a1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_accessControl);
  v10 = qword_1003A6EA0;
  sub_1001849B0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = 0;
  v12 = [v10 evaluateAccessControl:v9 operation:3 options:isa error:&v25];

  if (!v12)
  {
    v19 = v25;
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v18 = sub_100020C74(10003, a4, a5, v20);

    swift_willThrow();
    goto LABEL_7;
  }

  v13 = v25;

  v14 = *(a1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_key);
  v15 = *a3;
  result = SecKeyRef.createSignature(algorithm:data:)();
  if (v6)
  {
    swift_errorRetain();
    v18 = sub_100020C74(10004, 0, 0, v6);

    swift_willThrow();
LABEL_7:

    *a2 = v18;
    return result;
  }

  *a6 = result;
  a6[1] = v17;
  return result;
}

void sub_1001588A0()
{
  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1670;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v5 = sub_100182BA0(inited);
  swift_setDeallocating();
  sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
  swift_arrayDestroy();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_100157C18(v5);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[4] = sub_100159D64;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001584EC;
  aBlock[3] = &unk_100385540;
  v8 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v8);

  swift_beginAccess();
  if (*(v6 + 16))
  {
    if (qword_10039D6C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A4C50);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v17 = *(v6 + 16);
      swift_errorRetain();
      sub_100004074(&qword_1003A4DA0, &qword_1002C94A8);
      v14 = String.init<A>(describing:)();
      v16 = sub_100008F6C(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to delete BAA key and certificate: %s", v12, 0xCu);
      sub_10000959C(v13);
    }
  }

  else
  {
  }
}

uint64_t sub_100158C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);
  *(a4 + 16) = a3;
  swift_errorRetain();
}

uint64_t sub_100158C6C()
{
  if (*v0)
  {
    result = 0x73656D695479656BLL;
  }

  else
  {
    result = 1684632949;
  }

  *v0;
  return result;
}

uint64_t sub_100158CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656D695479656BLL && a2 == 0xEC000000706D6174)
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

uint64_t sub_100158D88(uint64_t a1)
{
  v2 = sub_100159B6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100158DC4(uint64_t a1)
{
  v2 = sub_100159B6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_100158E00(uint64_t *a1)
{
  v62 = type metadata accessor for DecodingError();
  v60 = *(v62 - 8);
  v2 = *(v60 + 64);
  v3 = __chkstk_darwin(v62);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v54 - v5;
  v6 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v58 = &v54 - v8;
  v9 = type metadata accessor for UUID();
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = sub_100004074(&qword_1003A4DB0, &unk_1002C94C0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v63 = a1;
  sub_10000BE18(a1, v21);
  sub_100159B6C();
  v23 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v31 = v61;
    v32 = v62;
    v33 = v63;
    v66 = v23;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {

      v35 = v59;
      v34 = v60;
      (*(v60 + 32))(v59, v31, v32);
      v31 = swift_allocError();
      (*(v34 + 16))(v36, v35, v32);
      sub_100020C74(10005, 0xD000000000000010, 0x80000001003521C0, v31);

      swift_willThrow();
      (*(v34 + 8))(v35, v32);
    }

    sub_10000959C(v33);
    return v31;
  }

  v55 = v13;
  v56 = v15;
  v64 = v17;
  LOBYTE(v66) = 0;
  sub_100159E44(&qword_10039FB38, &type metadata accessor for UUID);
  v24 = v58;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v57;
  v26 = *(v57 + 48);
  v27 = v26(v24, 1, v9);
  v54 = v9;
  if (v27 == 1)
  {
    v28 = v56;
    UUID.init()();
    v29 = v26(v24, 1, v9);
    v30 = v28;
    if (v29 != 1)
    {
      sub_10000BD44(v58, &qword_1003A0178, &unk_1002C3BB0);
    }
  }

  else
  {
    v30 = v56;
    (*(v25 + 32))(v56, v24, v9);
  }

  v65 = 1;
  sub_100155B3C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if ((v68 & 1) == 0)
  {
    v45 = v16;
    v47 = v67;
    v42 = v66;
LABEL_27:
    (*(v57 + 16))(v55, v30, v54);
    v48 = v64;
    if (qword_10039D6D8 != -1)
    {
      swift_once();
    }

    v49 = qword_10039D6D0;
    v50 = qword_1003A6E70;
    if (v49 != -1)
    {
      swift_once();
    }

    v51 = qword_1003A6E68;

    v52 = static Data.randomBytes(count:)();
    v31 = sub_100156A0C(v55, v42, v50, v51, v52, v53, 600000, v47);
    (*(v57 + 8))(v56, v54);
    (*(v48 + 8))(v20, v45);
    sub_10000959C(v63);
    return v31;
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v38 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v38 + 104) > 0 || *(v38 + 112) == 1)
  {
    result = [*(v38 + 88) wait];
  }

  v39 = *(v38 + 96);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(v38 + 96) = v41;
    [*(v38 + 88) unlock];
    if (*(v38 + 56))
    {
      v42 = 0;
    }

    else
    {
      v42 = *(v38 + 52);
    }

    result = [*(v38 + 88) lock];
    v43 = *(v38 + 96);
    v40 = __OFSUB__(v43, 1);
    v44 = v43 - 1;
    if (!v40)
    {
      *(v38 + 96) = v44;
      v30 = v56;
      if (!v44)
      {
        [*(v38 + 88) broadcast];
      }

      v45 = v16;
      [*(v38 + 88) unlock];
      TMGetKernelMonotonicClock();
      v47 = v46;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001595C0(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A4D88, &unk_1002C9490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100159B6C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for UUID();
  sub_100159E44(&qword_10039FB18, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp + 8);
    v14 = *(v3 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp);
    v15 = v11;
    v13[15] = 1;
    sub_100155B90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001597A0()
{
  sub_100009548(*(v0 + 3), *(v0 + 4));
  v1 = *(v0 + 5);

  v2 = OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_uuid;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *&v0[OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest];
  v5 = *&v0[OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest + 8];

  return sub_100009548(v4, v5);
}

uint64_t sub_10015984C()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);

  sub_100009548(v1, v2);
  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_uuid;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);

  sub_100009548(*&v0[OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest], *&v0[OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_publicKeyDigest + 8]);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BAASigningIdentity()
{
  result = qword_1003A4CA0;
  if (!qword_1003A4CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001599A0()
{
  result = type metadata accessor for UUID();
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

id sub_100159A64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100158E00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100159AC0(void *a1)
{
  a1[1] = sub_100159E44(&qword_1003A4D70, type metadata accessor for BAASigningIdentity);
  a1[2] = sub_100159E44(&qword_1003A4D78, type metadata accessor for BAASigningIdentity);
  result = sub_100159E44(&qword_1003A4D80, type metadata accessor for BAASigningIdentity);
  a1[3] = result;
  return result;
}

unint64_t sub_100159B6C()
{
  result = qword_1003A4D90;
  if (!qword_1003A4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4D90);
  }

  return result;
}

BOOL sub_100159BC0(void *a1, void *a2)
{
  type metadata accessor for SecKey(0);
  v4 = *(a1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_key);
  v5 = *(a2 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_key);
  sub_100159E44(&qword_1003A4D98, type metadata accessor for SecKey);
  if ((static _CFObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a1[4];
  v8 = a2[3];
  v9 = a2[4];
  sub_1000094F4(v6, v7);
  sub_1000094F4(v8, v9);
  v10 = sub_10017688C(v6, v7, v8, v9);
  sub_100009548(v8, v9);
  sub_100009548(v6, v7);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = a1[5];
  v12 = a2[5];

  v13 = sub_100151598(v11, v12);

  return (v13 & 1) != 0 && *(a1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp) == *(a2 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp) && *(a1 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp + 8) == *(a2 + OBJC_IVAR____TtC14softposreaderd18BAASigningIdentity_keyTimestamp + 8);
}

uint64_t sub_100159D2C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100159D6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100159D84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100159DBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100159E44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100159EA0()
{
  result = qword_1003A4DB8;
  if (!qword_1003A4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4DB8);
  }

  return result;
}

unint64_t sub_100159EF8()
{
  result = qword_1003A4DC0;
  if (!qword_1003A4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4DC0);
  }

  return result;
}

unint64_t sub_100159F50()
{
  result = qword_1003A4DC8;
  if (!qword_1003A4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4DC8);
  }

  return result;
}

uint64_t sub_100159FB0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_10001A074(v4, v9);
}

uint64_t sub_10015A05C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4DD0);
  sub_10000403C(v0, qword_1003A4DD0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.security.getter();
}

uint64_t sub_10015A0C8()
{
  v1 = v0;
  v2 = *v0;
  _StringGuts.grow(_:)(70);
  v3._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v34 = v0[2];
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x79656B207B203A3ELL;
  v6._object = 0xEE00203A68736148;
  String.append(_:)(v6);
  v7 = v0[6];
  v8 = v0[7];
  String.hashValue.getter();
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x203A6661656C202CLL;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  v11 = v0[3];
  v12 = v1[4];
  sub_1000094F4(v1[3], v12);
  v13 = Data.base64EncodedString(options:)(0);
  sub_100009548(v11, v12);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000011;
  v14._object = 0x8000000100352180;
  String.append(_:)(v14);
  v15 = v1[5];
  v16 = *(v15 + 16);
  if (v16)
  {

    sub_10004E2DC(0, v16, 0);
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      sub_1000094F4(v18, *v17);
      v20 = Data.base64EncodedString(options:)(0);
      v21._countAndFlagsBits = 44;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      sub_100009548(v18, v19);
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_10004E2DC((v22 > 1), v23 + 1, 1);
      }

      v17 += 2;
      _swiftEmptyArrayStorage[2] = v23 + 1;
      *&_swiftEmptyArrayStorage[2 * v23 + 4] = v20;
      --v16;
    }

    while (v16);
  }

  v24 = Array.description.getter();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._object = 0x80000001003521A0;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29 = *(v1 + 16);
  v30 = v1[9];
  v31._countAndFlagsBits = sub_10017233C();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 32044;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  return 0;
}

uint64_t sub_10015A408(int a1, double a2)
{
  v3 = v2;
  v123 = a1;
  v5 = type metadata accessor for DispatchTime();
  v129 = *(v5 - 8);
  v130 = v5;
  v6 = *(v129 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v128 = &v115 - v10;
  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v124 = sub_10000403C(v11, qword_1003A4DD0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v125 = v2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, aBlock);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = showFunction(signature:_:)(0xD000000000000013, 0x80000001003525F0, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, aBlock);
    v3 = v125;

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v22 = [objc_opt_self() sharedService];
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = (v23 + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v26 = dispatch_semaphore_create(0);
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v23;
  v27[4] = v25;
  v27[5] = v3;
  aBlock[4] = sub_10015EE38;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015B50C;
  aBlock[3] = &unk_100385860;
  v28 = _Block_copy(aBlock);
  v29 = v26;
  v127 = v23;
  v30 = v25;

  v126 = v22;
  [v22 generateKeyWithCompletionHandler:v28];
  _Block_release(v28);
  static DispatchTime.now()();
  v31 = v128;
  + infix(_:_:)();
  v32 = v130;
  v33 = *(v129 + 8);
  v34 = v9;
  v35 = v29;
  v33(v34, v130);
  OS_dispatch_semaphore.wait(timeout:)();
  v33(v31, v32);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v36, v37))
    {
LABEL_9:

      sub_100020C74(10002, 0, 0, 0);
      swift_willThrow();

LABEL_12:
      return v35;
    }

    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = 0x4014000000000000;
    v39 = "Timed out waiting for deviceCheckService.generateKey for %f seconds";
    v40 = v37;
    v41 = v36;
    v42 = v38;
    v43 = 12;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v41, v40, v39, v42, v43);

    goto LABEL_9;
  }

  swift_beginAccess();
  if (*v24)
  {
    v44 = *v24;
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_12;
  }

  swift_beginAccess();
  v46 = *(v30 + 24);
  if (!v46)
  {
    v36 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v36, v54))
    {
      goto LABEL_9;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v39 = "Unexpected nil key after requesting DeviceCheck Creation";
    v40 = v54;
    v41 = v36;
    v42 = v55;
    v43 = 2;
    goto LABEL_8;
  }

  v47 = *(v30 + 16);
  v48 = *(v30 + 24);

  v49 = sub_10015B5A4();
  v51 = v49;
  v52 = v50;
  if (v53)
  {
    swift_willThrow();
    swift_errorRetain();

    return v35;
  }

  if (!v49 || !v50)
  {

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Unexpected nil value after receiving AAA certificate", v65, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();

    goto LABEL_45;
  }

  v56 = v50;
  v122 = v51;
  v57 = SecCertificateCopyData(v122);
  v130 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = SecCertificateCopyData(v56);
  v128 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v129 = v61;

  v62 = v59 >> 62;
  if ((v59 >> 62) > 1)
  {
    if (v62 != 2)
    {
      goto LABEL_40;
    }

    v66 = *(v130 + 16);
    v67 = *(v130 + 24);
  }

  else
  {
    if (!v62)
    {
      if ((v59 & 0xFF000000000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }

    v66 = v130;
    v67 = v130 >> 32;
  }

  if (v66 == v67)
  {
    goto LABEL_40;
  }

LABEL_32:
  v68 = v129 >> 62;
  if ((v129 >> 62) > 1)
  {
    if (v68 != 2)
    {
      goto LABEL_40;
    }

    v69 = *(v128 + 16);
    v70 = *(v128 + 24);
    goto LABEL_39;
  }

  if (v68)
  {
    v69 = v128;
    v70 = v128 >> 32;
LABEL_39:
    if (v69 != v70)
    {
      goto LABEL_46;
    }

LABEL_40:
    v71 = v59;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Unexpected empty data after copying AAA certificate data", v74, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();
    v75 = v122;

    v76 = v130;
    v77 = v71;
LABEL_43:
    sub_100009548(v76, v77);
    sub_100009548(v128, v129);

LABEL_44:

LABEL_45:

    return v35;
  }

  if ((v129 & 0xFF000000000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_46:
  type metadata accessor for SecCertificate(0);
  v121 = v59;
  v78 = static SecCertificateRef.parse(derRepresentation:)();
  if (!v78)
  {

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Could not create leaf SecCertificate from derRepresentation", v92, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();
    v75 = v122;

    v76 = v130;
    v77 = v121;
    goto LABEL_43;
  }

  v79 = v78;
  v80 = static SecCertificateRef.parse(derRepresentation:)();
  if (!v80)
  {
    v93 = v79;

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Cold not create intermediate Certificate from derRepresentation", v96, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();
    v97 = v122;

    sub_100009548(v130, v121);
    sub_100009548(v128, v129);

    goto LABEL_44;
  }

  v120 = v79;
  v81 = SecCertificateRef.publicKey.getter();
  if (!v81 || (v82 = v81, v83 = SecKeyRef.externalRepresentation.getter(), v85 = v84, v82, v85 >> 60 == 15))
  {

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "Could not get public key from SecCertificate", v88, 2u);
    }

    sub_100020C74(10001, 0, 0, 0);
    swift_willThrow();
    v89 = v122;

    sub_100009548(v130, v121);
    sub_100009548(v128, v129);

    goto LABEL_44;
  }

  v119 = v35;
  v117 = v83;
  v116 = v85;
  v98 = Data.sha256Digest.getter();
  v118 = v99;
  sub_100004074(&qword_10039FE58, &qword_1002C96F0);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1002C1660;
  v102 = v128;
  v101 = v129;
  *(v100 + 32) = v128;
  *(v100 + 40) = v101;
  v35 = swift_allocObject();
  *(v35 + 48) = v47;
  *(v35 + 56) = v46;
  sub_1000094F4(v102, v101);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v125 = v56;
    v106 = v105;
    v107 = swift_slowAlloc();
    v124 = v98;
    v108 = v107;
    v131[0] = v107;
    *v106 = 136315138;

    v109 = sub_100008F6C(v47, v46, v131);

    *(v106 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v103, v104, "AAASigningIdentity.init with key: %s", v106, 0xCu);
    sub_10000959C(v108);
    v98 = v124;

    v56 = v125;
  }

  v110 = v130;
  v111 = v121;
  *(v35 + 24) = v130;
  *(v35 + 32) = v111;
  *(v35 + 40) = v100;
  *(v35 + 64) = v123;
  *(v35 + 72) = a2;
  v112 = v118;
  *(v35 + 80) = v98;
  *(v35 + 88) = v112;
  swift_beginAccess();
  sub_1000094F4(v110, v111);
  sub_1000094F4(v98, v112);
  v113 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
  swift_endAccess();
  v114 = v122;

  sub_10001A074(v117, v116);
  sub_100009548(v128, v129);

  sub_100009548(v98, v112);
  sub_100009548(v110, v111);

  *(v35 + 16) = v113;
  return v35;
}

Swift::Int sub_10015B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000403C(v7, qword_1003A4DD0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_7;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, &v27);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.init(...): Error creating AAA Key: %@", v10, 0x16u);
    sub_100041D90(v11);

    sub_10000959C(v12);

    goto LABEL_6;
  }

  if (a2)
  {
    swift_beginAccess();
    v22 = *(a6 + 24);
    *(a6 + 16) = a1;
    *(a6 + 24) = a2;

    return OS_dispatch_semaphore.signal()();
  }

  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000403C(v24, qword_1003A4DD0);
  v8 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v8, v25, "Failed to create key reference", v26, 2u);
LABEL_6:
  }

LABEL_7:

  v17 = sub_100020C74(10001, 0, 0, 0);
  swift_beginAccess();
  v18 = *(a5 + 16);
  *(a5 + 16) = v17;

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10015B50C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void *sub_10015B5A4()
{
  v43 = type metadata accessor for DispatchTime();
  v42 = *(v43 - 8);
  v0 = *(v42 + 64);
  v1 = __chkstk_darwin(v43);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v39 - v4;
  v39 = [objc_opt_self() sharedService];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v46 = v6 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v45 = v7 + 16;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v44 = (v8 + 16);
  v9 = static Data.randomBytes(count:)();
  v11 = v10;
  v12 = dispatch_semaphore_create(0);
  v13 = String._bridgeToObjectiveC()();
  v40 = v9;
  v41 = v11;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v8;
  v15[4] = v6;
  v15[5] = v7;
  v15[6] = v48;
  aBlock[4] = sub_10015ED2C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100159FB0;
  aBlock[3] = &unk_1003857E8;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v47 = v8;
  v18 = v17;

  v48 = v6;
  v19 = v7;
  v20 = v39;

  [v20 attestKey:v13 clientDataHash:isa completionHandler:v16];
  _Block_release(v16);

  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v42 + 8);
  v22 = v3;
  v23 = v43;
  v21(v22, v43);
  OS_dispatch_semaphore.wait(timeout:)();
  v21(v5, v23);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v24 = v40;
    v25 = v41;
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000403C(v26, qword_1003A4DD0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Time out waiting for the new certificate.", v29, 2u);
    }

    v30 = sub_100020C74(10002, 0, 0, 0);
    sub_100009548(v24, v25);

    v31 = v44;
    swift_beginAccess();
    v32 = *v31;
    *v31 = v30;
  }

  else
  {
    sub_100009548(v40, v41);
  }

  swift_beginAccess();
  v33 = *(v48 + 16);
  swift_beginAccess();
  v34 = *(v19 + 16);
  swift_beginAccess();
  v35 = *(v47 + 16);
  v36 = v33;
  v37 = v34;
  swift_errorRetain();

  return v33;
}

uint64_t sub_10015BA94()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchTime();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = v42 - v8;
  v9 = swift_allocObject();
  v48 = v9;
  *(v9 + 16) = xmmword_1002C3C70;
  v42[2] = v9 + 16;
  v10 = swift_allocObject();
  v50 = v10;
  *(v10 + 16) = 0;
  v11 = v10 + 16;
  v12 = dispatch_semaphore_create(0);
  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v43 = v11;
  v13 = type metadata accessor for Logger();
  v14 = sub_10000403C(v13, qword_1003A4DD0);

  v44 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v42[1] = v1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100008F6C(*(v2 + 48), *(v2 + 56), aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "AAASigningIdentity.sign with key: %s", v18, 0xCu);
    sub_10000959C(v19);
  }

  v20 = [objc_opt_self() sharedService];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22 = *(v2 + 48);
  v23 = *(v2 + 56);
  v24 = String._bridgeToObjectiveC()();
  v25 = swift_allocObject();
  v26 = v48;
  v25[2] = v12;
  v25[3] = v26;
  v25[4] = v50;
  aBlock[4] = sub_10015EC80;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100159FB0;
  aBlock[3] = &unk_100385770;
  v27 = _Block_copy(aBlock);
  v28 = v12;

  [v20 sign:isa withKey:v24 completionHandler:v27];
  _Block_release(v27);

  static DispatchTime.now()();
  v29 = v45;
  + infix(_:_:)();
  v30 = v47;
  v31 = *(v46 + 8);
  v31(v7, v47);
  OS_dispatch_semaphore.wait(timeout:)();
  v31(v29, v30);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v32 = v44;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v35 = "Time out waiting for Signature.";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v33, v34, v35, v32, 2u);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v36 = v43;
  swift_beginAccess();
  if (*v36)
  {

    v32 = v44;
    v33 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v37))
    {
      v32 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v32 = 138412290;
      if (*v36)
      {
        swift_errorRetain();
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = v39;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      *(v32 + 4) = v39;
      *v38 = v40;
      _os_log_impl(&_mh_execute_header, v33, v37, "Error in signature block: %@", v32, 0xCu);
      sub_100041D90(v38);

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  if (*(v26 + 24) >> 60 == 15)
  {
    v32 = v44;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v35 = "No resulting signature found.";
      goto LABEL_8;
    }

LABEL_20:

    sub_100020C74(10004, 0, 0, 0);
    swift_willThrow();

    return v32;
  }

  v32 = *(v26 + 16);
  sub_1000094F4(v32, *(v26 + 24));

  return v32;
}

Swift::Int sub_10015C0B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v11 = *(a5 + 16);
  v12 = *(a5 + 24);
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  sub_10001A3E8(a1, a2);
  sub_10001A074(v11, v12);
  swift_beginAccess();
  v13 = *(a6 + 16);
  *(a6 + 16) = a3;
  swift_errorRetain();

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10015C16C()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 1717658988;
  v4 = 0x64656D7265746E69;
  if (v1 != 4)
  {
    v4 = 0x654B63696C627570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73656D695479656BLL;
  if (v1 != 1)
  {
    v5 = 7955819;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10015C22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015E0F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015C254(uint64_t a1)
{
  v2 = sub_10015EB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015C290(uint64_t a1)
{
  v2 = sub_10015EB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015C2CC(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A4EF8, &unk_1002C96E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_10015EB2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  LOBYTE(v19) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 72);
    LODWORD(v19) = *(v3 + 64);
    v20 = v13;
    v18 = 1;
    sub_100155B90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 32);
    v19 = *(v3 + 24);
    v20 = v14;
    v18 = 3;
    sub_1000094F4(v19, v14);
    sub_1001002CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v19, v20);
    v19 = *(v3 + 40);
    v18 = 4;
    sub_100004074(&qword_1003A4EE8, &qword_1002C96D8);
    sub_10015EB80(&qword_1003A4F00, sub_1001002CC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + 88);
    v19 = *(v3 + 80);
    v20 = v15;
    v18 = 5;
    sub_1000094F4(v19, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v19, v20);
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_10015C570()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_10015B5A4();
  v7 = v5;
  v8 = v6;
  if (v9)
  {
    swift_willThrow();
    swift_errorRetain();
  }

  if (v5)
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000403C(v12, qword_1003A4DD0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unexpected nil value after receiving AAA certificate", v15, 2u);
    }

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();

    goto LABEL_35;
  }

  v8 = v6;
  v16 = v7;
  v17 = SecCertificateCopyData(v16);
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = SecCertificateCopyData(v8);
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v25 != 2 || *(v18 + 16) == *(v18 + 24))
    {
      goto LABEL_29;
    }
  }

  else if (v25)
  {
    if (v18 == v18 >> 32)
    {
      goto LABEL_29;
    }
  }

  else if ((v20 & 0xFF000000000000) == 0)
  {
    goto LABEL_29;
  }

  v26 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v26 != 2)
    {
      goto LABEL_29;
    }

    v27 = *(v22 + 16);
    v28 = *(v22 + 24);
    goto LABEL_28;
  }

  if (v26)
  {
    v27 = v22;
    v28 = v22 >> 32;
LABEL_28:
    if (v27 != v28)
    {
      goto LABEL_37;
    }

LABEL_29:
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000403C(v29, qword_1003A4DD0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_34;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Unexpected empty data after copying AAA certificate data";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_34:

    sub_100020C74(10002, 0, 0, 0);
    swift_willThrow();

    sub_100009548(v18, v20);
    sub_100009548(v22, v24);

LABEL_35:
  }

  if ((v24 & 0xFF000000000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_37:
  type metadata accessor for SecCertificate(0);
  v34 = static SecCertificateRef.parse(derRepresentation:)();
  if (!v34)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000403C(v43, qword_1003A4DD0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_34;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Could not create SecCertificate from derRepresentation";
    goto LABEL_33;
  }

  v63 = v34;
  v64 = v24;
  v35 = SecCertificateRef.publicKey.getter();
  if (!v35 || (v36 = v35, v62 = SecKeyRef.externalRepresentation.getter(), v38 = v37, v36, v38 >> 60 == 15))
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000403C(v39, qword_1003A4DD0);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Could not get public key from SecCertificate", v42, 2u);
    }

    sub_100020C74(10001, 0, 0, 0);
    swift_willThrow();

    sub_100009548(v18, v20);
    sub_100009548(v22, v64);
  }

  v44 = v1[3];
  v61 = v1[4];
  v1[3] = v18;
  v1[4] = v20;
  sub_1000094F4(v18, v20);
  sub_100009548(v44, v61);
  sub_100004074(&qword_10039FE58, &qword_1002C96F0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1002C1660;
  *(v45 + 32) = v22;
  *(v45 + 40) = v64;
  v46 = v1[5];
  v1[5] = v45;
  sub_1000094F4(v22, v64);

  v47 = Data.sha256Digest.getter();
  v48 = v1[10];
  v49 = v1[11];
  v1[10] = v47;
  v1[11] = v50;
  sub_100009548(v48, v49);
  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v51 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  while (*(v51 + 104) > 0 || *(v51 + 112) == 1)
  {
    result = [*(v51 + 88) wait];
  }

  v52 = *(v51 + 96);
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (v53)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  *(v51 + 96) = v54;
  [*(v51 + 88) unlock];
  v55 = *(v51 + 52);
  if (*(v51 + 56))
  {
    v55 = 0;
  }

  v60 = v55;
  result = [*(v51 + 88) lock];
  v56 = *(v51 + 96);
  v53 = __OFSUB__(v56, 1);
  v57 = v56 - 1;
  if (v53)
  {
    goto LABEL_63;
  }

  *(v51 + 96) = v57;
  if (!v57)
  {
    [*(v51 + 88) broadcast];
  }

  [*(v51 + 88) unlock];
  TMGetKernelMonotonicClock();
  v59 = v58;

  sub_100009548(v18, v20);
  sub_100009548(v22, v64);
  sub_10001A074(v62, v38);

  *(v1 + 16) = v60;
  v1[9] = v59;
  return result;
}

Swift::Int sub_10015CCBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    if (qword_10039D6E0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_48;
  }

  if (!CBOR)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000403C(v30, qword_1003A4DD0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "CBOR library is not available", v33, 2u);
    }

    v34 = 10999;
    goto LABEL_23;
  }

  if (a2 >> 60 == 15)
  {
LABEL_17:
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000403C(v35, qword_1003A4DD0);
    v9 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v9, v36))
    {
      goto LABEL_22;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v9, v36, "Failed to create certificate references", v37, 2u);
    goto LABEL_21;
  }

  v20 = objc_opt_self();
  sub_1000094F4(a1, a2);
  v61 = a1;
  v62 = a2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22 = [v20 decodeFromData:isa];

  if (!v22)
  {
    sub_10001A074(v61, a2);
    goto LABEL_17;
  }

  v23 = [v22 dictionary];
  if (!v23)
  {
    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000403C(v41, qword_1003A4DD0);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to decode CBOR Object", v44, 2u);
    }

    v38 = sub_100020C74(10002, 0, 0, 0);
    sub_10001A074(v61, v62);

    goto LABEL_24;
  }

  v24 = v23;
  sub_10000411C(0, &qword_1003A4F08, CBOR_ptr);
  sub_10015ED3C();
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v22;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v45 = -1 << *(v25 + 32);
    v27 = ~v45;
    v26 = v25 + 64;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v28 = v47 & *(v25 + 64);
    v29 = v25;
  }

  v48 = 0;
  v49 = (v27 + 64) >> 6;
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v50 = v48;
    v51 = v28;
    v52 = v48;
    if (!v28)
    {
      break;
    }

LABEL_40:
    v53 = (v51 - 1) & v51;
    v54 = (v52 << 9) | (8 * __clz(__rbit64(v51)));
    v55 = *(*(v29 + 56) + v54);
    v56 = *(*(v29 + 48) + v54);
    v57 = v55;
    v58 = a7;
    v59 = a6;
    if (!v56)
    {
LABEL_46:
      sub_100041CDC();
      sub_10001A074(v61, v62);

      return OS_dispatch_semaphore.signal()();
    }

    while (1)
    {
      sub_10015D3B0(v56, v57, (a5 + 16), (v59 + 16), (v58 + 16));

      v48 = v52;
      v28 = v53;
      if ((v29 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_42:
      if (__CocoaDictionary.Iterator.next()())
      {
        swift_dynamicCast();
        v56 = v65;
        swift_dynamicCast();
        v57 = v65;
        v52 = v48;
        v53 = v28;
        v58 = a7;
        v59 = a6;
        if (v65)
        {
          continue;
        }
      }

      goto LABEL_46;
    }
  }

  while (1)
  {
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v52 >= v49)
    {
      goto LABEL_46;
    }

    v51 = *(v26 + 8 * v52);
    ++v50;
    if (v51)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_48:
  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A4DD0);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v65 = v13;
    *v11 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v65);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.init(...): Error getting AAA certificate: %@", v11, 0x16u);
    sub_100041D90(v12);

    sub_10000959C(v13);

LABEL_21:
  }

LABEL_22:

  v34 = 10002;
LABEL_23:
  v38 = sub_100020C74(v34, 0, 0, 0);
LABEL_24:
  swift_beginAccess();
  v39 = *(a5 + 16);
  *(a5 + 16) = v38;

  return OS_dispatch_semaphore.signal()();
}

id sub_10015D3B0(void *a1, void *a2, uint64_t *a3, void **a4, void **a5)
{
  result = [a1 string];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0x746D7453747461 && v13 == 0xE700000000000000)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  v16 = [a2 dictionary];
  if (v16)
  {
    v17 = v16;
    sub_10000411C(0, &qword_1003A4F08, CBOR_ptr);
    sub_10015ED3C();
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v18 & 0xC000000000000001) != 0)
    {
      if (__CocoaDictionary.count.getter() == 2)
      {
        v41 = a4;
        v42 = a5;
        v43 = a3;
        v19 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;

        v20 = 0;
        v21 = 0;
        v22 = 0;
LABEL_18:
        a3 = 0;
        v26 = (v21 + 64) >> 6;
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        while (1)
        {
          v27 = a3;
          v28 = v22;
          v29 = a3;
          if (!v22)
          {
            break;
          }

LABEL_23:
          v30 = (v28 - 1) & v28;
          v31 = (v29 << 9) | (8 * __clz(__rbit64(v28)));
          v32 = *(*(v19 + 56) + v31);
          v33 = *(*(v19 + 48) + v31);
          v34 = v32;
          if (!v33)
          {
LABEL_34:
            sub_100041CDC();
          }

          while (1)
          {
            sub_10015D7B0(v33, v34, v43, v41, v42);

            a3 = v29;
            v22 = v30;
            if ((v19 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_25:
            if (__CocoaDictionary.Iterator.next()())
            {
              swift_dynamicCast();
              v33 = v44;
              swift_dynamicCast();
              v34 = v44;
              v29 = a3;
              v30 = v22;
              if (v44)
              {
                continue;
              }
            }

            goto LABEL_34;
          }
        }

        while (1)
        {
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v29 >= v26)
          {
            goto LABEL_34;
          }

          v28 = *(v20 + 8 * v29);
          v27 = (v27 + 1);
          if (v28)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_37;
      }
    }

    else if (*(v18 + 16) == 2)
    {
      v41 = a4;
      v42 = a5;
      v43 = a3;
      v23 = -1 << *(v18 + 32);
      v20 = v18 + 64;
      v21 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(v18 + 64);

      v19 = v18;
      goto LABEL_18;
    }
  }

  if (qword_10039D6E0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000403C(v35, qword_1003A4DD0);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Incorrectly formatted CBOR Object", v38, 2u);
  }

  v39 = sub_100020C74(10002, 0, 0, 0);
  swift_beginAccess();
  v40 = *a3;
  *a3 = v39;
}

void sub_10015D7B0(void *a1, void *a2, uint64_t *a3, void **a4, void **a5)
{
  v9 = [a1 string];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == 6501752 && v13 == 0xE300000000000000)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        return;
      }
    }

    v16 = [a2 array];
    if (v16)
    {
      v17 = v16;
      sub_10000411C(0, &qword_1003A4F08, CBOR_ptr);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v18 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() == 2)
        {
LABEL_12:
          if ((v18 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_41:
              swift_once();
LABEL_19:
              v29 = type metadata accessor for Logger();
              sub_10000403C(v29, qword_1003A4DD0);
              v30 = Logger.logObject.getter();
              v31 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v30, v31))
              {
LABEL_36:

                v46 = sub_100020C74(10002, 0, 0, 0);
LABEL_37:
                swift_beginAccess();
                v48 = *a3;
                *a3 = v46;

                return;
              }

              v32 = swift_slowAlloc();
              *v32 = 0;
              v33 = "No leaf in CBOR data";
LABEL_35:
              _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

              goto LABEL_36;
            }

            v19 = *(v18 + 32);
          }

          v20 = v19;
          v21 = [v19 data];

          if (v21)
          {
            v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;

            v49 = v24;
            isa = Data._bridgeToObjectiveC()().super.isa;
            v26 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

            swift_beginAccess();
            v27 = *a4;
            *a4 = v26;

            if ((v18 & 0xC000000000000001) != 0)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                __break(1u);
LABEL_43:
                swift_once();
LABEL_26:
                v42 = type metadata accessor for Logger();
                sub_10000403C(v42, qword_1003A4DD0);
                v43 = Logger.logObject.getter();
                v44 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v43, v44))
                {
                  v45 = swift_slowAlloc();
                  *v45 = 0;
                  _os_log_impl(&_mh_execute_header, v43, v44, "No intermediate in CBOR data", v45, 2u);
                }

                v46 = sub_100020C74(10002, 0, 0, 0);
                sub_100009548(v22, v49);
                goto LABEL_37;
              }

              v28 = *(v18 + 40);
            }

            v34 = v28;

            v35 = [v34 data];

            if (v35)
            {
              v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v38 = v37;

              v39 = Data._bridgeToObjectiveC()().super.isa;
              v40 = SecCertificateCreateWithData(kCFAllocatorDefault, v39);
              sub_100009548(v22, v49);
              sub_100009548(v36, v38);

              swift_beginAccess();
              v41 = *a5;
              *a5 = v40;

              return;
            }

            if (qword_10039D6E0 == -1)
            {
              goto LABEL_26;
            }

            goto LABEL_43;
          }

          if (qword_10039D6E0 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_41;
        }
      }

      else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
      {
        goto LABEL_12;
      }
    }

    if (qword_10039D6E0 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000403C(v47, qword_1003A4DD0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_36;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Need 2 certficates in CBOR";
    goto LABEL_35;
  }
}

uint64_t sub_10015DCF4()
{
  sub_100009548(v0[3], v0[4]);
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[10];
  v4 = v0[11];

  return sub_100009548(v3, v4);
}

uint64_t sub_10015DD34()
{
  v1 = v0[3];
  v2 = v0[4];

  sub_100009548(v1, v2);
  v3 = v0[5];

  v4 = v0[7];

  sub_100009548(v0[10], v0[11]);

  return swift_deallocClassInstance();
}

uint64_t sub_10015DDD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10015E304(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10015DE2C(void *a1)
{
  a1[1] = sub_10015DEB8(&qword_1003A4EC0);
  a1[2] = sub_10015DEB8(&qword_1003A4EC8);
  result = sub_10015DEB8(&qword_1003A4ED0);
  a1[3] = result;
  return result;
}

uint64_t sub_10015DEB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AAASigningIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_10015DEF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_1000094F4(v5, v6);
  sub_1000094F4(v7, v8);
  v9 = sub_10017688C(v5, v6, v7, v8);
  sub_100009548(v7, v8);
  sub_100009548(v5, v6);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = *(a2 + 40);

  v12 = sub_100151598(v10, v11);

  return (v12 & 1) != 0 && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
}

void sub_10015E010()
{
  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A4DD0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Attempting to remove AAA keys does not work for Daemons", v2, 2u);
  }
}

uint64_t sub_10015E0F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656D695479656BLL && a2 == 0xEC000000706D6174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1717658988 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656D7265746E69 && a2 == 0xEC00000065746169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xEF74736567694479)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10015E304(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DecodingError();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  v6 = __chkstk_darwin(v4);
  v55 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = &v48 - v8;
  v10 = sub_100004074(&qword_1003A4ED8, &unk_1002C96C8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v57 = a1;
  sub_10000BE18(a1, v16);
  sub_10015EB2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_8;
  }

  v17 = v11;
  v61 = 1;
  sub_100155B3C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v60)
  {
    v18 = "Timestamp Missing in decoded AAA identity";
LABEL_4:
    v19 = ((v18 - 32) | 0x8000000000000000);
    v20 = 0xD000000000000029;
LABEL_5:
    v2 = sub_100020C74(10005, v20, v19, 0);
    swift_willThrow();
LABEL_7:
    (*(v17 + 8))(v14, v10);
LABEL_8:
    v58 = v2;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {

      v26 = v55;
      v25 = v56;
      (*(v56 + 32))(v55, v9, v4);
      v27 = swift_allocError();
      (*(v25 + 16))(v28, v26, v4);
      sub_100020C74(10005, 0xD000000000000010, 0x80000001003521C0, v27);

      swift_willThrow();
      (*(v25 + 8))(v26, v4);
    }

    sub_10000959C(v57);
    return v4;
  }

  v21 = v59;
  v22 = v58;
  LOBYTE(v58) = 2;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v24)
  {
    v20 = 0xD000000000000027;
    v19 = 0x8000000100352500;
    goto LABEL_5;
  }

  v53 = v23;
  v54 = v24;
  v61 = 3;
  v30 = sub_100100278();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v52 = v30;
  if (v59 >> 60 == 15)
  {

    v18 = "Leaf cert Missing in decoded AAA identity";
    goto LABEL_4;
  }

  v50 = v22;
  v51 = v59;
  v31 = v58;
  sub_100004074(&qword_1003A4EE8, &qword_1002C96D8);
  v61 = 4;
  sub_10015EB80(&qword_1003A4EF0, sub_100100278);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v31;
  v32 = v58;
  if (!v58)
  {

    v2 = sub_100020C74(10005, 0xD000000000000031, 0x8000000100352560, 0);
    swift_willThrow();
    sub_10001A074(v49, v51);
    goto LABEL_7;
  }

  v61 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v52 = v59;
  if (v59 >> 60 == 15)
  {

    v2 = sub_100020C74(10005, 0xD000000000000026, 0x80000001003525A0, 0);
    swift_willThrow();
    sub_10001A074(v49, v51);
    (*(v17 + 8))(v14, v10);
    goto LABEL_8;
  }

  v55 = v58;
  type metadata accessor for AAASigningIdentity();
  v4 = swift_allocObject();
  v33 = v54;
  *(v4 + 48) = v53;
  *(v4 + 56) = v33;
  if (qword_10039D6E0 != -1)
  {
    swift_once();
  }

  v56 = v10;
  v34 = type metadata accessor for Logger();
  sub_10000403C(v34, qword_1003A4DD0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v48 = v32;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v58 = v54;
    *v38 = 136315138;
    v39 = *(v4 + 48);
    v40 = *(v4 + 56);

    v41 = sub_100008F6C(v39, v40, &v58);

    *(v38 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "AAASigningIdentity.init with key: %s", v38, 0xCu);
    sub_10000959C(v54);
  }

  v42 = v48;
  v43 = v49;
  v44 = v51;
  v45 = v52;
  *(v4 + 24) = v49;
  *(v4 + 32) = v44;
  *(v4 + 40) = v42;
  *(v4 + 64) = v50;
  *(v4 + 72) = v21;
  v46 = v55;
  *(v4 + 80) = v55;
  *(v4 + 88) = v45;
  swift_beginAccess();
  sub_10001A3E8(v43, v44);
  sub_10001A3E8(v46, v45);
  v47 = atomic_fetch_add_explicit(&qword_1003A6E60, 1uLL, memory_order_relaxed) + 1;
  swift_endAccess();
  sub_10001A074(v46, v45);
  sub_10001A074(v43, v44);
  (*(v17 + 8))(v14, v56);
  *(v4 + 16) = v47;
  sub_10000959C(v57);
  return v4;
}

unint64_t sub_10015EB2C()
{
  result = qword_1003A4EE0;
  if (!qword_1003A4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4EE0);
  }

  return result;
}

uint64_t sub_10015EB80(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(&qword_1003A4EE8, &qword_1002C96D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10015EBF8()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100009548(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015EC40()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015EC8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015ECA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015ECDC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10015ED3C()
{
  result = qword_1003A4F10;
  if (!qword_1003A4F10)
  {
    sub_10000411C(255, &qword_1003A4F08, CBOR_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4F10);
  }

  return result;
}

uint64_t sub_10015EDA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015EDE4(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_10015EE58()
{
  result = qword_1003A4F18;
  if (!qword_1003A4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4F18);
  }

  return result;
}

unint64_t sub_10015EEB0()
{
  result = qword_1003A4F20;
  if (!qword_1003A4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4F20);
  }

  return result;
}

unint64_t sub_10015EF08()
{
  result = qword_1003A4F28;
  if (!qword_1003A4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A4F28);
  }

  return result;
}

uint64_t sub_10015EF6C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A4F30);
  sub_10000403C(v0, qword_1003A4F30);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

void *sub_10015EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t *a18)
{
  v19 = v18;
  v85 = *v18;
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v18[7] = 0;
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100385990;
  _Block_copy(aBlock);
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_1001655B4(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = type metadata accessor for DispatchWorkItem();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v18[44] = DispatchWorkItem.init(flags:block:)();
  v18[45] = 600000;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v26 = a10;
  v27 = type metadata accessor for Logger();
  sub_10000403C(v27, qword_1003A4F30);

  v28 = a5;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v31 = a2;
  if (os_log_type_enabled(v29, v30))
  {
    v84 = v30;
    v32 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v32 = 136315394;
    v33 = _typeName(_:qualified:)();
    v35 = sub_100008F6C(v33, v34, aBlock);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1002C1670;
    v83 = v29;
    v37 = a1;
    *(v36 + 32) = a1;
    *(v36 + 40) = a2;
    *(v36 + 88) = &type metadata for String;
    v38 = a4;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = a4;
    *(v36 + 72) = a5;

    v39 = showFunction(signature:_:)(0xD0000000000000A7, 0x8000000100352930, v36);
    v41 = v40;

    v42 = sub_100008F6C(v39, v41, aBlock);
    v28 = a5;

    *(v32 + 14) = v42;
    v26 = a10;
    _os_log_impl(&_mh_execute_header, v83, v84, "%s.%s", v32, 0x16u);
    swift_arrayDestroy();

    v43 = a7;
    v44 = a9;
    v45 = a12;
  }

  else
  {

    v43 = a7;
    v44 = a9;
    v45 = a12;
    v38 = a4;
    v37 = a1;
  }

  v19[2] = v37;
  v19[3] = v31;
  v19[4] = a3;
  v19[5] = v38;
  v19[6] = v28;
  sub_10000CCE4(v43, (v19 + 8));
  v46 = a8;
  sub_10000CCE4(a8, (v19 + 13));
  sub_10000CCE4(v44, (v19 + 33));
  v19[38] = v26;
  sub_10000CCE4(a11, (v19 + 39));
  sub_10000CCE4(v45, (v19 + 28));
  v19[18] = a15;
  v19[19] = a16;
  v19[20] = a17;
  v19[21] = a13;
  v19[22] = a14;
  sub_10000CCE4(a18, (v19 + 23));

  v92 = a15;
  v90 = a16;
  v47 = sub_100161438();
  if (!v47)
  {
    goto LABEL_12;
  }

  v48 = v47;
  if ((sub_100152274() & 1) == 0)
  {

LABEL_12:

    v61 = a11;
    v62 = a7;
    goto LABEL_13;
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v87 = v50;
    v51 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v51 = 136315394;
    v52 = _typeName(_:qualified:)();
    v54 = sub_100008F6C(v52, v53, aBlock);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1002C1660;
    *(v55 + 56) = &type metadata for String;
    *(v55 + 32) = a4;
    *(v55 + 40) = a5;

    v56 = showFunction(signature:_:)(0xD0000000000000A7, 0x8000000100352930, v55);
    v58 = v57;

    v59 = v56;
    v44 = a9;
    v60 = sub_100008F6C(v59, v58, aBlock);
    v61 = a11;

    *(v51 + 14) = v60;
    v62 = a7;
    _os_log_impl(&_mh_execute_header, v49, v87, "%s.%s got Identity from Persisting", v51, 0x16u);
    swift_arrayDestroy();
    v46 = a8;
  }

  else
  {

    v61 = a11;
    v62 = a7;
  }

  v67 = v48[3];
  v68 = v48[4];
  sub_1000094F4(v67, v68);
  v69 = sub_100163DC8();
  sub_100009548(v67, v68);
  if ((v69 & 1) == 0)
  {

    sub_100162348();

    v45 = a12;
LABEL_13:
    if (a6)
    {

      v63 = v90;
    }

    else
    {
      sub_100160C18();
      if (!v93)
      {
        v65 = v64;
        sub_100161BA0(v64);
        sub_1001627CC(v65);

LABEL_19:
        sub_10000959C(a18);
        sub_10000959C(v45);
        sub_10000959C(v61);
        sub_10000959C(v44);
        sub_10000959C(v46);
        sub_10000959C(v62);
        return v19;
      }

      v63 = v92;
    }

    goto LABEL_19;
  }

  v70 = v19[7];
  v19[7] = v48;

  sub_1001627CC(v48);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();

  v88 = v71;
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v73 = 136315394;
    v74 = _typeName(_:qualified:)();
    v76 = sub_100008F6C(v74, v75, aBlock);

    *(v73 + 4) = v76;
    *(v73 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1002C1660;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 32) = a4;
    *(v77 + 40) = a5;

    v78 = showFunction(signature:_:)(0xD0000000000000A7, 0x8000000100352930, v77);
    v80 = v79;

    v81 = sub_100008F6C(v78, v80, aBlock);

    *(v73 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v88, v72, "%s.%s using persisted Identity", v73, 0x16u);
    swift_arrayDestroy();

    sub_10000959C(a18);
    sub_10000959C(a12);
    sub_10000959C(a11);
    sub_10000959C(a9);
    sub_10000959C(a8);
    v82 = a7;
  }

  else
  {

    sub_10000959C(a18);
    sub_10000959C(a12);
    sub_10000959C(v61);
    sub_10000959C(v44);
    sub_10000959C(v46);
    v82 = v62;
  }

  sub_10000959C(v82);
  return v19;
}

uint64_t sub_10015FC4C()
{
  v1 = v0;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A4F30);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315394;
    v23 = v6;
    v24[0] = 0xD000000000000010;
    v24[1] = 0x8000000100352690;
    String.append(_:)(*(v0 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352690, &v23);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v23);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 352);

  dispatch thunk of DispatchWorkItem.cancel()();

  sub_10000CCE4(v1 + 64, v24);
  v13 = v25;
  v14 = v26;
  sub_10000BE18(v24, v25);
  LOBYTE(v12) = (*(v14 + 8))(v13, v14);
  sub_10000959C(v24);
  if (v12)
  {
    sub_100162348();
  }

  v15 = *(v1 + 24);

  v16 = *(v1 + 48);

  v17 = *(v1 + 56);

  sub_10000959C((v1 + 64));
  sub_10000959C((v1 + 104));

  v18 = *(v1 + 160);

  v19 = *(v1 + 176);

  sub_10000959C((v1 + 184));
  sub_10000959C((v1 + 224));
  sub_10000959C((v1 + 264));
  v20 = *(v1 + 304);

  sub_10000959C((v1 + 312));
  v21 = *(v1 + 352);

  return v1;
}

uint64_t sub_10015FF14()
{
  sub_10015FC4C();

  return swift_deallocClassInstance();
}

void sub_10015FF6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t *a7@<X8>)
{
  v9 = v7;
  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = *(a1 + 56);

    if (sub_100152274())
    {
      v34 = a6;
      v35 = a4;
      v16 = a7;
      v17 = *(v14 + 24);
      v18 = *(v14 + 32);
      sub_1000094F4(v17, v18);
      v19 = sub_100163DC8();
      sub_100009548(v17, v18);
      if (v19)
      {
        a6 = v34;
        v20 = v34(a2, a3, v35);
        a7 = v16;
        if (!v7)
        {
          *v16 = v20;
          v16[1] = v21;
          v16[2] = v14;
          return;
        }

        _s3__C4CodeOMa_13(0);
        swift_errorRetain();
        sub_1001655B4(&qword_10039D978, _s3__C4CodeOMa_13);
        v22 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if ((v22 & 1) == 0 || (a5 & 1) == 0)
        {

          return;
        }

        if (qword_10039D6E8 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_10000403C(v23, qword_1003A4F30);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        a4 = v35;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "Recoverable signature failure", v26, 2u);
          a6 = v34;
        }

        v9 = 0;
      }

      else
      {
        a7 = v16;
        a6 = v34;
        a4 = v35;
      }

      sub_100162348();
    }
  }

  if (a5)
  {
    sub_100160C18();
    if (!v9)
    {
      v28 = v27;
      v29 = a6(a2, a3, a4);
      v30 = a7;
      v31 = v29;
      v33 = v32;
      sub_100161BA0(v28);
      sub_1001627CC(v28);
      *v30 = v31;
      v30[1] = v33;
      v30[2] = v28;
    }
  }

  else
  {
    sub_100020C74(10006, 0, 0, 0);
    swift_willThrow();
  }
}

void sub_100160288(void *a1@<X0>, BOOL *a2@<X8>, double a3@<D0>)
{
  v7 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v19 = &v50 - v18;
  v20 = a1[7];
  if (!v20)
  {
    goto LABEL_10;
  }

  v52 = v17;
  v53 = v16;

  if ((sub_100152274() & 1) == 0)
  {
    goto LABEL_9;
  }

  type metadata accessor for SecCertificate(0);
  v54 = a2;
  v21 = *(v20 + 24);
  v22 = *(v20 + 32);
  sub_1000094F4(v21, v22);
  v23 = static SecCertificateRef.parse(derRepresentation:)();
  v24 = v21;
  a2 = v54;
  sub_100009548(v24, v22);
  if (!v23)
  {
LABEL_9:

LABEL_10:
    v37 = 0;
    goto LABEL_11;
  }

  v51 = v19;
  v25 = a1[36];
  v26 = a1[37];
  sub_10000BE18(a1 + 33, v25);
  v27 = v23;
  (*(v26 + 8))(v23, v25, v26);
  if (!v3)
  {
    v38 = v23;
    SecCertificateNotValidAfter();
    v39 = v51;
    Date.init(timeIntervalSinceReferenceDate:)();
    v40 = *sub_10000BE18(a1 + 28, a1[31]);
    sub_100043268(v10);
    v42 = v52;
    v41 = v53;
    if ((*(v52 + 48))(v10, 1, v53) != 1)
    {
      (*(v42 + 32))(v15, v10, v41);
      Date.timeIntervalSince(_:)();
      v48 = v47;

      v49 = *(v42 + 8);
      v49(v15, v41);
      v49(v39, v41);
      v37 = v48 > a3;
      a2 = v54;
      goto LABEL_11;
    }

    sub_10000BD44(v10, &unk_1003A3BE0, &qword_1002C36F0);
    if (qword_10039D6E8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000403C(v43, qword_1003A4F30);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Could not calculate secure now", v46, 2u);
    }

    else
    {
    }

    a2 = v54;
    (*(v52 + 8))(v39, v53);
    goto LABEL_10;
  }

  v28 = v23;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000403C(v29, qword_1003A4F30);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v56 = v33;
    *v32 = 136315138;
    v55 = v3;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v34 = String.init<A>(describing:)();
    v36 = sub_100008F6C(v34, v35, &v56);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Certificate verification failed: %s", v32, 0xCu);
    sub_10000959C(v33);
  }

  else
  {
  }

  v37 = 0;
  a2 = v54;
LABEL_11:
  *a2 = v37;
}

uint64_t sub_100160800(uint64_t a1)
{
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A4F30);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 136315394;
    String.append(_:)(*(a1 + 40));
    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100008F6C(0xD000000000000010, 0x8000000100352690, &v20);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x80000001003526B0, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v20);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_100162348();
  sub_100160C18();
  if (v1)
  {
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error creating identity: %@", v16, 0xCu);
      sub_10000BD44(v17, &unk_10039E220, &qword_1002C3D60);
    }

    return swift_willThrow();
  }

  else
  {
    v13 = v12;
    sub_100161BA0(v12);
    sub_1001627CC(v13);
  }
}

void sub_100160C18()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = v75[8];
  v4 = __chkstk_darwin(v2);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = &v68 - v6;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000403C(v7, qword_1003A4F30);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v68 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v12 = 136315394;
    v79 = 0xD000000000000010;
    v80 = 0x8000000100352690;
    String.append(_:)(*(v1 + 40));
    v13._countAndFlagsBits = 93;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14 = sub_100008F6C(v79, v80, &v81);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v15 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100352910, _swiftEmptyArrayStorage);
    v17 = sub_100008F6C(v15, v16, &v81);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v72 = type metadata accessor for SESSigningIdentity();
  v18 = *(v1 + 24);
  v79 = *(v1 + 16);
  v80 = v18;

  v19._countAndFlagsBits = 58;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  String.append(_:)(*(v1 + 40));
  v70 = v80;
  v71 = v79;
  v20 = *(v1 + 176);
  v69 = *(v1 + 168);
  v21 = *(v1 + 152);
  v22 = *(v1 + 160);
  v23 = *(v1 + 360);

  v24 = v21;

  v25 = static Data.randomBytes(count:)();
  v78 = v1;
  v27 = v26;
  v28 = v74;
  static DispatchTime.now()();
  v29 = v73;
  + infix(_:_:)();
  (v75[1])(v28, v76);
  v30 = v77;
  sub_10015278C(v71, v70, v69, v20, v24, v22, v25, v27, v23, v29);
  if (!v30)
  {
    v48 = *(v31 + 24);
    v49 = *(v31 + 32);
    v50 = v31;
    sub_1000094F4(v48, v49);
    v51 = v78;
    sub_100164200();
    sub_100009548(v48, v49);
    v52 = v51[17];
    v76 = v51[16];
    v77 = v52;
    v75 = sub_10000BE18(v51 + 13, v76);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1701605234;
    v74 = (inited + 32);
    *(inited + 40) = 0xE400000000000000;
    v54 = v51[4];
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v54;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v55 = *(v50 + 24);
    v56 = *(v50 + 32);
    sub_1000094F4(v55, v56);
    v57 = Data.sha256Digest.getter();
    v59 = v58;
    sub_100009548(v55, v56);
    v60 = Data.base64EncodedString(options:)(0);
    sub_100009548(v57, v59);
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v60;
    v61 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(8u, v61, v76, v77);

    v62 = v51[38];
    sub_10002B31C(&off_10037E170);
    return;
  }

  v77 = v31;
  v32 = v78;
  v33 = v78[16];
  v34 = v78[17];
  sub_10000BE18(v78 + 13, v33);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_1002C1670;
  *(v35 + 32) = 1701605234;
  *(v35 + 40) = 0xE400000000000000;
  v36 = v32[4];
  *(v35 + 72) = &type metadata for Int;
  *(v35 + 80) = &protocol witness table for Int;
  *(v35 + 48) = v36;
  *(v35 + 88) = 0x726F727265;
  *(v35 + 96) = 0xE500000000000000;
  v79 = v30;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  v37 = String.init<A>(describing:)();
  *(v35 + 128) = &type metadata for String;
  *(v35 + 136) = &protocol witness table for String;
  *(v35 + 104) = v37;
  *(v35 + 112) = v38;
  v39 = sub_100184010(v35);
  swift_setDeallocating();
  sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0xAu, v39, v33, v34);

  v79 = v30;
  swift_errorRetain();
  type metadata accessor for SecurityError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v40 = v81;
  v79 = v81;
  sub_1001655B4(&qword_10039D998, type metadata accessor for SecurityError);
  _BridgedStoredNSError.code.getter();
  if (v81 != 10002)
  {
    goto LABEL_12;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "SEABAAS certificate creation failed.", v43, 2u);
  }

  v44 = v78;
  v45 = v78[45];
  v46 = __OFADD__(v45, 86400);
  v47 = v45 + 86400;
  if (v46)
  {
    __break(1u);
  }

  else
  {
    if (v47 > 600000)
    {
LABEL_12:

LABEL_18:
      swift_willThrow();
      return;
    }

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "SEABAAS certificate validity period increased for next attempt.", v65, 2u);
      v44 = v78;
    }

    v66 = v44[45];
    v46 = __OFADD__(v66, 86400);
    v67 = v66 + 86400;
    if (!v46)
    {
      v44[45] = v67;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_100161438()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000403C(v7, qword_1003A4F30);

  v32 = v8;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    v35 = 0xD000000000000010;
    v36 = 0x8000000100352690;
    v37 = v12;
    String.append(_:)(*(v1 + 40));
    v13._countAndFlagsBits = 93;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14 = sub_100008F6C(v35, v36, &v37);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = showFunction(signature:_:)(0x6E65644964616F6CLL, 0xEE00292879746974, _swiftEmptyArrayStorage);
    v17 = sub_100008F6C(v15, v16, &v37);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v19 = *(v1 + 88);
  v18 = *(v1 + 96);
  sub_10000BE18((v1 + 64), v19);
  v20 = *(v1 + 24);
  v29 = *(v1 + 16);
  v35 = v29;
  v36 = v20;

  v21._countAndFlagsBits = 58;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = *(v1 + 40);
  v30 = *(v1 + 48);
  v22._object = v30;
  countAndFlagsBits = v22._countAndFlagsBits;
  String.append(_:)(v22);
  static String.Encoding.utf8.getter();
  v23 = String.data(using:allowLossyConversion:)();
  v25 = v24;

  v26 = *(v34 + 8);
  v34 += 8;
  result = v26(v6, v33);
  if (v25 >> 60 == 15)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v28 = sub_100004074(&qword_1003A51B8, &qword_1002C98F8);
    sub_100165500();
    sub_10009A1A4(v23, v25, v19, v28, v18);
    sub_10001A074(v23, v25);
    return v37;
  }

  return result;
}

uint64_t sub_100161BA0(uint64_t a1)
{
  v3 = v2;
  v55 = type metadata accessor for String.Encoding();
  v54 = *(v55 - 8);
  v5 = *(v54 + 64);
  __chkstk_darwin(v55);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONEncoder.OutputFormatting();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A4F30);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v56 = v1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v52 = v2;
    v16 = v15;
    v51 = swift_slowAlloc();
    v60 = v51;
    *v16 = 136315394;
    v58 = 0xD000000000000010;
    v59 = 0x8000000100352690;
    String.append(_:)(*(v1 + 40));
    v17._countAndFlagsBits = 93;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18 = sub_100008F6C(v58, v59, &v60);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1002C1660;
    *(v19 + 56) = type metadata accessor for SESSigningIdentity();
    *(v19 + 32) = a1;

    v20 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528F0, v19);
    v22 = v21;

    v23 = sub_100008F6C(v20, v22, &v60);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();

    v3 = v52;
  }

  type metadata accessor for JSONEncoder();
  v58 = a1;
  v60 = _swiftEmptyArrayStorage;
  sub_1001655B4(&qword_1003A1068, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100004074(&qword_1003A1070, &qword_1002C5170);
  sub_10001A570(&qword_1003A1078, &qword_1003A1070, &qword_1002C5170);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for SESSigningIdentity();
  sub_1001655B4(&qword_1003A4B50, type metadata accessor for SESSigningIdentity);
  v24 = static JSONEncoder.encodeClean<A>(_:outputFormatting:)();
  if (v3)
  {
    return (*(v57 + 8))(v10, v7);
  }

  v52 = v24;
  v51 = v25;
  v50 = a1;
  (*(v57 + 8))(v10, v7);
  v27 = v56;
  v28 = v56[11];
  v29 = v56[12];
  sub_10000BE18(v56 + 8, v28);
  v30 = v27[3];
  v58 = v27[2];
  v59 = v30;

  v31._countAndFlagsBits = 58;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  String.append(_:)(*(v27 + 5));
  v32 = v53;
  static String.Encoding.utf8.getter();
  v33 = String.data(using:allowLossyConversion:)();
  v35 = v34;

  result = (*(v54 + 8))(v32, v55);
  if (v35 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    (*(v29 + 40))(v33, v35, v52, v51, v28, v29);
    sub_10001A074(v33, v35);
    v36 = v50;
    v37 = v56;
    v38 = v56[16];
    v57 = v56[17];
    v55 = sub_10000BE18(v56 + 13, v38);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1670;
    *(inited + 32) = 1701605234;
    *(inited + 40) = 0xE400000000000000;
    v40 = v37[4];
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v40;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v41 = *(v36 + 24);
    v42 = *(v36 + 32);
    sub_1000094F4(v41, v42);
    v43 = Data.sha256Digest.getter();
    v45 = v44;
    sub_100009548(v41, v42);
    v46 = Data.base64EncodedString(options:)(0);
    sub_100009548(v43, v45);
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v46;
    v47 = sub_100184010(inited);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(9u, v47, v38, v57);
    sub_100009548(v52, v51);

    v48 = v37[7];
    v37[7] = v50;
  }

  return result;
}

void sub_100162348()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000403C(v7, qword_1003A4F30);

  v26[1] = v8;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v11 = 136315394;
    v28 = 0xD000000000000010;
    v29 = 0x8000000100352690;
    String.append(_:)(*(v1 + 40));
    v12._countAndFlagsBits = 93;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = sub_100008F6C(v28, v29, v27);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = showFunction(signature:_:)(0xD000000000000010, 0x80000001003528D0, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, v27);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v1 + 56))
  {
    v17 = *(v1 + 88);
    v18 = *(v1 + 96);
    v26[0] = sub_10000BE18((v1 + 64), v17);
    v19 = *(v1 + 24);
    v28 = *(v1 + 16);
    v29 = v19;

    v20._countAndFlagsBits = 58;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    String.append(_:)(*(v1 + 40));
    static String.Encoding.utf8.getter();
    v21 = String.data(using:allowLossyConversion:)();
    v22 = v3;
    v24 = v23;

    (*(v22 + 8))(v6, v2);
    if (v24 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      (*(v18 + 48))(v21, v24, v17, v18);
      sub_10001A074(v21, v24);
      sub_100154914();

      v25 = *(v1 + 56);
      *(v1 + 56) = 0;
    }
  }
}

void sub_1001627CC(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecCertificate(0);
  v7 = a1[3];
  v8 = a1[4];
  sub_1000094F4(v7, v8);
  v9 = static SecCertificateRef.parse(derRepresentation:)();
  sub_100009548(v7, v8);
  if (v9)
  {
    SecCertificateNotValidAfter();
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_100162A64(a1[2], v6, 0);

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (qword_10039D6E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_1003A4F30);

    v18 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_100151EF8();
      v16 = sub_100008F6C(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v11, "Invalid X.509 format (SEABAAS). Not renewing: %s", v12, 0xCu);
      sub_10000959C(v13);
    }

    else
    {
      v17 = v18;
    }
  }
}

void sub_100162A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v117 = a3;
  v120 = a1;
  v114 = type metadata accessor for DispatchTime();
  v113 = *(v114 - 8);
  v6 = *(v113 + 64);
  v7 = __chkstk_darwin(v114);
  v112 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = v104 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v111 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v104 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v110 = v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v118 = v104 - v23;
  v24 = __chkstk_darwin(v22);
  v119 = v104 - v25;
  v26 = __chkstk_darwin(v24);
  v121 = v104 - v27;
  v109 = v28;
  __chkstk_darwin(v26);
  v30 = v104 - v29;
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000403C(v31, qword_1003A4F30);
  v34 = v18 + 16;
  v33 = *(v18 + 16);
  v122 = a2;
  v33(v30, a2, v17);

  v116 = v32;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v123 = v18;
  v115 = v33;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v124 = v17;
    v39 = v38;
    v107 = swift_slowAlloc();
    v125[0] = v107;
    *v39 = 136315394;
    aBlock = 0xD000000000000010;
    v127 = 0x8000000100352690;
    String.append(_:)(*(v4 + 40));
    v40._countAndFlagsBits = 93;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v41 = sub_100008F6C(aBlock, v127, v125);

    *(v39 + 4) = v41;
    *(v39 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1002C1790;
    *(v42 + 56) = &type metadata for Int64;
    *(v42 + 32) = v120;
    *(v42 + 88) = v124;
    v43 = sub_10000BE5C((v42 + 64));
    v33(v43, v30, v124);
    *(v42 + 120) = &type metadata for Int;
    *(v42 + 96) = v117;
    v44 = showFunction(signature:_:)(0xD000000000000034, 0x8000000100352890, v42);
    v46 = v45;

    v47 = v30;
    v48 = *(v123 + 8);
    v48(v47, v124);
    v49 = v44;
    v34 = v18 + 16;
    v50 = sub_100008F6C(v49, v46, v125);

    *(v39 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s.%s", v39, 0x16u);
    swift_arrayDestroy();

    v18 = v123;
    v17 = v124;
  }

  else
  {

    v51 = v30;
    v48 = *(v18 + 8);
    v48(v51, v17);
  }

  v52 = *sub_10000BE18((v4 + 224), *(v4 + 248));
  sub_100043268(v16);
  v53 = (*(v18 + 48))(v16, 1, v17);
  v55 = v118;
  v54 = v119;
  if (v53 == 1)
  {
    sub_10000BD44(v16, &unk_1003A3BE0, &qword_1002C36F0);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 134217984;
      *(v58 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v56, v57, "Aborting identity #%lld renewal. Could not calculate secure now", v58, 0xCu);
    }

    return;
  }

  v59 = *(v18 + 32);
  v106 = v18 + 32;
  v105 = v59;
  v59(v121, v16, v17);
  Date.timeIntervalSince(_:)();
  if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v60 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v61 = 86400;
  v104[1] = v34;
  v107 = v48;
  if (v60 <= 86400 && (v61 = v60, v60 < 301))
  {

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    v80 = os_log_type_enabled(v78, v79);
    v77 = v112;
    if (v80)
    {
      v81 = v17;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      _os_log_impl(&_mh_execute_header, v78, v79, "Certificate for %s will be renewed immediately", v82, 0xCu);
      sub_10000959C(v83);

      v17 = v81;
    }

    v64 = 0;
    v76 = v108;
    v71 = v123;
  }

  else
  {
    v125[0] = 300;
    v125[1] = v61;
    swift_beginAccess();
    v62 = *(v4 + 216);
    sub_100022438(v4 + 184, *(v4 + 208));
    v124 = v17;
    sub_10000A114();
    v17 = v124;
    static FixedWidthInteger.random<A>(in:using:)();
    swift_endAccess();
    Date.addingTimeInterval(_:)();
    Date.timeIntervalSince(_:)();
    v64 = v63;
    v115(v55, v54, v17);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v67 = 136315650;
      *(v67 + 4) = sub_100008F6C(*(v4 + 40), *(v4 + 48), &aBlock);
      *(v67 + 12) = 2080;
      sub_1001655B4(&qword_10039F3E8, &type metadata accessor for Date);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = v123;
      v72 = v55;
      v73 = v107;
      v107(v72, v124);
      v74 = sub_100008F6C(v68, v70, &aBlock);

      *(v67 + 14) = v74;
      *(v67 + 22) = 2048;
      *(v67 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "Certificate for %s will be renewed on %s (in %f seconds)", v67, 0x20u);
      swift_arrayDestroy();

      v17 = v124;

      v73(v119, v17);
    }

    else
    {

      v71 = v123;
      v75 = v107;
      v107(v55, v17);
      v75(v54, v17);
    }

    v76 = v108;
    v77 = v112;
  }

  v84 = v115;
  v85 = *(v4 + 352);

  dispatch thunk of DispatchWorkItem.cancel()();

  static DispatchWorkItemFlags.barrier.getter();
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = v110;
  v84(v110, v122, v17);
  v88 = *(v71 + 80);
  v89 = v17;
  v90 = (v88 + 48) & ~v88;
  v91 = swift_allocObject();
  v92 = v120;
  *(v91 + 2) = v86;
  *(v91 + 3) = v92;
  *(v91 + 4) = v64;
  *(v91 + 5) = v117;
  v105(&v91[v90], v87, v89);
  v130 = sub_10016547C;
  v131 = v91;
  aBlock = _NSConcreteStackBlock;
  v127 = 1107296256;
  v128 = sub_100003974;
  v129 = &unk_100385968;
  _Block_copy(&aBlock);
  v93 = type metadata accessor for DispatchWorkItem();
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  swift_allocObject();

  v96 = DispatchWorkItem.init(flags:block:)();

  v97 = *(v4 + 352);
  *(v4 + 352) = v96;

  v98 = *(v4 + 144);
  v100 = *(v4 + 248);
  v99 = *(v4 + 256);
  sub_10000BE18((v4 + 224), v100);
  (*(*(v99 + 8) + 16))(v100);
  + infix(_:_:)();
  v101 = *(v113 + 8);
  v102 = v114;
  v101(v77, v114);
  v103 = *(v4 + 352);

  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v101(v76, v102);
  v107(v121, v89);
}

void sub_10016375C(double a1, uint64_t a2, uint64_t a3)
{
  if (qword_10039D768 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  if (*(static Terminator.shared + 16))
  {
    if (qword_10039D6E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000403C(v4, qword_1003A4F30);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "renew identity cancelled: shutdown in progress", v6, 2u);
    }

    return;
  }

  v7 = a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 56);
    if (v9 && *(v9 + 16) == a3)
    {
      if (qword_10039D6E8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000403C(v10, qword_1003A4F30);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134218240;
        *(v13 + 4) = a3;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v7;
        _os_log_impl(&_mh_execute_header, v11, v12, "renew identity #%lld after %fs", v13, 0x16u);
      }

      sub_100162348();
      sub_100160C18();
      v15 = v14;
      sub_100161BA0(v14);
      sub_1001627CC(v15);

      return;
    }
  }

  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000403C(v16, qword_1003A4F30);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "identity mismatch, abort renewal", v19, 2u);
  }
}

uint64_t sub_100163DC8()
{
  if (qword_10039D6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A4F30);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    v28[0] = 0xD000000000000010;
    v28[1] = 0x8000000100352690;
    v29[0] = v5;
    String.append(_:)(*(v0 + 40));
    v6._countAndFlagsBits = 93;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_100008F6C(0xD000000000000010, 0x8000000100352690, v29);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000026, 0x8000000100352860, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, v29);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for SecCertificate(0);
  v11 = static SecCertificateRef.parse(derRepresentation:)();
  if (v11)
  {
    v12 = v11;
    v13 = sub_100164BB8();
    if (!v13)
    {
      v18 = *(v0 + 288);
      v19 = *(v0 + 296);
      sub_10000BE18((v0 + 264), v18);
      (*(v19 + 8))(v12, v18, v19);

      return 1;
    }

    v14 = v13;
    swift_willThrow();
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invalid X.509 format (SEABAAS)", v17, 2u);
    }

    v14 = sub_100020C74(10005, 0, 0, 0);
    swift_willThrow();
  }

  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28[0] = v23;
    *v22 = 136315138;
    v29[0] = v14;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v24 = String.init<A>(describing:)();
    v26 = sub_100008F6C(v24, v25, v28);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Certificate verification failed: %s", v22, 0xCu);
    sub_10000959C(v23);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100164200()
{
  v44 = _swiftEmptyArrayStorage;
  type metadata accessor for SecCertificate(0);
  v1 = static SecCertificateRef.parse(derRepresentation:)();
  if (v1)
  {
    v2 = v1;
    v3 = SecCertificateRef.publicKey.getter();
    if (v3)
    {
      v4 = v3;
      if (SecKeyRef.isAlgorithmSupported(_:for:)(kSecKeyAlgorithmECDSASignatureMessageX962SHA256, kSecKeyOperationTypeVerify))
      {
      }

      else
      {
        sub_100020C74(10005, 0xD00000000000001CLL, 0x8000000100352840, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v44[2] >= v44[3] >> 1)
        {
          v38 = v44[2];
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    else
    {
      sub_100020C74(10005, 0x696C627570206F4ELL, 0xED000079656B2063, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v44[2] >= v44[3] >> 1)
      {
        v37 = v44[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v6 = sub_100164BB8();
    if (v6)
    {
      v7 = v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v44[2] >= v44[3] >> 1)
      {
        v34 = v44[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_10009BACC(&v40);
    v8 = v42;
    v9 = v43;

    if (v9)
    {
      v10 = *(v0 + 168);
      v11 = *(v0 + 176);
      if (v8 == v10 && v9 == v11 || (v12 = *(v0 + 168), v13 = *(v0 + 176), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        goto LABEL_30;
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      v40 = 0xD000000000000015;
      v41 = 0x8000000100352820;
      v17._countAndFlagsBits = v8;
      v17._object = v9;
      String.append(_:)(v17);

      v18._countAndFlagsBits = 0x203A64696573202CLL;
      v18._object = 0xE800000000000000;
      String.append(_:)(v18);
      v19._countAndFlagsBits = v10;
      v19._object = v11;
      String.append(_:)(v19);
      v14 = v40;
      v15 = v41;
      v16 = 10010;
    }

    else
    {
      v14 = 0xD00000000000001ELL;
      v15 = 0x8000000100352790;
      v16 = 10005;
    }

    sub_100020C74(v16, v14, v15, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v44[2] >= v44[3] >> 1)
    {
      v36 = v44[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_30:
    v20 = sub_10009C2B8();
    if (v21 & 1) != 0 || (v22 = v20, sub_10009C2B8(), (v24))
    {
      v25 = 0x80000001003527B0;
      v26 = 10005;
      v27 = 0xD00000000000001ALL;
    }

    else
    {
      v28 = v23;
      if (v22)
      {
        v40 = 0;
        v41 = 0xE000000000000000;
        _StringGuts.grow(_:)(49);

        v40 = 0xD000000000000022;
        v41 = 0x80000001003527D0;
        v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v29);

        v30._object = 0xED000030203A6465;
        v30._countAndFlagsBits = 0x746365707865202CLL;
        String.append(_:)(v30);
        sub_100020C74(10010, v40, v41, 0);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v44[2] >= v44[3] >> 1)
        {
          v39 = v44[2];
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (v28 == 1)
      {

LABEL_36:
        sub_1001648A4(&v44, v0);
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v40 = 0xD00000000000001DLL;
      v41 = 0x8000000100352800;
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._object = 0xED000031203A6465;
      v32._countAndFlagsBits = 0x746365707865202CLL;
      String.append(_:)(v32);
      v27 = v40;
      v25 = v41;
      v26 = 10010;
    }

    sub_100020C74(v26, v27, v25, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v44[2] >= v44[3] >> 1)
    {
      v33 = v44[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_36;
  }

  sub_100020C74(10005, 0xD00000000000001ALL, 0x8000000100352770, 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v44[2] >= v44[3] >> 1)
  {
    v35 = v44[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1001648A4(&v44, v0);
}

uint64_t sub_1001648A4(uint64_t result, uint64_t a2)
{
  if (*(*result + 16))
  {
    v2 = result;
    sub_10000CCE4(a2 + 104, v25);
    v4 = v26;
    v5 = v27;
    sub_10000BE18(v25, v26);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1790;
    *(inited + 32) = 1701605234;
    *(inited + 40) = 0xE400000000000000;
    v7 = *(a2 + 32);
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 48) = v7;
    *(inited + 88) = 0x747365676964;
    *(inited + 96) = 0xE600000000000000;
    v8 = Data.sha256Digest.getter();
    v10 = v9;
    *(inited + 128) = &type metadata for Data;
    v11 = sub_10016532C();
    *(inited + 104) = v8;
    *(inited + 112) = v10;
    *(inited + 136) = v11;
    *(inited + 144) = 0x73726F727265;
    v23 = inited;
    *(inited + 152) = 0xE600000000000000;
    v12 = *v2;
    v13 = *(*v2 + 16);
    if (v13)
    {
      v22 = v4;

      sub_10004E2DC(0, v13, 0);
      type metadata accessor for SecurityError(0);
      v14 = 32;
      do
      {
        v24 = *(v12 + v14);
        _print_unlocked<A, B>(_:_:)();
        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_10004E2DC((v15 > 1), v16 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        v17 = &_swiftEmptyArrayStorage[2 * v16];
        v17[4] = 0;
        v17[5] = 0xE000000000000000;
        v14 += 8;
        --v13;
      }

      while (v13);

      v4 = v22;
    }

    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    v23[23] = &type metadata for String;
    v23[24] = &protocol witness table for String;
    v23[20] = v18;
    v23[21] = v20;
    v21 = sub_100184010(v23);
    swift_setDeallocating();
    sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
    swift_arrayDestroy();
    sub_1000C2288(0x27u, v21, v4, v5);

    return sub_10000959C(v25);
  }

  return result;
}

uint64_t sub_100164BB8()
{
  sub_10009B644(&v24);
  v2 = v24;
  v1 = v25;

  if (!v1)
  {
    v8 = 0xD00000000000001DLL;
    v9 = 0x80000001003526D0;
    goto LABEL_5;
  }

  v3 = sub_100189160(v2, v1);
  if (v6)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v24 = 0xD000000000000020;
    v25 = 0x80000001003526F0;
    v7._countAndFlagsBits = v2;
    v7._object = v1;
    String.append(_:)(v7);

    v8 = v24;
    v9 = v25;
LABEL_5:
    v10 = 10005;
    return sub_100020C74(v10, v8, v9, 0);
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;

  v15 = sub_10000BE18((v0 + 312), *(v0 + 336));
  if (v12 == *(*v15 + 16) && v13 == *(*v15 + 24) && v14 == *(*v15 + 32))
  {
    return 0;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v18._countAndFlagsBits = 0xD00000000000002CLL;
  v18._object = 0x8000000100352720;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_100187828(v12, v13, v14);
  String.append(_:)(v19);

  v20._object = 0x8000000100352750;
  v20._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v20);
  v21 = sub_10000BE18((v0 + 312), *(v0 + 336));
  v22._countAndFlagsBits = sub_100187828(*(*v21 + 16), *(*v21 + 24), *(*v21 + 32));
  String.append(_:)(v22);

  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v8 = v24;
  v9 = v25;
  v10 = 10010;
  return sub_100020C74(v10, v8, v9, 0);
}

uint64_t sub_100164E2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[0] = a1;
  v21[1] = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v8 + 144);
  static DispatchWorkItemFlags.barrier.getter();
  v22 = v8;
  v23 = a2;
  v24 = a3;
  v25 = a5;
  v26 = a4;
  sub_100004074(&qword_1003A51A8, &qword_1002C98F0);
  v19 = v29;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  if (v19)
  {
    return (*(v14 + 8))(v17, v13);
  }

  (*(v14 + 8))(v17, v13);
  result = v27;
  *v21[0] = v28;
  return result;
}

uint64_t sub_100164F9C(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 144);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = v1;
  v12 = a1;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t sub_1001650B8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 144);
  static DispatchWorkItemFlags.barrier.getter();
  OS_dispatch_queue.sync<A>(flags:execute:)();
  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_1001651C4()
{
  String.append(_:)(*(*v0 + 40));
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000010;
}

unint64_t sub_10016532C()
{
  result = qword_1003A51B0;
  if (!qword_1003A51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A51B0);
  }

  return result;
}

uint64_t sub_100165380()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001653B8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10016547C()
{
  v1 = *(*(type metadata accessor for Date() - 8) + 80);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = *(v0 + 5);

  sub_10016375C(v4, v2, v3);
}

uint64_t sub_1001654E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100165500()
{
  result = qword_1003A51C0;
  if (!qword_1003A51C0)
  {
    sub_1000040BC(&qword_1003A51B8, &qword_1002C98F8);
    sub_1001655B4(&qword_1003A4B48, type metadata accessor for SESSigningIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A51C0);
  }

  return result;
}

uint64_t sub_1001655B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100165604()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A51C8);
  sub_10000403C(v0, qword_1003A51C8);
  sub_100023B24();
  return static SPRLogger.security.getter();
}

uint64_t sub_100165660()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 64);
  if (v7)
  {
    v8 = *(v0 + 56);
    v9 = *(v0 + 24);
    v21 = *(v0 + 16);
    v22 = v9;

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    String.append(_:)(*(v0 + 40));

    v11._countAndFlagsBits = v8;
    v11._object = v7;
    String.append(_:)(v11);

    v1 = v22;
    static String.Encoding.utf8.getter();
    v12 = String.data(using:allowLossyConversion:)();
    v14 = v13;

    v15 = *(v3 + 8);
    v3 += 8;
    v15(v6, v2);
    if (v14 >> 60 != 15)
    {
      return v12;
    }

    __break(1u);
  }

  v16 = *(v1 + 24);
  v21 = *(v1 + 16);
  v22 = v16;

  v17._countAndFlagsBits = 58;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  String.append(_:)(*(v1 + 40));
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v19 = v18;

  result = (*(v3 + 8))(v6, v2);
  if (v19 >> 60 != 15)
  {
    return v12;
  }

  __break(1u);
  return result;
}

unint64_t sub_100165848()
{
  _StringGuts.grow(_:)(23);

  String.append(_:)(*(v0 + 16));
  v1._countAndFlagsBits = 0x203A656C6F72202CLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 40));
  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000011;
}

uint64_t sub_1001658F0()
{
  v1 = v0;
  if (qword_10039D6F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A51C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_100165848();
    v8 = sub_100008F6C(v6, v7, v24);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v24);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 368);

  dispatch thunk of DispatchWorkItem.cancel()();

  sub_10000CCE4(v1 + 80, v24);
  v13 = v25;
  v14 = v26;
  sub_10000BE18(v24, v25);
  LOBYTE(v12) = (*(v14 + 8))(v13, v14);
  sub_10000959C(v24);
  if (v12)
  {
    sub_100167CE8();
  }

  v15 = *(v1 + 24);

  v16 = *(v1 + 48);

  v17 = *(v1 + 64);

  v18 = *(v1 + 72);

  sub_10000959C((v1 + 80));
  sub_10000959C((v1 + 120));

  v19 = *(v1 + 176);

  v20 = *(v1 + 192);

  sub_10000959C((v1 + 200));
  sub_10000959C((v1 + 240));
  sub_10000959C((v1 + 280));
  v21 = *(v1 + 320);

  sub_10000959C((v1 + 328));
  v22 = *(v1 + 368);

  return v1;
}

uint64_t sub_100165B8C()
{
  sub_1001658F0();

  return swift_deallocClassInstance();
}

void sub_100165BE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t *)@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *(v11 + 24);
    v13 = *(v11 + 32);
    v14 = *(a1 + 72);

    sub_1000094F4(v12, v13);
    v15 = sub_10016950C();
    sub_100009548(v12, v13);
    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      a5(&v28, v11, a2, a3, &v29);
      if (!v6)
      {
        objc_autoreleasePoolPop(v16);
        *a6 = v28;
        *(a6 + 16) = v11;
        return;
      }

      objc_autoreleasePoolPop(v16);
      _s3__C4CodeOMa_13(0);
      *&v28 = 10004;
      swift_errorRetain();
      sub_10016BA2C(&qword_10039D978, _s3__C4CodeOMa_13);
      v17 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if ((v17 & 1) == 0 || (a4 & 1) == 0)
      {

        return;
      }

      if (qword_10039D6F0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000403C(v18, qword_1003A51C8);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Recoverable signature failure", v21, 2u);
      }

      v8 = 0;
    }

    sub_100167CE8();
  }

  if (a4)
  {
    sub_100166890();
    if (!v8)
    {
      v23 = v22;
      v24 = objc_autoreleasePoolPush();
      a5(&v28, v23, a2, a3, &v29);
      objc_autoreleasePoolPop(v24);
      v25 = v28;
      sub_100167650(v23);
      sub_10016807C(v23);
      *a6 = v25;
      *(a6 + 16) = v23;
    }
  }

  else
  {
    sub_100020C74(10006, 0, 0, 0);
    swift_willThrow();
  }
}