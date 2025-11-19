uint64_t sub_100E21730(uint64_t result, uint64_t *a2)
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
      sub_100E60864(&v9, a2);
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

uint64_t sub_100E217B8(uint64_t a1)
{
  v46 = type metadata accessor for MACAddress();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v46);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v37 = v1;
  v51 = _swiftEmptyArrayStorage;
  sub_101123BB8(0, v6, 0);
  v7 = v51;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v43 = v3 + 16;
  v44 = v3;
  v41 = a1;
  v42 = v3 + 8;
  v38 = a1 + 64;
  v39 = v6;
  v40 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v47 = v12;
    v48 = v15;
    v16 = v44;
    v17 = v7;
    v18 = v45;
    v19 = v46;
    (*(v44 + 16))(v45, *(a1 + 48) + *(v44 + 72) * v11, v46);
    v20 = MACAddress.dataRepresentation.getter();
    v22 = v21;
    v23 = Data.hexString.getter();
    v49 = v24;
    v50 = v23;
    sub_100016590(v20, v22);
    v25 = v18;
    v7 = v17;
    result = (*(v16 + 8))(v25, v19);
    v51 = v17;
    v27 = v17[2];
    v26 = v17[3];
    if (v27 >= v26 >> 1)
    {
      result = sub_101123BB8((v26 > 1), v27 + 1, 1);
      v7 = v51;
    }

    v7[2] = v27 + 1;
    v28 = &v7[2 * v27];
    v29 = v49;
    v28[4] = v50;
    v28[5] = v29;
    a1 = v41;
    v13 = 1 << *(v41 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v40;
    v30 = *(v40 + 8 * v14);
    if ((v30 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v48 != *(v41 + 36))
    {
      goto LABEL_24;
    }

    v31 = v30 & (-2 << (v11 & 0x3F));
    if (v31)
    {
      v13 = __clz(__rbit64(v31)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = v14 << 6;
      v33 = v14 + 1;
      v34 = (v38 + 8 * v14);
      while (v33 < (v13 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_1000BB408(v11, v48, 0);
          v13 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v11, v48, 0);
    }

LABEL_4:
    v12 = v47 + 1;
    v11 = v13;
    if (v47 + 1 == v39)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100E21AD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v47 = _swiftEmptyArrayStorage;
  sub_1011244D8(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v37 = v3 + 72;
  v40 = v3 + 64;
  v41 = v3;
  v39 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_41;
    }

    v11 = *(*(v3 + 48) + 16 * v7);
    v42 = *(v3 + 36);
    v46 = v11;
    v12 = v11;
    v13 = *(&v11 + 1) >> 62;
    if ((*(&v11 + 1) >> 62) <= 1)
    {
      if (!v13)
      {
        v14 = BYTE14(v11);
        goto LABEL_19;
      }

      v15 = v11;
      if (__OFSUB__(DWORD1(v11), v11))
      {
        goto LABEL_47;
      }

      v14 = DWORD1(v11) - v11;
      goto LABEL_17;
    }

    if (v13 == 2)
    {
      v15 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      v14 = v16 - v17;
      if (__OFSUB__(v16, v17))
      {
        goto LABEL_48;
      }

LABEL_17:
      sub_100017D5C(v15, *(&v11 + 1));
      result = sub_100017D5C(v15, *(&v12 + 1));
      goto LABEL_19;
    }

    v14 = 0;
LABEL_19:
    v18 = 20 - v14;
    if (__OFSUB__(20, v14))
    {
      goto LABEL_42;
    }

    if (v18)
    {
      if (v18 <= 14)
      {
        if (v18 < 0)
        {
          goto LABEL_46;
        }

        v23 = 0;
        v24 = v38 & 0xF00000000000000 | ((20 - v14) << 48);
        v38 = v24;
      }

      else
      {
        v19 = type metadata accessor for __DataStorage();
        v20 = *(v19 + 48);
        v21 = *(v19 + 52);
        swift_allocObject();
        v22 = __DataStorage.init(length:)();
        if (v18 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v23 = swift_allocObject();
          *(v23 + 16) = 0;
          *(v23 + 24) = v18;
          v24 = v22 | 0x8000000000000000;
        }

        else
        {
          v23 = v18 << 32;
          v24 = v22 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v23 = 0;
      v24 = 0xC000000000000000;
    }

    v44 = v23;
    v45 = v24;
    sub_100776394(&v44, 0);
    v26 = v44;
    v25 = v45;
    Data.append(_:)();
    sub_100016590(v26, v25);
    result = sub_100016590(v12, *(&v12 + 1));
    v27 = v46;
    v47 = v2;
    v29 = v2[2];
    v28 = v2[3];
    if (v29 >= v28 >> 1)
    {
      v43 = v46;
      result = sub_1011244D8((v28 > 1), v29 + 1, 1);
      v27 = v43;
      v2 = v47;
    }

    v2[2] = v29 + 1;
    *&v2[2 * v29 + 4] = v27;
    v4 = v40;
    v3 = v41;
    v9 = 1 << *(v41 + 32);
    if (v7 >= v9)
    {
      goto LABEL_43;
    }

    v30 = *(v40 + 8 * v10);
    if ((v30 & (1 << v7)) == 0)
    {
      goto LABEL_44;
    }

    if (v42 != *(v41 + 36))
    {
      goto LABEL_45;
    }

    v31 = v30 & (-2 << (v7 & 0x3F));
    if (v31)
    {
      v9 = __clz(__rbit64(v31)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = v10 << 6;
      v33 = v10 + 1;
      v34 = (v37 + 8 * v10);
      while (v33 < (v9 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_1000BB408(v7, v42, 0);
          v9 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v7, v42, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v39)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

Swift::Int sub_100E21E68(void **a1)
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B320AC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100E625F0(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100E21F34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013EAFD0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100E21FBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013EAFD0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100E22008@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100E66C50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100E2204C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100E6B200();
  v5 = sub_1000C3258();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_100E220BC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 168) & 1) != 0 || (v3 = *(result + 24), result = QueueSynchronizer.conditionalSync<A>(_:)(), (v6))
  {
    v4 = 1;
  }

  else
  {
    result = QueueSynchronizer.conditionalSync<A>(_:)();
    v4 = v5;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_100E2215C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 216);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(result + 216);

    OS_dispatch_queue.sync<A>(execute:)();

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_100E221E0()
{
  v1 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for MACAddress();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + 16);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 objectForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (!*(&v39 + 1))
  {
    sub_10000B3A8(v40, &unk_1016A0B10, &qword_10139BF40);
    return &_swiftEmptySetSingleton;
  }

  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  v19 = v37;
  v36 = *(v37 + 16);
  if (v36)
  {
    v20 = 0;
    v21 = (v33 + 56);
    v34 = (v33 + 32);
    v22 = (v37 + 40);
    v23 = _swiftEmptyArrayStorage;
    v32 = v5;
    while (v20 < *(v19 + 16))
    {
      v24 = *v22;
      *&v40[0] = *(v22 - 1);
      *(&v40[0] + 1) = v24;
      sub_1000DF96C();
      swift_bridgeObjectRetain_n();
      Data.init<A>(hexString:)();
      if (v25 >> 60 == 15)
      {

        (*v21)(v4, 1, 1, v5);
        result = sub_10000B3A8(v4, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        MACAddress.init(dataRepresentation:)();

        (*v21)(v4, 0, 1, v5);
        v26 = *v34;
        (*v34)(v35, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100A5EBA8(0, v23[2] + 1, 1, v23);
        }

        v28 = v23[2];
        v27 = v23[3];
        if (v28 >= v27 >> 1)
        {
          v23 = sub_100A5EBA8(v27 > 1, v28 + 1, 1, v23);
        }

        v23[2] = v28 + 1;
        v29 = v23 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28;
        v5 = v32;
        result = (v26)(v29, v35, v32);
      }

      ++v20;
      v22 += 2;
      if (v36 == v20)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_21:

  v30 = sub_10112B8D8(v23);

  return v30;
}

void sub_100E226B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    sub_100E217B8(a1);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = String._bridgeToObjectiveC()();
    [v10 setObject:isa forKey:v12];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100E22864()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  v8 = v2 + 8;
  v9(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177C418);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v28[0] = v17;
      *v16 = 136446210;
      *&v26 = v5;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000136BC(v18, v19, v28);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to retrieve pairing tokens due to %{public}s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    v22 = sub_10090B984(_swiftEmptyArrayStorage);

    goto LABEL_13;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_10000B3A8(v28, &unk_1016A0B10, &qword_10139BF40);
    return sub_10090B984(_swiftEmptyArrayStorage);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10090B984(_swiftEmptyArrayStorage);
  }

  v1 = v24;
  v8 = v25;
  sub_100017D5C(v24, v25);
  type metadata accessor for MACAddress();
  sub_100E62554(&qword_1016A41D0, 255, &type metadata accessor for MACAddress);
  sub_100E62554(&qword_10169B550, 255, &type metadata accessor for MACAddress);
  sub_100E62554(&unk_1016BC080, 255, &type metadata accessor for MACAddress);
  sub_1000E307C();
  sub_1000E3190();
  v22 = Dictionary<>.init(dataRepresentation:)();
LABEL_13:
  sub_100016590(v1, v8);
  return v22;
}

void sub_100E22CD8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for MACAddress();
    sub_100E62554(&qword_1016A41D0, 255, &type metadata accessor for MACAddress);
    sub_100E62554(&qword_10169B550, 255, &type metadata accessor for MACAddress);
    sub_100E62554(&unk_1016BC080, 255, &type metadata accessor for MACAddress);
    sub_1000E307C();
    sub_1000E3190();
    v9 = Dictionary<>.dataRepresentation.getter();
    v11 = v10;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v9, v11);
    v13 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKey:v13];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100E23114(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v65 = a5;
  v69 = a2;
  v70 = a4;
  v66 = a3;
  v68 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v67 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v14);
  static DispatchQoS.unspecified.getter();
  v71 = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v5 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v5 + 88) = &_swiftEmptySetSingleton;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  v19 = sub_1000BC4D4(&qword_1016BCE50, &qword_1013EAEB0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v5 + 120) = PassthroughSubject.init()();
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0xF000000000000000;
  *(v5 + 160) = _swiftEmptyArrayStorage;
  *(v5 + 168) = 0;
  *(v5 + 200) = &type metadata for AirpodsPairingSpec1_0;
  *(v5 + 208) = sub_100E6A25C();
  *(v5 + 216) = 0;
  *(v5 + 224) = 0;
  *(v5 + 232) = 0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "AirPodsPairingManager.init", v25, 2u);
  }

  v26 = v69;
  *(v6 + 32) = v68;
  *(v6 + 40) = v26;
  *(v6 + 48) = v70;
  type metadata accessor for AccessoryPairingValidator();
  v27 = swift_allocObject();
  v28 = type metadata accessor for DeviceIdentityUtility();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();

  swift_defaultActor_initialize();
  v32 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
  *(v31 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v31 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v31 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v27 + 16) = v31;
  *(v27 + 24) = 0;
  v34 = v66;
  *(v6 + 56) = v27;
  *(v6 + 64) = v34;
  *(v6 + 72) = v65 & 1;
  v35 = *(v6 + 16);
  v36 = type metadata accessor for QueueSynchronizer();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = v34;
  v40 = v35;
  *(v6 + 24) = QueueSynchronizer.init(queue:)();
  v41 = [*&v39[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  v42 = v67;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = *(v6 + 56);
  v44 = *(v6 + 16);
  v45 = type metadata accessor for AccessoryPairingCoordinator();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();

  v48 = sub_10110ABC0(v42, v43, v44);

  if (v48)
  {
    *(v6 + 80) = v48;
  }

  else
  {

    v49 = *(v6 + 24);

    v50 = *(v6 + 32);

    v51 = *(v6 + 40);

    v52 = *(v6 + 48);

    v53 = *(v6 + 56);

    v54 = *(v6 + 88);

    v55 = *(v6 + 96);

    v56 = *(v6 + 104);

    v57 = *(v6 + 112);

    v58 = *(v6 + 120);

    v59 = *(v6 + 136);
    sub_1000BB27C(*(v6 + 128));
    sub_100006654(*(v6 + 144), *(v6 + 152));
    v60 = *(v6 + 160);

    sub_100007BAC((v6 + 176));
    v61 = *(v6 + 216);

    v62 = *(v6 + 232);

    type metadata accessor for AirPodsPairingManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

uint64_t sub_100E23774()
{
  v1 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirPodsPairingManager.deinit", v5, 2u);
  }

  v6 = *(v1 + 24);

  v7 = *(v1 + 32);

  v8 = *(v1 + 40);

  v9 = *(v1 + 48);

  v10 = *(v1 + 56);

  v11 = *(v1 + 80);

  v12 = *(v1 + 88);

  v13 = *(v1 + 96);

  v14 = *(v1 + 104);

  v15 = *(v1 + 112);

  v16 = *(v1 + 120);

  v17 = *(v1 + 136);
  sub_1000BB27C(*(v1 + 128));
  sub_100006654(*(v1 + 144), *(v1 + 152));
  v18 = *(v1 + 160);

  sub_100007BAC((v1 + 176));
  v19 = *(v1 + 216);

  v20 = *(v1 + 232);

  return v1;
}

uint64_t sub_100E238EC()
{
  sub_100E23774();

  return swift_deallocClassInstance();
}

uint64_t sub_100E23944@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v91 = a5;
  v92 = a4;
  v95 = a3;
  v96 = a6;
  v10 = type metadata accessor for Device();
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = *(v93 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v81 - v15;
  v17 = sub_1000BC4D4(&qword_1016BCE50, &qword_1013EAEB0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = PassthroughSubject.init()();
  v21 = a1[15];
  a1[15] = v20;

  v90 = a1[3];
  QueueSynchronizer.conditionalSync<A>(_:)();
  if (v97[0])
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C418);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Existing pairing session in progress!", v25, 2u);
    }

    v97[0] = v20;
    sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0);
    v26 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v85 = v14;
    v87 = v17;
    v88 = v20;
    v89 = v7;
    v27 = type metadata accessor for AnalyticsEvent(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    v30 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v30 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v31 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v32 = type metadata accessor for DispatchTime();
    v33 = *(*(v32 - 8) + 56);
    v33(&v30[v31], 1, 1, v32);
    v33(&v30[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v32);
    *(v30 + 15) = 0xD00000000000002CLL;
    *(v30 + 16) = 0x800000010134D0D0;
    v34 = a1[29];
    a1[29] = v30;

    type metadata accessor for Transaction();
    v35 = swift_allocObject();
    *(v35 + 16) = v30;
    *(v35 + 24) = a2 & 1;
    v86 = v30;

    static Transaction.asyncTask(name:block:)();

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = sub_1000076D4(v36, qword_10177C418);
    v38 = v93;
    v39 = v94;
    v40 = *(v93 + 16);
    v81[1] = v93 + 16;
    v81[0] = v40;
    v40(v16, v95, v94);
    v84 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v83 = a2;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v97[0] = v45;
      *v44 = 136446210;
      sub_100E62554(&unk_1016B7C90, 255, &type metadata accessor for Device);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v39;
      v49 = v48;
      v82 = *(v38 + 8);
      v82(v16, v47);
      v50 = sub_1000136BC(v46, v49, v97);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "Start pairing AirPods. BluetoothDevice: %{public}s.", v44, 0xCu);
      sub_100007BAC(v45);
    }

    else
    {

      v82 = *(v38 + 8);
      v82(v16, v39);
    }

    v51 = v95;
    v52 = Device.name.getter();
    v54 = v85;
    if (v53)
    {
      v55 = v52;
      v56 = v53;
      v57 = a1[8];
      sub_100A23580();
      v58 = *(v57 + OBJC_IVAR____TtC12searchpartyd10Peripheral_lock);
      __chkstk_darwin(v59);
      v81[-4] = v57;
      v81[-3] = v55;
      v81[-2] = v56;
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }

    sub_100E342B8(v97);
    v60 = v98;
    sub_10000B3A8(v97, &qword_1016993E0, &qword_101391978);
    if (v60 == 1)
    {
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      v63 = os_log_type_enabled(v61, v62);
      v64 = v88;
      if (v63)
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed to create pairing coordinator!", v65, 2u);
      }

      v97[0] = v64;
      sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0);
      v26 = Publisher.eraseToAnyPublisher()();
    }

    else
    {
      v66 = *(a1[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
      v67 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs;
      swift_beginAccess();
      v68 = *(v66 + v67);
      *(v66 + v67) = v92;

      v69 = sub_100E2CAB4();
      if (v69)
      {
        __chkstk_darwin(v69);
        v81[-2] = a1;
        LOBYTE(v81[-1]) = 1;
        QueueSynchronizer.conditionalSync<A>(_:)();
        v70 = v91;
        sub_100E2DF88(v91, v83 & 1);
        sub_100E2D1D8(v70);
        v99 = v88;
        sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0);
      }

      else
      {
        v71 = v94;
        (v81[0])(v54, v51, v94);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v99 = v75;
          *v74 = 136446210;
          sub_100E62554(&unk_1016B7C90, 255, &type metadata accessor for Device);
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v78 = v77;
          v82(v54, v71);
          v79 = sub_1000136BC(v76, v78, &v99);

          *(v74 + 4) = v79;
          _os_log_impl(&_mh_execute_header, v72, v73, "Failed to determine protocol version for BluetoothDevice: %{public}s.", v74, 0xCu);
          sub_100007BAC(v75);
        }

        else
        {

          v82(v54, v71);
        }

        v99 = v88;
        sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0);
      }

      v26 = Publisher.eraseToAnyPublisher()();
    }
  }

  *v96 = v26;
  return result;
}

uint64_t sub_100E243C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1000BC4D4(&qword_1016BCE50, &qword_1013EAEB0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = PassthroughSubject.init()();
  v14 = *(a1 + 120);
  *(a1 + 120) = v13;

  sub_100E5CA7C(a2, 1, a3, a4);
  sub_1000041A4(&qword_1016BCE58, &qword_1016BCE50, &qword_1013EAEB0);
  v15 = Publisher.eraseToAnyPublisher()();

  *a5 = v15;
  return result;
}

uint64_t sub_100E244C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v7 = type metadata accessor for MACAddress();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v41 = v11;
  v42 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v4 + 16);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v39 = a2;
    v40 = a3;
    if (qword_1016950D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177C418);
  v22 = *(v8 + 16);
  v22(v13, v43, v7);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v4;
    v44 = v37;
    *v25 = 136446210;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v22;
    v29 = v28;
    (*(v8 + 8))(v13, v7);
    v30 = sub_1000136BC(v26, v29, &v44);
    v22 = v27;

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "unpairAirPodsLE with classic MAC address: %{public}s", v25, 0xCu);
    sub_100007BAC(v37);
    v4 = v38;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  type metadata accessor for Transaction();
  v31 = v42;
  v22(v42, v43, v7);
  v32 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v33 = (v41 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v40;
  *(v34 + 16) = v39;
  *(v34 + 24) = v35;
  (*(v8 + 32))(v34 + v32, v31, v7);
  *(v34 + v33) = v4;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100E24920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_100E249B8;

  return daemon.getter();
}

uint64_t sub_100E249B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E62554(&qword_10169F450, 255, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_100E24B9C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E24B9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;

  v7 = v4[7];
  if (v1)
  {

    return _swift_task_switch(sub_100E24D6C, 0, 0);
  }

  else
  {

    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_100E24E8C;
    v9 = v4[5];

    return sub_10132CF38(v9);
  }
}

uint64_t sub_100E24D6C()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing StandaloneBeaconService!", v4, 2u);
  }

  v5 = *(v0 + 32);
  (*(v0 + 24))();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100E24E8C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100E2500C;
  }

  else
  {
    v3 = sub_100E24FA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E24FA0()
{
  v1 = *(v0 + 72);

  v3 = *(v0 + 32);
  (*(v0 + 24))(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100E2500C()
{
  v19 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    *(v0 + 16) = v6;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to remove standalone beacons due to %{public}s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
    v14 = *(v0 + 72);
  }

  v15 = *(v0 + 32);
  (*(v0 + 24))(v13);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100E25204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C418);
  v14 = *(v9 + 16);
  v31 = a1;
  v14(v12, a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v3;
    v18 = v17;
    v29 = swift_slowAlloc();
    v32 = v29;
    *v18 = 136446210;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = a2;
    v21 = a3;
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    v24 = sub_1000136BC(v19, v23, &v32);
    a3 = v21;
    a2 = v20;

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unpairing AirPods with %{public}s.", v18, 0xCu);
    sub_100007BAC(v29);

    v4 = v30;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = type metadata accessor for Transaction();
  __chkstk_darwin(v25);
  v26 = v31;
  *(&v28 - 4) = v4;
  *(&v28 - 3) = v26;
  *(&v28 - 2) = a2;
  *(&v28 - 1) = a3;
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100E25518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v32 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v32);
  v30 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v33);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MACAddress();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 + 16);
  (*(v14 + 16))(v16, a3, v13);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  (*(v14 + 32))(v19 + v17, v16, v13);
  v20 = (v19 + v18);
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  aBlock[4] = sub_100E6A560;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101656DB0;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v23 = v30;
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v34 + 8))(v23, v24);
  (*(v31 + 8))(v12, v33);
}

uint64_t sub_100E25900(char *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v322 = a5;
  v321 = a4;
  v332 = a3;
  v7 = type metadata accessor for Endianness();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v305 = &v273 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = type metadata accessor for StableIdentifier();
  v10 = *(*(v313 - 8) + 64);
  v11 = __chkstk_darwin(v313);
  v334 = &v273 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v333 = &v273 - v13;
  v312 = type metadata accessor for SystemInfo.DeviceLockState();
  v294 = *(v312 - 8);
  v14 = *(v294 + 64);
  v15 = __chkstk_darwin(v312);
  v311 = &v273 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v310 = &v273 - v17;
  v18 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v309 = &v273 - v20;
  v337 = type metadata accessor for OwnedBeaconRecord();
  v335 = *(v337 - 8);
  v21 = *(v335 + 64);
  v22 = __chkstk_darwin(v337);
  v338 = &v273 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v288 = &v273 - v25;
  v26 = __chkstk_darwin(v24);
  v286 = &v273 - v27;
  v28 = __chkstk_darwin(v26);
  v284 = &v273 - v29;
  __chkstk_darwin(v28);
  v287 = &v273 - v30;
  v31 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v298 = &v273 - v33;
  v326 = type metadata accessor for MACAddress();
  v325 = *(v326 - 8);
  v34 = *(v325 + 64);
  v35 = __chkstk_darwin(v326);
  v295 = (&v273 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __chkstk_darwin(v35);
  v315 = (&v273 - v38);
  v39 = __chkstk_darwin(v37);
  v324 = &v273 - v40;
  v300 = v41;
  __chkstk_darwin(v39);
  v297 = (&v273 - v42);
  v336 = type metadata accessor for UUID();
  v331 = *(v336 - 8);
  v43 = *(v331 + 8);
  v44 = __chkstk_darwin(v336);
  v296 = &v273 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v283 = &v273 - v47;
  v48 = __chkstk_darwin(v46);
  v285 = &v273 - v49;
  v50 = __chkstk_darwin(v48);
  v317 = &v273 - v51;
  v52 = __chkstk_darwin(v50);
  v320 = &v273 - v53;
  v54 = __chkstk_darwin(v52);
  v308 = &v273 - v55;
  v56 = __chkstk_darwin(v54);
  v299 = &v273 - v57;
  v58 = __chkstk_darwin(v56);
  v330 = &v273 - v59;
  v306 = v60;
  __chkstk_darwin(v58);
  v327 = &v273 - v61;
  v62 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v63 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62 - 8);
  v65 = &v273 - v64;
  v66 = type metadata accessor for OwnedBeaconGroup(0);
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  v69 = __chkstk_darwin(v66);
  v319 = &v273 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v307 = &v273 - v72;
  v73 = __chkstk_darwin(v71);
  v302 = &v273 - v74;
  v316 = v75;
  __chkstk_darwin(v73);
  v77 = &v273 - v76;
  v78 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v79 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78 - 8);
  v81 = &v273 - v80;
  v303 = a1;
  Transaction.capture()();
  *&v341 = sub_100E221E0();
  v82 = v332;
  sub_1010F701C(v332, v81);
  sub_10000B3A8(v81, &qword_1016A40D0, &unk_10138BE70);
  sub_100E226B8(v341);
  v323 = *(a2 + 32);
  sub_100AC5D4C(v82, v65);
  v304 = v67;
  if ((*(v67 + 48))(v65, 1, v66) == 1)
  {
    sub_10000B3A8(v65, &unk_1016AF8B0, &unk_1013A0700);
    return sub_100E244C8(v82, v321, v322);
  }

  v314 = a2;
  sub_100E6ADA4(v65, v77, type metadata accessor for OwnedBeaconGroup);
  v84 = v331 + 16;
  v85 = *(v331 + 2);
  *&v293 = *(v66 + 24);
  v86 = v327;
  v87 = v336;
  (v85)(v327, v77 + v293, v336);
  if (qword_1016950D0 != -1)
  {
    goto LABEL_71;
  }

LABEL_4:
  v88 = type metadata accessor for Logger();
  v89 = sub_1000076D4(v88, qword_10177C418);
  v90 = v325;
  v91 = *(v325 + 16);
  v92 = v297;
  v93 = v326;
  v292 = v325 + 16;
  v291 = v91;
  v91(v297, v82, v326);
  v94 = v330;
  (v85)(v330, v86, v87);
  v301 = v89;
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  v97 = os_log_type_enabled(v95, v96);
  v328 = v84;
  v329 = v85;
  v318 = v77;
  if (v97)
  {
    v98 = v90;
    v99 = v93;
    v100 = swift_slowAlloc();
    *&v341 = swift_slowAlloc();
    *v100 = 141558787;
    *(v100 + 4) = 1752392040;
    *(v100 + 12) = 2081;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    LODWORD(v289) = v96;
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = v102;
    v290 = *(v98 + 8);
    v290(v92, v99);
    v104 = sub_1000136BC(v101, v103, &v341);
    v105 = v331;

    *(v100 + 14) = v104;
    *(v100 + 22) = 2160;
    *(v100 + 24) = 1752392040;
    *(v100 + 32) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
    v106 = dispatch thunk of CustomStringConvertible.description.getter();
    v108 = v107;
    v330 = *(v105 + 1);
    (v330)(v94, v87);
    v109 = sub_1000136BC(v106, v108, &v341);

    *(v100 + 34) = v109;
    _os_log_impl(&_mh_execute_header, v95, v289, "Unpairing AirPods with MAC %{private,mask.hash}s. GroupId: %{private,mask.hash}s", v100, 0x2Au);
    swift_arrayDestroy();
    v77 = v318;

    v110 = v87;
  }

  else
  {

    v111 = v331;
    v330 = *(v331 + 1);
    (v330)(v94, v87);
    v290 = *(v90 + 8);
    v290(v92, v93);
    v110 = v87;
    v105 = v111;
  }

  sub_100E281D0(v323, &v341);
  v112 = swift_allocObject();
  *(v112 + 16) = 0;
  v113 = (v112 + 16);
  v114 = dispatch_group_create();
  dispatch_group_enter(v114);
  v115 = *(v314 + 56);
  v116 = v77 + v293;
  v117 = v298;
  v329(v298, v116, v110);
  (*(v105 + 7))(v117, 0, 1, v110);
  v118 = v114;
  v119 = v303;

  sub_10093BEA0(v117, &v341, v115, v118, v119, v112);

  v282 = v112;

  sub_100405A18(&v341);
  sub_10000B3A8(v117, &qword_1016980D0, &unk_10138F3B0);
  v281 = v118;
  OS_dispatch_group.wait()();
  v120 = type metadata accessor for AnalyticsEvent(0);
  v121 = *(v120 + 48);
  v122 = *(v120 + 52);
  v123 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v123 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v124 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v125 = type metadata accessor for DispatchTime();
  v126 = *(*(v125 - 8) + 56);
  v126(&v123[v124], 1, 1, v125);
  v126(&v123[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v125);
  *(v123 + 15) = 0xD00000000000002ELL;
  *(v123 + 16) = 0x80000001013721A0;
  v127 = type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
  v303 = v123;

  swift_beginAccess();
  v128 = *v113;
  v129 = v327;
  if (*v113)
  {
    v130 = *v113;
    swift_errorRetain();
    swift_errorRetain();
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v340[0] = v134;
      *v133 = 136446210;
      v339 = v128;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v135 = String.init<A>(describing:)();
      v137 = sub_1000136BC(v135, v136, v340);

      *(v133 + 4) = v137;
      _os_log_impl(&_mh_execute_header, v131, v132, "Failed to remove pairing lock due to %{public}s", v133, 0xCu);
      sub_100007BAC(v134);

      v129 = v327;
    }

    v138 = v302;
    sub_100E6A94C(v318, v302, type metadata accessor for OwnedBeaconGroup);
    v139 = (*(v304 + 80) + 32) & ~*(v304 + 80);
    v140 = swift_allocObject();
    *(v140 + 16) = v303;
    *(v140 + 24) = v128;
    sub_100E6ADA4(v138, v140 + v139, type metadata accessor for OwnedBeaconGroup);

    swift_errorRetain();
    static Transaction.asyncTask(name:block:)();
  }

  v280 = v127;
  v141 = v299;
  v142 = v336;
  v329(v299, v129, v336);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v340[0] = v146;
    *v145 = 141558275;
    *(v145 + 4) = 1752392040;
    *(v145 + 12) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
    v147 = dispatch thunk of CustomStringConvertible.description.getter();
    v148 = v142;
    v150 = v149;
    (v330)(v141, v142);
    v151 = sub_1000136BC(v147, v150, v340);

    *(v145 + 14) = v151;
    _os_log_impl(&_mh_execute_header, v143, v144, "Successfully removed pairing lock for %{private,mask.hash}s", v145, 0x16u);
    sub_100007BAC(v146);

    v129 = v327;
  }

  else
  {

    (v330)(v141, v142);
    v148 = v142;
  }

  v152 = v324;
  v153 = v326;
  v154 = v291;
  v291(v324, v332, v326);
  v155 = v307;
  sub_100E6A94C(v318, v307, type metadata accessor for OwnedBeaconGroup);
  v156 = v308;
  v157 = v329;
  v329(v308, v129, v148);
  v154(v315, v152, v153);
  sub_100E6A94C(v155, v319, type metadata accessor for OwnedBeaconGroup);
  v157(v320, v156, v148);
  v158 = v325;
  v159 = (*(v325 + 80) + 16) & ~*(v325 + 80);
  v160 = (v300 + v159 + 7) & 0xFFFFFFFFFFFFFFF8;
  v161 = *(v304 + 80);
  v162 = (v161 + v160 + 8) & ~v161;
  v163 = (v316 + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = v331;
  v164 = v331[80];
  v275 = ~v164;
  v165 = (v164 + v163 + 8) & ~v164;
  v278 = v164;
  v289 = v161;
  v166 = (v306 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  (*(v158 + 32))(&v84[v159], v324, v153);
  *&v84[v160] = v314;
  sub_100E6ADA4(v307, &v84[v162], type metadata accessor for OwnedBeaconGroup);
  *&v84[v163] = v303;
  v167 = *(v85 + 4);
  v277 = v85 + 32;
  v276 = v167;
  v167(&v84[v165], v308, v336);
  v279 = v84;
  v168 = &v84[v166];
  v169 = v322;
  *v168 = v321;
  *(v168 + 1) = v169;
  My = type metadata accessor for Feature.FindMy();
  v340[3] = My;
  v340[4] = sub_100E62554(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v171 = sub_1000280DC(v340);
  (*(*(My - 8) + 104))(v171, enum case for Feature.FindMy.managedCBPeripheral(_:), My);

  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v340);
  if ((My & 1) == 0)
  {
    goto LABEL_56;
  }

  v172 = sub_100519FB0();
  v173 = v172;
  v174 = (v172 + 56);
  v175 = 1 << *(v172 + 32);
  v176 = -1;
  if (v175 < 64)
  {
    v176 = ~(-1 << v175);
  }

  v77 = v176 & *(v172 + 56);
  v177 = (v175 + 63) >> 6;
  LODWORD(v304) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v300 = (v294 + 104);
  v299 = (v294 + 8);
  v274 = (v335 + 56);
  v324 = v85 + 8;
  v297 = (v335 + 48);

  v308 = v173;

  v86 = 0;
  v294 = 0;
  v87 = &_mh_execute_header;
  v293 = xmmword_101385D80;
  v332 = _swiftEmptyArrayStorage;
  v82 = v338;
  v178 = v317;
  v307 = v177;
  v298 = v174;
LABEL_18:
  v179 = v86;
  if (!v77)
  {
    goto LABEL_20;
  }

  do
  {
    v86 = v179;
LABEL_23:
    v329(v178, *(v308 + 6) + *(v85 + 9) * (__clz(__rbit64(v77)) | (v86 << 6)), v336);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v180 = swift_allocObject();
    *(v180 + 16) = v293;
    v181 = UUID.uuidString.getter();
    v183 = v182;
    *(v180 + 56) = &type metadata for String;
    *(v180 + 64) = sub_100008C00();
    *(v180 + 32) = v181;
    *(v180 + 40) = v183;
    os_log(_:dso:log:_:_:)();

    v184 = v310;
    static SystemInfo.lockState.getter();
    v185 = v311;
    v186 = v312;
    (*v300)(v311, v304, v312);
    sub_100E62554(&qword_10169F338, 255, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v181) = dispatch thunk of static Equatable.== infix(_:_:)();
    v187 = *v299;
    (*v299)(v185, v186);
    v187(v184, v186);
    if (v181)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v84 = v309;
      v188 = v337;
      (*v274)(v309, 1, 1, v337);
      v189 = v336;
      v190 = v330;
      v82 = v338;
      v178 = v317;
    }

    else
    {
      v191 = sub_100025044();
      __chkstk_darwin(v191);
      v178 = v317;
      *(&v273 - 2) = v317;
      v84 = v309;
      v192 = v294;
      sub_1012BBBD0(sub_100406F84, v191, v309);
      v294 = v192;

      v189 = v336;
      v190 = v330;
      v188 = v337;
      v82 = v338;
    }

    v77 &= v77 - 1;
    v190(v178, v189);
    v193 = (*v297)(v84, 1, v188);
    v85 = v331;
    if (v193 != 1)
    {
      v194 = v286;
      sub_100E6ADA4(v84, v286, type metadata accessor for OwnedBeaconRecord);
      sub_100E6ADA4(v194, v288, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v332 = sub_100A5C050(0, *(v332 + 2) + 1, 1, v332);
      }

      v174 = v298;
      v87 = &_mh_execute_header;
      v196 = *(v332 + 2);
      v195 = *(v332 + 3);
      if (v196 >= v195 >> 1)
      {
        v332 = sub_100A5C050(v195 > 1, v196 + 1, 1, v332);
      }

      v197 = v332;
      *(v332 + 2) = v196 + 1;
      sub_100E6ADA4(v288, v197 + ((*(v335 + 80) + 32) & ~*(v335 + 80)) + *(v335 + 72) * v196, type metadata accessor for OwnedBeaconRecord);
      v177 = v307;
      goto LABEL_18;
    }

    sub_10000B3A8(v84, &unk_1016A9A20, &qword_10138B280);
    v179 = v86;
    v177 = v307;
    v174 = v298;
    v87 = &_mh_execute_header;
  }

  while (v77);
  while (1)
  {
LABEL_20:
    v86 = v179 + 1;
    if (__OFADD__(v179, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_4;
    }

    if (v86 >= v177)
    {
      break;
    }

    v77 = *&v174[8 * v86];
    ++v179;
    if (v77)
    {
      goto LABEL_23;
    }
  }

  v86 = *(v332 + 2);
  v85 = v330;
  if (v86)
  {
    v77 = 0;
    v84 = &v332[(*(v335 + 80) + 32) & ~*(v335 + 80)];
    v87 = (v334 + 8);
    do
    {
      if (v77 >= *(v332 + 2))
      {
        goto LABEL_70;
      }

      sub_100E6A94C(&v84[*(v335 + 72) * v77], v82, type metadata accessor for OwnedBeaconRecord);
      v198 = v337;
      v199 = *(v337 + 24);
      v200 = &v82[v199];
      v201 = v333;
      sub_100E6A94C(v200, v333, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v203 = v201;
      v204 = v338;
      sub_100E6A9B4(v203, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload != 1)
      {
        sub_100E6A94C(v204 + v199, v334, type metadata accessor for StableIdentifier);
        v205 = swift_getEnumCaseMultiPayload();
        if (v205 == 2)
        {
          v210 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
          v211 = *(&v87->magic + v210[12]);

          v212 = *(&v87->magic + v210[16]);

          v213 = *(&v87->magic + v210[20]);

          v209 = v210[28];
        }

        else
        {
          if (v205 != 3)
          {
            sub_100E6A9B4(v334, type metadata accessor for StableIdentifier);
            goto LABEL_39;
          }

          v206 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v207 = *(&v87->magic + v206[12]);

          v208 = *(&v87->magic + v206[16]);

          v209 = v206[20];
        }

        v214 = *(&v87->magic + v209);

        (v85)(v334, v336);
        v198 = v337;
      }

      v215 = sub_100314604(*(v204 + *(v198 + 64)), *(v204 + *(v198 + 68)));
      if (v216 >> 60 != 15)
      {
        v217 = v215;
        v218 = v216;
        v340[0] = sub_101129A64(&off_10160D1A0);
        sub_100DE9B10(&v339, 8216);
        sub_100DE9B10(&v339, 8220);
        sub_100DE9B10(&v339, 8233);
        if (sub_100313A28(v217, v218) == 76)
        {
          v219 = v340[0];
          sub_100313B54(v217, v218);
          static Endianness.current.getter();
          sub_10012BF24();
          FixedWidthInteger.init(data:ofEndianness:)();
          if (BYTE4(v339))
          {
            v220 = 0;
          }

          else
          {
            v220 = v339;
          }

          v221 = sub_10111F5D4(v220, v219);
          sub_100006654(v217, v218);
          v85 = v330;

          if (v221)
          {

            v250 = v336;
            (v85)(v320, v336);
            sub_100E6A9B4(v319, type metadata accessor for OwnedBeaconGroup);
            v290(v315, v326);
            v251 = v284;
            sub_100E6ADA4(v338, v284, type metadata accessor for OwnedBeaconRecord);
            v252 = v251;
            v330 = v85;
            v253 = v287;
            sub_100E6ADA4(v252, v287, type metadata accessor for OwnedBeaconRecord);
            v254 = v285;
            v255 = v329;
            v329(v285, v253 + *(v337 + 20), v250);
            v256 = v283;
            v255(v283, v254, v250);
            v257 = Logger.logObject.getter();
            v258 = static os_log_type_t.default.getter();
            v259 = os_log_type_enabled(v257, v258);
            v260 = v314;
            if (v259)
            {
              v261 = swift_slowAlloc();
              v262 = swift_slowAlloc();
              v340[0] = v262;
              *v261 = 141558275;
              *(v261 + 4) = 1752392040;
              *(v261 + 12) = 2081;
              sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
              v263 = dispatch thunk of CustomStringConvertible.description.getter();
              v264 = v256;
              v266 = v265;
              (v330)(v264, v250);
              v267 = sub_1000136BC(v263, v266, v340);

              *(v261 + 14) = v267;
              _os_log_impl(&_mh_execute_header, v257, v258, "Sending unpair to managed peripheral %{private,mask.hash}s", v261, 0x16u);
              sub_100007BAC(v262);
            }

            else
            {

              (v330)(v256, v250);
            }

            v268 = v318;
            v269 = v296;
            v329(v296, v254, v250);
            v270 = (v278 + 40) & v275;
            v271 = swift_allocObject();
            *(v271 + 2) = v260;
            *(v271 + 3) = sub_100E6A684;
            *(v271 + 4) = v279;
            v276(&v271[v270], v269, v250);

            static Transaction.asyncTask(name:block:)();

            v272 = v330;
            (v330)(v254, v250);
            sub_100E6A9B4(v287, type metadata accessor for OwnedBeaconRecord);
            v272(v327, v250);
            v249 = v268;
            goto LABEL_64;
          }
        }

        else
        {
          sub_100006654(v217, v218);
        }
      }

LABEL_39:
      ++v77;
      v82 = v338;
      sub_100E6A9B4(v338, type metadata accessor for OwnedBeaconRecord);
    }

    while (v86 != v77);
  }

LABEL_56:
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v222 = v289;
  v223 = ~v289;
  sub_100EB3A04(0xD000000000000021, 0x8000000101372220, qword_10177C218);
  v225 = v295;
  if ((v226 & 1) == 0)
  {
    v227 = v224;
    v228 = v326;
    v291(v295, v315, v326);
    v229 = Logger.logObject.getter();
    v230 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      v340[0] = swift_slowAlloc();
      *v231 = 136315650;
      *(v231 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101372250, v340);
      *(v231 + 12) = 2048;
      *(v231 + 14) = v227;
      *(v231 + 22) = 2082;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v232 = dispatch thunk of CustomStringConvertible.description.getter();
      v233 = v225;
      v235 = v234;
      v290(v233, v228);
      v236 = sub_1000136BC(v232, v235, v340);

      *(v231 + 24) = v236;
      _os_log_impl(&_mh_execute_header, v229, v230, "%s Artificial delay %ld seconds for address %{public}s.", v231, 0x20u);
      swift_arrayDestroy();

      v222 = v289;
    }

    else
    {

      v290(v225, v228);
    }

    [objc_opt_self() sleepForTimeInterval:v227];
  }

  v237 = v319;
  v238 = sub_100E2B558(v319);
  v240 = v239;
  v241 = v296;
  v242 = v336;
  v329(v296, v320, v336);
  v243 = v302;
  sub_100E6A94C(v237, v302, type metadata accessor for OwnedBeaconGroup);
  v244 = (v278 + 33) & v275;
  v245 = (v306 + v222 + v244) & v223;
  v246 = swift_allocObject();
  *(v246 + 16) = v303;
  *(v246 + 24) = v238;
  *(v246 + 32) = v240 & 1;
  v276((v246 + v244), v241, v242);
  sub_100E6ADA4(v243, v246 + v245, type metadata accessor for OwnedBeaconGroup);

  sub_100B21C10(v238, v240 & 1);
  static Transaction.asyncTask(name:block:)();

  v247 = v315;
  sub_100E244C8(v315, v321, v322);
  sub_1000BB584(v238, v240 & 1);

  v248 = v330;
  (v330)(v320, v242);
  sub_100E6A9B4(v319, type metadata accessor for OwnedBeaconGroup);
  v290(v247, v326);
  v248(v327, v242);
  v249 = v318;
LABEL_64:
  sub_100E6A9B4(v249, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_100E281D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v4 = sub_1000BC4D4(&qword_10169F318, &qword_1013A0730);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v57 - v6);
  v8 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v57 - v13;
  v57 = type metadata accessor for OwnedBeaconGroup(0);
  v58 = v2;
  v14 = sub_1003CDA20(*(v2 + *(v57 + 40)));
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v14 + 32;
    v60 = v9;
    v19 = (v9 + 48);
    v64 = _swiftEmptyArrayStorage;
    v61 = v8;
    while (v17 < *(v15 + 16))
    {
      *v65 = *(v18 + 16 * v17);
      sub_100017D5C(v65[0], v65[1]);
      sub_100E61058(v65, v7);
      sub_100016590(v65[0], v65[1]);
      if ((*v19)(v7, 1, v8) == 1)
      {
        sub_10000B3A8(v7, &qword_10169F318, &qword_1013A0730);
      }

      else
      {
        v20 = v15;
        v21 = v16;
        v22 = v18;
        v23 = a1;
        v24 = v62;
        sub_100E6ADA4(v7, v62, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
        sub_100E6ADA4(v24, v63, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
        v25 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_100A5CB78(0, v25[2] + 1, 1, v25);
        }

        v27 = v25[2];
        v26 = v25[3];
        v64 = v25;
        if (v27 >= v26 >> 1)
        {
          v64 = sub_100A5CB78(v26 > 1, v27 + 1, 1, v64);
        }

        v28 = v63;
        v29 = v64;
        v64[2] = v27 + 1;
        sub_100E6ADA4(v28, v29 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v27, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
        v8 = v61;
        a1 = v23;
        v18 = v22;
        v16 = v21;
        v15 = v20;
      }

      if (v16 == ++v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_14;
  }

  v64 = _swiftEmptyArrayStorage;
LABEL_13:

  if (qword_1016950D0 != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  v30 = type metadata accessor for Logger();
  sub_1000076D4(v30, qword_10177C418);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v65[0] = v34;
    *v33 = 136315138;
    v35 = Array.description.getter();
    v37 = sub_1000136BC(v35, v36, v65);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "unpairDevices: %s", v33, 0xCu);
    sub_100007BAC(v34);
  }

  v38 = MobileGestalt_get_current_device();
  if (v38)
  {
    v39 = v38;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    v41 = MobileGestalt_get_current_device();
    if (v41)
    {
      v42 = v41;
      chipID = MobileGestalt_get_chipID();

      v65[0] = uniqueChipID;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v65[0] = chipID;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v50 = sub_100EF9784();
      v52 = v51;
      v53 = v58 + *(v57 + 28);
      result = MACAddress.udid.getter();
      v55 = v59;
      *v59 = v44;
      v55[1] = v46;
      v55[2] = v47;
      v55[3] = v49;
      v55[4] = v50;
      v55[5] = v52;
      v55[6] = result;
      v55[7] = v56;
      *(v55 + 64) = 0;
      v55[9] = v64;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  sub_100016590(v65[0], v65[1]);

  __break(1u);
  return result;
}

void sub_100E286F8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  Transaction.capture()();
  swift_beginAccess();
  v7 = *(a4 + 16);
  *(a4 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a2);
}

uint64_t sub_100E2876C(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100E2880C, a1, 0);
}

uint64_t sub_100E2880C()
{
  v1 = v0[5];
  v2 = v0[6];
  static DispatchTime.now()();
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_10002311C(v2, v1 + v4, &qword_101696CA8, &qword_10138B5E0);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100E28904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100E28928, 0, 0);
}

uint64_t sub_100E28928()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);

  return _swift_task_switch(sub_100E289A0, v1, 0);
}

uint64_t sub_100E289A0()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_10115BE7C(sub_100E6ABDC);
  v3 = v0[5];

  type metadata accessor for AnalyticsPublisher();
  v0[6] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100E28A94;
  v5 = v0[2];

  return sub_101163F78(v5);
}

uint64_t sub_100E28A94()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_100E28BA4(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6D6F44726F727265;
  *(inited + 72) = 0xEB000000006E6961;
  swift_getErrorValue();
  Error.domain.getter();
  v4 = String._bridgeToObjectiveC()();

  *(inited + 80) = v4;
  *(inited + 88) = 0;
  *(inited + 96) = 0x646F43726F727265;
  *(inited + 104) = 0xE900000000000065;
  swift_getErrorValue();
  Error.code.getter();
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  strcpy((inited + 128), "numberOfParts");
  *(inited + 142) = -4864;
  result = *(*(a2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
  if (result > 0xFF)
  {
    __break(1u);
  }

  else
  {
    *(inited + 144) = UInt8._bridgeToObjectiveC()();
    *(inited + 152) = 0;
    v6 = sub_100908768(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
    swift_arrayDestroy();
    return v6;
  }

  return result;
}

uint64_t sub_100E28D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a6;
  v55 = a7;
  v48 = a5;
  v52 = a4;
  v53 = a2;
  v50 = a3;
  v56 = a1;
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v7 - 8);
  v51 = v9;
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  __chkstk_darwin(v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MACAddress();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  sub_100EB3A04(0xD000000000000021, 0x8000000101372220, qword_10177C218);
  if ((v19 & 1) == 0)
  {
    v20 = v18;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    (*(v14 + 16))(v17, v56, v13);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v44 = v10;
      v45 = v11;
      v25 = v24;
      v43 = swift_slowAlloc();
      v57 = v43;
      *v25 = 136315650;
      *(v25 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101372250, &v57);
      *(v25 + 12) = 2048;
      v26 = v20;
      *(v25 + 14) = v20;
      *(v25 + 22) = 2082;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v27 = v23;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v14 + 8))(v17, v13);
      v31 = sub_1000136BC(v28, v30, &v57);

      *(v25 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v22, v27, "%s Artificial delay %ld seconds for address %{public}s.", v25, 0x20u);
      swift_arrayDestroy();

      v10 = v44;
      v11 = v45;
    }

    else
    {

      (*(v14 + 8))(v17, v13);
      v26 = v20;
    }

    [objc_opt_self() sleepForTimeInterval:v26];
  }

  v32 = v50;
  v33 = sub_100E2B558(v50);
  v35 = v34;
  v45 = type metadata accessor for Transaction();
  v37 = v46;
  v36 = v47;
  (*(v47 + 16))(v46, v48, v11);
  sub_100E6A94C(v32, v10, type metadata accessor for OwnedBeaconGroup);
  v38 = (*(v36 + 80) + 33) & ~*(v36 + 80);
  v39 = (v12 + *(v49 + 80) + v38) & ~*(v49 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v52;
  *(v40 + 24) = v33;
  v35 &= 1u;
  *(v40 + 32) = v35;
  (*(v36 + 32))(v40 + v38, v37, v11);
  sub_100E6ADA4(v10, v40 + v39, type metadata accessor for OwnedBeaconGroup);

  sub_100B21C10(v33, v35);
  static Transaction.asyncTask(name:block:)();

  sub_100E244C8(v56, v54, v55);
  return sub_1000BB584(v33, v35);
}

uint64_t sub_100E29318(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100E29340, 0, 0);
}

uint64_t sub_100E29340()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1 & 1;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_100E293D0, v2, 0);
}

uint64_t sub_100E293D0()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_10115BE7C(sub_100E6AD94);
  v3 = v0[6];

  type metadata accessor for AnalyticsPublisher();
  v0[7] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_100E294C4;
  v5 = v0[2];

  return sub_101163F78(v5);
}

uint64_t sub_100E294C4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_100E295D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  if (a2)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v44 = a4;
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C418);
    (*(v9 + 16))(v13, a3, v8);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_1000BB584(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46[0] = v43;
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v9 + 8))(v13, v8);
      v23 = sub_1000136BC(v20, v22, v46);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2082;
      v45 = a1;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v24 = String.init<A>(describing:)();
      v26 = sub_1000136BC(v24, v25, v46);

      *(v19 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Remove related records failed for %{private,mask.hash}s. Error %{public}s", v19, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101391790;
    *(inited + 32) = 0x6563637553736177;
    *(inited + 40) = 0xEA00000000007373;
    *(inited + 48) = 0;
    *(inited + 56) = 1;
    *(inited + 64) = 0x6D6F44726F727265;
    *(inited + 72) = 0xEB000000006E6961;
    swift_getErrorValue();
    Error.domain.getter();
    v38 = String._bridgeToObjectiveC()();

    *(inited + 80) = v38;
    *(inited + 88) = 0;
    *(inited + 96) = 0x646F43726F727265;
    *(inited + 104) = 0xE900000000000065;
    swift_getErrorValue();
    Error.code.getter();
    *(inited + 112) = Int._bridgeToObjectiveC()();
    *(inited + 120) = 0;
    strcpy((inited + 128), "numberOfParts");
    *(inited + 142) = -4864;
    result = *(*(v44 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
    if (result <= 0xFF)
    {
      *(inited + 144) = UInt8._bridgeToObjectiveC()();
      *(inited + 152) = 0;
      v40 = sub_100908768(inited);
      swift_setDeallocating();
      sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
LABEL_16:
      swift_arrayDestroy();
      return v40;
    }

    __break(1u);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C418);
    (*(v9 + 16))(v15, a3, v8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = a4;
      v32 = v31;
      v46[0] = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v9 + 8))(v15, v8);
      v36 = sub_1000136BC(v33, v35, v46);

      *(v30 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully removed related records for %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v32);
      a4 = v44;
    }

    else
    {

      (*(v9 + 8))(v15, v8);
    }

    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_10138BBE0;
    *(v41 + 32) = 0x6563637553736177;
    *(v41 + 40) = 0xEA00000000007373;
    *(v41 + 48) = 1;
    *(v41 + 56) = 1;
    strcpy((v41 + 64), "numberOfParts");
    *(v41 + 78) = -4864;
    result = *(*(a4 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
    if (result <= 0xFF)
    {
      *(v41 + 80) = UInt8._bridgeToObjectiveC()();
      *(v41 + 88) = 0;
      v40 = sub_100908768(v41);
      swift_setDeallocating();
      sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100E29D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v4[28] = *(v12 + 64);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  v4[31] = v14;
  *v14 = v4;
  v14[1] = sub_100E29F10;

  return daemon.getter();
}

uint64_t sub_100E29F10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E62554(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_100E2A0F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E2A0F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v5 = *v2;
  *(*v2 + 272) = a1;

  v6 = *(v3 + 256);
  if (v1)
  {

    v7 = sub_100E2A244;
  }

  else
  {

    v7 = sub_100E2A554;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100E2A244()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandService to send unpair!", v4, 2u);
  }

  v20 = v0[25];
  v5 = v0[22];
  v22 = v0[24];
  v23 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[16];

  v21 = *(v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  v0[6] = sub_100150F2C;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101656EC8;
  v12 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v6 + 8))(v5, v7);
  (*(v22 + 8))(v20, v23);
  v13 = v0[7];

  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[25];
  v17 = v0[22];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100E2A554()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[26];
  v5 = v0[19];
  v6 = *(v3 + 16);
  v0[35] = v6;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[37] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = async function pointer to retry<A>(times:retryDelay:shouldRetry:block:)[1];

  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_100E2A6D4;

  return retry<A>(times:retryDelay:shouldRetry:block:)();
}

uint64_t sub_100E2A6D4()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_100E2AA58;
  }

  else
  {
    v5 = *(v2 + 296);

    v4 = sub_100E2A7F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E2A7F0()
{
  v1 = v0[25];
  v17 = v0[24];
  v2 = v0[22];
  v18 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[18];
  v16 = *(v0[16] + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v0[12] = sub_10013A884;
  v0[13] = v7;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100006684;
  v0[11] = &unk_101656F40;
  v8 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v3 + 8))(v2, v4);
  (*(v17 + 8))(v1, v18);
  v9 = v0[13];

  v11 = v0[29];
  v10 = v0[30];
  v12 = v0[25];
  v13 = v0[22];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100E2AA58()
{
  v44 = v0;
  v1 = v0[37];

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[19];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C418);
  v4(v5, v7, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[39];
  v13 = v0[29];
  v15 = v0[26];
  v14 = v0[27];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1000136BC(v17, v19, &v43);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v39 = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "RX Unpaired %{private,mask.hash}s failed with error %{public}@", v16, 0x20u);
    sub_10000B3A8(v39, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v41);
  }

  else
  {
    v22 = v0[39];

    (*(v14 + 8))(v13, v15);
  }

  v23 = v0[25];
  v40 = v0[24];
  v24 = v0[22];
  v42 = v0[23];
  v26 = v0[20];
  v25 = v0[21];
  v27 = v0[17];
  v28 = v0[18];
  v38 = *(v0[16] + 16);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v0[12] = sub_10013A884;
  v0[13] = v29;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100006684;
  v0[11] = &unk_101656F40;
  v30 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v25 + 8))(v24, v26);
  (*(v40 + 8))(v23, v42);
  v31 = v0[13];

  v33 = v0[29];
  v32 = v0[30];
  v34 = v0[25];
  v35 = v0[22];

  v36 = v0[1];

  return v36();
}

uint64_t sub_100E2AF18()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C418);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "RX Unpair failed. Retrying...", v3, 2u);
  }

  return 1;
}

uint64_t sub_100E2AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100E2B0B4, 0, 0);
}

uint64_t sub_100E2B0B4()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying RX Unpair", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100E2B20C;
  v7 = v0[2];
  v6 = v0[3];

  return sub_10121C86C(v6, 0);
}

uint64_t sub_100E2B20C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 48);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100E2B358, 0, 0);
  }
}

uint64_t sub_100E2B358()
{
  v18 = v0;
  v1 = v0[7];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v6 + 8))(v5, v7);
    v13 = sub_1000136BC(v10, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully sent RX Unpair to %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100E2B558(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v37 = 0;
  v20 = sub_100519FB0();
  __chkstk_darwin(v20);
  *(&v35 - 4) = v2;
  *(&v35 - 3) = &v37;
  *(&v35 - 2) = a1;
  *(&v35 - 1) = v4;
  sub_1005C6534(sub_100E6A304, (&v35 - 6), v20);

  v21 = *(v2 + 32);
  sub_100AC53EC(a1 + *(v5 + 24), v12);
  LODWORD(v20) = (*(v6 + 48))(v12, 1, v5);
  sub_10000B3A8(v12, &unk_1016AF8B0, &unk_1013A0700);
  if (v20 == 1)
  {
    return v37;
  }

  if (qword_1016950D0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177C418);
  v24 = v35;
  sub_100E6A94C(a1, v35, type metadata accessor for OwnedBeaconGroup);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    v29 = *(v5 + 24);
    type metadata accessor for UUID();
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_100E6A9B4(v24, type metadata accessor for OwnedBeaconGroup);
    v33 = sub_1000136BC(v30, v32, &v36);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "Group %{private,mask.hash}s still exists. Need to clean up", v27, 0x16u);
    sub_100007BAC(v28);
  }

  else
  {

    sub_100E6A9B4(v24, type metadata accessor for OwnedBeaconGroup);
  }

  v34 = sub_100B93B5C(a1);

  return v34;
}

uint64_t sub_100E2BA3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v82 = a4;
  v80 = a3;
  v88 = a1;
  v89 = a2;
  v5 = type metadata accessor for UUID();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  __chkstk_darwin(v5);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v78 = *(v8 - 8);
  v9 = *(v78 + 64);
  __chkstk_darwin(v8 - 8);
  v79 = v10;
  v81 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v76 - v13;
  v15 = type metadata accessor for OwnedBeaconRecord();
  v87 = *(v15 - 8);
  v16 = *(v87 + 64);
  v17 = __chkstk_darwin(v15);
  v76 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v77 = &v76 - v19;
  __chkstk_darwin(v18);
  v91 = &v76 - v20;
  v21 = type metadata accessor for AnalyticsEvent(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v24 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v25 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v26 = type metadata accessor for DispatchTime();
  v27 = *(*(v26 - 8) + 56);
  v27(&v24[v25], 1, 1, v26);
  v27(&v24[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v26);
  v29 = v87;
  v28 = v88;
  *(v24 + 15) = 0xD00000000000002ELL;
  *(v24 + 16) = 0x80000001013721A0;
  v30 = type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
  v90 = v24;

  v31 = *(v89 + 32);
  sub_100AA33AC(v28, v14);
  v32 = *(v29 + 48);
  v89 = v15;
  if (v32(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177C418);
    v35 = v85;
    v34 = v86;
    v36 = v83;
    (*(v85 + 16))(v83, v28, v86);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {

      return (*(v35 + 8))(v36, v34);
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v93 = v40;
    *v39 = 141558275;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v36;
    v44 = v43;
    (*(v35 + 8))(v42, v34);
    v45 = sub_1000136BC(v41, v44, &v93);

    *(v39 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "Missing beacon record for %{private,mask.hash}s", v39, 0x16u);
    sub_100007BAC(v40);
  }

  v88 = v30;
  v46 = v91;
  sub_100E6ADA4(v14, v91, type metadata accessor for OwnedBeaconRecord);
  v47 = sub_100DDE55C(v46, 1, 0);
  v48 = v47;
  v49 = v80;
  if (!v47)
  {
    v48 = *v80;
    swift_errorRetain();
  }

  v50 = *v49;
  *v49 = v48;
  swift_errorRetain();

  v51 = v77;
  sub_100E6A94C(v46, v77, type metadata accessor for OwnedBeaconRecord);
  v52 = v81;
  sub_100E6A94C(v82, v81, type metadata accessor for OwnedBeaconGroup);
  v53 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v54 = (v16 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (*(v78 + 80) + v54 + 8) & ~*(v78 + 80);
  v56 = (v79 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 16) = v90;
  sub_100E6ADA4(v51, v57 + v53, type metadata accessor for OwnedBeaconRecord);
  *(v57 + v54) = v47;
  sub_100E6ADA4(v52, v57 + v55, type metadata accessor for OwnedBeaconGroup);
  *(v57 + v56) = v84;

  swift_errorRetain();
  static Transaction.asyncTask(name:block:)();

  if (!v47)
  {
    sub_100E6A9B4(v91, type metadata accessor for OwnedBeaconRecord);
  }

  v58 = v91;
  swift_errorRetain();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_1000076D4(v59, qword_10177C418);
  v60 = v76;
  sub_100E6A94C(v58, v76, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v63 = 141558531;
    *(v63 + 4) = 1752392040;
    *(v63 + 12) = 2081;
    v64 = *(v89 + 20);
    sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v60;
    v67 = v65;
    v69 = v68;
    sub_100E6A9B4(v66, type metadata accessor for OwnedBeaconRecord);
    v70 = sub_1000136BC(v67, v69, &v93);

    *(v63 + 14) = v70;
    *(v63 + 22) = 2082;
    v92 = v47;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v71 = String.init<A>(describing:)();
    v73 = sub_1000136BC(v71, v72, &v93);

    *(v63 + 24) = v73;
    _os_log_impl(&_mh_execute_header, v61, v62, "Failed to remove %{private,mask.hash}s due to %{public}s", v63, 0x20u);
    swift_arrayDestroy();

    v74 = v91;
  }

  else
  {

    sub_100E6A9B4(v60, type metadata accessor for OwnedBeaconRecord);
    v74 = v58;
  }

  return sub_100E6A9B4(v74, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_100E2C468(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100E6B334, a1, 0);
}

uint64_t sub_100E2C508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100E2C530, 0, 0);
}

uint64_t sub_100E2C530()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_100E2C5B8, v3, 0);
}

uint64_t sub_100E2C5B8()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_10115BE7C(sub_100E6A534);
  v3 = v0[7];

  type metadata accessor for AnalyticsPublisher();
  v0[8] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100E2C6AC;
  v5 = v0[2];

  return sub_101163F78(v5);
}

uint64_t sub_100E2C6AC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_100E2C7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100D608FC();
  if (a2)
  {
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138C0D0;
    *(inited + 32) = 0x6563637553736177;
    *(inited + 40) = 0xEA00000000007373;
    *(inited + 48) = 0;
    *(inited + 56) = 1;
    *(inited + 64) = 0x6D6F44726F727265;
    *(inited + 72) = 0xEB000000006E6961;
    swift_getErrorValue();
    swift_errorRetain();
    Error.domain.getter();
    v6 = String._bridgeToObjectiveC()();

    *(inited + 80) = v6;
    *(inited + 88) = 0;
    *(inited + 96) = 0x646F43726F727265;
    *(inited + 104) = 0xE900000000000065;
    swift_getErrorValue();
    Error.code.getter();
    *(inited + 112) = Int._bridgeToObjectiveC()();
    *(inited + 120) = 0;
    *(inited + 128) = 0x626D754E74726170;
    *(inited + 136) = 0xEA00000000007265;
    *(inited + 144) = UInt8._bridgeToObjectiveC()();
    *(inited + 152) = 0;
    strcpy((inited + 160), "numberOfParts");
    *(inited + 174) = -4864;
    result = *(*(a3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
    if (result <= 0xFF)
    {
      *(inited + 176) = UInt8._bridgeToObjectiveC()();
      *(inited + 184) = 0;
      v8 = sub_100908768(inited);
      swift_setDeallocating();
      sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
      swift_arrayDestroy();

      return v8;
    }

    __break(1u);
  }

  else
  {
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_10138B360;
    *(v9 + 32) = 0x6563637553736177;
    *(v9 + 40) = 0xEA00000000007373;
    *(v9 + 48) = 1;
    *(v9 + 56) = 1;
    *(v9 + 64) = 0x626D754E74726170;
    *(v9 + 72) = 0xEA00000000007265;
    *(v9 + 80) = UInt8._bridgeToObjectiveC()();
    *(v9 + 88) = 0;
    strcpy((v9 + 96), "numberOfParts");
    *(v9 + 110) = -4864;
    result = *(*(a3 + *(type metadata accessor for OwnedBeaconGroup(0) + 40)) + 16);
    if (result <= 0xFF)
    {
      *(v9 + 112) = UInt8._bridgeToObjectiveC()();
      *(v9 + 120) = 0;
      v8 = sub_100908768(v9);
      swift_setDeallocating();
      sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
      swift_arrayDestroy();
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100E2CAB4()
{
  v1 = v0;
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Endianness();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 16);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = Device.vendorID.getter();
  v17 = Device.productID.getter();
  v45 = v16;
  sub_100101824();
  *&v46 = FixedWidthInteger.data.getter();
  *(&v46 + 1) = v18;
  v45 = v17;
  v19 = FixedWidthInteger.data.getter();
  v21 = v20;
  Data.append(_:)();
  sub_100016590(v19, v21);
  v22 = v46;
  if (sub_100DE6630(v46, *(&v46 + 1)))
  {
    v47 = &type metadata for AirpodsPairingSpec1_1;
    v48 = sub_100E6A2B0();
LABEL_4:
    sub_100016590(v22, *(&v22 + 1));
    goto LABEL_11;
  }

  sub_100017D5C(v22, *(&v22 + 1));
  if (sub_100313A28(v22, *(&v22 + 1)) != 76 || (sub_100313B54(v22, *(&v22 + 1)), static Endianness.current.getter(), sub_10012BF24(), FixedWidthInteger.init(data:ofEndianness:)(), (BYTE4(v46) & 1) != 0) || v46 != 8231)
  {
    sub_100016590(v22, *(&v22 + 1));
    sub_100016590(v22, *(&v22 + 1));
    v47 = &type metadata for AirpodsPairingSpec1_0;
    v48 = sub_100E6A25C();
LABEL_11:
    swift_beginAccess();
    sub_100007BAC((v1 + 176));
    sub_10000A748(&v46, v1 + 176);
    swift_endAccess();
    if (qword_1016950D0 == -1)
    {
LABEL_12:
      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_10177C418);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v44 = v29;
        *v28 = 136446210;
        swift_beginAccess();
        sub_10001F280(v1 + 176, &v46);
        sub_1000BC4D4(&qword_1016BCE38, &qword_1013EAE20);
        v30 = String.init<A>(describing:)();
        v32 = sub_1000136BC(v30, v31, &v44);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "Using PairingSpec: %{public}s", v28, 0xCu);
        sub_100007BAC(v29);
      }

      return 1;
    }

LABEL_22:
    swift_once();
    goto LABEL_12;
  }

  My = type metadata accessor for Feature.FindMy();
  v47 = My;
  v48 = sub_100E62554(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v24 = sub_1000280DC(&v46);
  (*(*(My - 8) + 104))(v24, enum case for Feature.FindMy.magneticCow(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v46);
  if (My)
  {
    v47 = &type metadata for AirpodsPairingSpec1_1;
    v48 = sub_100E6A2B0();
    sub_100016590(v22, *(&v22 + 1));
    goto LABEL_4;
  }

  Device.btAddress.getter();
  v34 = MACAddress.description.getter();
  v36 = v35;
  (*(v3 + 8))(v6, v2);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177C418);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v46 = v41;
    *v40 = 141558275;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    v42 = sub_1000136BC(v34, v36, &v46);

    *(v40 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v38, v39, "Skipping BA pairing for %{private,mask.hash}s, FeatureFlag is not enabled.", v40, 0x16u);
    sub_100007BAC(v41);

    sub_100016590(v22, *(&v22 + 1));

    sub_100016590(v22, *(&v22 + 1));
  }

  else
  {
    sub_100016590(v22, *(&v22 + 1));

    sub_100016590(v22, *(&v22 + 1));
  }

  return 0;
}

uint64_t sub_100E2D1D8(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v1[2];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = type metadata accessor for Transaction();
    __chkstk_darwin(v12);
    *&v13[-32] = v1;
    *&v13[-24] = a1;
    *&v13[-16] = v3;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E2D390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v59 = a1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v47 = &v45 - v6;
  v50 = sub_1000BC4D4(&qword_1016BCD88, &qword_1013EADC8);
  v48 = *(v50 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin(v50);
  v61 = &v45 - v8;
  v52 = sub_1000BC4D4(&qword_1016BCD90, &qword_1013EADD0);
  v51 = *(v52 - 8);
  v9 = *(v51 + 64);
  __chkstk_darwin(v52);
  v49 = &v45 - v10;
  v55 = sub_1000BC4D4(&qword_1016BCD98, &qword_1013EADD8);
  v54 = *(v55 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin(v55);
  v53 = &v45 - v12;
  v13 = sub_1000BC4D4(&qword_1016BCDA0, &qword_1013EADE0);
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = *(v57 + 64);
  __chkstk_darwin(v13);
  v56 = &v45 - v15;
  swift_beginAccess();
  sub_10001F280(a2 + 176, v63);
  v16 = v64;
  v17 = v65;
  sub_1000035D0(v63, v64);
  sub_1010A2224();
  v19 = v18;
  v21 = v20;
  v22 = *(v17 + 64);
  v67[3] = swift_getAssociatedTypeWitness();
  v67[4] = swift_getAssociatedConformanceWitness();
  sub_1000280DC(v67);
  v22(v19, v21, v16, v17);
  sub_100016590(v19, v21);
  sub_100007BAC(v63);
  sub_10001F280(v67, v63);
  v66 = 0;
  v23 = sub_100E3465C(v63, v62);
  sub_10000B3A8(v63, &qword_1016BCD38, &qword_1013EAD40);
  v63[0] = v23;
  v60 = a2;
  v68 = *(a2 + 16);
  v24 = v68;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v26 = v47;
  v45 = *(*(v25 - 8) + 56);
  v45(v47, 1, 1, v25);
  v46 = v24;
  sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016BCDA8, &qword_1016BCD40, &unk_1013EAD48);
  sub_1004682F0();
  v27 = v26;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v26, &unk_1016B0FE0, &unk_101391980);

  if (qword_101694EF0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v28, qword_1016BC8D0);
  v29 = v46;
  v63[0] = v46;
  v45(v26, 1, 1, v25);
  sub_1000041A4(&qword_1016BCDB0, &qword_1016BCD88, &qword_1013EADC8);
  v30 = v49;
  v31 = v50;
  v32 = v61;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v27, &unk_1016B0FE0, &unk_101391980);

  (*(v48 + 8))(v32, v31);
  sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
  sub_1000041A4(&qword_1016BCDB8, &qword_1016BCD90, &qword_1013EADD0);
  v33 = v53;
  v34 = v52;
  Publisher.map<A>(_:)();
  (*(v51 + 8))(v30, v34);
  sub_1000BC4D4(&qword_1016BCDC0, &qword_1013EADE8);
  sub_1000041A4(&qword_1016BCDC8, &qword_1016BCD98, &qword_1013EADD8);
  sub_1000041A4(&qword_1016BCDD0, &qword_1016BCDC0, &qword_1013EADE8);
  v35 = v56;
  v36 = v55;
  Publisher.catch<A>(_:)();
  (*(v54 + 8))(v33, v36);
  v37 = swift_allocObject();
  v38 = v60;
  swift_weakInit();
  v39 = swift_allocObject();
  v40 = v59;
  v39[2] = v37;
  v39[3] = v40;
  v39[4] = v62;
  sub_1000041A4(&qword_1016BCDD8, &qword_1016BCDA0, &qword_1013EADE0);

  v41 = v58;
  v42 = Publisher<>.sink(receiveValue:)();

  (*(v57 + 8))(v35, v41);
  v43 = *(v38 + 104);
  *(v38 + 104) = v42;

  return sub_100007BAC(v67);
}

uint64_t sub_100E2DC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    Transaction.capture()();
    sub_1000D2A70(a1, &v28, &qword_1016BCD38, &qword_1013EAD40);
    if (v30)
    {
      v26 = v28;
      v27[0] = *v29;
      *(v27 + 9) = *&v29[9];
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177C418);
      sub_100101AA8(&v26, v25);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 136315138;
        v13 = sub_1013181BC();
        v15 = v14;
        sub_100101B04(v25);
        v16 = sub_1000136BC(v13, v15, &v24);

        *(v11 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to request pairing eligibility data. Error %s", v11, 0xCu);
        sub_100007BAC(v12);
      }

      else
      {

        sub_100101B04(v25);
      }

      sub_100E31E64(a4, 1);
      sub_100101B58();
      v22 = swift_allocError();
      sub_100101AA8(&v26, v23);
      sub_100E5FD24(v22);

      sub_100101B04(&v26);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10177C418);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Requested pairing eligibility data. Waiting for AirPods to respond.", v20, 2u);
      }

      v21 = *(v7 + 104);
      *(v7 + 104) = 0;

      return sub_10000B3A8(&v28, &qword_1016BCD38, &qword_1013EAD40);
    }
  }

  return result;
}

uint64_t sub_100E2DF88(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v2[2];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = type metadata accessor for Transaction();
    __chkstk_darwin(v14);
    *&v15[-32] = v2;
    *&v15[-24] = a1;
    v15[-16] = a2 & 1;
    *&v15[-8] = v5;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E2E14C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v101 = a2;
  v88 = a4;
  v97 = a1;
  v5 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v99 = v70 - v7;
  v8 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  __chkstk_darwin(v8);
  v82 = v70 - v10;
  v11 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  __chkstk_darwin(v11);
  v85 = v70 - v13;
  v14 = sub_1000BC4D4(&qword_1016BCDE0, &qword_1013EADF0);
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = *(v91 + 64);
  __chkstk_darwin(v14);
  v90 = v70 - v16;
  v17 = sub_1000BC4D4(&qword_1016BCDE8, &qword_1013EADF8);
  v93 = *(v17 - 8);
  v94 = v17;
  v18 = *(v93 + 64);
  __chkstk_darwin(v17);
  v89 = v70 - v19;
  v20 = sub_1000BC4D4(&qword_1016BCDF0, &qword_1013EAE00);
  v95 = *(v20 - 8);
  v21 = *(v95 + 64);
  __chkstk_darwin(v20);
  v23 = v70 - v22;
  v24 = sub_1000BC4D4(&qword_1016BCDF8, &qword_1013EAE08);
  v96 = *(v24 - 8);
  v25 = *(v96 + 64);
  __chkstk_darwin(v24);
  v27 = v70 - v26;
  v28 = sub_1000BC4D4(&qword_1016BCE00, &unk_1013EAE10);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v70 - v31;
  v33 = *(a3 + 16);
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v98 = a3;
  v34 = v100;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v34)
  {

    v35 = 0;
    v36 = v101;
  }

  else
  {
    v76 = v23;
    v77 = v20;
    v78 = v27;
    v75 = v24;
    v79 = 0;
    v80 = v32;
    v81 = v29;
    v100 = v28;
    v37 = v101;
    v102 = *(v101 + 16);
    v38 = v102;
    v39 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v40 = *(v39 - 8);
    v41 = *(v40 + 56);
    v42 = v99;
    v73 = v39;
    v71 = v41;
    v70[2] = v40 + 56;
    (v41)(v99, 1, 1);
    v43 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0);
    v44 = sub_1004682F0();
    v72 = v38;
    v45 = v82;
    v74 = v43;
    v70[1] = v44;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v42, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0);
    v70[0] = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0);
    v46 = v84;
    v47 = v85;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v83 + 8))(v45, v46);
    v48 = swift_allocObject();
    *(v48 + 16) = v37;
    v88 &= 1u;
    *(v48 + 24) = v88;

    sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0);
    v49 = v90;
    v50 = v87;
    Publisher.map<A>(_:)();

    (*(v86 + 8))(v47, v50);
    v51 = swift_allocObject();
    v52 = v98;
    *(v51 + 16) = v37;
    *(v51 + 24) = v52;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016BCD68, &qword_1013EAD98);
    sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
    sub_1000041A4(&qword_1016BCE08, &qword_1016BCDE0, &qword_1013EADF0);
    sub_1000041A4(&qword_1016BCDA8, &qword_1016BCD40, &unk_1013EAD48);
    v53 = v89;
    v54 = v92;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v91 + 8))(v49, v54);
    if (qword_101694EE8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v55, qword_1016BC8B8);
    v56 = v72;
    v103 = v72;
    v57 = v99;
    v71(v99, 1, 1, v73);
    sub_1000041A4(&qword_1016BCE10, &qword_1016BCDE8, &qword_1013EADF8);
    v58 = v76;
    v59 = v94;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v57, &unk_1016B0FE0, &unk_101391980);

    (*(v93 + 8))(v53, v59);
    sub_1000041A4(&qword_1016BCE18, &qword_1016BCDF0, &qword_1013EAE00);
    v60 = v78;
    v61 = v77;
    Publisher.map<A>(_:)();
    (*(v95 + 8))(v58, v61);
    sub_1000BC4D4(&qword_1016BCDC0, &qword_1013EADE8);
    sub_1000041A4(&qword_1016BCE20, &qword_1016BCDF8, &qword_1013EAE08);
    sub_1000041A4(&qword_1016BCDD0, &qword_1016BCDC0, &qword_1013EADE8);
    v62 = v80;
    v63 = v75;
    Publisher.catch<A>(_:)();
    (*(v96 + 8))(v60, v63);
    v64 = swift_allocObject();
    v36 = v101;
    swift_weakInit();
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    v66 = v98;
    *(v65 + 24) = v97;
    *(v65 + 32) = v66;
    *(v65 + 40) = v88;
    sub_1000041A4(&qword_1016BCE28, &qword_1016BCE00, &unk_1013EAE10);

    v67 = v100;
    v35 = Publisher<>.sink(receiveValue:)();

    (*(v81 + 8))(v62, v67);
  }

  v68 = *(v36 + 96);
  *(v36 + 96) = v35;
}

uint64_t sub_100E2EE18(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_100E2EEA4(a1, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_100E2EEA4(void (*a1)(char *, uint64_t), uint64_t a2, int a3)
{
  v231 = a3;
  v237 = a2;
  v244 = a1;
  v219 = *v3;
  v4 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v229 = *(v4 - 8);
  v5 = *(v229 + 64);
  v6 = __chkstk_darwin(v4);
  v234 = &v210 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v233 = &v210 - v8;
  v9 = sub_1000BC4D4(&qword_101696E28, &qword_1013EAD80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v226 = &v210 - v11;
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v210 - v14;
  v16 = sub_1000BC4D4(&qword_1016BCD20, &qword_1013EAC90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v223 = &v210 - v18;
  v19 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v230 = &v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v228 = &v210 - v24;
  __chkstk_darwin(v23);
  v232 = &v210 - v25;
  v240 = type metadata accessor for OwnedBeaconGroup(0);
  v236 = *(v240 - 8);
  v26 = *(v236 + 64);
  v27 = __chkstk_darwin(v240);
  v224 = (&v210 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v220 = &v210 - v30;
  v31 = __chkstk_darwin(v29);
  v222 = &v210 - v32;
  __chkstk_darwin(v31);
  v235 = &v210 - v33;
  v243 = type metadata accessor for MACAddress();
  v34 = *(v243 - 8);
  v35 = v34[8];
  v36 = __chkstk_darwin(v243);
  v38 = &v210 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36);
  v213 = &v210 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v210 - v42;
  __chkstk_darwin(v41);
  v239 = &v210 - v44;
  v45 = type metadata accessor for DispatchPredicate();
  v46 = *(v45 - 8);
  v47 = v46[8];
  __chkstk_darwin(v45);
  v49 = &v210 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = v3;
  v50 = v3[2];
  *v49 = v50;
  v51 = v46[13];
  LODWORD(v242) = enum case for DispatchPredicate.onQueue(_:);
  v241 = v46 + 13;
  v216 = v51;
  v51(v49);
  v215 = v50;
  v52 = _dispatchPreconditionTest(_:)();
  v53 = v46[1];
  v218 = v45;
  v217 = v46 + 1;
  v53(v49, v45);
  if ((v52 & 1) == 0)
  {
    goto LABEL_107;
  }

  v212 = v43;
  if (qword_1016950D0 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v54 = type metadata accessor for Logger();
    v55 = sub_1000076D4(v54, qword_10177C418);
    sub_1000D2A70(v244, &v252, &qword_1016BCD38, &qword_1013EAD40);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v34;
    v227 = v4;
    v225 = v15;
    v211 = v38;
    v214 = v53;
    if (v58)
    {
      v60 = swift_slowAlloc();
      v221 = v55;
      v61 = v60;
      v62 = swift_slowAlloc();
      v238 = v34;
      v63 = v62;
      v250[0] = v62;
      *v61 = 136315138;
      sub_1000D2A70(&v252, &v246, &qword_1016BCD38, &qword_1013EAD40);
      sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
      v64 = String.init<A>(describing:)();
      v66 = v65;
      sub_10000B3A8(&v252, &qword_1016BCD38, &qword_1013EAD40);
      v67 = sub_1000136BC(v64, v66, v250);

      *(v61 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v56, v57, "handlePublisherUpdate %s", v61, 0xCu);
      sub_100007BAC(v63);
      v59 = v238;

      v55 = v221;
    }

    else
    {

      sub_10000B3A8(&v252, &qword_1016BCD38, &qword_1013EAD40);
    }

    v34 = v241;
    sub_1000D2A70(v244, &v252, &qword_1016BCD38, &qword_1013EAD40);
    v68 = v242;
    if ((v254 & 1) == 0)
    {
      sub_10000A748(&v252, &v246);
      v79 = *&v247[8];
      v80 = *&v247[16];
      sub_1000035D0(&v246, *&v247[8]);
      v81 = (*(v80 + 320))(v79, v80);
      if (v81 > 5)
      {
        if (v81 == 8)
        {
          v105 = v59;
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            *v108 = 0;
            _os_log_impl(&_mh_execute_header, v106, v107, "Sent pairing complete.", v108, 2u);
          }

          v109 = v245;
          sub_100E5F74C(v231 & 1);
          sub_100E4A560();
          v110 = v109[10];
          v111 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState;
          v112 = *(v110 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState);
          v113 = *(v110 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
          v114 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs;
          swift_beginAccess();
          if (*(*(v113 + v114) + 16))
          {
            v115 = Logger.logObject.getter();
            v116 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v115, v116))
            {
              v117 = swift_slowAlloc();
              *v117 = 0;
              _os_log_impl(&_mh_execute_header, v115, v116, "Force Re-Pairing next serial number.", v117, 2u);
            }

            v118 = v215;
            *v49 = v215;
            v119 = v68;
            v120 = v218;
            v121 = v216;
            v216(v49, v119, v218);
            v244 = v118;
            LOBYTE(v118) = _dispatchPreconditionTest(_:)();
            v122 = v214;
            result = (v214)(v49, v120);
            v124 = v219;
            if (v118)
            {
              v125 = type metadata accessor for Transaction();
              __chkstk_darwin(v125);
              v126 = v237;
              *(&v210 - 4) = v245;
              *(&v210 - 3) = v126;
              *(&v210 - 16) = v231 & 1;
              *(&v210 - 1) = v124;
              static Transaction.named<A>(_:with:)();
              *v49 = v244;
              v121(v49, v242, v120);
              v127 = _dispatchPreconditionTest(_:)();
              result = v122(v49, v120);
              if (v127)
              {
                __chkstk_darwin(result);
                v128 = v237;
                *(&v210 - 4) = v245;
                *(&v210 - 3) = v128;
                *(&v210 - 2) = v124;
                static Transaction.named<A>(_:with:)();
                return sub_100007BAC(&v246);
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return result;
          }

          if (v112 == 10)
          {
            v204 = Logger.logObject.getter();
            v205 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v204, v205))
            {
              v206 = swift_slowAlloc();
              *v206 = 0;
              _os_log_impl(&_mh_execute_header, v204, v205, "Pairing has been completed for all serial numbers over classic. Need LE pairing", v206, 2u);
            }

            v207 = v245;
            sub_100E31E64(v237, 0);
            v208 = v207[8];
            v209 = v239;
            sub_100A22DF0(v239);
            sub_100E5CA7C(v209, 0, 0, 0xF000000000000000);
            (v105[1])(v209, v243);
            return sub_100007BAC(&v246);
          }

          if (v112 != 9)
          {
            *(v110 + v111) = 6;
            sub_100E30D34(v237);
            return sub_100007BAC(&v246);
          }

          v95 = Logger.logObject.getter();
          v186 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v95, v186))
          {
            v187 = swift_slowAlloc();
            *v187 = 0;
            _os_log_impl(&_mh_execute_header, v95, v186, "Pairing has been completed for all serial numbers.", v187, 2u);
            goto LABEL_29;
          }

LABEL_30:

          sub_100E31E64(v237, 1);
          return sub_100007BAC(&v246);
        }

        if (v81 == 6)
        {
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            _os_log_impl(&_mh_execute_header, v87, v88, "Sent finalize pairing.", v89, 2u);
          }

          *(v245[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 4;
          return sub_100007BAC(&v246);
        }
      }

      else
      {
        if (!v81)
        {
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&_mh_execute_header, v102, v103, "Requested beacon group data.", v104, 2u);
          }

          *(v245[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 1;
          return sub_100007BAC(&v246);
        }

        if (v81 == 2)
        {
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&_mh_execute_header, v82, v83, "Sent initiate pairing.", v84, 2u);
          }

          *(v245[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 0;
          return sub_100007BAC(&v246);
        }
      }

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v250[0] = v98;
        *v97 = 136315138;
        v99 = sub_10110A934(*(v245[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
        v101 = sub_1000136BC(v99, v100, v250);

        *(v97 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v95, v96, "Invalid pairing state %s!", v97, 0xCu);
        sub_100007BAC(v98);

LABEL_29:

        goto LABEL_30;
      }

      goto LABEL_30;
    }

    v246 = v252;
    *v247 = *v253;
    *&v247[9] = *&v253[9];
    sub_100101AA8(&v246, v250);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      *v71 = 136446466;
      v72 = sub_1013181BC();
      v74 = v73;
      sub_100101B04(v250);
      v75 = sub_1000136BC(v72, v74, &v249);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2082;
      v76 = sub_10110A934(*(v245[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
      v78 = sub_1000136BC(v76, v77, &v249);

      *(v71 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v69, v70, "Pairing error %{public}s. Pairing state: %{public}s", v71, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100101B04(v250);
    }

    v85 = v235;
    v86 = sub_100B251CC(&off_10160D1C8);
    sub_100101AA8(&v246, v250);
    if (v251)
    {

      sub_100101B04(v250);
    }

    else
    {
      v249 = v250[0];
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      if (swift_dynamicCast())
      {
        v90 = sub_101120940(v248, v86);

        if (v90)
        {
          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            *v93 = 0;
            v94 = "Need LE pairing. Not sending pairing completion.";
            goto LABEL_74;
          }

LABEL_75:

          goto LABEL_91;
        }
      }

      else
      {
      }
    }

    v129 = v245[4];
    v130 = v245[8];
    v131 = v239;
    sub_100A22DF0(v239);
    v132 = v232;
    sub_100AC5D4C(v131, v232);
    v133 = v132;
    v134 = v59 + 1;
    v244 = v59[1];
    v244(v131, v243);
    v135 = *(v236 + 48);
    if (v135(v133, 1, v240) == 1)
    {
      v238 = v59;
      sub_10000B3A8(v133, &unk_1016AF8B0, &unk_1013A0700);
    }

    else
    {
      sub_100E6ADA4(v133, v85, type metadata accessor for OwnedBeaconGroup);
      if (sub_10051FA1C())
      {
        v136 = v222;
        sub_100E6A94C(v85, v222, type metadata accessor for OwnedBeaconGroup);
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v221 = v55;
          v238 = v59;
          v140 = v139;
          v141 = swift_slowAlloc();
          v250[0] = v141;
          *v140 = 136446210;
          v142 = *(v240 + 24);
          type metadata accessor for UUID();
          v143 = v136;
          sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
          v144 = dispatch thunk of CustomStringConvertible.description.getter();
          v146 = v145;
          sub_100E6A9B4(v143, type metadata accessor for OwnedBeaconGroup);
          v147 = sub_1000136BC(v144, v146, v250);

          *(v140 + 4) = v147;
          _os_log_impl(&_mh_execute_header, v137, v138, "Buds pairing failed but we have beacon group %{public}s to start LE pairing. Not sending pairing completion.", v140, 0xCu);
          sub_100007BAC(v141);

          v59 = v238;
          v55 = v221;
        }

        else
        {

          sub_100E6A9B4(v136, type metadata accessor for OwnedBeaconGroup);
        }

        v171 = v223;
        sub_1005160CC(v55);
        v172 = sub_100520038();
        sub_10112CB48(v172, v171);

        v173 = sub_1000BC4D4(&qword_1016BCD28, &qword_1013EAC98);
        if ((*(*(v173 - 8) + 48))(v171, 1, v173) == 1)
        {
          sub_10000B3A8(v171, &qword_1016BCD20, &qword_1013EAC90);
          v174 = Logger.logObject.getter();
          v175 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&_mh_execute_header, v174, v175, "Missing MAC address to start LE pairing", v176, 2u);
          }
        }

        else
        {
          sub_100016590(*v171, *(v171 + 8));
          v177 = *(v173 + 48);
          v178 = v59[4];
          v179 = v171 + v177;
          v180 = v213;
          v181 = v243;
          v178(v213, v179, v243);
          v182 = v212;
          v178(v212, v180, v181);
          sub_100E533EC(v182, 0, v231 & 1);
          v244(v182, v181);
        }

        sub_100E6A9B4(v85, type metadata accessor for OwnedBeaconGroup);
        goto LABEL_91;
      }

      v238 = v59;
      sub_100E6A9B4(v85, type metadata accessor for OwnedBeaconGroup);
    }

    v148 = v245[10];
    if (*(v148 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) < 2u)
    {
      goto LABEL_51;
    }

    v152 = v239;
    sub_100A22DF0(v239);
    v153 = v228;
    sub_100AC5D4C(v152, v228);
    v242 = v134;
    v244(v152, v243);
    if (v135(v153, 1, v240) == 1)
    {
      sub_10000B3A8(v153, &unk_1016AF8B0, &unk_1013A0700);
      v154 = v229;
    }

    else
    {
      v155 = v220;
      sub_100E6ADA4(v153, v220, type metadata accessor for OwnedBeaconGroup);
      v156 = sub_10051FA1C();
      v154 = v229;
      if ((v156 & 1) == 0)
      {
        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          *v185 = 0;
          _os_log_impl(&_mh_execute_header, v183, v184, "Buds pairing failed. LE pairing not needed. Sending pairing completion.", v185, 2u);
        }

        sub_100E6A9B4(v155, type metadata accessor for OwnedBeaconGroup);
LABEL_51:
        sub_100101B58();
        v149 = swift_allocError();
        sub_100101AA8(&v246, v150);
        sub_100E5FD24(v149);

        v151 = 1;
        v59 = v238;
        goto LABEL_92;
      }

      sub_100E6A9B4(v155, type metadata accessor for OwnedBeaconGroup);
    }

    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.default.getter();
    v159 = os_log_type_enabled(v157, v158);
    v38 = v227;
    if (v159)
    {
      v160 = swift_slowAlloc();
      *v160 = 0;
      _os_log_impl(&_mh_execute_header, v157, v158, "Buds pairing failed but we have beacon group data to start LE pairing. Not sending pairing completion.", v160, 2u);
    }

    v15 = *(*(v148 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v53 = (v15 + 64);
    v161 = 1 << v15[32];
    v162 = -1;
    if (v161 < 64)
    {
      v162 = ~(-1 << v161);
    }

    v163 = v162 & *(v15 + 8);
    v4 = (v161 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v164 = 0;
    if (v163)
    {
      break;
    }

LABEL_62:
    while (1)
    {
      v49 = v164 + 1;
      if (__OFADD__(v164, 1))
      {
        break;
      }

      if (v49 >= v4)
      {

        v168 = v226;
        (*(v154 + 56))(v226, 1, 1, v38);
        goto LABEL_69;
      }

      v163 = *(v53 + v49);
      v164 = (v164 + 1);
      if (v163)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

  while (1)
  {
    v49 = v164;
LABEL_65:
    v165 = v233;
    sub_100E6A94C(*(v15 + 7) + *(v154 + 72) * (__clz(__rbit64(v163)) | (v49 << 6)), v233, type metadata accessor for MultipartAccessoryPairingInfo);
    v166 = v165;
    v167 = v234;
    sub_100E6ADA4(v166, v234, type metadata accessor for MultipartAccessoryPairingInfo);
    if (*(v167 + *(v38 + 7)) == 2)
    {
      break;
    }

    v163 &= v163 - 1;
    sub_100E6A9B4(v167, type metadata accessor for MultipartAccessoryPairingInfo);
    v164 = v49;
    if (!v163)
    {
      goto LABEL_62;
    }
  }

  v168 = v226;
  sub_100E6ADA4(v167, v226, type metadata accessor for MultipartAccessoryPairingInfo);
  (*(v154 + 56))(v168, 0, 1, v38);
LABEL_69:

  v169 = (*(v154 + 48))(v168, 1, v38);
  v59 = v238;
  if (v169 == 1)
  {
    sub_10000B3A8(v168, &qword_101696E28, &qword_1013EAD80);
    v170 = v225;
    (v59[7])(v225, 1, 1, v243);
    goto LABEL_72;
  }

  v170 = v225;
  sub_1000D2A70(v168 + *(v38 + 6), v225, &qword_1016A40D0, &unk_10138BE70);
  sub_100E6A9B4(v168, type metadata accessor for MultipartAccessoryPairingInfo);
  if ((v59[6])(v170, 1, v243) == 1)
  {
LABEL_72:
    sub_10000B3A8(v170, &qword_1016A40D0, &unk_10138BE70);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = "Missing MAC address to start LE pairing";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v91, v92, v94, v93, 2u);
    }

    goto LABEL_75;
  }

  v188 = v211;
  v189 = v170;
  v190 = v243;
  (v59[4])(v211, v189, v243);
  sub_100E533EC(v188, 0, v231 & 1);
  v244(v188, v190);
LABEL_91:
  v151 = 0;
LABEL_92:
  v191 = v245;
  sub_100E31E64(v237, v151);
  v192 = v191[10];
  if (*(v192 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) >= 4u)
  {
    v193 = v245[4];
    v194 = v245[8];
    v195 = v239;
    sub_100A22DF0(v239);
    v196 = v230;
    sub_100AC5D4C(v195, v230);
    (v59[1])(v195, v243);
    if ((*(v236 + 48))(v196, 1, v240) == 1)
    {
      sub_100101B04(&v246);
      return sub_10000B3A8(v196, &unk_1016AF8B0, &unk_1013A0700);
    }

    v197 = v224;
    sub_100E6ADA4(v196, v224, type metadata accessor for OwnedBeaconGroup);
    v198 = (*(v192 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v199 = v198[1];
    if (v199 >> 60 != 15)
    {
      v250[0] = *v198;
      v200 = v250[0];
      v250[1] = v199;
      sub_100017D5C(v250[0], v199);
      sub_1000E0A3C();
      if ((DataProtocol.isNull.getter() & 1) == 0)
      {
        v201 = Data.trimmed.getter();
        v203 = v202;
        sub_100E4EA98(v201, v202, v197);
        sub_100016590(v201, v203);
      }

      sub_100006654(v200, v199);
    }

    sub_100E6A9B4(v197, type metadata accessor for OwnedBeaconGroup);
  }

  return sub_100101B04(&v246);
}

uint64_t sub_100E30D34(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v44 = *v1;
  v45 = type metadata accessor for MACAddress();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v45);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v43 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v2[2];
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    if (qword_1016950D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "continuePairing...", v25, 2u);
  }

  *(v2[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 7;
  v26 = v2[4];
  v27 = v2[8];
  sub_100A22DF0(v6);
  sub_100AC5D4C(v6, v10);
  (*(v3 + 8))(v6, v45);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &unk_1016AF8B0, &unk_1013A0700);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Missing beacon group to continue pairing!", v30, 2u);
    }

    return sub_100E31E64(v46, 1);
  }

  else
  {
    v32 = v43;
    sub_100E6ADA4(v10, v43, type metadata accessor for OwnedBeaconGroup);
    swift_beginAccess();
    sub_10001F280((v2 + 22), v47);
    v33 = v48;
    v34 = v49;
    sub_1000035D0(v47, v48);
    v35 = sub_1005208F4();
    v37 = sub_1010A2138(v35, v36);
    v39 = v38;
    v40 = *(v34 + 64);
    v50[3] = swift_getAssociatedTypeWitness();
    v50[4] = swift_getAssociatedConformanceWitness();
    sub_1000280DC(v50);
    v40(v37, v39, v33, v34);
    sub_100016590(v37, v39);
    sub_100007BAC(v47);
    v41 = type metadata accessor for Transaction();
    __chkstk_darwin(v41);
    *(&v43 - 4) = v2;
    *(&v43 - 3) = v50;
    v42 = v44;
    *(&v43 - 2) = v46;
    *(&v43 - 1) = v42;
    static Transaction.named<A>(_:with:)();
    sub_100E6A9B4(v32, type metadata accessor for OwnedBeaconGroup);
    return sub_100007BAC(v50);
  }
}

uint64_t sub_100E31328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - v10;
  v44 = sub_1000BC4D4(&qword_1016BCD88, &qword_1013EADC8);
  v42 = *(v44 - 8);
  v12 = *(v42 + 64);
  __chkstk_darwin(v44);
  v57 = &v40 - v13;
  v14 = sub_1000BC4D4(&qword_1016BCD90, &qword_1013EADD0);
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  __chkstk_darwin(v14);
  v43 = &v40 - v16;
  v17 = sub_1000BC4D4(&qword_1016BCD98, &qword_1013EADD8);
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  __chkstk_darwin(v17);
  v47 = &v40 - v19;
  v20 = sub_1000BC4D4(&qword_1016BCDA0, &qword_1013EADE0);
  v52 = *(v20 - 8);
  v53 = v20;
  v21 = *(v52 + 64);
  __chkstk_darwin(v20);
  v50 = &v40 - v22;
  v56 = a1;
  v51 = Transaction.subscriptionCleaner.getter();
  sub_10001F280(a3, v58);
  v59 = 0;
  v55 = a4;
  v23 = sub_100E3465C(v58, a4);
  sub_10000B3A8(v58, &qword_1016BCD38, &qword_1013EAD40);
  v58[0] = v23;
  v54 = a2;
  v60 = *(a2 + 16);
  v24 = v60;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v40 = *(*(v25 - 8) + 56);
  v40(v11, 1, 1, v25);
  v41 = v24;
  sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016BCDA8, &qword_1016BCD40, &unk_1013EAD48);
  sub_1004682F0();
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  if (qword_101694EF0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v26, qword_1016BC8D0);
  v27 = v41;
  v58[0] = v41;
  v40(v11, 1, 1, v25);
  sub_1000041A4(&qword_1016BCDB0, &qword_1016BCD88, &qword_1013EADC8);
  v28 = v43;
  v29 = v44;
  v30 = v57;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  (*(v42 + 8))(v30, v29);
  sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
  sub_1000041A4(&qword_1016BCDB8, &qword_1016BCD90, &qword_1013EADD0);
  v31 = v46;
  v32 = v47;
  Publisher.map<A>(_:)();
  (*(v45 + 8))(v28, v31);
  sub_1000BC4D4(&qword_1016BCDC0, &qword_1013EADE8);
  sub_1000041A4(&qword_1016BCDC8, &qword_1016BCD98, &qword_1013EADD8);
  sub_1000041A4(&qword_1016BCDD0, &qword_1016BCDC0, &qword_1013EADE8);
  v33 = v49;
  v34 = v50;
  Publisher.catch<A>(_:)();
  (*(v48 + 8))(v32, v33);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v36[2] = v35;
  v37 = v55;
  v36[3] = v56;
  v36[4] = v37;
  v36[5] = v51;
  sub_1000041A4(&qword_1016BCDD8, &qword_1016BCDA0, &qword_1013EADE0);

  swift_unknownObjectRetain();
  v38 = v53;
  Publisher<>.sink(receiveValue:)();

  (*(v52 + 8))(v34, v38);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100E31AE8(uint64_t a1)
{
  sub_100101AA8(a1, v2);
  v2[41] = 1;
  sub_1000BC4D4(&qword_1016BCD38, &qword_1013EAD40);
  return Just.init(_:)();
}

uint64_t sub_100E31B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_1000D2A70(a1, &v26, &qword_1016BCD38, &qword_1013EAD40);
    if (v28)
    {
      v24 = v26;
      v25[0] = *v27;
      *(v25 + 9) = *&v27[9];
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000076D4(v7, qword_10177C418);
      sub_100101AA8(&v24, v23);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v22 = v11;
        *v10 = 136315138;
        v12 = sub_1013181BC();
        v14 = v13;
        sub_100101B04(v23);
        v15 = sub_1000136BC(v12, v14, &v22);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed to request pairing eligibility data on pairing continue. Error %s", v10, 0xCu);
        sub_100007BAC(v11);
      }

      else
      {

        sub_100101B04(v23);
      }

      sub_100E31E64(a4, 1);
      sub_100101B58();
      v20 = swift_allocError();
      sub_100101AA8(&v24, v21);
      sub_100E5FD24(v20);

      sub_100101B04(&v24);
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177C418);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Requested pairing eligibility data on pairing continue. Waiting for AirPods to respond.", v19, 2u);
      }

      return sub_10000B3A8(&v26, &qword_1016BCD38, &qword_1013EAD40);
    }
  }

  return result;
}

uint64_t sub_100E31E64(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[2];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_1016950D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C418);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Clean up.", v16, 2u);
  }

  v17 = v3[12];
  v3[12] = 0;

  v18 = v3[13];
  v3[13] = 0;

  if (a1)
  {
    v20 = *(a1 + 16);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v30 = 13;
    v31 = 0u;
    v32 = 0u;
    v33 = 11;
    sub_100A5A2B8(&v30);
    v19 = sub_100101B04(&v30);
  }

  v21 = v3[3];
  __chkstk_darwin(v19);
  *(&v29 - 2) = v3;
  *(&v29 - 8) = 0;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v22 = v3[18];
  v23 = v3[19];
  *(v3 + 9) = xmmword_10138BBF0;
  result = sub_100006654(v22, v23);
  if (a2)
  {
    v25 = v3[15];
    v30 = v3[8];
    v26 = v30;
    LOBYTE(v31) = 0;

    v27 = v26;
    PassthroughSubject.send(_:)();

    v28 = v3[15];
    LOBYTE(v30) = 1;

    PassthroughSubject.send(completion:)();
  }

  return result;
}

uint64_t sub_100E3217C()
{
  v3 = *(*(v1 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v4 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs;
  swift_beginAccess();
  if (!*(*(v3 + v4) + 16))
  {
    return 0;
  }

  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = 1;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!v5[2])
  {
    __break(1u);
    goto LABEL_10;
  }

  v0 = v5[4];
  v2 = v5[5];

  sub_100017D5C(v0, v2);
  sub_100A077EC(0, 1);
  swift_endAccess();

  if (qword_1016950D0 != -1)
  {
LABEL_10:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C418);
  sub_100017D5C(v0, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_100016590(v0, v2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v9 = 136446723;
    *(v9 + 4) = sub_1000136BC(0xD000000000000011, 0x80000001013720D0, v14);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v10 = Data.hexString.getter();
    v12 = sub_1000136BC(v10, v11, v14);

    *(v9 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s %{private,mask.hash}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  return v0;
}

void sub_100E323F4(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v299) = a2;
  v312 = a3;
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v294 = (&v286 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MACAddress();
  v303 = *(v8 - 8);
  v304 = v8;
  v9 = *(v303 + 64);
  __chkstk_darwin(v8);
  v301 = &v286 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v295 = &v286 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v302 = &v286 - v15;
  v16 = type metadata accessor for OwnedBeaconGroup(0);
  v305 = *(v16 - 8);
  v306 = v16;
  v17 = *(v305 + 64);
  v18 = __chkstk_darwin(v16);
  v309 = &v286 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  *(&v297 + 1) = &v286 - v21;
  __chkstk_darwin(v20);
  v307 = &v286 - v22;
  v23 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v298 = &v286 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v296 = &v286 - v28;
  __chkstk_darwin(v27);
  v30 = &v286 - v29;
  v31 = type metadata accessor for AccessoryProductInfo();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  *&v297 = &v286 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v286 - v36;
  v310 = a1;
  v311 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v38 = *(a1 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v39 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v38 + v39, v30, &qword_101697268, &qword_101394FE0);
  v40 = *(v32 + 48);
  v300 = v32 + 48;
  if (v40(v30, 1, v31) == 1)
  {
    sub_10000B3A8(v30, &qword_101697268, &qword_101394FE0);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177C418);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v312;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v325[0] = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_1000136BC(0xD000000000000030, 0x8000000101372090, v325);
      _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s Missing productInfo!", v46, 0xCu);
      sub_100007BAC(v47);
    }

    *v45 = 8;
    *(v45 + 8) = 0u;
    *(v45 + 24) = 0u;
LABEL_13:
    *(v45 + 40) = 267;
    return;
  }

  v293 = v3;
  sub_100E6ADA4(v30, v37, type metadata accessor for AccessoryProductInfo);
  v291 = v31;
  v48 = &v37[*(v31 + 96)];
  v49 = *v48;
  v50 = v48[1];

  v51 = sub_100F4F600(v49, v50);
  v53 = v52;

  v308 = v53;
  if (v53 >> 60 == 15)
  {
    v45 = v312;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C418);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Unable to generate E1 blob.", v57, 2u);
    }

    sub_100E6A9B4(v37, type metadata accessor for AccessoryProductInfo);
    *v45 = 0u;
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0;
    goto LABEL_13;
  }

  v289 = v40;
  v290 = v37;
  v58 = v312;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  v60 = sub_1000076D4(v59, qword_10177C418);
  v61 = v308;
  sub_100017D5C(v51, v308);
  v292 = v60;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  sub_100006654(v51, v61);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v325[0] = v65;
    *v64 = 136315138;
    v66 = v308;
    sub_100017D5C(v51, v308);
    v67 = Data.hexString.getter();
    v68 = v58;
    v70 = v69;
    sub_100006654(v51, v66);
    v71 = sub_1000136BC(v67, v70, v325);
    v58 = v68;

    *(v64 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v62, v63, "E1: %s", v64, 0xCu);
    sub_100007BAC(v65);
  }

  v73 = v309;
  v72 = v310;
  v74 = v311;
  v75 = (*(v310 + v311) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v76 = v75[1];
  if (v76 >> 60 == 15)
  {
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Missing FindMyNetworkId to generate init pairing.", v79, 2u);
    }

    sub_100006654(v51, v308);

    goto LABEL_67;
  }

  v80 = v51;
  v81 = *(v293 + 32);
  v82 = *(v293 + 64);
  v309 = *v75;
  sub_100017D5C(v309, v76);
  v83 = v301;
  sub_100A22DF0(v301);
  v84 = v302;
  sub_100AC5D4C(v83, v302);
  (*(v303 + 8))(v83, v304);
  if ((*(v305 + 48))(v84, 1, v306) == 1)
  {
    v287 = v80;
    sub_10000B3A8(v84, &unk_1016AF8B0, &unk_1013A0700);
    v85 = *(v72 + v74);
    v86 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    v87 = v298;
    sub_1000D2A70(v85 + v86, v298, &qword_101697268, &qword_101394FE0);
    v88 = v291;
    if (v289(v87, 1, v291))
    {
      sub_10000B3A8(v87, &qword_101697268, &qword_101394FE0);
    }

    else
    {
      v109 = v297;
      sub_100E6A94C(v87, v297, type metadata accessor for AccessoryProductInfo);
      sub_10000B3A8(v87, &qword_101697268, &qword_101394FE0);
      v110 = *(v109 + v88[12]);
      sub_100E6A9B4(v109, type metadata accessor for AccessoryProductInfo);
      if (v110 != 2 && (v110 & 1) != 0)
      {
        goto LABEL_36;
      }
    }

    v111 = v311;
    v112 = *(v72 + v311);
    v113 = *(v112 + 112);
    if (v113 >> 60 == 15)
    {
      v114 = 0;
      v115 = 0xF000000000000000;
LABEL_51:
      v141 = *(v72 + v111);
      v142 = v72;
      v143 = *(v141 + 16);
      v144 = *(v141 + 24);
      v145 = v287;
      v146 = v308;
      sub_10002E98C(v287, v308);
      v147 = v309;
      sub_10002E98C(v309, v76);
      sub_100017D5C(v143, v144);
      sub_10002E98C(v114, v115);
      v307 = v114;
      sub_10076B0E4(v143, v144, v145, v146, v147, v76, v114, v115, &v319);

      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.default.getter();

      v150 = os_log_type_enabled(v148, v149);
      v288 = v76;
      if (v150)
      {
        v151 = swift_slowAlloc();
        v306 = v115;
        v152 = v151;
        v153 = swift_slowAlloc();
        *&v325[0] = v153;
        *v152 = 136315138;
        v154 = *(v142 + v311);
        v155 = *(v154 + 16);
        v156 = *(v154 + 24);
        sub_100017D5C(v155, v156);
        v157 = Data.hexString.getter();
        v159 = v158;
        v160 = v156;
        v58 = v312;
        sub_100016590(v155, v160);
        v161 = sub_1000136BC(v157, v159, v325);

        *(v152 + 4) = v161;
        v76 = v288;
        _os_log_impl(&_mh_execute_header, v148, v149, "sessionNonce: %s", v152, 0xCu);
        sub_100007BAC(v153);

        v115 = v306;
      }

      else
      {

        v58 = v312;
      }

      v162 = v307;
      sub_10002E98C(v307, v115);
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.default.getter();
      sub_100006654(v162, v115);
      if (os_log_type_enabled(v163, v164))
      {
        v165 = v287;
        v166 = v115;
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        *&v325[0] = v168;
        *v167 = 136315138;
        if (v166 >> 60 == 15)
        {
          v169 = 0;
          v170 = 0xE000000000000000;
        }

        else
        {
          v169 = Data.hexString.getter();
          v170 = v178;
        }

        v179 = v162;
        v180 = sub_1000136BC(v169, v170, v325);

        *(v167 + 4) = v180;
        _os_log_impl(&_mh_execute_header, v163, v164, "companionSessionNonce: %s", v167, 0xCu);
        sub_100007BAC(v168);

        sub_100006654(v179, v166);
        sub_100006654(v165, v308);
        sub_100006654(v309, v288);

        v171 = v323;
        v172 = v324;
        v174 = v321;
        v173 = v322;
        v176 = v319;
        v175 = v320;
        v177 = v293;
        v58 = v312;
        goto LABEL_61;
      }

      sub_100006654(v287, v308);
      sub_100006654(v309, v76);

      sub_100006654(v162, v115);
      v171 = v323;
      v172 = v324;
      v174 = v321;
      v173 = v322;
      v176 = v319;
      v175 = v320;
LABEL_58:
      v177 = v293;
LABEL_61:
      v317[0] = v176;
      v317[1] = v175;
      v317[2] = v174;
      v317[3] = v173;
      *&v318 = v171;
      *(&v318 + 1) = v172;
      v325[0] = v176;
      v325[1] = v175;
      v325[2] = v174;
      v325[3] = v173;
      v325[4] = v318;
      swift_beginAccess();
      sub_10001F280(v177 + 176, v313);
      v181 = v314;
      v182 = v315;
      sub_1000035D0(v313, v314);
      v183 = *(v182 + 40);
      v316[3] = swift_getAssociatedTypeWitness();
      v316[4] = swift_getAssociatedConformanceWitness();
      sub_1000280DC(v316);
      v183(v325, v181, v182);
      sub_100A22318(v317);
      sub_100E6A9B4(v290, type metadata accessor for AccessoryProductInfo);
      sub_100007BAC(v313);
      sub_10001F280(v316, v58);
      *(v58 + 41) = 0;
      sub_100007BAC(v316);
      return;
    }

    v116 = *(v112 + 104);
    sub_100017D5C(v116, *(v112 + 112));
    v117 = sub_100DE68D0(v116, v113);
    sub_100006654(v116, v113);
    if (!v117)
    {
      v114 = 0;
      v115 = 0xF000000000000000;
      goto LABEL_50;
    }

LABEL_36:
    v118 = type metadata accessor for __DataStorage();
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    swift_allocObject();
    v115 = __DataStorage.init(length:)() | 0x4000000000000000;
    v114 = 0x6000000000;
LABEL_50:
    v111 = v311;
    goto LABEL_51;
  }

  v89 = v307;
  sub_100E6ADA4(v84, v307, type metadata accessor for OwnedBeaconGroup);
  if (v299)
  {
    v90 = *(&v297 + 1);
    sub_100E6A94C(v89, *(&v297 + 1), type metadata accessor for OwnedBeaconGroup);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    v93 = v76;
    v94 = v80;
    if (os_log_type_enabled(v91, v92))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v325[0] = v96;
      *v95 = 136315138;
      v97 = sub_10051F7B0();
      v288 = v93;
      v99 = v98;
      sub_100E6A9B4(v90, type metadata accessor for OwnedBeaconGroup);
      v100 = sub_1000136BC(v97, v99, v325);
      v94 = v80;
      v93 = v288;

      *(v95 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v91, v92, "Retry pairing for %s", v95, 0xCu);
      sub_100007BAC(v96);

      v72 = v310;
    }

    else
    {

      sub_100E6A9B4(v90, type metadata accessor for OwnedBeaconGroup);
    }

    v74 = v311;
  }

  else
  {
    sub_100E6A94C(v89, v73, type metadata accessor for OwnedBeaconGroup);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    v93 = v76;
    v94 = v80;
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v325[0] = v104;
      *v103 = 136315138;
      v105 = sub_10051F7B0();
      v288 = v93;
      v107 = v106;
      sub_100E6A9B4(v73, type metadata accessor for OwnedBeaconGroup);
      v108 = sub_1000136BC(v105, v107, v325);
      v94 = v80;
      v93 = v288;

      *(v103 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v101, v102, "Pairing already completed for %s. Will proceed with pairing as usual and let server decide if clean up is needed.", v103, 0xCu);
      sub_100007BAC(v104);

      v74 = v311;
    }

    else
    {

      sub_100E6A9B4(v73, type metadata accessor for OwnedBeaconGroup);
    }

    v72 = v310;
  }

  v58 = v312;
  v121 = (*(v72 + v74) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v122 = v121[1];
  if (v122 >> 60 == 15)
  {
LABEL_43:
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "Missing accessorySerialNumber to generate init pairing.", v127, 2u);

      v128 = v309;
      v129 = v93;
LABEL_45:
      sub_100006654(v128, v129);
      sub_100006654(v94, v308);
LABEL_66:
      sub_100E6A9B4(v307, type metadata accessor for OwnedBeaconGroup);
LABEL_67:
      sub_100E6A9B4(v290, type metadata accessor for AccessoryProductInfo);
      *v58 = 0u;
      *(v58 + 16) = 0u;
      *(v58 + 32) = 0;
      *(v58 + 40) = 267;
      return;
    }

    goto LABEL_65;
  }

  *&v325[0] = *v121;
  v123 = *&v325[0];
  *(&v325[0] + 1) = v122;
  sub_100017D5C(*&v325[0], v122);
  v124 = sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v123, v122);
    goto LABEL_43;
  }

  v303 = v122;
  v304 = v123;
  v130 = Data.trimmed.getter();
  v132 = v131;
  v302 = v130;
  v133 = sub_1005183F0(v130, v131);
  if ((v133 & 0x100) != 0)
  {
    v125 = Logger.logObject.getter();
    v184 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v125, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&_mh_execute_header, v125, v184, "Missing accessoryPartId!", v185, 2u);

      sub_100016590(v302, v132);

      sub_100006654(v309, v93);
      v129 = v303;
      v128 = v304;
      goto LABEL_45;
    }

    sub_100006654(v304, v303);
    sub_100016590(v302, v132);
LABEL_65:
    sub_100006654(v309, v93);
    sub_100006654(v94, v308);

    goto LABEL_66;
  }

  v301 = v124;
  v134 = v133;
  v135 = *(v72 + v74);
  v136 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  v137 = v135 + v136;
  v138 = v296;
  sub_1000D2A70(v137, v296, &qword_101697268, &qword_101394FE0);
  v139 = v291;
  v140 = v289(v138, 1, v291);
  v299 = v132;
  if (v140)
  {
    sub_10000B3A8(v138, &qword_101697268, &qword_101394FE0);
  }

  else
  {
    v186 = v297;
    sub_100E6A94C(v138, v297, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v138, &qword_101697268, &qword_101394FE0);
    v187 = *(v186 + v139[12]);
    sub_100E6A9B4(v186, type metadata accessor for AccessoryProductInfo);
    if (v187 != 2 && (v187 & 1) != 0)
    {
      goto LABEL_72;
    }
  }

  v188 = *(v310 + v311);
  v189 = *(v188 + 112);
  if (v189 >> 60 != 15)
  {
    v190 = *(v188 + 104);
    sub_100017D5C(v190, *(v188 + 112));
    v191 = sub_100DE68D0(v190, v189);
    sub_100006654(v190, v189);
    if (v191)
    {
LABEL_72:
      v192 = v295;
      sub_100E6A94C(v307, v295, type metadata accessor for OwnedBeaconGroup);
      (*(v305 + 56))(v192, 0, 1, v306);
      v171 = sub_10110D3E0(v192, v134);
      v194 = v193;
      sub_10000B3A8(v192, &unk_1016AF8B0, &unk_1013A0700);
      goto LABEL_74;
    }
  }

  v171 = 0;
  v194 = 0xF000000000000000;
LABEL_74:
  v195 = sub_100E3217C();
  v197 = v311;
  v288 = v93;
  v300 = v194;
  if (v196 >> 60 == 15)
  {
LABEL_80:
    v206 = sub_1005208F4();
    v208 = v207;
    goto LABEL_81;
  }

  v198 = v195;
  v199 = v196;
  *&v325[0] = v195;
  *(&v325[0] + 1) = v196;
  sub_100017D5C(v195, v196);
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v198, v199);
LABEL_79:
    sub_100006654(v198, v199);
    goto LABEL_80;
  }

  v296 = v171;
  v200 = Data.trimmed.getter();
  v201 = v199;
  v203 = v202;
  v306 = v198;
  v301 = v201;
  sub_100006654(v198, v201);
  sub_100017D5C(v200, v203);
  v204 = sub_10052197C(v200, v203);
  if (v205 >> 60 == 15)
  {
    sub_100016590(v200, v203);
    sub_100016590(v200, v203);
    v197 = v311;
    v171 = v296;
    v199 = v301;
    v198 = v306;
    goto LABEL_79;
  }

  v268 = v204;
  v269 = v205;
  v287 = v94;
  sub_100017D5C(v200, v203);
  sub_10002E98C(v268, v269);
  v270 = Logger.logObject.getter();
  v271 = static os_log_type_t.default.getter();
  sub_100016590(v200, v203);
  sub_100006654(v268, v269);
  if (os_log_type_enabled(v270, v271))
  {
    v272 = swift_slowAlloc();
    v305 = swift_slowAlloc();
    *&v325[0] = v305;
    *v272 = 141558531;
    *(v272 + 4) = 1752392040;
    *(v272 + 12) = 2081;
    sub_100017D5C(v200, v203);
    static String.Encoding.utf8.getter();
    v273 = String.init(data:encoding:)();
    if (!v274)
    {
      v273 = Data.hexString.getter();
    }

    v275 = v273;
    v276 = v274;
    sub_100016590(v200, v203);
    sub_100016590(v200, v203);
    v277 = sub_1000136BC(v275, v276, v325);

    *(v272 + 14) = v277;
    *(v272 + 22) = 2082;
    v278 = Data.hexString.getter();
    v280 = sub_1000136BC(v278, v279, v325);

    *(v272 + 24) = v280;
    _os_log_impl(&_mh_execute_header, v270, v271, "Force pairing %{private,mask.hash}s with\nexisting sessionNonce: %{public}s", v272, 0x20u);
    swift_arrayDestroy();

    sub_100016590(v200, v203);

    v58 = v312;
    v93 = v288;
    v194 = v300;
  }

  else
  {
    sub_100016590(v200, v203);

    sub_100016590(v200, v203);
  }

  v281 = v311;
  v282 = *(v310 + v311);
  v283 = *(v282 + 16);
  v284 = *(v282 + 24);
  *(v282 + 16) = v268;
  *(v282 + 24) = v269;

  v285 = v284;
  v197 = v281;
  sub_100016590(v283, v285);

  v94 = v287;
  v171 = v296;
  v208 = v301;
  v206 = v306;
LABEL_81:
  v209 = *(v310 + v197);
  v210 = *(v209 + 16);
  v211 = *(v209 + 24);
  v212 = v211 >> 62;
  v305 = v210;
  if ((v211 >> 62) > 1)
  {
    if (v212 != 2)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v215 = v210 + 16;
    v210 = *(v210 + 16);
    v214 = *(v215 + 8);
    v213 = v214 - v210;
    if (!__OFSUB__(v214, v210))
    {
      goto LABEL_90;
    }

    __break(1u);
  }

  else if (!v212)
  {
    v213 = BYTE6(v211);
    goto LABEL_91;
  }

  if (__OFSUB__(HIDWORD(v210), v210))
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v213 = HIDWORD(v210) - v210;
LABEL_90:
  sub_100017D5C(v305, v211);
LABEL_91:
  if (v213 != 32)
  {
    goto LABEL_158;
  }

  v216 = v308 >> 62;
  if ((v308 >> 62) <= 1)
  {
    if (!v216)
    {
      v217 = BYTE6(v308);
      goto LABEL_101;
    }

    goto LABEL_99;
  }

  if (v216 != 2)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v219 = *(v94 + 16);
  v218 = *(v94 + 24);
  v220 = __OFSUB__(v218, v219);
  v217 = v218 - v219;
  if (v220)
  {
    __break(1u);
LABEL_99:
    LODWORD(v217) = HIDWORD(v94) - v94;
    if (__OFSUB__(HIDWORD(v94), v94))
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v217 = v217;
  }

LABEL_101:
  if (v217 != 113)
  {
    goto LABEL_159;
  }

  v221 = v93 >> 62;
  if ((v93 >> 62) <= 1)
  {
    if (!v221)
    {
      v222 = BYTE6(v93);
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  if (v221 != 2)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v224 = *(v309 + 16);
  v223 = *(v309 + 24);
  v220 = __OFSUB__(v223, v224);
  v222 = v223 - v224;
  if (v220)
  {
    __break(1u);
LABEL_109:
    LODWORD(v222) = HIDWORD(v309) - v309;
    if (__OFSUB__(HIDWORD(v309), v309))
    {
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v222 = v222;
  }

LABEL_111:
  if (v222 != 32)
  {
    goto LABEL_160;
  }

  v295 = v194 >> 60;
  if (v194 >> 60 == 15)
  {
    goto LABEL_124;
  }

  v225 = v194 >> 62;
  if ((v194 >> 62) > 1)
  {
    if (v225 != 2)
    {
      goto LABEL_161;
    }

    v228 = *(v171 + 16);
    v227 = *(v171 + 24);
    v226 = v227 - v228;
    if (!__OFSUB__(v227, v228))
    {
      goto LABEL_122;
    }

    __break(1u);
  }

  else if (!v225)
  {
    v226 = BYTE6(v194);
    goto LABEL_123;
  }

  if (__OFSUB__(HIDWORD(v171), v171))
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v226 = HIDWORD(v171) - v171;
LABEL_122:
  sub_100017D5C(v171, v194);
LABEL_123:
  if (v226 == 96)
  {
LABEL_124:
    *&v325[0] = v206;
    *(&v325[0] + 1) = v208;
    v229 = v208 >> 62;
    if ((v208 >> 62) > 1)
    {
      if (v229 != 2)
      {
        v230 = 0;
        goto LABEL_135;
      }

      v232 = *(v206 + 16);
      v231 = *(v206 + 24);
      v230 = v231 - v232;
      if (!__OFSUB__(v231, v232))
      {
        goto LABEL_133;
      }

      __break(1u);
    }

    else if (!v229)
    {
      v230 = BYTE6(v208);
LABEL_135:
      v298 = v211;
      v220 = __OFSUB__(60, v230);
      v233 = 60 - v230;
      if (!v220)
      {
        sub_10002E98C(v94, v308);
        sub_10002E98C(v309, v93);
        sub_100017D5C(v206, v208);
        *&v317[0] = sub_100845C88(v233);
        *(&v317[0] + 1) = v234;
        sub_100776394(v317, 0);
        v235 = v317[0];
        Data.append(_:)();
        v306 = v206;
        v301 = v208;
        sub_100016590(v206, v208);
        sub_100016590(v235, *(&v235 + 1));
        v297 = v325[0];
        v236 = v310;

        v237 = Logger.logObject.getter();
        v238 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v237, v238))
        {
          v239 = swift_slowAlloc();
          v291 = v239;
          v294 = swift_slowAlloc();
          *&v325[0] = v294;
          *v239 = 136446210;
          v240 = *(v236 + v311);
          v241 = *(v240 + 16);
          v242 = *(v240 + 24);
          sub_100017D5C(v241, v242);
          v243 = Data.hexString.getter();
          v296 = v171;
          v244 = v243;
          v245 = v238;
          v247 = v246;
          v248 = v242;
          v58 = v312;
          sub_100016590(v241, v248);
          v172 = v300;
          v171 = v296;
          v249 = sub_1000136BC(v244, v247, v325);

          v250 = v291;
          *(v291 + 1) = v249;
          v93 = v288;
          _os_log_impl(&_mh_execute_header, v237, v245, "sessionNonce: %{public}s", v250, 0xCu);
          sub_100007BAC(v294);

          v251 = v304;
        }

        else
        {

          v251 = v304;
          v172 = v300;
        }

        sub_10002E98C(v171, v172);
        v252 = Logger.logObject.getter();
        v253 = static os_log_type_t.default.getter();
        sub_100006654(v171, v172);
        v254 = os_log_type_enabled(v252, v253);
        v255 = v306;
        if (v254)
        {
          v287 = v94;
          v256 = swift_slowAlloc();
          v257 = swift_slowAlloc();
          *&v325[0] = v257;
          *v256 = 136446210;
          if (v295 <= 0xE)
          {
            v258 = Data.hexString.getter();
            v259 = v262;
          }

          else
          {
            v258 = 0;
            v259 = 0xE000000000000000;
          }

          v263 = sub_1000136BC(v258, v259, v325);

          *(v256 + 4) = v263;
          _os_log_impl(&_mh_execute_header, v252, v253, "companionSessionNonce: %{public}s", v256, 0xCu);
          sub_100007BAC(v257);

          sub_100016590(v302, v299);

          v264 = v309;
          v265 = v288;
          sub_100006654(v309, v288);
          sub_100006654(v171, v172);
          sub_100016590(v306, v301);
          sub_100006654(v304, v303);
          v266 = v287;
          v267 = v308;
          sub_100006654(v287, v308);
          sub_100E6A9B4(v307, type metadata accessor for OwnedBeaconGroup);
          v173 = v297;
          *&v174 = v264;
          *(&v174 + 1) = v265;
          *&v175 = v266;
          *(&v175 + 1) = v267;
        }

        else
        {
          sub_100006654(v251, v303);
          sub_100016590(v255, v301);
          sub_100016590(v302, v299);
          v260 = v309;
          sub_100006654(v309, v93);
          v261 = v308;
          sub_100006654(v94, v308);
          sub_100006654(v171, v172);

          sub_100E6A9B4(v307, type metadata accessor for OwnedBeaconGroup);
          v173 = v297;
          *&v174 = v260;
          *(&v174 + 1) = v93;
          *&v175 = v94;
          *(&v175 + 1) = v261;
        }

        *&v176 = v305;
        *(&v176 + 1) = v298;
        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_153;
    }

    if (__OFSUB__(HIDWORD(v206), v206))
    {
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v230 = HIDWORD(v206) - v206;
LABEL_133:
    sub_100017D5C(v206, v208);
    goto LABEL_135;
  }

LABEL_161:
  __break(1u);
}

void sub_100E342B8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_100F54748();
  if (v12 >> 60 == 15)
  {
    if (qword_1016950D0 == -1)
    {
LABEL_4:
      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_10177C418);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unable to generate FindMyNetworkId.", v16, 2u);
      }

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 40) = 267;
      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v17 = v11;
  v18 = v12;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177C418);
  sub_100017D5C(v17, v18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  sub_100006654(v17, v18);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    sub_100017D5C(v17, v18);
    v24 = Data.hexString.getter();
    v26 = v25;
    sub_100006654(v17, v18);
    v27 = sub_1000136BC(v24, v26, &v33);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "findMyNetworkId: %s", v22, 0xCu);
    sub_100007BAC(v23);
  }

  v28 = *(v2 + 80);
  v29 = (*(v28 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v30 = *v29;
  v31 = v29[1];
  *v29 = v17;
  v29[1] = v18;

  sub_100006654(v30, v31);

  *a1 = v28;
  *(a1 + 41) = 0;
}

uint64_t sub_100E3465C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v34, &qword_1016BCD38, &qword_1013EAD40);
  if (v36)
  {
    v32 = v34;
    v33[0] = *v35;
    *(v33 + 9) = *&v35[9];
    sub_100101AA8(&v32, &v30);
    v12 = swift_allocObject();
    v13 = v31[0];
    v12[1] = v30;
    v12[2] = v13;
    *(v12 + 41) = *(v31 + 9);
    v14 = sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = Future.init(_:)();
    sub_100101B04(&v32);
    return v17;
  }

  sub_10000A748(&v34, &v32);
  if (qword_1016950D0 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C418);
  sub_10001F280(&v32, &v30);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136446210;
    sub_10001F280(&v30, v28);
    sub_1000BC4D4(&qword_1016BCD68, &qword_1013EAD98);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_100007BAC(&v30);
    v26 = sub_1000136BC(v23, v25, &v29);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Sending %{public}s", v21, 0xCu);
    sub_100007BAC(v22);
  }

  else
  {

    sub_100007BAC(&v30);
  }

  v17 = sub_100E50C0C(&v32, a2);
  sub_100007BAC(&v32);
  return v17;
}

uint64_t sub_100E472A0(uint64_t a1)
{
  sub_1001011C0(a1, &v2);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  return String.init<A>(describing:)();
}

void sub_100E472E4(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for BluetoothCommunicationCoordinator.Error();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v37 - v15;
  v17 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  sub_1000D2A70(a1, &v37 - v19, &qword_10169E748, &unk_10139DAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100E6ADA4(v20, v12, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    sub_100E6A94C(v12, v10, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136446210;
      v26 = sub_10118F894();
      v28 = v27;
      sub_100E6A9B4(v10, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      v29 = sub_1000136BC(v26, v28, &v38);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to validate accessory due to %{public}s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      sub_100E6A9B4(v10, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    }

    sub_100E6A9B4(v12, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  }

  else
  {
    v30 = *v20;
    v31 = *(*(a3 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    if (*(*v20 + 16))
    {
      v32 = type metadata accessor for AccessoryProductInfo();
      v33 = *(v32 - 8);
      sub_100E6A94C(v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v16, type metadata accessor for AccessoryProductInfo);

      (*(v33 + 56))(v16, 0, 1, v32);
    }

    else
    {
      v34 = *(*(a3 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);

      v35 = type metadata accessor for AccessoryProductInfo();
      (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
    }

    v36 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    sub_10002311C(v16, v31 + v36, &qword_101697268, &qword_101394FE0);
    swift_endAccess();
  }

  dispatch_group_leave(a2);
}

uint64_t sub_100E47778(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AccessoryProductInfo() + 96));
  if (v1[1] >> 60 == 15)
  {
    return 0;
  }

  v3 = *v1;
  return Data.hexString.getter();
}

uint64_t sub_100E477CC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AccessoryProductInfo() + 100));
  if (v1[1] >> 60 == 15)
  {
    return 0;
  }

  v3 = *v1;
  return Data.hexString.getter();
}

uint64_t sub_100E47820(uint64_t a1)
{
  v1 = *(*(a1 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_100017D5C(v2, v3);
  v4 = Data.hexString.getter();
  sub_100016590(v2, v3);
  return v4;
}

uint64_t sub_100E47890(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100017D5C(a1, a2);
  sub_100017D5C(a3, a4);
  return String.init<A>(describing:)();
}

void *sub_100E478E4()
{
  v25 = _swiftEmptyDictionarySingleton;
  *v24 = *(v0 + 16);
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

  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = Data.chunked(into:)();
  sub_100E211D4(v8, &v25);

  v9 = v25;
  v10 = v25[2];
  v11 = Logger.logObject.getter();
  if (v10 == v1 - 1)
  {
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315138;

      sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
      sub_100101BAC();
      v15 = Dictionary.description.getter();
      v17 = v16;

      v18 = sub_1000136BC(v15, v17, v24);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "serialNumbersAndMacAddressesMap: %s", v13, 0xCu);
      sub_100007BAC(v14);
    }
  }

  else
  {
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = v9[2];
      _os_log_impl(&_mh_execute_header, v11, v19, "Unexpected number of other serial numbers: %{public}ld", v20, 0xCu);
    }

    v21 = type metadata accessor for BinaryEncodingError();
    sub_100E62554(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for BinaryEncodingError.encodingError(_:), v21);
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_100E47C9C()
{
  v2 = v0;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v91 = *(v3 - 8);
  v4 = *(v91 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v102 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = v84 - v7;
  v8 = sub_1000BC4D4(&qword_1016BCD78, &qword_1013EADB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v97 = (v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v96 = (v84 - v12);
  v13 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v94 = *(v13 - 8);
  v14 = *(v94 + 64);
  v15 = __chkstk_darwin(v13);
  v100 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v95 = v84 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = v84 - v20;
  __chkstk_darwin(v19);
  v23 = v84 - v22;
  v24 = *(v0 + 40);
  v101[0] = *(v0 + 32);
  v101[1] = v24;
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v36 = Data.trimmed.getter();
    v38 = v37;
    v39 = *(v2 + 160);
    v99 = v1;
    v40 = *(v13 + 24);
    v41 = type metadata accessor for MACAddress();
    (*(*(v41 - 8) + 56))(&v23[v40], 1, 1, v41);
    LODWORD(v98) = v39;
    *v23 = v39;
    v23[1] = 0;
    v23[*(v13 + 28)] = 1;
    sub_100E6ADA4(v23, v21, type metadata accessor for MultipartAccessoryPairingInfo);
    sub_100017D5C(v36, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = _swiftEmptyDictionarySingleton;
    sub_100FFA7D4(v21, v36, v38, isUniquelyReferenced_nonNull_native);
    sub_100016590(v36, v38);
    v43 = v101[0];
    v44 = v99;
    v45 = sub_100E478E4();
    if (v44)
    {

      return sub_100016590(v36, v38);
    }

    v84[1] = 0;
    v85 = v36;
    v86 = v38;
    v93 = v13;
    v46 = 0;
    v89 = v45;
    v47 = v45[8];
    v87 = v45 + 8;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & v47;
    v51 = (v48 + 63) >> 6;
    v92 = v98 == 0;
    v88 = v51;
    while (1)
    {
      v52 = v97;
      v99 = v43;
      if (!v50)
      {
        if (v51 <= v46 + 1)
        {
          v54 = v46 + 1;
        }

        else
        {
          v54 = v51;
        }

        v2 = v54 - 1;
        while (1)
        {
          v53 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (v53 >= v51)
          {
            v83 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
            (*(*(v83 - 8) + 56))(v52, 1, 1, v83);
            v50 = 0;
            goto LABEL_23;
          }

          v50 = v87[v53];
          ++v46;
          if (v50)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v53 = v46;
LABEL_22:
      v55 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v56 = v55 | (v53 << 6);
      v57 = (v89[6] + 16 * v56);
      v58 = *v57;
      v59 = v57[1];
      v60 = v90;
      sub_1000D2A70(v89[7] + *(v91 + 72) * v56, v90, &qword_1016A40D0, &unk_10138BE70);
      v61 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
      v62 = *(v61 + 48);
      *v52 = v58;
      v52[1] = v59;
      sub_1000D2AD8(v60, v52 + v62, &qword_1016A40D0, &unk_10138BE70);
      (*(*(v61 - 8) + 56))(v52, 0, 1, v61);
      sub_100017D5C(v58, v59);
      v2 = v53;
      v51 = v88;
LABEL_23:
      v63 = v96;
      sub_1000D2AD8(v52, v96, &qword_1016BCD78, &qword_1013EADB0);
      v64 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
      if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
      {

        sub_100016590(v85, v86);
        return v99;
      }

      v98 = v2;
      v65 = *v63;
      v66 = v63[1];
      v67 = v63 + *(v64 + 48);
      v68 = v102;
      sub_1000D2AD8(v67, v102, &qword_1016A40D0, &unk_10138BE70);
      v69 = v93;
      v2 = v95;
      sub_1000D2A70(v68, &v95[*(v93 + 24)], &qword_1016A40D0, &unk_10138BE70);
      *v2 = v92;
      *(v2 + 1) = 0;
      *(v2 + *(v69 + 28)) = 1;
      sub_100E6ADA4(v2, v100, type metadata accessor for MultipartAccessoryPairingInfo);
      v70 = v99;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v101[0] = v70;
      v73 = sub_100771E30(v65, v66);
      v74 = *(v70 + 16);
      v75 = (v72 & 1) == 0;
      v76 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
        goto LABEL_36;
      }

      v2 = v72;
      if (*(v70 + 24) >= v76)
      {
        if ((v71 & 1) == 0)
        {
          sub_1010052AC();
        }
      }

      else
      {
        sub_100FE68A8(v76, v71);
        v77 = sub_100771E30(v65, v66);
        if ((v2 & 1) != (v78 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v73 = v77;
      }

      v43 = v101[0];
      if (v2)
      {
        sub_100E6A05C(v100, *(v101[0] + 56) + *(v94 + 72) * v73, type metadata accessor for MultipartAccessoryPairingInfo);
        sub_100016590(v65, v66);
        sub_10000B3A8(v102, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        *(v101[0] + 8 * (v73 >> 6) + 64) |= 1 << v73;
        v79 = (v43[6] + 16 * v73);
        *v79 = v65;
        v79[1] = v66;
        sub_100E6ADA4(v100, v43[7] + *(v94 + 72) * v73, type metadata accessor for MultipartAccessoryPairingInfo);
        sub_10000B3A8(v102, &qword_1016A40D0, &unk_10138BE70);
        v80 = v43[2];
        v81 = __OFADD__(v80, 1);
        v82 = v80 + 1;
        if (v81)
        {
          goto LABEL_37;
        }

        v43[2] = v82;
      }

      v46 = v98;
    }
  }

  if (qword_1016950D0 != -1)
  {
LABEL_38:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177C418);
  sub_100E69704(v2, v101);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  sub_100A222C4(v2);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v101[0] = v29;
    *v28 = 136315138;
    v30 = Data.description.getter();
    v32 = sub_1000136BC(v30, v31, v101);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Invalid serial number %s!", v28, 0xCu);
    sub_100007BAC(v29);
  }

  v33 = type metadata accessor for BinaryEncodingError();
  sub_100E62554(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError);
  swift_allocError();
  (*(*(v33 - 8) + 104))(v34, enum case for BinaryEncodingError.encodingError(_:), v33);
  return swift_willThrow();
}

void *sub_100E48730()
{
  v27 = _swiftEmptyDictionarySingleton;
  *v26 = *(v0 + 16);
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

  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = static MACAddress.length.getter();
  v9 = __OFADD__(v8, 20);
  result = (v8 + 20);
  if (!v9)
  {
    v11 = Data.chunked(into:)();
    sub_100E216A8(v11, &v27);

    v12 = v27;
    v13 = v27[2];
    v14 = Logger.logObject.getter();
    if (v13 == v1 - 1)
    {
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26[0] = v17;
        *v16 = 136315138;

        sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
        sub_100101BAC();
        v18 = Dictionary.description.getter();
        v20 = v19;

        v21 = sub_1000136BC(v18, v20, v26);

        *(v16 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v14, v15, "serialNumbersAndMacAddressesMap: %s", v16, 0xCu);
        sub_100007BAC(v17);
      }
    }

    else
    {
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134349056;
        *(v23 + 4) = v12[2];
        _os_log_impl(&_mh_execute_header, v14, v22, "Unexpected number of other serial numbers: %{public}ld", v23, 0xCu);
      }

      v24 = type metadata accessor for BinaryEncodingError();
      sub_100E62554(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, enum case for BinaryEncodingError.encodingError(_:), v24);
      swift_willThrow();
    }

    return v12;
  }

  __break(1u);
  return result;
}

void *sub_100E48AFC()
{
  v17 = _swiftEmptyDictionarySingleton;
  v16 = *(v0 + 16);
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

  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = Data.chunked(into:)();
  sub_100E21730(v8, &v17);

  v9 = v17;
  if (v17[2] != v1 - 1)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      *(v12 + 4) = v9[2];
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected number of other serial numbers: %{public}ld", v12, 0xCu);
    }

    v13 = type metadata accessor for BinaryEncodingError();
    sub_100E62554(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for BinaryEncodingError.encodingError(_:), v13);
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_100E48DAC()
{
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  return String.init<A>(describing:)();
}

uint64_t sub_100E48DF0(uint64_t a1)
{
  sub_10001F280(a1, v2);
  sub_1000BC4D4(&qword_1016BCD68, &qword_1013EAD98);
  return String.init<A>(describing:)();
}

void sub_100E48E34(uint64_t *a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v68 - v8;
  v10 = sub_1000BC4D4(&qword_101696E28, &qword_1013EAD80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v68 - v12;
  v14 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v73 = &v68 - v16;
  v17 = type metadata accessor for MACAddress();
  v74 = *(v17 - 8);
  v75 = v17;
  v18 = *(v74 + 64);
  __chkstk_darwin(v17);
  v70 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + 16);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_17;
  }

  v71 = v1;
  v27 = *(v1 + 80);
  v68 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v69 = v27;
  v28 = *(*(v27 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 64);
  v32 = (v29 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v33 = 0;
  if (!v31)
  {
LABEL_6:
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {

        (*(v3 + 56))(v13, 1, 1, v2);
        goto LABEL_13;
      }

      v31 = *(v28 + 64 + 8 * v34);
      ++v33;
      if (v31)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  while (1)
  {
    v34 = v33;
LABEL_9:
    sub_100E6A94C(*(v28 + 56) + *(v3 + 72) * (__clz(__rbit64(v31)) | (v34 << 6)), v9, type metadata accessor for MultipartAccessoryPairingInfo);
    sub_100E6ADA4(v9, v7, type metadata accessor for MultipartAccessoryPairingInfo);
    if (v7[*(v2 + 28)] == 2)
    {
      break;
    }

    v31 &= v31 - 1;
    sub_100E6A9B4(v7, type metadata accessor for MultipartAccessoryPairingInfo);
    v33 = v34;
    if (!v31)
    {
      goto LABEL_6;
    }
  }

  sub_100E6ADA4(v7, v13, type metadata accessor for MultipartAccessoryPairingInfo);
  (*(v3 + 56))(v13, 0, 1, v2);
LABEL_13:

  v35 = (*(v3 + 48))(v13, 1, v2);
  v37 = v74;
  v36 = v75;
  v38 = v71;
  v39 = v73;
  if (v35 == 1)
  {
    sub_10000B3A8(v13, &qword_101696E28, &qword_1013EAD80);
    (*(v37 + 56))(v39, 1, 1, v36);
  }

  else
  {
    sub_1000D2A70(&v13[*(v2 + 24)], v73, &qword_1016A40D0, &unk_10138BE70);
    sub_100E6A9B4(v13, type metadata accessor for MultipartAccessoryPairingInfo);
    if ((*(v37 + 48))(v39, 1, v36) != 1)
    {
      v46 = v70;
      (*(v37 + 32))(v70, v39, v36);
      v48 = v68;
      v47 = v69;
      *(*(v69 + v68) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic) = 1;
      if (*(v38 + 72) == 1)
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_1000076D4(v49, qword_10177C418);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Standalone: Skipping BA pairing over classic and proceed with LE Pairing", v52, 2u);
        }

        sub_100E6259C();
        v53 = swift_allocError();
        *v54 = 4;
        v55 = *(v47 + v48);
        v56 = *(v55 + 16);
        v57 = *(v55 + 24);
        sub_100017D5C(v56, v57);
        sub_100E6792C(v46);
        sub_100016590(v56, v57);
      }

      else
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_1000076D4(v59, qword_10177C418);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Skipping classic pairing and start LE pairing", v62, 2u);
        }

        v63 = *(v38 + 24);
        QueueSynchronizer.conditionalSync<A>(_:)();
        if (v76 & 1) != 0 || (QueueSynchronizer.conditionalSync<A>(_:)(), (v76))
        {
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&_mh_execute_header, v64, v65, "LE Pairing is in progress!", v66, 2u);
          }

          (*(v37 + 8))(v70, v36);
          goto LABEL_20;
        }

        sub_100E6259C();
        v53 = swift_allocError();
        *v67 = 5;
        v46 = v70;
        sub_100E533EC(v70, 0, 0);
      }

      (*(v37 + 8))(v46, v36);
      v44 = v72;
      *v72 = v53;
      v58 = v78;
      *(v44 + 1) = v77;
      *(v44 + 3) = v58;
      v45 = 256;
      goto LABEL_21;
    }
  }

  sub_10000B3A8(v39, &qword_1016A40D0, &unk_10138BE70);
  if (qword_1016950D0 != -1)
  {
    goto LABEL_42;
  }

LABEL_17:
  v40 = type metadata accessor for Logger();
  sub_1000076D4(v40, qword_10177C418);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Missing MAC address to start LE pairing", v43, 2u);
  }

LABEL_20:
  v44 = v72;
  *v72 = 8;
  *(v44 + 1) = 0u;
  *(v44 + 3) = 0u;
  v45 = 267;
LABEL_21:
  *(v44 + 20) = v45;
}

void sub_100E497C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v91 = a2;
  v92 = a3;
  v89 = a1;
  v93 = type metadata accessor for LocalizationUtility.Table();
  v95 = *(v93 - 8);
  v5 = *(v95 + 64);
  __chkstk_darwin(v93);
  v94 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for MACAddress();
  v7 = *(v96 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v96);
  v90 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v80 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v80 - v15;
  __chkstk_darwin(v14);
  v18 = v80 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v4 + 16);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v27 = *(v20 + 8);
  v26 = (v20 + 8);
  v27(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_7;
  }

  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 isInternalBuild];

  if (!v29)
  {
    return;
  }

  v84 = *(v4 + 64);
  sub_100A22DF0(v18);
  v26 = v7[2];
  v88 = v18;
  v30 = v18;
  v18 = v96;
  v26(v13, v30, v96);
  *&v104[0] = sub_100E221E0();
  v31 = sub_100DED164(v16, v13);
  v86 = v7[1];
  v87 = v7 + 1;
  v86(v16, v18);
  sub_100E226B8(*&v104[0]);
  if (v31)
  {
    LODWORD(v90) = enum case for LocalizationUtility.Table.default(_:);
    v32 = v94;
    v33 = v95;
    v34 = v95 + 104;
    v85 = *(v95 + 104);
    v35 = v93;
    v85(v94);
    v83 = static LocalizationUtility.localizedString(key:table:)();
    v81 = v36;
    v37 = *(v33 + 8);
    v37(v32, v35);
    v80[1] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_101385D80;
    *&v104[0] = v89;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    *(v38 + 56) = &type metadata for String;
    v42 = sub_100008C00();
    *(v38 + 64) = v42;
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    v43 = String.init(format:_:)();
    v82 = v44;
    v83 = v43;

    v89 = v34;
    (v85)(v32, v90, v35);
    v80[2] = static LocalizationUtility.localizedString(key:table:)();
    v80[3] = v45;
    v95 = v33 + 8;
    v81 = v37;
    v37(v32, v35);
    v46 = swift_allocObject();
    v47 = v46;
    *(v46 + 16) = xmmword_10138B360;
    if (*(v84 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8))
    {
      v48 = *(v84 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName);
      v49 = *(v84 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8);
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = v42;
      v50 = v96;
LABEL_16:
      v47[4] = v48;
      v47[5] = v49;
      *&v104[0] = v91;

      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v47[12] = &type metadata for String;
      v47[13] = v42;
      v47[9] = v69;
      v47[10] = v70;
      *&v104[0] = v92;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v47[17] = &type metadata for String;
      v47[18] = v42;
      v47[14] = v71;
      v47[15] = v72;
      v73 = String.init(format:_:)();
      v75 = v74;

      v76 = v94;
      (v85)(v94, v90, v35);
      v77 = static LocalizationUtility.localizedString(key:table:)();
      v79 = v78;
      v81(v76, v35);
      *&v98 = v83;
      *(&v98 + 1) = v82;
      *&v99 = v73;
      *(&v99 + 1) = v75;
      *&v100 = v77;
      *(&v100 + 1) = v79;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104[2] = v100;
      memset(&v104[3], 0, 48);
      v104[0] = v98;
      v104[1] = v99;
      type metadata accessor for SBAlertHelper();
      swift_allocObject();
      sub_1010A0C88(v104);
      sub_100E69244(&v98, &v97);
      sub_1010A1920();

      sub_100E692A0(&v98);
      v86(v88, v50);
      return;
    }

    v65 = v42;
    v66 = [*(v84 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) name];
    if (v66)
    {
      v67 = v66;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v68;

      v47[7] = &type metadata for String;
      v47[8] = v65;
      v50 = v96;
      if (v49)
      {
LABEL_15:
        v42 = v65;
        goto LABEL_16;
      }
    }

    else
    {
      v47[7] = &type metadata for String;
      v47[8] = v42;
      v50 = v96;
    }

    v48 = 0;
    v49 = 0xE000000000000000;
    goto LABEL_15;
  }

  if (qword_1016950D0 != -1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v51 = type metadata accessor for Logger();
  sub_1000076D4(v51, qword_10177C418);
  v52 = v90;
  v53 = v88;
  v26(v90, v88, v18);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v104[0] = v57;
    *v56 = 136446210;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = v52;
    v62 = v86;
    v86(v61, v18);
    v63 = sub_1000136BC(v58, v60, v104);

    *(v56 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v54, v55, "Limit reached alert has already been shown for %{public}s.", v56, 0xCu);
    sub_100007BAC(v57);

    v62(v88, v18);
  }

  else
  {

    v64 = v86;
    v86(v52, v18);
    v64(v53, v18);
  }
}

uint64_t sub_100E4A090@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v5 = sub_1000BC4D4(&qword_1016AED28, &qword_1013C8298);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v34 - v7);
  v9 = type metadata accessor for AirPodsPairingLockCheckResponse();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + 16);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v35 = v9;
    v38 = a2;
    v23 = swift_allocBox();
    v25 = v24;
    type metadata accessor for SPPairingSessionError(0);
    v41 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100E62554(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v25 = v40;
    swift_storeEnumTagMultiPayload();
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    v36 = v3;
    v27 = *(v3 + 56);
    v28 = swift_allocObject();
    *(v28 + 16) = v23;
    *(v28 + 24) = v26;

    v29 = v26;
    sub_10092FB14(v39, sub_100E6923C, v28);

    OS_dispatch_group.wait()();
    swift_beginAccess();
    sub_1000D2A70(v25, v8, &qword_1016AED28, &qword_1013C8298);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v8;
      v30 = v41;
      sub_100E62554(&qword_101695F60, 255, type metadata accessor for SPPairingSessionError);
      swift_willThrowTypedImpl();
    }

    else
    {

      v31 = v37;
      sub_100E6ADA4(v8, v37, type metadata accessor for AirPodsPairingLockCheckResponse);
      sub_100E6ADA4(v31, v14, type metadata accessor for AirPodsPairingLockCheckResponse);
      v32 = *(*(v36 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
      v33 = *&v14[*(v35 + 48)];

      sub_100E6A9B4(v14, type metadata accessor for AirPodsPairingLockCheckResponse);
      *(v32 + 32) = v33;
    }

    sub_1000D2A70(v25, v38, &qword_1016AED28, &qword_1013C8298);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100E4A4EC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1001DA61C(a1, v5, &qword_1016AED28, &qword_1013C8298);
  dispatch_group_leave(a3);
}

void sub_100E4A560()
{
  v1 = v0;
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(*(v0 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v8 = *(v0 + 64);

  sub_100A22DF0(v6);
  v9 = sub_100E22864();
  if (*(v9 + 16) && (v10 = sub_1007723C0(v6), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    sub_100017D5C(*v12, v14);
    (*(v3 + 8))(v6, v2);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  sub_100F5395C(v13, v14, v21);

  sub_100006654(v13, v14);
  v32 = v21[10];
  v33 = v21[11];
  v34 = v21[12];
  v28 = v21[6];
  v29 = v21[7];
  v30 = v21[8];
  v31 = v21[9];
  v24 = v21[2];
  v25 = v21[3];
  v26 = v21[4];
  v27 = v21[5];
  v22 = v21[0];
  v23 = v21[1];
  if (sub_1001010A8(&v22) == 1)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C418);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to generate ack data!", v18, 2u);
    }
  }

  else
  {
    v35[10] = v32;
    v35[11] = v33;
    v35[12] = v34;
    v35[6] = v28;
    v35[7] = v29;
    v35[8] = v30;
    v35[9] = v31;
    v35[2] = v24;
    v35[3] = v25;
    v35[4] = v26;
    v35[5] = v27;
    v35[0] = v22;
    v35[1] = v23;
    v19 = type metadata accessor for Transaction();
    __chkstk_darwin(v19);
    *&v20[-16] = v1;
    *&v20[-8] = v35;
    static Transaction.named<A>(_:with:)();
    sub_10000B3A8(v21, &qword_1016BCD60, &qword_1013EAD78);
  }
}

uint64_t sub_100E4A8C0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = *(a2 + 56);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;

  sub_1009349F8(a3, sub_100E691F4, v7);
}

uint64_t sub_100E4A984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v5);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v60);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AirPodsPairingLockAckResponse();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v54 - v16;
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = sub_1000BC4D4(&qword_1016AED20, &qword_1013C8290);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v54 - v22);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v55 = a3;
    v56 = v5;
    Transaction.capture()();
    sub_1000D2A70(a1, v23, &qword_1016AED20, &qword_1013C8290);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v23;
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_10177C418);
      v28 = v26;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v62 = v28;
        aBlock[0] = v32;
        *v31 = 136446210;
        type metadata accessor for SPPairingSessionError(0);
        v33 = v28;
        v34 = String.init<A>(describing:)();
        v36 = sub_1000136BC(v34, v35, aBlock);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "Ack register failed with error - %{public}s", v31, 0xCu);
        sub_100007BAC(v32);
      }

      v37 = v55;
      v38 = *(v25 + 16);
      v39 = swift_allocObject();
      v39[2] = v37;
      v39[3] = v25;
      v39[4] = v28;
      aBlock[4] = sub_100E691FC;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_101652D28;
      v40 = _Block_copy(aBlock);
      v41 = v28;

      v42 = v57;
      static DispatchQoS.unspecified.getter();
      v62 = _swiftEmptyArrayStorage;
      sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v43 = v59;
      v44 = v56;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);

      (*(v61 + 8))(v43, v44);
      (*(v58 + 8))(v42, v60);
    }

    else
    {
      sub_100E6ADA4(v23, v19, type metadata accessor for AirPodsPairingLockAckResponse);
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177C418);
      sub_100E6A94C(v19, v17, type metadata accessor for AirPodsPairingLockAckResponse);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock[0] = v49;
        *v48 = 136446210;
        sub_100E6A94C(v17, v14, type metadata accessor for AirPodsPairingLockAckResponse);
        v50 = String.init<A>(describing:)();
        v52 = v51;
        sub_100E6A9B4(v17, type metadata accessor for AirPodsPairingLockAckResponse);
        v53 = sub_1000136BC(v50, v52, aBlock);

        *(v48 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v46, v47, "Ack register was success. %{public}s", v48, 0xCu);
        sub_100007BAC(v49);
      }

      else
      {

        sub_100E6A9B4(v17, type metadata accessor for AirPodsPairingLockAckResponse);
      }

      return sub_100E6A9B4(v19, type metadata accessor for AirPodsPairingLockAckResponse);
    }
  }

  return result;
}

void sub_100E4B0F8(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v225 = &v208 - v5;
  v6 = type metadata accessor for AirPodsPairingLockCheckResponse();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v226 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v208 - v10;
  v227 = sub_1000BC4D4(&qword_1016AED28, &qword_1013C8298);
  v12 = *(*(v227 - 8) + 64);
  __chkstk_darwin(v227);
  v228 = (&v208 - v13);
  v242 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v237 = *(v242 - 8);
  v14 = *(v237 + 64);
  v15 = __chkstk_darwin(v242);
  v246 = &v208 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v241 = &v208 - v17;
  v247 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v18 = *(*(v247 - 8) + 64);
  v19 = __chkstk_darwin(v247);
  v240 = &v208 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v239 = &v208 - v22;
  v23 = __chkstk_darwin(v21);
  v238 = (&v208 - v24);
  v25 = __chkstk_darwin(v23);
  v244 = (&v208 - v26);
  __chkstk_darwin(v25);
  v245 = (&v208 - v27);
  v243 = type metadata accessor for MACAddress();
  v235 = *(v243 - 8);
  v28 = *(v235 + 64);
  v29 = __chkstk_darwin(v243);
  v224 = &v208 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v229 = &v208 - v32;
  __chkstk_darwin(v31);
  v234 = &v208 - v33;
  v34 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v230 = &v208 - v36;
  v37 = type metadata accessor for HashAlgorithm();
  v232 = *(v37 - 8);
  v233 = v37;
  v38 = *(v232 + 8);
  __chkstk_darwin(v37);
  v231 = &v208 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchPredicate();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = (&v208 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *(v1 + 16);
  *v44 = v45;
  (*(v41 + 104))(v44, enum case for DispatchPredicate.onQueue(_:), v40);
  v46 = v45;
  v47 = _dispatchPreconditionTest(_:)();
  (*(v41 + 8))(v44, v40);
  if ((v47 & 1) == 0)
  {
    goto LABEL_73;
  }

  v48 = (*(*(v1 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v49 = v48[1];
  if (v49 >> 60 == 15)
  {
    if (qword_1016950D0 != -1)
    {
      goto LABEL_74;
    }

    goto LABEL_4;
  }

  v222 = *(v1 + 80);
  v223 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v219 = v6;
  v221 = v11;
  v236 = a1;
  v54 = *v48;
  swift_beginAccess();
  sub_10001F280(v1 + 176, v256);
  v55 = v256[3];
  v56 = v256[4];
  sub_1000035D0(v256, v256[3]);
  v57 = *(v56 + 72);
  sub_10002E98C(v54, v49);
  sub_100017D5C(v54, v49);
  v57(v257, &v257[2] + 8, v54, v49, v55, v56);
  v220 = v1;
  sub_100006654(v54, v49);
  sub_100007BAC(v256);
  if (!*(&v257[1] + 1))
  {
    v58 = v49;
    sub_10000B3A8(v257, &qword_101697370, &unk_10138BEE0);
    v59 = v236;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000076D4(v60, qword_10177C418);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "collaborativeKeyC2 generation error.", v63, 2u);
    }

    sub_100006654(v54, v58);
    *v59 = 0xD000000000000026;
    *(v59 + 8) = 0x800000010134B390;
    *(v59 + 40) = 265;
    return;
  }

  v209 = v54;
  v210 = v49;
  sub_10000A748(v257, v252);
  sub_10000A748((&v257[2] + 8), v251);
  v64 = v222;
  v65 = *(v222 + v223);
  sub_10001F280(v252, v257);
  v66 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();

  sub_10002311C(v257, v65 + v66, &qword_101697378, &unk_101391940);
  swift_endAccess();

  sub_10001F280(v251, v257);
  v67 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  swift_beginAccess();
  sub_10002311C(v257, v64 + v67, &qword_101697380, &unk_10138BEF0);
  swift_endAccess();
  if (qword_1016950D0 != -1)
  {
LABEL_77:
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  v69 = sub_1000076D4(v68, qword_10177C418);
  sub_10001F280(v252, v257);
  v211 = v69;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v235;
  if (v72)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v256[0] = v75;
    *v74 = 136315138;
    v76 = *(&v257[1] + 1);
    LODWORD(v218) = v71;
    v77 = *&v257[2];
    sub_1000035D0(v257, *(&v257[1] + 1));
    v78 = (*(*(*(v77 + 8) + 8) + 40))(v76);
    v80 = v79;
    v81 = Data.hexString.getter();
    v83 = v82;
    sub_100016590(v78, v80);
    sub_100007BAC(v257);
    v84 = sub_1000136BC(v81, v83, v256);

    *(v74 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v70, v218, "C2: %s", v74, 0xCu);
    sub_100007BAC(v75);
  }

  else
  {

    sub_100007BAC(v257);
  }

  a1 = v230;
  v86 = v253;
  v85 = v254;
  sub_1000035D0(v252, v253);
  v87 = (*(*(*(v85 + 8) + 8) + 40))(v86);
  v89 = v88;
  v90 = v231;
  v91 = v232;
  v92 = v233;
  (*(v232 + 13))(v231, enum case for HashAlgorithm.sha256(_:), v233);
  v216 = Data.hash(algorithm:)();
  v217 = v93;
  sub_100016590(v87, v89);
  (*(v91 + 1))(v90, v92);
  v94 = *(v220 + 32);
  v95 = v234;
  v213 = *(v220 + 64);
  sub_100A22DF0(v234);
  sub_100AC5D4C(v95, a1);
  v97 = *(v73 + 8);
  v96 = v73 + 8;
  v212 = v97;
  v97(v95, v243);
  v98 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v98 - 8) + 48))(a1, 1, v98) != 1)
  {
    v108 = *(a1 + *(v98 + 40));

    sub_100E6A9B4(a1, type metadata accessor for OwnedBeaconGroup);
    v109 = v236;
LABEL_43:
    v148 = *(v64 + v223);

    v149 = v229;
    sub_100A22DF0(v229);
    v150 = sub_100E22864();
    if (*(v150 + 16) && (v151 = sub_1007723C0(v149), (v152 & 1) != 0))
    {
      v153 = (*(v150 + 56) + 16 * v151);
      v154 = *v153;
      v155 = v153[1];
      sub_100017D5C(*v153, v155);
      v212(v149, v243);
    }

    else
    {

      v212(v149, v243);
      v154 = 0;
      v155 = 0xF000000000000000;
    }

    sub_100F53C90(v216, v217, v154, v155, v108, v255);

    sub_100006654(v154, v155);
    memcpy(v256, v255, sizeof(v256));
    if (sub_100101D88(v256) == 1)
    {
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&_mh_execute_header, v156, v157, "Unable to create pairing check data.", v158, 2u);
      }

      v159 = 0x800000010134B3C0;
      sub_100016590(v216, v217);
      sub_100006654(v209, v210);
      sub_100007BAC(v251);
      v160 = 0xD00000000000001ALL;
    }

    else
    {
      memcpy(v257, v256, 0x140uLL);
      v162 = v228;
      sub_100E4A090(v257, v228);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v163 = *v162;
        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          *&v250[0] = v167;
          *v166 = 136446210;
          *&v248 = v163;
          type metadata accessor for SPPairingSessionError(0);
          v168 = v163;
          v169 = String.init<A>(describing:)();
          v171 = sub_1000136BC(v169, v170, v250);

          *(v166 + 4) = v171;
          _os_log_impl(&_mh_execute_header, v164, v165, "Pairing lock check failed. Error %{public}s", v166, 0xCu);
          sub_100007BAC(v167);
        }

        v172 = v222;
        v173 = v163;
        sub_100E5FD24(v173);

        *&v250[0] = v173;
        type metadata accessor for SPPairingSessionError(0);
        sub_100E62554(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
        _BridgedStoredNSError.code.getter();
        if (v248 == 18)
        {
          sub_100E4CA50(v172, v109);
          sub_100016590(v216, v217);
          sub_10000B3A8(v255, &qword_1016BCD58, &qword_1013EAD70);
          sub_100006654(v209, v210);

          sub_100007BAC(v251);
          goto LABEL_53;
        }

        sub_100007BAC(v251);
        sub_100006654(v209, v210);
        sub_100016590(v216, v217);
        sub_10000B3A8(v255, &qword_1016BCD58, &qword_1013EAD70);
        *v109 = v173;
        v161 = 256;
LABEL_52:
        *(v109 + 40) = v161;
LABEL_53:
        sub_100007BAC(v252);
        return;
      }

      v174 = v221;
      sub_100E6ADA4(v162, v221, type metadata accessor for AirPodsPairingLockCheckResponse);
      v175 = v226;
      sub_100E6A94C(v174, v226, type metadata accessor for AirPodsPairingLockCheckResponse);
      v176 = Logger.logObject.getter();
      v177 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        *&v250[0] = v179;
        *v178 = 136446210;
        v180 = (v175 + *(v219 + 44));
        if (v180[1] >> 60 == 15)
        {
          v181 = 0;
          v182 = 0xE000000000000000;
        }

        else
        {
          v183 = *v180;
          v181 = Data.hexString.getter();
          v182 = v184;
        }

        sub_100E6A9B4(v226, type metadata accessor for AirPodsPairingLockCheckResponse);
        v185 = sub_1000136BC(v181, v182, v250);

        *(v178 + 4) = v185;
        _os_log_impl(&_mh_execute_header, v176, v177, "Received SeedS and S3 from server. Pairing token: %{public}s", v178, 0xCu);
        sub_100007BAC(v179);
      }

      else
      {

        sub_100E6A9B4(v175, type metadata accessor for AirPodsPairingLockCheckResponse);
      }

      v186 = *(v222 + v223);
      v187 = v219;
      v188 = *(v219 + 36);
      v189 = type metadata accessor for UUID();
      v190 = *(v189 - 8);
      v191 = v221;
      v192 = v221 + v188;
      v193 = v225;
      (*(v190 + 16))(v225, v192, v189);
      (*(v190 + 56))(v193, 0, 1, v189);
      v194 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
      swift_beginAccess();

      sub_10002311C(v193, v186 + v194, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();

      v195 = v224;
      sub_100A22DF0(v224);
      v196 = (v191 + *(v187 + 44));
      v197 = *v196;
      v198 = v196[1];
      sub_10002E98C(*v196, v198);
      v199 = sub_100E22864();
      *&v248 = v199;
      if (v198 >> 60 == 15)
      {
        sub_1001E5B28(v195, v250);
        sub_100006654(*&v250[0], *(&v250[0] + 1));
      }

      else
      {
        v200 = v199;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v250[0] = v200;
        sub_1010013E0(v197, v198, v195, isUniquelyReferenced_nonNull_native);
      }

      v212(v195, v243);
      sub_100E22CD8();
      v203 = v253;
      v202 = v254;
      sub_1000035D0(v252, v253);
      v204 = (*(*(*(v202 + 8) + 8) + 40))(v203);
      v206 = v205;
      v207 = v221;
      sub_100E4D1FC(v221, v204, v205, &v248);
      sub_100016590(v204, v206);
      if (v249)
      {
        sub_100016590(v216, v217);
        sub_10000B3A8(v255, &qword_1016BCD58, &qword_1013EAD70);
        sub_100006654(v209, v210);
        sub_100E6A9B4(v207, type metadata accessor for AirPodsPairingLockCheckResponse);
        sub_100007BAC(v251);
        sub_10000A748(&v248, v250);
        sub_10000A748(v250, v109);
        *(v109 + 41) = 0;
        goto LABEL_53;
      }

      sub_10000B3A8(&v248, &qword_1016BCD50, &qword_1013EAD68);
      v159 = 0x800000010134B3E0;
      sub_100016590(v216, v217);
      sub_10000B3A8(v255, &qword_1016BCD58, &qword_1013EAD70);
      sub_100006654(v209, v210);
      sub_100E6A9B4(v207, type metadata accessor for AirPodsPairingLockCheckResponse);
      sub_100007BAC(v251);
      v160 = 0xD000000000000019;
    }

    *v109 = v160;
    *(v109 + 8) = v159;
    v161 = 265;
    goto LABEL_52;
  }

  v235 = v96;
  sub_10000B3A8(a1, &unk_1016AF8B0, &unk_1013A0700);
  v99 = *(*(v64 + v223) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  v102 = *(v99 + 64);
  v101 = v99 + 64;
  v100 = v102;
  v103 = 1 << *(*(*(v64 + v223) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) + 32);
  v104 = -1;
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  v105 = v104 & v100;
  v106 = (v103 + 63) >> 6;
  v218 = *(*(v64 + v223) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  swift_bridgeObjectRetain_n();
  v107 = 0;
  v108 = _swiftEmptyDictionarySingleton;
  v109 = v236;
  v214 = v106;
  v215 = v101;
  while (v105)
  {
    v234 = v108;
LABEL_30:
    v111 = __clz(__rbit64(v105)) | (v107 << 6);
    v112 = *(v218 + 56);
    v113 = (*(v218 + 48) + 16 * v111);
    v115 = v113[1];
    v230 = *v113;
    v114 = v230;
    v116 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
    v117 = v112 + *(*v116 + 72) * v111;
    v118 = v245;
    sub_100E6A94C(v117, v245 + *(v247 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    *v118 = v114;
    v118[1] = v115;
    v119 = v244;
    sub_1000D2A70(v118, v244, &qword_101696E38, &qword_1013D8510);
    v120 = v119[1];
    v233 = *v119;
    v231 = v120;
    v121 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
    v122 = v241;
    v232 = &v241[*(v121 + 48)];
    v123 = v238;
    sub_1000D2A70(v118, v238, &qword_101696E38, &qword_1013D8510);
    v124 = *v123;
    v125 = v123[1];
    sub_100017D5C(v230, v115);
    sub_100016590(v124, v125);
    v126 = v247;
    v127 = v123 + *(v247 + 48);
    sub_1000D2A70(v127 + v116[8], v122, &qword_1016A40D0, &unk_10138BE70);
    sub_100E6A9B4(v127, type metadata accessor for MultipartAccessoryPairingInfo);
    v128 = v239;
    sub_1000D2A70(v118, v239, &qword_101696E38, &qword_1013D8510);
    sub_100016590(*v128, *(v128 + 8));
    v129 = *(v126 + 48);
    v64 = *(v128 + v129);
    sub_100E6A9B4(v128 + v129, type metadata accessor for MultipartAccessoryPairingInfo);
    v130 = v118;
    v131 = v231;
    v132 = v240;
    sub_1000D2A70(v130, v240, &qword_101696E38, &qword_1013D8510);
    sub_100016590(*v132, *(v132 + 8));
    v133 = v132 + *(v126 + 48);
    LOBYTE(v116) = *(v133 + v116[9]);
    a1 = v233;
    sub_100E6A9B4(v133, type metadata accessor for MultipartAccessoryPairingInfo);
    v134 = v232;
    *v232 = v64;
    v134[2] = v116;
    swift_storeEnumTagMultiPayload();
    sub_100E6ADA4(v122, v246, type metadata accessor for OwnedBeaconGroup.PairingState);
    v135 = v234;
    v136 = swift_isUniquelyReferenced_nonNull_native();
    *&v257[0] = v135;
    v138 = sub_100771E30(a1, v131);
    v139 = *(v135 + 2);
    v140 = (v137 & 1) == 0;
    v141 = v139 + v140;
    if (__OFADD__(v139, v140))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v64 = v137;
    if (*(v135 + 3) >= v141)
    {
      if (v136)
      {
        v108 = *&v257[0];
        if (v137)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_10100586C();
        v108 = *&v257[0];
        if (v64)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_100FE71DC(v141, v136);
      v142 = sub_100771E30(a1, v131);
      if ((v64 & 1) != (v143 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v138 = v142;
      v108 = *&v257[0];
      if (v64)
      {
LABEL_22:
        sub_100E6A05C(v246, *(v108 + 7) + *(v237 + 72) * v138, type metadata accessor for OwnedBeaconGroup.PairingState);
        sub_100016590(a1, v131);
        sub_10000B3A8(v245, &qword_101696E38, &qword_1013D8510);
        goto LABEL_23;
      }
    }

    *&v108[8 * (v138 >> 6) + 64] |= 1 << v138;
    v144 = (*(v108 + 6) + 16 * v138);
    *v144 = a1;
    v144[1] = v131;
    sub_100E6ADA4(v246, *(v108 + 7) + *(v237 + 72) * v138, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_10000B3A8(v245, &qword_101696E38, &qword_1013D8510);
    v145 = *(v108 + 2);
    v146 = __OFADD__(v145, 1);
    v147 = v145 + 1;
    if (v146)
    {
      goto LABEL_76;
    }

    *(v108 + 2) = v147;
LABEL_23:
    v109 = v236;
    v106 = v214;
    v101 = v215;
    v105 &= v105 - 1;
    sub_100E6A9B4(v244 + *(v247 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
  }

  while (1)
  {
    v110 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      break;
    }

    if (v110 >= v106)
    {

      v64 = v222;
      goto LABEL_43;
    }

    v105 = *(v101 + 8 * v110);
    ++v107;
    if (v105)
    {
      v234 = v108;
      v107 = v110;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  swift_once();
LABEL_4:
  v50 = type metadata accessor for Logger();
  sub_1000076D4(v50, qword_10177C418);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Missing C1 from accessory!", v53, 2u);
  }

  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x800000010134B370;
  *(a1 + 40) = 265;
}

double sub_100E4CA50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v68 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + 16);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v67 = v6;
  v18 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v19 = (*(a1 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    v66 = v2;
    v69[0] = *v19;
    v21 = v69[0];
    v69[1] = v20;
    sub_100017D5C(v69[0], v20);
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      sub_100006654(v21, v20);
      goto LABEL_5;
    }

    v27 = Data.trimmed.getter();
    v29 = v28;
    sub_100017D5C(v27, v28);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v63 = v21;
    v30 = type metadata accessor for Logger();
    v31 = sub_1000076D4(v30, qword_10177C418);
    sub_100017D5C(v27, v29);
    v61 = v31;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    sub_100016590(v27, v29);
    v34 = os_log_type_enabled(v32, v33);
    v64 = v27;
    v65 = v29;
    if (v34)
    {
      v59 = v33;
      v60 = v32;
      v35 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v69[0] = v57;
      v58 = v35;
      *v35 = 136315138;
      sub_100017D5C(v27, v29);
      static String.Encoding.utf8.getter();
      v36 = String.init(data:encoding:)();
      v38 = v66;
      if (!v37)
      {
        v36 = Data.hexString.getter();
      }

      v39 = v36;
      v40 = v37;
      sub_100016590(v27, v29);
      sub_100016590(v27, v29);
      v41 = sub_1000136BC(v39, v40, v69);

      v42 = v58;
      *(v58 + 1) = v41;
      v43 = v60;
      _os_log_impl(&_mh_execute_header, v60, v59, "Accessory serial number: %s.", v42, 0xCu);
      sub_100007BAC(v57);
    }

    else
    {
      sub_100016590(v27, v29);

      v38 = v66;
    }

    v44 = *(*(a1 + v18) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v66 = *(v38 + 32);
    v45 = *(v38 + 64);
    v46 = *(v45 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8);
    v62 = v5;
    if (v46)
    {
      v47 = *(v45 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName);

      v48 = v46;
    }

    else
    {
      v49 = *(v45 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);

      v50 = [v49 name];
      if (!v50)
      {
        v47 = 0;
        v48 = 0xE000000000000000;
        goto LABEL_22;
      }

      v51 = v50;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v52;
    }

LABEL_22:
    v53 = v68;
    sub_100A22DF0(v68);
    v54 = *(a1 + v18);

    v56 = v64;
    v55 = v65;
    sub_100B8AFF4(v64, v65, v47, v48, v53, v44, v54);
    (*(v67 + 8))(v53, v62);
    sub_100006654(v63, v20);
    sub_100016590(v56, v55);

    goto LABEL_9;
  }

LABEL_5:
  if (qword_1016950D0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Invalid serial number.", v25, 2u);
  }

LABEL_9:
  *a2 = 9;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 267;
  return result;
}

void sub_100E4D1FC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v151 = a3;
  v150 = a2;
  v147 = type metadata accessor for MACAddress();
  v146 = *(v147 - 8);
  v6 = *(v146 + 64);
  __chkstk_darwin(v147);
  v144 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v145 = (&v140 - v10);
  v11 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v141 = *(v11 - 8);
  v12 = *(v141 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v142 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = &v140 - v15;
  v16 = type metadata accessor for AccessoryProductInfo();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v148 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v140 - v22;
  v24 = type metadata accessor for String.Encoding();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for AirPodsPairingLockCheckResponse();
  v29 = (a1 + *(v140 + 40));
  v30 = *v29;
  v31 = v29[1];
  static String.Encoding.utf8.getter();
  v32 = String.data(using:allowLossyConversion:)();
  v34 = v33;
  v36 = *(v25 + 8);
  v35 = v25 + 8;
  v36(v28, v24);
  if (v34 >> 60 != 15)
  {
    v149 = a4;
    v160 = v32;
    v161 = v34;
    v42 = *(a1 + 64);
    v41 = *(a1 + 72);
    v158 = v42;
    v159 = v41;
    v43 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v43 != 2)
      {
        v44 = 0;
        goto LABEL_17;
      }

      v46 = *(v32 + 16);
      v45 = *(v32 + 24);
      v47 = __OFSUB__(v45, v46);
      v44 = v45 - v46;
      if (!v47)
      {
LABEL_17:
        v48 = 60 - v44;
        if (__OFSUB__(60, v44))
        {
          __break(1u);
          goto LABEL_69;
        }

        sub_100017D5C(v42, v41);
        v154 = sub_100845C88(v48);
        v155 = v49;
        sub_100776394(&v154, 0);
        v28 = v154;
        v35 = v155;
        Data.append(_:)();
        sub_100016590(v28, v35);
        v50 = v41 >> 62;
        if ((v41 >> 62) <= 1)
        {
          if (!v50)
          {
            v51 = BYTE6(v41);
            goto LABEL_28;
          }

LABEL_25:
          LODWORD(v51) = HIDWORD(v42) - v42;
          if (!__OFSUB__(HIDWORD(v42), v42))
          {
            v51 = v51;
            goto LABEL_28;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if (v50 == 2)
        {
          v53 = *(v42 + 16);
          v52 = *(v42 + 24);
          v47 = __OFSUB__(v52, v53);
          v51 = v52 - v53;
          if (v47)
          {
            __break(1u);
            goto LABEL_25;
          }
        }

        else
        {
          v51 = 0;
        }

LABEL_28:
        v42 = v149;
        if (!__OFSUB__(100, v51))
        {
          v154 = sub_100845C88(100 - v51);
          v155 = v54;
          sub_100776394(&v154, 0);
          v55 = v154;
          v56 = v155;
          Data.append(_:)();
          sub_100016590(v55, v56);
          v35 = v152[10];
          v28 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
          v57 = *(v35 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
          v58 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
          swift_beginAccess();
          sub_1000D2A70(v57 + v58, v23, &qword_101697268, &qword_101394FE0);
          if ((v17[6])(v23, 1, v16))
          {
            sub_10000B3A8(v23, &qword_101697268, &qword_101394FE0);
          }

          else
          {
            v59 = v148;
            sub_100E6A94C(v23, v148, type metadata accessor for AccessoryProductInfo);
            sub_10000B3A8(v23, &qword_101697268, &qword_101394FE0);
            v60 = *(v59 + *(v16 + 48));
            sub_100E6A9B4(v59, type metadata accessor for AccessoryProductInfo);
            if (v60 != 2 && (v60 & 1) != 0)
            {
              goto LABEL_35;
            }
          }

          v61 = *&v28[v35];
          v62 = *(v61 + 112);
          if (v62 >> 60 == 15 || (v63 = *(v61 + 104), sub_100017D5C(v63, *(v61 + 112)), v64 = sub_100DE68D0(v63, v62), sub_100006654(v63, v62), !v64))
          {
            v28 = 0;
            v148 = 0;
            v23 = 0xF000000000000000;
            v42 = 0xF000000000000000;
            v35 = a1;
            goto LABEL_44;
          }

LABEL_35:
          v17 = &OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber;
          v65 = (*&v28[v35] + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
          v66 = v65[1];
          if (v66 >> 60 == 15)
          {
            goto LABEL_38;
          }

          v154 = *v65;
          v67 = v154;
          v155 = v66;
          sub_100017D5C(v154, v66);
          sub_1000E0A3C();
          if (DataProtocol.isNull.getter())
          {
            sub_100006654(v67, v66);
LABEL_38:
            if (qword_1016950D0 == -1)
            {
LABEL_39:
              v68 = type metadata accessor for Logger();
              sub_1000076D4(v68, qword_10177C418);

              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v69, v70))
              {
                v71 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                v153 = v72;
                *v71 = 141558275;
                *(v71 + 4) = 1752392040;
                *(v71 + 12) = 2081;
                v73 = (*&v28[v35] + *v17);
                v74 = v73[1];
                v154 = *v73;
                v155 = v74;
                sub_10002E98C(v154, v74);
                sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
                v75 = String.init<A>(describing:)();
                v77 = sub_1000136BC(v75, v76, &v153);

                *(v71 + 14) = v77;
                _os_log_impl(&_mh_execute_header, v69, v70, "Invalid serial number %{private,mask.hash}s!", v71, 0x16u);
                sub_100007BAC(v72);
              }

LABEL_42:
              *(v42 + 32) = 0;
              *v42 = 0u;
              *(v42 + 16) = 0u;
              sub_100016590(v158, v159);
              v78 = v160;
              v79 = v161;
LABEL_58:
              sub_100016590(v78, v79);
              return;
            }

LABEL_73:
            swift_once();
            goto LABEL_39;
          }

          v115 = Data.trimmed.getter();
          v117 = v116;
          v118 = *(*&v28[v35] + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
          if (*(v118 + 16))
          {
            v119 = *(*&v28[v35] + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);

            v120 = sub_100771E30(v115, v117);
            if (v121)
            {
              v122 = v142;
              sub_100E6A94C(*(v118 + 56) + *(v141 + 72) * v120, v142, type metadata accessor for MultipartAccessoryPairingInfo);

              v123 = v143;
              sub_100E6ADA4(v122, v143, type metadata accessor for MultipartAccessoryPairingInfo);
              v35 = a1;
              v154 = *(a1 + *(v140 + 48));
              sub_100102194();
              v148 = FixedWidthInteger.data.getter();
              v42 = v124;
              v142 = v115;
              v125 = v152[4];
              v126 = v152[8];
              v127 = v117;
              v128 = v144;
              sub_100A22DF0(v144);
              v129 = v145;
              sub_100AC5D4C(v128, v145);
              (*(v146 + 8))(v128, v147);
              v130 = sub_10110DFBC(v129, *v123);
              v132 = v131;
              sub_100016590(v142, v127);
              v133 = v67;
              v23 = v132;
              sub_100006654(v133, v66);
              sub_10000B3A8(v129, &unk_1016AF8B0, &unk_1013A0700);
              v134 = v123;
              v28 = v130;
              sub_100E6A9B4(v134, type metadata accessor for MultipartAccessoryPairingInfo);
LABEL_44:
              if (qword_1016950D0 == -1)
              {
LABEL_45:
                v80 = type metadata accessor for Logger();
                sub_1000076D4(v80, qword_10177C418);
                v81 = v148;
                sub_10002E98C(v148, v42);
                v82 = Logger.logObject.getter();
                v83 = static os_log_type_t.default.getter();
                sub_100006654(v81, v42);
                v84 = os_log_type_enabled(v82, v83);
                v147 = v28;
                if (v84)
                {
                  v85 = v23;
                  v86 = swift_slowAlloc();
                  v87 = swift_slowAlloc();
                  v154 = v87;
                  *v86 = 136446210;
                  if (v42 >> 60 == 15)
                  {
                    v88 = 0;
                    v89 = 0xE000000000000000;
                  }

                  else
                  {
                    v88 = Data.hexString.getter();
                    v89 = v90;
                  }

                  v91 = sub_1000136BC(v88, v89, &v154);

                  *(v86 + 4) = v91;
                  _os_log_impl(&_mh_execute_header, v82, v83, "pairingEpoch: %{public}s", v86, 0xCu);
                  sub_100007BAC(v87);

                  v28 = v147;
                  v23 = v85;
                }

                else
                {
                }

                sub_10002E98C(v28, v23);
                v92 = Logger.logObject.getter();
                v93 = static os_log_type_t.default.getter();
                sub_100006654(v28, v23);
                v94 = os_log_type_enabled(v92, v93);
                v146 = v42;
                if (v94)
                {
                  v95 = swift_slowAlloc();
                  v96 = swift_slowAlloc();
                  v154 = v96;
                  *v95 = 136446210;
                  if (v23 >> 60 == 15)
                  {
                    v97 = 0;
                    v98 = 0xE000000000000000;
                  }

                  else
                  {
                    v97 = Data.hexString.getter();
                    v98 = v100;
                  }

                  v99 = v23;
                  v101 = sub_1000136BC(v97, v98, &v154);

                  *(v95 + 4) = v101;
                  _os_log_impl(&_mh_execute_header, v92, v93, "companionPairingEpochs: %{public}s", v95, 0xCu);
                  sub_100007BAC(v96);
                }

                else
                {
                  v99 = v23;
                }

                v102 = v152;
                swift_beginAccess();
                sub_10001F280((v102 + 22), &v154);
                v103 = v156;
                v104 = v157;
                v152 = sub_1000035D0(&v154, v156);
                v105 = *(v35 + 56);
                v145 = *(v35 + 48);
                v144 = v105;
                v106 = v160;
                v107 = v161;
                v108 = v158;
                v109 = v159;
                v143 = *(v104 + 48);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v111 = v149;
                v149[3] = AssociatedTypeWitness;
                v111[4] = swift_getAssociatedConformanceWitness();
                sub_1000280DC(v111);
                v139 = v104;
                v112 = v147;
                v113 = v146;
                v114 = v148;
                (v143)(v150, v151, v145, v144, v106, v107, v108, v109, v148, v146, v147, v99, v103, v139);
                sub_100006654(v112, v99);
                sub_100006654(v114, v113);
                sub_100007BAC(&v154);
                sub_100016590(v108, v109);
                v78 = v106;
                v79 = v107;
                goto LABEL_58;
              }

LABEL_70:
              swift_once();
              goto LABEL_45;
            }
          }

          if (qword_1016950D0 != -1)
          {
            swift_once();
          }

          v135 = type metadata accessor for Logger();
          sub_1000076D4(v135, qword_10177C418);
          v136 = Logger.logObject.getter();
          v137 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            *v138 = 0;
            _os_log_impl(&_mh_execute_header, v136, v137, "Missing partId info in finalizePairingPayload!", v138, 2u);
          }

          sub_100006654(v67, v66);
          sub_100016590(v115, v117);

          goto LABEL_42;
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      __break(1u);
    }

    else if (!v43)
    {
      v44 = BYTE6(v34);
      goto LABEL_17;
    }

    LODWORD(v44) = HIDWORD(v32) - v32;
    if (__OFSUB__(HIDWORD(v32), v32))
    {
      __break(1u);
      goto LABEL_72;
    }

    v44 = v44;
    goto LABEL_17;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177C418);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Unable to decode masked apple ID", v40, 2u);
  }

  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
}

uint64_t sub_100E4E128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v98 = a2;
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnedBeaconRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for String.Encoding();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = *(v2 + 80);
  v20 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v96 = v2;
  v97 = v19;
  v21 = (*(v19 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v22 = v21[1];
  if (v22 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v94 = v8;
  v95 = a1;
  v99[0] = *v21;
  v23 = v99[0];
  v99[1] = v22;
  v24 = v22;
  sub_100017D5C(v99[0], v22);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v23, v24);
LABEL_4:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177C418);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Invalid serial number.", v28, 2u);
    }

    sub_100E6259C();
    v29 = swift_allocError();
    *v30 = 1;
    *v98 = v29;
    sub_1000BC4D4(&qword_1016BCD48, &qword_1013EAD58);
    return swift_storeEnumTagMultiPayload();
  }

  v86 = v5;
  v87 = v4;
  v90 = v23;
  v85 = v24;
  v32 = Data.trimmed.getter();
  v34 = v33;
  sub_100017D5C(v32, v33);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_1000076D4(v35, qword_10177C418);
  sub_100017D5C(v32, v34);
  v92 = v36;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  sub_100016590(v32, v34);
  v39 = os_log_type_enabled(v37, v38);
  v93 = v16;
  v88 = v32;
  v89 = v34;
  v91 = v12;
  if (v39)
  {
    v84 = v13;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v99[0] = v41;
    *v40 = 141558275;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v42 = String.init(data:encoding:)();
    if (!v43)
    {
      v42 = Data.hexString.getter();
    }

    v44 = v42;
    v45 = v43;
    sub_100016590(v32, v34);
    v46 = sub_1000136BC(v44, v45, v99);

    *(v40 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "Creating beacon for %{private,mask.hash}s", v40, 0x16u);
    sub_100007BAC(v41);

    v47 = v91;
    v48 = v84;
  }

  else
  {
    v47 = v12;
    sub_100016590(v32, v34);

    v48 = v13;
  }

  v49 = *(*(v97 + v20) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  swift_bridgeObjectRetain_n();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v99[0] = v53;
    *v52 = 136315394;
    type metadata accessor for MultipartAccessoryPairingInfo(0);
    sub_100101BAC();
    v54 = Dictionary.description.getter();
    v56 = v48;
    v57 = sub_1000136BC(v54, v55, v99);

    *(v52 + 4) = v57;
    v48 = v56;
    *(v52 + 12) = 2048;
    v58 = *(v49 + 16);

    *(v52 + 14) = v58;
    v47 = v91;

    _os_log_impl(&_mh_execute_header, v50, v51, "All serials: %s. Count %ld", v52, 0x16u);
    sub_100007BAC(v53);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v59 = *(v97 + v20);
  v60 = *(v96 + 32);
  v61 = *(v96 + 64);
  v62 = *(v61 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8);
  if (v62)
  {
    v63 = *(v61 + OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName);
    v64 = *(v97 + v20);

    v65 = v62;
  }

  else
  {
    v66 = *(v61 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);
    v67 = *(v97 + v20);

    v68 = [v66 name];
    if (!v68)
    {
      v63 = 0;
      v65 = 0xE000000000000000;
      goto LABEL_25;
    }

    v69 = v68;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v70;
  }

LABEL_25:
  v71 = v94;
  sub_100A22DF0(v94);
  v72 = v93;
  sub_100B8BFA0(v93, v47, v95, v59, v63, v65, v71, v49);
  (*(v86 + 8))(v71, v87);

  v73 = *(v97 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_locationMonitor);
  v74 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v75 = *(v73 + v74);
  if (v75)
  {
    v76 = v72 + *(v48 + 20);
    v77 = type metadata accessor for Transaction();
    __chkstk_darwin(v77);
    *(&v84 - 32) = 0;
    *(&v84 - 3) = v75;
    *(&v84 - 2) = v76;
    *(&v84 - 1) = v60;
    v78 = v75;
    static Transaction.named<A>(_:with:)();
    sub_100016590(v88, v89);
    sub_100006654(v90, v85);

    v72 = v93;
  }

  else
  {
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Unable to retrieve current location from CL for pairing", v81, 2u);
    }

    sub_100006654(v90, v85);
    sub_100016590(v88, v89);
  }

  v82 = *(sub_1000BC4D4(&qword_1016973B8, &qword_1013EAD60) + 48);
  v83 = v98;
  sub_100E6ADA4(v72, v98, type metadata accessor for OwnedBeaconRecord);
  sub_100E6ADA4(v47, v83 + v82, type metadata accessor for OwnedBeaconGroup);
  sub_1000BC4D4(&qword_1016BCD48, &qword_1013EAD58);
  return swift_storeEnumTagMultiPayload();
}