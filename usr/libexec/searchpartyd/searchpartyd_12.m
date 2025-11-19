uint64_t sub_100148778(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E98, &qword_10138EB58);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_1001508E0;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FFC0;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_100148F1C(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E88, &qword_10138EB48);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_1001508CC;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FF70;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_1001496C0(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E80, &qword_10138EB40);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_100150828;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FF20;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_100149E64(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E70, &unk_10138EB30);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_100150814;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FED0;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014A608(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E68, &qword_10138EB28);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_100150800;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FE80;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014ADAC(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E60, &qword_10138EAF8);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_1001507EC;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FE30;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014B550(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E50, &unk_10138EAC0);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_1001507D8;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FDE0;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014BCF4(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E48, &qword_10138EA90);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_1001507CC;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FD90;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014C498(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E38, &unk_10138EA80);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_1001507B8;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FD40;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014CC3C(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E30, &qword_10138EA78);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_1001507AC;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FCF0;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014D3E0(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E20, &qword_10138EA68);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_1001506E0;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FCA0;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014DB84(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E18, &qword_10138EA60);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_10015062C;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FC50;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014E328(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E10, &qword_10138EA58);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_100150620;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_10160FC00;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  Subscription.subscriber.getter();
  v5 = v11;
  v6 = v12;
  sub_1000035D0(v10, v11);
  v7 = *(v6 + 8);
  type metadata accessor for SPServiceState(0);
  v7(a2, a3, v8, v5, v6);
  return sub_100007BAC(v10);
}

uint64_t sub_10014EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  Subscription.subscriber.getter();
  v9 = v15;
  v10 = v16;
  sub_1000035D0(v14, v15);
  v11 = *(v10 + 8);
  v12 = sub_1000BC4D4(a4, a5);
  v11(a2, a3, v12, v9, v10);
  return sub_100007BAC(v14);
}

uint64_t sub_10014EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  Subscription.subscriber.getter();
  v7 = v11;
  v8 = v12;
  sub_1000035D0(v10, v11);
  (*(v8 + 8))(a2, a3, a4, v7, v8);
  return sub_100007BAC(v10);
}

uint64_t sub_10014ECE4(char a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v40 = a4;
  v38 = a3;
  v41 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v39);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DefaultConfigurationLayer();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  LOBYTE(aBlock[0]) = a1;
  v22 = String.init<A>(describing:)();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100008C00();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  os_log(_:dso:log:_:_:)();

  v25 = *(v41 + 56);
  sub_10001F280(v38, aBlock);

  sub_1008F9008(aBlock, a1, v20);
  v26 = sub_1010738E0(v20, v25);

  sub_100150BA4(v20, type metadata accessor for DefaultConfigurationLayer);
  sub_10013FF08(v26, v40 & 1);

  sub_1000BC488();
  v27 = v39;
  (*(v13 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v39);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v16, v27);
  v29 = swift_allocObject();
  v31 = v42;
  v30 = v43;
  *(v29 + 16) = v42;
  *(v29 + 24) = v30;
  aBlock[4] = sub_100150F28;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10160FB88;
  v32 = _Block_copy(aBlock);
  sub_100012908(v31);
  v33 = v44;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = &_swiftEmptyArrayStorage;
  sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v34 = v47;
  v35 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v48 + 8))(v34, v35);
  (*(v45 + 8))(v33, v46);
}

uint64_t sub_10014F244()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = OBJC_IVAR____TtC12searchpartyd24ConfigurationCoordinator_rootURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_10014F2EC()
{
  sub_10014F244();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfigurationCoordinator()
{
  result = qword_101697C10;
  if (!qword_101697C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014F398()
{
  result = type metadata accessor for URL();
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

uint64_t sub_10014F468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  sub_10001F280(a1, aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_101697DC8, &qword_10138CDB8);
  Subscription.init(subscriber:unsubscribeBlock:)();
  v10 = *(v2 + 32);
  (*(v6 + 16))(v9, a2, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, v9, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100150124;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10013A884;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10160FA98;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014F708(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10014F784(a1);
  }

  return result;
}

uint64_t sub_10014F784(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  v8 = *(v1 + 32);
  (*(v4 + 16))(aBlock - v6, a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1001502D8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_100150F2C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10160FB10;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014F9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  (*(v5 + 16))(&v16 - v7, a2, v4);
  swift_beginAccess();
  v9 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100A5C184(0, v9[2] + 1, 1, v9);
    *(a1 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100A5C184(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a1 + 16) = v9;
  swift_endAccess();
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  v14 = *(*(a1 + 16) + 16);
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = v14;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10014FC1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v10[2] = a2;

  v5 = sub_10013E228(sub_100150374, v10, v4, &qword_1016B1E70, &qword_10138CDB0, sub_1011243F4);
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;

  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = *(*(a1 + 16) + 16);
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = v8;
  os_log(_:dso:log:_:_:)();
}

BOOL sub_10014FD8C()
{
  sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  sub_1000041A4(&qword_101697DD0, &qword_1016B1E70, &qword_10138CDB0);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10014FE30()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_10014FE74(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_10014FEC0())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10014FF3C(char a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  *(v2 + 56) = &type metadata for Bool;
  *(v2 + 64) = &protocol witness table for Bool;
  *(v2 + 32) = a1 & 1;
  os_log(_:dso:log:_:_:)();

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000034A4();
    sub_100EEA310();
  }

  return result;
}

uint64_t sub_1001500B0(uint64_t a1)
{
  result = sub_1001505C0(&qword_101697DC0, type metadata accessor for ConfigurationCoordinator);
  *(a1 + 8) = result;
  return result;
}

Class sub_10015013C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_1001501C8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 456))(v1, v2);
}

uint64_t sub_100150220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 464))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100150280(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 472))(v1, v2);
}

uint64_t sub_1001502F0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1001503B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[3] = a7;
  v14[4] = a8;
  v11 = sub_1000280DC(v14);
  (*(*(a7 - 8) + 16))(v11, a1, a7);
  v12 = *(a6 + 48);
  QueueSynchronizer.conditionalSync<A>(_:)();
  return sub_100007BAC(v14);
}

uint64_t sub_10015049C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100150504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001505C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100150638(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10014EC40(v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1001506F4(uint64_t *a1, uint64_t *a2)
{
  v5 = *(sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10014EB7C(v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_100150828()
{
  v1 = *(sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10014EACC(v0 + v2, v4, v5);
}

uint64_t sub_100150944@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
}

uint64_t sub_100150994()
{
  v1 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

unint64_t sub_100150A64()
{
  result = qword_101697EE0;
  if (!qword_101697EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697EE0);
  }

  return result;
}

unint64_t sub_100150AB8()
{
  result = qword_101697EE8;
  if (!qword_101697EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697EE8);
  }

  return result;
}

uint64_t sub_100150B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100150BA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100150C04()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100150C48()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemInfoDynamic.MeDeviceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemInfoDynamic.MeDeviceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100150DCC()
{
  result = qword_101697EF0;
  if (!qword_101697EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697EF0);
  }

  return result;
}

unint64_t sub_100150E20(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101607EE8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100150E6C()
{
  result = qword_101697EF8;
  if (!qword_101697EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697EF8);
  }

  return result;
}

void sub_100150FC8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v80 = &v70 - v7;
  v8 = type metadata accessor for Date();
  v79 = *(v8 - 8);
  v9 = *(v79 + 64);
  __chkstk_darwin(v8);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v81 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  v83 = type metadata accessor for UUID();
  v17 = *(v83 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v83);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v82 = &v70 - v22;
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x800000010138ED40 == v23)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      sub_100153528();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();

      return;
    }
  }

  v76 = v8;
  v77 = v21;
  v75 = v2;
  v25 = [a1 recordID];
  v26 = [v25 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = a1;

  UUID.init(uuidString:)();

  v28 = v17;
  v29 = *(v17 + 48);
  v30 = v83;
  if (v29(v16, 1, v83) == 1)
  {
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    sub_100153528();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();

    return;
  }

  v32 = v82;
  v71 = *(v28 + 32);
  v72 = v28 + 32;
  v71(v82, v16, v30);
  v70 = type metadata accessor for KeyAlignmentRecord();
  v73 = *(v70 + 20);
  v74 = v28;
  (*(v28 + 16))(a2 + v73, v32, v30);
  v33 = objc_autoreleasePoolPush();
  v34 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v27 encodeSystemFieldsWithCoder:v34];
  [v34 finishEncoding];
  v35 = [v34 encodedData];
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = a2;
  v39 = v38;

  objc_autoreleasePoolPop(v33);
  *v37 = v36;
  v37[1] = v39;
  v40 = v37;
  v41 = v27;
  v42 = [v27 encryptedValues];
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 objectForKeyedSubscript:v43];

  if (!v44 || (v85 = v44, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    sub_100153528();
    swift_allocError();
    *v51 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    v50 = *(v74 + 8);
    v48 = v83;
    v50(v82, v83);
    goto LABEL_12;
  }

  v45 = v81;
  UUID.init(uuidString:)();
  v46 = v45;

  v47 = v45;
  v48 = v83;
  if (v29(v47, 1, v83) == 1)
  {
    sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
    sub_100153528();
    swift_allocError();
    *v49 = 4;
    swift_willThrow();

    swift_unknownObjectRelease();
    v50 = *(v74 + 8);
    v50(v82, v48);
LABEL_12:
    sub_100016590(*v40, v40[1]);
    v50(v40 + v73, v48);
    return;
  }

  v71(v77, v46, v48);
  v53 = String._bridgeToObjectiveC()();
  v81 = v42;
  v54 = [v42 objectForKeyedSubscript:v53];

  v55 = v74;
  if (!v54 || (v84 = v54, (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_101385D80;
    *(v66 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v66 + 64) = sub_10013A2D8();
    *(v66 + 32) = v41;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v67 = v41;
    v68 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100153528();
    swift_allocError();
    *v69 = 5;
    swift_willThrow();

    swift_unknownObjectRelease();
    v50 = *(v55 + 8);
    v50(v77, v48);
    v50(v82, v48);
    goto LABEL_12;
  }

  v56 = v85;
  v57 = String._bridgeToObjectiveC()();
  v58 = [v81 objectForKeyedSubscript:v57];

  if (!v58)
  {
    v59 = v80;
    (*(v79 + 56))(v80, 1, 1, v76);
    goto LABEL_20;
  }

  v84 = v58;
  v59 = v80;
  v60 = v76;
  v61 = swift_dynamicCast();
  v62 = v79;
  (*(v79 + 56))(v59, v61 ^ 1u, 1, v60);
  if ((*(v62 + 48))(v59, 1, v60) == 1)
  {
LABEL_20:
    sub_10000B3A8(v59, &unk_101696900, &unk_10138B1E0);
    goto LABEL_21;
  }

  (*(v55 + 8))(v82, v48);

  swift_unknownObjectRelease();
  v63 = *(v62 + 32);
  v64 = v78;
  v63(v78, v59, v60);
  v65 = v70;
  v71(v40 + *(v70 + 24), v77, v48);
  *(v40 + *(v65 + 28)) = v56;
  v63(v40 + *(v65 + 32), v64, v60);
}

uint64_t sub_100151990()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177A500);
  sub_1000076D4(v0, qword_10177A500);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

unint64_t sub_100151AEC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100151B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100152B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100151BC8(uint64_t a1)
{
  v2 = sub_100153414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151C04(uint64_t a1)
{
  v2 = sub_100153414();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100151C40(int *a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  v4 = *v1;
  v5 = v1[1];
  Data.hash(into:)();
  v6 = a1[5];
  type metadata accessor for UUID();
  sub_100152A28(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v7 = v3 + a1[6];
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v3 + a1[7]));
  v8 = a1[8];
  type metadata accessor for Date();
  sub_100152A28(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100151D78(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_100152A28(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[7]));
  v9 = a2[8];
  type metadata accessor for Date();
  sub_100152A28(&unk_101698070, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100151E94(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_100152A28(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[7]));
  v9 = a2[8];
  type metadata accessor for Date();
  sub_100152A28(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100151FCC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_101697F48, &unk_10138ED50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100153414();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v18 = *v3;
  v19 = v11;
  v20 = 0;
  sub_100017D5C(v18, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v18, v19);
  if (!v2)
  {
    v12 = type metadata accessor for KeyAlignmentRecord();
    v13 = v12[5];
    LOBYTE(v18) = 1;
    type metadata accessor for UUID();
    sub_100152A28(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v12[7]);
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v12[8];
    LOBYTE(v18) = 4;
    type metadata accessor for Date();
    sub_100152A28(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10015228C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = type metadata accessor for Date();
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v37);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = sub_1000BC4D4(&qword_101697F20, &qword_10138ED48);
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  v17 = type metadata accessor for KeyAlignmentRecord();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100153414();
  v43 = v16;
  v22 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_100007BAC(a1);
  }

  v44 = v10;
  v46 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v20 = v45;
  LOBYTE(v45) = 1;
  sub_100152A28(&qword_101698300, &type metadata accessor for UUID);
  v23 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v17;
  v24 = &v20[*(v17 + 20)];
  v25 = *(v40 + 32);
  v25(v24, v12, v23);
  LOBYTE(v45) = 2;
  v26 = v44;
  v33 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v34;
  v25(&v20[*(v34 + 24)], v26, v23);
  LOBYTE(v45) = 3;
  v28 = v42;
  *&v20[*(v27 + 28)] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v45) = 4;
  sub_100152A28(&qword_101697F40, &type metadata accessor for Date);
  v29 = v38;
  v30 = v27;
  v31 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v41 + 8))(v43, v28);
  (*(v35 + 32))(&v20[*(v30 + 32)], v29, v31);
  sub_100153468(v20, v36);
  sub_100007BAC(a1);
  return sub_1001534CC(v20);
}

void sub_100152870(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = objc_autoreleasePoolPush();
  if (qword_101694460 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for URL();
  sub_1000076D4(v3, qword_10177A500);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100152958(uint64_t a1)
{
  *(a1 + 8) = sub_100152A28(&unk_101697F00, type metadata accessor for KeyAlignmentRecord);
  result = sub_100152A28(&qword_1016B1580, type metadata accessor for KeyAlignmentRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for KeyAlignmentRecord()
{
  result = qword_101697FF8;
  if (!qword_101697FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100152A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100152A70(uint64_t a1)
{
  result = sub_100152A28(&unk_101697F10, type metadata accessor for KeyAlignmentRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100152AC8(uint64_t a1, uint64_t a2)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for KeyAlignmentRecord();
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v7 = v4[8];

  return static Date.== infix(_:_:)();
}

uint64_t sub_100152B80(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000011 && 0x800000010134C410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010134C430 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100152D44(uint64_t a1, id *a2)
{
  v4 = type metadata accessor for Date();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  __chkstk_darwin(v4);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v7 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v51 = &v44 - v8;
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v49 = &v44 - v14;
  __chkstk_darwin(v13);
  v50 = &v44 - v15;
  [*a2 encryptedValues];
  swift_getObjectType();
  v16 = type metadata accessor for KeyAlignmentRecord();
  v17 = v16[6];
  v52 = a1;
  v18 = UUID.uuidString.getter();
  v20 = v19;
  CKRecordKeyValueSetting.subscript.getter();
  if (!v56)
  {

    v21 = v52;
    goto LABEL_7;
  }

  if (v18 != v55 || v56 != v20)
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = v52;
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_7:
    v23 = UUID.uuidString.getter();
    v57 = &type metadata for String;
    v58 = &protocol witness table for String;
    v55 = v23;
    v56 = v24;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_8;
  }

  v21 = v52;
LABEL_8:
  v25 = *(v21 + v16[7]);
  CKRecordKeyValueSetting.subscript.getter();
  if ((v56 & 1) != 0 || v25 != v55)
  {
    goto LABEL_16;
  }

  v45 = v25;
  v27 = v53;
  v26 = v54;
  v28 = v50;
  (*(v53 + 16))(v50, v21 + v16[8], v54);
  (*(v27 + 56))(v28, 0, 1, v26);
  v29 = v26;
  v30 = v49;
  CKRecordKeyValueSetting.subscript.getter();
  v31 = *(v48 + 48);
  v32 = v51;
  sub_1000D3410(v28, v51);
  v48 = v31;
  sub_1000D3410(v30, v32 + v31);
  v33 = *(v27 + 48);
  if (v33(v32, 1, v29) != 1)
  {
    v35 = v47;
    sub_1000D3410(v32, v47);
    v36 = v48;
    if (v33(v32 + v48, 1, v29) != 1)
    {
      v41 = v53;
      v42 = v46;
      (*(v53 + 32))(v46, v32 + v36, v29);
      sub_100152A28(&qword_101698290, &type metadata accessor for Date);
      LODWORD(v48) = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v41 + 8);
      v43(v42, v29);
      sub_10000B3A8(v49, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
      v43(v35, v29);
      sub_10000B3A8(v51, &unk_101696900, &unk_10138B1E0);
      v21 = v52;
      v25 = v45;
      if (v48)
      {
        return swift_unknownObjectRelease();
      }

      goto LABEL_16;
    }

    sub_10000B3A8(v49, &unk_101696900, &unk_10138B1E0);
    v34 = v51;
    sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
    (*(v53 + 8))(v35, v54);
    goto LABEL_15;
  }

  sub_10000B3A8(v30, &unk_101696900, &unk_10138B1E0);
  v34 = v51;
  sub_10000B3A8(v28, &unk_101696900, &unk_10138B1E0);
  if (v33(v34 + v48, 1, v54) != 1)
  {
LABEL_15:
    sub_10000B3A8(v34, &unk_1016B1660, &unk_10138CE10);
    v21 = v52;
    v25 = v45;
LABEL_16:
    v57 = &type metadata for UInt64;
    v58 = &protocol witness table for UInt64;
    v55 = v25;
    CKRecordKeyValueSetting.subscript.setter();
    v37 = v16[8];
    v38 = v54;
    v57 = v54;
    v58 = &protocol witness table for Date;
    v39 = sub_1000280DC(&v55);
    (*(v53 + 16))(v39, v21 + v37, v38);
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  sub_10000B3A8(v34, &unk_101696900, &unk_10138B1E0);
  return swift_unknownObjectRelease();
}

unint64_t sub_100153414()
{
  result = qword_101697F28;
  if (!qword_101697F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F28);
  }

  return result;
}

uint64_t sub_100153468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyAlignmentRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001534CC(uint64_t a1)
{
  v2 = type metadata accessor for KeyAlignmentRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100153528()
{
  result = qword_101697F70;
  if (!qword_101697F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F70);
  }

  return result;
}

uint64_t sub_1001535C4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001536B4()
{
  result = qword_101698048;
  if (!qword_101698048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698048);
  }

  return result;
}

unint64_t sub_10015370C()
{
  result = qword_101698050;
  if (!qword_101698050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698050);
  }

  return result;
}

unint64_t sub_100153764()
{
  result = qword_101698058;
  if (!qword_101698058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698058);
  }

  return result;
}

unint64_t sub_1001537BC()
{
  result = qword_101698060;
  if (!qword_101698060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698060);
  }

  return result;
}

Swift::Int sub_100153828()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100153960()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100153A60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100153B70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646572616873;
  if (v2 != 1)
  {
    v4 = 6448503;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x72656E776FLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646572616873;
  if (*a2 != 1)
  {
    v8 = 6448503;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72656E776FLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100153C58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100153CEC()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100153D6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100153DFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100154428(*a1);
  *a2 = result;
  return result;
}

void sub_100153E2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646572616873;
  if (v2 != 1)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72656E776FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100153F2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100153F74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100153FB8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BB2CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001540A8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_100154198@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100154474(*a1);
  *a2 = result;
  return result;
}

void sub_1001541C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1835365481;
  v5 = 0xEF736E6F69746163;
  v6 = 0x6F4C657275636573;
  v7 = 0xE300000000000000;
  v8 = 6448503;
  if (v2 != 4)
  {
    v8 = 0x646574726F706D69;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1936094325;
  if (v2 != 1)
  {
    v10 = 0x63616542666C6573;
    v9 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1001542A4()
{
  result = qword_101698080;
  if (!qword_101698080)
  {
    sub_1000BC580(&qword_101698088, qword_10138F080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698080);
  }

  return result;
}

unint64_t sub_1001543CC()
{
  result = qword_101698090;
  if (!qword_101698090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698090);
  }

  return result;
}

unint64_t sub_100154428(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101607F80, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100154474(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101607FE8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001544C0()
{
  result = qword_101698098;
  if (!qword_101698098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698098);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryBatteryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryBatteryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100154678()
{
  result = qword_1016980A0;
  if (!qword_1016980A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980A0);
  }

  return result;
}

unint64_t sub_1001546D0()
{
  result = qword_1016980A8;
  if (!qword_1016980A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980A8);
  }

  return result;
}

unint64_t sub_100154724()
{
  result = qword_1016980B0;
  if (!qword_1016980B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980B0);
  }

  return result;
}

unint64_t sub_100154778()
{
  result = qword_1016980B8;
  if (!qword_1016980B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980B8);
  }

  return result;
}

void sub_1001547CC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016980C0, &unk_10138F3A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v123 = &v106 - v6;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v121 = *(v7 - 8);
  v122 = v7;
  v8 = *(v121 + 64);
  v9 = __chkstk_darwin(v7);
  v119 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v120 = &v106 - v12;
  __chkstk_darwin(v11);
  v14 = &v106 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v125 = v15;
  v126 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v124 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v106 - v24;
  v128 = type metadata accessor for UUID();
  v26 = *(v128 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v128);
  v30 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v127 = &v106 - v31;
  v129 = a1;
  if (CKRecord.recordType.getter() == 0x6365526572616853 && v32 == 0xEB0000000064726FLL)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      sub_100155674();
      swift_allocError();
      *v48 = 0;
      swift_willThrow();

      return;
    }
  }

  v118 = a2;
  v34 = v129;
  v35 = [v129 recordID];
  v36 = [v35 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v37 = v26[6];
  v38 = v128;
  if (v37(v25, 1, v128) == 1)
  {
    sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
    sub_100155674();
    swift_allocError();
    *v39 = 2;
    swift_willThrow();

    return;
  }

  v117 = v26;
  v41 = v26[4];
  v40 = v26 + 4;
  v116 = v41;
  v41(v127, v25, v38);
  v42 = [v34 encryptedValues];
  ObjectType = swift_getObjectType();
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 objectForKeyedSubscript:v43];

  if (!v44 || (v132 = v44, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    sub_100155674();
    swift_allocError();
    *v47 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    (v117[1])(v127, v128);
    return;
  }

  UUID.init(uuidString:)();

  v45 = v128;
  if (v37(v23, 1, v128) == 1)
  {
    sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);
    sub_100155674();
    swift_allocError();
    *v46 = 4;
    swift_willThrow();

    swift_unknownObjectRelease();
    (v117[1])(v127, v45);
    return;
  }

  v49 = v30;
  v114 = v40;
  v116(v30, v23, v45);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v42 objectForKeyedSubscript:v50];

  v52 = v117;
  if (!v51 || (v132 = v51, (swift_dynamicCast() & 1) == 0) || (v53 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0(), !v55))
  {
    sub_100155674();
    swift_allocError();
    *v64 = 5;
    swift_willThrow();

LABEL_21:
    swift_unknownObjectRelease();
    v65 = v52[1];
    v66 = v128;
    v65(v49, v128);
    v65(v127, v66);
    return;
  }

  v56 = v55;
  v111 = v54;
  v112 = v53;
  v57 = String._bridgeToObjectiveC()();
  v58 = [v42 objectForKeyedSubscript:v57];

  if (!v58)
  {

    (*(v126 + 56))(v14, 1, 1, v125);
    goto LABEL_23;
  }

  v113 = v56;
  v130 = v58;
  v59 = v125;
  v60 = swift_dynamicCast();
  v61 = v126;
  v62 = v126 + 56;
  v63 = *(v126 + 56);
  v63(v14, v60 ^ 1u, 1, v59);
  if ((*(v61 + 48))(v14, 1, v59) == 1)
  {

LABEL_23:
    v67 = &unk_101696900;
    v68 = &unk_10138B1E0;
    v69 = v14;
LABEL_24:
    sub_10000B3A8(v69, v67, v68);
LABEL_25:
    v70 = v129;
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_101385D80;
    *(v71 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v71 + 64) = sub_10013A2D8();
    *(v71 + 32) = v70;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v72 = v70;
    v73 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100155674();
    swift_allocError();
    *v74 = 6;
    swift_willThrow();

    goto LABEL_21;
  }

  v109 = v63;
  v110 = v62;
  v75 = *(v61 + 32);
  v108 = v61 + 32;
  v107 = v75;
  v75(v124, v14, v59);
  v76 = String._bridgeToObjectiveC()();
  v77 = [v42 objectForKeyedSubscript:v76];

  if (v77)
  {
    v130 = v77;
    v78 = v119;
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v126 + 8))(v124, v59);

      v109(v78, 1, 1, v59);
      sub_10000B3A8(v78, &unk_101696900, &unk_10138B1E0);
      v86 = v123;
      (*(v121 + 56))(v123, 1, 1, v122);
      v67 = &unk_1016980C0;
      v68 = &unk_10138F3A0;
      v69 = v86;
      goto LABEL_24;
    }

    v79 = v109;
    v109(v78, 0, 1, v59);
    v80 = v123;
    v107(v123, v78, v59);
    v79(v80, 0, 1, v59);
  }

  else
  {
    v80 = v123;
    v109(v123, 1, 1, v59);
  }

  v81 = v120;
  (*(v121 + 56))(v80, 0, 1, v122);
  sub_1001578A0(v80, v81);
  v82 = String._bridgeToObjectiveC()();
  v83 = [v42 objectForKeyedSubscript:v82];

  if (!v83 || (v132 = v83, (swift_dynamicCast() & 1) == 0))
  {

    sub_10000B3A8(v81, &unk_101696900, &unk_10138B1E0);
    (*(v126 + 8))(v124, v59);
    goto LABEL_25;
  }

  v126 = v130;
  v123 = v131;
  v84 = String._bridgeToObjectiveC()();
  v85 = [v42 objectForKeyedSubscript:v84];

  if (v85 && (v130 = v85, swift_dynamicCast()))
  {
    v122 = v132;
  }

  else
  {
    v122 = 0;
  }

  CKRecordKeyValueSetting.subscript.getter();
  if (v131)
  {
    v87 = 1;
  }

  else
  {
    v87 = v130;
  }

  v88 = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(v87);
  if (v88 == 6)
  {
    v89 = 1;
  }

  else
  {
    v89 = v88;
  }

  LODWORD(v121) = v89;
  v90 = objc_autoreleasePoolPush();
  v91 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v92 = v129;
  [v129 encodeSystemFieldsWithCoder:v91];
  [v91 finishEncoding];
  v93 = [v91 encodedData];
  v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;

  objc_autoreleasePoolPop(v90);
  swift_unknownObjectRelease();

  v97 = v118;
  *v118 = v94;
  v97[1] = v96;
  v98 = type metadata accessor for ShareRecord();
  v99 = v128;
  v100 = v116;
  v116(v97 + v98[5], v127, v128);
  v100(v97 + v98[6], v49, v99);
  v107(v97 + v98[7], v124, v125);
  sub_1001578A0(v120, v97 + v98[8]);
  v101 = v97 + v98[9];
  *v101 = v112;
  v102 = v113;
  *(v101 + 1) = v111;
  *(v101 + 2) = v102;
  v103 = (v97 + v98[10]);
  v104 = v122;
  v105 = v123;
  *v103 = v126;
  v103[1] = v105;
  *(v97 + v98[11]) = v104;
  *(v97 + v98[12]) = v121;
}

unint64_t sub_100155674()
{
  result = qword_1016980D8;
  if (!qword_1016980D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980D8);
  }

  return result;
}

uint64_t sub_1001556C8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177A518);
  sub_1000076D4(v0, qword_10177A518);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100155828(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x7461446572616873;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0x7079546572616873;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6974617269707865;
    if (a1 != 4)
    {
      v3 = 0x6148656572616873;
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

uint64_t sub_10015596C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_101698278, &unk_10138F598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100157DC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v27 = *v3;
  v28 = v11;
  v30 = 0;
  sub_100017D5C(v27, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v27, v28);
  }

  else
  {
    sub_100016590(v27, v28);
    v12 = type metadata accessor for ShareRecord();
    v13 = v12[5];
    LOBYTE(v27) = 1;
    type metadata accessor for UUID();
    sub_100157C4C(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v12[7];
    LOBYTE(v27) = 3;
    type metadata accessor for Date();
    sub_100157C4C(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v12[8];
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v3 + v12[9];
    v18 = *v17;
    v20 = *(v17 + 1);
    v19 = *(v17 + 2);
    LOBYTE(v27) = v18;
    v28 = v20;
    v29 = v19;
    v30 = 5;
    sub_100157F84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = (v3 + v12[10]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v27) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + v12[11]);
    LOBYTE(v27) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = *(v3 + v12[12]);
    v30 = 8;
    sub_100157FD8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100155D34()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = *v0;
  v12 = v0[1];
  Data.hash(into:)();
  v13 = type metadata accessor for ShareRecord();
  v14 = v13[5];
  type metadata accessor for UUID();
  sub_100157C4C(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v15 = v1 + v13[6];
  dispatch thunk of Hashable.hash(into:)();
  v16 = v13[7];
  sub_100157C4C(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D3410(v1 + v13[8], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v17 = v1 + v13[9];
  v18 = *(v17 + 1);
  v19 = *(v17 + 2);
  Hasher._combine(_:)(*v17);
  String.hash(into:)();
  v20 = (v1 + v13[10]);
  v21 = *v20;
  v22 = v20[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v13[11]));
  Hasher._combine(_:)(*(v1 + v13[12]));
}

uint64_t sub_100156010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v50 = &v46 - v5;
  v54 = type metadata accessor for Date();
  v52 = *(v54 - 8);
  v6 = *(v52 + 64);
  __chkstk_darwin(v54);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for UUID();
  v53 = *(v55 - 8);
  v8 = *(v53 + 64);
  v9 = __chkstk_darwin(v55);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  v14 = sub_1000BC4D4(&qword_101698250, &qword_10138F590);
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for ShareRecord();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100157DC8();
  v58 = v17;
  v23 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_100007BAC(a1);
  }

  v24 = v11;
  v59 = a1;
  v48 = v21;
  v62 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v48;
  *v48 = v60;
  LOBYTE(v60) = 1;
  sub_100157C4C(&qword_101698300, &type metadata accessor for UUID);
  v26 = v13;
  v27 = v55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v18;
  v28 = v26;
  v29 = *(v53 + 32);
  v29(&v25[*(v18 + 20)], v28, v27);
  LOBYTE(v60) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v47;
  v29(&v48[v47[6]], v24, v27);
  LOBYTE(v60) = 3;
  sub_100157C4C(&qword_101697F40, &type metadata accessor for Date);
  v31 = v51;
  v32 = v54;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v52 + 32))(&v48[v30[7]], v31, v32);
  LOBYTE(v60) = 4;
  v33 = v50;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = v56;
  sub_1001578A0(v33, &v48[v30[8]]);
  v62 = 5;
  sub_100157E1C();
  v35 = v57;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LODWORD(v51) = 1;
  v36 = *(&v60 + 1);
  v37 = v61;
  v38 = &v48[v30[9]];
  *v38 = v60;
  *(v38 + 1) = v36;
  *(v38 + 2) = v37;
  LOBYTE(v60) = 6;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v59;
  v41 = &v48[v30[10]];
  *v41 = v39;
  v41[1] = v42;
  LOBYTE(v60) = 7;
  *&v48[v30[11]] = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = 8;
  sub_100157E70();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 8))(v58, v35);
  v44 = v48;
  v43 = v49;
  v48[v30[12]] = v60;
  sub_100157EC4(v44, v43);
  sub_100007BAC(v40);
  return sub_100157F28(v44);
}

uint64_t sub_100156914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100158284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100156948(uint64_t a1)
{
  v2 = sub_100157DC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100156984(uint64_t a1)
{
  v2 = sub_100157DC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001569C0(void **a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = *a1;
  [v8 encryptedValues];
  swift_getObjectType();
  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v10 = v8;
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v15 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v16 = type metadata accessor for ShareRecord();
  v17 = v2 + v16[6];
  v18 = UUID.uuidString.getter();
  *(&v35 + 1) = &type metadata for String;
  v36 = &protocol witness table for String;
  *&v34 = v18;
  *(&v34 + 1) = v19;
  CKRecordKeyValueSetting.subscript.setter();
  v20 = v16[7];
  v21 = type metadata accessor for Date();
  *(&v35 + 1) = v21;
  v36 = &protocol witness table for Date;
  v22 = sub_1000280DC(&v34);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v22, v2 + v20, v21);
  CKRecordKeyValueSetting.subscript.setter();
  sub_1000D3410(v2 + v16[8], v7);
  if ((*(v23 + 48))(v7, 1, v21) == 1)
  {
    sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  else
  {
    *(&v35 + 1) = v21;
    v36 = &protocol witness table for Date;
    v24 = sub_1000280DC(&v34);
    (*(v23 + 32))(v24, v7, v21);
  }

  CKRecordKeyValueSetting.subscript.setter();
  v25 = v2 + v16[9];
  v27 = *(v25 + 8);
  v26 = *(v25 + 16);
  *(&v35 + 1) = &type metadata for String;
  v36 = &protocol witness table for String;
  *&v34 = v27;
  *(&v34 + 1) = v26;

  CKRecordKeyValueSetting.subscript.setter();
  v28 = (v2 + v16[10]);
  v30 = *v28;
  v29 = v28[1];
  *(&v35 + 1) = &type metadata for String;
  v36 = &protocol witness table for String;
  *&v34 = v30;
  *(&v34 + 1) = v29;

  CKRecordKeyValueSetting.subscript.setter();
  v31 = *(v2 + v16[11]);
  *(&v35 + 1) = &type metadata for UInt64;
  v36 = &protocol witness table for UInt64;
  *&v34 = v31;
  CKRecordKeyValueSetting.subscript.setter();
  v32 = *(v2 + v16[12]);
  *(&v35 + 1) = &type metadata for Int;
  v36 = &protocol witness table for Int;
  *&v34 = v32;
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

Swift::Int sub_100156E00()
{
  Hasher.init(_seed:)();
  sub_100155D34();
  return Hasher._finalize()();
}

Swift::Int sub_100156E44()
{
  Hasher.init(_seed:)();
  sub_100155D34();
  return Hasher._finalize()();
}

uint64_t sub_100156E80(uint64_t a1)
{
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for URL();
  sub_1000076D4(v3, qword_10177A518);
  v4 = v1 + *(a1 + 24);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

char *sub_100156F5C()
{
  v1 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v52 = &v50 - v3;
  v4 = type metadata accessor for Date();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = __chkstk_darwin(v4);
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v50 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v50 - v19;
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v23 = type metadata accessor for ShareRecord();
  v24 = v23[5];
  v56 = v10;
  v25 = *(v10 + 16);
  v60 = v22;
  v25(v22, v0 + v24, v9);
  v26 = v0 + v23[6];
  v61 = v20;
  v58 = v9;
  v25(v20, v26, v9);
  v27 = v63;
  v62 = v17;
  UUID.init(uuid:)();
  v49 = 0;
  v57 = v14;
  v28 = v52;
  UUID.init(uuid:)();
  v55 = [objc_opt_self() SPOwner];
  v53 = sub_100EB3708(*(v0 + v23[9]), *(v0 + v23[9] + 8), *(v0 + v23[9] + 16));
  v29 = v23[7];
  v30 = v54;
  (*(v27 + 16))();
  sub_1000D3410(v0 + v23[8], v28);
  v31 = *(v27 + 48);
  v32 = v31(v28, 1, v4);
  v51 = v4;
  if (v32 == 1)
  {
    static Date.distantFuture.getter();
    if (v31(v28, 1, v4) != 1)
    {
      sub_10000B3A8(v28, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v27 + 32))(v59, v28, v4);
  }

  v33 = objc_allocWithZone(SPBeaconShare);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v35 = UUID._bridgeToObjectiveC()().super.isa;
  v36 = UUID._bridgeToObjectiveC()().super.isa;
  v37 = v57;
  v38 = UUID._bridgeToObjectiveC()().super.isa;
  v39 = Date._bridgeToObjectiveC()().super.isa;
  v40 = Date._bridgeToObjectiveC()().super.isa;
  LOBYTE(v49) = 0;
  v41 = v33;
  v42 = v55;
  v43 = v53;
  v52 = [v41 initWithIdentifier:isa beaconIdentifier:v35 sharingCircleIdentifier:v36 peerTrustIdentifier:v38 owner:v55 sharee:v53 state:5 creationDate:v39 expirationDate:v40 visitorCount:0 delegationStatus:v49];

  v44 = *(v63 + 8);
  v45 = v51;
  v44(v59, v51);
  v44(v30, v45);
  v46 = *(v56 + 8);
  v47 = v58;
  v46(v37, v58);
  v46(v62, v47);
  v46(v61, v47);
  v46(v60, v47);
  return v52;
}

BOOL sub_10015749C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for ShareRecord();
  v18 = v17[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[6];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v20 = v17[7];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v21 = v17[8];
  v22 = *(v13 + 48);
  sub_1000D3410(a1 + v21, v16);
  v36 = v22;
  sub_1000D3410(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_1000D3410(v16, v12);
    if (v23(&v16[v36], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v36], v4);
      sub_100157C4C(&qword_101698290, &type metadata accessor for Date);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v5 + 8);
      v25(v8, v4);
      v25(v12, v4);
      sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_10000B3A8(v16, &unk_1016B1660, &unk_10138CE10);
    return 0;
  }

  if (v23(&v16[v36], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_10000B3A8(v16, &unk_101696900, &unk_10138B1E0);
LABEL_12:
  v26 = v17[9];
  v27 = a1 + v26;
  v28 = *(a1 + v26);
  v29 = (a2 + v26);
  if (v28 == *v29 && (*(v27 + 8) == *(v29 + 1) && *(v27 + 16) == *(v29 + 2) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (v30 = v17[10], v31 = *(a1 + v30), v32 = *(a1 + v30 + 8), v33 = (a2 + v30), v31 == *v33) && v32 == v33[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      if (*(a1 + v17[11]) == *(a2 + v17[11]))
      {
        return *(a1 + v17[12]) == *(a2 + v17[12]);
      }
    }
  }

  return 0;
}

uint64_t sub_1001578A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ShareRecord()
{
  result = qword_1016981C8;
  if (!qword_1016981C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCActivity.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCActivity.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100157AD4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100157BAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100157BAC()
{
  if (!qword_1016BA040)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BA040);
    }
  }
}

uint64_t sub_100157C4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100157C98()
{
  result = qword_101698230;
  if (!qword_101698230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698230);
  }

  return result;
}

uint64_t sub_100157CEC(uint64_t a1)
{
  *(a1 + 8) = sub_100157C4C(&qword_101698238, type metadata accessor for ShareRecord);
  result = sub_100157C4C(&unk_101698240, type metadata accessor for ShareRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100157D70(uint64_t a1)
{
  result = sub_100157C4C(&unk_1016B15D0, type metadata accessor for ShareRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100157DC8()
{
  result = qword_101698258;
  if (!qword_101698258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698258);
  }

  return result;
}

unint64_t sub_100157E1C()
{
  result = qword_101698268;
  if (!qword_101698268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698268);
  }

  return result;
}

unint64_t sub_100157E70()
{
  result = qword_101698270;
  if (!qword_101698270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698270);
  }

  return result;
}

uint64_t sub_100157EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100157F28(uint64_t a1)
{
  v2 = type metadata accessor for ShareRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100157F84()
{
  result = qword_1016CACE0;
  if (!qword_1016CACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CACE0);
  }

  return result;
}

unint64_t sub_100157FD8()
{
  result = qword_101698280;
  if (!qword_101698280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698280);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PublishingPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PublishingPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100158180()
{
  result = qword_101698298;
  if (!qword_101698298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698298);
  }

  return result;
}

unint64_t sub_1001581D8()
{
  result = qword_1016982A0;
  if (!qword_1016982A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016982A0);
  }

  return result;
}

unint64_t sub_100158230()
{
  result = qword_1016982A8;
  if (!qword_1016982A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016982A8);
  }

  return result;
}

uint64_t sub_100158284(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x7461446572616873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6148656572616873 && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134C4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065)
  {

    return 8;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_100158588(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_101698498, &unk_10138FC80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10015DF0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

Swift::Int ProximityPairingStatsCommandPayload.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100158734()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10015878C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
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

uint64_t sub_100158814(uint64_t a1)
{
  v2 = sub_10015DF0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100158850(uint64_t a1)
{
  v2 = sub_10015DF0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015888C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  else
  {
    v5 = Data.trimmed.getter();
    v6 = v7;
  }

  result = sub_100016590(v3, v4);
  *a2 = v5;
  a2[1] = v6;
  return result;
}

void *sub_100158918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10015D9B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_100158960()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001589AC()
{
  v1 = *v0;
  v2 = v0[1];
  return Data.hash(into:)();
}

Swift::Int sub_1001589B4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001589FC()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = *v0;
  v4 = v0[1];
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (!v6)
  {
    return Data.hexString.getter();
  }

  return result;
}

unint64_t sub_100158C8C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000012;
    v7 = 0x4B65746176697270;
    if (a1 != 10)
    {
      v7 = 0x697274656D6D7973;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6449726F646E6576;
    v9 = 0x49746375646F7270;
    if (a1 != 7)
    {
      v9 = 0x45676E6972696170;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0xD000000000000015;
    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0x64496E6D66;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C65646F6DLL;
    if (a1 != 1)
    {
      v4 = 0x65566D6574737973;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100158E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015DB2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100158E64(uint64_t a1)
{
  v2 = sub_10015D228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100158EA0(uint64_t a1)
{
  v2 = sub_10015D228();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100158F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to CloudBacked.creationDate(store:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100014650;

  return CloudBacked.creationDate(store:)(a1, a2, a3, a4);
}

uint64_t sub_100158FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to CloudBacked.modificationDate(store:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100014744;

  return CloudBacked.modificationDate(store:)(a1, a2, a3, a4);
}

uint64_t sub_1001590A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CloudBacked.recordChangeTag(store:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100159154;

  return CloudBacked.recordChangeTag(store:)(a1, a2, a3);
}

uint64_t sub_100159154(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

void sub_10015927C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v167 = &v150 - v6;
  v7 = type metadata accessor for SymmetricKey256();
  v165 = *(v7 - 8);
  v166 = v7;
  v8 = *(v165 + 64);
  __chkstk_darwin(v7);
  v164 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101698368, &unk_10138F790);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v169 = &v150 - v12;
  v13 = type metadata accessor for P256PrivateKey();
  v173 = *(v13 - 8);
  v14 = *(v173 + 64);
  __chkstk_darwin(v13);
  v168 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for PeripheralConnectionMaterial(0);
  v16 = *(*(v170 - 8) + 64);
  __chkstk_darwin(v170);
  v172 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v150 - v23;
  v25 = type metadata accessor for UUID();
  v176 = *(v25 - 8);
  v26 = v176[8];
  v27 = __chkstk_darwin(v25);
  v29 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v174 = &v150 - v30;
  if (CKRecord.recordType.getter() == 0xD00000000000001CLL && 0x800000010138F780 == v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      sub_10015D384();
      swift_allocError();
      *v71 = 0;
      goto LABEL_17;
    }
  }

  v160 = v29;
  v162 = v13;
  v33 = [a1 recordID];
  v34 = [v33 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v175 = v25;

  UUID.init(uuidString:)();
  v35 = v175;

  v36 = v176;
  v37 = v176[6];
  if (v37(v24, 1, v35) == 1)
  {
    sub_10000B3A8(v24, &qword_1016980D0, &unk_10138F3B0);
    sub_10015D384();
    swift_allocError();
    *v38 = 1;
LABEL_17:
    swift_willThrow();

    return;
  }

  v159 = v37;
  v39 = v174;
  v158 = v36[4];
  v158(v174, v24, v35);
  v161 = a1;
  v40 = [a1 encryptedValues];
  v41 = v36[2];
  v163 = a2;
  v41(a2, v39, v35);
  v42 = String._bridgeToObjectiveC()();
  v43 = [v40 objectForKeyedSubscript:v42];

  if (!v43 || (v179 = v43, v44 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v70 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v49 = v175;
LABEL_19:
    v73 = v176[1];
    v73(v174, v49);
    v73(v163, v49);
    return;
  }

  v155 = v41;
  v156 = v44;
  v45 = v177;
  v46 = v178;
  v47 = String._bridgeToObjectiveC()();
  v157 = v40;
  v48 = [v40 objectForKeyedSubscript:v47];

  v49 = v175;
  v50 = v161;
  if (!v48 || (v179 = v48, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v72 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v45, v46);
    goto LABEL_19;
  }

  v153 = v45;
  v51 = v177;
  v52 = v178;
  v53 = type metadata accessor for LocalFindableAccessoryRecord();
  v54 = &v163[*(v53 + 20)];
  *v54 = v51;
  v54[1] = v52;
  v55 = String._bridgeToObjectiveC()();
  v56 = [v157 objectForKeyedSubscript:v55];

  v57 = v175;
  v154 = v53;
  if (!v56 || (v179 = v56, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v74 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v153, v46);
    v65 = v176[1];
    v65(v174, v57);
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    LODWORD(v176) = 0;
    goto LABEL_22;
  }

  v58 = v178;
  v59 = v163;
  v60 = &v163[*(v53 + 24)];
  *v60 = v177;
  *(v60 + 1) = v58;
  v61 = v53;
  v62 = v46;
  v63 = v153;
  v177 = v153;
  v178 = v62;
  sub_100017D5C(v153, v62);
  v152 = sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v63, v62);
    sub_10015D384();
    swift_allocError();
    *v64 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v63, v62);
    v57 = v175;
    v65 = v176[1];
    v65(v174, v175);
    v66 = 0;
    v67 = 0;
    v68 = 0;
    LODWORD(v176) = 0;
    v69 = 1;
    goto LABEL_22;
  }

  v83 = Data.trimmed.getter();
  v151 = v84;
  sub_100016590(v63, v62);
  v85 = &v59[*(v61 + 28)];
  v86 = v151;
  *v85 = v83;
  v85[1] = v86;
  v87 = String._bridgeToObjectiveC()();
  v88 = [v157 objectForKeyedSubscript:v87];

  v89 = v62;
  if (v88)
  {
    v179 = v88;
    v90 = swift_dynamicCast();
    p_weak_ivar_lyt = (&ShareStopUseCase + 56);
    v92 = v161;
    if (v90)
    {
      v93 = v161;
      v94 = v177;
      v95 = v178;
      if (DataProtocol.isNull.getter())
      {
        sub_100016590(v94, v95);
        v88 = 0;
        v96 = 0xF000000000000000;
      }

      else
      {
        v88 = Data.trimmed.getter();
        v97 = v94;
        v96 = v98;
        sub_100016590(v97, v95);
      }

      v92 = v93;
      p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
    }

    else
    {
      v88 = 0;
      v96 = 0xF000000000000000;
    }
  }

  else
  {
    v96 = 0xF000000000000000;
    p_weak_ivar_lyt = (&ShareStopUseCase + 56);
    v92 = v161;
  }

  v99 = &v163[v154[8]];
  *v99 = v88;
  *(v99 + 1) = v96;
  v100 = String._bridgeToObjectiveC()();
  v101 = [v157 p:v100 weak:? ivar:?lyt[430]];

  v57 = v175;
  if (!v101)
  {
    goto LABEL_45;
  }

  v179 = v101;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  v152 = v89;
  v103 = v177;
  v102 = v178;
  sub_100017D5C(v177, v178);
  UUID.init(data:)();
  if (v159(v22, 1, v57) == 1)
  {
    sub_100016590(v103, v102);
    sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
    v89 = v152;
LABEL_45:
    sub_10015D384();
    swift_allocError();
    *v104 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v153, v89);
    v65 = v176[1];
    v65(v174, v57);
    v67 = 0;
    v68 = 0;
    LODWORD(v176) = 0;
    v69 = 1;
    v66 = 1;
    goto LABEL_22;
  }

  v159 = v103;
  v151 = v102;
  v105 = v160;
  v158(v160, v22, v57);
  v106 = v163;
  v155(&v163[v154[9]], v105, v57);
  v107 = String._bridgeToObjectiveC()();
  v108 = [v157 p:v107 weak:? ivar:?lyt[430]];

  v109 = v176;
  v110 = v152;
  if (!v108 || (v177 = v108, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v125 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v159, v151);
    sub_100016590(v153, v110);
    v65 = v109[1];
    v65(v105, v57);
LABEL_61:
    v65(v174, v57);
LABEL_62:
    v68 = 0;
    LODWORD(v176) = 0;
    v69 = 1;
    v66 = 1;
    v67 = 1;
    goto LABEL_22;
  }

  *&v106[v154[10]] = v179;
  v111 = String._bridgeToObjectiveC()();
  v112 = [v157 p:v111 weak:? ivar:?lyt[430]];

  v113 = v159;
  if (!v112 || (v177 = v112, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v126 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v127 = v113;
LABEL_60:
    sub_100016590(v127, v151);
    sub_100016590(v153, v110);
    v65 = v109[1];
    v65(v160, v57);
    goto LABEL_61;
  }

  *&v106[v154[12]] = v179;
  v114 = String._bridgeToObjectiveC()();
  v115 = [v157 p:v114 weak:? ivar:?lyt[430]];

  if (!v115)
  {
LABEL_59:
    sub_10015D384();
    swift_allocError();
    *v128 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v127 = v159;
    goto LABEL_60;
  }

  v116 = v110;
  v177 = v115;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v57 = v175;
    v109 = v176;
    v92 = v161;
    goto LABEL_59;
  }

  *&v163[v154[11]] = v179;
  v117 = String._bridgeToObjectiveC()();
  v118 = [v157 objectForKeyedSubscript:v117];

  if (!v118 || (v179 = v118, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v129 = 0;
    swift_willThrow();
    goto LABEL_64;
  }

  v119 = v177;
  v120 = v178;
  v121 = type metadata accessor for PropertyListDecoder();
  v122 = *(v121 + 48);
  v123 = *(v121 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10015DFC8(&qword_101698310, type metadata accessor for PeripheralConnectionMaterial);
  v124 = v171;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v124)
  {

    sub_100016590(v119, v120);
LABEL_64:
    swift_unknownObjectRelease();

    sub_100016590(v159, v151);
    sub_100016590(v153, v110);
    v57 = v175;
    v65 = v176[1];
    v65(v160, v175);
    v65(v174, v57);
    goto LABEL_62;
  }

  sub_10015D3D8(v172, &v163[v154[13]], type metadata accessor for PeripheralConnectionMaterial);
  v130 = String._bridgeToObjectiveC()();
  v131 = [v157 objectForKeyedSubscript:v130];

  if (!v131)
  {
    goto LABEL_69;
  }

  v179 = v131;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_69;
  }

  v133 = v177;
  v132 = v178;
  sub_100017D5C(v177, v178);
  sub_10015DFC8(&qword_1016982E0, &type metadata accessor for P256PrivateKey);
  v134 = v169;
  v135 = v162;
  KeyRepresenting.init(rawValue:)();
  if ((*(v173 + 48))(v134, 1, v135) == 1)
  {
    sub_100016590(v133, v132);
    sub_10000B3A8(v169, &unk_101698368, &unk_10138F790);
LABEL_69:
    sub_10015D384();
    swift_allocError();
    *v136 = 0;
    swift_willThrow();
    sub_100016590(v119, v120);
    swift_unknownObjectRelease();

    sub_100016590(v159, v151);
    sub_100016590(v153, v116);
    sub_10015D2D0(v172, type metadata accessor for PeripheralConnectionMaterial);
    v57 = v175;
    v65 = v176[1];
    v65(v160, v175);
    v65(v174, v57);
    LODWORD(v176) = 0;
    v69 = 1;
    v66 = 1;
    v67 = 1;
    v68 = 1;
    goto LABEL_22;
  }

  v137 = v173;
  v138 = v168;
  v139 = v162;
  (*(v173 + 32))(v168, v169, v162);
  (*(v137 + 16))(&v163[v154[14]], v138, v139);
  v140 = String._bridgeToObjectiveC()();
  v141 = [v157 objectForKeyedSubscript:v140];

  if (v141)
  {
    v179 = v141;
    if (swift_dynamicCast())
    {
      sub_10015DFC8(&qword_1016982E8, &type metadata accessor for SymmetricKey256);
      v142 = v167;
      v143 = v166;
      KeyRepresenting.init(rawValue:)();
      if ((*(v165 + 48))(v142, 1, v143) != 1)
      {
        sub_100016590(v119, v120);
        swift_unknownObjectRelease();

        sub_100016590(v133, v132);
        sub_100016590(v159, v151);
        sub_100016590(v153, v116);
        (*(v173 + 8))(v168, v162);
        sub_10015D2D0(v172, type metadata accessor for PeripheralConnectionMaterial);
        v145 = v175;
        v146 = v176[1];
        v146(v160, v175);
        v146(v174, v145);
        v147 = v164;
        v148 = *(v165 + 32);
        v149 = v166;
        v148(v164, v167, v166);
        v148(&v163[v154[15]], v147, v149);
        return;
      }

      sub_10000B3A8(v167, &qword_101698360, &qword_1013E35F0);
    }
  }

  sub_10015D384();
  swift_allocError();
  *v144 = 0;
  swift_willThrow();
  sub_100016590(v119, v120);
  swift_unknownObjectRelease();

  sub_100016590(v133, v132);
  sub_100016590(v159, v151);
  sub_100016590(v153, v116);
  (*(v173 + 8))(v168, v162);
  sub_10015D2D0(v172, type metadata accessor for PeripheralConnectionMaterial);
  v57 = v175;
  v65 = v176[1];
  v65(v160, v175);
  v65(v174, v57);
  v69 = 1;
  v66 = 1;
  v67 = 1;
  v68 = 1;
  LODWORD(v176) = 1;
LABEL_22:
  v75 = v163;
  v65(v163, v57);
  v76 = v154;
  v77 = *&v75[v154[5] + 8];

  if (v69)
  {
    v78 = *&v75[v76[6] + 8];

    v79 = v162;
    if ((v66 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v79 = v162;
    if (!v66)
    {
LABEL_24:
      v80 = v154;
      if (v67)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  v80 = v154;
  v82 = v163;
  sub_100016590(*&v163[v154[7]], *&v163[v154[7] + 8]);
  sub_100006654(*&v82[v80[8]], *&v82[v80[8] + 8]);
  if (v67)
  {
LABEL_25:
    v65(&v163[v80[9]], v175);
    if ((v68 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v68)
  {
LABEL_26:
    v81 = v163;
    if (v176)
    {
      goto LABEL_32;
    }

    return;
  }

LABEL_31:
  v81 = v163;
  sub_10015D2D0(&v163[v80[13]], type metadata accessor for PeripheralConnectionMaterial);
  if (v176)
  {
LABEL_32:
    (*(v173 + 8))(&v81[v80[14]], v79);
  }
}

uint64_t sub_10015AA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CloudBacked.ckRecord(store:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000D2118;

  return CloudBacked.ckRecord(store:)(a1, a2, a3);
}

uint64_t sub_10015AAC0(id *a1)
{
  v2 = v1;
  v3 = [*a1 encryptedValues];
  swift_getObjectType();
  v4 = type metadata accessor for LocalFindableAccessoryRecord();
  v5 = (v1 + v4[5]);
  v19 = *v5;
  v25 = v5[1];

  CKRecordKeyValueSetting.subscript.setter();
  v6 = (v1 + v4[6]);
  v20 = *v6;
  v26 = v6[1];

  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(*(v1 + v4[7]), *(v1 + v4[7] + 8));
  CKRecordKeyValueSetting.subscript.setter();
  v7 = (v1 + v4[8]);
  v8 = v7[1];
  if (v8 >> 60 == 15)
  {
    v9 = String._bridgeToObjectiveC()();
    [v3 setObject:0 forKeyedSubscript:v9];
  }

  else
  {
    v10 = *v7;
    v21 = *v7;
    v27 = v7[1];
    sub_10002E98C(*v7, v8);
    sub_100017D5C(v10, v8);
    CKRecordKeyValueSetting.subscript.setter();
    sub_100006654(v10, v8);
  }

  v11 = v2 + v4[9];
  UUID.data.getter();
  CKRecordKeyValueSetting.subscript.setter();
  v22 = *(v2 + v4[10]);
  CKRecordKeyValueSetting.subscript.setter();
  v23 = *(v2 + v4[11]);
  CKRecordKeyValueSetting.subscript.setter();
  v24 = *(v2 + v4[12]);
  CKRecordKeyValueSetting.subscript.setter();
  v12 = type metadata accessor for PropertyListEncoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v15 = v4[13];
  type metadata accessor for PeripheralConnectionMaterial(0);
  sub_10015DFC8(&unk_1016982D0, type metadata accessor for PeripheralConnectionMaterial);
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  CKRecordKeyValueSetting.subscript.setter();
  v16 = v4[14];
  type metadata accessor for P256PrivateKey();
  sub_10015DFC8(&qword_1016982E0, &type metadata accessor for P256PrivateKey);
  KeyRepresenting.rawValue.getter();
  CKRecordKeyValueSetting.subscript.setter();
  v17 = v4[15];
  type metadata accessor for SymmetricKey256();
  sub_10015DFC8(&qword_1016982E8, &type metadata accessor for SymmetricKey256);
  KeyRepresenting.rawValue.getter();
  CKRecordKeyValueSetting.subscript.setter();

  return swift_unknownObjectRelease();
}

uint64_t sub_10015B13C(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v90 - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LocalFindableAccessoryRecord();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, a3);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if (!v22)
  {
    v23(v12, 1, 1, v17);
    sub_10000B3A8(v12, &qword_1016A9A30, &unk_1013BD120);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v23(v12, 0, 1, v17);
  sub_10015DF60(v12, v21, type metadata accessor for LocalFindableAccessoryRecord);
  v24 = [*a1 encryptedValues];
  swift_getObjectType();
  v25 = v17[5];
  v26 = *&v21[v25];
  v27 = *&v21[v25 + 8];
  v28 = (v4 + v25);
  v30 = *v28;
  v29 = v28[1];
  if (v26 != *v28 || v27 != v29)
  {
    v32 = *v28;
    v33 = v28[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v93 = &type metadata for String;
      v94 = &protocol witness table for String;
      v91 = v30;
      v92 = v29;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v34 = v17[6];
  v35 = *&v21[v34];
  v36 = *&v21[v34 + 8];
  v37 = (v4 + v34);
  v39 = *v37;
  v38 = v37[1];
  if (v35 != *v37 || v36 != v38)
  {
    v41 = *v37;
    v42 = v37[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v93 = &type metadata for String;
      v94 = &protocol witness table for String;
      v91 = v39;
      v92 = v38;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v43 = v17[7];
  v44 = *&v21[v43];
  v45 = *&v21[v43 + 8];
  v46 = (v4 + v43);
  v47 = *v46;
  v48 = v46[1];
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v44, v45, *v46, v48) & 1) == 0)
  {
    v93 = &type metadata for Data;
    v94 = &protocol witness table for Data;
    v91 = v47;
    v92 = v48;
    sub_100017D5C(v47, v48);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v49 = v17[8];
  v50 = &v21[v49];
  v51 = *&v21[v49 + 8];
  v52 = (v4 + v49);
  if (v51 >> 60 == 15)
  {
    v53 = v52[1];
    if (v53 >> 60 != 15)
    {
      v54 = *v52;
      v93 = &type metadata for Data;
      v94 = &protocol witness table for Data;
      v91 = v54;
      v92 = v53;
      sub_10002E98C(v54, v53);
      sub_100017D5C(v54, v53);
      CKRecordKeyValueSetting.subscript.setter();
      v55 = v54;
      v56 = v53;
LABEL_25:
      sub_100006654(v55, v56);
    }
  }

  else
  {
    v57 = *v50;
    v58 = v52[1];
    if (v58 >> 60 != 15)
    {
      v60 = *v52;
      sub_10002E98C(v57, v51);
      sub_10002E98C(v60, v58);
      if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v57, v51, v60, v58))
      {
        sub_100006654(v57, v51);
        sub_100006654(v60, v58);
        goto LABEL_26;
      }

      v93 = &type metadata for Data;
      v94 = &protocol witness table for Data;
      v91 = v60;
      v92 = v58;
      sub_100017D5C(v60, v58);
      CKRecordKeyValueSetting.subscript.setter();
      sub_100006654(v57, v51);
      v55 = v60;
      v56 = v58;
      goto LABEL_25;
    }

    sub_100017D5C(v57, v51);
    v59 = String._bridgeToObjectiveC()();
    [v24 setObject:0 forKeyedSubscript:v59];

    sub_100006654(v57, v51);
  }

LABEL_26:
  v61 = v17[9];
  type metadata accessor for UUID();
  sub_10015DFC8(&qword_1016984A0, &type metadata accessor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v62 = UUID.data.getter();
    v93 = &type metadata for Data;
    v94 = &protocol witness table for Data;
    v91 = v62;
    v92 = v63;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v64 = v17[10];
  v65 = *&v21[v64];
  v66 = *(v4 + v64);
  if (v65 != v66)
  {
    v93 = &type metadata for Int;
    v94 = &protocol witness table for Int;
    v91 = v66;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v67 = v17[11];
  v68 = *&v21[v67];
  v69 = *(v4 + v67);
  if (v68 != v69)
  {
    v93 = &type metadata for Int;
    v94 = &protocol witness table for Int;
    v91 = v69;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v70 = v17[12];
  v71 = *&v21[v70];
  v72 = *(v4 + v70);
  if (v71 != v72)
  {
    v93 = &type metadata for Int64;
    v94 = &protocol witness table for Int64;
    v91 = v72;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v73 = v17[13];
  v74 = &v21[v73];
  v75 = v4 + v73;
  if ((static MACAddress.== infix(_:_:)() & 1) == 0 || (v76 = type metadata accessor for PeripheralConnectionMaterial(0), (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*&v74[*(v76 + 20)], *&v74[*(v76 + 20) + 8], *(v75 + *(v76 + 20)), *(v75 + *(v76 + 20) + 8)) & 1) == 0))
  {
    v77 = type metadata accessor for PropertyListEncoder();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for PeripheralConnectionMaterial(0);
    sub_10015DFC8(&unk_1016982D0, type metadata accessor for PeripheralConnectionMaterial);
    v80 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v82 = v81;

    v93 = &type metadata for Data;
    v94 = &protocol witness table for Data;
    v91 = v80;
    v92 = v82;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v83 = v17[14];
  type metadata accessor for P256PrivateKey();
  sub_10015DFC8(&qword_1016984A8, &type metadata accessor for P256PrivateKey);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v84 = P256PrivateKey.data.getter();
    v93 = &type metadata for Data;
    v94 = &protocol witness table for Data;
    v91 = v84;
    v92 = v85;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v86 = v17[15];
  type metadata accessor for SymmetricKey256();
  sub_10015DFC8(&qword_1016984B0, &type metadata accessor for SymmetricKey256);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    sub_10015D2D0(v21, type metadata accessor for LocalFindableAccessoryRecord);
    return swift_unknownObjectRelease();
  }

  else
  {
    v88 = SymmetricKey256.data.getter();
    v93 = &type metadata for Data;
    v94 = &protocol witness table for Data;
    v91 = v88;
    v92 = v89;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_10015D2D0(v21, type metadata accessor for LocalFindableAccessoryRecord);
  }
}

uint64_t sub_10015BC70(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_101698328, &qword_10138F778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v30 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10015D228();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v31) = 0;
  type metadata accessor for UUID();
  sub_10015DFC8(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for LocalFindableAccessoryRecord();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v31) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v31) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = v18[1];
    v31 = *v18;
    v32 = v19;
    v33 = 3;
    sub_100017D5C(v31, v19);
    v30[1] = sub_10015D330();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v31, v32);
    v20 = (v3 + v11[8]);
    v21 = v20[1];
    v31 = *v20;
    v32 = v21;
    v33 = 4;
    sub_10002E98C(v31, v21);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v31, v32);
    v22 = v11[9];
    LOBYTE(v31) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = *(v3 + v11[10]);
    LOBYTE(v31) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + v11[11]);
    LOBYTE(v31) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v3 + v11[12]);
    LOBYTE(v31) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = v11[13];
    LOBYTE(v31) = 9;
    type metadata accessor for PeripheralConnectionMaterial(0);
    sub_10015DFC8(&unk_1016982D0, type metadata accessor for PeripheralConnectionMaterial);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v11[14];
    LOBYTE(v31) = 10;
    type metadata accessor for P256PrivateKey();
    sub_10015DFC8(&qword_101698340, &type metadata accessor for P256PrivateKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28 = v11[15];
    LOBYTE(v31) = 11;
    type metadata accessor for SymmetricKey256();
    sub_10015DFC8(&unk_101698348, &type metadata accessor for SymmetricKey256);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10015C140@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v44 = type metadata accessor for SymmetricKey256();
  v41 = *(v44 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin(v44);
  v43 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for P256PrivateKey();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v45 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for PeripheralConnectionMaterial(0);
  v8 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v47 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = v38 - v15;
  v53 = sub_1000BC4D4(&qword_1016982F0, &qword_10138F770);
  v51 = *(v53 - 8);
  v16 = *(v51 + 64);
  __chkstk_darwin(v53);
  v18 = v38 - v17;
  v19 = type metadata accessor for LocalFindableAccessoryRecord();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10015D228();
  v54 = v18;
  v24 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_100007BAC(a1);
  }

  v25 = v14;
  v39 = v19;
  v40 = a1;
  v55 = v22;
  LOBYTE(v56) = 0;
  v26 = sub_10015DFC8(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38[1] = v26;
  v27 = *(v50 + 32);
  v28 = v55;
  v27(v55, v52, v10);
  LOBYTE(v56) = 1;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v38[2] = v10;
  v30 = v39;
  v31 = &v28[v39[5]];
  *v31 = v29;
  v31[1] = v32;
  LOBYTE(v56) = 2;
  v52 = 0;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = &v28[v30[6]];
  *v34 = v33;
  v34[1] = v35;
  v57 = 3;
  sub_10015D27C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v28[v30[7]] = v56;
  v57 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v28[v30[8]] = v56;
  LOBYTE(v56) = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27(&v28[v30[9]], v25, v10);
  LOBYTE(v56) = 6;
  *&v28[v30[10]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v56) = 7;
  *&v28[v30[11]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v56) = 8;
  *&v55[v39[12]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v56) = 9;
  sub_10015DFC8(&qword_101698310, type metadata accessor for PeripheralConnectionMaterial);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10015DF60(v47, &v55[v39[13]], type metadata accessor for PeripheralConnectionMaterial);
  LOBYTE(v56) = 10;
  sub_10015DFC8(&qword_101698318, &type metadata accessor for P256PrivateKey);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v48 + 32))(&v55[v39[14]], v45, v49);
  LOBYTE(v56) = 11;
  sub_10015DFC8(&qword_101698320, &type metadata accessor for SymmetricKey256);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v51 + 8))(v54, v53);
  v36 = v55;
  (*(v41 + 32))(&v55[v39[15]], v43, v44);
  sub_10015D3D8(v36, v42, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100007BAC(v40);
  return sub_10015D2D0(v36, type metadata accessor for LocalFindableAccessoryRecord);
}

uint64_t sub_10015CC18(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_10015CC50(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_10015CCE0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10015CD88(uint64_t a1)
{
  *(a1 + 8) = sub_10015DFC8(&qword_1016982B0, type metadata accessor for LocalFindableAccessoryRecord);
  result = sub_10015DFC8(&qword_1016982B8, type metadata accessor for LocalFindableAccessoryRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10015CE0C(uint64_t a1)
{
  result = sub_10015DFC8(&qword_1016982C0, type metadata accessor for LocalFindableAccessoryRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015CE64(uint64_t a1)
{
  result = sub_10015DFC8(&qword_1016982C8, type metadata accessor for LocalFindableAccessoryRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015CEBC(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v4 = type metadata accessor for LocalFindableAccessoryRecord();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + v4[7]), *(a1 + v4[7] + 8), *(a2 + v4[7]), *(a2 + v4[7] + 8)) & 1) == 0)
  {
    goto LABEL_27;
  }

  v15 = v4[8];
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v20 = *v18;
  v19 = v18[1];
  if (v16 >> 60 != 15)
  {
    if (v19 >> 60 != 15)
    {
      sub_10002E98C(v17, v16);
      sub_10002E98C(v20, v19);
      v21 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v17, v16, v20, v19);
      sub_100006654(v20, v19);
      sub_100006654(v17, v16);
      if (v21)
      {
        goto LABEL_19;
      }

LABEL_27:
      v30 = 0;
      return v30 & 1;
    }

LABEL_17:
    sub_10002E98C(v17, v16);
    sub_10002E98C(v20, v19);
    sub_100006654(v17, v16);
    sub_100006654(v20, v19);
    goto LABEL_27;
  }

  if (v19 >> 60 != 15)
  {
    goto LABEL_17;
  }

  sub_10002E98C(v17, v16);
  sub_10002E98C(v20, v19);
  sub_100006654(v17, v16);
LABEL_19:
  v22 = v4[9];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (*(a1 + v4[10]) != *(a2 + v4[10]))
  {
    goto LABEL_27;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    goto LABEL_27;
  }

  if (*(a1 + v4[12]) != *(a2 + v4[12]))
  {
    goto LABEL_27;
  }

  v23 = v4[13];
  v24 = a1 + v23;
  v25 = a2 + v23;
  if ((static MACAddress.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v26 = type metadata accessor for PeripheralConnectionMaterial(0);
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(v24 + *(v26 + 20)), *(v24 + *(v26 + 20) + 8), *(v25 + *(v26 + 20)), *(v25 + *(v26 + 20) + 8)) & 1) == 0)
  {
    goto LABEL_27;
  }

  v27 = v4[14];
  type metadata accessor for P256PrivateKey();
  sub_10015DFC8(&qword_1016984B8, &type metadata accessor for P256PrivateKey);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v28 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v34, v35, v32, v33);
  sub_100016590(v32, v33);
  sub_100016590(v34, v35);
  if ((v28 & 1) == 0)
  {
    goto LABEL_27;
  }

  v29 = v4[15];
  type metadata accessor for SymmetricKey256();
  sub_10015DFC8(&qword_1016984C0, &type metadata accessor for SymmetricKey256);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v30 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v34, v35, v32, v33);
  sub_100016590(v32, v33);
  sub_100016590(v34, v35);
  return v30 & 1;
}

unint64_t sub_10015D228()
{
  result = qword_1016982F8;
  if (!qword_1016982F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016982F8);
  }

  return result;
}

unint64_t sub_10015D27C()
{
  result = qword_101698308;
  if (!qword_101698308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698308);
  }

  return result;
}

uint64_t sub_10015D2D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10015D330()
{
  result = qword_101698338;
  if (!qword_101698338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698338);
  }

  return result;
}

unint64_t sub_10015D384()
{
  result = qword_101698378;
  if (!qword_101698378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698378);
  }

  return result;
}

uint64_t sub_10015D3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for AccessoryPairingCoordinator.PairingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryPairingCoordinator.PairingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10015D5D8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10015D6D8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PeripheralConnectionMaterial(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for P256PrivateKey();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SymmetricKey256();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10015D6D8()
{
  if (!qword_1016983E8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016983E8);
    }
  }
}

unint64_t sub_10015D774()
{
  result = qword_101698448;
  if (!qword_101698448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698448);
  }

  return result;
}

unint64_t sub_10015D7CC()
{
  result = qword_101698450;
  if (!qword_101698450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698450);
  }

  return result;
}

unint64_t sub_10015D824()
{
  result = qword_101698458;
  if (!qword_101698458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698458);
  }

  return result;
}

unint64_t sub_10015D90C()
{
  result = qword_101698470;
  if (!qword_101698470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698470);
  }

  return result;
}

unint64_t sub_10015D964()
{
  result = qword_101698478;
  if (!qword_101698478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698478);
  }

  return result;
}

void *sub_10015D9B8(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_101698480, &qword_10138FC78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_10015DF0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100007BAC(a1);
  }

  return v9;
}

uint64_t sub_10015DB2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134C4F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134C510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64496E6D66 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x45676E6972696170 && a2 == 0xEC00000068636F70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010134C530 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x697274656D6D7973 && a2 == 0xEC00000079654B63)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_10015DF0C()
{
  result = qword_101698488;
  if (!qword_101698488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698488);
  }

  return result;
}

uint64_t sub_10015DF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015DFC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10015E024()
{
  result = qword_1016984C8;
  if (!qword_1016984C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016984C8);
  }

  return result;
}

unint64_t sub_10015E07C()
{
  result = qword_1016984D0;
  if (!qword_1016984D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016984D0);
  }

  return result;
}

unint64_t sub_10015E0D4()
{
  result = qword_1016984D8;
  if (!qword_1016984D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016984D8);
  }

  return result;
}

uint64_t sub_10015E12C(uint64_t a1, uint64_t a2)
{
  v3[97] = v2;
  v3[96] = a2;
  v3[95] = a1;
  return _swift_task_switch(sub_10015E154, v2, 0);
}

uint64_t sub_10015E154()
{
  sub_10001F280(v0[96], (v0 + 90));
  sub_1000BC4D4(&qword_101698650, &qword_10138FFB0);
  if (swift_dynamicCast())
  {
    v1 = v0[95];
    memcpy(v0 + 2, v0 + 46, 0x160uLL);
    v1[3] = type metadata accessor for AirPodsLEPairingLockCheckResponse();
    v1[4] = sub_10016561C(&qword_1016985E8, 255, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v2 = sub_1000280DC(v1);
    v3 = swift_task_alloc();
    v0[98] = v3;
    *v3 = v0;
    v3[1] = sub_10015E378;
    v4 = v0[97];

    return sub_10015E578(v2, (v0 + 2));
  }

  else
  {
    v6 = type metadata accessor for PairingValidatorError();
    sub_10016561C(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PairingValidatorError.invalidRequestType(_:), v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10015E378()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *v1;
  *(*v1 + 792) = v0;

  v5 = *(v2 + 776);
  if (v0)
  {
    v6 = sub_10015E508;
  }

  else
  {
    v6 = sub_10015E4A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10015E4A4()
{
  sub_1001652D4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015E508()
{
  v1 = v0[95];
  sub_1001652D4((v0 + 2));
  sub_100101758(v1);
  v2 = v0[99];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10015E578(uint64_t a1, uint64_t a2)
{
  v3[318] = v2;
  v3[317] = a2;
  v3[316] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v3[319] = swift_task_alloc();
  v5 = type metadata accessor for AirPodsLEPairingLockCheckEndPoint();
  v3[320] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[321] = swift_task_alloc();
  v3[322] = swift_task_alloc();

  return _swift_task_switch(sub_10015E658, v2, 0);
}

id sub_10015E658()
{
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2576);
  v2 = *(v0 + 2568);
  v3 = *(v0 + 2560);
  v4 = *(v0 + 2552);
  v5 = *(v0 + 2544);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = 0xD00000000000001CLL;
  *(v6 + 40) = 0x800000010134C690;
  os_log(_:dso:log:_:_:)();

  v7 = *(v5 + 120);
  *(v0 + 2672) = v7;
  v8 = enum case for FMNAccountType.w2Accessory(_:);
  v9 = type metadata accessor for FMNAccountType();
  (*(*(v9 - 8) + 104))(v1, v8, v9);
  *(v1 + *(v3 + 20)) = v7;
  v10 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = type metadata accessor for FMNMockingPreferences();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v15 = type metadata accessor for ServerInteractionController(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_1001655B4(v1, v2, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v19 = sub_10061F8C4(v2, v14, v18);
  v20 = 0;
  v21 = 0;
  *(v0 + 2584) = v19;
  if ((v7 & 1) == 0)
  {
    result = [objc_opt_self() defaultStore];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    v24 = sub_100513CD8();

    if (!v24 || (v20 = sub_100513FCC(), v21 = v25, v24, !v21))
    {
      v28 = (v0 + 2480);
      if (qword_101694470 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177A530);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Unable to retrieve masked identifier", v43, 2u);
      }

      v33 = *(v0 + 2576);

      type metadata accessor for SPPairingSessionError(0);
      *(v0 + 2488) = 27;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
      goto LABEL_21;
    }
  }

  v26 = sub_1001642DC(*(v0 + 2536));
  *(v0 + 2592) = v26;
  *(v0 + 2600) = v27;
  if (v27 >> 60 == 15)
  {
    v28 = (v0 + 2496);

    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177A530);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to generate BAA payload", v32, 2u);
    }

    v33 = *(v0 + 2576);

    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 2504) = 26;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
LABEL_21:
    _BridgedStoredNSError.init(_:userInfo:)();
    v44 = *v28;
    swift_willThrow();

    sub_100165554(v33, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
    v45 = *(v0 + 2576);
    v46 = *(v0 + 2568);
    v47 = *(v0 + 2552);

    v48 = *(v0 + 8);

    return v48();
  }

  v34 = v26;
  v35 = v27;
  v36 = *(v0 + 2536);
  v37 = *(*(v0 + 2544) + 112);

  sub_100165278(v36, v0 + 16);
  sub_10002E98C(v34, v35);
  v38 = swift_task_alloc();
  *(v0 + 2608) = v38;
  *v38 = v0;
  v38[1] = sub_10015ECCC;
  v39 = *(v0 + 2536);

  return sub_100B60CB4(v39, v20, v21, v34, v35, v37);
}

uint64_t sub_10015ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 2608);
  v6 = *(*v3 + 2544);
  v8 = *v3;
  v4[327] = a1;
  v4[328] = a2;
  v4[329] = a3;

  return _swift_task_switch(sub_10015EDEC, v6, 0);
}

uint64_t sub_10015EDEC()
{
  v99 = v0;
  v1 = *(v0 + 2616);
  if (v1)
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 2536);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A530);
    sub_100165278(v2, v0 + 368);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    sub_1001652D4(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 2536);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v98[0] = v8;
      *v7 = 136315138;
      v9 = *(v6 + 240);
      v10 = *(v6 + 248);
      v11 = Data.hexString.getter();
      v13 = sub_1000136BC(v11, v12, v98);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "nonce: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v14 = *(v0 + 2536);
    sub_100165278(v14, v0 + 720);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    sub_1001652D4(v14);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 2536);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v98[0] = v19;
      *v18 = 136315138;
      v20 = *(v17 + 136);
      v21 = *(v17 + 144);
      v22 = Data.hexString.getter();
      v24 = sub_1000136BC(v22, v23, v98);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "serialNumber: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    v25 = *(v0 + 2536);
    sub_100165278(v25, v0 + 1072);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    sub_1001652D4(v25);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 2536);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v98[0] = v30;
      *v29 = 136315138;
      v31 = *(v28 + 104);
      v32 = *(v28 + 112);
      v33 = Data.hexString.getter();
      v35 = sub_1000136BC(v33, v34, v98);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "ECID: %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    v36 = *(v0 + 2536);
    sub_100165278(v36, v0 + 1424);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    sub_1001652D4(v36);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 2536);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v98[0] = v41;
      *v40 = 136315138;
      v42 = *(v39 + 120);
      v43 = *(v39 + 128);
      v44 = Data.hexString.getter();
      v46 = sub_1000136BC(v44, v45, v98);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "ChipId: %s", v40, 0xCu);
      sub_100007BAC(v41);
    }

    v47 = *(v0 + 2536);
    sub_100165278(v47, v0 + 1776);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    sub_1001652D4(v47);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 2536);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v98[0] = v52;
      *v51 = 136315138;
      v53 = *(v50 + 192);
      v54 = *(v50 + 200);
      v55 = Data.hexString.getter();
      v57 = sub_1000136BC(v55, v56, v98);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v48, v49, "SeedK1: %s", v51, 0xCu);
      sub_100007BAC(v52);
    }

    v58 = *(v0 + 2536);
    sub_100165278(v58, v0 + 2128);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    sub_1001652D4(v58);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = *(v0 + 2536);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v98[0] = v63;
      *v62 = 136315138;
      v64 = *v61;
      v65 = v61[1];
      v66 = Data.hexString.getter();
      v68 = sub_1000136BC(v66, v67, v98);

      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "H1 (hashed C2): %s", v62, 0xCu);
      sub_100007BAC(v63);
    }

    v69 = *(v0 + 2632);
    v70 = *(v0 + 2624);
    v71 = *(v0 + 2616);
    v72 = *(v0 + 2584);
    v73 = *(v0 + 2672);
    v74 = *(v0 + 2544);
    v75 = *(v0 + 2536);

    sub_100017D5C(v70, v69);
    v76 = sub_1004FBDB4(v1, v70, v69, 0, v72);
    *(v0 + 2640) = v76;
    sub_100165328(v71, v70, v69);
    v78 = sub_10016561C(&qword_1016985C0, v77, type metadata accessor for AirPodsLEPairingValidator);
    v79 = swift_task_alloc();
    *(v0 + 2648) = v79;
    *(v79 + 16) = v76;
    *(v79 + 24) = v73;
    *(v79 + 32) = v75;
    *(v79 + 40) = v74;
    v80 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v81 = swift_task_alloc();
    *(v0 + 2656) = v81;
    v82 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
    *v81 = v0;
    v81[1] = sub_10015F6E0;
    v83 = *(v0 + 2528);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v83, v74, v78, 0xD00000000000001CLL, 0x800000010134C690, sub_100165370, v79, v82);
  }

  else
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_1000076D4(v84, qword_10177A530);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Could not create pairing lock request", v87, 2u);
    }

    v88 = *(v0 + 2600);
    v89 = *(v0 + 2592);
    v90 = *(v0 + 2584);
    v91 = *(v0 + 2576);

    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 2520) = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v92 = *(v0 + 2512);
    swift_willThrow();

    sub_100006654(v89, v88);
    sub_100165554(v91, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
    v93 = *(v0 + 2576);
    v94 = *(v0 + 2568);
    v95 = *(v0 + 2552);

    v96 = *(v0 + 8);

    return v96();
  }
}

uint64_t sub_10015F6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 2656);
  v4 = *v1;
  *(*v1 + 2664) = v0;

  v5 = *(v2 + 2648);
  v6 = *(v2 + 2544);

  if (v0)
  {
    v7 = sub_10015F928;
  }

  else
  {
    v7 = sub_10015F828;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10015F828()
{
  v1 = v0[330];
  v2 = v0[329];
  v3 = v0[328];
  v4 = v0[327];
  v5 = v0[325];
  v6 = v0[324];
  v7 = v0[323];
  v8 = v0[322];
  v9 = v0[321];
  v10 = v0[319];

  sub_100165328(v4, v3, v2);
  sub_100006654(v6, v5);
  sub_100165554(v8, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10015F928()
{
  v1 = v0[330];
  v2 = v0[329];
  v3 = v0[328];
  v4 = v0[327];
  v5 = v0[325];
  v6 = v0[324];
  v7 = v0[323];
  v8 = v0[322];

  sub_100165328(v4, v3, v2);
  sub_100006654(v6, v5);
  sub_100165554(v8, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v9 = v0[333];
  v10 = v0[322];
  v11 = v0[321];
  v12 = v0[319];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10015FA20(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v25 = a1;
  v6 = sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v24 = *(v7 + 16);
  v24(&v20 - v9, a1, v6);
  v11 = *(v7 + 80);
  v21 = ((v11 + 16) & ~v11) + v8;
  v23 = (v11 + 16) & ~v11;
  v12 = swift_allocObject();
  v22 = *(v7 + 32);
  v22(v12 + ((v11 + 16) & ~v11), v10, v6);
  Future.addFailure(block:)();

  v13 = v6;
  v24(v10, v25, v6);
  v14 = v21;
  v15 = v21 & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v21 & 0xFFFFFFFFFFFFFFF8) + 367) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v22(v17 + v23, v10, v13);
  *(v17 + v14) = v26;
  v18 = v27;
  memcpy((v17 + v15 + 8), v27, 0x160uLL);
  *(v17 + v16) = v28;
  sub_100165278(v18, &v29);

  Future.addSuccess(block:)();
}

uint64_t sub_10015FC70(unint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v258 = a4;
  LODWORD(v257) = a3;
  v263 = a2;
  v5 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v260 = &v247 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v261 = &v247 - v9;
  v256 = type metadata accessor for Date();
  v251 = *(v256 - 8);
  v10 = *(v251 + 64);
  v11 = __chkstk_darwin(v256);
  v253 = &v247 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v254 = &v247 - v14;
  v15 = __chkstk_darwin(v13);
  v250 = &v247 - v16;
  __chkstk_darwin(v15);
  v255 = &v247 - v17;
  v18 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v247 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v259 = &v247 - v23;
  v262 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v24 = *(*(v262 - 1) + 64);
  v25 = __chkstk_darwin(v262);
  v252 = &v247 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v247 - v27;
  v29 = type metadata accessor for String.Encoding();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v31 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = &v247 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = &v247 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v247 - v41;
  __chkstk_darwin(v40);
  v44 = &v247 - v43;
  v264 = a1;
  v45 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v45 == 409)
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177A530);
    (*(v32 + 16))(v42, v264, v31);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v267[0] = v68;
      *v67 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      (*(v32 + 8))(v42, v31);
      v72 = sub_1000136BC(v69, v71, v267);

      *(v67 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "Linked to another Apple ID. %{public}s", v67, 0xCu);
      sub_100007BAC(v68);
    }

    else
    {

      (*(v32 + 8))(v42, v31);
    }

    v95 = type metadata accessor for PairingValidatorError();
    sub_10016561C(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    v96 = swift_allocError();
    (*(*(v95 - 8) + 104))(v97, enum case for PairingValidatorError.pairedToAnotherAccount(_:), v95);
    v267[0] = v96;
    goto LABEL_36;
  }

  if (v45 == 403)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000076D4(v56, qword_10177C418);
    (*(v32 + 16))(v39, v264, v31);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v262 = swift_slowAlloc();
      v267[0] = v262;
      *v59 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v32 + 8))(v39, v31);
      v63 = sub_1000136BC(v60, v62, v267);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "Pairing not allowed! %{public}s", v59, 0xCu);
      sub_100007BAC(v262);
    }

    else
    {

      (*(v32 + 8))(v39, v31);
    }

    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v82 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v83 = *(v82 - 8);
    if ((*(v83 + 48))(v22, 1, v82) == 1)
    {
      sub_10000B3A8(v22, &qword_101698640, &unk_10138FFA0);
      v84 = type metadata accessor for ServerStatusCode();
      v85 = v261;
      (*(*(v84 - 8) + 56))(v261, 1, 1, v84);
      sub_10000B3A8(v85, &qword_101698638, &qword_1013AC450);
    }

    else
    {
      v87 = v261;
      FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
      (*(v83 + 8))(v22, v82);
      v88 = type metadata accessor for ServerStatusCode();
      v89 = *(v88 - 8);
      (*(v89 + 56))(v87, 0, 1, v88);
      v90 = v260;
      sub_1001654E4(v87, v260);
      v91 = (*(v89 + 88))(v90, v88);
      if (v91 == enum case for ServerStatusCode.preconditionFailed(_:))
      {
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&_mh_execute_header, v92, v93, "Pairing has been completed by another device", v94, 2u);
        }

        type metadata accessor for SPPairingSessionError(0);
        v86 = 22;
        goto LABEL_51;
      }

      if (v91 == enum case for ServerStatusCode.locked(_:))
      {
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          *v134 = 0;
          _os_log_impl(&_mh_execute_header, v132, v133, "Pairing is pending from another device", v134, 2u);
        }

        type metadata accessor for SPPairingSessionError(0);
        v86 = 21;
        goto LABEL_51;
      }

      (*(v89 + 8))(v90, v88);
    }

    type metadata accessor for SPPairingSessionError(0);
    v86 = 1;
LABEL_51:
    v265 = v86;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v265 = v267[0];
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    return CheckedContinuation.resume(throwing:)();
  }

  if (v45 != 200)
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_1000076D4(v73, qword_10177A530);
    (*(v32 + 16))(v36, v264, v31);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v267[0] = v77;
      *v76 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      (*(v32 + 8))(v36, v31);
      v81 = sub_1000136BC(v78, v80, v267);

      *(v76 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v74, v75, "Pairing lock failed: %{public}s", v76, 0xCu);
      sub_100007BAC(v77);
    }

    else
    {

      (*(v32 + 8))(v36, v31);
    }

    v110 = type metadata accessor for PairingValidatorError();
    sub_10016561C(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    v111 = swift_allocError();
    v113 = v112;
    *v112 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    (*(*(v110 - 8) + 104))(v113, enum case for PairingValidatorError.pairingLockFailure(_:), v110);
    v267[0] = v111;
LABEL_36:
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    return CheckedContinuation.resume(throwing:)();
  }

  if (qword_101694470 != -1)
  {
    swift_once();
  }

  v261 = v28;
  v46 = type metadata accessor for Logger();
  v47 = sub_1000076D4(v46, qword_10177A530);
  (*(v32 + 16))(v44, v264, v31);
  v260 = v47;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    v267[0] = v249;
    *v50 = 136446210;
    sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v46;
    v54 = v53;
    (*(v32 + 8))(v44, v31);
    v55 = sub_1000136BC(v51, v54, v267);
    v46 = v52;

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Pairing success: %{public}s", v50, 0xCu);
    sub_100007BAC(v249);
  }

  else
  {

    (*(v32 + 8))(v44, v31);
  }

  v98 = v262;
  v99 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v101 = v100;
  static String.Encoding.utf8.getter();
  v102 = String.init(data:encoding:)();
  v104 = v103;
  sub_100016590(v99, v101);
  if (v104)
  {

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v267[0] = v108;
      *v107 = 136315138;
      v109 = sub_1000136BC(v102, v104, v267);

      *(v107 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v105, v106, "response data: %s", v107, 0xCu);
      sub_100007BAC(v108);
    }

    else
    {
    }
  }

  v114 = type metadata accessor for JSONDecoder();
  v115 = *(v114 + 48);
  v116 = *(v114 + 52);
  swift_allocObject();
  v117 = JSONDecoder.init()();
  v118 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v120 = v119;
  sub_10016561C(&qword_101698648, 255, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v118, v120);
  v129 = v259;
  FMNServerInteractionController.FMNResponseFields.metadata.getter();
  v130 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
  v131 = *(v130 - 8);
  if ((*(v131 + 48))(v129, 1, v130) == 1)
  {
    sub_10000B3A8(v129, &qword_101698640, &unk_10138FFA0);
  }

  else
  {
    v135 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
    v136 = v129;
    v137 = v135;
    v139 = v138;
    (*(v131 + 8))(v136, v130);
    if ((v139 & 1) == 0)
    {
      v185 = v261;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v46, qword_10177C448);
      v186 = Logger.logObject.getter();
      v187 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 134217984;
        *(v188 + 4) = v137;
        _os_log_impl(&_mh_execute_header, v186, v187, "Server epoch: %lld", v188, 0xCu);
        v185 = v261;
      }

      goto LABEL_81;
    }
  }

  v140 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
  v141 = v261;
  if (*(v140 + 16) && (v142 = sub_100771D58(1702125892, 0xE400000000000000), (v143 & 1) != 0))
  {
    v144 = (*(v140 + 56) + 16 * v142);
    v146 = *v144;
    v145 = v144[1];

    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v46, qword_10177C448);

    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v267[0] = v150;
      *v149 = 136446210;
      *(v149 + 4) = sub_1000136BC(v146, v145, v267);
      _os_log_impl(&_mh_execute_header, v147, v148, "Server date: %{public}s", v149, 0xCu);
      sub_100007BAC(v150);
    }

    v151 = v256;
    v152 = v253;
    if (qword_101694AB0 != -1)
    {
      swift_once();
    }

    v153 = qword_10177B6F0;
    v154 = String._bridgeToObjectiveC()();

    v155 = [v153 dateFromString:v154];

    if (v155)
    {
      v248 = v46;
      v156 = v255;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v157 = v251;
      v158 = *(v251 + 16);
      v159 = v250;
      v158(v250, v156, v151);
      v158(v254, v156, v151);
      v158(v152, v156, v151);
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v264 = swift_slowAlloc();
        v267[0] = v264;
        *v162 = 136446722;
        sub_10016561C(&qword_1016969A0, 255, &type metadata accessor for Date);
        LODWORD(v253) = v161;
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v249 = v160;
        v164 = v152;
        v166 = v165;
        v167 = v159;
        v168 = *(v157 + 8);
        v259 = ((v157 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v168(v167, v151);
        v169 = sub_1000136BC(v163, v166, v267);

        *(v162 + 4) = v169;
        *(v162 + 12) = 2048;
        v170 = v254;
        v171 = Date.epoch.getter();
        v168(v170, v151);
        *(v162 + 14) = v171;
        *(v162 + 22) = 2082;
        v265 = Date.epoch.getter();
        sub_100102194();
        v172 = FixedWidthInteger.data.getter();
        v174 = v173;
        v175 = Data.hexString.getter();
        v176 = v117;
        v178 = v177;
        sub_100016590(v172, v174);
        v168(v164, v256);
        v179 = v175;
        v151 = v256;
        v180 = sub_1000136BC(v179, v178, v267);
        v117 = v176;

        *(v162 + 24) = v180;
        v181 = v249;
        _os_log_impl(&_mh_execute_header, v249, v253, "pairingEpoch: %{public}s [%lld/%{public}s]", v162, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v192 = v159;
        v168 = *(v157 + 8);
        v168(v254, v151);

        v168(v152, v151);
        v168(v192, v151);
      }

      v185 = v261;
      v98 = v262;
      v193 = v255;
      v137 = Date.epoch.getter();
      v168(v193, v151);
      v46 = v248;
LABEL_81:
      *(v185 + *(v98 + 14)) = v137;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v46, qword_10177C448);
      v194 = Logger.logObject.getter();
      v195 = static os_log_type_t.default.getter();
      v196 = os_log_type_enabled(v194, v195);
      v260 = v117;
      if (v196)
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v267[0] = v198;
        *v197 = 141558275;
        *(v197 + 4) = 1752392040;
        *(v197 + 12) = 2081;
        v199 = "ATTEST_AUTH_TOKEN";
        if (v257)
        {
          v199 = "ATTEST_AUTH_NOTKN";
        }

        v200 = sub_1000136BC(0xD000000000000011, (v199 - 32) | 0x8000000000000000, v267);

        *(v197 + 14) = v200;
        _os_log_impl(&_mh_execute_header, v194, v195, "authSuffix: %{private,mask.hash}s", v197, 0x16u);
        sub_100007BAC(v198);
      }

      else
      {
      }

      v201 = v261;
      v202 = sub_100939A24(v258, v261);
      v204 = v203;
      v205 = String.utf8Data.getter();
      v207 = v206;

      v265 = v202;
      v266 = v204;
      v267[3] = &type metadata for Data;
      v267[4] = &protocol witness table for Data;
      v267[0] = v205;
      v267[1] = v207;
      v208 = sub_1000035D0(v267, &type metadata for Data);
      v209 = *v208;
      v210 = v208[1];
      v262 = v202;
      v264 = v204;
      sub_100017D5C(v202, v204);
      sub_100017D5C(v205, v207);
      sub_100017DB0(v209, v210);
      v259 = 0;
      sub_100016590(v205, v207);
      sub_100007BAC(v267);
      v212 = v265;
      v211 = v266;
      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.debug.getter();
      v215 = os_log_type_enabled(v213, v214);
      v248 = v46;
      if (v215)
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v257 = v211;
        v218 = v217;
        v267[0] = v217;
        *v216 = 136315138;
        swift_beginAccess();
        v219 = *(v201 + 64);
        v220 = *(v201 + 72);
        sub_100017D5C(v219, v220);
        v221 = Data.hexString.getter();
        v222 = v212;
        v224 = v223;
        sub_100016590(v219, v220);
        v225 = sub_1000136BC(v221, v224, v267);
        v212 = v222;

        *(v216 + 4) = v225;
        _os_log_impl(&_mh_execute_header, v213, v214, "S3: %s", v216, 0xCu);
        sub_100007BAC(v218);
        v211 = v257;
      }

      sub_100017D5C(v212, v211);
      v226 = Logger.logObject.getter();
      v227 = static os_log_type_t.debug.getter();
      sub_100016590(v212, v211);
      if (os_log_type_enabled(v226, v227))
      {
        v228 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        v267[0] = v229;
        *v228 = 136315138;
        v230 = Data.hexString.getter();
        v232 = sub_1000136BC(v230, v231, v267);

        *(v228 + 4) = v232;
        _os_log_impl(&_mh_execute_header, v226, v227, "dataForSignatureVerification: %s", v228, 0xCu);
        sub_100007BAC(v229);
      }

      v233 = v261;
      v234 = *(v258 + 34);
      v235 = *(v258 + 35);
      v236 = v234;
      v237 = v235;
      if (v235 >> 60 == 15)
      {
        if (qword_1016946D8 != -1)
        {
          swift_once();
        }

        v236 = qword_10177ACE0;
        v237 = *algn_10177ACE8;
        sub_100017D5C(qword_10177ACE0, *algn_10177ACE8);
      }

      swift_beginAccess();
      v239 = *(v233 + 64);
      v238 = *(v233 + 72);
      sub_10002E98C(v234, v235);
      sub_100017D5C(v239, v238);
      v240 = v211;
      v241 = v211;
      v242 = v259;
      v243 = sub_100A74FAC(v236, v237, v212, v240, v239, v238, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
      if (v242)
      {
        sub_100016590(v262, v264);
        sub_100016590(v212, v241);
        sub_100016590(v239, v238);
        sub_100016590(v236, v237);
        sub_100165554(v233, type metadata accessor for AirPodsLEPairingLockCheckResponse);
        v244 = v248;
        if (qword_1016950E0 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v244, qword_10177C448);
        swift_errorRetain();
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v268 = v242;
          v269 = v124;
          *v123 = 136446210;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v125 = String.init<A>(describing:)();
          v127 = sub_1000136BC(v125, v126, &v269);

          *(v123 + 4) = v127;
          _os_log_impl(&_mh_execute_header, v121, v122, "Decode error: %{public}s", v123, 0xCu);
          sub_100007BAC(v124);
        }

        type metadata accessor for SPPairingSessionError(0);
        v268 = 24;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v268 = v269;
        sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
        CheckedContinuation.resume(throwing:)();
      }

      else
      {
        v245 = v243;
        sub_100016590(v239, v238);
        sub_100016590(v236, v237);
        static os_log_type_t.default.getter();
        if (qword_1016950C8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v246 = swift_allocObject();
        *(v246 + 16) = xmmword_101385D80;
        *(v246 + 56) = &type metadata for Bool;
        *(v246 + 64) = &protocol witness table for Bool;
        *(v246 + 32) = v245 & 1;
        os_log(_:dso:log:_:_:)();

        sub_1001655B4(v233, v252, type metadata accessor for AirPodsLEPairingLockCheckResponse);
        sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
        CheckedContinuation.resume(returning:)();

        sub_100016590(v262, v264);
        sub_100016590(v212, v241);
        return sub_100165554(v233, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      }
    }

    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = swift_slowAlloc();
      *v191 = 0;
      _os_log_impl(&_mh_execute_header, v189, v190, "Unable to parse server Date!", v191, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v265 = 25;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v265 = v267[0];
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    CheckedContinuation.resume(throwing:)();

    return sub_100165554(v261, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  else
  {

    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v46, qword_10177C448);
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      *v184 = 0;
      _os_log_impl(&_mh_execute_header, v182, v183, "Server response is missing Date header!", v184, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v265 = 23;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v265 = v267[0];
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    CheckedContinuation.resume(throwing:)();

    return sub_100165554(v141, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }
}

uint64_t sub_100161FCC(uint64_t a1, uint64_t a2)
{
  v3[77] = v2;
  v3[76] = a2;
  v3[75] = a1;
  return _swift_task_switch(sub_100161FF4, v2, 0);
}

uint64_t sub_100161FF4()
{
  sub_10001F280(v0[76], (v0 + 70));
  sub_1000BC4D4(&qword_101698620, &unk_10138FF80);
  if (swift_dynamicCast())
  {
    v1 = v0[75];
    memcpy(v0 + 2, v0 + 36, 0x110uLL);
    v1[3] = type metadata accessor for AirPodsLEPairingLockAckResponse();
    v1[4] = sub_10016561C(&qword_1016985D8, 255, type metadata accessor for AirPodsLEPairingLockAckResponse);
    v2 = sub_1000280DC(v1);
    v3 = swift_task_alloc();
    v0[78] = v3;
    *v3 = v0;
    v3[1] = sub_100162218;
    v4 = v0[77];

    return sub_100162418(v2, (v0 + 2));
  }

  else
  {
    v6 = type metadata accessor for PairingValidatorError();
    sub_10016561C(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PairingValidatorError.invalidRequestType(_:), v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100162218()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = v0;

  v5 = *(v2 + 616);
  if (v0)
  {
    v6 = sub_1001623A8;
  }

  else
  {
    v6 = sub_100162344;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100162344()
{
  sub_100165224(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001623A8()
{
  v1 = v0[75];
  sub_100165224((v0 + 2));
  sub_100101758(v1);
  v2 = v0[79];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100162418(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v5 = type metadata accessor for FMNAccountType();
  v3[44] = v5;
  v6 = *(v5 - 8);
  v3[45] = v6;
  v7 = *(v6 + 64) + 15;
  v3[46] = swift_task_alloc();
  v8 = type metadata accessor for AirPodsLEPairingLockAckEndPoint();
  v3[47] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return _swift_task_switch(sub_100162550, v2, 0);
}

uint64_t sub_100162550()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[44];
  v6 = v0[43];
  v43 = v0[41];
  v7 = enum case for FMNAccountType.w2Accessory(_:);
  v8 = *(v0[45] + 104);
  v8(v3, enum case for FMNAccountType.w2Accessory(_:), v5);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v2 = sub_1010B32C8(v3);
  v8(v2 + *(v4 + 20), v7, v5);
  v9 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = type metadata accessor for FMNMockingPreferences();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v14 = type metadata accessor for ServerInteractionController(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  sub_1001655B4(v2, v1, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v0[50] = sub_10061FCDC(v1, v13, v17);
  v18 = sub_10016492C(v43);
  v0[51] = v18;
  v0[52] = v19;
  if (v19 >> 60 == 15)
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177A530);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to generate BAA payload", v23, 2u);
    }

    v24 = v0[49];

    type metadata accessor for SPPairingSessionError(0);
    v0[37] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = v0[36];
    swift_willThrow();

    sub_100165554(v24, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
    v27 = v0[48];
    v26 = v0[49];
    v28 = v0[46];
    v29 = v0[43];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v32 = v18;
    v33 = v19;
    v34 = v0[41];
    v35 = type metadata accessor for DeviceIdentityUtility();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v38 = swift_allocObject();
    sub_100164F7C(v34, (v0 + 2));
    sub_10002E98C(v32, v33);
    swift_defaultActor_initialize();
    v39 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
    v40 = type metadata accessor for Date();
    (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
    *(v38 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
    *(v38 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
    *(v38 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
    v41 = swift_task_alloc();
    v0[53] = v41;
    *v41 = v0;
    v41[1] = sub_1001629FC;
    v42 = v0[41];

    return sub_10028733C(v42, v32, v33, v38);
  }
}

uint64_t sub_1001629FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 424);
  v6 = *(*v3 + 336);
  v8 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = a3;

  return _swift_task_switch(sub_100162B18, v6, 0);
}

uint64_t sub_100162B18()
{
  v1 = v0[54];
  if (v1)
  {
    v3 = v0[55];
    v2 = v0[56];
    v4 = v0[50];
    v5 = v0[42];
    v6 = v0[54];

    sub_100017D5C(v3, v2);
    v7 = sub_1004FC0C0(v1, v3, v2, 0, v4);
    v0[57] = v7;
    sub_100165328(v1, v3, v2);
    v9 = sub_10016561C(&qword_1016985C0, v8, type metadata accessor for AirPodsLEPairingValidator);
    v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v11 = swift_task_alloc();
    v0[58] = v11;
    v12 = type metadata accessor for AirPodsLEPairingLockAckResponse();
    *v11 = v0;
    v11[1] = sub_100162E6C;
    v13 = v0[40];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, v5, v9, 0xD000000000000015, 0x800000010134C650, sub_100164FD8, v7, v12);
  }

  else
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177A530);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not create pairing ack request", v17, 2u);
    }

    v19 = v0[51];
    v18 = v0[52];
    v20 = v0[49];
    v21 = v0[50];

    type metadata accessor for SPPairingSessionError(0);
    v0[39] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = v0[38];
    swift_willThrow();

    sub_100006654(v19, v18);
    sub_100165554(v20, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
    v24 = v0[48];
    v23 = v0[49];
    v25 = v0[46];
    v26 = v0[43];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100162E6C()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    v6 = sub_100163098;
  }

  else
  {
    v6 = sub_100162F98;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100162F98()
{
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[48];
  v10 = v0[46];
  v13 = v0[43];

  sub_100006654(v6, v5);
  sub_100165328(v4, v3, v2);
  sub_100165554(v8, type metadata accessor for AirPodsLEPairingLockAckEndPoint);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100163098()
{
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[49];
  v7 = v0[50];

  sub_100006654(v6, v5);
  sub_100165328(v4, v3, v2);
  sub_100165554(v8, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v9 = v0[59];
  v11 = v0[48];
  v10 = v0[49];
  v12 = v0[46];
  v13 = v0[43];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100163188(uint64_t a1)
{
  v14 = a1;
  v2 = sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v13 = *(v3 + 16);
  v13(&v11 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v12 = *(v3 + 32);
  v12(v8 + v7, v6, v2);
  Future.addFailure(block:)();

  v13(v6, v14, v2);
  v9 = swift_allocObject();
  v12(v9 + v7, v6, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100163368(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t *a5)
{
  if (qword_101694470 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177A530);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(a4, a5);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100163570(uint64_t a1)
{
  v63 = type metadata accessor for AirPodsLEPairingLockAckResponse();
  v2 = *(*(v63 - 8) + 64);
  v3 = __chkstk_darwin(v63);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v58 - v6;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v62 = v7;
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v19 = sub_1000076D4(v18, qword_10177A530);
    v20 = *(v11 + 16);
    v64 = a1;
    v20(v17, a1, v10);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v61 = v5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v60 = v19;
      v25 = v24;
      v59 = swift_slowAlloc();
      v66 = v59;
      *v25 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v11 + 8))(v17, v10);
      v29 = sub_1000136BC(v26, v28, &v66);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Pairing ack success: %{public}s", v25, 0xCu);
      sub_100007BAC(v59);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    v39 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v41 = v40;
    static String.Encoding.utf8.getter();
    v42 = String.init(data:encoding:)();
    v44 = v43;
    sub_100016590(v39, v41);
    if (v44)
    {

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v66 = v48;
        *v47 = 136315138;
        v49 = sub_1000136BC(v42, v44, &v66);

        *(v47 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v45, v46, "ack response data: %s", v47, 0xCu);
        sub_100007BAC(v48);
      }

      else
      {
      }
    }

    v51 = type metadata accessor for JSONDecoder();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v54 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v56 = v55;
    sub_10016561C(&qword_101698600, 255, type metadata accessor for AirPodsLEPairingLockAckResponse);
    v57 = v62;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v54, v56);
    sub_1001655B4(v57, v61, type metadata accessor for AirPodsLEPairingLockAckResponse);
    sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
    CheckedContinuation.resume(returning:)();

    return sub_100165554(v57, type metadata accessor for AirPodsLEPairingLockAckResponse);
  }

  else
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177A530);
    (*(v11 + 16))(v15, a1, v10);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66 = v34;
      *v33 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v11 + 8))(v15, v10);
      v38 = sub_1000136BC(v35, v37, &v66);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Pairing ack failed: %{public}s", v33, 0xCu);
      sub_100007BAC(v34);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    type metadata accessor for SPPairingSessionError(0);
    v65 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v65 = v66;
    sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100163EF8()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100163F58()
{
  result = qword_1016985C8;
  if (!qword_1016985C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016985C8);
  }

  return result;
}

uint64_t sub_100163FAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_10015E12C(a1, a2);
}

uint64_t sub_100164054(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100161FCC(a1, a2);
}

unint64_t sub_100164118()
{
  result = qword_1016985D0;
  if (!qword_1016985D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016985D0);
  }

  return result;
}

unint64_t sub_1001641BC()
{
  result = qword_1016985E0;
  if (!qword_1016985E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016985E0);
  }

  return result;
}

uint64_t sub_10016425C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A530);
  sub_1000076D4(v0, qword_10177A530);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001642DC(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v9 = Data.trimmed.getter();
  v11 = v10;
  *&v61 = v9;
  *(&v61 + 1) = v10;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v12 = String.init<A>(bytes:encoding:)();
  v47 = v11;
  v46 = v9;
  if (!v13)
  {
    v12 = Data.hexString.getter();
  }

  v14 = v12;
  v15 = v13;
  v48 = *(a1 + 120);
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  v54 = *(a1 + 104);
  v17 = DataProtocol.intValue.getter();
  v19 = *(a1 + 320);
  v18 = *(a1 + 328);
  *&v55 = 0;
  *(&v55 + 1) = v16;
  v20 = *(a1 + 336);
  v21 = *(a1 + 344);
  *&v56 = v17;
  *(&v56 + 1) = &off_1016080C0;
  *&v57 = v14;
  *(&v57 + 1) = v15;
  v58 = xmmword_10138FDA0;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  *&v60 = v20;
  *(&v60 + 1) = v21;
  v61 = v55;
  v62 = v56;
  v65 = v59;
  v66 = v60;
  v63 = v57;
  v64 = xmmword_10138FDA0;
  sub_100017D5C(v19, v18);
  sub_100017D5C(v20, v21);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  sub_1001650CC(&v55, &v48);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  sub_100165128(&v55);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v54 = v26;
    *v25 = 136315138;
    sub_1001650CC(&v55, &v48);
    sub_10107D964();
    v28 = v27;
    v30 = v29;
    sub_100165128(&v55);
    v31 = sub_1000136BC(v28, v30, &v54);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "BAARKProperties %s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v50 = v63;
  v51 = v64;
  v52 = v65;
  v53 = v66;
  v48 = v61;
  v49 = v62;
  sub_10016517C();
  v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v34 = v33;
  v35 = *(a1 + 216);
  v36 = *(a1 + 208);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v32, v34);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  if (os_log_type_enabled(v37, v38))
  {
    v45 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v54 = v44;
    *v45 = 136315138;
    *&v48 = v36;
    *(&v48 + 1) = v35;
    *&v49 = v32;
    *(&v49 + 1) = v34;
    sub_100017D5C(v36, v35);
    sub_100017D5C(v32, v34);
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, &v54);

    *(v45 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "BAARequestPayload %s", v45, 0xCu);
    sub_100007BAC(v44);
  }

  *&v48 = v36;
  *(&v48 + 1) = v35;
  *&v49 = v32;
  *(&v49 + 1) = v34;
  sub_1001651D0();
  v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v46, v47);

  sub_100165128(&v55);
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  return v42;
}

uint64_t sub_10016492C(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  v9 = Data.trimmed.getter();
  v11 = v10;
  *&v61 = v9;
  *(&v61 + 1) = v10;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v12 = String.init<A>(bytes:encoding:)();
  v47 = v11;
  v46 = v9;
  if (!v13)
  {
    v12 = Data.hexString.getter();
  }

  v14 = v12;
  v15 = v13;
  v48 = *(a1 + 96);
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  v54 = *(a1 + 80);
  v17 = DataProtocol.intValue.getter();
  v19 = *(a1 + 208);
  v18 = *(a1 + 216);
  *&v55 = 0;
  *(&v55 + 1) = v16;
  v20 = *(a1 + 224);
  v21 = *(a1 + 232);
  *&v56 = v17;
  *(&v56 + 1) = &off_1016080F0;
  *&v57 = v14;
  *(&v57 + 1) = v15;
  v58 = xmmword_10138FDA0;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  *&v60 = v20;
  *(&v60 + 1) = v21;
  v61 = v55;
  v62 = v56;
  v65 = v59;
  v66 = v60;
  v63 = v57;
  v64 = xmmword_10138FDA0;
  sub_100017D5C(v19, v18);
  sub_100017D5C(v20, v21);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  sub_1001650CC(&v55, &v48);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  sub_100165128(&v55);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v54 = v26;
    *v25 = 136315138;
    sub_1001650CC(&v55, &v48);
    sub_10107D964();
    v28 = v27;
    v30 = v29;
    sub_100165128(&v55);
    v31 = sub_1000136BC(v28, v30, &v54);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "BAARKProperties %s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v50 = v63;
  v51 = v64;
  v52 = v65;
  v53 = v66;
  v48 = v61;
  v49 = v62;
  sub_10016517C();
  v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v34 = v33;
  v35 = *(a1 + 152);
  v36 = *(a1 + 144);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v32, v34);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  if (os_log_type_enabled(v37, v38))
  {
    v45 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v54 = v44;
    *v45 = 136315138;
    *&v48 = v36;
    *(&v48 + 1) = v35;
    *&v49 = v32;
    *(&v49 + 1) = v34;
    sub_100017D5C(v36, v35);
    sub_100017D5C(v32, v34);
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, &v54);

    *(v45 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "BAARequestPayload %s", v45, 0xCu);
    sub_100007BAC(v44);
  }

  *&v48 = v36;
  *(&v48 + 1) = v35;
  *&v49 = v32;
  *(&v49 + 1) = v34;
  sub_1001651D0();
  v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v46, v47);

  sub_100165128(&v55);
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  return v42;
}

uint64_t sub_100164FFC(uint64_t a1)
{
  v2 = *(*(sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70) - 8) + 80);

  return sub_100163570(a1);
}

unint64_t sub_100165078()
{
  result = qword_101698608;
  if (!qword_101698608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698608);
  }

  return result;
}

unint64_t sub_10016517C()
{
  result = qword_101698610;
  if (!qword_101698610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698610);
  }

  return result;
}

unint64_t sub_1001651D0()
{
  result = qword_101698618;
  if (!qword_101698618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698618);
  }

  return result;
}

uint64_t sub_100165328(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_100016590(a2, a3);
  }

  return result;
}

uint64_t sub_10016542C(unint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_101698630, &unk_10138FF90) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 367) & 0xFFFFFFFFFFFFFFF8));

  return sub_10015FC70(a1, v1 + v4, v6, (v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1001654E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100165554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001655B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016561C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100165668()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A548);
  sub_1000076D4(v0, qword_10177A548);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10016579C()
{
  v1 = 0x656C707061;
  v2 = 0x6579656B776168;
  if (*v0 != 2)
  {
    v2 = 1701602664;
  }

  if (*v0)
  {
    v1 = 0x6E6169727564;
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

uint64_t sub_1001658B8@<X0>(unsigned __int8 *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10001993C(*a1);
  *a2 = result & 0x10101FF;
  return result;
}

uint64_t sub_1001658F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v0[3];
  return sub_100019E48();
}

uint64_t SPBeaconGroupStatus.description.getter(uint64_t a1)
{
  result = 0x6574617261706573;
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      return result;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 2)
  {
    return 0x646570756F7267;
  }

  if (a1 == 3)
  {
    return 0x49646570756F7267;
  }

  if (a1 != 4)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_100165AB8()
{
  result = 0x6574617261706573;
  v2 = *v0;
  if (*v0 <= 1)
  {
    if (v2 == 1)
    {
      return result;
    }

    return 0x6E776F6E6B6E75;
  }

  if (v2 == 2)
  {
    return 0x646570756F7267;
  }

  if (v2 == 3)
  {
    return 0x49646570756F7267;
  }

  if (v2 != 4)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}