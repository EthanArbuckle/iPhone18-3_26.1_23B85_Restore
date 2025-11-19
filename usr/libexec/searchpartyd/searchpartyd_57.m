void sub_1005FB414(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a6;
  v63 = a5;
  v60 = a1;
  v61 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1000BC4D4(&qword_10169EF20, &qword_10139FC08);
  v59 = *(v57 - 8);
  v11 = *(v59 + 64);
  __chkstk_darwin(v57);
  v58 = &v57 - v12;
  v13 = type metadata accessor for StableIdentifier();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v57 - v19;
  v21 = type metadata accessor for OwnedBeaconRecord();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = (&v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = &v57 - v27;
  v65 = a2;
  sub_100AA33AC(a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000B3A8(v20, &unk_1016A9A20, &qword_10138B280);
LABEL_10:
    v34 = v66;
LABEL_11:
    v37 = v64;
    v38 = *(type metadata accessor for LocationFetcher() + 32);
    sub_10062CD24(v62, v26, type metadata accessor for OwnedBeaconRecord);
    v39 = v67;
    (*(v67 + 16))(v37, v65, v34);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v34;
      v43 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68 = v66;
      *v43 = 141558787;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      LODWORD(v65) = v41;
      v44 = *(v21 + 20);
      sub_100009774(&qword_101696930, &type metadata accessor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      sub_10062CBB8(v26, type metadata accessor for OwnedBeaconRecord);
      v48 = sub_1000136BC(v45, v47, &v68);

      *(v43 + 14) = v48;
      *(v43 + 22) = 2160;
      *(v43 + 24) = 1752392040;
      *(v43 + 32) = 2081;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v39 + 8))(v37, v42);
      v52 = sub_1000136BC(v49, v51, &v68);

      *(v43 + 34) = v52;
      _os_log_impl(&_mh_execute_header, v40, v65, "Multipart beacon %{private,mask.hash}s peerIdentifiersWithMultipartPosition did not find partId for %{private,mask.hash}s.", v43, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v39 + 8))(v37, v34);
      sub_10062CBB8(v26, type metadata accessor for OwnedBeaconRecord);
    }

    return;
  }

  sub_10062CC64(v20, v28, type metadata accessor for OwnedBeaconRecord);
  sub_10062CD24(&v28[*(v21 + 24)], v16, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10062CBB8(v28, type metadata accessor for OwnedBeaconRecord);
    sub_10062CBB8(v16, type metadata accessor for StableIdentifier);
    goto LABEL_10;
  }

  v29 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
  v30 = *&v16[v29[12] + 8];

  v31 = *&v16[v29[16] + 8];

  v32 = *&v16[v29[20] + 8];

  v33 = v16[v29[24]];
  v34 = v66;
  (*(v67 + 8))(v16, v66);
  v35 = *(v61 + 16);
  if (!v35)
  {
LABEL_8:
    sub_10062CBB8(v28, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_11;
  }

  v36 = 0;
  while (*(v61 + 32 + v36) != v33)
  {
    if (v35 == ++v36)
    {
      goto LABEL_8;
    }
  }

  if (v36 > 0xFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v58;
  v53 = *(v57 + 48);
  (*(v67 + 16))(v58, v65, v34);
  *(v13 + v53) = v36;
  v33 = v60;
  v26 = *v60;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_20:
    v26 = sub_100A5D518(0, v26[2] + 1, 1, v26);
  }

  v54 = v59;
  v56 = v26[2];
  v55 = v26[3];
  if (v56 >= v55 >> 1)
  {
    v26 = sub_100A5D518(v55 > 1, v56 + 1, 1, v26);
  }

  sub_10062CBB8(v28, type metadata accessor for OwnedBeaconRecord);
  v26[2] = v56 + 1;
  sub_1000D2AD8(v13, v26 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v56, &qword_10169EF20, &qword_10139FC08);
  *v33 = v26;
}

Swift::Int sub_1005FBB98(void **a1)
{
  v2 = *(type metadata accessor for FetchRequestBeacon(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32174(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1006075A8(v6, type metadata accessor for FetchRequestBeacon, sub_100607E20, sub_1006076F8);
  *a1 = v3;
  return result;
}

Swift::Int sub_1005FBC7C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B32188(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1006074A0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1005FBCE8(void **a1)
{
  v2 = *(type metadata accessor for RawSearchResult() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3219C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1006075A8(v6, type metadata accessor for RawSearchResult, sub_100609128, sub_100607BBC);
  *a1 = v3;
  return result;
}

void sub_1005FBDCC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for SharedBeaconRecord(0);
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_101697750, &qword_1013B3560);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &unk_101698C30, &unk_101392630);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for SharedBeaconRecord);
      sub_10062CD24(v82, v103, type metadata accessor for SharedBeaconRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5C0C8(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5C0C8(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for SharedBeaconRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for SharedBeaconRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1005FC9CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for OwnedBeaconGroup(0);
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A5AF8, &unk_1013B3630);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &unk_1016AF8B0, &unk_1013A0700);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for OwnedBeaconGroup);
      sub_10062CD24(v82, v103, type metadata accessor for OwnedBeaconGroup);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5C3D4(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5C3D4(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for OwnedBeaconGroup);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for OwnedBeaconGroup);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1005FD5CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&qword_1016A5A88, &qword_1013B35B0);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for PairingErrorRecord(0);
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A5A90, &qword_1013B35B8);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &qword_1016A5A88, &qword_1013B35B0);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for PairingErrorRecord);
      sub_10062CD24(v82, v103, type metadata accessor for PairingErrorRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5C480(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5C480(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for PairingErrorRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for PairingErrorRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1005FE1CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for LostModeRecord();
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A5B18, &unk_1013B3660);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &unk_1016A99E0, &qword_1013A07B0);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for LostModeRecord);
      sub_10062CD24(v82, v103, type metadata accessor for LostModeRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5C8F4(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5C8F4(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for LostModeRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for LostModeRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1005FEDCC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for KeyAlignmentRecord();
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A5AF0, &unk_1013B3620);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &qword_10169F328, &unk_1013CB040);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for KeyAlignmentRecord);
      sub_10062CD24(v82, v103, type metadata accessor for KeyAlignmentRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5C91C(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5C91C(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for KeyAlignmentRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for KeyAlignmentRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1005FF9CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for ShareRecord();
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A59F8, &qword_1013B34F8);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &qword_1016A4780, &qword_1013B34F0);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for ShareRecord);
      sub_10062CD24(v82, v103, type metadata accessor for ShareRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5C944(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5C944(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for ShareRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for ShareRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1006005CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for SafeLocation();
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A59B0, &qword_1013B34D0);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &unk_1016AFA10, &qword_1013CB000);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for SafeLocation);
      sub_10062CD24(v82, v103, type metadata accessor for SafeLocation);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5C96C(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5C96C(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for SafeLocation);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for SafeLocation);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1006011CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for BeaconEstimatedLocation();
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A58C8, &unk_1013B32D0);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &unk_101696940, &unk_10138B210);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for BeaconEstimatedLocation);
      sub_10062CD24(v82, v103, type metadata accessor for BeaconEstimatedLocation);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5D0A0(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5D0A0(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for BeaconEstimatedLocation);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for BeaconEstimatedLocation);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_100601DCC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for WildModeAssociationRecord(0);
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A5B00, &unk_1013B3640);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &unk_1016C7C90, &qword_1013BB4B0);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for WildModeAssociationRecord);
      sub_10062CD24(v82, v103, type metadata accessor for WildModeAssociationRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5D218(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5D218(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for WildModeAssociationRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for WildModeAssociationRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1006029CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  found = type metadata accessor for NotifyWhenFoundRecord();
  v104 = *(found - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(found);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = found;
    v113 = found;
    sub_1000BC4D4(&qword_1016A5AE8, &unk_1013B3610);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &qword_10169E328, &unk_10139D740);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for NotifyWhenFoundRecord);
      sub_10062CD24(v82, v103, type metadata accessor for NotifyWhenFoundRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5D9C0(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5D9C0(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for NotifyWhenFoundRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for NotifyWhenFoundRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1006035CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&qword_1016A5B08, &qword_101410E70);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for LostModeInfoRecord();
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A5B10, &unk_1013B3650);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &qword_1016A5B08, &qword_101410E70);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for LostModeInfoRecord);
      sub_10062CD24(v82, v103, type metadata accessor for LostModeInfoRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5DC68(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5DC68(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for LostModeInfoRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for LostModeInfoRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1006041CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for LeashRecord();
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A5B20, &qword_1013B3670);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &qword_1016B1500, &unk_1013C57F0);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for LeashRecord);
      sub_10062CD24(v82, v103, type metadata accessor for LeashRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5E398(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5E398(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for LeashRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for LeashRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_100604DCC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&qword_1016A5B30, &qword_101410EC0);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_1016A5B38, &unk_1013B36F0);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &qword_1016A5B30, &qword_101410EC0);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for SecureLocationsCachedSharedKey);
      sub_10062CD24(v82, v103, type metadata accessor for SecureLocationsCachedSharedKey);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5E664(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5E664(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for SecureLocationsCachedSharedKey);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for SecureLocationsCachedSharedKey);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1006059CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for SharingCircleSecret();
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_101697748, &unk_10138C400);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &qword_101699BB0, &qword_1013B35F0);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for SharingCircleSecret);
      sub_10062CD24(v82, v103, type metadata accessor for SharingCircleSecret);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5B984(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5B984(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for SharingCircleSecret);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for SharingCircleSecret);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

void sub_1006065CC(uint64_t a1, uint64_t a2, size_t *a3, size_t *a4)
{
  v98 = a4;
  v101 = a2;
  v6 = type metadata accessor for BeaconStoreFileRecord();
  v97 = *(v6 - 8);
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v96 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = v91 - v10;
  v99 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = v91 - v12;
  v100 = type metadata accessor for BeaconNamingRecord();
  v104 = *(v100 - 8);
  v13 = v104[8];
  v14 = __chkstk_darwin(v100);
  v103 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v91 - v16;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v91 - v20;
  v22 = type metadata accessor for UUID();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  __chkstk_darwin(v22);
  v112 = v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for URL();
  v106 = *(v111 - 8);
  v25 = *(v106 + 64);
  v26 = __chkstk_darwin(v111);
  v107 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v91 - v28;
  if (URL.pathExtension.getter() == 0x64726F636572 && v30 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      static os_log_type_t.info.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_101385D80;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = sub_100008C00();
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v81 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  v95 = v17;
  v92 = a3;
  v93 = v6;
  v110 = v4;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v111;
  v33(v29, v111);
  UUID.init(uuidString:)();

  v36 = v108;
  v35 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = URL.description.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    (*(v36 + 32))(v112, v21, v35);
    URL.deletingPathExtension()();
    v41 = v107;
    URL.deletingLastPathComponent()();
    v91[1] = v32;
    v94 = v33;
    v33(v29, v34);
    v42._object = 0x800000010135B5A0;
    v42._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v42);
    v43 = v100;
    v113 = v100;
    sub_1000BC4D4(&qword_101697758, &qword_10138C410);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = objc_autoreleasePoolPush();
    v48 = *(v101 + 16);
    __chkstk_darwin(v47);
    v49 = v112;
    v91[-6] = v50;
    v91[-5] = v49;
    v91[-4] = v41;
    v91[-3] = v44;
    v91[-2] = v46;
    v51 = v102;
    v52 = v110;
    OS_dispatch_queue.sync<A>(execute:)();
    v110 = v52;
    objc_autoreleasePoolPop(v47);

    v53 = v104;
    if ((v104[6])(v51, 1, v43) == 1)
    {
      sub_10000B3A8(v51, &unk_1016B29E0, &unk_1013B70E0);
      LODWORD(v104) = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10138BBE0;
      v55 = UUID.uuidString.getter();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100008C00();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_100009774(&qword_1016B14E0, &type metadata accessor for URL);
      v59 = v111;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v60;
      *(v54 + 80) = v61;
      os_log(_:dso:log:_:_:)();

      v62 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v63 = v105;
      URL.appendingPathExtension(_:)();
      v64 = v59;
      v65 = v59;
      v66 = v94;
      v94(v29, v64);
      objc_autoreleasePoolPop(v62);
      v67 = *(v93 + 20);
      v104 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();
      v68 = v65;

      URL.appendingPathExtension(_:)();
      v66(v29, v65);
      objc_autoreleasePoolPop(v104);
      (*(v106 + 56))(v63 + v67, 0, 1, v65);
      v69 = v96;
      sub_10062CD24(v63, v96, type metadata accessor for BeaconStoreFileRecord);
      v70 = v98;
      v71 = *v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = sub_100A5C0A0(0, v71[2] + 1, 1, v71);
        *v70 = v71;
      }

      v73 = v97;
      v75 = v71[2];
      v74 = v71[3];
      if (v75 >= v74 >> 1)
      {
        *v70 = sub_100A5C0A0(v74 > 1, v75 + 1, 1, v71);
      }

      sub_10062CBB8(v105, type metadata accessor for BeaconStoreFileRecord);
      v76 = *v70;
      *(v76 + 16) = v75 + 1;
      sub_10062CC64(v69, v76 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v75, type metadata accessor for BeaconStoreFileRecord);
      v94(v107, v68);
    }

    else
    {
      v82 = v95;
      sub_10062CC64(v51, v95, type metadata accessor for BeaconNamingRecord);
      sub_10062CD24(v82, v103, type metadata accessor for BeaconNamingRecord);
      v83 = v92;
      v84 = *v92;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *v83 = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_100A5C388(0, v84[2] + 1, 1, v84);
        *v83 = v84;
      }

      v86 = v111;
      v87 = v94;
      v89 = v84[2];
      v88 = v84[3];
      if (v89 >= v88 >> 1)
      {
        *v83 = sub_100A5C388(v88 > 1, v89 + 1, 1, v84);
      }

      sub_10062CBB8(v95, type metadata accessor for BeaconNamingRecord);
      v90 = *v83;
      *(v90 + 16) = v89 + 1;
      sub_10062CC64(v103, v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v53[9] * v89, type metadata accessor for BeaconNamingRecord);
      v87(v107, v86);
    }

    (*(v108 + 8))(v112, v109);
  }
}

uint64_t sub_1006071CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 400))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_10060722C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_10060723C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  v3 = *(*(type metadata accessor for AccessoryMetadata(0) - 8) + 80);
  return a1;
}

uint64_t sub_1006072A4@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100607310(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

Swift::Int sub_1006074A0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&qword_1016A58D0, &qword_1013B3310);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100608784(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100607960(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1006075A8(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1006076F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v8 = *(*(RequestBeacon - 8) + 64);
  v9 = __chkstk_darwin(RequestBeacon);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v35 = *a4;
    v29 = v18;
    v22 = v35 + v18 * a3;
LABEL_5:
    v33 = v19;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v19;
    while (1)
    {
      sub_10062CD24(v22, v17, type metadata accessor for FetchRequestBeacon);
      sub_10062CD24(v23, v13, type metadata accessor for FetchRequestBeacon);
      v24 = UUID.hashValue.getter();
      v25 = UUID.hashValue.getter();
      sub_10062CBB8(v13, type metadata accessor for FetchRequestBeacon);
      result = sub_10062CBB8(v17, type metadata accessor for FetchRequestBeacon);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v19 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_10062CC64(v22, v36, type metadata accessor for FetchRequestBeacon);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10062CC64(v26, v23, type metadata accessor for FetchRequestBeacon);
      v23 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100607960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for Date();
  v8 = *(*(v39 - 8) + 64);
  v9 = __chkstk_darwin(v39);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v15 = &v27 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = (v13 + 8);
    v32 = *a4;
    v17 = v32 + 40 * a3;
    v18 = a1 - a3;
LABEL_5:
    v30 = v17;
    v31 = a3;
    v29 = v18;
    while (1)
    {
      sub_10001F280(v17, &v36);
      sub_10001F280(v17 - 40, v33);
      v19 = v37;
      v20 = v38;
      sub_1000035D0(&v36, v37);
      (*(v20 + 8))(v19, v20);
      v21 = v34;
      v22 = v35;
      sub_1000035D0(v33, v34);
      (*(v22 + 8))(v21, v22);
      LOBYTE(v21) = static Date.< infix(_:_:)();
      v23 = *v16;
      v24 = v39;
      (*v16)(v11, v39);
      v23(v15, v24);
      sub_100007BAC(v33);
      result = sub_100007BAC(&v36);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v17 = v30 + 40;
        v18 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      sub_10000A748(v17, &v36);
      v25 = *(v17 - 24);
      *v17 = *(v17 - 40);
      *(v17 + 16) = v25;
      *(v17 + 32) = *(v17 - 8);
      result = sub_10000A748(&v36, v17 - 40);
      v17 -= 40;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100607BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for RawSearchResult();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_10062CD24(v24, v18, type metadata accessor for RawSearchResult);
      sub_10062CD24(v21, v14, type metadata accessor for RawSearchResult);
      v25 = *(v8 + 20);
      v26 = static Date.< infix(_:_:)();
      sub_10062CBB8(v14, type metadata accessor for RawSearchResult);
      result = sub_10062CBB8(v18, type metadata accessor for RawSearchResult);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_10062CC64(v24, v37, type metadata accessor for RawSearchResult);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10062CC64(v27, v21, type metadata accessor for RawSearchResult);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100607E20(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v110 = a1;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v116 = *(RequestBeacon - 8);
  v9 = *(v116 + 64);
  v10 = __chkstk_darwin(RequestBeacon);
  v113 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v121 = &v105 - v13;
  v14 = __chkstk_darwin(v12);
  v124 = &v105 - v15;
  result = __chkstk_darwin(v14);
  v123 = &v105 - v17;
  v118 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100B31E68(v20);
      v20 = result;
    }

    v125 = v20;
    v101 = *(v20 + 2);
    if (v101 >= 2)
    {
      while (*v118)
      {
        v102 = *&v20[16 * v101];
        v103 = *&v20[16 * v101 + 24];
        sub_100609A8C(*v118 + *(v116 + 72) * v102, *v118 + *(v116 + 72) * *&v20[16 * v101 + 16], *v118 + *(v116 + 72) * v103, v5);
        if (v6)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100B31E68(v20);
        }

        if (v101 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v104 = &v20[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v103;
        v125 = v20;
        result = sub_100B31DDC(v101 - 1);
        v20 = v125;
        v101 = *(v125 + 2);
        if (v101 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v107 = a4;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    if (v19 + 1 >= v18)
    {
      v31 = v19 + 1;
    }

    else
    {
      v119 = v18;
      v108 = v6;
      v23 = *v118;
      v24 = *(v116 + 72);
      v5 = *v118 + v24 * v22;
      v25 = v123;
      sub_10062CD24(v5, v123, type metadata accessor for FetchRequestBeacon);
      v26 = v23 + v24 * v21;
      v27 = v21;
      v28 = v124;
      sub_10062CD24(v26, v124, type metadata accessor for FetchRequestBeacon);
      v115 = UUID.hashValue.getter();
      v114 = UUID.hashValue.getter();
      sub_10062CBB8(v28, type metadata accessor for FetchRequestBeacon);
      result = sub_10062CBB8(v25, type metadata accessor for FetchRequestBeacon);
      v109 = v27;
      v29 = v27 + 2;
      v117 = v24;
      v30 = v23 + v24 * (v27 + 2);
      while (1)
      {
        v31 = v119;
        if (v119 == v29)
        {
          break;
        }

        LODWORD(v120) = v115 < v114;
        v32 = v123;
        sub_10062CD24(v30, v123, type metadata accessor for FetchRequestBeacon);
        v33 = v124;
        sub_10062CD24(v5, v124, type metadata accessor for FetchRequestBeacon);
        v34 = UUID.hashValue.getter();
        v35 = UUID.hashValue.getter();
        sub_10062CBB8(v33, type metadata accessor for FetchRequestBeacon);
        result = sub_10062CBB8(v32, type metadata accessor for FetchRequestBeacon);
        ++v29;
        v30 += v117;
        v5 += v117;
        if (((v120 ^ (v34 >= v35)) & 1) == 0)
        {
          v31 = v29 - 1;
          break;
        }
      }

      v6 = v108;
      v21 = v109;
      if (v115 < v114)
      {
        if (v31 < v109)
        {
          goto LABEL_123;
        }

        if (v109 < v31)
        {
          v106 = v20;
          v36 = v108;
          v37 = v117 * (v31 - 1);
          v5 = v31 * v117;
          v38 = v31;
          v39 = v31;
          v40 = v109 * v117;
          do
          {
            if (v21 != --v39)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_129;
              }

              sub_10062CC64(v41 + v40, v113, type metadata accessor for FetchRequestBeacon);
              if (v40 < v37 || v41 + v40 >= (v41 + v5))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10062CC64(v113, v41 + v37, type metadata accessor for FetchRequestBeacon);
            }

            ++v21;
            v37 -= v117;
            v5 -= v117;
            v40 += v117;
          }

          while (v21 < v39);
          v6 = v36;
          v20 = v106;
          v21 = v109;
          v31 = v38;
        }
      }
    }

    v42 = v118[1];
    if (v31 < v42)
    {
      if (__OFSUB__(v31, v21))
      {
        goto LABEL_122;
      }

      if (v31 - v21 < v107)
      {
        if (__OFADD__(v21, v107))
        {
          goto LABEL_124;
        }

        if (v21 + v107 >= v42)
        {
          v43 = v118[1];
        }

        else
        {
          v43 = v21 + v107;
        }

        if (v43 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v31 != v43)
        {
          break;
        }
      }
    }

    v19 = v31;
    if (v31 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v45 = *(v20 + 2);
    v44 = *(v20 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_100A5B430((v44 > 1), v45 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v46;
    v47 = &v20[16 * v45];
    *(v47 + 4) = v21;
    *(v47 + 5) = v19;
    v48 = *v110;
    if (!*v110)
    {
      goto LABEL_131;
    }

    if (v45)
    {
      while (1)
      {
        v5 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v49 = *(v20 + 4);
          v50 = *(v20 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_52:
          if (v52)
          {
            goto LABEL_110;
          }

          v65 = &v20[16 * v46];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_113;
          }

          v71 = &v20[16 * v5 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_117;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v5 = v46 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v75 = &v20[16 * v46];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_66:
        if (v70)
        {
          goto LABEL_112;
        }

        v78 = &v20[16 * v5];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_115;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_73:
        v86 = v5 - 1;
        if (v5 - 1 >= v46)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v118)
        {
          goto LABEL_128;
        }

        v87 = *&v20[16 * v86 + 32];
        v88 = *&v20[16 * v5 + 40];
        sub_100609A8C(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v20[16 * v5 + 32], *v118 + *(v116 + 72) * v88, v48);
        if (v6)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100B31E68(v20);
        }

        if (v86 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v89 = &v20[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        v125 = v20;
        result = sub_100B31DDC(v5);
        v20 = v125;
        v46 = *(v125 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v20[16 * v46 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_108;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_109;
      }

      v60 = &v20[16 * v46];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_111;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_114;
      }

      if (v64 >= v56)
      {
        v82 = &v20[16 * v5 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_118;
        }

        if (v51 < v85)
        {
          v5 = v46 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v118[1];
    if (v19 >= v18)
    {
      goto LABEL_94;
    }
  }

  v106 = v20;
  v108 = v6;
  v109 = v21;
  v90 = *v118;
  v91 = *(v116 + 72);
  v5 = *v118 + v91 * (v31 - 1);
  v92 = -v91;
  v93 = v21 - v31;
  v119 = v31;
  v120 = v90;
  v111 = v91;
  v112 = v43;
  v94 = v90 + v31 * v91;
LABEL_85:
  v114 = v94;
  v115 = v93;
  v117 = v5;
  while (1)
  {
    v95 = v123;
    sub_10062CD24(v94, v123, type metadata accessor for FetchRequestBeacon);
    v96 = v124;
    sub_10062CD24(v5, v124, type metadata accessor for FetchRequestBeacon);
    v97 = UUID.hashValue.getter();
    v98 = UUID.hashValue.getter();
    sub_10062CBB8(v96, type metadata accessor for FetchRequestBeacon);
    result = sub_10062CBB8(v95, type metadata accessor for FetchRequestBeacon);
    if (v97 >= v98)
    {
LABEL_84:
      v19 = v112;
      v5 = v117 + v111;
      v93 = v115 - 1;
      v94 = v114 + v111;
      if (++v119 != v112)
      {
        goto LABEL_85;
      }

      v6 = v108;
      v21 = v109;
      v20 = v106;
      if (v112 < v109)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v120)
    {
      break;
    }

    v99 = v121;
    sub_10062CC64(v94, v121, type metadata accessor for FetchRequestBeacon);
    swift_arrayInitWithTakeFrontToBack();
    sub_10062CC64(v99, v5, type metadata accessor for FetchRequestBeacon);
    v5 += v92;
    v94 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100608784(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v113 = a1;
  v124 = type metadata accessor for Date();
  v9 = *(*(v124 - 8) + 64);
  v10 = __chkstk_darwin(v124);
  v123 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v122 = &v110 - v14;
  v15 = *(a3 + 8);
  v115 = a3;
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_93:
    v5 = *v113;
    if (!*v113)
    {
      goto LABEL_133;
    }

    a4 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_127:
      result = sub_100B31E68(a4);
    }

    v131 = result;
    v105 = *(result + 16);
    if (v105 >= 2)
    {
      a4 = 40;
      while (1)
      {
        v106 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v107 = *(result + 16 * v105);
        v108 = result;
        a3 = *(result + 16 * (v105 - 1) + 40);
        sub_100609FE8((v106 + 40 * v107), (v106 + 40 * *(result + 16 * (v105 - 1) + 32)), (v106 + 40 * a3), v5);
        if (v6)
        {
        }

        if (a3 < v107)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_100B31E68(v108);
        }

        if (v105 - 2 >= *(v108 + 2))
        {
          goto LABEL_121;
        }

        v109 = &v108[16 * v105];
        *v109 = v107;
        *(v109 + 1) = a3;
        v131 = v108;
        sub_100B31DDC(v105 - 1);
        result = v131;
        v105 = *(v131 + 16);
        a3 = v115;
        if (v105 <= 1)
        {
        }
      }
    }
  }

  v16 = 0;
  v121 = (v13 + 8);
  v17 = _swiftEmptyArrayStorage;
  v112 = a4;
  while (1)
  {
    v114 = v17;
    if (v16 + 1 >= v15)
    {
      v37 = v16 + 1;
    }

    else
    {
      v119 = v15;
      v111 = v6;
      v18 = *a3;
      sub_10001F280(*a3 + 40 * (v16 + 1), &v128);
      v5 = 40 * v16;
      v19 = v18 + 40 * v16;
      sub_10001F280(v19, v125);
      v20 = v129;
      v21 = v130;
      sub_1000035D0(&v128, v129);
      v22 = v122;
      (*(v21 + 8))(v20, v21);
      v24 = v126;
      v23 = v127;
      sub_1000035D0(v125, v126);
      v25 = v123;
      (*(v23 + 8))(v24, v23);
      LODWORD(v120) = static Date.< infix(_:_:)();
      v26 = v16;
      v27 = *v121;
      a4 = v124;
      (*v121)(v25, v124);
      v27(v22, a4);
      sub_100007BAC(v125);
      result = sub_100007BAC(&v128);
      v110 = v26;
      v28 = v26 + 2;
      v29 = v19 + 80;
      while (v119 != v28)
      {
        sub_10001F280(v29, &v128);
        sub_10001F280(v29 - 40, v125);
        v31 = v129;
        v30 = v130;
        sub_1000035D0(&v128, v129);
        v32 = v122;
        (*(v30 + 8))(v31, v30);
        v33 = v126;
        v34 = v127;
        sub_1000035D0(v125, v126);
        v35 = v123;
        (*(v34 + 8))(v33, v34);
        a4 = static Date.< infix(_:_:)() & 1;
        v36 = v124;
        v27(v35, v124);
        v27(v32, v36);
        sub_100007BAC(v125);
        result = sub_100007BAC(&v128);
        ++v28;
        v29 += 40;
        if ((v120 & 1) != a4)
        {
          v37 = v28 - 1;
          goto LABEL_11;
        }
      }

      v37 = v119;
      v6 = v111;
      a3 = v115;
      v16 = v110;
      if ((v120 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v37 < v110)
      {
        goto LABEL_124;
      }

      if (v110 < v37)
      {
        v38 = 40 * v37 - 40;
        v119 = v37;
        v39 = v37;
        v40 = v110;
        do
        {
          if (v40 != --v39)
          {
            v45 = *v115;
            if (!*v115)
            {
              goto LABEL_130;
            }

            v41 = v45 + v5;
            v42 = v45 + v38;
            sub_10000A748((v45 + v5), &v128);
            v43 = *(v42 + 32);
            v44 = *(v42 + 16);
            *v41 = *v42;
            *(v41 + 16) = v44;
            *(v41 + 32) = v43;
            result = sub_10000A748(&v128, v42);
          }

          ++v40;
          v38 -= 40;
          v5 += 40;
        }

        while (v40 < v39);
        a3 = v115;
        a4 = v112;
        v37 = v119;
      }

      else
      {
LABEL_20:
        a4 = v112;
      }
    }

    v46 = *(a3 + 8);
    if (v37 < v46)
    {
      if (__OFSUB__(v37, v16))
      {
        goto LABEL_123;
      }

      if (v37 - v16 < a4)
      {
        if (__OFADD__(v16, a4))
        {
          goto LABEL_125;
        }

        if ((v16 + a4) >= v46)
        {
          v47 = *(a3 + 8);
        }

        else
        {
          v47 = v16 + a4;
        }

        if (v47 < v16)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v37 != v47)
        {
          break;
        }
      }
    }

    v48 = v37;
    if (v37 < v16)
    {
      goto LABEL_122;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v114;
    }

    else
    {
      result = sub_100A5B430(0, *(v114 + 2) + 1, 1, v114);
      v17 = result;
    }

    a4 = *(v17 + 2);
    v49 = *(v17 + 3);
    v50 = a4 + 1;
    if (a4 >= v49 >> 1)
    {
      result = sub_100A5B430((v49 > 1), a4 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = v50;
    v51 = &v17[16 * a4];
    *(v51 + 4) = v16;
    *(v51 + 5) = v48;
    v52 = *v113;
    if (!*v113)
    {
      goto LABEL_132;
    }

    v116 = v48;
    if (a4)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v17 + 4);
          v54 = *(v17 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_51:
          if (v56)
          {
            goto LABEL_111;
          }

          v69 = &v17[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_114;
          }

          v75 = &v17[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_118;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v79 = &v17[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_65:
        if (v74)
        {
          goto LABEL_113;
        }

        v82 = &v17[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_116;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_72:
        a4 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v90 = v17;
        v91 = *&v17[16 * a4 + 32];
        v92 = *&v17[16 * v5 + 40];
        sub_100609FE8((*a3 + 40 * v91), (*a3 + 40 * *&v17[16 * v5 + 32]), (*a3 + 40 * v92), v52);
        if (v6)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_100B31E68(v90);
        }

        if (a4 >= *(v90 + 2))
        {
          goto LABEL_108;
        }

        v93 = &v90[16 * a4];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v131 = v90;
        result = sub_100B31DDC(v5);
        v17 = v131;
        v50 = *(v131 + 16);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v17[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_109;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_110;
      }

      v64 = &v17[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_112;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_115;
      }

      if (v68 >= v60)
      {
        v86 = &v17[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_119;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v15 = *(a3 + 8);
    v16 = v116;
    a4 = v112;
    if (v116 >= v15)
    {
      goto LABEL_93;
    }
  }

  v111 = v6;
  v120 = *a3;
  v5 = v120 + 40 * v37;
  v110 = v16;
  v94 = v16 - v37;
  v116 = v47;
LABEL_83:
  v118 = v5;
  v119 = v37;
  v117 = v94;
  while (1)
  {
    sub_10001F280(v5, &v128);
    sub_10001F280(v5 - 40, v125);
    v95 = v129;
    v96 = v130;
    sub_1000035D0(&v128, v129);
    v97 = v122;
    (*(v96 + 8))(v95, v96);
    v98 = v126;
    v99 = v127;
    sub_1000035D0(v125, v126);
    v100 = v123;
    (*(v99 + 8))(v98, v99);
    a4 = static Date.< infix(_:_:)();
    v101 = *v121;
    v102 = v124;
    (*v121)(v100, v124);
    v101(v97, v102);
    sub_100007BAC(v125);
    result = sub_100007BAC(&v128);
    if ((a4 & 1) == 0)
    {
LABEL_82:
      v37 = v119 + 1;
      v5 = v118 + 40;
      v48 = v116;
      v94 = v117 - 1;
      if (v119 + 1 != v116)
      {
        goto LABEL_83;
      }

      v6 = v111;
      a3 = v115;
      v16 = v110;
      if (v116 < v110)
      {
        goto LABEL_122;
      }

      goto LABEL_32;
    }

    if (!v120)
    {
      break;
    }

    sub_10000A748(v5, &v128);
    v103 = *(v5 - 24);
    *v5 = *(v5 - 40);
    *(v5 + 16) = v103;
    *(v5 + 32) = *(v5 - 8);
    sub_10000A748(&v128, v5 - 40);
    v5 -= 40;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_100609128(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for RawSearchResult();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_10060A510(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_10062CD24(v114 + v25 * v24, v19, type metadata accessor for RawSearchResult);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_10062CD24(v27, v120, type metadata accessor for RawSearchResult);
      v30 = *(v9 + 20);
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_10062CBB8(v29, type metadata accessor for RawSearchResult);
      result = sub_10062CBB8(v19, type metadata accessor for RawSearchResult);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_10062CD24(v32, v19, type metadata accessor for RawSearchResult);
        v33 = v120;
        sub_10062CD24(v5, v120, type metadata accessor for RawSearchResult);
        v34 = *(v121 + 20);
        v35 = static Date.< infix(_:_:)() & 1;
        sub_10062CBB8(v33, type metadata accessor for RawSearchResult);
        result = sub_10062CBB8(v19, type metadata accessor for RawSearchResult);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_10062CC64(v42 + v41, v111, type metadata accessor for RawSearchResult);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10062CC64(v111, v42 + v36, type metadata accessor for RawSearchResult);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_10062CD24(v5, v19, type metadata accessor for RawSearchResult);
    v96 = v120;
    sub_10062CD24(v93, v120, type metadata accessor for RawSearchResult);
    v97 = *(v9 + 20);
    a4 = static Date.< infix(_:_:)();
    sub_10062CBB8(v96, type metadata accessor for RawSearchResult);
    result = sub_10062CBB8(v19, type metadata accessor for RawSearchResult);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_10060A510(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100B31E68(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_100B31DDC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for RawSearchResult;
    v98 = v119;
    sub_10062CC64(v5, v119, type metadata accessor for RawSearchResult);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_10062CC64(v98, v93, type metadata accessor for RawSearchResult);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_100609A8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v8 = *(*(RequestBeacon - 8) + 64);
  v9 = __chkstk_darwin(RequestBeacon);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v51 = &v42 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v29 = a4 + v18;
      v45 = -v14;
      v46 = a1;
      do
      {
        v43 = v27;
        v30 = a2 + v28;
        v47 = a2;
        v48 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v53 = v43;
            goto LABEL_58;
          }

          v44 = v27;
          v31 = a4;
          v32 = a3 + v28;
          v33 = v29 + v28;
          v34 = v29 + v28;
          v35 = v51;
          v36 = v29;
          sub_10062CD24(v34, v51, type metadata accessor for FetchRequestBeacon);
          v37 = v30;
          v38 = v52;
          sub_10062CD24(v37, v52, type metadata accessor for FetchRequestBeacon);
          v49 = UUID.hashValue.getter();
          v39 = UUID.hashValue.getter();
          sub_10062CBB8(v38, type metadata accessor for FetchRequestBeacon);
          sub_10062CBB8(v35, type metadata accessor for FetchRequestBeacon);
          if (v49 < v39)
          {
            break;
          }

          v27 = v33;
          a4 = v31;
          if (a3 < v36 || v32 >= v36)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            v28 = v45;
            a1 = v46;
          }

          else
          {
            v40 = a3 == v36;
            a3 = v32;
            v28 = v45;
            a1 = v46;
            if (!v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v33;
          a2 = v47;
          v30 = v48;
          if (v33 <= a4)
          {
            goto LABEL_56;
          }
        }

        v41 = v36;
        a4 = v31;
        if (a3 < v47 || v32 >= v47)
        {
          a3 = v32;
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v45;
          a1 = v46;
          v27 = v44;
        }

        else
        {
          v40 = a3 == v47;
          a3 = v32;
          a2 = v48;
          v28 = v45;
          a1 = v46;
          v27 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v41;
      }

      while (v41 > a4);
    }

LABEL_56:
    v55 = a2;
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v48 = a3;
      do
      {
        v20 = v51;
        v21 = a2;
        sub_10062CD24(a2, v51, type metadata accessor for FetchRequestBeacon);
        v22 = v52;
        sub_10062CD24(a4, v52, type metadata accessor for FetchRequestBeacon);
        v23 = a4;
        v24 = UUID.hashValue.getter();
        v25 = UUID.hashValue.getter();
        sub_10062CBB8(v22, type metadata accessor for FetchRequestBeacon);
        sub_10062CBB8(v20, type metadata accessor for FetchRequestBeacon);
        if (v24 >= v25)
        {
          a4 = v23 + v14;
          if (a1 < v23 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v48;
          }

          else
          {
            v26 = v48;
            if (a1 != v23)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = v23 + v14;
          a2 = v21;
        }

        else
        {
          a4 = v23;
          if (a1 < v21 || a1 >= v21 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v21 + v14;
            v26 = v48;
          }

          else
          {
            v26 = v48;
            if (a1 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v21 + v14;
          }
        }

        a1 += v14;
        v55 = a1;
      }

      while (a4 < v49 && a2 < v26);
    }
  }

LABEL_58:
  sub_10060AD74(&v55, &v54, &v53, type metadata accessor for FetchRequestBeacon);
  return 1;
}

uint64_t sub_100609FE8(char *a1, char *a2, char *a3, char *a4)
{
  v75 = type metadata accessor for Date();
  v9 = *(*(v75 - 8) + 64);
  v10 = __chkstk_darwin(v75);
  v68 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v59 - v13;
  v14 = (a2 - a1) / 40;
  v15 = (a3 - a2) / 40;
  if (v14 >= v15)
  {
    if (a4 != a2 || &a2[40 * v15] <= a4)
    {
      v35 = v12;
      memmove(a4, a2, 40 * v15);
      v12 = v35;
    }

    v18 = &a4[40 * v15];
    v16 = a4;
    if (a3 - a2 < 40)
    {
      v34 = a2;
      goto LABEL_35;
    }

    v36 = a2;
    if (a2 <= a1)
    {
      v34 = a2;
      goto LABEL_35;
    }

    v61 = v4;
    v62 = (v12 + 8);
    v66 = a1;
    v63 = a4;
    while (1)
    {
      v60 = v36;
      v37 = (v36 - 40);
      v38 = (v18 - 40);
      v39 = a3 - 40;
      v64 = v36 - 40;
      while (1)
      {
        v65 = v39;
        v42 = v39 + 40;
        sub_10001F280(v38, v72);
        sub_10001F280(v37, v69);
        v43 = v73;
        v44 = v74;
        sub_1000035D0(v72, v73);
        v45 = v67;
        (*(v44 + 8))(v43, v44);
        v46 = v70;
        v47 = v71;
        sub_1000035D0(v69, v70);
        v48 = v68;
        (*(v47 + 8))(v46, v47);
        v49 = static Date.< infix(_:_:)();
        v50 = *v62;
        v51 = v75;
        (*v62)(v48, v75);
        v50(v45, v51);
        sub_100007BAC(v69);
        sub_100007BAC(v72);
        if (v49)
        {
          break;
        }

        v16 = v63;
        v52 = v65;
        if (v42 != (v38 + 40))
        {
          v53 = *v38;
          v54 = *(v38 + 16);
          *(v65 + 32) = *(v38 + 32);
          *v52 = v53;
          v52[1] = v54;
        }

        v40 = v38 - 40;
        v39 = v52 - 40;
        v41 = v38 > v16;
        v38 -= 40;
        v37 = v64;
        if (!v41)
        {
          v18 = (v40 + 40);
          v34 = v60;
          goto LABEL_35;
        }
      }

      v18 = (v38 + 40);
      v16 = v63;
      v34 = v64;
      a3 = v65;
      if (v42 != v60)
      {
        v55 = *v64;
        v56 = *(v64 + 1);
        *(v65 + 32) = *(v64 + 4);
        *a3 = v55;
        *(a3 + 1) = v56;
      }

      if (v18 > v16)
      {
        v36 = v34;
        if (v34 > v66)
        {
          continue;
        }
      }

      v18 = (v38 + 40);
      goto LABEL_35;
    }
  }

  v16 = a4;
  if (a4 != a1 || &a1[40 * v14] <= a4)
  {
    v17 = v12;
    memmove(a4, a1, 40 * v14);
    v12 = v17;
  }

  v18 = &a4[40 * v14];
  if (a2 - a1 < 40 || (v19 = a2, a2 >= a3))
  {
    v34 = a1;
    goto LABEL_35;
  }

  v61 = v4;
  v20 = (v12 + 8);
  v65 = v18;
  do
  {
    v66 = a1;
    sub_10001F280(v19, v72);
    sub_10001F280(v16, v69);
    v21 = v73;
    v22 = v74;
    sub_1000035D0(v72, v73);
    v23 = v67;
    (*(v22 + 8))(v21, v22);
    v24 = v70;
    v25 = v71;
    sub_1000035D0(v69, v70);
    v26 = v68;
    (*(v25 + 8))(v24, v25);
    LOBYTE(v24) = static Date.< infix(_:_:)();
    v27 = *v20;
    v28 = v75;
    (*v20)(v26, v75);
    v27(v23, v28);
    sub_100007BAC(v69);
    sub_100007BAC(v72);
    if (v24)
    {
      v29 = v19;
      v30 = v66;
      v31 = v66 == v19;
      v19 += 40;
      if (v31)
      {
        goto LABEL_14;
      }

LABEL_13:
      v32 = *v29;
      v33 = *(v29 + 1);
      *(v30 + 4) = *(v29 + 4);
      *v30 = v32;
      *(v30 + 1) = v33;
      goto LABEL_14;
    }

    v29 = v16;
    v30 = v66;
    v31 = v66 == v16;
    v16 += 40;
    if (!v31)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 = v30 + 40;
    v18 = v65;
  }

  while (v16 < v65 && v19 < a3);
  v34 = a1;
LABEL_35:
  v57 = (v18 - v16) / 40;
  if (v34 != v16 || v34 >= &v16[40 * v57])
  {
    memmove(v34, v16, 40 * v57);
  }

  return 1;
}

uint64_t sub_10060A510(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for RawSearchResult();
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_10062CD24(v33, v47, type metadata accessor for RawSearchResult);
          v35 = v48;
          sub_10062CD24(v29, v48, type metadata accessor for RawSearchResult);
          v36 = *(v31 + 20);
          v37 = static Date.< infix(_:_:)();
          sub_10062CBB8(v35, type metadata accessor for RawSearchResult);
          sub_10062CBB8(v34, type metadata accessor for RawSearchResult);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_10062CD24(a2, v47, type metadata accessor for RawSearchResult);
        v22 = v48;
        sub_10062CD24(a4, v48, type metadata accessor for RawSearchResult);
        v23 = *(v49 + 20);
        v24 = static Date.< infix(_:_:)();
        sub_10062CBB8(v22, type metadata accessor for RawSearchResult);
        sub_10062CBB8(v21, type metadata accessor for RawSearchResult);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AD74(&v52, &v51, &v50, type metadata accessor for RawSearchResult);
  return 1;
}

uint64_t sub_10060AC44(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = sub_1000BC4D4(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10060AD74(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_10060AE5C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10061BF10(result, a2, a3);

    return v6;
  }

  return result;
}

char *sub_10060AED4(char *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10061BA18(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10060AF64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for UUID();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&qword_1016A59A0, &unk_1013B34C0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_10060B28C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&unk_1016BBF90, &qword_1013B3678);
  result = static _SetStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v28 = result + 56;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v19 = a4;
    v20 = *(a4 + 48);
    v21 = *(v29 + 72);
    sub_10062CD24(v20 + v21 * (v16 | (v15 << 6)), v11, type metadata accessor for SharedBeaconRecord);
    v22 = *(v12 + 5);
    Hasher.init(_seed:)();
    sub_1011D8230();
    Hasher._finalize()();
    v23 = -1 << v12[32];
    v24 = v28;
    v25 = _HashTable.nextHole(atOrAfter:)();
    *&v24[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
    result = sub_10062CC64(v11, *(v12 + 6) + v25 * v21, type metadata accessor for SharedBeaconRecord);
    ++*(v12 + 2);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v19;
    if (!a3)
    {
LABEL_18:

      return v12;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_18;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10060B4EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016A5A00, &qword_1013B3500);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    Hasher._combine(_:)(v19);
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = v9[6] + 24 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060B738(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016BC020, &qword_1013B3580);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();
    sub_100017D5C(v17, v18);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060B960(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016BBE20, &unk_1013B3520);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    result = static Hasher._hash(seed:_:)();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060BB4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016A5A68, &qword_1013B3588);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = v9[5];
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060C04C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = type metadata accessor for UUID();
  v84 = *(v91 - 8);
  v8 = *(v84 + 64);
  __chkstk_darwin(v91);
  v90 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = type metadata accessor for OwnerSharingCircle();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v80 = (&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&qword_1016A5A18, &qword_1013B3538);
  result = static _SetStorage.allocate(capacity:)();
  v21 = result;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v82 = v84 + 16;
  v89 = (v84 + 32);
  v86 = (v84 + 8);
  v73 = result + 56;
  v25 = &qword_1016BBEE0;
  v71 = a2;
  v70 = a1;
  v88 = v14;
  v83 = v16;
  v72 = a4;
  v75 = v17;
  v69 = v18;
  v74 = result;
  while (v23)
  {
    v79 = a3;
    v76 = (v23 - 1) & v23;
    v77 = v24;
    v26 = __clz(__rbit64(v23)) | (v24 << 6);
LABEL_16:
    v30 = *(a4 + 48);
    v78 = *(v18 + 72);
    v31 = v80;
    sub_10062CD24(v30 + v78 * v26, v80, type metadata accessor for OwnerSharingCircle);
    v32 = v21[5];
    Hasher.init(_seed:)();
    v33 = *v31;
    v34 = v31[1];
    Data.hash(into:)();
    v35 = v17[5];
    v36 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v37 = v31 + v17[6];
    v87 = v36;
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v31 + v17[7]));
    v38 = *(v31 + v17[8]);
    v39 = *(v38 + 64);
    v81 = v38 + 64;
    v40 = 1 << *(v38 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & v39;
    v43 = (v40 + 63) >> 6;
    v85 = v38;

    v44 = 0;
    v92 = 0;
    if (!v42)
    {
LABEL_21:
      if (v43 <= v44 + 1)
      {
        v46 = v44 + 1;
      }

      else
      {
        v46 = v43;
      }

      v47 = v46 - 1;
      v48 = v88;
      while (1)
      {
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v45 >= v43)
        {
          v64 = sub_1000BC4D4(v25, &unk_10139CBF0);
          (*(*(v64 - 8) + 56))(v48, 1, 1, v64);
          v42 = 0;
          goto LABEL_29;
        }

        v42 = *(v81 + 8 * v45);
        ++v44;
        if (v42)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

    while (1)
    {
      v45 = v44;
LABEL_28:
      v49 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v50 = v49 | (v45 << 6);
      v51 = v85;
      v52 = v84;
      v53 = v90;
      v54 = v91;
      (*(v84 + 16))(v90, *(v85 + 48) + *(v84 + 72) * v50, v91);
      LOBYTE(v51) = *(*(v51 + 56) + v50);
      v55 = sub_1000BC4D4(v25, &unk_10139CBF0);
      v56 = v25;
      v57 = *(v55 + 48);
      v58 = *(v52 + 32);
      v48 = v88;
      v58(v88, v53, v54);
      *(v48 + v57) = v51;
      v25 = v56;
      (*(*(v55 - 8) + 56))(v48, 0, 1, v55);
      v47 = v45;
      v16 = v83;
LABEL_29:
      sub_1000D2AD8(v48, v16, &unk_1016BC360, &qword_10139CBE0);
      v59 = sub_1000BC4D4(v25, &unk_10139CBF0);
      if ((*(*(v59 - 8) + 48))(v16, 1, v59) == 1)
      {
        break;
      }

      v60 = *(v59 + 48);
      v61 = v90;
      v62 = v91;
      (*v89)(v90, v16, v91);
      v63 = v16[v60];
      v95 = v100;
      v96 = v101;
      v97 = v102;
      v93 = v98;
      v94 = v99;
      dispatch thunk of Hashable.hash(into:)();
      (*v86)(v61, v62);
      Hasher._combine(_:)(v63);
      result = Hasher._finalize()();
      v44 = v47;
      v92 ^= result;
      if (!v42)
      {
        goto LABEL_21;
      }
    }

    Hasher._combine(_:)(v92);
    v17 = v75;
    v65 = v80;
    Hasher._combine(_:)(*(v80 + v75[9]));
    Hasher._finalize()();
    v21 = v74;
    v66 = -1 << *(v74 + 32);
    v67 = v73;
    v68 = _HashTable.nextHole(atOrAfter:)();
    *(v67 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
    result = sub_10062CC64(v65, v21[6] + v68 * v78, type metadata accessor for OwnerSharingCircle);
    ++v21[2];
    a3 = v79 - 1;
    if (__OFSUB__(v79, 1))
    {
      goto LABEL_39;
    }

    a4 = v72;
    a2 = v71;
    a1 = v70;
    v18 = v69;
    v24 = v77;
    v23 = v76;
    if (v79 == 1)
    {
LABEL_35:

      return v21;
    }
  }

  v27 = v24;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= a2)
    {
      goto LABEL_35;
    }

    v29 = a1[v28];
    ++v27;
    if (v29)
    {
      v79 = a3;
      v76 = (v29 - 1) & v29;
      v77 = v28;
      v26 = __clz(__rbit64(v29)) | (v28 << 6);
      goto LABEL_16;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_10060C86C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&qword_1016A5A58, &qword_1013B3578);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 24 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 2);
    v20 = v9[5];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = v9[6] + 24 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    v10 = v32;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v32 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060CABC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for CorrelationIdentifier();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&qword_1016A5A50, &qword_1013B3570);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_100009774(&unk_1016C7F30, &type metadata accessor for CorrelationIdentifier);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_10060CDE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RawSearchResult();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&qword_1016A58C0, &qword_1013B32C8);
  result = static _SetStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v28 = result + 56;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v19 = a4;
    v20 = *(a4 + 48);
    v21 = *(v29 + 72);
    sub_10062CD24(v20 + v21 * (v16 | (v15 << 6)), v11, type metadata accessor for RawSearchResult);
    v22 = *(v12 + 5);
    Hasher.init(_seed:)();
    sub_100D15128();
    Hasher._finalize()();
    v23 = -1 << v12[32];
    v24 = v28;
    v25 = _HashTable.nextHole(atOrAfter:)();
    *&v24[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
    result = sub_10062CC64(v11, *(v12 + 6) + v25 * v21, type metadata accessor for RawSearchResult);
    ++*(v12 + 2);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v19;
    if (!a3)
    {
LABEL_18:

      return v12;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_18;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10060D058(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_1000BC4D4(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060D244(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BeaconIdentifier();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000BC4D4(&unk_1016BBE50, &unk_1013B34E0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v33 + 72);
    v20 = v36;
    sub_10062CD24(v19 + v35 * (v16 | (v14 << 6)), v36, type metadata accessor for BeaconIdentifier);
    v21 = *(v11 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v22 = v20 + *(v34 + 20);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v11 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      a4 = v32;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v15 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    a4 = v32;
LABEL_26:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = sub_10062CC64(v36, *(v11 + 48) + v26 * v35, type metadata accessor for BeaconIdentifier);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060D588(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_1000BC4D4(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + (v15 | (v13 << 6)));
    v19 = v11[5];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v18);
    result = Hasher._finalize()();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + v23) = v18;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060D788(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v10 = &_swiftEmptySetSingleton;
LABEL_6:

    return v10;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000BC4D4(&unk_1016BBF70, &qword_1013B3530);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    *&v9 = *(*(v4 + 48) + 8 * (v14 | (v12 << 6)));
    v27 = v9;
    v17 = v10[5];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v27);
    Hasher._combine(_:)(DWORD1(v27));
    result = Hasher._finalize()();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(&v9 + 1) = *(&v27 + 1);
    *(v10[6] + 8 * v21) = v27;
    ++v10[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10060D9F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(sub_1000BC4D4(a2, a3) + 48);
  v11 = *(sub_1000BC4D4(a4, a5) + 48);
  v12 = *(a1 + v10);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 16))(a6, a1, v13);
  *(a6 + v11) = v12;
}

char *sub_10060DAA8(uint64_t a1, char *a2)
{
  v4 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v66 - v9;
  v78 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(*(v78 - 8) + 64);
  v12 = __chkstk_darwin(v78);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v66 - v16;
  __chkstk_darwin(v15);
  v80 = (&v66 - v19);
  if (!*(a2 + 2))
  {

    return &_swiftEmptySetSingleton;
  }

  v70 = v8;
  v21 = a1 + 56;
  v20 = *(a1 + 56);
  v22 = -1 << *(a1 + 32);
  v79 = ~v22;
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v71 = (63 - v22) >> 6;
  v77 = (v18 + 56);
  v69 = v18;
  v76 = (v18 + 48);
  v81 = a2 + 56;

  v26 = 0;
  v82 = a2;
  v75 = a1;
  v74 = a1 + 56;
  for (i = v10; ; v10 = i)
  {
    v27 = v24;
    v28 = v26;
    v68 = v24;
    if (v24)
    {
LABEL_15:
      v24 = (v27 - 1) & v27;
      sub_10062CD24(*(a1 + 48) + *(v69 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v10, type metadata accessor for SharedBeaconRecord);
      v32 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v71 <= (v26 + 1) ? v26 + 1 : v71;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_56;
        }

        if (v28 >= v71)
        {
          break;
        }

        v27 = *(v21 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_15;
        }
      }

      v24 = 0;
      v32 = 1;
    }

    v33 = v78;
    v73 = *v77;
    v73(v10, v32, 1, v78);
    v83 = a1;
    v84 = v21;
    v85 = v79;
    v86 = v30;
    v87 = v24;
    v72 = *v76;
    if (v72(v10, 1, v33) == 1)
    {
      sub_10000B3A8(v10, &unk_101698C30, &unk_101392630);
      goto LABEL_51;
    }

    sub_10062CC64(v10, v80, type metadata accessor for SharedBeaconRecord);
    v34 = *(a2 + 5);
    Hasher.init(_seed:)();
    sub_1011D8230();
    v35 = Hasher._finalize()();
    v36 = -1 << a2[32];
    v26 = v35 & ~v36;
    a1 = v26 >> 6;
    v10 = 1 << v26;
    if (((1 << v26) & v81[v26 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_10062CBB8(v80, type metadata accessor for SharedBeaconRecord);
    v26 = v30;
    a1 = v75;
    v21 = v74;
  }

  v37 = ~v36;
  v28 = *(v69 + 72);
  sub_10062CD24(*(a2 + 6) + v28 * v26, v17, type metadata accessor for SharedBeaconRecord);
  LODWORD(v68) = sub_1011DB3D8(v17, v80);
  sub_10062CBB8(v17, type metadata accessor for SharedBeaconRecord);
  if ((v68 & 1) == 0)
  {
    while (1)
    {
      v26 = (v26 + 1) & v37;
      a1 = v26 >> 6;
      a2 = v82;
      v10 = 1 << v26;
      if (((1 << v26) & v81[v26 >> 6]) == 0)
      {
        goto LABEL_6;
      }

      sub_10062CD24(*(v82 + 6) + v28 * v26, v17, type metadata accessor for SharedBeaconRecord);
      v38 = sub_1011DB3D8(v17, v80);
      sub_10062CBB8(v17, type metadata accessor for SharedBeaconRecord);
      if (v38)
      {
        a2 = v82;
        break;
      }
    }
  }

  v39 = sub_10062CBB8(v80, type metadata accessor for SharedBeaconRecord);
  v40 = a2[32];
  v21 = ((1 << v40) + 63) >> 6;
  v25 = (8 * v21);
  if ((v40 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (2)
  {
    i = v21;
    v68 = &v66;
    __chkstk_darwin(v39);
    v42 = &v66 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v42, v81, v41);
    v43 = *&v42[8 * a1] & ~v10;
    v44 = *(a2 + 2);
    v80 = v42;
    *&v42[8 * a1] = v43;
    v45 = v44 - 1;
    a1 = v75;
    v21 = v74;
    v26 = v70;
    v46 = v71;
LABEL_25:
    v69 = v45;
    while (v24)
    {
      v47 = v30;
LABEL_37:
      v50 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      sub_10062CD24(*(a1 + 48) + (v50 | (v47 << 6)) * v28, v26, type metadata accessor for SharedBeaconRecord);
      v51 = 0;
LABEL_38:
      v52 = v78;
      v73(v26, v51, 1, v78);
      v83 = a1;
      v84 = v21;
      v85 = v79;
      v86 = v30;
      v87 = v24;
      if (v72(v26, 1, v52) == 1)
      {
        sub_10000B3A8(v26, &unk_101698C30, &unk_101392630);
        a2 = sub_10060B28C(v80, i, v69, a2);
        goto LABEL_51;
      }

      sub_10062CC64(v26, v14, type metadata accessor for SharedBeaconRecord);
      v53 = *(a2 + 5);
      Hasher.init(_seed:)();
      sub_1011D8230();
      v54 = Hasher._finalize()();
      v55 = -1 << a2[32];
      v56 = v54 & ~v55;
      v57 = v56 >> 6;
      v10 = 1 << v56;
      if (((1 << v56) & v81[v56 >> 6]) == 0)
      {
        goto LABEL_26;
      }

      sub_10062CD24(*(v82 + 6) + v56 * v28, v17, type metadata accessor for SharedBeaconRecord);
      v58 = sub_1011DB3D8(v17, v14);
      sub_10062CBB8(v17, type metadata accessor for SharedBeaconRecord);
      if (!v58)
      {
        v59 = ~v55;
        while (1)
        {
          v56 = (v56 + 1) & v59;
          v57 = v56 >> 6;
          v10 = 1 << v56;
          if (((1 << v56) & v81[v56 >> 6]) == 0)
          {
            break;
          }

          sub_10062CD24(*(v82 + 6) + v56 * v28, v17, type metadata accessor for SharedBeaconRecord);
          v60 = sub_1011DB3D8(v17, v14);
          sub_10062CBB8(v17, type metadata accessor for SharedBeaconRecord);
          if (v60)
          {
            goto LABEL_44;
          }
        }

LABEL_26:
        sub_10062CBB8(v14, type metadata accessor for SharedBeaconRecord);
        a2 = v82;
        a1 = v75;
        v21 = v74;
        v26 = v70;
        v46 = v71;
        continue;
      }

LABEL_44:
      sub_10062CBB8(v14, type metadata accessor for SharedBeaconRecord);
      v61 = v80[v57];
      v80[v57] = v61 & ~v10;
      a2 = v82;
      a1 = v75;
      v21 = v74;
      v26 = v70;
      v46 = v71;
      if ((v61 & v10) != 0)
      {
        v45 = v69 - 1;
        if (__OFSUB__(v69, 1))
        {
          __break(1u);
        }

        if (v69 == 1)
        {

          a2 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_25;
      }
    }

    if (v46 <= (v30 + 1))
    {
      v48 = v30 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        v24 = 0;
        v51 = 1;
        v30 = v49;
        goto LABEL_38;
      }

      v24 = *(v21 + 8 * v47);
      ++v30;
      if (v24)
      {
        v30 = v47;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v80 = v25;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v63 = v80;
  v64 = swift_slowAlloc();
  memcpy(v64, v81, v63);
  v65 = sub_1006173A4(v64, v21, a2, v26, &v83);

  v79 = v85;
  a2 = v65;
LABEL_51:
  sub_1000128F8();
  return a2;
}

void *sub_10060E4E0(uint64_t a1, unint64_t *a2)
{
  v7 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v10 = -1 << *(a1 + 32);
  v60 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = (63 - v10) >> 6;
  v66 = a2 + 7;

  v16 = 0;
  v62 = v9;
  v61 = v13;
  v63 = v14;
  v64 = v7;
  while (1)
  {
    if (!v12)
    {
      v17 = v16;
      do
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_52;
        }

        if (v18 >= v13)
        {
          goto LABEL_49;
        }

        v12 = *(v9 + 8 * v18);
        ++v17;
      }

      while (!v12);
      v16 = v18;
    }

    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v65 = v16;
    v20 = *(v14 + 48) + 24 * (v19 | (v16 << 6));
    v2 = *v20;
    v21 = *(v20 + 8);
    v4 = *(v20 + 16);
    v22 = *(v7 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    Hasher._combine(_:)(v4);
    v23 = Hasher._finalize()();
    v24 = -1 << *(v7 + 32);
    v9 = v23 & ~v24;
    v7 = v9 >> 6;
    v6 = 1 << v9;
    if (((1 << v9) & v66[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v14 = v63;
    v7 = v64;
    v9 = v62;
    v16 = v65;
    v13 = v61;
  }

  v25 = ~v24;
  v3 = v64[6];
  while (1)
  {
    v26 = v3 + 24 * v9;
    v5 = *(v26 + 16);
    v27 = *v26 == v2 && *(v26 + 8) == v21;
    if (v27)
    {
      if (v4 == v5)
      {
        break;
      }

      goto LABEL_16;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v4 ^ v5) & 1) == 0)
    {
      break;
    }

LABEL_16:
    v9 = (v9 + 1) & v25;
    v7 = v9 >> 6;
    v6 = 1 << v9;
    if ((v66[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_6;
    }
  }

  v5 = v65;
  v68 = v60;
  v69 = v65;
  v70 = v12;
  v4 = v62;
  v2 = v63;
  v67[0] = v63;
  v67[1] = v62;

  v3 = v64;
  v29 = *(v64 + 32);
  v56 = ((1 << v29) + 63) >> 6;
  v15 = 8 * v56;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v57 = &v54;
    __chkstk_darwin(v28);
    v9 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v66, v30);
    v31 = *(v9 + 8 * v7) & ~v6;
    v59 = v9;
    *(v9 + 8 * v7) = v31;
    v32 = *(v3 + 16) - 1;
    v33 = v61;
LABEL_25:
    v58 = v32;
LABEL_27:
    while (2)
    {
      if (v12)
      {
LABEL_33:
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v65 = v5;
        v37 = *(v2 + 48) + 24 * (v36 | (v5 << 6));
        v6 = *v37;
        v38 = *(v37 + 8);
        v39 = *(v37 + 16);
        v40 = *(v3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._combine(_:)(v39);
        v41 = Hasher._finalize()();
        v42 = -1 << *(v3 + 32);
        v7 = v41 & ~v42;
        v9 = v7 >> 6;
        v43 = 1 << v7;
        if (((1 << v7) & v66[v7 >> 6]) == 0)
        {
LABEL_26:

          v2 = v63;
          v3 = v64;
          v4 = v62;
          v5 = v65;
          v33 = v61;
          continue;
        }

        v44 = ~v42;
        v45 = *(v3 + 48);
        while (1)
        {
          v46 = v45 + 24 * v7;
          v47 = *(v46 + 16);
          if (*v46 == v6 && *(v46 + 8) == v38)
          {
            if (v39 == v47)
            {
              goto LABEL_43;
            }
          }

          else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v39 ^ v47) & 1) == 0)
          {
LABEL_43:

            v49 = v59[v9];
            v59[v9] = v49 & ~v43;
            v27 = (v49 & v43) == 0;
            v2 = v63;
            v3 = v64;
            v4 = v62;
            v5 = v65;
            v33 = v61;
            if (!v27)
            {
              v32 = v58 - 1;
              if (__OFSUB__(v58, 1))
              {
                __break(1u);
              }

              if (v58 == 1)
              {

                v7 = &_swiftEmptySetSingleton;
                goto LABEL_49;
              }

              goto LABEL_25;
            }

            goto LABEL_27;
          }

          v7 = (v7 + 1) & v44;
          v9 = v7 >> 6;
          v43 = 1 << v7;
          if ((v66[v7 >> 6] & (1 << v7)) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      break;
    }

    v34 = v5;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {
        v7 = sub_10060B4EC(v59, v56, v58, v3);
        goto LABEL_49;
      }

      v12 = *(v4 + 8 * v35);
      ++v34;
      if (v12)
      {
        v5 = v35;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v51 = v15;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v66, v51);
  v53 = v55;
  v7 = sub_100617828(v52, v56, v3, v9, v67);

  if (v53)
  {

    __break(1u);
  }

  else
  {

    v60 = v68;
LABEL_49:
    sub_1000128F8();
    return v7;
  }

  return result;
}

void *sub_10060EAD8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v178 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v183 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v193 = (a2 + 56);
  v13 = v205;
  v12 = v206;

  v16 = 0;
  v189 = v4;
  v182 = v6;
  v180 = v11;
  v181 = v14;
  if (!v10)
  {
LABEL_6:
    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_318;
      }

      if (v18 >= v11)
      {
        v205 = v13;
        v206 = v12;
        goto LABEL_314;
      }

      v10 = *(v6 + 8 * v18);
      ++v17;
    }

    while (!v10);
    v16 = v18;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = (*(v14 + 48) + ((v16 << 10) | (16 * v19)));
    v22 = *v20;
    v21 = v20[1];
    v186 = v16;
    v207 = v16;
    v208 = v10;
    v23 = *(v4 + 40);
    Hasher.init(_seed:)();
    sub_100017D5C(v22, v21);
    v192 = v22;
    Data.hash(into:)();
    v13 = __s1;
    v24 = Hasher._finalize()();
    v25 = -1 << *(v4 + 32);
    v7 = v21;
    v3 = v24 & ~v25;
    v11 = v3 >> 6;
    v26 = v193;
    v2 = 1 << v3;
    if (((1 << v3) & v193[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_156:
    sub_100016590(v192, v7);
    v12 = v183;
    v6 = v182;
    v13 = v182;
    v14 = v181;
    v16 = v186;
    v11 = v180;
    v7 = -1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v27 = ~v25;
  v28 = v21 >> 62;
  if (v192)
  {
    v29 = 0;
  }

  else
  {
    v29 = v7 == 0xC000000000000000;
  }

  v30 = !v29;
  LODWORD(v190) = v30;
  v177 = HIDWORD(v192);
  v31 = __OFSUB__(HIDWORD(v192), v192);
  v185 = v31;
  v184 = HIDWORD(v192) - v192;
  v191 = BYTE6(v7);
  v179 = v192;
  v176 = v192 >> 32;
  v175 = (v192 >> 32) - v192;
  v188 = v7;
  v187 = v27;
  while (1)
  {
    v32 = (*(v4 + 48) + 16 * v3);
    v6 = *v32;
    v33 = v32[1];
    v34 = v33 >> 62;
    if (v33 >> 62 == 3)
    {
      if (v6)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33 == 0xC000000000000000;
      }

      v37 = !v35 || v28 < 3;
      if (((v37 | v190) & 1) == 0)
      {
        v6 = v182;
        v205 = v182;
        v206 = v183;
        v7 = v181;
        v204 = v181;
        v82 = 0;
        v83 = 0xC000000000000000;
LABEL_161:
        v84 = sub_100016590(v82, v83);
        goto LABEL_162;
      }

LABEL_46:
      v38 = 0;
      if (v28 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v34 > 1)
    {
      if (v34 != 2)
      {
        goto LABEL_46;
      }

      v40 = *(v6 + 16);
      v39 = *(v6 + 24);
      v41 = __OFSUB__(v39, v40);
      v38 = v39 - v40;
      if (v41)
      {
        goto LABEL_327;
      }

      if (v28 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v34)
    {
      LODWORD(v38) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_326;
      }

      v38 = v38;
      if (v28 <= 1)
      {
LABEL_43:
        v42 = v191;
        if (v28)
        {
          v42 = v184;
          if (v185)
          {
            goto LABEL_322;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v38 = BYTE6(v33);
      if (v28 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v28 != 2)
    {
      if (!v38)
      {
        goto LABEL_159;
      }

      goto LABEL_23;
    }

    v44 = *(v192 + 16);
    v43 = *(v192 + 24);
    v41 = __OFSUB__(v43, v44);
    v42 = v43 - v44;
    if (v41)
    {
      goto LABEL_321;
    }

LABEL_49:
    if (v38 != v42)
    {
      goto LABEL_23;
    }

    if (v38 < 1)
    {
      goto LABEL_159;
    }

    if (v34 > 1)
    {
      break;
    }

    if (v34)
    {
      v7 = v6;
      if (v6 > v6 >> 32)
      {
        goto LABEL_328;
      }

      sub_100017D5C(v6, v33);
      v50 = __DataStorage._bytes.getter();
      if (v50)
      {
        v4 = v50;
        v51 = __DataStorage._offset.getter();
        if (__OFSUB__(v6, v51))
        {
          goto LABEL_332;
        }

        v174 = v6 - v51 + v4;
      }

      else
      {
        v174 = 0;
      }

      v13 = v33 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      v4 = v189;
      v7 = v188;
      if (v28 != 2)
      {
        if (v28 == 1)
        {
          if (v176 < v179)
          {
            goto LABEL_348;
          }

          v4 = __DataStorage._bytes.getter();
          if (v4)
          {
            v60 = __DataStorage._offset.getter();
            if (__OFSUB__(v179, v60))
            {
              goto LABEL_362;
            }

            v4 += v179 - v60;
          }

          v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
          v61 = __DataStorage._length.getter();
          v58 = v175;
          if (v61 < v175)
          {
            v58 = v61;
          }

          v59 = v174;
          if (!v174)
          {
            goto LABEL_388;
          }

          if (!v4)
          {
            goto LABEL_387;
          }

          goto LABEL_101;
        }

        v71 = v174;
        LODWORD(__s1[0]) = v192;
        BYTE4(__s1[0]) = v177;
        *(__s1 + 5) = *(&v192 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v192);
        LODWORD(__s1[1]) = v188;
        WORD2(__s1[1]) = WORD2(v188);
        if (!v174)
        {
          goto LABEL_384;
        }

        goto LABEL_123;
      }

      v72 = *(v192 + 24);
      v173 = *(v192 + 16);
      v172 = v72;
      v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = __DataStorage._bytes.getter();
      if (v4)
      {
        v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
        v73 = __DataStorage._offset.getter();
        v74 = v173;
        if (__OFSUB__(v173, v73))
        {
          goto LABEL_360;
        }

        v4 += v173 - v73;
      }

      else
      {
        v74 = v173;
      }

      v80 = v172 - v74;
      if (__OFSUB__(v172, v74))
      {
        goto LABEL_349;
      }

      v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
      v81 = __DataStorage._length.getter();
      if (v81 >= v80)
      {
        v58 = v80;
      }

      else
      {
        v58 = v81;
      }

      v59 = v174;
      if (!v174)
      {
        goto LABEL_377;
      }

      if (!v4)
      {
        goto LABEL_376;
      }

      goto LABEL_150;
    }

    __s1[0] = v6;
    LOWORD(__s1[1]) = v33;
    BYTE2(__s1[1]) = BYTE2(v33);
    BYTE3(__s1[1]) = BYTE3(v33);
    BYTE4(__s1[1]) = BYTE4(v33);
    BYTE5(__s1[1]) = BYTE5(v33);
    if (!v28)
    {
      goto LABEL_76;
    }

    if (v28 == 1)
    {
      if (v176 < v179)
      {
        goto LABEL_341;
      }

      sub_100017D5C(v6, v33);
      v45 = __DataStorage._bytes.getter();
      if (!v45)
      {
        goto LABEL_378;
      }

      v4 = v45;
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v179, v46))
      {
        goto LABEL_346;
      }

      v4 += v179 - v46;
      v47 = __DataStorage._length.getter();
      if (!v4)
      {
        goto LABEL_379;
      }

      goto LABEL_110;
    }

    v62 = *(v192 + 24);
    v174 = *(v192 + 16);
    v173 = v62;
    sub_100017D5C(v6, v33);
    v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = __DataStorage._bytes.getter();
    if (v4)
    {
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v63 = __DataStorage._offset.getter();
      v64 = v174;
      if (__OFSUB__(v174, v63))
      {
        v205 = v182;
        v206 = v183;
        __break(1u);
LABEL_358:
        v205 = v182;
        v206 = v183;
        __break(1u);
LABEL_359:
        v205 = v182;
        v206 = v183;
        __break(1u);
LABEL_360:
        v205 = v182;
        v206 = v183;
        __break(1u);
LABEL_361:
        v205 = v182;
        v206 = v183;
        __break(1u);
LABEL_362:
        v205 = v182;
        v206 = v183;
        __break(1u);
LABEL_363:
        __break(1u);
      }

      v4 += v174 - v63;
    }

    else
    {
      v64 = v174;
    }

    v75 = v173 - v64;
    if (__OFSUB__(v173, v64))
    {
      goto LABEL_344;
    }

    v76 = __DataStorage._length.getter();
    if (!v4)
    {
      goto LABEL_380;
    }

LABEL_131:
    if (v76 >= v75)
    {
      v77 = v75;
    }

    else
    {
      v77 = v76;
    }

    v13 = memcmp(__s1, v4, v77);
    sub_100016590(v6, v33);
    v4 = v189;
    v26 = v193;
    v7 = v188;
LABEL_154:
    v27 = v187;
    if (!v13)
    {
LABEL_159:
      v6 = v182;
      v205 = v182;
      v206 = v183;
      v83 = v7;
      v7 = v181;
      v204 = v181;
      v82 = v192;
      goto LABEL_161;
    }

LABEL_23:
    v3 = (v3 + 1) & v27;
    v11 = v3 >> 6;
    v2 = 1 << v3;
    if ((v26[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_156;
    }
  }

  if (v34 != 2)
  {
    memset(__s1, 0, 14);
    if (!v28)
    {
LABEL_76:
      __s2 = v192;
      v195 = v177;
      v196 = *(&v192 + 5);
      v197 = HIBYTE(v192);
      v198 = v7;
      v199 = BYTE2(v7);
      v200 = BYTE3(v7);
      v201 = BYTE4(v7);
      v202 = BYTE5(v7);
      v55 = memcmp(__s1, &__s2, v191);
      v27 = v187;
      v26 = v193;
      if (!v55)
      {
        goto LABEL_159;
      }

      goto LABEL_23;
    }

    if (v28 != 2)
    {
      if (v176 < v179)
      {
        goto LABEL_340;
      }

      sub_100017D5C(v6, v33);
      v65 = __DataStorage._bytes.getter();
      if (!v65)
      {
        goto LABEL_381;
      }

      v4 = v65;
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v66 = __DataStorage._offset.getter();
      if (__OFSUB__(v179, v66))
      {
        goto LABEL_345;
      }

      v4 += v179 - v66;
      v47 = __DataStorage._length.getter();
      if (!v4)
      {
        goto LABEL_383;
      }

LABEL_110:
      if (v47 >= v175)
      {
        v67 = v175;
      }

      else
      {
        v67 = v47;
      }

      v59 = __s1;
LABEL_152:
      v13 = memcmp(v59, v4, v67);
      sub_100016590(v6, v33);
      v4 = v189;
LABEL_153:
      v26 = v193;
      goto LABEL_154;
    }

    v52 = *(v192 + 24);
    v174 = *(v192 + 16);
    v173 = v52;
    sub_100017D5C(v6, v33);
    v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = __DataStorage._bytes.getter();
    if (v4)
    {
      v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v53 = __DataStorage._offset.getter();
      v54 = v174;
      if (__OFSUB__(v174, v53))
      {
        goto LABEL_358;
      }

      v4 += v174 - v53;
    }

    else
    {
      v54 = v174;
    }

    v75 = v173 - v54;
    if (__OFSUB__(v173, v54))
    {
      goto LABEL_343;
    }

    v76 = __DataStorage._length.getter();
    if (!v4)
    {
      goto LABEL_382;
    }

    goto LABEL_131;
  }

  v7 = *(v6 + 16);
  sub_100017D5C(v6, v33);
  v48 = __DataStorage._bytes.getter();
  if (v48)
  {
    v4 = v48;
    v49 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v49))
    {
      goto LABEL_331;
    }

    v174 = v7 - v49 + v4;
  }

  else
  {
    v174 = 0;
  }

  v13 = v33 & 0x3FFFFFFFFFFFFFFFLL;
  __DataStorage._length.getter();
  v4 = v189;
  v7 = v188;
  if (v28 != 2)
  {
    if (v28 == 1)
    {
      if (v176 < v179)
      {
        goto LABEL_342;
      }

      v4 = __DataStorage._bytes.getter();
      if (v4)
      {
        v56 = __DataStorage._offset.getter();
        if (__OFSUB__(v179, v56))
        {
          goto LABEL_361;
        }

        v4 += v179 - v56;
      }

      v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
      v57 = __DataStorage._length.getter();
      v58 = v175;
      if (v57 < v175)
      {
        v58 = v57;
      }

      v59 = v174;
      if (!v174)
      {
        goto LABEL_390;
      }

      if (!v4)
      {
        goto LABEL_389;
      }

LABEL_101:
      if (v59 == v4)
      {
        goto LABEL_316;
      }

LABEL_151:
      v67 = v58;
      goto LABEL_152;
    }

    v71 = v174;
    LODWORD(__s1[0]) = v192;
    BYTE4(__s1[0]) = v177;
    *(__s1 + 5) = *(&v192 + 5);
    HIBYTE(__s1[0]) = HIBYTE(v192);
    LODWORD(__s1[1]) = v188;
    WORD2(__s1[1]) = WORD2(v188);
    if (!v174)
    {
      goto LABEL_375;
    }

LABEL_123:
    v13 = memcmp(v71, __s1, v191);
    sub_100016590(v6, v33);
    goto LABEL_153;
  }

  v68 = *(v192 + 24);
  v173 = *(v192 + 16);
  v172 = v68;
  v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = __DataStorage._bytes.getter();
  if (v4)
  {
    v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
    v69 = __DataStorage._offset.getter();
    v70 = v173;
    if (__OFSUB__(v173, v69))
    {
      goto LABEL_359;
    }

    v4 += v173 - v69;
  }

  else
  {
    v70 = v173;
  }

  v78 = v172 - v70;
  if (__OFSUB__(v172, v70))
  {
    goto LABEL_347;
  }

  v13 = v188 & 0x3FFFFFFFFFFFFFFFLL;
  v79 = __DataStorage._length.getter();
  if (v79 >= v78)
  {
    v58 = v78;
  }

  else
  {
    v58 = v79;
  }

  v59 = v174;
  if (!v174)
  {
    goto LABEL_386;
  }

  if (!v4)
  {
    goto LABEL_385;
  }

LABEL_150:
  v7 = v188;
  if (v59 != v4)
  {
    goto LABEL_151;
  }

LABEL_316:
  v205 = v182;
  v206 = v183;
  v160 = v7;
  v7 = v181;
  v204 = v181;
  v161 = v6;
  v6 = v182;
  sub_100016590(v161, v33);
  v84 = sub_100016590(v192, v160);
  v4 = v189;
LABEL_162:
  v85 = *(v4 + 32);
  v170 = ((1 << v85) + 63) >> 6;
  v15 = 8 * v170;
  if ((v85 & 0x3Fu) > 0xD)
  {
    goto LABEL_333;
  }

LABEL_163:
  v171 = &v167;
  __chkstk_darwin(v84);
  v87 = &v167 - ((v86 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v87, v193, v86);
  v88 = *&v87[8 * v11] & ~v2;
  v173 = v87;
  *&v87[8 * v11] = v88;
  v89 = *(v4 + 16) - 1;
  v12 = v186;
  v90 = v180;
  while (2)
  {
    v172 = v89;
    while (1)
    {
LABEL_165:
      if (v10)
      {
        goto LABEL_171;
      }

      v91 = v12;
      do
      {
        v92 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          __break(1u);
LABEL_318:
          v205 = v13;
          v206 = v12;
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          v205 = v182;
          v206 = v183;
          __break(1u);
LABEL_322:
          v205 = v182;
          v206 = v183;
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          v205 = v182;
          v206 = v183;
          __break(1u);
LABEL_327:
          v205 = v182;
          v206 = v183;
          __break(1u);
LABEL_328:
          v205 = v182;
          v206 = v183;
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          v205 = v182;
          v206 = v183;
          __break(1u);
LABEL_332:
          v205 = v182;
          v206 = v183;
          __break(1u);
LABEL_333:
          v162 = v15;

          v13 = v162;
          if (!swift_stdlib_isStackAllocationSafe())
          {
            goto LABEL_355;
          }

          goto LABEL_163;
        }

        if (v92 >= v90)
        {
          v4 = sub_10060B738(v173, v170, v172, v4);
          goto LABEL_314;
        }

        v10 = *(v6 + 8 * v92);
        ++v91;
      }

      while (!v10);
      v12 = v92;
LABEL_171:
      v93 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v94 = (*(v7 + 48) + ((v12 << 10) | (16 * v93)));
      v96 = *v94;
      v95 = v94[1];
      v204 = v7;
      v205 = v6;
      v6 = v95;
      v206 = v183;
      v207 = v12;
      v186 = v12;
      v208 = v10;
      v97 = *(v4 + 40);
      Hasher.init(_seed:)();
      sub_100017D5C(v96, v6);
      Data.hash(into:)();
      v13 = __s1;
      v98 = Hasher._finalize()();
      v99 = -1 << *(v4 + 32);
      v100 = v98 & ~v99;
      v11 = v100 >> 6;
      v101 = v193;
      v2 = 1 << v100;
      if (((1 << v100) & v193[v100 >> 6]) != 0)
      {
        break;
      }

      v106 = v96;
LABEL_304:
      sub_100016590(v106, v6);
      v6 = v182;
      v7 = v181;
      v12 = v186;
      v90 = v180;
    }

    v102 = ~v99;
    v7 = v6 >> 62;
    if (v96)
    {
      v103 = 0;
    }

    else
    {
      v103 = v6 == 0xC000000000000000;
    }

    v104 = !v103;
    LODWORD(v188) = v104;
    v177 = HIDWORD(v96);
    v105 = __OFSUB__(HIDWORD(v96), v96);
    v185 = v105;
    v184 = HIDWORD(v96) - v96;
    v192 = BYTE6(v6);
    v179 = v96;
    v176 = v96 >> 32;
    v174 = (v96 >> 32) - v96;
    v190 = v6;
    v106 = v96;
    v191 = v96;
    v187 = v102;
    while (2)
    {
      v107 = (*(v4 + 48) + 16 * v100);
      v108 = *v107;
      v3 = v107[1];
      v109 = v3 >> 62;
      if (v3 >> 62 != 3)
      {
        if (v109 <= 1)
        {
          if (v109)
          {
            LODWORD(v113) = HIDWORD(v108) - v108;
            if (__OFSUB__(HIDWORD(v108), v108))
            {
              goto LABEL_324;
            }

            v113 = v113;
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v113 = BYTE6(v3);
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_203;
        }

        if (v109 != 2)
        {
          goto LABEL_206;
        }

        v115 = *(v108 + 16);
        v114 = *(v108 + 24);
        v41 = __OFSUB__(v114, v115);
        v113 = v114 - v115;
        if (v41)
        {
          goto LABEL_323;
        }

        if (v7 <= 1)
        {
          goto LABEL_203;
        }

LABEL_207:
        if (v7 == 2)
        {
          v118 = *(v106 + 16);
          v117 = *(v106 + 24);
          v41 = __OFSUB__(v117, v118);
          v116 = v117 - v118;
          if (v41)
          {
            goto LABEL_319;
          }

          goto LABEL_209;
        }

        if (!v113)
        {
          goto LABEL_302;
        }

        goto LABEL_183;
      }

      if (v108)
      {
        v110 = 0;
      }

      else
      {
        v110 = v3 == 0xC000000000000000;
      }

      v112 = !v110 || v7 < 3;
      if (((v112 | v188) & 1) == 0)
      {
        v156 = 0;
        v157 = 0xC000000000000000;
        goto LABEL_305;
      }

LABEL_206:
      v113 = 0;
      if (v7 > 1)
      {
        goto LABEL_207;
      }

LABEL_203:
      v116 = v192;
      if (v7)
      {
        v116 = v184;
        if (v185)
        {
          goto LABEL_320;
        }
      }

LABEL_209:
      if (v113 != v116)
      {
        goto LABEL_183;
      }

      if (v113 < 1)
      {
        goto LABEL_302;
      }

      if (v109 <= 1)
      {
        if (!v109)
        {
          __s1[0] = v108;
          LOWORD(__s1[1]) = v3;
          BYTE2(__s1[1]) = BYTE2(v3);
          BYTE3(__s1[1]) = BYTE3(v3);
          BYTE4(__s1[1]) = BYTE4(v3);
          BYTE5(__s1[1]) = BYTE5(v3);
          if (v7)
          {
            if (v7 == 1)
            {
              v13 = v179;
              v119 = v176;
              if (v176 < v179)
              {
                __break(1u);
LABEL_335:
                __break(1u);
LABEL_336:
                __break(1u);
LABEL_337:
                __break(1u);
LABEL_338:
                __break(1u);
LABEL_339:
                __break(1u);
LABEL_340:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_341:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_342:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_343:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_344:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_345:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_346:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_347:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_348:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_349:
                v205 = v182;
                v206 = v183;
                __break(1u);
LABEL_350:
                __break(1u);
LABEL_351:
                __break(1u);
LABEL_352:
                __break(1u);
LABEL_353:
                __break(1u);
LABEL_354:
                __break(1u);
LABEL_355:
                v163 = swift_slowAlloc();
                memcpy(v163, v193, v13);
                v164 = v178;
                v165 = sub_100617A78(v163, v170, v4, v3, &v204);

                if (v164)
                {
                  goto LABEL_392;
                }

                v183 = v206;
                v4 = v165;
LABEL_314:
                sub_1000128F8();
                return v4;
              }
            }

            else
            {
              v13 = *(v106 + 16);
              v119 = *(v106 + 24);
            }

            sub_100017D5C(v108, v3);
            v135 = v119;
            v136 = v178;
            v137 = sub_100625B10(v13, v135, v190 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            v138 = &v208;
            v178 = v136;
            if (v136)
            {
              goto LABEL_391;
            }

            v13 = v137;
            sub_100016590(v108, v3);
            v101 = v193;
            v6 = v190;
            v106 = v191;
            v102 = v187;
            if (v13)
            {
              goto LABEL_302;
            }

LABEL_183:
            v100 = (v100 + 1) & v102;
            v11 = v100 >> 6;
            v2 = 1 << v100;
            if ((v101[v100 >> 6] & (1 << v100)) == 0)
            {
              goto LABEL_304;
            }

            continue;
          }

LABEL_232:
          LOWORD(__s2) = v106;
          BYTE2(__s2) = BYTE2(v106);
          HIBYTE(__s2) = BYTE3(v106);
          v195 = v177;
          LOBYTE(v196) = BYTE5(v106);
          HIBYTE(v196) = BYTE6(v106);
          v197 = HIBYTE(v106);
          v198 = v6;
          v199 = BYTE2(v6);
          v200 = BYTE3(v6);
          v201 = BYTE4(v6);
          v202 = BYTE5(v6);
          v128 = memcmp(__s1, &__s2, v192);
          v102 = v187;
          v106 = v191;
          v101 = v193;
          if (!v128)
          {
            goto LABEL_302;
          }

          goto LABEL_183;
        }

        v4 = v108;
        if (v108 > v108 >> 32)
        {
          goto LABEL_325;
        }

        sub_100017D5C(v108, v3);
        v122 = __DataStorage._bytes.getter();
        if (v122)
        {
          v6 = v122;
          v123 = __DataStorage._offset.getter();
          if (__OFSUB__(v108, v123))
          {
            goto LABEL_330;
          }

          v175 = v108 - v123 + v6;
        }

        else
        {
          v175 = 0;
        }

        v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        __DataStorage._length.getter();
        v4 = v189;
        v6 = v190;
        if (v7 != 2)
        {
          if (v7 == 1)
          {
            if (v176 < v179)
            {
              goto LABEL_338;
            }

            v4 = __DataStorage._bytes.getter();
            if (v4)
            {
              v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
              v133 = __DataStorage._offset.getter();
              if (__OFSUB__(v179, v133))
              {
                goto LABEL_354;
              }

              v4 += v179 - v133;
            }

            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v134 = __DataStorage._length.getter();
            v131 = v174;
            if (v134 < v174)
            {
              v131 = v134;
            }

            v132 = v175;
            if (!v175)
            {
              goto LABEL_369;
            }

            if (!v4)
            {
              goto LABEL_368;
            }

LABEL_257:
            if (v132 == v4)
            {
              goto LABEL_308;
            }

LABEL_299:
            v13 = memcmp(v132, v4, v131);
            sub_100016590(v108, v3);
            v4 = v189;
LABEL_300:
            v101 = v193;
LABEL_301:
            v106 = v191;
            v102 = v187;
            if (!v13)
            {
              goto LABEL_302;
            }

            goto LABEL_183;
          }

          v148 = v175;
          LODWORD(__s1[0]) = v191;
          BYTE4(__s1[0]) = v177;
          *(__s1 + 5) = *(&v191 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v191);
          LODWORD(__s1[1]) = v190;
          WORD2(__s1[1]) = WORD2(v190);
          if (!v175)
          {
            goto LABEL_365;
          }

LABEL_282:
          v13 = memcmp(v148, __s1, v192);
          sub_100016590(v108, v3);
          goto LABEL_300;
        }

        v149 = *(v191 + 24);
        v169 = *(v191 + 16);
        v168 = v149;
        v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = __DataStorage._bytes.getter();
        if (v4)
        {
          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v150 = __DataStorage._offset.getter();
          v151 = v169;
          if (__OFSUB__(v169, v150))
          {
            goto LABEL_352;
          }

          v4 += v169 - v150;
        }

        else
        {
          v151 = v169;
        }

        v154 = v168 - v151;
        if (__OFSUB__(v168, v151))
        {
          goto LABEL_339;
        }

        v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
        v155 = __DataStorage._length.getter();
        if (v155 >= v154)
        {
          v131 = v154;
        }

        else
        {
          v131 = v155;
        }

        v132 = v175;
        if (!v175)
        {
          goto LABEL_373;
        }

        if (!v4)
        {
          goto LABEL_371;
        }

        goto LABEL_298;
      }

      break;
    }

    if (v109 == 2)
    {
      v4 = *(v108 + 16);
      sub_100017D5C(v108, v3);
      v120 = __DataStorage._bytes.getter();
      if (v120)
      {
        v6 = v120;
        v121 = __DataStorage._offset.getter();
        if (__OFSUB__(v4, v121))
        {
          goto LABEL_329;
        }

        v175 = v4 - v121 + v6;
      }

      else
      {
        v175 = 0;
      }

      v6 = v190;
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      __DataStorage._length.getter();
      v4 = v189;
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          if (v176 < v179)
          {
            goto LABEL_336;
          }

          v4 = __DataStorage._bytes.getter();
          if (v4)
          {
            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v129 = __DataStorage._offset.getter();
            if (__OFSUB__(v179, v129))
            {
              goto LABEL_353;
            }

            v4 += v179 - v129;
          }

          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v130 = __DataStorage._length.getter();
          v131 = v174;
          if (v130 < v174)
          {
            v131 = v130;
          }

          v132 = v175;
          if (!v175)
          {
            goto LABEL_374;
          }

          if (!v4)
          {
            goto LABEL_372;
          }

          goto LABEL_257;
        }

        v148 = v175;
        LODWORD(__s1[0]) = v191;
        BYTE4(__s1[0]) = v177;
        *(__s1 + 5) = *(&v191 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v191);
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (!v175)
        {
          goto LABEL_366;
        }

        goto LABEL_282;
      }

      v145 = *(v191 + 24);
      v169 = *(v191 + 16);
      v168 = v145;
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = __DataStorage._bytes.getter();
      if (v4)
      {
        v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        v146 = __DataStorage._offset.getter();
        v147 = v169;
        if (__OFSUB__(v169, v146))
        {
          goto LABEL_350;
        }

        v4 += v169 - v146;
      }

      else
      {
        v147 = v169;
      }

      v152 = v168 - v147;
      if (__OFSUB__(v168, v147))
      {
        goto LABEL_337;
      }

      v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
      v153 = __DataStorage._length.getter();
      if (v153 >= v152)
      {
        v131 = v152;
      }

      else
      {
        v131 = v153;
      }

      v132 = v175;
      if (!v175)
      {
        goto LABEL_370;
      }

      if (!v4)
      {
        goto LABEL_367;
      }

LABEL_298:
      v6 = v190;
      if (v132 != v4)
      {
        goto LABEL_299;
      }

LABEL_308:
      sub_100016590(v108, v3);
      sub_100016590(v191, v6);
      v4 = v189;
LABEL_306:
      v12 = v186;
      v90 = v180;
      v158 = v173[v11];
      v173[v11] = v158 & ~v2;
      v6 = v182;
      v7 = v181;
      if ((v158 & v2) != 0)
      {
        v89 = v172 - 1;
        if (__OFSUB__(v172, 1))
        {
          goto LABEL_363;
        }

        if (v172 == 1)
        {

          v4 = &_swiftEmptySetSingleton;
          goto LABEL_314;
        }

        continue;
      }

      goto LABEL_165;
    }

    break;
  }

  memset(__s1, 0, 14);
  if (!v7)
  {
    goto LABEL_232;
  }

  if (v7 == 2)
  {
    v124 = *(v106 + 16);
    v125 = *(v106 + 24);
    sub_100017D5C(v108, v3);
    v126 = v125;
    v127 = v178;
    v13 = sub_100625B10(v124, v126, v190 & 0x3FFFFFFFFFFFFFFFLL, __s1);
    v178 = v127;
    v6 = v190;
    sub_100016590(v108, v3);
    v102 = v187;
    v106 = v191;
    v101 = v193;
    if (v13)
    {
      goto LABEL_302;
    }

    goto LABEL_183;
  }

  if (v176 < v179)
  {
    goto LABEL_335;
  }

  sub_100017D5C(v108, v3);
  v139 = __DataStorage._bytes.getter();
  v140 = v6;
  v141 = v139;
  if (v139)
  {
    v13 = v140 & 0x3FFFFFFFFFFFFFFFLL;
    v142 = __DataStorage._offset.getter();
    if (__OFSUB__(v179, v142))
    {
      goto LABEL_351;
    }

    v141 += v179 - v142;
  }

  v13 = v190 & 0x3FFFFFFFFFFFFFFFLL;
  v143 = __DataStorage._length.getter();
  if (v143 >= v174)
  {
    v144 = v174;
  }

  else
  {
    v144 = v143;
  }

  if (v141)
  {
    if (__s1 != v141)
    {
      v13 = memcmp(__s1, v141, v144);
      sub_100016590(v108, v3);
      v101 = v193;
      v6 = v190;
      goto LABEL_301;
    }

    sub_100016590(v108, v3);
    v6 = v190;
    v106 = v191;
LABEL_302:
    v156 = v106;
    v157 = v6;
LABEL_305:
    sub_100016590(v156, v157);
    goto LABEL_306;
  }

  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_376:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_377:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_378:
  v205 = v182;
  v206 = v183;
  __DataStorage._length.getter();
  __break(1u);
LABEL_379:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_380:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_381:
  v205 = v182;
  v206 = v183;
  __DataStorage._length.getter();
  __break(1u);
LABEL_382:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_383:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_384:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_385:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_386:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_387:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_388:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_389:
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_390:
  v138 = v183;
  v205 = v182;
  v206 = v183;
  __break(1u);
LABEL_391:
  v166 = *(v138 - 32);

  __break(1u);
LABEL_392:

  __break(1u);
  return result;
}