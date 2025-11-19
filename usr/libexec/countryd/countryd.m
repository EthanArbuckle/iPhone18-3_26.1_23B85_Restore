uint64_t sub_1000016F8()
{
  v0 = +[NSXPCConnection currentConnection];
  v1 = [v0 valueForEntitlement:@"com.apple.countryd.contribute"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v1 BOOLValue] & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v3 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_FAULT))
    {
      v4 = v3;
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "com.apple.countryd.contribute";
      v15 = 1026;
      v16 = [v0 processIdentifier];
      _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:peer process is missing entitlement to contribute data, entitlement:%{public, location:escape_only}s, process:%{public}d}", &v9, 0x22u);

      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }
    }

    v5 = qword_100019010;
    if (os_signpost_enabled(qword_100019010))
    {
      v6 = v5;
      v7 = [v0 processIdentifier];
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "com.apple.countryd.contribute";
      v15 = 1026;
      v16 = v7;
      _os_signpost_emit_with_name_impl(&dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "peer process is missing entitlement to contribute data", "{msg%{public}.0s:peer process is missing entitlement to contribute data, entitlement:%{public, location:escape_only}s, process:%{public}d}", &v9, 0x22u);
    }

    v2 = 0;
  }

  return v2;
}

id sub_100001930()
{
  v0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.RegulatoryDomain"];
  v1 = [v0 BOOLForKey:@"UpdatesLocked"];

  return v1;
}

uint64_t sub_100001994()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000019E0()
{
  if (&metaclass for LSKLocalStatusClient)
  {
    v0 = &nominal type descriptor for LSKLocalStatusClient == 0;
  }

  else
  {
    v0 = 1;
  }

  v3 = v0 || &type metadata for LSKLocalStatusClient == 0 || &type metadata accessor for LSKLocalStatusClient == 0 || &class metadata base offset for LSKLocalStatusClient == 0;
  v4 = !v3;
  if (v3)
  {
    sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v5 = sub_10000E534();
    sub_10000E424();
  }

  return v4;
}

id sub_100001B70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDSharerAvailability();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100001C20(unint64_t a1)
{
  v2 = sub_10000E364();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v69 - v8;
  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyDictionarySingleton;
  }

  v10 = sub_10000E594();
  if (!v10)
  {
    return &_swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v73 = v7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_10000E574();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v70 = v9;
  v71 = v3;
  v72 = v2;
  v13 = [v11 countryCode];
  v14 = &_swiftEmptyDictionarySingleton;
  if (v13)
  {
    v15 = v13;
    v16 = sub_10000E434();
    v18 = v17;

    v19 = sub_100002258(v16, v18);
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __src = &_swiftEmptyDictionarySingleton;
    sub_100008500(v19, v21, 0xD000000000000032, 0x800000010000FCF0, isUniquelyReferenced_nonNull_native);
    v14 = __src;
  }

  if (v10 < 1)
  {
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v74 = v14;
  v75 = v12;
  v23 = 0;
  v24 = &_swiftEmptyArrayStorage;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = sub_10000E574();
    }

    else
    {
      v25 = *(a1 + 8 * v23 + 32);
    }

    v26 = v25;
    v27 = [v25 countryCode];
    if (v27)
    {
      v28 = v27;
      v29 = sub_10000E434();
      v31 = v30;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100007618(0, *(v24 + 2) + 1, 1, v24);
      }

      v33 = *(v24 + 2);
      v32 = *(v24 + 3);
      if (v33 >= v32 >> 1)
      {
        v24 = sub_100007618((v32 > 1), v33 + 1, 1, v24);
      }

      *(v24 + 2) = v33 + 1;
      v34 = &v24[16 * v33];
      *(v34 + 4) = v29;
      *(v34 + 5) = v31;
    }

    else
    {
    }

    ++v23;
  }

  while (v10 != v23);
  v35 = objc_opt_self();
  isa = sub_10000E4B4().super.isa;

  __src = 0;
  v37 = [v35 dataWithJSONObject:isa options:0 error:&__src];

  v38 = __src;
  if (v37)
  {
    v39 = sub_10000E304();
    v41 = v40;

    sub_100008D08(v39, v41);
    v42 = v74;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    __src = v42;
    sub_100008500(v39, v41, 0xD000000000000033, 0x800000010000FCB0, v43);
    sub_100008D5C(v39, v41);
    v44 = __src;
  }

  else
  {
    v46 = v38;
    sub_10000E2B4();

    swift_willThrow();

    v44 = v74;
  }

  v45 = v75;
  v47 = [v75 timestamp];
  if (v47)
  {
    v48 = v73;
    v49 = v47;
    sub_10000E334();

    v51 = v70;
    v50 = v71;
    v52 = v72;
    (*(v71 + 32))(v70, v48, v72);
    sub_10000E314();
    __src = v53;
    v54 = sub_100008AB0(&__src, &v80);
    v56 = v55;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v44;
    sub_100008500(v54, v56 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000030, 0x800000010000FC70, v57);
    (*(v50 + 8))(v51, v52);
    v44 = v76;
  }

  LODWORD(v76) = 0;
  v58 = kRDPrioritySingleLocation;
  if ([v45 priorityIsAtLeast:kRDPrioritySingleLocation] || (v58 = kRDPriorityNearbyCellsMCC, objc_msgSend(v45, "priorityIsAtLeast:", kRDPriorityNearbyCellsMCC)) || (v58 = kRDPriorityServingCellMCC, objc_msgSend(v45, "priorityIsAtLeast:", kRDPriorityServingCellMCC)) || (v58 = kRDPriorityWiFiAP, objc_msgSend(v45, "priorityIsAtLeast:", kRDPriorityWiFiAP)))
  {
    LODWORD(v76) = v58;
  }

  v59 = sub_100008AB0(&v76, &v76 + 4);
  v61 = v60;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  __src = v44;
  sub_100008500(v59, v61 & 0xFFFFFFFFFFFFFFLL, 0xD00000000000002FLL, 0x800000010000FC00, v62);
  v63 = __src;
  if ([v45 isInDisputedArea])
  {
    v77 = [v45 isInDisputedArea];
    v64 = sub_100008AB0(&v77, v78);
    v66 = v65;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    __src = v63;
    sub_100008500(v64, v66 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000031, 0x800000010000FC30, v67);

    return __src;
  }

  else
  {
  }

  return v63;
}

uint64_t sub_100002258(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100008DB0(&qword_100018FE0, &qword_10000FB60);
  if (swift_dynamicCast())
  {
    sub_100009D58(__src, &v41);
    sub_100009D70(&v41, v42);
    sub_10000E294();
    __src[0] = v40;
    sub_100009DB4(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100009C7C(__src, &qword_100018FE8, &qword_10000FB68);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_10000E584();
  }

  sub_100007CCC(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100008B68(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_100007D94(sub_100009CDC);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_10000E2E4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1000089E4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_10000E464();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_10000E494();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_10000E584();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1000089E4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_10000E474();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_10000E2F4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_10000E2F4();
    sub_100009D44(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100009D44(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_100008D08(*&__src[0], *(&__src[0] + 1));

  sub_100008D5C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100002780()
{
  v1 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1000027C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100002880@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000E3F4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1000029B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1000098C0(v4 + v8, a4, a2, a3);
}

uint64_t sub_100002A3C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_100008DF8(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_100002B24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_100008DB0(a1, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

id sub_100002C28()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100002C5C()
{
  *&v0[OBJC_IVAR____TtC8countryd14RDStatusSharer_statusClient] = 0;
  v1 = OBJC_IVAR____TtC8countryd14RDStatusSharer_options;
  v2 = sub_10000E3F4();
  v55 = *(*(v2 - 8) + 56);
  v55(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusKey;
  v4 = sub_100008DB0(&qword_100018E80, &qword_10000F9F8);
  v5 = *(v4 - 8);
  v57 = *(v5 + 56);
  v58 = v4;
  v56 = v5 + 56;
  v57(&v0[v3], 1, 1);
  v6 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusesKey;
  v7 = sub_100008DB0(&qword_100018E90, &qword_10000FA08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(&v0[v6], 1, 1, v7);
  v59.receiver = v0;
  v59.super_class = type metadata accessor for RDStatusSharer();
  v11 = objc_msgSendSuper2(&v59, "init");
  if (&class metadata base offset for LSKLocalStatusClient && &type metadata accessor for LSKLocalStatusClient && &type metadata for LSKLocalStatusClient && &metaclass for LSKLocalStatusClient && &nominal type descriptor for LSKLocalStatusClient)
  {
    v12 = sub_10000E3B4();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v54 = v11;
    v15 = v11;
    v16 = sub_10000E3A4();
    v17 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusClient;
    swift_beginAccess();
    v18 = *&v15[v17];
    *&v15[v17] = v16;

    v50 = &v48;
    v19 = (*(*(sub_100008DB0(&qword_100018E78, &qword_10000F9F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    (__chkstk_darwin)();
    v53 = v9;
    v21 = &v48 - v20;
    v22 = sub_10000E3D4();
    v52 = v7;
    v23 = *(*(v22 - 8) + 64);
    (__chkstk_darwin)();
    v51 = v10;
    (*(v25 + 104))(&v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for LSKStatusOptions.Scope.sameAccount(_:));
    sub_100008DB0(&qword_100018EA0, &qword_10000FA18);
    v26 = sub_10000E3C4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10000F9A0;
    (*(v27 + 104))(v30 + v29, enum case for LSKStatusOptions.DeviceType.n301(_:), v26);
    sub_10000E3E4();
    v55(v21, 0, 1, v2);
    v31 = OBJC_IVAR____TtC8countryd14RDStatusSharer_options;
    swift_beginAccess();
    sub_100008DF8(v21, &v15[v31], &qword_100018E78, &qword_10000F9F0);
    swift_endAccess();
    v32 = sub_100008DB0(&qword_100018E88, &qword_10000FA00);
    v55 = &v48;
    v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    (__chkstk_darwin)();
    v35 = &v48 - v34;
    v36 = sub_10000E414();
    v48 = &v48;
    v37 = *(v36 - 8);
    v38 = *(v37 + 64);
    __chkstk_darwin(v36);
    v50 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = enum case for LSKDomain.regulatory(_:);
    v49 = *(v37 + 104);
    v49(&v48 - v50, enum case for LSKDomain.regulatory(_:), v36);
    sub_100008DB0(&qword_100018EA8, &qword_10000FA20);
    sub_100008F48(&qword_100018EB0, sub_100008EF4);
    sub_100008F48(&qword_100018EC0, sub_100008FCC);
    sub_10000E404();
    (v57)(v35, 0, 1, v58);
    v40 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusKey;
    swift_beginAccess();
    sub_100008DF8(v35, &v15[v40], &qword_100018E88, &qword_10000FA00);
    swift_endAccess();
    v41 = sub_100008DB0(&qword_100018E98, &qword_10000FA10);
    v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v43 = __chkstk_darwin(v41 - 8);
    v45 = &v48 - v44;
    __chkstk_darwin(v43);
    v49(&v48 - v50, v39, v36);
    sub_100008DB0(&qword_100018ED0, &qword_10000FA28);
    sub_100009020();
    sub_1000090DC();
    sub_10000E404();
    v53(v45, 0, 1, v52);
    v46 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusesKey;
    swift_beginAccess();
    sub_100008DF8(v45, &v15[v46], &qword_100018E98, &qword_10000FA10);
    swift_endAccess();

    return v54;
  }

  return v11;
}

uint64_t sub_100003448(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(sub_100003468, 0, 0);
}

uint64_t sub_100003468()
{
  if (&class metadata base offset for LSKLocalStatusClient)
  {
    v1 = &type metadata accessor for LSKLocalStatusClient == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || &type metadata for LSKLocalStatusClient == 0 || &metaclass for LSKLocalStatusClient == 0 || &nominal type descriptor for LSKLocalStatusClient == 0)
  {
    sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v14 = sub_10000E534();
    sub_10000E424();

    goto LABEL_18;
  }

  v5 = (*((swift_isaMask & **(v0 + 96)) + 0x70))();
  *(v0 + 104) = v5;
  if (!v5)
  {
LABEL_18:
    v15 = *(v0 + 8);

    return v15();
  }

  v6 = *(v0 + 96);
  v7 = sub_100008DB0(&qword_100018E80, &qword_10000F9F8);
  *(v0 + 112) = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  *(v0 + 120) = v8;
  v10 = *(v8 + 64) + 15;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  v12 = *(*(sub_100008DB0(&qword_100018E88, &qword_10000FA00) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  (*((swift_isaMask & *v6) + 0xA0))();
  if ((*(v9 + 48))(v13, 1, v7) == 1)
  {

    sub_100009C7C(v13, &qword_100018E88, &qword_10000FA00);

    goto LABEL_18;
  }

  v17 = *(v0 + 96);
  (*(v9 + 32))(v11, v13, v7);

  v40 = v11;
  v18 = sub_10000E3F4();
  *(v0 + 136) = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  *(v0 + 144) = v19;
  v21 = *(v19 + 64) + 15;
  v38 = swift_task_alloc();
  *(v0 + 152) = v38;
  v22 = *(*(sub_100008DB0(&qword_100018E78, &qword_10000F9F0) - 8) + 64) + 15;
  v23 = swift_task_alloc();
  (*((swift_isaMask & *v17) + 0x88))();
  if ((*(v20 + 48))(v23, 1, v18) == 1)
  {
    (*(v9 + 8))(v40, v7);

    sub_100009C7C(v23, &qword_100018E78, &qword_10000F9F0);

    goto LABEL_18;
  }

  v24 = *(v0 + 88);
  (*(v20 + 32))(v38, v23, v18);

  v25 = sub_100008DB0(&qword_100018EE8, &qword_10000FA38);
  *(v0 + 160) = v25;
  *(v0 + 168) = *(*(v25 - 8) + 64);
  v26 = swift_task_alloc();
  *(v0 + 176) = v26;
  if (v24)
  {
    v27 = *(v0 + 88);
    sub_100008DB0(&qword_100018F50, &qword_10000FA78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000F9B0;
    *(inited + 32) = v27;
    v29 = v27;
    v30 = sub_100001C20(inited);
    swift_setDeallocating();
    v31 = *(inited + 16);
    swift_arrayDestroy();
  }

  else
  {
    v30 = sub_100009198(&_swiftEmptyArrayStorage);
  }

  *(v0 + 184) = v30;
  v32 = *(v25 + 48);
  *(v0 + 72) = v30;
  v33 = async function pointer to LSKLocalStatusClient.publish<A>(_:for:options:)[1];
  v34 = swift_task_alloc();
  *(v0 + 192) = v34;
  v35 = sub_100008DB0(&qword_100018EA8, &qword_10000FA20);
  v36 = sub_100008F48(&qword_100018EB0, sub_100008EF4);
  v37 = sub_100008F48(&qword_100018EC0, sub_100008FCC);
  sub_1000092B0();
  *v34 = v0;
  v34[1] = sub_100003ADC;

  return LSKLocalStatusClient.publish<A>(_:for:options:)(v26, v26 + v32, v0 + 72, v40, v38, v35, v36, v37);
}

uint64_t sub_100003ADC()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_100004C48;
  }

  else
  {
    v4 = sub_100003C0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100003C0C()
{
  v64 = v0;
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21] + 15;
  v4 = sub_100008DB0(&qword_100018F00, &qword_10000FA40);
  v0[26] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v0[27] = v5;
  v7 = *(v5 + 64) + 15;
  v8 = swift_task_alloc();
  v0[28] = v8;
  v9 = swift_task_alloc();
  sub_1000098C0(v1, v9, &qword_100018EE8, &qword_10000FA38);
  v10 = *(v2 + 48);
  if ((*(v6 + 48))(v9 + v10, 1, v4) == 1)
  {
    v11 = v0[22];
    v12 = v0[21] + 15;
    sub_100009C7C(v9 + v10, &qword_100018F08, &qword_10000FA48);
    v13 = sub_100008DB0(&qword_100018F10, &qword_10000FA50);
    v14 = *(*(v13 - 8) + 8);
    v14(v9, v13);

    v15 = sub_10000E524();
    v16 = swift_task_alloc();
    sub_1000098C0(v11, v16, &qword_100018EE8, &qword_10000FA38);
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v17 = sub_10000E534();
    v18 = os_log_type_enabled(v17, v15);
    v62 = v0[22];
    if (v18)
    {
      v54 = v15;
      v19 = v0[20];
      v57 = v0[17];
      v58 = v0[19];
      v59 = v0[15];
      v60 = v0[14];
      v61 = v0[16];
      v55 = v0[13];
      v56 = v0[18];
      v20 = v0[21] + 15;
      v21 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v63 = v53;
      *v21 = 136315138;
      v22 = swift_task_alloc();
      sub_1000098C0(v16, v22, &qword_100018EE8, &qword_10000FA38);
      v23 = *(v19 + 48);
      v52 = sub_10000E374();
      v25 = v24;
      sub_100009C7C(v16, &qword_100018EE8, &qword_10000FA38);
      v14(v22, v13);
      sub_100009C7C(v22 + v23, &qword_100018F08, &qword_10000FA48);

      v26 = sub_100007724(v52, v25, &v63);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_100000000, v17, v54, "Not scanning for deliveries? %s", v21, 0xCu);
      sub_100009DB4(v53);

      sub_100009C7C(v62, &qword_100018EE8, &qword_10000FA38);
      (*(v56 + 8))(v58, v57);
      (*(v59 + 8))(v61, v60);
    }

    else
    {
      v41 = v0[18];
      v40 = v0[19];
      v43 = v0[16];
      v42 = v0[17];
      v44 = v0[14];
      v45 = v0[15];
      v46 = v0[13];

      sub_100009C7C(v16, &qword_100018EE8, &qword_10000FA38);
      sub_100009C7C(v62, &qword_100018EE8, &qword_10000FA38);
      (*(v41 + 8))(v40, v42);
      (*(v45 + 8))(v43, v44);
    }

    v47 = v0[22];
    v48 = v0[19];
    v49 = v0[16];

    v50 = v0[1];

    return v50();
  }

  else
  {
    (*(v6 + 32))(v8, v9 + v10, v4);
    v27 = sub_100008DB0(&qword_100018F10, &qword_10000FA50);
    v0[29] = v27;
    v28 = *(v27 - 8);
    v0[30] = v28;
    v29 = *(v28 + 8);
    v0[31] = v29;
    v0[32] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v9, v27);

    v30 = sub_100008DB0(&qword_100018F18, &qword_10000FA58);
    v0[33] = v30;
    v31 = *(v30 - 8);
    v0[34] = v31;
    v32 = *(v31 + 64) + 15;
    v0[35] = swift_task_alloc();
    sub_10000E384();
    v33 = *(*(sub_100008DB0(&qword_100018F20, &qword_10000FA60) - 8) + 64) + 15;
    v0[36] = swift_task_alloc();
    v34 = sub_100009388();
    v35 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v36 = swift_task_alloc();
    v0[37] = v36;
    *v36 = v0;
    v36[1] = sub_100004264;
    v38 = v0[35];
    v37 = v0[36];
    v39 = v0[33];

    return dispatch thunk of AsyncIteratorProtocol.next()(v37, v39, v34);
  }
}

uint64_t sub_100004264()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_100004A5C;
  }

  else
  {
    v3 = sub_100004378;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004378()
{
  v66 = v0;
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[30];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);

    v4 = sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v5 = sub_10000E534();
    v57 = v4;
    v6 = os_log_type_enabled(v5, v4);
    v7 = v0[27];
    v61 = v0[26];
    v63 = v0[28];
    v8 = v0[22];
    v9 = v0[18];
    v10 = v0[19];
    v11 = v0[16];
    v12 = v0[17];
    v14 = v0[14];
    v13 = v0[15];
    v58 = v8;
    v60 = v0[13];
    if (v6)
    {
      buf = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v65 = v51;
      *buf = 136315138;
      v55 = v10;
      v56 = v14;
      v15 = sub_10000E364();
      v16 = *(v15 - 8);
      v17 = *(v16 + 64) + 15;
      v54 = v13;
      v18 = swift_task_alloc();
      sub_10000E344();
      v52 = v12;
      v53 = v11;
      v19 = sub_10000E324();
      v20 = *(v19 - 8);
      v21 = *(v20 + 64) + 15;
      v22 = swift_task_alloc();
      sub_10000E214();
      sub_1000093E0();
      sub_10000E354();
      (*(v20 + 8))(v22, v19);
      (*(v16 + 8))(v18, v15);

      v23 = sub_100007724(v0[7], v0[8], &v65);

      *(buf + 4) = v23;
      _os_log_impl(&dword_100000000, v5, v57, "Deliveries completed at %s", buf, 0xCu);
      sub_100009DB4(v51);

      (*(v7 + 8))(v63, v61);
      sub_100009C7C(v58, &qword_100018EE8, &qword_10000FA38);
      (*(v9 + 8))(v55, v52);
      (*(v54 + 8))(v53, v56);
    }

    else
    {

      (*(v7 + 8))(v63, v61);
      sub_100009C7C(v58, &qword_100018EE8, &qword_10000FA38);
      (*(v9 + 8))(v10, v12);
      (*(v13 + 8))(v11, v14);
    }

    v44 = v0[28];
    v45 = v0[22];
    v46 = v0[19];
    v47 = v0[16];

    v48 = v0[1];

    return v48();
  }

  else
  {
    v62 = v0[31];
    v64 = v0[32];
    v24 = *(v3 + 64) + 15;
    v59 = swift_task_alloc();
    (*(v3 + 32))(v59, v1, v2);
    sub_10000E514();
    sub_100008DB0(&qword_100018F40, &qword_10000FA70);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10000F9C0;
    v26 = sub_10000E364();
    v27 = *(v26 - 8);
    v28 = *(v27 + 64) + 15;
    v29 = swift_task_alloc();
    sub_10000E344();
    v30 = sub_10000E324();
    v31 = *(v30 - 8);
    v32 = *(v31 + 64) + 15;
    v33 = swift_task_alloc();
    sub_10000E214();
    *(v25 + 56) = &type metadata for String;
    v34 = sub_100009438();
    *(v25 + 64) = v34;
    sub_1000093E0();
    sub_10000E354();
    (*(v31 + 8))(v33, v30);
    (*(v27 + 8))(v29, v26);

    v35 = sub_10000E374();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v34;
    *(v25 + 72) = v35;
    *(v25 + 80) = v36;
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v37 = sub_10000E534();
    sub_10000E424();

    v62(v59, v2);

    v38 = sub_100009388();
    v39 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v40 = swift_task_alloc();
    v0[37] = v40;
    *v40 = v0;
    v40[1] = sub_100004264;
    v42 = v0[35];
    v41 = v0[36];
    v43 = v0[33];

    return dispatch thunk of AsyncIteratorProtocol.next()(v41, v43, v38);
  }
}

uint64_t sub_100004A5C()
{
  *(v0 + 80) = *(v0 + 304);
  sub_100008DB0(&qword_100018F30, &qword_10000FA68);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100004AF0, 0, 0);
}

uint64_t sub_100004AF0()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = v0[22];
  v8 = v0[18];
  v17 = v0[17];
  v18 = v0[19];
  v20 = v0[16];
  v21 = v0[36];
  v9 = v0[15];
  v19 = v0[14];
  v10 = v0[13];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_100009C7C(v7, &qword_100018EE8, &qword_10000FA38);
  (*(v8 + 8))(v18, v17);
  (*(v9 + 8))(v20, v19);

  v11 = v0[38];
  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[16];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100004C48()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];

  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100004EA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100004F60;

  return sub_100003448(a1);
}

uint64_t sub_100004F60()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_10000E2A4();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000050FC(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_10000511C, 0, 0);
}

uint64_t sub_10000511C()
{
  if (&class metadata base offset for LSKLocalStatusClient)
  {
    v1 = &type metadata accessor for LSKLocalStatusClient == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || &type metadata for LSKLocalStatusClient == 0 || &metaclass for LSKLocalStatusClient == 0 || &nominal type descriptor for LSKLocalStatusClient == 0)
  {
    sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v14 = sub_10000E534();
    sub_10000E424();

    goto LABEL_18;
  }

  v5 = (*((swift_isaMask & **(v0 + 56)) + 0x70))();
  *(v0 + 64) = v5;
  if (!v5)
  {
LABEL_18:
    v15 = *(v0 + 8);

    return v15();
  }

  v6 = *(v0 + 56);
  v7 = sub_100008DB0(&qword_100018E80, &qword_10000F9F8);
  *(v0 + 72) = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  *(v0 + 80) = v8;
  v10 = *(v8 + 64) + 15;
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  v12 = *(*(sub_100008DB0(&qword_100018E88, &qword_10000FA00) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  (*((swift_isaMask & *v6) + 0xA0))();
  if ((*(v9 + 48))(v13, 1, v7) == 1)
  {

    sub_100009C7C(v13, &qword_100018E88, &qword_10000FA00);

    goto LABEL_18;
  }

  v17 = *(v0 + 56);
  (*(v9 + 32))(v11, v13, v7);

  v36 = v11;
  v18 = sub_10000E3F4();
  *(v0 + 96) = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  *(v0 + 104) = v19;
  v21 = *(v19 + 64) + 15;
  v34 = swift_task_alloc();
  *(v0 + 112) = v34;
  v22 = *(*(sub_100008DB0(&qword_100018E78, &qword_10000F9F0) - 8) + 64) + 15;
  v23 = swift_task_alloc();
  (*((swift_isaMask & *v17) + 0x88))();
  if ((*(v20 + 48))(v23, 1, v18) == 1)
  {
    (*(v9 + 8))(v36, v7);

    sub_100009C7C(v23, &qword_100018E78, &qword_10000F9F0);

    goto LABEL_18;
  }

  v24 = *(v0 + 48);
  (*(v20 + 32))(v34, v23, v18);

  v25 = sub_100008DB0(&qword_100018EE8, &qword_10000FA38);
  *(v0 + 120) = v25;
  *(v0 + 128) = *(*(v25 - 8) + 64);
  v26 = swift_task_alloc();
  *(v0 + 136) = v26;
  if (v24)
  {
    v27 = sub_100001C20(*(v0 + 48));
  }

  else
  {
    v27 = sub_100009198(&_swiftEmptyArrayStorage);
  }

  *(v0 + 144) = v27;
  v28 = *(v25 + 48);
  *(v0 + 32) = v27;
  v29 = async function pointer to LSKLocalStatusClient.publish<A>(_:for:options:)[1];
  v30 = swift_task_alloc();
  *(v0 + 152) = v30;
  v31 = sub_100008DB0(&qword_100018EA8, &qword_10000FA20);
  v32 = sub_100008F48(&qword_100018EB0, sub_100008EF4);
  v33 = sub_100008F48(&qword_100018EC0, sub_100008FCC);
  sub_1000092B0();
  *v30 = v0;
  v30[1] = sub_10000572C;

  return LSKLocalStatusClient.publish<A>(_:for:options:)(v26, v26 + v28, v0 + 32, v36, v34, v31, v32, v33);
}

uint64_t sub_10000572C()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_100006898;
  }

  else
  {
    v4 = sub_10000585C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000585C()
{
  v64 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16] + 15;
  v4 = sub_100008DB0(&qword_100018F00, &qword_10000FA40);
  v0[21] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v0[22] = v5;
  v7 = *(v5 + 64) + 15;
  v8 = swift_task_alloc();
  v0[23] = v8;
  v9 = swift_task_alloc();
  sub_1000098C0(v1, v9, &qword_100018EE8, &qword_10000FA38);
  v10 = *(v2 + 48);
  if ((*(v6 + 48))(v9 + v10, 1, v4) == 1)
  {
    v11 = v0[17];
    v12 = v0[16] + 15;
    sub_100009C7C(v9 + v10, &qword_100018F08, &qword_10000FA48);
    v13 = sub_100008DB0(&qword_100018F10, &qword_10000FA50);
    v14 = *(*(v13 - 8) + 8);
    v14(v9, v13);

    v15 = sub_10000E524();
    v16 = swift_task_alloc();
    sub_1000098C0(v11, v16, &qword_100018EE8, &qword_10000FA38);
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v17 = sub_10000E534();
    v18 = os_log_type_enabled(v17, v15);
    v62 = v0[17];
    if (v18)
    {
      v54 = v15;
      v19 = v0[15];
      v57 = v0[12];
      v58 = v0[14];
      v59 = v0[10];
      v60 = v0[9];
      v61 = v0[11];
      v55 = v0[8];
      v56 = v0[13];
      v20 = v0[16] + 15;
      v21 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v63 = v53;
      *v21 = 136315138;
      v22 = swift_task_alloc();
      sub_1000098C0(v16, v22, &qword_100018EE8, &qword_10000FA38);
      v23 = *(v19 + 48);
      v52 = sub_10000E374();
      v25 = v24;
      sub_100009C7C(v16, &qword_100018EE8, &qword_10000FA38);
      v14(v22, v13);
      sub_100009C7C(v22 + v23, &qword_100018F08, &qword_10000FA48);

      v26 = sub_100007724(v52, v25, &v63);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_100000000, v17, v54, "Not scanning for deliveries? %s", v21, 0xCu);
      sub_100009DB4(v53);

      sub_100009C7C(v62, &qword_100018EE8, &qword_10000FA38);
      (*(v56 + 8))(v58, v57);
      (*(v59 + 8))(v61, v60);
    }

    else
    {
      v41 = v0[13];
      v40 = v0[14];
      v43 = v0[11];
      v42 = v0[12];
      v44 = v0[9];
      v45 = v0[10];
      v46 = v0[8];

      sub_100009C7C(v16, &qword_100018EE8, &qword_10000FA38);
      sub_100009C7C(v62, &qword_100018EE8, &qword_10000FA38);
      (*(v41 + 8))(v40, v42);
      (*(v45 + 8))(v43, v44);
    }

    v47 = v0[17];
    v48 = v0[14];
    v49 = v0[11];

    v50 = v0[1];

    return v50();
  }

  else
  {
    (*(v6 + 32))(v8, v9 + v10, v4);
    v27 = sub_100008DB0(&qword_100018F10, &qword_10000FA50);
    v0[24] = v27;
    v28 = *(v27 - 8);
    v0[25] = v28;
    v29 = *(v28 + 8);
    v0[26] = v29;
    v0[27] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v9, v27);

    v30 = sub_100008DB0(&qword_100018F18, &qword_10000FA58);
    v0[28] = v30;
    v31 = *(v30 - 8);
    v0[29] = v31;
    v32 = *(v31 + 64) + 15;
    v0[30] = swift_task_alloc();
    sub_10000E384();
    v33 = *(*(sub_100008DB0(&qword_100018F20, &qword_10000FA60) - 8) + 64) + 15;
    v0[31] = swift_task_alloc();
    v34 = sub_100009388();
    v35 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v36 = swift_task_alloc();
    v0[32] = v36;
    *v36 = v0;
    v36[1] = sub_100005EB4;
    v38 = v0[30];
    v37 = v0[31];
    v39 = v0[28];

    return dispatch thunk of AsyncIteratorProtocol.next()(v37, v39, v34);
  }
}

uint64_t sub_100005EB4()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1000066AC;
  }

  else
  {
    v3 = sub_100005FC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005FC8()
{
  v66 = v0;
  v1 = v0[31];
  v2 = v0[24];
  v3 = v0[25];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    v4 = sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v5 = sub_10000E534();
    v57 = v4;
    v6 = os_log_type_enabled(v5, v4);
    v7 = v0[22];
    v61 = v0[21];
    v63 = v0[23];
    v8 = v0[17];
    v9 = v0[13];
    v10 = v0[14];
    v11 = v0[11];
    v12 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    v58 = v8;
    v60 = v0[8];
    if (v6)
    {
      buf = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v65 = v51;
      *buf = 136315138;
      v55 = v10;
      v56 = v14;
      v15 = sub_10000E364();
      v16 = *(v15 - 8);
      v17 = *(v16 + 64) + 15;
      v54 = v13;
      v18 = swift_task_alloc();
      sub_10000E344();
      v52 = v12;
      v53 = v11;
      v19 = sub_10000E324();
      v20 = *(v19 - 8);
      v21 = *(v20 + 64) + 15;
      v22 = swift_task_alloc();
      sub_10000E214();
      sub_1000093E0();
      sub_10000E354();
      (*(v20 + 8))(v22, v19);
      (*(v16 + 8))(v18, v15);

      v23 = sub_100007724(v0[2], v0[3], &v65);

      *(buf + 4) = v23;
      _os_log_impl(&dword_100000000, v5, v57, "Deliveries completed at %s", buf, 0xCu);
      sub_100009DB4(v51);

      (*(v7 + 8))(v63, v61);
      sub_100009C7C(v58, &qword_100018EE8, &qword_10000FA38);
      (*(v9 + 8))(v55, v52);
      (*(v54 + 8))(v53, v56);
    }

    else
    {

      (*(v7 + 8))(v63, v61);
      sub_100009C7C(v58, &qword_100018EE8, &qword_10000FA38);
      (*(v9 + 8))(v10, v12);
      (*(v13 + 8))(v11, v14);
    }

    v44 = v0[23];
    v45 = v0[17];
    v46 = v0[14];
    v47 = v0[11];

    v48 = v0[1];

    return v48();
  }

  else
  {
    v62 = v0[26];
    v64 = v0[27];
    v24 = *(v3 + 64) + 15;
    v59 = swift_task_alloc();
    (*(v3 + 32))(v59, v1, v2);
    sub_10000E514();
    sub_100008DB0(&qword_100018F40, &qword_10000FA70);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10000F9C0;
    v26 = sub_10000E364();
    v27 = *(v26 - 8);
    v28 = *(v27 + 64) + 15;
    v29 = swift_task_alloc();
    sub_10000E344();
    v30 = sub_10000E324();
    v31 = *(v30 - 8);
    v32 = *(v31 + 64) + 15;
    v33 = swift_task_alloc();
    sub_10000E214();
    *(v25 + 56) = &type metadata for String;
    v34 = sub_100009438();
    *(v25 + 64) = v34;
    sub_1000093E0();
    sub_10000E354();
    (*(v31 + 8))(v33, v30);
    (*(v27 + 8))(v29, v26);

    v35 = sub_10000E374();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v34;
    *(v25 + 72) = v35;
    *(v25 + 80) = v36;
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v37 = sub_10000E534();
    sub_10000E424();

    v62(v59, v2);

    v38 = sub_100009388();
    v39 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v40 = swift_task_alloc();
    v0[32] = v40;
    *v40 = v0;
    v40[1] = sub_100005EB4;
    v42 = v0[30];
    v41 = v0[31];
    v43 = v0[28];

    return dispatch thunk of AsyncIteratorProtocol.next()(v41, v43, v38);
  }
}

uint64_t sub_1000066AC()
{
  *(v0 + 40) = *(v0 + 264);
  sub_100008DB0(&qword_100018F30, &qword_10000FA68);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100006740, 0, 0);
}

uint64_t sub_100006740()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[13];
  v17 = v0[12];
  v18 = v0[14];
  v20 = v0[11];
  v21 = v0[31];
  v9 = v0[10];
  v19 = v0[9];
  v10 = v0[8];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_100009C7C(v7, &qword_100018EE8, &qword_10000FA38);
  (*(v8 + 8))(v18, v17);
  (*(v9 + 8))(v20, v19);

  v11 = v0[33];
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100006898()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100006AF0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    sub_100009A98(0, &qword_100018FC8, RDEstimate_ptr);
    v6 = sub_10000E4C4();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100006BE4;

  return sub_1000050FC(v6);
}

uint64_t sub_100006BE4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_10000E2A4();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

id sub_100006DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100006E68(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100009E20;

  return v7();
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100007038;

  return v8();
}

uint64_t sub_100007038()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008DB0(&qword_100018FC0, &qword_10000FAE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000098C0(a3, v25 - v11, &qword_100018FC0, &qword_10000FAE0);
  v13 = sub_10000E504();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100009C7C(v12, &qword_100018FC0, &qword_10000FAE0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000E4F4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_10000E4D4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_10000E444() + 32;
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

    sub_100009C7C(a3, &qword_100018FC0, &qword_10000FAE0);

    return v23;
  }

LABEL_8:
  sub_100009C7C(a3, &qword_100018FC0, &qword_10000FAE0);
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

uint64_t sub_100007428(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007520;

  return v7(a1);
}

uint64_t sub_100007520()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_100007618(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008DB0(&qword_100018FF0, qword_10000FB70);
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

uint64_t sub_100007724(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000077F0(v11, 0, 0, 1, a1, a2);
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
    sub_100009C1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009DB4(v11);
  return v7;
}

unint64_t sub_1000077F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000078FC(a5, a6);
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
    result = sub_10000E584();
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

char *sub_1000078FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100007948(a1, a2);
  sub_100007A78(&off_100014788);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100007948(uint64_t a1, unint64_t a2)
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

  v6 = sub_100007B64(v5, 0);
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

  result = sub_10000E584();
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
        v10 = sub_10000E464();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007B64(v10, 0);
        result = sub_10000E554();
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

uint64_t sub_100007A78(uint64_t result)
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

  result = sub_100007BD8(result, v12, 1, v3);
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

void *sub_100007B64(uint64_t a1, uint64_t a2)
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

  sub_100008DB0(&qword_100018FD0, &qword_10000FB50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007BD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008DB0(&qword_100018FD0, &qword_10000FB50);
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

uint64_t sub_100007CCC@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100008AB0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_10000E284();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_10000E234();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_10000E2D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_100007D94(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100008D5C(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100008D5C(v6, v5);
    *v3 = xmmword_10000F9D0;
    sub_100008D5C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_10000E244() && __OFSUB__(v6, sub_10000E274()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_10000E284();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_10000E224();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_100008930(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100008D5C(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_10000F9D0;
    sub_100008D5C(0, 0xC000000000000000);
    sub_10000E2C4();
    result = sub_100008930(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_100008138@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100008AB0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100008C08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100008C84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_1000081CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000E5F4();
  sub_10000E454();
  v6 = sub_10000E604();

  return sub_100008688(a1, a2, v6);
}

uint64_t sub_100008244(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100008DB0(&qword_100018FD8, &qword_10000FB58);
  v36 = a2;
  result = sub_10000E5B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_100008D08(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_10000E5F4();
      sub_10000E454();
      result = sub_10000E604();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100008500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000081CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100008244(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1000081CC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_10000E5E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100008740();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_100008D5C(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

unint64_t sub_100008688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000E5D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100008740()
{
  v1 = v0;
  sub_100008DB0(&qword_100018FD8, &qword_10000FB58);
  v2 = *v0;
  v3 = sub_10000E5A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100008D08(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000088C4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100008930(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_10000E244();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_10000E274();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_10000E264();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000089E4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10000E4A4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_10000E484();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100008A60@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_10000E564();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100008AB0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100008B68(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_10000E284();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_10000E254();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_10000E2D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100008C08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_10000E284();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_10000E234();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10000E2D4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100008C84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_10000E284();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_10000E234();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100008D08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008D5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008DB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008DB0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for RDStatusSharer()
{
  result = qword_100019258;
  if (!qword_100019258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008EAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008EF4()
{
  result = qword_100018EB8;
  if (!qword_100018EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EB8);
  }

  return result;
}

uint64_t sub_100008F48(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008EAC(&qword_100018EA8, &qword_10000FA20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100008FCC()
{
  result = qword_100018EC8;
  if (!qword_100018EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EC8);
  }

  return result;
}

unint64_t sub_100009020()
{
  result = qword_100018ED8;
  if (!qword_100018ED8)
  {
    sub_100008EAC(&qword_100018ED0, &qword_10000FA28);
    sub_100008F48(&qword_100018EB0, sub_100008EF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018ED8);
  }

  return result;
}

unint64_t sub_1000090DC()
{
  result = qword_100018EE0;
  if (!qword_100018EE0)
  {
    sub_100008EAC(&qword_100018ED0, &qword_10000FA28);
    sub_100008F48(&qword_100018EC0, sub_100008FCC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EE0);
  }

  return result;
}

unint64_t sub_100009198(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008DB0(&qword_100018FD8, &qword_10000FB58);
    v3 = sub_10000E5C4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100008D08(v7, v8);
      result = sub_1000081CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000092B0()
{
  result = qword_100018EF0;
  if (!qword_100018EF0)
  {
    sub_100008EAC(&qword_100018EA8, &qword_10000FA20);
    sub_100009334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EF0);
  }

  return result;
}

unint64_t sub_100009334()
{
  result = qword_100018EF8;
  if (!qword_100018EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EF8);
  }

  return result;
}

unint64_t sub_100009388()
{
  result = qword_100018F28;
  if (!qword_100018F28)
  {
    sub_100008EAC(&qword_100018F18, &qword_10000FA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018F28);
  }

  return result;
}

unint64_t sub_1000093E0()
{
  result = qword_100018F38;
  if (!qword_100018F38)
  {
    sub_10000E324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018F38);
  }

  return result;
}

unint64_t sub_100009438()
{
  result = qword_100018F48;
  if (!qword_100018F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018F48);
  }

  return result;
}

void sub_100009494()
{
  sub_1000095D4();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000962C(319, &qword_100018FB0, &qword_100018E80, &qword_10000F9F8);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000962C(319, &qword_100018FB8, &qword_100018E90, &qword_10000FA08);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000095D4()
{
  if (!qword_100018FA8)
  {
    sub_10000E3F4();
    v0 = sub_10000E544();
    if (!v1)
    {
      atomic_store(v0, &qword_100018FA8);
    }
  }
}

void sub_10000962C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100008EAC(a3, a4);
    v5 = sub_10000E544();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100009680()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009E20;

  return sub_100006AF0(v2, v3, v4);
}

uint64_t sub_100009734()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009E20;

  return sub_100006E68(v2, v3, v5);
}

uint64_t sub_1000097F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009E20;

  return sub_100006F50(a1, v4, v5, v7);
}

uint64_t sub_1000098C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008DB0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009928(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009E20;

  return sub_100007428(a1, v5);
}

uint64_t sub_1000099E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007038;

  return sub_100007428(a1, v5);
}

uint64_t sub_100009A98(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100009AE0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009B28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007038;

  return sub_100004EA0(v2, v3, v4);
}

uint64_t sub_100009BDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009C1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009C7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008DB0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100009CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1000088C4(sub_100009E00, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_100009D44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008D5C(a1, a2);
  }

  return a1;
}

uint64_t sub_100009D58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100009D70(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100009DB4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void start()
{
  if (qword_100018FF8 != -1)
  {
    dispatch_once(&qword_100018FF8, &stru_1000149F0);
  }

  v0 = qword_100019000;
  if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Starting countryd}", v4, 0x12u);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_1000149B0);
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(RDCommServer);
  v3 = qword_100019268;
  qword_100019268 = v2;

  objc_autoreleasePoolPop(v1);
  dispatch_main();
}

void sub_100009F28(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    if (qword_100018FF8 != -1)
    {
      dispatch_once(&qword_100018FF8, &stru_1000149F0);
    }

    v4 = qword_100019000;
    if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = string;
      _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Got Darwin notification, notification:%{public, location:escape_only}s}", &v7, 0x1Cu);
    }

    if (!strcmp("com.apple.os-eligibility-domain.input-needed", string))
    {
      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_1000149F0);
      }

      v5 = qword_100019000;
      if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 68289026;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        _os_log_impl(&dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:eligibility engine wants input}", &v7, 0x12u);
      }

      v6 = +[RDCachedData loadCache];
      [v6 postResultsToEligibilityEngine];
    }
  }
}

void sub_10000A114(id a1)
{
  qword_100019000 = os_log_create("com.apple.countryd", "Daemon");

  _objc_release_x1();
}

void sub_10000BD7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dataCache];
  v4 = [v3 getEstimateForPeerDeviceWithID:*(a1 + 48)];
  v5 = v4;
  if (v2)
  {
    v6 = *(a1 + 32);

    if (v5 != v6)
    {
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v7 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 48);
        v9 = v8;
        v10 = v7;
        v11 = [v8 UTF8String];
        v12 = *(a1 + 32);
        v25 = 68289538;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        v30 = v11;
        v31 = 2114;
        v32 = v12;
        _os_log_impl(&dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:updating estimate for peer, peer:%{public, location:escape_only}s, estimate:%{public, location:escape_only}@}", &v25, 0x26u);
      }

      v13 = [*(a1 + 40) dataCache];
      [v13 setEstimate:*(a1 + 32) forPeerDeviceWithID:*(a1 + 48)];
      goto LABEL_23;
    }

    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v18 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 48);
      v20 = v19;
      v13 = v18;
      v25 = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = [v19 UTF8String];
      v21 = "{msg%{public}.0s:estimate for peer unchanged, ignoring, peer:%{public, location:escape_only}s}";
LABEL_22:
      _os_log_impl(&dword_100000000, v13, OS_LOG_TYPE_INFO, v21, &v25, 0x1Cu);
LABEL_23:
    }
  }

  else
  {

    if (v5)
    {
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v14 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 48);
        v16 = v15;
        v17 = v14;
        v25 = 68289282;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        v30 = [v15 UTF8String];
        _os_log_impl(&dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:peer went away, peer:%{public, location:escape_only}s}", &v25, 0x1Cu);
      }

      v13 = [*(a1 + 40) dataCache];
      [v13 removeEstimateForPeerDeviceWithID:*(a1 + 48)];
      goto LABEL_23;
    }

    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v22 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 48);
      v24 = v23;
      v13 = v22;
      v25 = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = [v23 UTF8String];
      v21 = "{msg%{public}.0s:peer already not used, nothing to do, peer:%{public, location:escape_only}s}";
      goto LABEL_22;
    }
  }
}

void sub_10000C1C4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_100018FF8 != -1)
    {
      dispatch_once(&qword_100018FF8, &stru_100014AD8);
    }

    v3 = qword_100019000;
    if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 description];
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:failed to share status with peers, error:%{public, location:escape_only}@}", &v9, 0x1Cu);

      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_100014AD8);
      }
    }

    v6 = qword_100019000;
    if (os_signpost_enabled(qword_100019000))
    {
      v7 = v6;
      v8 = [(NSError *)v2 description];
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v8;
      _os_signpost_emit_with_name_impl(&dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to share status with peers", "{msg%{public}.0s:failed to share status with peers, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }
}

void sub_10000C3EC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_100018FF8 != -1)
    {
      dispatch_once(&qword_100018FF8, &stru_100014AD8);
    }

    v3 = qword_100019000;
    if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 description];
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:failed to clear status to peers, error:%{public, location:escape_only}@}", &v9, 0x1Cu);

      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_100014AD8);
      }
    }

    v6 = qword_100019000;
    if (os_signpost_enabled(qword_100019000))
    {
      v7 = v6;
      v8 = [(NSError *)v2 description];
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v8;
      _os_signpost_emit_with_name_impl(&dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to clear status to peers", "{msg%{public}.0s:failed to clear status to peers, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }
}

void sub_10000D0C8(id a1)
{
  qword_100019010 = os_log_create("com.apple.countryd", "Shared");

  _objc_release_x1();
}

void sub_10000D10C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.countryd.serialqueue", v3);
  v2 = qword_100019270;
  qword_100019270 = v1;
}

void sub_10000D170(id a1)
{
  qword_100019000 = os_log_create("com.apple.countryd", "Daemon");

  _objc_release_x1();
}

void sub_10000E1D0(id a1)
{
  qword_100019000 = os_log_create("com.apple.countryd", "Daemon");

  _objc_release_x1();
}