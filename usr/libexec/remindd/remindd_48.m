uint64_t sub_10047AB5C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948120);
  v1 = sub_100006654(v0, qword_100948120);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10047AC24(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x44497463656A626FLL;
    v7 = 0x6D614E7473726966;
    v8 = 0x614E656C6464696DLL;
    if (a1 != 3)
    {
      v8 = 0x656D614E7473616CLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4E79616C70736964;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x73736572646461;
    v2 = 0x737574617473;
    if (a1 != 9)
    {
      v2 = 0x654C737365636361;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x66657250656D616ELL;
    v4 = 0x66667553656D616ELL;
    if (a1 != 6)
    {
      v4 = 0x656D616E6B63696ELL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10047AD9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10047AC24(*a1);
  v5 = v4;
  if (v3 == sub_10047AC24(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10047AE24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10047AC24(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10047AE88()
{
  sub_10047AC24(*v0);
  String.hash(into:)();
}

Swift::Int sub_10047AEDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10047AC24(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10047AF3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10047B0C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10047AF6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10047AC24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10047AFA8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10047B0C4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10047AFD8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1298, *a1);

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

uint64_t sub_10047B048@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1298, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_10047B0C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0900, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

id sub_10047B110(void *a1)
{
  v79 = 0;
  v3 = [a1 remObjectIDWithError:&v79];
  if (!v3)
  {
    v15 = v79;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v1;
  }

  v4 = v3;
  v5 = v79;
  v6 = [a1 account];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 remObjectID];

    if (v8)
    {
      v9 = [a1 list];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 remObjectID];

        if (v11)
        {
          v12 = [a1 displayName];
          if (v12)
          {
            v13 = v12;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v77 = v14;
          }

          else
          {
            v77 = 0;
          }

          v36 = [a1 firstName];
          if (v36)
          {
            v37 = v36;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;
          }

          else
          {
            v39 = 0;
          }

          v40 = [a1 middleName];
          if (v40)
          {
            v41 = v40;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          v75 = v11;
          v44 = [a1 lastName];
          if (v44)
          {
            v45 = v44;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;
          }

          else
          {
            v47 = 0;
          }

          v48 = [a1 namePrefix];
          if (v48)
          {
            v49 = v48;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          v52 = [a1 nameSuffix];
          if (v52)
          {
            v53 = v52;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = v54;
          }

          else
          {
            v74 = 0;
          }

          v55 = [a1 nickname];
          if (v55)
          {
            v56 = v55;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v57;
          }

          else
          {
            v73 = 0;
          }

          v58 = [a1 address];
          if (v58)
          {
            v59 = v58;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v71 = v60;
          }

          else
          {
            v71 = 0;
          }

          v61 = [a1 status];
          v68 = [a1 accessLevel];
          if (v77)
          {
            v72 = String._bridgeToObjectiveC()();

            v62 = v51;
            if (v39)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v72 = 0;
            v62 = v51;
            if (v39)
            {
LABEL_50:
              v70 = String._bridgeToObjectiveC()();

              if (v43)
              {
                goto LABEL_51;
              }

              goto LABEL_57;
            }
          }

          v70 = 0;
          if (v43)
          {
LABEL_51:
            v69 = String._bridgeToObjectiveC()();

            if (v47)
            {
              goto LABEL_52;
            }

            goto LABEL_58;
          }

LABEL_57:
          v69 = 0;
          if (v47)
          {
LABEL_52:
            v78 = String._bridgeToObjectiveC()();

            v63 = v75;
            if (v62)
            {
              goto LABEL_53;
            }

            goto LABEL_59;
          }

LABEL_58:
          v78 = 0;
          v63 = v75;
          if (v62)
          {
LABEL_53:
            v64 = String._bridgeToObjectiveC()();

            if (v74)
            {
LABEL_54:
              v76 = String._bridgeToObjectiveC()();

LABEL_61:
              if (v73)
              {
                v65 = String._bridgeToObjectiveC()();
              }

              else
              {
                v65 = 0;
              }

              v66 = v4;
              if (v71)
              {
                v67 = String._bridgeToObjectiveC()();
              }

              else
              {
                v67 = 0;
              }

              v1 = [objc_allocWithZone(REMSharee) initShareeWithObjectID:v66 accountID:v8 listID:v63 displayName:v72 firstName:v70 middleName:v69 lastName:v78 namePrefix:v64 nameSuffix:v76 nickname:v65 address:v67 status:v61 accessLevel:v68];

              return v1;
            }

LABEL_60:
            v76 = 0;
            goto LABEL_61;
          }

LABEL_59:
          v64 = 0;
          if (v74)
          {
            goto LABEL_54;
          }

          goto LABEL_60;
        }
      }
    }
  }

  v16 = [a1 account];
  if (v16)
  {
    v17 = v16;
    v1 = 0xE900000000000029;
  }

  else
  {
    if (qword_100936200 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100948120);
    v19 = v4;
    v17 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v4;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v17, v20, "REMShareeCDIngestor: cdSharee.account is nil {cdSharee.remObjectID: %@}", v21, 0xCu);
      sub_100039860(v22);
    }

    v1 = 0xE700000000000000;
  }

  v24 = [a1 list];
  if (v24)
  {
    v25 = v24;
  }

  else
  {

    if (qword_100936200 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_100948120);
    v27 = v4;
    v25 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v27;
      *v30 = v4;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v25, v28, "REMShareeCDIngestor: cdSharee.list is nil {cdSharee.remObjectID: %@}", v29, 0xCu);
      sub_100039860(v30);
    }

    v1 = 0xE400000000000000;
  }

  v32 = objc_opt_self();
  sub_100029EFC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = String._bridgeToObjectiveC()();

  [v32 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v34];

  swift_willThrow();
  return v1;
}

void sub_10047B95C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  *&v9 = __chkstk_darwin(v6).n128_u64[0];
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (!v12)
  {
    return;
  }

  v13 = (a3 + 32);
  v14 = (v8 + 8);
  while (1)
  {
    while (1)
    {
      v17 = *v13++;
      v16 = v17;
      if (v17 <= 4)
      {
        if (v16 <= 1)
        {
          if (v16)
          {
            isa = [a1 displayName];
            [a2 setDisplayName:isa];
          }

          else
          {
            v19 = [a1 objectID];
            v20 = [v19 uuid];

            static UUID._unconditionallyBridgeFromObjectiveC(_:)();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*v14)(v11, v6);
            [a2 setIdentifier:isa];
          }
        }

        else if (v16 == 2)
        {
          isa = [a1 firstName];
          [a2 setFirstName:isa];
        }

        else if (v16 == 3)
        {
          isa = [a1 middleName];
          [a2 setMiddleName:isa];
        }

        else
        {
          isa = [a1 lastName];
          [a2 setLastName:isa];
        }

        goto LABEL_4;
      }

      if (v16 <= 7)
      {
        if (v16 == 5)
        {
          isa = [a1 namePrefix];
          [a2 setNamePrefix:isa];
        }

        else if (v16 == 6)
        {
          isa = [a1 nameSuffix];
          [a2 setNameSuffix:isa];
        }

        else
        {
          isa = [a1 nickname];
          [a2 setNickname:isa];
        }

        goto LABEL_4;
      }

      if (v16 != 8)
      {
        break;
      }

      isa = [a1 address];
      [a2 setAddress:isa];
LABEL_4:

      if (!--v12)
      {
        return;
      }
    }

    if (v16 != 9)
    {
      break;
    }

    v18 = [a1 status];
    if (v18 < -32768)
    {
      goto LABEL_32;
    }

    if (v18 >= 0x8000)
    {
      goto LABEL_33;
    }

    [a2 setStatus:v18];
LABEL_29:
    if (!--v12)
    {
      return;
    }
  }

  v21 = [a1 accessLevel];
  if (v21 >= -32768)
  {
    if (v21 >= 0x8000)
    {
      goto LABEL_34;
    }

    [a2 setAccessLevel:v21];
    goto LABEL_29;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_10047BD20()
{
  result = qword_100948338;
  if (!qword_100948338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948338);
  }

  return result;
}

unint64_t sub_10047BDA8()
{
  result = qword_100948350;
  if (!qword_100948350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948350);
  }

  return result;
}

uint64_t sub_10047BDFC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948360);
  v1 = sub_100006654(v0, qword_100948360);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10047BEC4(void *a1, uint64_t a2)
{
  sub_10047C1BC();
  if (!a1[5])
  {
    if (qword_100936208 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100948360);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000668C(a1[2], a1[3], &v21);
      _os_log_impl(&_mh_execute_header, v5, v6, "os_transaction INIT {name: %{public}s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    v9 = a1[2];
    v10 = a1[3];
    String.utf8CString.getter();
    v11 = os_transaction_create();

    v12 = a1[5];
    a1[5] = v11;
    swift_unknownObjectRelease();
  }

  v13 = a1[4];
  v14 = __OFADD__(v13, a2);
  v15 = v13 + a2;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a1[4] = v15;
    if (qword_100936208 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100948360);

  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_10000668C(a1[2], a1[3], &v21);
    *(v18 + 12) = 2048;
    *(v18 + 14) = a1[4];

    _os_log_impl(&_mh_execute_header, oslog, v17, "RDTransactionRegistrar[%{public}s]: Transaction count incremented to {count: %ld}", v18, 0x16u);
    sub_10000607C(v19);
  }

  else
  {
  }
}

void sub_10047C1BC()
{
  v1 = v0;
  v2 = v0[4];
  if (v2 < 0)
  {
    if (qword_100936208 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100948360);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_10000668C(v1[2], v1[3], &v18);
      *(v10 + 12) = 2048;
      *(v10 + 14) = v1[4];

      _os_log_impl(&_mh_execute_header, v8, v9, "RDTransactionRegistrar[%{public}s]: Transaction count is negative {count: %ld}", v10, 0x16u);
      sub_10000607C(v11);
    }

    else
    {
    }

    v2 = v1[4];
    if (v1[5])
    {
LABEL_3:
      if (v2)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if (v0[5])
  {
    goto LABEL_3;
  }

  if (!v2)
  {
    return;
  }

  if (qword_100936208 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100948360);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_10000668C(v1[2], v1[3], &v18);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v1[4];

    _os_log_impl(&_mh_execute_header, v13, v14, "RDTransactionRegistrar[%{public}s]: Transaction count is not zero when osTransaction is nil {count: %ld}", v15, 0x16u);
    sub_10000607C(v16);

    if (!v1[5])
    {
      return;
    }
  }

  else
  {

    if (!v1[5])
    {
      return;
    }
  }

  if (v1[4])
  {
    return;
  }

LABEL_4:
  if (qword_100936208 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100948360);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10000668C(v1[2], v1[3], &v18);
    _os_log_impl(&_mh_execute_header, oslog, v4, "RDTransactionRegistrar[%{public}s]: Transaction count is zero when osTransaction is not nil", v5, 0xCu);
    sub_10000607C(v6);
  }

  else
  {
  }
}

void sub_10047C5BC(NSObject *a1, uint64_t a2)
{
  v4 = a1;
  sub_10047C1BC();
  isa = a1[4].isa;
  v6 = __OFSUB__(isa, a2);
  v7 = isa < a2;
  v8 = (isa - a2);
  if (v7)
  {
    if (qword_100936208 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100948360);

    v4 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136446722;
      *(v11 + 4) = sub_10000668C(a1[2].isa, a1[3].isa, &v23);
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1[4];

      *(v11 + 22) = 2048;
      *(v11 + 24) = a2;
      _os_log_impl(&_mh_execute_header, v4, v10, "RDTransactionRegistrar[%{public}s]: Trying to decrement counter to negative, grounding to zero {count: %ld, n: %ld}", v11, 0x20u);
      sub_10000607C(v12);

LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  a1[4].isa = v8;
  if (qword_100936208 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100948360);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_10000668C(a1[2].isa, a1[3].isa, &v23);
    *(v16 + 12) = 2048;
    *(v16 + 14) = a1[4];

    _os_log_impl(&_mh_execute_header, v14, v15, "RDTransactionRegistrar[%{public}s]: Transaction count decremented to {count: %ld}", v16, 0x16u);
    sub_10000607C(v17);

    if (a1[4].isa)
    {
      return;
    }
  }

  else
  {

    if (a1[4].isa)
    {
      return;
    }
  }

  if (a1[5].isa)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_10000668C(a1[2].isa, a1[3].isa, &v23);
      _os_log_impl(&_mh_execute_header, v18, v19, "os_transaction RELEASE {name: %{public}s}", v20, 0xCu);
      sub_10000607C(v21);
    }

    v22 = a1[5].isa;
    a1[5].isa = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10047C984()
{
  v1 = v0[3];

  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return swift_deallocClassInstance();
}

void sub_10047C9F0(void *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = objc_opt_self();
  v6 = [v5 fetchRequest];
  v7 = [v5 predicateForCloudKitAccountsWithKeyPathPrefix:0];
  [v6 setPredicate:v7];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100791300;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = 0x696669746E656469;
  *(v8 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = a1;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v11 = a1;
  v12 = Array._bridgeToObjectiveC()().super.isa;

  [v6 setAffectedStores:v12];

  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
  }

  else
  {
    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a2 = v14 != 0;
  }
}

void sub_10047CC28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v34[-v11];
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v34[-v18];
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v34[-v22];
  v37 = v2;
  v24 = [v2 mostRecentTargetTemplateIdentifier];
  v38 = v5;
  if (v24)
  {
    v25 = v24;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v38;
    (*(v38 + 56))(v23, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v23, 1, 1, v4);
  }

  v26 = *(v9 + 48);
  sub_10018E470(v23, v12);
  v36 = a1;
  sub_10018E470(a1, &v12[v26]);
  v27 = *(v5 + 48);
  if (v27(v12, 1, v4) == 1)
  {
    sub_1000050A4(v23, &unk_100939D90, "8\n\r");
    if (v27(&v12[v26], 1, v4) == 1)
    {
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      return;
    }
  }

  else
  {
    sub_10018E470(v12, v19);
    if (v27(&v12[v26], 1, v4) != 1)
    {
      v32 = v38;
      (*(v38 + 32))(v8, &v12[v26], v4);
      sub_100029FD8(&qword_10093A3E0, &type metadata accessor for UUID);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v32 + 8);
      v33(v8, v4);
      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      v33(v19, v4);
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      if (v35)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_1000050A4(v23, &unk_100939D90, "8\n\r");
    (*(v38 + 8))(v19, v4);
  }

  sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
LABEL_10:
  sub_10018E470(v36, v16);
  if (v27(v16, 1, v4) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v16, v4);
  }

  v29 = v37;
  [v37 setMostRecentTargetTemplateIdentifier:isa];

  v30 = [v29 createResolutionTokenMapIfNecessary];
  v31 = String._bridgeToObjectiveC()();
  [v30 updateForKey:v31];
}

void sub_10047D104(uint64_t a1, NSString a2, char a3)
{
  v7 = [v3 autoCategorizationLocalCorrectionsChecksum];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!a2)
  {

LABEL_12:
    [v3 setAutoCategorizationLocalCorrectionsChecksum:a2];

    if (a3)
    {
      v14 = [v3 createResolutionTokenMapIfNecessary];
      v15 = String._bridgeToObjectiveC()();
      [v14 updateForKey:v15];
    }

    return;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_12;
  }
}

uint64_t sub_10047D30C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948430);
  v1 = sub_100006654(v0, qword_100948430);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10047D3D4()
{
  v1 = *(v0 + 24);

  sub_1000536E0(v0 + 40);
  v2 = *(v0 + 56);
  sub_10003E114(*(v0 + 48));
  return v0;
}

uint64_t sub_10047D40C()
{
  sub_10047D3D4();

  return swift_deallocClassInstance();
}

uint64_t sub_10047D5E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_10047D610()
{
  sub_10047D5E0();

  return swift_deallocClassInstance();
}

uint64_t sub_10047D67C()
{
  countAndFlagsBits = v0->_countAndFlagsBits;
  _StringGuts.grow(_:)(31);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_100597C80(v0);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6669746E65646920;
  v4._object = 0xED0000203A726569;
  String.append(_:)(v4);
  String.append(_:)(v0[1]);
  v5._countAndFlagsBits = 0x3A72656461657220;
  v5._object = 0xE900000000000020;
  String.append(_:)(v5);
  object = v0[2]._object;
  v6 = *(countAndFlagsBits + 80);
  type metadata accessor for RDChannel.Reader();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7._countAndFlagsBits = 10558;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_10047D800(uint64_t a1)
{
  sub_1000F5104(&qword_1009485C8, qword_1007ABE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  KeyPath = swift_getKeyPath();
  v4 = sub_10004FAEC(a1);
  v5 = sub_1003EE368(KeyPath, v4);

  *(inited + 32) = v5;
  sub_100272424(inited);
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    v7 = _swiftEmptyArrayStorage[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0(_swiftEmptyArrayStorage);
}

uint64_t sub_10047D908@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 endDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10047D9AC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10012F78C(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setEndDate:isa];
}

void *sub_10047DAD8(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v43 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_30:
    v35 = v7;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v35;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v37 = v7;
      v11 = 0;
      v41 = a1 & 0xFFFFFFFFFFFFFF8;
      v42 = a1 & 0xC000000000000001;
      v12 = _swiftEmptyDictionarySingleton;
      v38 = xmmword_1007953F0;
      v40 = v10;
      while (1)
      {
        if (v42)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v41 + 16))
          {
            goto LABEL_27;
          }

          v7 = *(a1 + 8 * v11 + 32);
        }

        v15 = v7;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v17 = [v7 reminder];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 identifier];

          if (v19)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v20 = 0;
          }

          else
          {
            v20 = 1;
          }

          v22 = type metadata accessor for UUID();
          (*(*(v22 - 8) + 56))(v5, v20, 1, v22);
          sub_100100FB4(v5, v9);
        }

        else
        {
          v21 = type metadata accessor for UUID();
          (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
        }

        v24 = sub_1003645D8(v9);
        v25 = v12[2];
        v26 = (v23 & 1) == 0;
        v7 = (v25 + v26);
        if (__OFADD__(v25, v26))
        {
          goto LABEL_28;
        }

        v27 = v23;
        if (v12[3] < v7)
        {
          sub_10036E3BC(v7, 1);
          v12 = v43;
          v28 = sub_1003645D8(v9);
          if ((v27 & 1) != (v29 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v24 = v28;
        }

        if (v27)
        {
          sub_1001A4F9C(v9);
          v13 = (v12[7] + 8 * v24);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v14 = v40;
          if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v34 = *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v14 = v40;
          }

          v7 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v30 = swift_allocObject();
          *(v30 + 16) = v38;
          *(v30 + 32) = v15;
          v12[(v24 >> 6) + 8] |= 1 << v24;
          v7 = sub_100100FB4(v9, v12[6] + *(v39 + 72) * v24);
          *(v12[7] + 8 * v24) = v30;
          v31 = v12[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_29;
          }

          v12[2] = v33;
          v14 = v40;
        }

        ++v11;
        if (v16 == v14)
        {
          return v12;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_10047DEDC(uint64_t a1, void *a2)
{
  v2 = sub_10047D800(a1);
  sub_10047E410();
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  v34 = v3;
  [v3 setPredicate:v2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007ABB40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = swift_getKeyPath();
  *(inited + 96) = swift_getKeyPath();
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = swift_getKeyPath();
  v37 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 11, 0);
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v8 = inited & 0xC000000000000001;
  v9 = inited & 0xFFFFFFFFFFFFFF8;
  v10 = &type metadata for String;
  do
  {
    if (v8)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v11)
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(inited + 8 * v6 + 32);
    }

    v13 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = v13;
    v16 = v14;
    v36 = &type metadata for String;

    *&v35 = v15;
    *(&v35 + 1) = v16;
    v37 = v7;
    v18 = v7[2];
    v17 = v7[3];
    v3 = (v18 + 1);
    if (v18 >= v17 >> 1)
    {
      sub_100010D04((v17 > 1), v18 + 1, 1);
      v7 = v37;
    }

    ++v6;
    v7[2] = v3;
    sub_100005EE0(&v35, &v7[4 * v18 + 4]);
  }

  while (v6 != 11);
  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 setPropertiesToFetch:isa];

  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1007953F0;
  *(v8 + 32) = swift_getKeyPath();
  v37 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v21 = v37;
  if ((v8 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v22 = *(v8 + 32);

LABEL_14:
  v23 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v24)
  {
LABEL_23:
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v31._object = 0x80000001007EC120;
    v31._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v31);
    sub_1000F5104(&qword_1009460C0, qword_1007ABDC0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v10 = v23;
  v7 = v24;

  v9 = v21[2];
  v11 = v21[3];
  v3 = (v9 + 1);
  if (v9 >= v11 >> 1)
  {
LABEL_21:
    sub_100026EF4((v11 > 1), v3, 1);
    v21 = v37;
  }

  v21[2] = v3;
  v25 = &v21[2 * v9];
  v25[4] = v10;
  v25[5] = v7;
  swift_setDeallocating();
  v26 = *(v8 + 16);
  swift_arrayDestroy();
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v34 setRelationshipKeyPathsForPrefetching:v27];

  v28 = a2;
  v29 = NSManagedObjectContext.fetch<A>(_:)();
  if (v33)
  {
  }

  else
  {
    v28 = sub_10047DAD8(v29);
  }

  return v28;
}

unint64_t sub_10047E410()
{
  result = qword_100940C50;
  if (!qword_100940C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100940C50);
  }

  return result;
}

id sub_10047E4E0()
{
  result = [objc_opt_self() autoCategorization];
  qword_1009485D0 = result;
  return result;
}

void sub_10047E51C()
{
  v0 = [objc_opt_self() sharedConfiguration];
  v1 = [v0 autoCategorizationInputMaximumNumberOfRemindersPerBatch];

  qword_100974E98 = v1;
}

uint64_t sub_10047E578(void *a1, uint64_t a2)
{
  v5 = sub_1000F5104(&qword_100948700, &unk_1007ABFA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10048128C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v12[15] = 0;
  sub_1000F5104(&qword_10093F598, &qword_1007A2640);
  sub_100481534(&qword_100942168, &qword_100942170);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10047E764(uint64_t a1)
{
  v2 = sub_10048128C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10047E7A0(uint64_t a1)
{
  v2 = sub_10048128C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10047E7DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100481324(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_10047E82C(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v2[39] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[40] = v3;
  v4 = *(v3 - 8);
  v2[41] = v4;
  v5 = *(v4 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[44] = v6;
  v7 = *(v6 - 8);
  v2[45] = v7;
  v8 = *(v7 + 64) + 15;
  v2[46] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v2[47] = v9;
  v10 = *(v9 - 8);
  v2[48] = v10;
  v11 = *(v10 + 64) + 15;
  v2[49] = swift_task_alloc();

  return _swift_task_switch(sub_10047E9D8, 0, 0);
}

uint64_t sub_10047E9D8()
{
  v51 = v0;
  static os_signpost_type_t.begin.getter();
  if (qword_100936218 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 304);
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v1, v3);
  *(v0 + 400) = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog;
  swift_retain_n();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = qword_100948000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v10 = 136446978;
    *(v0 + 272) = v8;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_10000668C(v12, v13, &v50);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    v15 = *(v9 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_reminderIDs);
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v46 = *(v9 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_reminderIDs);
      }

      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = *(v0 + 304);

    *(v10 + 14) = v16;

    *(v10 + 22) = 2114;
    v18 = *(v17 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_listObjectID);
    *(v10 + 24) = v18;
    *v11 = v18;
    *(v10 + 32) = 2082;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v19 = v18;
    v20 = Array.description.getter();
    v22 = sub_10000668C(v20, v21, &v50);

    *(v10 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: Start execution {remindersCount:%ld listObjectID: %{public}@, reminderIDs: %{public}s}", v10, 0x2Au);
    sub_1000050A4(v11, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v7 = qword_100948000;
  }

  else
  {
    v23 = *(v0 + 304);
  }

  v24 = *(v0 + 368);
  v25 = *(v0 + 328);
  v48 = *(v0 + 320);
  v49 = *(v0 + 344);
  v26 = *(v0 + 296);
  v27 = *(v0 + 304);
  Date.init()();
  v28 = *(v27 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_listObjectID);
  *(v0 + 408) = v28;
  *(v0 + 416) = *(v27 + v7[188]);

  sub_1001A577C(v29);

  v30 = objc_allocWithZone(REMAutoCategorizationActivity);
  *(v0 + 424) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10018BA8C();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v32 = [v30 initWithListID:v28 reminderIDs:isa];
  *(v0 + 432) = v32;

  v33 = [objc_opt_self() defaultCenter];
  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(v0 + 248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 256) = v35;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1000060C8(0, &qword_1009486F0, REMAutoCategorizationActivity_ptr);
  *(inited + 72) = v32;
  v36 = v32;
  sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  v37 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v33 postNotificationName:@"RDAutoCategorizationOperationDidBeginNotification" object:v27 userInfo:v37];

  v38 = swift_allocObject();
  *(v0 + 440) = v38;
  *(v38 + 16) = v28;
  *(v38 + 24) = v26;
  *(v0 + 180) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v39 = *(v25 + 104);
  *(v0 + 448) = v39;
  *(v0 + 456) = (v25 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v39(v49);
  v40 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v41 = v28;
  v42 = v26;
  v43 = swift_task_alloc();
  *(v0 + 464) = v43;
  *v43 = v0;
  v43[1] = sub_10047EFB8;
  v44 = *(v0 + 344);
  v45 = *(v0 + 296);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 184, v44, sub_10033245C, v38, &_s9UtilitiesO40REMCDListThreadSafePartialRepresentationVN);
}

uint64_t sub_10047EFB8()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 440);
  v5 = *(*v1 + 344);
  v6 = *(*v1 + 328);
  v7 = *(*v1 + 320);
  v11 = *v1;
  v2[59] = v0;

  v8 = *(v6 + 8);
  v2[60] = v8;
  v2[61] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  if (v0)
  {
    v9 = sub_10047F50C;
  }

  else
  {
    v9 = sub_10047F158;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10047F158()
{
  v41 = v0;
  *(v0 + 152) = *(v0 + 216);
  *(v0 + 120) = *(v0 + 184);
  *(v0 + 136) = *(v0 + 200);
  *(v0 + 161) = *(v0 + 225);
  if (*(v0 + 152))
  {
    v2 = *(v0 + 448);
    v1 = *(v0 + 456);
    v3 = *(v0 + 180);
    v4 = *(v0 + 416);
    v5 = *(v0 + 336);
    v6 = *(v0 + 320);
    v7 = *(v0 + 296);
    v8 = swift_allocObject();
    *(v0 + 496) = v8;
    *(v8 + 16) = 100;
    *(v8 + 24) = 0;
    *(v8 + 32) = v4;
    *(v8 + 40) = v7;
    v2(v5, v3, v6);
    v9 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v10 = v7;
    v11 = swift_task_alloc();
    *(v0 + 504) = v11;
    v12 = sub_1000F5104(&qword_1009420F0, &qword_1007A24F0);
    *(v0 + 512) = v12;
    *v11 = v0;
    v11[1] = sub_10047F5E0;
    v13 = *(v0 + 336);
    v14 = *(v0 + 296);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 280, v13, sub_1003324CC, v8, v12);
  }

  else
  {
    v15 = *(v0 + 400);
    v16 = *(v0 + 304);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 416);
      v39 = *(v0 + 424);
      v20 = *(v0 + 408);
      v21 = *(v0 + 312);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      v40[1] = v21;
      *v22 = 136446722;
      swift_getMetatypeMetadata();
      v24 = String.init<A>(describing:)();
      v26 = sub_10000668C(v24, v25, v40);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2114;
      *(v22 + 14) = v20;
      *v23 = v20;
      *(v22 + 22) = 2082;
      v27 = v20;
      v28 = Array.description.getter();
      v30 = sub_10000668C(v28, v29, v40);

      *(v22 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s: Skipped auto-categorizing reminders because list should no longer categorize auto-categorization items {listObjectID: %{public}@, reminderIDs: %{public}s}", v22, 0x20u);
      sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    sub_100332478(v0 + 120);
    sub_100480404(*(v0 + 304), *(v0 + 368), *(v0 + 432), *(v0 + 312));
    v31 = *(v0 + 392);
    v33 = *(v0 + 360);
    v32 = *(v0 + 368);
    v35 = *(v0 + 344);
    v34 = *(v0 + 352);
    v36 = *(v0 + 336);

    (*(v33 + 8))(v32, v34);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_10047F50C()
{
  sub_100480404(*(v0 + 304), *(v0 + 368), *(v0 + 432), *(v0 + 312));
  v1 = *(v0 + 472);
  v2 = *(v0 + 392);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  v7 = *(v0 + 336);

  (*(v4 + 8))(v3, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10047F5E0()
{
  v2 = *(*v1 + 504);
  v3 = *(*v1 + 496);
  v4 = *(*v1 + 488);
  v5 = *(*v1 + 480);
  v6 = *(*v1 + 336);
  v7 = *(*v1 + 320);
  v10 = *v1;
  *(*v1 + 520) = v0;

  v5(v6, v7);

  if (v0)
  {
    v8 = sub_10047FC60;
  }

  else
  {
    v8 = sub_10047F77C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10047F77C()
{
  v48 = v0;
  *(v0 + 288) = *(v0 + 280);
  if (qword_100936220 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v4 = *(v0 + 512);
    sub_100481218();
    v5 = BidirectionalCollection<>.slices(by:)();
    *(v0 + 528) = v5;

    v6 = *(v5 + 16);
    *(v0 + 536) = v6;
    if (!v6)
    {
      break;
    }

    v7 = *(v0 + 304);
    v8 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_isListCategorization;
    *(v0 + 544) = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_queuedAt;
    *(v0 + 177) = *(v7 + v8);
    *(v0 + 560) = 1;
    *(v0 + 552) = 0;
    v9 = *(v0 + 528);
    if (!v9[2])
    {
      __break(1u);
      goto LABEL_36;
    }

    *(v0 + 568) = v9[4];
    v10 = v9[5];
    v1 = v9[6];
    v11 = v9[7];
    if (v11)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
        swift_unknownObjectRelease();
        v27 = _swiftEmptyArrayStorage;
      }

      v28 = v27[2];

      v2 = v11 >> 1;
      v29 = __OFSUB__(v11 >> 1, v1);
      v4 = (v11 >> 1) - v1;
      v3 = v29;
      if (!v29)
      {
        if (v28 == v4)
        {
          v13 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v13)
          {
LABEL_24:
            v13 = _swiftEmptyArrayStorage;
LABEL_25:
            swift_unknownObjectRelease();
          }

          *(v0 + 576) = v13;
          v30 = *(v0 + 400);
          v31 = *(v0 + 304);
          swift_retain_n();
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = *(v0 + 312);
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v47 = v36;
            *v35 = 136446722;
            *(v0 + 264) = v34;
            swift_getMetatypeMetadata();
            v37 = String.init<A>(describing:)();
            v39 = sub_10000668C(v37, v38, &v47);

            *(v35 + 4) = v39;
            *(v35 + 12) = 2048;
            *(v35 + 14) = 1;
            *(v35 + 22) = 2048;
            v40 = v13[2];

            *(v35 + 24) = v40;

            _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s: Batch number: %ld for remindersCount:%ld", v35, 0x20u);
            sub_10000607C(v36);
          }

          else
          {
          }

          v41 = *(v0 + 544);
          v42 = *(v0 + 304);
          v43 = swift_task_alloc();
          *(v0 + 584) = v43;
          *v43 = v0;
          v43[1] = sub_10047FD4C;
          v44 = *(v0 + 177);
          v45 = *(v0 + 296);
          v46 = *(v0 + 304);

          return sub_100323524(v13, v0 + 120, v44, v42 + v41, v45);
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      result = swift_unknownObjectRelease();
      if (v3)
      {
        goto LABEL_38;
      }

      goto LABEL_9;
    }

    v2 = v11 >> 1;
    v29 = __OFSUB__(v11 >> 1, v1);
    v4 = (v11 >> 1) - v1;
    v3 = v29;
    result = swift_unknownObjectRetain_n();
    if (v3)
    {
LABEL_38:
      __break(1u);
      return result;
    }

LABEL_9:
    if (!v4)
    {
      goto LABEL_24;
    }

    if (v4 < 1)
    {
      v13 = _swiftEmptyArrayStorage;
      if (v1 != v2)
      {
LABEL_12:
        swift_arrayInitWithCopy();
        goto LABEL_25;
      }
    }

    else
    {
      sub_1000F5104(&qword_100942F60, &qword_1007A39F0);
      v13 = swift_allocObject();
      v14 = j__malloc_size(v13);
      v13[2] = v4;
      v13[3] = 2 * ((v14 - 32) / 24);
      if (v1 != v2)
      {
        goto LABEL_12;
      }
    }

    swift_unknownObjectRelease();
    __break(1u);
LABEL_34:
    swift_once();
  }

  v15 = *(v0 + 528);
  v16 = *(v0 + 432);
  v17 = *(v0 + 368);
  v19 = *(v0 + 304);
  v18 = *(v0 + 312);

  sub_100332478(v0 + 120);
  sub_100480404(v19, v17, v16, v18);
  v20 = *(v0 + 392);
  v22 = *(v0 + 360);
  v21 = *(v0 + 368);
  v24 = *(v0 + 344);
  v23 = *(v0 + 352);
  v25 = *(v0 + 336);

  (*(v22 + 8))(v21, v23);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10047FC60()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 368);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  sub_100332478(v0 + 120);
  sub_100480404(v4, v2, v1, v3);
  v5 = *(v0 + 520);
  v6 = *(v0 + 392);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v10 = *(v0 + 344);
  v9 = *(v0 + 352);
  v11 = *(v0 + 336);

  (*(v8 + 8))(v7, v9);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10047FD4C()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  v2[74] = v0;

  v5 = v2[72];
  if (v0)
  {
    v6 = v2[66];

    v7 = sub_10048030C;
  }

  else
  {

    v7 = sub_10047FE94;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10047FE94()
{
  v50 = v0;
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 536);
  swift_unknownObjectRelease();
  if (v6 + 1 == v7)
  {
    v8 = *(v0 + 528);
    v9 = *(v0 + 432);
    v10 = *(v0 + 368);
    v12 = *(v0 + 304);
    v11 = *(v0 + 312);

    sub_100332478(v0 + 120);
    sub_100480404(v12, v10, v9, v11);
    v13 = *(v0 + 392);
    v15 = *(v0 + 360);
    v14 = *(v0 + 368);
    v17 = *(v0 + 344);
    v16 = *(v0 + 352);
    v18 = *(v0 + 336);

    (*(v15 + 8))(v14, v16);

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = v5 + 1;
  v22 = *(v0 + 552) + 1;
  *(v0 + 560) = v5 + 1;
  *(v0 + 552) = v22;
  v23 = *(v0 + 528);
  if (v22 >= *(v23 + 16))
  {
    goto LABEL_33;
  }

  v24 = (v23 + 32 * v22);
  *(v0 + 568) = v24[4];
  v25 = v24[5];
  v1 = v24[6];
  v26 = v24[7];
  if ((v26 & 1) == 0)
  {
    v2 = v26 >> 1;
    v31 = __OFSUB__(v26 >> 1, v1);
    v7 = (v26 >> 1) - v1;
    v3 = v31;
    result = swift_unknownObjectRetain_n();
    if (v3)
    {
LABEL_36:
      __break(1u);
      return result;
    }

    while (v7)
    {
      if (v7 < 1)
      {
        v27 = _swiftEmptyArrayStorage;
        if (v1 != v2)
        {
LABEL_14:
          swift_arrayInitWithCopy();
          goto LABEL_24;
        }
      }

      else
      {
        sub_1000F5104(&qword_100942F60, &qword_1007A39F0);
        v27 = swift_allocObject();
        v28 = j__malloc_size(v27);
        v27[2] = v7;
        v27[3] = 2 * ((v28 - 32) / 24);
        if (v1 != v2)
        {
          goto LABEL_14;
        }
      }

      swift_unknownObjectRelease();
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = swift_unknownObjectRelease();
      if (v3)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_23;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = _swiftEmptyArrayStorage;
  }

  v30 = v29[2];

  v2 = v26 >> 1;
  v31 = __OFSUB__(v26 >> 1, v1);
  v7 = (v26 >> 1) - v1;
  v3 = v31;
  if (v31)
  {
    goto LABEL_34;
  }

  if (v30 != v7)
  {
    goto LABEL_35;
  }

  v27 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v27)
  {
LABEL_23:
    v27 = _swiftEmptyArrayStorage;
LABEL_24:
    swift_unknownObjectRelease();
  }

  *(v0 + 576) = v27;
  v32 = *(v0 + 400);
  v33 = *(v0 + 304);
  swift_retain_n();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 312);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v37 = 136446722;
    *(v0 + 264) = v36;
    swift_getMetatypeMetadata();
    v39 = String.init<A>(describing:)();
    v41 = sub_10000668C(v39, v40, &v49);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v21;
    *(v37 + 22) = 2048;
    v42 = v27[2];

    *(v37 + 24) = v42;

    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s: Batch number: %ld for remindersCount:%ld", v37, 0x20u);
    sub_10000607C(v38);
  }

  else
  {
  }

  v43 = *(v0 + 544);
  v44 = *(v0 + 304);
  v45 = swift_task_alloc();
  *(v0 + 584) = v45;
  *v45 = v0;
  v45[1] = sub_10047FD4C;
  v46 = *(v0 + 177);
  v47 = *(v0 + 296);
  v48 = *(v0 + 304);

  return sub_100323524(v27, v0 + 120, v46, v44 + v43, v47);
}

uint64_t sub_10048030C()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 432);
  v3 = *(v0 + 368);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  sub_100332478(v0 + 120);
  swift_unknownObjectRelease();
  sub_100480404(v5, v3, v2, v4);
  v6 = *(v0 + 592);
  v7 = *(v0 + 392);
  v9 = *(v0 + 360);
  v8 = *(v0 + 368);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v12 = *(v0 + 336);

  (*(v9 + 8))(v8, v10);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100480404(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = a3;
  v7 = type metadata accessor for OSSignpostID();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a2, v10, v13);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v40 = v20;
    v42 = swift_slowAlloc();
    v47 = v42;
    v48 = a4;
    *v19 = 136446978;
    swift_getMetatypeMetadata();
    v21 = String.init<A>(describing:)();
    v41 = v17;
    v23 = sub_10000668C(v21, v22, &v47);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2114;
    v24 = *(a1 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_listObjectID);
    *(v19 + 14) = v24;
    *v20 = v24;
    *(v19 + 22) = 2082;
    v25 = *(a1 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_reminderIDs);
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v26 = v24;
    v27 = Array.description.getter();
    v29 = sub_10000668C(v27, v28, &v47);

    *(v19 + 24) = v29;
    *(v19 + 32) = 2050;
    Date.rem_elapsedInMilliseconds.getter();
    v31 = v30;
    (*(v11 + 8))(v15, v10);
    *(v19 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v16, v41, "%{public}s: Finished execution {listObjectID: %{public}@, reminderIDs: %{public}s, elapsedSeconds: %{public}f}", v19, 0x2Au);
    sub_1000050A4(v40, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v7 = v43;
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  v32 = [objc_opt_self() defaultCenter];
  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v34;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1000060C8(0, &qword_1009486F0, REMAutoCategorizationActivity_ptr);
  v35 = v44;
  *(inited + 72) = v44;
  v36 = v35;
  sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v32 postNotificationName:@"RDStoreControllerManagedObjectContextNotificationTransactionAuthorKey" object:a1 userInfo:isa];

  static os_signpost_type_t.end.getter();
  if (qword_100936218 != -1)
  {
    swift_once();
  }

  v38 = v45;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v46 + 8))(v38, v7);
}

uint64_t sub_100480978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100480A3C, 0, 0);
}

uint64_t sub_100480A3C()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v29 = *(v1 + 16);
    v2 = *(v1 + 24);
  }

  else
  {
    v3 = _REMGetLocalizedString();
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v4;
  }

  v0[9] = v2;
  v5 = v0[4];
  v6 = *(v5 + 16);
  v28 = v2;
  if (v6)
  {
    v7 = v0[7];
    v8 = (v0[8] + *(v0[6] + 24));
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);

    v11 = _swiftEmptyArrayStorage;
    do
    {
      v13 = v0[8];
      sub_100193AB0(v9, v13);
      v14 = *v8;
      v15 = v8[1];

      sub_10033529C(v13);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100365788(0, *(v11 + 2) + 1, 1, v11);
        }

        v17 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v17 >= v16 >> 1)
        {
          v11 = sub_100365788((v16 > 1), v17 + 1, 1, v11);
        }

        *(v11 + 2) = v17 + 1;
        v12 = &v11[16 * v17];
        *(v12 + 4) = v14;
        *(v12 + 5) = v15;
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v18 = v0[5];
  v19 = sub_1001A5660(v11);
  v0[10] = v19;

  v20 = *(v18 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType + 24);
  v21 = *(v18 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType + 32);
  sub_10000F61C((v18 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType), v20);
  v22 = *(v21 + 8);
  v27 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[11] = v24;
  *v24 = v0;
  v24[1] = sub_100480CE4;
  v25 = v0[2];

  return v27(v29, v28, v25, v19, v20, v21);
}

uint64_t sub_100480CE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_100480E94;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_100480E0C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100480E0C()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_100480E94()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_100480F0C()
{
  v1 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_reminderIDs);

  v4 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_queuedAt;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_10000607C((v0 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList()
{
  result = qword_100948630;
  if (!qword_100948630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10048107C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100481180(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000FCBFC;

  return sub_10047E82C(a1);
}

unint64_t sub_100481218()
{
  result = qword_1009486F8;
  if (!qword_1009486F8)
  {
    sub_1000F514C(&qword_1009420F0, &qword_1007A24F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009486F8);
  }

  return result;
}

unint64_t sub_10048128C()
{
  result = qword_100948708;
  if (!qword_100948708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948708);
  }

  return result;
}

uint64_t sub_1004812E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMObjectID_Codable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100481324(uint64_t *a1)
{
  v3 = sub_1000F5104(&qword_100948710, &qword_1007ABFB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000F61C(a1, v8);
  sub_10048128C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000F5104(&qword_10093F598, &qword_1007A2640);
    v10[7] = 0;
    sub_100481534(&qword_100942180, &qword_100942188);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

uint64_t sub_100481534(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093F598, &qword_1007A2640);
    sub_1004812E0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004815D0()
{
  result = qword_100948718;
  if (!qword_100948718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948718);
  }

  return result;
}

unint64_t sub_100481628()
{
  result = qword_100948720;
  if (!qword_100948720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948720);
  }

  return result;
}

unint64_t sub_100481680()
{
  result = qword_100948728;
  if (!qword_100948728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948728);
  }

  return result;
}

uint64_t sub_1004816D4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948730);
  v1 = sub_100006654(v0, qword_100948730);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Class sub_10048179C(uint64_t a1)
{
  v56 = a1;
  v3 = _s10PredicatesOMa(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
  *v6 = [v1 listID];
  v6[8] = [v1 includingSubtasks];
  v8 = [v1 includingCompleted];
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v10 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  if (!v8)
  {
    v10 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  (*(*(v9 - 8) + 104))(&v6[v7], *v10, v9);
  swift_storeEnumTagMultiPayload();
  v11 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v53[1] = qword_100974E30;
    v12 = sub_100043AA8();
    v13 = [objc_allocWithZone(NSFetchRequest) init];
    v53[2] = v11;
    v14 = [swift_getObjCClassFromMetadata() entity];
    [v13 setEntity:v14];

    [v13 setAffectedStores:0];
    [v13 setPredicate:v12];

    [v13 setFetchLimit:0];
    v54 = v13;
    [v13 setFetchOffset:0];
    v15 = _swiftEmptyArrayStorage;
    v60 = _swiftEmptyArrayStorage;
    v16 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v63 = sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v18 = sub_100235FA0(Predicate);

    v19 = sub_100277CC0(v18);

    v11 = *(v19 + 16);
    v53[0] = v6;
    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_7:
    v62 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_43:
      swift_once();
      goto LABEL_27;
    }

    v20 = 0;
    v15 = v62;
    v57 = v11;
    v58 = v19 & 0xC000000000000001;
    while (1)
    {
      v6 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v58)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v19 + 16))
        {
          goto LABEL_20;
        }

        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v23)
      {
        goto LABEL_46;
      }

      v2 = v22;
      v11 = v23;

      v62 = v15;
      v25 = v15[2];
      v24 = v15[3];
      if (v25 >= v24 >> 1)
      {
        sub_100026EF4((v24 > 1), v25 + 1, 1);
        v15 = v62;
      }

      v15[2] = v25 + 1;
      v26 = &v15[2 * v25];
      v26[4] = v2;
      v26[5] = v11;
      ++v20;
      if (v6 == v57)
      {

        v6 = v53[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  v53[0] = v6;
  if (v11)
  {
    goto LABEL_7;
  }

LABEL_23:

LABEL_24:
  sub_100271EA8(v15);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = v54;
  [v54 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v28 setSortDescriptors:v29.super.isa];

  v30 = v55;
  v31 = NSManagedObjectContext.fetch<A>(_:)();
  v2 = v30;
  if (v30)
  {
    sub_10048AA6C(v6, _s10PredicatesOMa);

    return v29.super.isa;
  }

  v16 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v31);

  if (qword_100936228 != -1)
  {
    goto LABEL_43;
  }

LABEL_27:
  v32 = type metadata accessor for Logger();
  v33 = sub_100006654(v32, qword_100948730);
  v21 = v53;
  v60 = v16;
  __chkstk_darwin(v33);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  v34 = sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v58 = v34;
  v35 = Sequence.map<A>(skippingError:_:)();
  if (v2)
  {

    v36 = _swiftEmptyArrayStorage;
  }

  else
  {
    v36 = v35;
  }

  if (v36 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v37)
  {
LABEL_40:
    v43 = [objc_opt_self() defaultFetchOptions];
    sub_1003EBF14(v16, v43, v56);
    v46 = v45;

    v60 = v46;
    sub_1002722C4(v36);
    v47 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v48 = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v49 = Array._bridgeToObjectiveC()().super.isa;

    v50 = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v51 = Array._bridgeToObjectiveC()().super.isa;

    v29.super.isa = [v47 initWithAccountStorages:v48 listStorages:v49 reminderStorages:v50 objectIDs:v51];

    sub_10048AA6C(v53[0], _s10PredicatesOMa);
    return v29.super.isa;
  }

  v57 = v16;
  v60 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      ++v38;
      v41 = [v39 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = v60[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v37 != v38);
    v16 = v57;
    goto LABEL_40;
  }

  __break(1u);
LABEL_46:
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v52._object = 0x80000001007EC120;
  v52._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v52);
  v59 = v21;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Class sub_100482168(void *a1)
{
  v3 = _s10PredicatesOMa(0);
  v4 = *(*(v3 - 8) + 64);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 subtaskFetchOption];
  if (v8 == 1)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v14 = swift_allocObject();
  v52 = xmmword_1007953F0;
  *(v14 + 16) = xmmword_1007953F0;
  *(v14 + 32) = [v1 parentReminderID];
  *v7 = v14;
  *(v7 + v13) = v10;
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v45 = v1;
  v15 = [v1 accountID];
  v16 = [a1 persistentStoreOfAccountWithAccountID:v15];

  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v52;
    *(v17 + 32) = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v46 = qword_100974E30;
    v19 = sub_100043AA8();
    v20 = [objc_allocWithZone(NSFetchRequest) init];
    v21 = [swift_getObjCClassFromMetadata() entity];
    [v20 setEntity:v21];

    if (v17)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v22.super.isa = 0;
    }

    [v20 setAffectedStores:{v22.super.isa, v44}];

    [v20 setPredicate:v19];

    [v20 setFetchLimit:0];
    v47 = v20;
    [v20 setFetchOffset:0];
    v54 = _swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v57 = sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v24 = sub_100235FA0(Predicate);

    v17 = sub_100277CC0(v24);

    v25 = *(v17 + 16);
    v49 = a1;
    v50 = v7;
    if (!v25)
    {
      goto LABEL_33;
    }

LABEL_17:
    v56 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v25 & ~(v25 >> 63), 0);
    if (v25 < 0)
    {
      __break(1u);
LABEL_39:
      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v43._object = 0x80000001007EC120;
      v43._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v43);
      v53 = v13;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v44 = v18;
    v26 = 0;
    a1 = v56;
    v51 = v25;
    *&v52 = v17 & 0xC000000000000001;
    while (1)
    {
      v18 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v52)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v17 + 16))
        {
          goto LABEL_30;
        }

        v13 = *(v17 + 8 * v26 + 32);
      }

      v27 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v28)
      {
        goto LABEL_39;
      }

      v29 = v27;
      v30 = v28;

      v56 = a1;
      v7 = a1[2];
      v31 = a1[3];
      v13 = v7 + 1;
      if (v7 >= v31 >> 1)
      {
        sub_100026EF4((v31 > 1), v7 + 1, 1);
        a1 = v56;
      }

      a1[2] = v13;
      v32 = &a1[2 * v7];
      v32[4] = v29;
      v32[5] = v30;
      ++v26;
      if (v18 == v51)
      {

        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  v49 = a1;
  v50 = v7;
  if (v25)
  {
    goto LABEL_17;
  }

LABEL_33:

  a1 = _swiftEmptyArrayStorage;
LABEL_34:
  sub_100271EA8(a1);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v34 = v47;
  [v47 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v35.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v34 setSortDescriptors:v35.super.isa];

  v37 = v48;
  v36 = v49;
  v38 = NSManagedObjectContext.fetch<A>(_:)();
  if (v37)
  {
    sub_10048AA6C(v50, _s10PredicatesOMa);
  }

  else
  {
    v39 = v34;
    v40 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v38);

    v41 = [v45 reminderFetchOptions];
    v35.super.isa = sub_10048A0EC(v40, v41, v36);
    sub_10048AA6C(v50, _s10PredicatesOMa);
  }

  return v35.super.isa;
}

Class sub_1004828A8(uint64_t a1)
{
  v3 = v2;
  v5 = _s10PredicatesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  v12 = [v1 parentReminderIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v8 = v13;
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v8 + v11) = 2;
  swift_storeEnumTagMultiPayload();
  v14 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v39 = qword_100974E30;
    v15 = sub_100043AA8();
    v16 = [objc_allocWithZone(NSFetchRequest) init];
    v41 = v14;
    v17 = [swift_getObjCClassFromMetadata() entity];
    [v16 setEntity:v17];

    [v16 setAffectedStores:0];
    [v16 setPredicate:v15];

    [v16 setFetchLimit:0];
    v40 = v16;
    [v16 setFetchOffset:0];
    v45 = _swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v48 = sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v19 = sub_100235FA0(Predicate);

    v20 = sub_100277CC0(v19);

    v14 = *(v20 + 16);
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_5:
    v47 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
LABEL_27:
      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v35._object = 0x80000001007EC120;
      v35._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v35);
      v44 = a1;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v36 = v3;
    v37 = a1;
    v38 = v8;
    v21 = 0;
    v22 = v47;
    v42 = v14;
    v43 = v20 & 0xC000000000000001;
    while (1)
    {
      v3 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v43)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v20 + 16))
        {
          goto LABEL_18;
        }

        a1 = *(v20 + 8 * v21 + 32);
      }

      v23 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v24)
      {
        goto LABEL_27;
      }

      v25 = v23;
      v14 = v24;

      v47 = v22;
      v8 = v22[2];
      v26 = v22[3];
      a1 = v8 + 1;
      if (v8 >= v26 >> 1)
      {
        sub_100026EF4((v26 > 1), v8 + 1, 1);
        v22 = v47;
      }

      v22[2] = a1;
      v27 = &v22[2 * v8];
      v27[4] = v25;
      v27[5] = v14;
      ++v21;
      if (v3 == v42)
      {

        a1 = v37;
        v8 = v38;
        v3 = v36;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_21:

  v22 = _swiftEmptyArrayStorage;
LABEL_22:
  sub_100271EA8(v22);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = v40;
  [v40 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v30.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v29 setSortDescriptors:v30.super.isa];

  v31 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    sub_10048AA6C(v8, _s10PredicatesOMa);
  }

  else
  {
    v32 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v31);

    v33 = [objc_opt_self() defaultFetchOptions];
    v30.super.isa = sub_10048A0EC(v32, v33, a1);
    sub_10048AA6C(v8, _s10PredicatesOMa);
  }

  return v30.super.isa;
}

id sub_100482F14()
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v59 - v4;
  v74 = type metadata accessor for UUID();
  v6 = *(v74 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v74);
  v69 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10PredicatesOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v64 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _s10PredicatesO19CompletionPredicateOMa(0);
  v13 = *(*(v12 - 8) + 64);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v68 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v0 includeIncomplete];
  v17 = [v0 includeCompleted];
  if (v16)
  {
    v62 = v6;
    v65 = v1;
  }

  else
  {
    if ((v17 & 1) == 0)
    {
      v48 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      v50 = Array._bridgeToObjectiveC()().super.isa;
      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      v51 = Array._bridgeToObjectiveC()().super.isa;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v52 = Array._bridgeToObjectiveC()().super.isa;
      v26 = [v48 initWithAccountStorages:isa listStorages:v50 reminderStorages:v51 objectIDs:v52];

      return v26;
    }

    v62 = v6;
    v65 = v1;
  }

  v18 = v68;
  swift_storeEnumTagMultiPayload();
  v19 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
  v20 = *(v19 + 48);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007953F0;
  *(v21 + 32) = [v0 parentReminderID];
  v22 = v64;
  *v64 = v21;
  v23 = v22;
  sub_10048AA08(v18, v22 + v20);
  if ([v0 isUnsupported])
  {
    v24 = 6;
  }

  else
  {
    v24 = 2;
  }

  *(v23 + *(v19 + 64)) = v24;
  swift_storeEnumTagMultiPayload();
  v67 = objc_opt_self();
  v25 = [v67 cdEntityName];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v25];

  [v26 setResultType:2];
  v27 = sub_100043AA8();
  [v26 setPredicate:v27];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100791300;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 32) = 0x696669746E656469;
  *(v28 + 40) = 0xEA00000000007265;
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v26 setPropertiesToFetch:v29];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v30 = v65;
  v31 = NSManagedObjectContext.fetch<A>(_:)();
  v32 = v30;
  if (!v30)
  {
    v33 = v31;
    v78 = _swiftEmptyArrayStorage;
    if (v31 >> 62)
    {
LABEL_43:
      v66 = v33 & 0xFFFFFFFFFFFFFF8;
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v66 = v31 & 0xFFFFFFFFFFFFFF8;
      v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v26;
    v65 = v32;
    if (!v34)
    {
      v61 = _swiftEmptyArrayStorage;
      goto LABEL_39;
    }

    v26 = 0;
    v73 = v33 & 0xC000000000000001;
    v70 = (v62 + 6);
    v71 = (v62 + 7);
    v63 = (v62 + 4);
    v61 = _swiftEmptyArrayStorage;
    ++v62;
    v32 = v66;
    v72 = v33;
    while (1)
    {
      v23 = v26;
      while (1)
      {
        if (v73)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v32 + 16))
          {
            goto LABEL_42;
          }

          v35 = *(v33 + 8 * v23 + 32);
        }

        v36 = v35;
        v26 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        *&v75 = 0x696669746E656469;
        *(&v75 + 1) = 0xEA00000000007265;
        v37 = [v35 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v37)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v75 = 0u;
          v76 = 0u;
        }

        v77[0] = v75;
        v77[1] = v76;
        if (*(&v76 + 1))
        {
          break;
        }

        sub_1000050A4(v77, &qword_100939ED0, &qword_100791B10);
        (*v71)(v5, 1, 1, v74);
LABEL_18:
        sub_1000050A4(v5, &unk_100939D90, "8\n\r");

LABEL_19:
        ++v23;
        v33 = v72;
        if (v26 == v34)
        {
          v23 = v64;
          goto LABEL_39;
        }
      }

      v38 = v74;
      v39 = swift_dynamicCast();
      (*v71)(v5, v39 ^ 1u, 1, v38);
      if ((*v70)(v5, 1, v38) == 1)
      {
        goto LABEL_18;
      }

      v40 = v69;
      v41 = v5;
      v42 = v5;
      v43 = v74;
      (*v63)(v69, v41, v74);
      v44 = UUID._bridgeToObjectiveC()().super.isa;
      v45 = [v67 objectIDWithUUID:v44];

      v46 = v43;
      v5 = v42;
      v32 = v66;
      (*v62)(v40, v46);

      if (!v45)
      {
        goto LABEL_19;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v61 = v78;
      v23 = v64;
      v33 = v72;
      if (v26 == v34)
      {
LABEL_39:

        v53 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        v54 = Array._bridgeToObjectiveC()().super.isa;
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        v55 = Array._bridgeToObjectiveC()().super.isa;
        sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
        v56 = Array._bridgeToObjectiveC()().super.isa;
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v57 = Array._bridgeToObjectiveC()().super.isa;

        v26 = [v53 initWithAccountStorages:v54 listStorages:v55 reminderStorages:v56 objectIDs:v57];

        sub_10048AA6C(v23, _s10PredicatesOMa);
        sub_10048AA6C(v68, _s10PredicatesO19CompletionPredicateOMa);
        return v26;
      }
    }
  }

  sub_10048AA6C(v23, _s10PredicatesOMa);
  sub_10048AA6C(v68, _s10PredicatesO19CompletionPredicateOMa);
  return v26;
}

uint64_t sub_10048394C(uint64_t a1)
{
  v7 = v2;
  v160 = a1;
  v8 = type metadata accessor for RDPublicTemplate();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v156 = &v152 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v157 = v15;
  v158 = v16;
  v17 = v16[8];
  __chkstk_darwin(v15);
  v154 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v155 = &v152 - v20;
  v21 = _s10PredicatesOMa(0);
  v22 = *(*(v21 - 8) + 64);
  *&v23 = __chkstk_darwin(v21).n128_u64[0];
  v161 = (&v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = v1;
  v25 = [v1 objectIDs];
  v162 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_81:

    v127 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v129 = Array._bridgeToObjectiveC()().super.isa;
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    v130 = Array._bridgeToObjectiveC()().super.isa;
    v131 = Array._bridgeToObjectiveC()().super.isa;
    v26 = [v127 initWithAccountStorages:isa listStorages:v129 reminderStorages:v130 objectIDs:v131];

    return v26;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_81;
  }

LABEL_3:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_85:
      v132 = [v5 objectID];
      v133 = v152;
      v166 = sub_10013BE04(v132);

      __chkstk_darwin(v134);
      *(&v152 - 4) = v133;
      *(&v152 - 3) = v5;
      v151 = v21;
      v135 = v159;
      v31 = sub_100337810(_swiftEmptyArrayStorage, sub_10048A938, (&v152 - 6), v26);
      v159 = v135;
      if (v135)
      {
        v167(v155, v157);

        sub_10048AA6C(v152, type metadata accessor for RDPublicTemplate);
        return v26;
      }

LABEL_94:
      v165 = v31;

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v144 = swift_allocObject();
      v164 = xmmword_1007953F0;
      *(v144 + 16) = xmmword_1007953F0;
      *(v144 + 32) = v5;
      v145 = swift_allocObject();
      *(v145 + 16) = v164;
      v146 = v166;
      *(v145 + 32) = v166;
      v163 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
      v162 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      *&v164 = v5;
      v166 = v146;
      v147 = Array._bridgeToObjectiveC()().super.isa;

      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      v148 = Array._bridgeToObjectiveC()().super.isa;

      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      v149 = Array._bridgeToObjectiveC()().super.isa;

      v26 = [v163 initWithAccountStorages:v147 listStorages:v148 reminderStorages:v149 objectIDs:v3];

      v167(v155, v157);
      sub_10048AA6C(v152, type metadata accessor for RDPublicTemplate);
      return v26;
    }

    v28 = *(v26 + 32);
  }

  v168 = v28;

  v29 = [v163 objectIDs];
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v159 = v2;
  v153 = v21;
  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v31;
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = &selRef_accountStatusWithCompletionHandler_;
  v152 = v11;
  if (v32)
  {
    v33 = 0;
    v166 = (v30 & 0xFFFFFFFFFFFFFF8);
    v167 = (v30 & 0xC000000000000001);
    v165 = v30;
    *&v164 = v32;
    do
    {
      if (v167)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v166 + 2))
        {
          goto LABEL_68;
        }

        v31 = *(v30 + 8 * v33 + 32);
      }

      v3 = v31;
      v34 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v35 = [v31 v6[398]];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = v6;
      v5 = [v168 v6[398]];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (v36 == v11 && v38 == v41)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {

          if (qword_100936228 != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for Logger();
          sub_100006654(v67, qword_100948730);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&_mh_execute_header, v68, v69, "REMRemindersDataViewInvocation_fetchByObjectID: Failed due to attempt to fetch by 'objectIDs' with multiple entity names.", v70, 2u);
          }

          v26 = objc_opt_self();
          v71 = String._bridgeToObjectiveC()();
          [v26 invalidParameterErrorWithDescription:{v71, v152, v153}];

          swift_willThrow();
          return v26;
        }
      }

      ++v33;
      v32 = v164;
      v6 = v39;
      v30 = v165;
    }

    while (v34 != v164);
  }

  v5 = &selRef_isEmpty;
  v43 = [v163 fetchOptions];
  v44 = [v43 includeConcealed];

  v45 = [v168 v6[398]];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v165 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = [ObjCClassFromMetadata cdEntityName];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  if (v50 == v3 && v52 == v47)
  {

    goto LABEL_27;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
LABEL_27:

    v54 = [v163 objectIDs];
    v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = v161;
    *v161 = v55;
    *(v56 + 8) = v44;
    swift_storeEnumTagMultiPayload();
    v21 = v159;
    if (qword_100936080 != -1)
    {
      swift_once();
    }

    v7 = qword_100974E30;
    v57 = sub_100043AA8();
    v58 = [objc_allocWithZone(NSFetchRequest) init];
    v59 = [ObjCClassFromMetadata entity];
    [v58 setEntity:v59];

    [v58 setAffectedStores:0];
    [v58 setPredicate:v57];

    [v58 setFetchLimit:0];
    *&v164 = v58;
    [v58 setFetchOffset:0];
    v4 = _swiftEmptyArrayStorage;
    v171 = _swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v173 = sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v61 = sub_100235FA0(Predicate);

    v26 = sub_100277CC0(v61);

    if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v11 = *(v26 + 16);
      if (v11)
      {
LABEL_32:
        v162 = v7;
        v170 = _swiftEmptyArrayStorage;
        v32 = &v170;
        v31 = sub_100026EF4(0, v11 & ~(v11 >> 63), 0);
        if (v11 < 0)
        {
          __break(1u);
          goto LABEL_94;
        }

        v5 = 0;
        v4 = v170;
        v166 = v11;
        v167 = (v26 & 0xC000000000000001);
        while (1)
        {
          v33 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (v167)
          {
            v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *(v26 + 16))
            {
              __break(1u);
              goto LABEL_78;
            }

            v62 = *(v26 + 8 * v5 + 32);
          }

          v32 = v62;
          v63 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v64)
          {
            v171 = 0;
            v172 = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v150._countAndFlagsBits = 0xD00000000000002CLL;
            v150._object = 0x80000001007EC120;
            String.append(_:)(v150);
            v169 = v62;
            sub_1000F5104(&unk_100939F10, &qword_100797F30);
            _print_unlocked<A, B>(_:_:)();
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v6 = v63;
          v11 = v64;

          v170 = v4;
          v21 = *(v4 + 2);
          v65 = *(v4 + 3);
          v3 = (v21 + 1);
          if (v21 >= v65 >> 1)
          {
            v32 = &v170;
            v31 = sub_100026EF4((v65 > 1), v21 + 1, 1);
            v4 = v170;
          }

          *(v4 + 2) = v3;
          v66 = &v4[16 * v21];
          *(v66 + 4) = v6;
          *(v66 + 5) = v11;
          ++v5;
          if (v33 == v166)
          {

            v21 = v159;
            v5 = 0x100926000;
            goto LABEL_89;
          }
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

LABEL_89:
    sub_100271EA8(v4);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    v136 = Array._bridgeToObjectiveC()().super.isa;

    v137 = v164;
    [v164 setRelationshipKeyPathsForPrefetching:{v136, v152, v153}];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v26 = Array._bridgeToObjectiveC()().super.isa;
    [v137 setSortDescriptors:v26];

    v138 = v160;
    v139 = NSManagedObjectContext.fetch<A>(_:)();
    if (v21)
    {
      sub_10048AA6C(v161, _s10PredicatesOMa);
    }

    else
    {
      v140 = v138;
      v141 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v139);

      v142 = [v163 *(v5 + 3632)];
      v26 = sub_10048A0EC(v141, v142, v140);
      sub_10048AA6C(v161, _s10PredicatesOMa);
    }

    return v26;
  }

  v72 = v6;
  if (v3 == 0xD000000000000012 && 0x80000001007EFFC0 == v47)
  {

    goto LABEL_53;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v73)
  {
LABEL_53:
    v74 = v163;
    v75 = [v163 objectIDs];
    v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v77 = sub_10055BD54(v76, v44 ^ 1);
    type metadata accessor for REMCDSavedReminder();
    v26 = [objc_allocWithZone(NSFetchRequest) init];
    v78 = [swift_getObjCClassFromMetadata() entity];
    [v26 setEntity:v78];

    [v26 setAffectedStores:0];
    [v26 setPredicate:v77];

    [v26 setPropertiesToFetch:0];
    [v26 setRelationshipKeyPathsForPrefetching:0];
    v80 = v159;
    v79 = v160;
    v81 = NSManagedObjectContext.fetch<A>(_:)();
    if (v80)
    {
    }

    else
    {
      v82 = v81;

      v83 = [v74 fetchOptions];
      v26 = sub_10048A4B4(v82, v83, v79);
    }

    return v26;
  }

  v84 = [v168 v6[398]];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v85._countAndFlagsBits = 0xD00000000000001DLL;
  v85._object = 0x80000001007EC4D0;
  LOBYTE(v84) = String.hasPrefix(_:)(v85);

  if ((v84 & 1) == 0)
  {
LABEL_59:
    if (qword_100936228 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_100006654(v93, qword_100948730);
    v94 = v168;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v171 = v98;
      *v97 = 136446210;
      v99 = v6;
      v100 = v94;
      v101 = [v94 v72[398]];
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      v105 = sub_10000668C(v102, v104, &v171);

      *(v97 + 4) = v105;
      v94 = v100;
      _os_log_impl(&_mh_execute_header, v95, v96, "REMRemindersDataViewInvocation_fetchByObjectID: Failed due to attempt to fetch by 'objectIDs' with unexpected entity name {entityName: %{public}s}", v97, 0xCu);
      sub_10000607C(v98);
    }

    else
    {

      v99 = v6;
    }

    v26 = objc_opt_self();
    v171 = 0;
    v172 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v171 = 0xD000000000000024;
    v172 = 0x80000001007F97F0;
    v106 = [v94 v99[398]];
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    v110._countAndFlagsBits = v107;
    v110._object = v109;
    String.append(_:)(v110);

    v111._countAndFlagsBits = 125;
    v111._object = 0xE100000000000000;
    String.append(_:)(v111);
    v112 = String._bridgeToObjectiveC()();

    [v26 invalidParameterErrorWithDescription:v112];

    swift_willThrow();
    return v26;
  }

  v86 = [v168 v6[398]];
  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;

  v90 = String.count.getter();
  sub_10048A888(v90, v87, v89);

  static String._fromSubstring(_:)();

  v91 = v156;
  UUID.init(uuidString:)();

  v11 = v157;
  v92 = v158;
  if ((v158[6])(v91, 1, v157) == 1)
  {
    sub_1000050A4(v91, &unk_100939D90, "8\n\r");
    goto LABEL_59;
  }

  v113 = v155;
  (v92[4])(v155, v91, v11);
  type metadata accessor for REMCDTemplate();
  v3 = v92;
  v114 = swift_getObjCClassFromMetadata();
  v115 = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v114 objectIDWithUUID:v115];

  v116 = sub_100415C08();
  v117 = [(SEL *)v6 uuid];
  v118 = v154;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = v118;
  v119 = v159;
  v31 = sub_100415DE4(v118, v160, v116);
  v33 = v119;
  if (!v119)
  {
LABEL_70:
    v4 = v31;
    v120 = v5;
    v121 = v3[1];
    v158 = v3 + 1;
    v167 = v121;
    v121(v32, v11);

    v122 = v163;
    v3 = [v163 objectIDs];
    if (!v3)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = Array._bridgeToObjectiveC()().super.isa;
    }

    v123 = v33;
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = [v122 *(v120 + 3632)];
    if (qword_1009367D8 != -1)
    {
      swift_once();
    }

    v124 = sub_100013674(qword_1009752E8);
    if (!v124)
    {
LABEL_78:

      [objc_opt_self() noPrimaryActiveCloudKitAccountError];
      swift_willThrow();

      v167(v155, v157);
      return v26;
    }

    v7 = v124;
    v125 = sub_100019990(v124);
    v126 = v155;
    if (v123)
    {

      v167(v126, v157);
      return v26;
    }

    v5 = v125;
    v27 = sub_1006E8FC0(v152);
    v159 = 0;
    goto LABEL_85;
  }

  v26 = v3[1];
  (v26)(v32, v11);
  (v26)(v113, v11);
  return v26;
}

void sub_100485114(uint64_t a1)
{
  v3 = v1;
  v5 = _s10PredicatesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 predicateDescriptor];
  sub_1001CDF58(a1, 0);
  i = v11;

  if (v2)
  {
    return;
  }

  v13 = [v3 sortDescriptors];
  v14 = _swiftEmptyArrayStorage;
  v53 = 0;
  v54 = v9;
  v52 = a1;
  if (v13)
  {
    v15 = v13;
    v51 = i;
    v55 = v5;
    sub_1000060C8(0, &qword_100948748, REMReminderSortDescriptor_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v58 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        goto LABEL_48;
      }

      v9 = 0;
      v56 = v16 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v17 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v56 + 16))
          {
            goto LABEL_17;
          }

          v18 = *(v16 + 8 * v9 + 32);
        }

        v19 = v18;
        v20 = [v18 type];
        if (v20 >= 5)
        {
          goto LABEL_50;
        }

        v21 = *(&off_1008F3698 + v20);
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        swift_getKeyPath();
        [v19 ascending];
        NSSortDescriptor.init<A, B>(keyPath:ascending:)();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = v58[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v9;
        if (v17 == i)
        {

          v49 = v58;
          v9 = v54;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v49 = _swiftEmptyArrayStorage;
LABEL_20:
    v14 = _swiftEmptyArrayStorage;
    i = v51;
  }

  else
  {
    v49 = 0;
  }

  *v9 = i;
  *(v9 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v23 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v51 = i;
  v24 = sub_100043AA8();
  v25 = [objc_allocWithZone(NSFetchRequest) init];
  v50 = v23;
  v26 = [swift_getObjCClassFromMetadata() entity];
  [v25 setEntity:v26];

  [v25 setAffectedStores:0];
  [v25 setPredicate:v24];

  [v25 setFetchLimit:0];
  [v25 setFetchOffset:0];
  v58 = _swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100949370, &unk_100797770);
  sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
  Predicate = Sequence<>.postFetchPredicateTypes.getter();
  v61 = sub_1003EBAD0();
  sub_100271EA8(_swiftEmptyArrayStorage);
  v28 = sub_100235FA0(Predicate);

  v29 = sub_100277CC0(v28);

  if ((v29 & 0x8000000000000000) != 0 || (v29 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v30 = *(v29 + 16);
  if (!v30)
  {
LABEL_39:

    v31 = _swiftEmptyArrayStorage;
LABEL_40:
    sub_100271EA8(v31);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 setRelationshipKeyPathsForPrefetching:isa];

    v39 = v52;
    v40 = v53;
    if (v49)
    {
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v25 setSortDescriptors:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {

      sub_10048AA6C(v9, _s10PredicatesOMa);
    }

    else
    {
      v43 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v42);

      v44 = [objc_opt_self() defaultFetchOptions];
      sub_10048A0EC(v43, v44, v39);
      sub_10048AA6C(v9, _s10PredicatesOMa);
    }

    return;
  }

  while (1)
  {
    v48 = v25;
    v60 = v14;
    sub_100026EF4(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
      break;
    }

    v25 = 0;
    v31 = v60;
    v55 = v30;
    v56 = v29 & 0xC000000000000001;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v56)
      {
        i = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v29 + 16))
        {
          goto LABEL_37;
        }

        i = *(v29 + 8 * v25 + 32);
      }

      v32 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v33)
      {
        goto LABEL_49;
      }

      v34 = v32;
      v14 = v33;

      v60 = v31;
      v36 = v31[2];
      v35 = v31[3];
      i = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_100026EF4((v35 > 1), v36 + 1, 1);
        v31 = v60;
      }

      v31[2] = i;
      v37 = &v31[2 * v36];
      v37[4] = v34;
      v37[5] = v14;
      ++v25;
      if (v9 == v55)
      {

        v9 = v54;
        v25 = v48;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (!v30)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v45._object = 0x80000001007EC120;
  v45._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v45);
  v57 = i;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_50:
  if (qword_1009361E8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006654(v46, qword_100947FE8);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("unknown type", 12, 2);
  __break(1u);
}

void (**sub_1004859CC(void (**a1)(char *, uint64_t), SEL *a2))(char *, uint64_t)
{
  v5 = v2;
  v7 = _s10PredicatesOMa(0);
  v8 = *(*(v7 - 8) + 64);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [v5 *a2];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [v5 listObjectID];
  *v11 = v13;
  v11[1] = v14;
  swift_storeEnumTagMultiPayload();
  v15 = [v5 listObjectID];
  v16 = sub_1003F07EC(v11, v15, a1);
  if (v3)
  {
    sub_10048AA6C(v11, _s10PredicatesOMa);
  }

  else
  {
    v17 = v16;

    v15 = [objc_opt_self() defaultFetchOptions];
    a1 = sub_10048A0EC(v17, v15, a1);
    sub_10048AA6C(v11, _s10PredicatesOMa);
  }

  return a1;
}

id sub_100485BC0(void *a1)
{
  v3 = v1;
  v5 = _s10PredicatesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
  *v8 = [v3 listID];
  v8[8] = 1;
  v10 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  swift_storeEnumTagMultiPayload();
  v12 = sub_100043AA8();
  sub_10048AA6C(v8, _s10PredicatesOMa);
  if (([v3 includingCompleted] & 1) == 0)
  {
    sub_1000F5104(&qword_10093B980, qword_10079A3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    KeyPath = swift_getKeyPath();
    v15 = sub_1003EAA24(KeyPath);

    *(inited + 32) = v15;
    *(inited + 40) = v12;
    v12 = sub_10000C2B0(inited);
  }

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v16 = [objc_allocWithZone(NSFetchRequest) init];
  v17 = [swift_getObjCClassFromMetadata() entity];
  [v16 setEntity:v17];

  [v16 setAffectedStores:0];
  [v16 setPredicate:v12];
  v18 = a1;
  v19 = NSManagedObjectContext.count<A>(for:)();
  if (v2)
  {
  }

  else
  {
    v20 = v19;
    v18 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v21 = [objc_allocWithZone(NSNumber) initWithInteger:v20];
    [v18 storeProperty:v21 forKey:REMRemindersDataViewFetchRemindersCountResultKey];
  }

  return v18;
}

id sub_100485ED0()
{
  v2 = v1;
  v3 = _s10PredicatesOMa(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = [v0 parentReminderID];
  *v6 = v10;
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + v9) = 2;
  swift_storeEnumTagMultiPayload();
  v11 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];

  v14 = NSManagedObjectContext.count<A>(for:)();
  if (v1)
  {
    sub_10048AA6C(v6, _s10PredicatesOMa);
  }

  else
  {
    v15 = v14;
    v2 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v16 = [objc_allocWithZone(NSNumber) initWithInteger:v15];
    [v2 storeProperty:v16 forKey:REMRemindersDataViewFetchRemindersCountResultKey];

    sub_10048AA6C(v6, _s10PredicatesOMa);
  }

  return v2;
}

id sub_100486190()
{
  v2 = v1;
  v3 = _s10PredicatesOMa(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007953F0;
  *(v10 + 32) = [v0 parentReminderID];
  *v6 = v10;
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + v9) = [v0 includingConcealed];
  swift_storeEnumTagMultiPayload();
  v11 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  p_attr = &stru_100923FF8.attr;
  v13 = [objc_allocWithZone(NSFetchRequest) init];
  v14 = [swift_getObjCClassFromMetadata() entity];
  [v13 setEntity:v14];

  [v13 setAffectedStores:0];
  [v13 setPredicate:v11];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100791300;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = 0x6574656C706D6F63;
  *(v15 + 40) = 0xE900000000000064;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setPropertiesToFetch:isa];

  v17 = NSManagedObjectContext.fetch<A>(_:)();
  v33 = v1;
  if (!v1)
  {
    if (v17 >> 62)
    {
LABEL_19:
      v27 = v17;
      v18 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v27;
      if (v18)
      {
LABEL_5:
        v31 = v13;
        v32 = v6;
        v19 = 0;
        v20 = 0;
        p_attr = 0;
        v34 = v17 & 0xC000000000000001;
        v13 = (v17 & 0xFFFFFFFFFFFFFF8);
        v21 = v18;
        do
        {
          if (v34)
          {
            v22 = v17;
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= v13[2])
            {
              goto LABEL_18;
            }

            v22 = v17;
            v17 = *(v17 + 8 * v19 + 32);
          }

          v23 = v17;
          v24 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          v6 = [v17 completed];

          p_attr = (v6 ^ 1 | p_attr);
          v20 |= v6;
          ++v19;
          v17 = v22;
        }

        while (v24 != v21);
        if (v20)
        {
          v25 = 2;
        }

        else
        {
          v25 = 0;
        }

        v26 = p_attr & 1;
        v13 = v31;
        v6 = v32;
        p_attr = (&stru_100923FF8 + 8);
        goto LABEL_21;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v26 = 0;
    v25 = 0;
LABEL_21:

    v2 = [objc_allocWithZone(REMStoreInvocationResult) p_attr[424]];
    v28 = [objc_allocWithZone(NSNumber) initWithInteger:v25 | v26];
    [v2 storeProperty:v28 forKey:REMRemindersDataViewFetchReminderSubtasksMasksResultKey];

    sub_10048AA6C(v6, _s10PredicatesOMa);
    return v2;
  }

  sub_10048AA6C(v6, _s10PredicatesOMa);

  return v2;
}

uint64_t sub_1004865F0(uint64_t a1)
{
  v57 = _s10PredicatesOMa(0);
  v3 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v56 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10029B198(1, 0xA0u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v5];
  v60 = _swiftEmptySetSingleton;

  sub_100391940(v9);

  sub_1003FE4C4(v60);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v11 = *(inited + 16);
  swift_arrayDestroy();
  v12 = Array._bridgeToObjectiveC()().super.isa;
  [v7 setRelationshipKeyPathsForPrefetching:v12];

  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v15 = v13;
    v54 = a1;
    v55 = v5;
    v60 = _swiftEmptyArrayStorage;
    if (v13 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = REMCRMergeableOrderedSet_ptr;
      v59 = v1;
      v53 = v7;
      v18 = _swiftEmptyArrayStorage;
      if (i)
      {
        v19 = 0;
        v7 = (v15 & 0xC000000000000001);
        while (1)
        {
          if (v7)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v21 = *(v15 + 8 * v19 + 32);
          }

          v22 = v21;
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v64 = v21;
          v1 = v59;
          sub_100486EF4(&v64, v58, &v63);
          v59 = v1;

          if (v63)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v52 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v18 = v60;
          }

          ++v19;
          v20 = v23 == i;
          v17 = REMCRMergeableOrderedSet_ptr;
          if (v20)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
      }

      else
      {
LABEL_17:

        v7 = v56;
        *v56 = v18;
        v7[8] = 0;
        swift_storeEnumTagMultiPayload();
        v24 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        if (qword_100936080 != -1)
        {
          swift_once();
        }

        v51 = qword_100974E30;
        v25 = sub_100043AA8();
        v26 = [objc_allocWithZone(v17[406]) init];
        v27 = [swift_getObjCClassFromMetadata() entity];
        [v26 setEntity:v27];

        [v26 setAffectedStores:0];
        [v26 setPredicate:v25];

        [v26 setFetchLimit:0];
        [v26 setFetchOffset:0];
        v60 = _swiftEmptyArrayStorage;
        sub_1000F5104(&qword_100949370, &unk_100797770);
        sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
        Predicate = Sequence<>.postFetchPredicateTypes.getter();
        v62 = sub_1003EBAD0();
        sub_100271EA8(_swiftEmptyArrayStorage);
        v29 = sub_100235FA0(Predicate);

        v15 = sub_100277CC0(v29);

        if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
          v52 = v24;
          if (!v30)
          {
LABEL_40:

            v32 = _swiftEmptyArrayStorage;
LABEL_41:
            sub_100271EA8(v32);
            sub_1000F5104(&unk_10093B300, &unk_100797780);
            Array<A>.removeDuplicates()();
            v40 = Array._bridgeToObjectiveC()().super.isa;

            [v26 setRelationshipKeyPathsForPrefetching:v40];

            sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
            v14 = Array._bridgeToObjectiveC()().super.isa;
            [v26 setSortDescriptors:v14];

            v41 = v54;
            v42 = v59;
            v43 = NSManagedObjectContext.fetch<A>(_:)();
            v44 = v55;
            if (v42)
            {

              sub_10048AA6C(v7, _s10PredicatesOMa);
            }

            else
            {
              v45 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v43);

              v46 = [objc_opt_self() defaultFetchOptions];
              v14 = sub_10048A0EC(v45, v46, v41);
              sub_10048AA6C(v7, _s10PredicatesOMa);
            }

            return v14;
          }
        }

        else
        {
          v30 = *(v15 + 16);
          v52 = v24;
          if (!v30)
          {
            goto LABEL_40;
          }
        }

        v50 = v26;
        v64 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v30 & ~(v30 >> 63), 0);
        if (v30 < 0)
        {
          __break(1u);
LABEL_46:
          v60 = 0;
          v61 = 0xE000000000000000;
          _StringGuts.grow(_:)(46);
          v48._object = 0x80000001007EC120;
          v48._countAndFlagsBits = 0xD00000000000002CLL;
          String.append(_:)(v48);
          v63 = v30;
          sub_1000F5104(&unk_100939F10, &qword_100797F30);
          _print_unlocked<A, B>(_:_:)();
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v31 = 0;
        v32 = v64;
        v57 = v30;
        v58 = (v15 & 0xC000000000000001);
        while (1)
        {
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v58)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *(v15 + 16))
            {
              goto LABEL_37;
            }

            v30 = *(v15 + 8 * v31 + 32);
          }

          v34 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v35)
          {
            goto LABEL_46;
          }

          v36 = v34;
          v7 = v35;

          v64 = v32;
          v38 = v32[2];
          v37 = v32[3];
          if (v38 >= v37 >> 1)
          {
            sub_100026EF4((v37 > 1), v38 + 1, 1);
            v32 = v64;
          }

          v32[2] = v38 + 1;
          v39 = &v32[2 * v38];
          v39[4] = v36;
          v39[5] = v7;
          ++v31;
          if (v33 == v57)
          {

            v7 = v56;
            v26 = v50;
            goto LABEL_41;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }
  }

  v14 = v1;

  return v14;
}

void sub_100486EF4(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 alarm];
  if (v6 && (v7 = v6, v8 = [v6 reminder], v7, v8))
  {
    if (([a2 includingCompleted] & 1) != 0 || (objc_msgSend(v8, "completed") & 1) == 0)
    {
      v16 = [v8 remObjectID];

      goto LABEL_15;
    }
  }

  else
  {
    if (qword_100936228 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100948730);
    v10 = v5;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v10 remObjectID];
      if (!v15)
      {
        v15 = [objc_allocWithZone(NSNull) init];
      }

      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms: trigger without reminder {trigger REMObjectID: %@).", v13, 0xCu);
      sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
    }
  }

  v16 = 0;
LABEL_15:
  *a3 = v16;
}

Class sub_10048713C(uint64_t a1)
{
  v62 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s10PredicatesOMa(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
  v12 = [v1 batchCreationID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v3 + 32);
  v13 = v3 + 32;
  v14(v10, v6, v2);
  LODWORD(v12) = [v1 includingCompleted];
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v16 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  if (!v12)
  {
    v16 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  (*(*(v15 - 8) + 104))(&v10[v11], *v16, v15);
  swift_storeEnumTagMultiPayload();
  v17 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v59[1] = qword_100974E30;
    v18 = sub_100043AA8();
    v19 = [objc_allocWithZone(NSFetchRequest) init];
    v59[2] = v17;
    v20 = [swift_getObjCClassFromMetadata() entity];
    [v19 setEntity:v20];

    [v19 setAffectedStores:0];
    [v19 setPredicate:v18];

    [v19 setFetchLimit:0];
    v60 = v19;
    [v19 setFetchOffset:0];
    v21 = _swiftEmptyArrayStorage;
    v66 = _swiftEmptyArrayStorage;
    v22 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v69 = sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v24 = sub_100235FA0(Predicate);

    v25 = sub_100277CC0(v24);

    v17 = *(v25 + 16);
    v59[0] = v10;
    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_7:
    v68 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
LABEL_43:
      swift_once();
      goto LABEL_27;
    }

    v26 = 0;
    v21 = v68;
    v63 = v17;
    v64 = v25 & 0xC000000000000001;
    while (1)
    {
      v10 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v64)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v25 + 16))
        {
          goto LABEL_20;
        }

        v27 = *(v25 + 8 * v26 + 32);
      }

      v28 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v29)
      {
        goto LABEL_46;
      }

      v13 = v28;
      v17 = v29;

      v68 = v21;
      v31 = v21[2];
      v30 = v21[3];
      if (v31 >= v30 >> 1)
      {
        sub_100026EF4((v30 > 1), v31 + 1, 1);
        v21 = v68;
      }

      v21[2] = v31 + 1;
      v32 = &v21[2 * v31];
      v32[4] = v13;
      v32[5] = v17;
      ++v26;
      if (v10 == v63)
      {

        v10 = v59[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v59[0] = v10;
  if (v17)
  {
    goto LABEL_7;
  }

LABEL_23:

LABEL_24:
  sub_100271EA8(v21);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v34 = v60;
  [v60 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v35.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v34 setSortDescriptors:v35.super.isa];

  v36 = v61;
  v37 = NSManagedObjectContext.fetch<A>(_:)();
  v13 = v36;
  if (v36)
  {
    sub_10048AA6C(v10, _s10PredicatesOMa);

    return v35.super.isa;
  }

  v22 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v37);

  if (qword_100936228 != -1)
  {
    goto LABEL_43;
  }

LABEL_27:
  v38 = type metadata accessor for Logger();
  v39 = sub_100006654(v38, qword_100948730);
  v27 = v59;
  v66 = v22;
  __chkstk_darwin(v39);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  v40 = sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v64 = v40;
  v41 = Sequence.map<A>(skippingError:_:)();
  if (v13)
  {

    v42 = _swiftEmptyArrayStorage;
  }

  else
  {
    v42 = v41;
  }

  if (v42 >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v43)
  {
LABEL_40:
    v49 = [objc_opt_self() defaultFetchOptions];
    sub_1003EBF14(v22, v49, v62);
    v52 = v51;

    v66 = v52;
    sub_1002722C4(v42);
    v53 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v54 = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v55 = Array._bridgeToObjectiveC()().super.isa;

    v56 = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v57 = Array._bridgeToObjectiveC()().super.isa;

    v35.super.isa = [v53 initWithAccountStorages:v54 listStorages:v55 reminderStorages:v56 objectIDs:v57];

    sub_10048AA6C(v59[0], _s10PredicatesOMa);
    return v35.super.isa;
  }

  v63 = v22;
  v66 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v43 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v45 = *(v42 + 8 * v44 + 32);
      }

      v46 = v45;
      ++v44;
      v47 = [v45 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v48 = v66[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v43 != v44);
    v22 = v63;
    goto LABEL_40;
  }

  __break(1u);
LABEL_46:
  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v58._object = 0x80000001007EC120;
  v58._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v58);
  v65 = v27;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100487B90(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s10PredicatesOMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
  v13 = [v1 batchCreationID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(v11, v7, v3);
  v14 = [v1 includingCompleted];
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v16 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  if (!v14)
  {
    v16 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  (*(*(v15 - 8) + 104))(&v11[v12], *v16, v15);
  swift_storeEnumTagMultiPayload();
  v17 = sub_100043AA8();
  sub_10048AA6C(v11, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v18 = [objc_allocWithZone(NSFetchRequest) init];
  v19 = [swift_getObjCClassFromMetadata() entity];
  [v18 setEntity:v19];

  [v18 setAffectedStores:0];
  [v18 setPredicate:v17];

  v20 = a1;
  v21 = v26[1];
  v22 = NSManagedObjectContext.count<A>(for:)();
  if (v21)
  {
  }

  else
  {
    v23 = v22;
    v20 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v24 = [objc_allocWithZone(NSNumber) initWithInteger:v23];
    [v20 storeProperty:v24 forKey:REMRemindersDataViewFetchRemindersCountResultKey];
  }

  return v20;
}

Class sub_100487EE8(uint64_t a1)
{
  v3 = v2;
  isa = v1;
  v67 = a1;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v10 = &v63 - v9;
  v11 = _swiftEmptyArrayStorage;
  v75 = _swiftEmptyArrayStorage;
  sub_100023B44([(objc_class *)v1 allowConcealedObjects]);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v75[2] >= v75[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v11 = _swiftEmptyArrayStorage;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  KeyPath = swift_getKeyPath();
  v12 = [(objc_class *)v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = isa;
  v68 = v2;
  if (v14)
  {
    v72 = _swiftEmptyArrayStorage;
    sub_100253218(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v15 = 0;
    v16 = v72;
    v17 = v13;
    v70 = (v13 & 0xC000000000000001);
    v18 = v13;
    v19 = v14;
    do
    {
      if (v70)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v17 + 8 * v15 + 32);
      }

      v21 = v20;
      v22 = [v20 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
      v72 = v16;
      v25 = v16[2];
      v24 = v16[3];
      if (v25 >= v24 >> 1)
      {
        sub_100253218(v24 > 1, v25 + 1, 1);
        v16 = v72;
      }

      ++v15;
      v16[2] = v25 + 1;
      sub_100100FB4(v10, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25);
      v17 = v18;
    }

    while (v19 != v15);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100791340;
  v27 = sub_10030D838();
  *(v26 + 56) = &type metadata for String;
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  *(v26 + 88) = sub_1000F5104(&qword_100946088, &unk_1007A7690);
  *(v26 + 64) = v16;
  v29 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v30 = [objc_opt_self() predicateWithFormat:v29 argumentArray:isa];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v75[2] >= v75[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v31 = sub_10000C2B0(v66);
  v3 = sub_1000060C8(0, &unk_10093F790, off_1008D4158);
  v32 = [objc_allocWithZone(NSFetchRequest) init];
  v33 = [swift_getObjCClassFromMetadata() entity];
  [v32 setEntity:v33];

  [v32 setAffectedStores:0];
  KeyPath = v32;
  [v32 setPredicate:v31];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  v70 = (inited + 32);
  *(inited + 40) = swift_getKeyPath();
  v74 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  v11 = v74;
  v64 = inited & 0xFFFFFFFFFFFFFF8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v35 = *v70;
  }

  v36 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v37)
  {
    goto LABEL_44;
  }

  v38 = v36;
  v39 = v37;

  v41 = v11[2];
  v40 = v11[3];
  isa = (v41 + 1);
  if (v41 >= v40 >> 1)
  {
    sub_100026EF4((v40 > 1), v41 + 1, 1);
    v11 = v74;
  }

  v11[2] = isa;
  v42 = &v11[2 * v41];
  v42[4] = v38;
  v42[5] = v39;
  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*(v64 + 16) < 2uLL)
  {
    goto LABEL_41;
  }

  v35 = *(inited + 40);

LABEL_29:
  v43 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v44)
  {
    v45 = v43;
    v46 = v44;

    v74 = v11;
    v48 = v11[2];
    v47 = v11[3];
    if (v48 >= v47 >> 1)
    {
      sub_100026EF4((v47 > 1), v48 + 1, 1);
      v11 = v74;
    }

    v11[2] = v48 + 1;
    v49 = &v11[2 * v48];
    v49[4] = v45;
    v49[5] = v46;
    swift_setDeallocating();
    v50 = *(inited + 16);
    swift_arrayDestroy();

    v51.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v3 = KeyPath;
    [KeyPath setRelationshipKeyPathsForPrefetching:v51.super.isa];

    v52 = v68;
    v53 = NSManagedObjectContext.fetch<A>(_:)();
    v11 = v52;
    if (v52)
    {

      return v51.super.isa;
    }

    isa = v53;
    if (qword_100936228 == -1)
    {
LABEL_35:
      v54 = type metadata accessor for Logger();
      v55 = sub_100006654(v54, qword_100948730);
      v70 = &v63;
      __chkstk_darwin(v55);
      v68 = &v63;
      v72 = isa;
      __chkstk_darwin(v56);
      sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
      sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
      sub_10000CB90(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
      v57 = Sequence.map<A>(skippingError:_:)();
      if (v11)
      {

        v58 = _swiftEmptyArrayStorage;
      }

      else
      {
        v58 = v57;
      }

      sub_1001A603C(v58);

      v59 = objc_allocWithZone(REMAssignmentsDataViewInvocationResult);
      sub_10000CE28(&qword_100939230, &unk_10093F5F0, REMAssignment_ptr);
      v60 = Set._bridgeToObjectiveC()().super.isa;

      v51.super.isa = [v59 initWithAssignments:v60];

      return v51.super.isa;
    }

LABEL_43:
    swift_once();
    goto LABEL_35;
  }

LABEL_44:
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v62._object = 0x80000001007EC120;
  v62._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v62);
  v71 = v35;
  sub_1000F5104(&qword_100941DD8, &qword_1007A1FC0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1004888B0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

void sub_1004889DC(id *a1@<X0>, void *a2@<X1>, NSObject **a3@<X8>)
{
  v47 = a3;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v49 = &v46 - v18;
  v19 = *a1;
  v20 = [*a1 account];
  if (!v20 || (v21 = v20, v22 = [v20 remObjectID], v21, (v46 = v22) == 0))
  {
    v27 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = String._bridgeToObjectiveC()();
    [v27 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v29];

    swift_willThrow();
    return;
  }

  v23 = a2;
  if ([a2 allowConcealedObjects])
  {
    v24 = [v19 owningReminderIdentifier];
    if (v24)
    {
      v25 = v24;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = v50;
      (*(v50 + 56))(v8, 0, 1, v12);
    }

    else
    {
      v26 = v50;
      (*(v50 + 56))(v8, 1, 1, v12);
    }

    sub_100100FB4(v8, v11);
  }

  else
  {
    v30 = [v19 reminder];
    if (!v30 || (v31 = v30, v32 = [v30 remObjectID], v31, !v32))
    {
      (*(v50 + 56))(v11, 1, 1, v12);
LABEL_14:
      sub_1000050A4(v11, &unk_100939D90, "8\n\r");
      v36 = objc_opt_self();
      sub_1000060C8(0, &unk_10093F790, off_1008D4158);
      v37 = swift_getObjCClassFromMetadata();
      v38 = String._bridgeToObjectiveC()();
      [v36 unexpectedNilPropertyWithClass:v37 property:v38];

      swift_willThrow();
LABEL_17:

      return;
    }

    v33 = [v32 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v50;
    (*(v50 + 32))(v11, v15, v12);
    (*(v26 + 56))(v11, 0, 1, v12);
  }

  v34 = (*(v26 + 48))(v11, 1, v12);
  v35 = v49;
  if (v34 == 1)
  {
    goto LABEL_14;
  }

  (*(v26 + 32))(v49, v11, v12);
  v39 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v41 = [v39 objectIDWithUUID:isa];

  LODWORD(v39) = [v23 allowConcealedObjects];
  v42 = [v23 allowConcealedObjects];
  v43 = v48;
  v44 = sub_10030ED04(v19, v39, v42);
  if (v43)
  {
    (*(v26 + 8))(v35, v12);

    goto LABEL_17;
  }

  v45 = v44;
  (*(v26 + 8))(v35, v12);

  *v47 = v45;
}

Class sub_100488F4C(uint64_t *a1)
{
  v60 = a1;
  v2 = v1;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v4 = *(v3 - 8);
  v5 = v4[8];
  *&v6 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v8 = &v54 - v7;
  v66 = _swiftEmptyArrayStorage;
  sub_100023B44([v1 allowConcealedObjects]);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v66[2] >= v66[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  KeyPath = swift_getKeyPath();
  v56 = v1;
  v10 = [v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_15:

    v14 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_5:
  v63 = _swiftEmptyArrayStorage;
  sub_100253218(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v59 = KeyPath;
  v13 = 0;
  v14 = v63;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = [v15 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    v63 = v14;
    v2 = v14[2];
    v19 = v14[3];
    if (v2 >= v19 >> 1)
    {
      sub_100253218(v19 > 1, v2 + 1, 1);
      v14 = v63;
    }

    ++v13;
    v14[2] = v2 + 1;
    sub_100100FB4(v8, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + v4[9] * v2);
  }

  while (v12 != v13);

  KeyPath = v59;
LABEL_16:
  sub_1003E9F6C(KeyPath, v14);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v66[2] >= v66[3] >> 1)
  {
    v52 = v66[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v20 = sub_10000C2B0(v57);
  v21 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v22 = [objc_allocWithZone(NSFetchRequest) init];
  v58 = v21;
  v23 = [swift_getObjCClassFromMetadata() entity];
  [v22 setEntity:v23];

  [v22 setAffectedStores:0];
  v59 = v22;
  [v22 setPredicate:v20];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v65 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  KeyPath = v65;
  v4 = (inited & 0xC000000000000001);
  v55 = inited & 0xFFFFFFFFFFFFFF8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v25 = *(inited + 32);
  }

  v26 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v27)
  {
    goto LABEL_43;
  }

  v28 = v26;
  v29 = v27;

  v31 = KeyPath[2];
  v30 = KeyPath[3];
  v2 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    sub_100026EF4((v30 > 1), v31 + 1, 1);
    KeyPath = v65;
  }

  KeyPath[2] = v2;
  v32 = &KeyPath[2 * v31];
  v32[4] = v28;
  v32[5] = v29;
  if (v4)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*(v55 + 16) < 2uLL)
  {
    goto LABEL_40;
  }

  v25 = *(inited + 40);

LABEL_29:
  v33 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v34)
  {
    v35 = v33;
    v36 = v34;

    v65 = KeyPath;
    v38 = KeyPath[2];
    v37 = KeyPath[3];
    if (v38 >= v37 >> 1)
    {
      sub_100026EF4((v37 > 1), v38 + 1, 1);
      KeyPath = v65;
    }

    KeyPath[2] = v38 + 1;
    v39 = &KeyPath[2 * v38];
    v39[4] = v35;
    v39[5] = v36;
    swift_setDeallocating();
    v40 = *(inited + 16);
    swift_arrayDestroy();

    v41.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v4 = v59;
    [v59 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = v61;
    v43 = NSManagedObjectContext.fetch<A>(_:)();
    KeyPath = v42;
    if (v42)
    {

      return v41.super.isa;
    }

    v2 = v43;
    if (qword_100936228 == -1)
    {
LABEL_35:
      v44 = type metadata accessor for Logger();
      v45 = sub_100006654(v44, qword_100948730);
      v61 = &v54;
      __chkstk_darwin(v45);
      v60 = &v54;
      v63 = v2;
      __chkstk_darwin(v46);
      sub_1000F5104(&qword_10094F560, &qword_1007AC6A0);
      sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
      sub_10000CB90(&unk_10093D0C0, &qword_10094F560, &qword_1007AC6A0);
      v47 = Sequence.map<A>(skippingError:_:)();
      if (KeyPath)
      {

        v48 = _swiftEmptyArrayStorage;
      }

      else
      {
        v48 = v47;
      }

      sub_1001A606C(v48);

      v49 = objc_allocWithZone(REMHashtagsDataViewInvocationResult);
      sub_10000CE28(&qword_10093AA28, &unk_10093F600, REMHashtag_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v41.super.isa = [v49 initWithHashtags:isa];

      return v41.super.isa;
    }

LABEL_42:
    swift_once();
    goto LABEL_35;
  }

LABEL_43:
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v53._object = 0x80000001007EC120;
  v53._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v53);
  v62 = v25;
  sub_1000F5104(&unk_10093D020, qword_1007A3230);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100489820(id *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  *&v10 = __chkstk_darwin(v7).n128_u64[0];
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [*a1 account];
  if (v14 && (v15 = v14, v16 = [v14 remObjectID], v15, v16))
  {
    sub_100489A94([a2 allowConcealedObjects], v12);
    if (v3)
    {
    }

    else
    {
      v25 = a3;
      v17 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v19 = [v17 objectIDWithUUID:isa];

      v23 = sub_1003AC4B8(v13, [a2 allowConcealedObjects]);
      (*(v8 + 8))(v12, v7);

      *v25 = v23;
    }
  }

  else
  {
    v20 = objc_opt_self();
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = String._bridgeToObjectiveC()();
    [v20 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v22];

    swift_willThrow();
  }
}

uint64_t sub_100489A94@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v25 - v13;
  if (a1 & 1) != 0 && ([v3 markedForDeletion])
  {
LABEL_5:
    v16 = [v3 reminderIdentifier];
    if (v16)
    {
      v17 = v16;
LABEL_7:
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      return (*(v7 + 32))(a2, v14, v6);
    }

    goto LABEL_11;
  }

  v15 = [v3 sharedToMeReminderCKIdentifier];
  if (v15)
  {

    goto LABEL_5;
  }

  v19 = [v3 reminder];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 remObjectID];

    if (v21)
    {
      v17 = [v21 uuid];

      v14 = v10;
      goto LABEL_7;
    }
  }

LABEL_11:
  v22 = objc_opt_self();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = String._bridgeToObjectiveC()();
  [v22 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v24];

  return swift_willThrow();
}

void sub_100489D50(void **a1@<X0>, void *a2@<X1>, char *a3@<X2>, char **a4@<X8>)
{
  v8 = *a1;
  v9 = sub_1002B3180(*a1);
  if (!v4)
  {
    v10 = v9;
    if ([a2 includeDueDateDeltaAlerts])
    {
      v11 = [a2 includeConcealed];
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007953F0;
      *(inited + 32) = v8;
      v13 = v8;
      v14 = sub_100232618(inited, v11, a3);
      swift_setDeallocating();
      v15 = *(inited + 16);
      swift_arrayDestroy();
      sub_10031EB60(v14);

      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 setFetchedDueDateDeltaAlerts:isa];
    }

    *a4 = v10;
  }
}

void sub_100489ED0(void *a1, void **a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *a2;
  v10 = objc_autoreleasePoolPush();
  v11 = [a4 objectID];
  v12 = sub_10013C004(v9, v11, a5);
  if (v5)
  {

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v13 = v12;

    objc_autoreleasePoolPop(v10);
    v14 = v13;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = [v14 parentReminderID];
    if (v15)
    {
      v16 = v15;
      v22 = objc_autoreleasePoolPush();
      v17 = [a4 objectID];
      v18 = sub_10013C004(v16, v17, a5);

      objc_autoreleasePoolPop(v22);
      v19 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }
}

uint64_t sub_10048A0EC(unint64_t a1, void *a2, uint64_t a3)
{
  if (qword_100936228 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100006654(v7, qword_100948730);
  __chkstk_darwin(v8);
  v25 = a3;
  __chkstk_darwin(v9);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v10 = Sequence.map<A>(skippingError:_:)();
  if (v3)
  {

    v11 = _swiftEmptyArrayStorage;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    goto LABEL_15;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v12 != v14);
LABEL_15:
    sub_1003EBF14(a1, a2, v25);
    sub_1002722C4(v11);
    v19 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v21 = Array._bridgeToObjectiveC()().super.isa;

    v22 = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v23 = Array._bridgeToObjectiveC()().super.isa;

    v24 = [v19 initWithAccountStorages:isa listStorages:v21 reminderStorages:v22 objectIDs:v23];

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_10048A4B4(unint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for REMSavedReminderStorageCDIngestor();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  v8 = qword_100936228;
  v27 = a2;
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_100006654(v9, qword_100948730);
  v28 = a1;
  __chkstk_darwin(v10);
  sub_1000F5104(&qword_10093F3A8, qword_1007AC5F0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093F3B0, &qword_10093F3A8, qword_1007AC5F0);
  v11 = Sequence.map<A>(skippingError:_:)();
  if (v3)
  {

    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v26 = a3;
    v15 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      v18 = [v16 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v13 != v15);
    a3 = v26;
LABEL_16:
    sub_10055CC84(v28, v27, a3);
    sub_1002722C4(v12);
    v20 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v22 = Array._bridgeToObjectiveC()().super.isa;

    v23 = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v24 = Array._bridgeToObjectiveC()().super.isa;

    v25 = [v20 initWithAccountStorages:isa listStorages:v22 reminderStorages:v23 objectIDs:v24];

    swift_setDeallocating();
    return v25;
  }

  __break(1u);
  return result;
}

unint64_t sub_10048A888(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

id sub_10048A980@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_10050F83C(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10048AA08(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesO19CompletionPredicateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048AA6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10048AAE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948750);
  v1 = sub_100006654(v0, qword_100948750);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD00000000000003ALL;
  *(&v8 + 1) = 0x80000001007AC880;
  v4 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1000050A4(v10, &qword_100939ED0, &qword_100791B10);
LABEL_9:
    sub_10048ADCC(_.super.isa, metadata.super.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD00000000000003ALL;
    *(&v10[0] + 1) = 0x80000001007AC880;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

void sub_10048ADCC(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100936230 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100948750);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v36 = v11;
    *v10 = 136446210;
    v12 = sub_1003533B0();
    v14 = sub_10000668C(v12, v13, &v36);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "UnsetCKDirtyFlagsInNonCKAccounts BEGIN {store: %{public}s}", v10, 0xCu);
    sub_10000607C(v11);
  }

  *&v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v42 + 1) = v15;
  v16 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v36 = v42;
  v37 = v43;
  if (!*(&v43 + 1))
  {
LABEL_12:
    sub_1000050A4(&v36, &qword_100939ED0, &qword_100791B10);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v17 = v40;
    v18 = v41;
    v19 = objc_allocWithZone(NSManagedObjectContext);
    v20 = [v19 initWithConcurrencyType:{1, v36, v37}];
    v21 = [v7 persistentStoreCoordinator];
    [v20 setPersistentStoreCoordinator:v21];

    [v20 setTransactionAuthor:RDStoreControllerUnsetCKDirtyFlagsInNonCKAccountsMigrationAuthor];
    v22 = swift_allocObject();
    v22[2] = v3;
    v22[3] = v7;
    v22[4] = v20;
    v22[5] = v17;
    v22[6] = v18;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_10048B824;
    *(v23 + 24) = v22;
    v38 = sub_1000529DC;
    v39 = v23;
    *&v36 = _NSConcreteStackBlock;
    *(&v36 + 1) = 1107296256;
    *&v37 = sub_10000F160;
    *(&v37 + 1) = &unk_1008F3710;
    v24 = _Block_copy(&v36);
    v25 = v7;
    v26 = v3;
    v27 = v20;

    [v27 performBlockAndWait:v24];

    _Block_release(v24);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  v28 = v7;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v36 = v32;
    *v31 = 136446210;
    v33 = sub_1003533B0();
    v35 = sub_10000668C(v33, v34, &v36);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "UnsetCKDirtyFlagsInNonCKAccounts {store: %{public}s} accountIdentifier is nil, skip migration", v31, 0xCu);
    sub_10000607C(v32);
  }
}

void sub_10048B278(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v25[0])
  {
    if (qword_100936230 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100948750);
    v10 = a2;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v13 = 136446466;
      v14 = sub_1003533B0();
      v16 = sub_10000668C(v14, v15, v25);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_10000668C(a4, a5, v25);
      _os_log_impl(&_mh_execute_header, v11, v12, "UnsetCKDirtyFlagsInNonCKAccounts {store: %{public}s} with {account: %s} is not a CK account, skip migration", v13, 0x16u);
      swift_arrayDestroy();

LABEL_10:
    }
  }

  else
  {
    v24 = sub_10048B834(a3, a2);
    if (qword_100936230 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_100948750);
    v18 = a2;

    v11 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v20 = 136446722;
      v21 = sub_1003533B0();
      v23 = sub_10000668C(v21, v22, v25);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_10000668C(a4, a5, v25);
      *(v20 + 22) = 2048;
      *(v20 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v11, v19, "UnsetCKDirtyFlagsInNonCKAccounts END {store: %{public}s, migrated ckDirtyFlagsInNonCKAccounts, accountIdentifier = %s, count = %ld}", v20, 0x20u);
      swift_arrayDestroy();

      goto LABEL_10;
    }
  }
}

id RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10048B834(void *a1, void *a2)
{
  v3 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
  sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = 0;
  v6 = 0;
  v37 = *(v4 + 16);
  v7 = &selRef_accountStatusWithCompletionHandler_;
  v34 = v4;
  while (1)
  {
    if (v37 == v6)
    {
      goto LABEL_13;
    }

    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
    }

    v38 = v5;
    v8 = *(v4 + 8 * v6 + 32);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (([ObjCClassFromMetadata respondsToSelector:v7[146]] & 1) == 0)
    {
      goto LABEL_18;
    }

    v10 = [ObjCClassFromMetadata v7[146]];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = objc_allocWithZone(NSBatchUpdateRequest);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 initWithEntityName:v12];

    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100791340;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100006600();
    strcpy((v14 + 32), "ckDirtyFlags");
    *(v14 + 45) = 0;
    *(v14 + 46) = -5120;
    v15 = sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    *(v14 + 96) = v15;
    *(v14 + 104) = sub_10048BE3C();
    *(v14 + 72) = isa;
    v17 = NSPredicate.init(format:_:)();
    [v13 setPredicate:v17];

    sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    strcpy(&v41, "ckDirtyFlags");
    BYTE13(v41) = 0;
    HIWORD(v41) = -5120;
    AnyHashable.init<A>(_:)();
    v19.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    *(inited + 96) = v15;
    *(inited + 72) = v19;
    sub_10038ED74(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 setPropertiesToUpdate:v20];

    [v13 setIncludesSubentities:1];
    [v13 setResultType:2];
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007953F0;
    *(v21 + 32) = a2;
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v22 = v13;
    v23 = a2;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v22 setAffectedStores:v24];

    v39 = 0;
    v25 = [a1 executeRequest:v22 error:&v39];
    v26 = v39;
    if (!v25)
    {
      v32 = v39;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      return v5;
    }

    v27 = v25;
    *(&v42 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v41 = v27;
    sub_1000060C8(0, &qword_1009465A0, NSBatchUpdateResult_ptr);
    v28 = v26;
    throwingCast<A>(_:as:failureMessage:)();
    v4 = v34;
    if (v2)
    {
      break;
    }

    sub_10000607C(&v41);
    v29 = v40;
    if ([v40 result])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005EE0(&v40, &v41);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    throwingCast<A>(_:as:failureMessage:)();
    sub_1000050A4(&v41, &qword_100939ED0, &qword_100791B10);
    v30 = v39;
    v31 = [v39 integerValue];

    ++v6;
    v5 += v31;
    v7 = &selRef_accountStatusWithCompletionHandler_;
    if (__OFADD__(v38, v31))
    {
      __break(1u);
LABEL_13:

      return v5;
    }
  }

  sub_10000607C(&v41);
  return v5;
}

unint64_t sub_10048BE3C()
{
  result = qword_100948790;
  if (!qword_100948790)
  {
    sub_1000060C8(255, &qword_100938DE0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948790);
  }

  return result;
}

uint64_t sub_10048BEA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948798);
  v1 = sub_100006654(v0, qword_100948798);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10048BF6C()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 fileExistsAtPath:v2];

  return v3;
}

id sub_10048BFD8(uint64_t a1, char a2, Class isa)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v8 = v7;
  if (isa)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_10048CDD8(&qword_1009371F8, type metadata accessor for FileAttributeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v12 = 0;
  v9 = [v4 createDirectoryAtURL:v8 withIntermediateDirectories:a2 & 1 attributes:isa error:&v12];

  if (v9)
  {
    return v12;
  }

  v11 = v12;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_10048C11C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, Class a5)
{
  v8 = *v5;
  v9 = String._bridgeToObjectiveC()();
  if (a4 >> 60 == 15)
  {
    isa = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  if (a5)
  {
LABEL_5:
    type metadata accessor for FileAttributeKey(0);
    sub_10048CDD8(&qword_1009371F8, type metadata accessor for FileAttributeKey);
    a5 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  v11 = [v8 createFileAtPath:v9 contents:isa attributes:a5];

  return v11;
}

uint64_t sub_10048C21C()
{
  v1 = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for URL();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v32);
  v10 = __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v33[0] = 0x73656C6946;
  v33[1] = 0xE500000000000000;
  (*(v3 + 104))(v6, enum case for URL.DirectoryHint.isDirectory(_:), v2, v10);
  sub_10013BCF4();
  URL.appending<A>(path:directoryHint:)();
  (*(v3 + 8))(v6, v2);
  v13 = (v0 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v14 = *(v0 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 24);
  v15 = *(v0 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 32);
  sub_10000F61C(v13, v13[3]);
  (*(v15 + 16))(v12, 1, 0, v14, v15);
  v16 = v12;
  v17 = sub_10048C990();
  v19 = v18;
  v20 = v13[3];
  v21 = v13[4];
  sub_10000F61C(v13, v20);
  if (((*(v21 + 24))(v17, v19, 0, 0xF000000000000000, 0, v20, v21) & 1) == 0)
  {
    if (qword_100936238 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100948798);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), v33);
      *(v25 + 12) = 2080;
      v29 = sub_10000668C(v17, v19, v33);

      *(v25 + 14) = v29;
      v27 = "[%{public}s] Cannot create sentinel file at %s";
      goto LABEL_10;
    }

LABEL_11:

    return (*(v7 + 8))(v16, v32);
  }

  if (qword_100936238 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100948798);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v23, v24))
  {
    goto LABEL_11;
  }

  v25 = swift_slowAlloc();
  v33[0] = swift_slowAlloc();
  *v25 = 136446466;
  *(v25 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), v33);
  *(v25 + 12) = 2080;
  v26 = sub_10000668C(v17, v19, v33);

  *(v25 + 14) = v26;
  v27 = "[%{public}s] Created sentinel file at %s";
LABEL_10:
  _os_log_impl(&_mh_execute_header, v23, v24, v27, v25, 0x16u);
  swift_arrayDestroy();

  return (*(v7 + 8))(v16, v32);
}

uint64_t sub_10048C990()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v21 = &v20 - v11;
  v24 = 0x73656C6946;
  v25 = 0xE500000000000000;
  v12 = v2[13];
  v12(v5, enum case for URL.DirectoryHint.isDirectory(_:), v1);
  sub_10013BCF4();
  URL.appending<A>(path:directoryHint:)();
  v13 = v2[1];
  v13(v5, v1);
  v14 = *(v0 + 24);
  v24 = *(v0 + 16);
  v25 = v14;
  v12(v5, enum case for URL.DirectoryHint.notDirectory(_:), v1);

  v15 = v21;
  URL.appending<A>(path:directoryHint:)();
  v13(v5, v1);

  v16 = v23;
  v17 = *(v22 + 8);
  v17(v10, v23);
  countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
  v17(v15, v16);
  return countAndFlagsBits;
}

uint64_t sub_10048CC2C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_containerURL;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_10000607C(&v0[OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager]);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDSentinelFileLocation()
{
  result = qword_1009487E8;
  if (!qword_1009487E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10048CD34()
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

uint64_t sub_10048CDD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10048CE20()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009488A8);
  v1 = sub_100006654(v0, qword_1009488A8);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10048CEE8(uint64_t a1)
{
  v2 = v1;
  v271 = *v1;
  v270 = type metadata accessor for UUID();
  v266 = *(v270 - 8);
  v4 = *(v266 + 64);
  __chkstk_darwin(v270);
  v269 = v229 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v268 = v229 - v7;
  v279 = type metadata accessor for RDSavedReminder();
  v8 = *(*(v279 - 8) + 64);
  __chkstk_darwin(v279);
  v276 = v229 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v272 = v229 - v11;
  v12 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v281 = *(v12 - 8);
  v282 = v12;
  v13 = *(v281 + 64);
  __chkstk_darwin(v12);
  v280 = v229 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v274 = v229 - v16;
  v283 = _s9UtilitiesO12SortingStyleOMa();
  v17 = *(*(v283 - 1) + 64);
  __chkstk_darwin(v283);
  v19 = v229 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v284 = *(Subtasks - 8);
  v285 = Subtasks;
  v21 = v284[8];
  __chkstk_darwin(Subtasks);
  v23 = v229 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v265 = v229 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v267 = v229 - v29;
  __chkstk_darwin(v30);
  v264 = v229 - v31;
  __chkstk_darwin(v32);
  v273 = v229 - v33;
  __chkstk_darwin(v34);
  v275 = v229 - v35;
  __chkstk_darwin(v36);
  v38 = v229 - v37;
  if (qword_100936240 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_100006654(v39, qword_1009488A8);
  swift_retain_n();
  v277 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v287 = a1;
  v288 = v2;
  v286 = v24;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v278 = v38;
    *v44 = 138543874;
    v46 = v2[3];
    v47 = v288[4];
    *(v44 + 4) = v46;
    *(v44 + 12) = 2114;
    *(v44 + 14) = v47;
    *v45 = v46;
    v45[1] = v47;
    *(v44 + 22) = 2048;
    v48 = v46;
    v49 = v47;
    v2 = v288;

    *(v44 + 24) = 50;

    _os_log_impl(&_mh_execute_header, v41, v42, "RDTemplateOperationCopyRemindersFromTemplateToREMList: Start execution {templateObjectID: %{public}@, targetListObjectID: %{public}@, limitPerSave: %ld}", v44, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v38 = v278;

    v50 = v287;
  }

  else
  {

    v50 = a1;
  }

  Date.init()();
  v51 = v2[3];
  v53 = v284;
  v52 = v285;
  (v284[13])(v23, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v285);
  swift_storeEnumTagMultiPayload();
  v54 = v289;
  v55 = sub_100268564(v51, v50, v23, v19);
  v289 = v54;
  if (v54)
  {
    sub_1004909AC(v19, _s9UtilitiesO12SortingStyleOMa);
    (v53[1])(v23, v52);
    return (*(v25 + 8))(v38, v286);
  }

  v57 = v55;
  v283 = v51;
  sub_1004909AC(v19, _s9UtilitiesO12SortingStyleOMa);
  (v53[1])(v23, v52);
  v58 = *(v25 + 16);
  v59 = v286;
  v60 = v275;
  v253 = v25 + 16;
  v252 = v58;
  v58(v275, v38, v286);
  v61 = v57;
  swift_bridgeObjectRetain_n();

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  v64 = os_log_type_enabled(v62, v63);
  v263 = v25;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v284 = v66;
    v67 = swift_slowAlloc();
    v278 = v38;
    v68 = v67;
    v291 = v67;
    *v65 = 136446978;
    v290 = v271;
    swift_getMetatypeMetadata();
    v69 = String.init<A>(describing:)();
    v71 = v61;
    v72 = sub_10000668C(v69, v70, &v291);

    *(v65 + 4) = v72;
    *(v65 + 12) = 2114;
    v73 = v283;
    *(v65 + 14) = v283;
    *v66 = v73;
    *(v65 + 22) = 2048;
    v74 = v71[2];
    v75 = v73;

    *(v65 + 24) = v74;

    *(v65 + 32) = 2048;
    v76 = v273;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v78 = v77;
    v79 = *(v263 + 8);
    v285 = v79;
    v80 = v76;
    v61 = v71;
    v79(v80, v286);
    v79(v60, v286);
    *(v65 + 34) = v78;
    _os_log_impl(&_mh_execute_header, v62, v63, "%{public}s: Fetched reminders in template {templateObjectID: %{public}@, topLevelRemindersCount: %ld, elapsedSeconds: %f}", v65, 0x2Au);
    sub_1000050A4(v284, &unk_100938E70, &unk_100797230);

    sub_10000607C(v68);
    v81 = v286;
    v38 = v278;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v285 = *(v25 + 8);
    v285(v60, v59);
    v81 = v59;
  }

  v290 = v61;
  sub_1000F5104(&qword_100941B60, &qword_1007A1E48);
  sub_10048F8E0();
  v82 = BidirectionalCollection<>.slices(by:)();
  v83 = v288[4];
  v84 = v288[5];
  v290 = 0;
  v249 = v83;
  v85 = [v84 fetchListWithObjectID:? error:?];
  v86 = v61;
  if (!v85)
  {
    v96 = v290;

    v97 = _convertNSErrorToError(_:)();

    v289 = v97;
    swift_willThrow();
    return (v285)(v38, v81);
  }

  v87 = v85;
  v262 = v82;
  v260 = v86;
  v88 = v290;
  v271 = sub_10038EEC4(_swiftEmptyArrayStorage);
  v89 = [objc_allocWithZone(REMSaveRequest) initWithStore:v84];
  v251 = [v89 updateList:v87];
  v90 = [v251 sectionsContextChangeItem];
  v257 = v89;
  v244 = v84;
  if (v90)
  {
    v92 = v90;
    v93 = v283;
    v94 = v289;
    v95 = sub_10034AE0C(v283, v287, 0, 0);
    v289 = v94;
    if (v94)
    {

LABEL_79:
      v225 = v38;
      v226 = v81;
      goto LABEL_85;
    }

    v195 = v95;
    v196 = [v95 membershipsOfRemindersInSectionsAsData];
    if (v196)
    {
      v247 = v87;
      v197 = v196;
      v198 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v200 = v199;

      sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
      v201 = v289;
      static REMJSONRepresentable.fromJSONData(_:)();
      v289 = v201;
      if (v201)
      {
        sub_10001BBA0(v198, v200);

        v202 = &v279;
LABEL_78:

        goto LABEL_79;
      }

      sub_10001BBA0(v198, v200);
      v245 = v290;
      v87 = v247;
      v89 = v257;
      v93 = v283;
    }

    else
    {
      v245 = 0;
    }

    v220 = v289;
    v221 = sub_10048F944(v93, v89, v287, v92);
    v289 = v220;
    if (v220)
    {

LABEL_77:
      v202 = &v277;
      goto LABEL_78;
    }

    v222 = v221;
    v247 = v87;

    v271 = v222;
    v84 = v244;
  }

  else
  {
    v247 = v87;
    v245 = 0;
  }

  v98 = v271[2];
  if (v98 && !v260[2])
  {
    v290 = 0;
    v203 = [v89 saveSynchronouslyWithError:&v290];
    v204 = v290;
    if (!v203)
    {
      v223 = v290;

      v224 = _convertNSErrorToError(_:)();

      v289 = v224;
      swift_willThrow();

      goto LABEL_77;
    }

    v205 = v264;
    v252(v264, v38, v81);
    swift_retain_n();
    v206 = v204;
    v207 = Logger.logObject.getter();
    v208 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      *v209 = 134349826;
      *(v209 + 4) = v98;
      *(v209 + 12) = 2114;
      v211 = v283;
      *(v209 + 14) = v283;
      *(v209 + 22) = 2114;
      v212 = v249;
      *(v209 + 24) = v249;
      *v210 = v211;
      v210[1] = v212;
      *(v209 + 32) = 2048;
      v213 = v211;
      v214 = v212;
      v215 = v273;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v217 = v216;
      v218 = v215;
      v219 = v285;
      v285(v218, v81);
      v219(v205, v81);
      *(v209 + 34) = v217;
      _os_log_impl(&_mh_execute_header, v207, v208, "RDTemplateOperationCopyRemindersFromTemplateToREMList: Copied %{public}ld sections to target list {templateObjectID: %{public}@, targetListObjectID: %{public}@, elapsedSeconds: %f}", v209, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {

      v285(v205, v81);
    }

    v99 = 0;
    v89 = v257;
    v84 = v244;
  }

  else
  {
    v99 = 1;
  }

  v100 = *(v262 + 16);
  v101 = v282;
  if (!v100)
  {
LABEL_61:

    v181 = v265;
    v252(v265, v38, v81);
    swift_retain_n();
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      *v184 = 138544130;
      v186 = v283;
      *(v184 + 4) = v283;
      *(v184 + 12) = 2114;
      v187 = v249;
      *(v184 + 14) = v249;
      *v185 = v186;
      v185[1] = v187;
      LODWORD(v288) = v183;
      *(v184 + 22) = 2048;
      v188 = v186;
      v189 = v187;

      *(v184 + 24) = 50;

      *(v184 + 32) = 2048;
      v190 = v273;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v192 = v191;
      v193 = v190;
      v194 = v285;
      v285(v193, v81);
      v194(v181, v81);
      *(v184 + 34) = v192;
      _os_log_impl(&_mh_execute_header, v182, v288, "RDTemplateOperationCopyRemindersFromTemplateToREMList: Finished execution {templateObjectID: %{public}@, targetListObjectID: %{public}@, limitPerSave: %ld, elapsedSeconds: %f}", v184, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {

      v194 = v285;
      v285(v181, v81);
    }

    v194(v38, v81);
  }

  v236 = 0;
  v250 = 0;
  v102 = 0;
  v234 = v262 + 32;
  v264 = (v281 + 16);
  v240 = (v266 + 8);
  v266 = v281 + 8;
  v232 = v263 + 8;
  v233 = v99 ^ 1;
  *&v91 = 134219010;
  v230 = v91;
  v278 = v38;
  while (1)
  {
    if (v102 >= v100)
    {
      goto LABEL_94;
    }

    v103 = (v234 + 32 * v102);
    v104 = *v103;
    v243 = v103[1];
    v106 = v103[2];
    v105 = v103[3];
    v239 = v104;
    swift_unknownObjectRetain();
    v238 = objc_autoreleasePoolPush();
    v235 = v102;
    v107 = v233;
    if (v102)
    {
      v107 = 1;
    }

    v108 = (v107 & 1) != 0 ? [objc_allocWithZone(REMSaveRequest) initWithStore:v84] : v89;
    v284 = v108;
    v261 = [v108 updateList:v247];
    v241 = [v261 sectionsContextChangeItem];
    v109 = sub_10038EEC4(_swiftEmptyArrayStorage);
    v110 = v105 >> 1;
    if (v106 != v105 >> 1)
    {
      break;
    }

LABEL_29:
    v111 = v267;
    if (v245 && v271[2] && v109[2])
    {
      v112 = v245;
      v113 = v271;

      sub_1004901A8(v112, v113, v109, v241);
    }

    v290 = 0;
    v114 = [v284 saveSynchronouslyWithError:&v290];
    v115 = v290;
    if (!v114)
    {
      v227 = v290;
      v228 = _convertNSErrorToError(_:)();

      v289 = v228;
      swift_willThrow();

      goto LABEL_80;
    }

    v252(v111, v38, v81);
    swift_retain_n();
    v116 = v260;
    swift_bridgeObjectRetain_n();
    v117 = v115;
    v118 = Logger.logObject.getter();
    v119 = v111;
    v120 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v118, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *v121 = v230;
      *(v121 + 4) = v236;
      *(v121 + 12) = 2048;
      v123 = v119;
      v124 = v116[2];

      *(v121 + 14) = v124;

      *(v121 + 22) = 2114;
      v125 = v283;
      *(v121 + 24) = v283;
      *(v121 + 32) = 2114;
      v126 = v249;
      *(v121 + 34) = v249;
      *v122 = v125;
      v122[1] = v126;
      *(v121 + 42) = 2048;
      v127 = v125;
      v128 = v126;
      v129 = v273;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v131 = v130;
      v132 = v129;
      v133 = v285;
      v285(v132, v81);
      v134 = v123;
      v38 = v278;
      v133(v134, v81);
      *(v121 + 44) = v131;
      _os_log_impl(&_mh_execute_header, v118, v120, "RDTemplateOperationCopyRemindersFromTemplateToREMList: Copied %ld out of %ld top-level reminders to target list {templateObjectID: %{public}@, targetListObjectID: %{public}@, elapsedSeconds: %f}", v121, 0x34u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v101 = v282;

      v250 = v236;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v285(v119, v81);
    }

    v84 = v244;
    v102 = v235 + 1;
    objc_autoreleasePoolPop(v238);
    swift_unknownObjectRelease();
    v100 = *(v262 + 16);
    v89 = v257;
    if (v102 == v100)
    {
      goto LABEL_61;
    }
  }

  v236 = v250 + v110 - v106;
  if (v106 <= v110)
  {
    v135 = v105 >> 1;
  }

  else
  {
    v135 = v106;
  }

  v242 = v135;
  v136 = v272;
  v137 = v274;
  v237 = v110;
  while (1)
  {
    if (v106 == v242)
    {
      goto LABEL_92;
    }

    v138 = *(v281 + 72);
    v246 = v106;
    v255 = v138;
    v259 = *(v281 + 16);
    v259(v137, v243 + v138 * v106, v101);
    v139 = type metadata accessor for REMCDSavedReminder();
    v140 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v258 = v139;
    v141 = v289;
    sub_10055C8D4(v140, v287);
    v142 = v280;
    v289 = v141;
    if (v141)
    {
      (*v266)(v274, v101);

LABEL_83:
      v81 = v286;
      v38 = v278;
      goto LABEL_84;
    }

    v143 = v109;

    v256 = objc_opt_self();
    v144 = [v256 newObjectID];
    v145 = &v136[*(v279 + 56)];
    v146 = *v145;
    v147 = *(v145 + 1);
    v148 = String._bridgeToObjectiveC()();
    v149 = [v284 addReminderWithTitle:v148 toListChangeItem:v261 reminderObjectID:v144];

    v150 = v289;
    sub_10052EA40(v136, v149);
    v289 = v150;
    if (v150)
    {

      (*v266)(v274, v282);
      sub_1004909AC(v136, type metadata accessor for RDSavedReminder);

      goto LABEL_83;
    }

    v137 = v274;
    v151 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v152 = v287;
    v153 = v289;
    sub_10048EF38(v151, v287, v149);
    v289 = v153;
    if (v153)
    {
      break;
    }

    v154 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v155 = [v154 uuid];

    v275 = v149;
    v156 = v268;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v157 = [v275 objectID];
    v158 = [v157 uuid];

    v159 = v269;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v290 = v143;
    sub_1002C81B4(v159, v156, isUniquelyReferenced_nonNull_native);
    v161 = v275;
    (*v240)(v156, v270);
    v109 = v290;
    [v261 insertReminderChangeItem:v161 afterReminderChangeItem:0];
    [v152 reset];
    v162 = REMRemindersListDataView.ReminderLite.subtasks.getter();
    if (v162)
    {
      v163 = v162;
      v164 = [v161 subtaskContext];
      v101 = v282;
      if (v164)
      {
        v165 = v164;
        v166 = *(v163 + 16);
        v254 = v163;
        v248 = v166;
        if (v166)
        {
          v229[1] = v266 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v231 = v109;
          v167 = 0;
          v168 = v163;
          v169 = v276;
          while (v167 < *(v254 + 16))
          {
            v259(v142, v168 + ((*(v281 + 80) + 32) & ~*(v281 + 80)), v101);
            v170 = REMRemindersListDataView.ReminderLite.objectID.getter();
            sub_10055C8D4(v170, v287);

            v171 = [v256 newObjectID];
            v172 = &v169[*(v279 + 56)];
            v173 = *v172;
            v174 = *(v172 + 1);
            v175 = String._bridgeToObjectiveC()();
            v176 = [v284 addReminderWithTitle:v175 toReminderSubtaskContextChangeItem:v165 reminderObjectID:v171];

            sub_10052EA40(v169, v176);
            v142 = v280;
            v177 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v178 = v287;
            sub_10048EF38(v177, v287, v176);
            ++v167;

            [v165 insertReminderChangeItem:v176 afterReminderChangeItem:0];
            [v178 reset];

            v179 = *v266;
            v101 = v282;
            (*v266)(v142, v282);
            v169 = v276;
            sub_1004909AC(v276, type metadata accessor for RDSavedReminder);
            v168 += v255;
            if (v248 == v167)
            {
              v137 = v274;
              v109 = v231;
              goto LABEL_54;
            }
          }

          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
        }

        v179 = *v266;
LABEL_54:
        v179(v137, v101);
      }

      else
      {
        (*v266)(v137, v282);
      }

      v161 = v275;
    }

    else
    {
      v101 = v282;
      (*v266)(v137, v282);
    }

    v289 = 0;

    v136 = v272;
    sub_1004909AC(v272, type metadata accessor for RDSavedReminder);
    v180 = __OFADD__(v250++, 1);
    v89 = v257;
    if (v180)
    {
      goto LABEL_93;
    }

    v106 = v246 + 1;
    v81 = v286;
    if (v246 + 1 == v237)
    {
      v250 = v236;
      v38 = v278;
      goto LABEL_29;
    }
  }

  (*v266)(v137, v282);

  sub_1004909AC(v136, type metadata accessor for RDSavedReminder);

  v81 = v286;
  v38 = v278;
LABEL_80:
  v89 = v257;
LABEL_84:
  objc_autoreleasePoolPop(v238);

  swift_unknownObjectRelease();
  v225 = v38;
  v226 = v81;
LABEL_85:
  v285(v225, v226);
}

void sub_10048EF38(void *a1, int a2, id a3)
{
  v5 = v4;
  v73 = *v3;
  v8 = [a3 attachmentContext];
  if (v8)
  {
    v9 = v8;
    v72 = a3;
    type metadata accessor for REMCDSavedAttachment();
    v10 = sub_1005BE53C();
    v11 = sub_1005BDBEC(a1, 0);
    v12 = [objc_allocWithZone(NSFetchRequest) init];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [ObjCClassFromMetadata entity];
    [v12 setEntity:v14];

    [v12 setAffectedStores:0];
    [v12 setPredicate:v11];

    if (qword_100936668 != -1)
    {
LABEL_37:
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 setSortDescriptors:isa];

    sub_10003450C(v10);
    v16 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setPropertiesToFetch:v16];

    v17 = NSManagedObjectContext.fetch<A>(_:)();
    if (v5)
    {

      return;
    }

    v21 = v17;

    if (v21 >> 62)
    {
      goto LABEL_39;
    }

    v22 = v72;
    v71 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v71)
    {
LABEL_8:
      v70 = v21 & 0xC000000000000001;
      if ((v21 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_11;
      }

      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v21 + 32);
LABEL_11:
        v24 = v23;
        v25 = [v23 storeControllerManagedObjectContext];
        if (!v25)
        {

          v57 = objc_opt_self();
          v58 = String._bridgeToObjectiveC()();
          [v57 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v58];

          swift_willThrow();
          return;
        }

        v10 = v25;
        v69 = [v25 storeController];
        if (!v69)
        {

          v59 = objc_opt_self();
          v60 = String._bridgeToObjectiveC()();
          [v59 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v60];

          swift_willThrow();
          return;
        }

        v61 = v10;
        v62 = v24;
        v26 = 0;
        v63 = v21 & 0xFFFFFFFFFFFFFF8;
        v64 = v9;
        v68 = v21;
        while (1)
        {
          if (v70)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v26 >= *(v63 + 16))
            {
              __break(1u);
LABEL_39:
              v22 = v72;
              v71 = _CocoaArrayWrapper.endIndex.getter();
              if (!v71)
              {
                goto LABEL_40;
              }

              goto LABEL_8;
            }

            v28 = *(v21 + 8 * v26 + 32);
          }

          v5 = v28;
          v12 = (v26 + 1);
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          v75[3] = sub_1000060C8(0, &qword_10093DD58, off_1008D4118);
          v75[4] = &off_1008F2C88;
          v75[0] = v69;
          v29 = v5;
          v67 = v69;
          v31 = sub_1004755B4(v29, v75);
          if (v30)
          {
            if (v30 == 1)
            {
              v32 = &qword_100940920;
              v33 = REMFileAttachment_ptr;
            }

            else
            {
              v32 = &unk_100940938;
              v33 = REMImageAttachment_ptr;
            }
          }

          else
          {
            v32 = &unk_100940940;
            v33 = REMURLAttachment_ptr;
          }

          sub_1000060C8(0, v32, v33);
          v34 = swift_getObjCClassFromMetadata();
          v35 = v31;
          v36 = [v34 newObjectID];
          v37 = [v22 accountID];
          ObjCClassFromMetadata = [v22 objectID];
          v38 = [objc_allocWithZone(*v33) initWithAttachment:v35 objectID:v36 accountID:v37 reminderID:ObjCClassFromMetadata];
          v74 = v35;

          v39 = v38;
          [v9 addAttachment:v39];
          if (qword_100936240 != -1)
          {
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          sub_100006654(v40, qword_1009488A8);
          v41 = v29;
          v10 = v39;
          v42 = v22;
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v43, v44))
          {
            v65 = v44;
            v45 = swift_slowAlloc();
            ObjCClassFromMetadata = swift_slowAlloc();
            v76 = swift_slowAlloc();
            *v45 = 136446978;
            v75[0] = v73;
            swift_getMetatypeMetadata();
            v46 = String.init<A>(describing:)();
            v48 = sub_10000668C(v46, v47, &v76);

            *(v45 + 4) = v48;
            *(v45 + 12) = 2114;
            v49 = [v42 objectID];
            *(v45 + 14) = v49;
            *ObjCClassFromMetadata = v49;
            *(v45 + 22) = 2082;
            v66 = v41;
            v50 = [v41 remObjectID];
            if (v50)
            {
              v51 = v50;
              v52 = [v50 description];

              v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v55 = v54;
            }

            else
            {
              v55 = 0xE300000000000000;
              v53 = 7104878;
            }

            v27 = v26 + 1;
            v56 = sub_10000668C(v53, v55, &v76);

            *(v45 + 24) = v56;
            *(v45 + 32) = 2114;
            *(v45 + 34) = v10;
            ObjCClassFromMetadata[1] = v10;
            _os_log_impl(&_mh_execute_header, v43, v65, "%{public}s: Copied attachment into reminderChangeItem {reminderChangeItem.remObjectID: %{public}@, cdSavedAttachment.remObjectID: %{public}s, copiedAttachment: %{public}@}", v45, 0x2Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v9 = v64;
            v22 = v72;
          }

          else
          {

            v27 = v26 + 1;
          }

          ++v26;
          v21 = v68;
          if (v27 == v71)
          {

            return;
          }
        }
      }

      __break(1u);
    }

    else
    {
LABEL_40:
    }
  }

  else
  {
    v18 = objc_opt_self();
    sub_1000060C8(0, &qword_100944BF8, REMReminderChangeItem_ptr);
    v19 = swift_getObjCClassFromMetadata();
    v20 = String._bridgeToObjectiveC()();
    [v18 unexpectedNilPropertyWithClass:v19 property:v20];

    swift_willThrow();
  }
}

unint64_t sub_10048F8E0()
{
  result = qword_100948980;
  if (!qword_100948980)
  {
    sub_1000F514C(&qword_100941B60, &qword_1007A1E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948980);
  }

  return result;
}

uint64_t sub_10048F944(id a1, void *a2, uint64_t a3, void *a4)
{
  v73 = a2;
  v74 = a4;
  v81 = type metadata accessor for UUID();
  v75 = *(v81 - 8);
  v5 = *(v75 + 64);
  __chkstk_darwin(v81);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v61 - v8;
  __chkstk_darwin(v9);
  v82 = &v61 - v10;
  v84 = _swiftEmptyArrayStorage;
  v11 = sub_10038EEC4(_swiftEmptyArrayStorage);
  v12 = qword_1009360E0;
  v62 = a1;
  if (v12 != -1)
  {
LABEL_36:
    swift_once();
  }

  type metadata accessor for REMCDTemplateSection();
  v13 = sub_1004263A0();
  sub_1004267FC();
  v14 = sub_100425A50(a1, 1);
  a1 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [a1 setEntity:v15];

  [a1 setAffectedStores:0];
  [a1 setPredicate:v14];

  sub_10003450C(v13);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPropertiesToFetch:isa];

  v17 = Array._bridgeToObjectiveC()().super.isa;
  [a1 setRelationshipKeyPathsForPrefetching:v17];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v18 = Array._bridgeToObjectiveC()().super.isa;
  [a1 setSortDescriptors:v18];

  v19 = v79;
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  v65 = v19;
  if (v19)
  {

    return v11;
  }

  v21 = v20;

  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (v22)
    {
      goto LABEL_6;
    }

LABEL_38:

    v11 = sub_10038EEC4(_swiftEmptyArrayStorage);
LABEL_39:

    return v11;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_38;
  }

LABEL_6:
  v23 = 0;
  v69 = v21 & 0xFFFFFFFFFFFFFF8;
  v70 = v21 & 0xC000000000000001;
  v76 = (v75 + 32);
  v64 = v75 + 16;
  v68 = v75 + 8;
  v63 = v75 + 40;
  v71 = _swiftEmptyArrayStorage;
  v66 = v22;
  v67 = v21;
  while (1)
  {
    if (v70)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(v69 + 16))
      {
        goto LABEL_33;
      }

      v26 = *(v21 + 8 * v23 + 32);
    }

    v27 = v26;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v83 = 0;
    v28 = [v26 remObjectIDWithError:&v83];
    if (!v28)
    {
      v57 = v83;

      v58 = _convertNSErrorToError(_:)();

      v65 = v58;
      swift_willThrow();

      return v11;
    }

    v29 = v28;
    v30 = v83;
    v31 = [v27 displayName];
    v77 = v23 + 1;
    v79 = v27;
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v33 = String._bridgeToObjectiveC()();

    v34 = [v73 addListSectionWithDisplayName:v33 toListSectionContextChangeItem:v74];

    v78 = v34;
    v35 = [v34 objectID];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v56 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v71 = v84;
    v36 = [v29 uuid];
    v37 = v82;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = [v35 uuid];
    v39 = v72;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    a1 = *v76;
    (*v76)(v80, v39, v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v11;
    v42 = sub_100363F20(v37);
    v43 = v11[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_34;
    }

    v46 = v41;
    if (v11[3] < v45)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v11 = v83;
      if (v41)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1003744A0();
      v11 = v83;
      if (v46)
      {
LABEL_7:
        v24 = v75;
        v25 = v81;
        (*(v75 + 40))(v11[7] + *(v75 + 72) * v42, v80, v81);

        (*(v24 + 8))(v82, v25);
        goto LABEL_8;
      }
    }

LABEL_25:
    v11[(v42 >> 6) + 8] |= 1 << v42;
    v49 = v75;
    v50 = *(v75 + 72) * v42;
    v51 = v81;
    v52 = v82;
    (*(v75 + 16))(v11[6] + v50, v82, v81);
    (a1)(v11[7] + v50, v80, v51);

    (*(v49 + 8))(v52, v51);
    v53 = v11[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_35;
    }

    v11[2] = v55;
LABEL_8:
    ++v23;
    v21 = v67;
    if (v77 == v66)
    {

      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v59 = Array._bridgeToObjectiveC()().super.isa;

      [v74 setUnsavedSectionIDsOrdering:v59];

      goto LABEL_39;
    }
  }

  sub_10036C648(v45, isUniquelyReferenced_nonNull_native);
  v47 = sub_100363F20(v82);
  if ((v46 & 1) == (v48 & 1))
  {
    v42 = v47;
    v11 = v83;
    if (v46)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1004901A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v93 = a2;
  v94 = a4;
  v103 = a3;
  v92 = type metadata accessor for Date();
  v5 = *(v92 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v92);
  v101 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v91 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v102 = v85 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v90 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v100 = v85 - v18;
  __chkstk_darwin(v19);
  v99 = v85 - v20;
  __chkstk_darwin(v21);
  v104 = v85 - v22;
  v105 = sub_1000F5104(&qword_100948988, &qword_1007ACA00);
  v23 = *(*(v105 - 8) + 64);
  *&v24 = __chkstk_darwin(v105).n128_u64[0];
  v26 = v85 - v25;
  v27 = [a1 membershipByMemberIdentifier];
  v28 = sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
  sub_100224A60();
  v29 = v13;
  v85[1] = v28;
  v30 = v26;
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v31 + 64;
  v32 = *(v31 + 64);
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  v95 = _swiftEmptyArrayStorage;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v32;
  v37 = (v34 + 63) >> 6;
  v109 = v14 + 16;
  v110 = _swiftEmptyArrayStorage;
  v97 = (v14 + 32);
  v89 = (v14 + 56);
  v88 = (v14 + 48);
  v106 = v14;
  v96 = (v14 + 8);
  v87 = (v5 + 8);
  v108 = v31;

  v38 = 0;
  v98 = v30;
LABEL_4:
  v39 = v103;
  v40 = v29;
  while (v36)
  {
LABEL_12:
    v42 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v43 = v42 | (v38 << 6);
    v44 = v108;
    v45 = *(v106 + 72);
    v46 = *(v108 + 48) + v45 * v43;
    v47 = v40;
    v107 = *(v106 + 16);
    v107(v30, v46);
    v48 = *(*(v44 + 56) + 8 * v43);
    *(v30 + *(v105 + 48)) = v48;
    v49 = *(v39 + 16);
    v50 = v48;
    if (v49 && (v51 = v50, v52 = sub_100363F20(v30), (v53 & 1) != 0))
    {
      v54 = v99;
      v55 = v47;
      (v107)(v99, *(v39 + 56) + v52 * v45, v47);
      v56 = v54;
      v57 = *v97;
      (*v97)(v104, v56, v47);
      v58 = [v51 groupIdentifier];
      if (!v58)
      {
        (*v96)(v104, v47);
        v39 = v103;
        v30 = v98;
        goto LABEL_6;
      }

      v59 = v90;
      v60 = v58;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = v100;
      v57(v100, v59, v55);
      v62 = v93;
      v63 = v96;
      v64 = v55;
      if (*(v93 + 16))
      {
        v65 = sub_100363F20(v61);
        if (v66)
        {
          (v107)(v102, *(v62 + 56) + v65 * v45, v55);
          v67 = 0;
        }

        else
        {
          v67 = 1;
        }
      }

      else
      {
        v67 = 1;
      }

      v68 = v102;
      (*v89)(v102, v67, 1, v55);
      v69 = v91;
      sub_10018E470(v68, v91);
      static Date.now.getter();
      v70.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v71 = (*v88)(v69, 1, v55);
      v86 = v55;
      if (v71 == 1)
      {
        isa = 0;
      }

      else
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v63)(v69, v64);
      }

      v73 = v63;
      v74 = objc_allocWithZone(REMMembership);
      v75 = v101;
      v76 = Date._bridgeToObjectiveC()().super.isa;
      v77 = [v74 initWithMemberIdentifier:v70.super.isa groupIdentifier:isa isObsolete:0 modifiedOn:v76];

      (*v87)(v75, v92);
      sub_1000050A4(v102, &unk_100939D90, "8\n\r");
      v78 = *v73;
      v29 = v86;
      (*v73)(v100, v86);
      v78(v104, v29);
      v30 = v98;
      sub_1000050A4(v98, &qword_100948988, &qword_1007ACA00);
      v39 = v103;
      v40 = v29;
      if (v77)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v79 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v95 = v110;
        goto LABEL_4;
      }
    }

    else
    {
LABEL_6:
      sub_1000050A4(v30, &qword_100948988, &qword_1007ACA00);
      v40 = v47;
    }
  }

  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v41 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v41);
    ++v38;
    if (v36)
    {
      v38 = v41;
      goto LABEL_12;
    }
  }

  if (!(v95 >> 62))
  {
    v80 = v94;
    if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_32:
  v84 = _CocoaArrayWrapper.endIndex.getter();
  v80 = v94;
  if (!v84)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (v80)
  {
    v81 = objc_allocWithZone(REMMemberships);
    v82 = Array._bridgeToObjectiveC()().super.isa;

    v83 = [v81 initWithMemberships:v82];

    [v80 setUnsavedMembershipsOfRemindersInSections:v83];
    return;
  }

LABEL_33:
}

uint64_t sub_1004909AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100490A0C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948990);
  v1 = sub_100006654(v0, qword_100948990);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100490B0C(uint64_t a1)
{
  v2 = v1;
  if (a1 != 2)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100948990);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "RDMergePolicy: Merge policy type is not compatible with this merge policy, please use defaultMergePolicy() instead.", v6, 2u);
    }
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for RDMergePolicy();
  return objc_msgSendSuper2(&v8, "initWithMergeType:", 2);
}

id sub_100490C3C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v224 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v12 = __chkstk_darwin(v9);
  v13 = *(a1 + 16);
  v240 = a1;
  if (!v13)
  {
LABEL_161:
    isa = Array._bridgeToObjectiveC()().super.isa;
    v266 = 0;
    v179 = type metadata accessor for RDMergePolicy();
    v257.receiver = v241;
    v257.super_class = v179;
    v180 = objc_msgSendSuper2(&v257, "resolveConflicts:error:", isa, &v266);

    if (v180)
    {
      return v266;
    }

    v182 = v266;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v232 = v11;
  v234 = &v224 - v10;
  v235 = v6;
  v236 = v3;
  v237 = v2;
  v14 = 0;
  v15 = a1 + 32;
  v242 = @"resolutionTokenMap_v3_JSONData";
  v231 = 0x80000001007E8EB0;
  v229 = 0x80000001007E9180;
  v228 = "";
  v230 = @"reminderIDsMergeableOrdering_v2_JSON";
  v12.n128_u64[0] = 136315138;
  v249 = v12;
  v12.n128_u64[0] = 136315394;
  v239 = v12;
  v252 = v13;
  v253 = a1 + 32;
  while (1)
  {
    sub_100005EF0(v15 + 32 * v14, &v266);
    sub_100005EF0(&v266, &v264);
    sub_1000060C8(0, &qword_1009489D0, NSConstraintConflict_ptr);
    if (swift_dynamicCast())
    {
      v16 = v262;
      if ((sub_1004944C4(v262) & 1) == 0)
      {
        if (qword_100936248 != -1)
        {
          swift_once();
        }

        v183 = type metadata accessor for Logger();
        sub_100006654(v183, qword_100948990);
        v184 = v16;
        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.fault.getter();

        v187 = &selRef_isEmpty;
        if (os_log_type_enabled(v185, v186))
        {
          v188 = swift_slowAlloc();
          *&v264 = swift_slowAlloc();
          *v188 = v239.n128_u32[0];
          v189 = [v184 constraint];
          v256 = v184;
          v190 = v189;
          static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v191 = Array.description.getter();
          v193 = v192;

          v194 = sub_10000668C(v191, v193, &v264);

          *(v188 + 4) = v194;
          *(v188 + 12) = 2080;
          v195 = [v256 constraintValues];
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v196 = Dictionary.description.getter();
          v198 = v197;
          v187 = &selRef_isEmpty;

          v199 = sub_10000668C(v196, v198, &v264);

          *(v188 + 14) = v199;
          _os_log_impl(&_mh_execute_header, v185, v186, "RDMergePolicy: Constraint conflict is not handled by remindd, and expect some confusing error message from CoreData {constraint: %s, constraintValues: %s}", v188, 0x16u);
          v184 = v256;
          swift_arrayDestroy();
        }

        v200 = v237;
        v201 = v236;
        v202 = v235;
        v203 = v234;
        v204 = [v184 databaseObject];
        if (v204)
        {
          v205 = v204;
          objc_opt_self();
          v206 = swift_dynamicCastObjCClass();
          v207 = v206;
          if (v206)
          {
            v208 = [v206 identifier];
            if (v208)
            {
              v209 = v232;
              v210 = v208;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v211 = 0;
            }

            else
            {
              v211 = 1;
              v209 = v232;
            }

            (*(v201 + 56))(v209, v211, 1, v200);
            v212 = objc_opt_self();
            sub_100100FB4(v209, v203);
            if ((*(v201 + 48))(v203, 1, v200))
            {
              sub_1000050A4(v203, &unk_100939D90, "8\n\r");
              v187 = &selRef_isEmpty;
            }

            else
            {
              (*(v201 + 16))(v202, v203, v200);
              sub_1000050A4(v203, &unk_100939D90, "8\n\r");
              UUID.uuidString.getter();
              (*(v201 + 8))(v202, v200);
              v187 = &selRef_isEmpty;
            }
          }

          else
          {

            v212 = objc_opt_self();
          }
        }

        else
        {
          v212 = objc_opt_self();
          v207 = 0;
        }

        v213 = String._bridgeToObjectiveC()();

        v214 = [v184 v187[480]];
        if (!v214)
        {
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v214 = Array._bridgeToObjectiveC()().super.isa;
        }

        [v212 constraintConflictWithIdentifier:v213 constraint:v214];

        swift_willThrow();
        return sub_10000607C(&v266);
      }

      sub_10000607C(&v266);

      goto LABEL_5;
    }

    sub_100005EF0(&v266, &v264);
    sub_1000060C8(0, &qword_1009489D8, NSMergeConflict_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v17 = v262;
    v18 = [v262 sourceObject];
    objc_opt_self();
    v255 = swift_dynamicCastObjCClass();
    if (!v255)
    {

LABEL_20:
      if (qword_100936248 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100006654(v36, qword_100948990);
      sub_100005EF0(&v266, &v264);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v260 = v40;
        *v39 = v249.n128_u32[0];
        sub_100005EF0(&v264, &v262);
        v41 = String.init<A>(describing:)();
        v43 = v42;
        sub_10000607C(&v264);
        v44 = sub_10000668C(v41, v43, &v260);
        v15 = v253;

        *(v39 + 4) = v44;
        v13 = v252;
        _os_log_impl(&_mh_execute_header, v37, v38, "RDMergePolicy: Unknown conflict or non-REMCDObject merge conflict is not handled by remindd {conflict: %s}", v39, 0xCu);
        sub_10000607C(v40);
      }

      else
      {

        sub_10000607C(&v264);
      }

      goto LABEL_4;
    }

    v251 = v18;
    v19 = [v17 persistedSnapshot];
    v256 = v17;
    if (!v19)
    {
      break;
    }

    v20 = [v17 persistedSnapshot];
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_26:
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_100948990);
    v46 = v256;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v264 = v50;
      *v49 = v249.n128_u32[0];
      v51 = v46;
      v52 = [v51 description];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = sub_10000668C(v53, v55, &v264);

      *(v49 + 4) = v56;
      v13 = v252;
      v57 = v48;
      v58 = v47;
      v59 = "RDMergePolicy: Neither persisted or cached snapshot is defined {conflict: %s}";
LABEL_152:
      _os_log_impl(&_mh_execute_header, v58, v57, v59, v49, 0xCu);
      sub_10000607C(v50);
      v15 = v253;

      goto LABEL_4;
    }

LABEL_3:

LABEL_4:
    sub_10000607C(&v266);
LABEL_5:
    if (++v14 == v13)
    {
      goto LABEL_161;
    }
  }

  v20 = [v17 cachedSnapshot];
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_13:
  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v22 + 16))
  {

LABEL_148:
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v159 = type metadata accessor for Logger();
    sub_100006654(v159, qword_100948990);
    v46 = v256;
    v47 = Logger.logObject.getter();
    v160 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v160))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v264 = v50;
      *v49 = v249.n128_u32[0];
      v51 = v46;
      v161 = [v51 description];
      v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v164 = v163;

      v165 = sub_10000668C(v162, v164, &v264);

      *(v49 + 4) = v165;
      v13 = v252;
      v57 = v160;
      v58 = v47;
      v59 = "RDMergePolicy: Resolution token map missing from the CDObject snapshot, don't know how to resolve conflict {conflict: %s";
      goto LABEL_152;
    }

    goto LABEL_3;
  }

  v25 = v22;
  v26 = sub_100005F4C(v23, v24);
  v28 = v27;

  if ((v28 & 1) == 0 || (sub_100005EF0(*(v25 + 56) + 32 * v26, &v264), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_148;
  }

  v245 = v25;
  v29 = v262;
  sub_100029344(v262, *(&v262 + 1));
  v30 = Data._bridgeToObjectiveC()().super.isa;
  v226 = v29;
  sub_10001BBA0(v29, *(&v29 + 1));
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;
  v32 = [objc_opt_self() resolutionTokenMapWithJSONData:v30 keyMap:v31];

  if (!v32)
  {

    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v166 = type metadata accessor for Logger();
    sub_100006654(v166, qword_100948990);
    v167 = v256;
    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&v264 = v171;
      *v170 = v249.n128_u32[0];
      v172 = v167;
      v173 = [v172 description];
      v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v176 = v175;

      v177 = sub_10000668C(v174, v176, &v264);

      *(v170 + 4) = v177;
      _os_log_impl(&_mh_execute_header, v168, v169, "RDMergePolicy: Cannot decode data to resolution token map from the CDObject snapshot, don't know how to resolve conflict {conflict: %s", v170, 0xCu);
      sub_10000607C(v171);
      v15 = v253;

      sub_10001BBA0(v226, *(&v226 + 1));
    }

    else
    {

      sub_10001BBA0(v226, *(&v226 + 1));
    }

    sub_10000607C(&v266);
    v13 = v252;
    goto LABEL_5;
  }

  v225 = [v255 createResolutionTokenMapIfNecessary];
  v233 = v32;
  v33 = [v32 getTokenKeys];
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v244 = v34[2];
  if (!v244)
  {
    v63 = v256;
LABEL_158:

    sub_10001BBA0(v226, *(&v226 + 1));

    sub_10000607C(&v266);
    goto LABEL_5;
  }

  v35 = 0;
  v254 = v34 + 5;
  v243 = v34;
  while (1)
  {
    if (v35 >= v34[2])
    {
      __break(1u);
LABEL_184:

LABEL_182:

      sub_10001BBA0(v226, *(&v226 + 1));

      sub_1000050A4(&v264, &qword_100939ED0, &qword_100791B10);
      sub_10000607C(&v266);
      return sub_10000607C(&v262);
    }

    v248 = v35;
    v64 = *(v254 - 1);
    v65 = *v254;

    *&v264 = [v255 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v66 = String.init<A>(describing:)();
    v250 = v67;
    v68 = v245;
    v69 = *(v245 + 16);
    v247 = v64;
    if (!v69 || (, sub_100005F4C(v64, v65), v71 = v70, , (v71 & 1) == 0))
    {
      if (qword_100936248 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_100006654(v74, qword_100948990);

      v75 = v250;

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v60 = swift_slowAlloc();
        *&v264 = swift_slowAlloc();
        *v60 = v239.n128_u32[0];
        v61 = sub_10000668C(v247, v65, &v264);

        *(v60 + 4) = v61;
        *(v60 + 12) = 2080;
        v62 = sub_10000668C(v66, v75, &v264);

        *(v60 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v76, v77, "RDMergePolicy: skip merging key because it does not exist in the snapshot {key: %s, remObjectID: %s}", v60, 0x16u);
        swift_arrayDestroy();

        v13 = v252;
      }

      else
      {
      }

      goto LABEL_32;
    }

    if (*(v68 + 16) && (v72 = sub_100005F4C(v64, v65), (v73 & 1) != 0))
    {
      sub_100005EF0(*(v68 + 56) + 32 * v72, &v262);
    }

    else
    {
      v262 = 0u;
      v263 = 0u;
    }

    sub_10014F5CC(&v262, &v260);
    v78 = v250;
    if (*(&v261 + 1))
    {
      sub_1000060C8(0, &qword_1009489E0, NSNull_ptr);
      if (swift_dynamicCast())
      {
        sub_1000050A4(&v262, &qword_100939ED0, &qword_100791B10);

        v264 = 0u;
        v265 = 0u;
        goto LABEL_49;
      }
    }

    else
    {
      sub_1000050A4(&v260, &qword_100939ED0, &qword_100791B10);
    }

    v264 = v262;
    v265 = v263;
LABEL_49:
    v238 = v66;
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    v80 = sub_100006654(v79, qword_100948990);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = v78;
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v227 = v80;
      *&v262 = v85;
      *v84 = v239.n128_u32[0];
      v86 = v247;
      *(v84 + 4) = sub_10000668C(v247, v65, &v262);
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_10000668C(v238, v83, &v262);
      _os_log_impl(&_mh_execute_header, v81, v82, "RDMergePolicy: let's check if we need to merge this key: {key: %s, remObjectID: %s}", v84, 0x16u);
      swift_arrayDestroy();

      v13 = v252;
    }

    else
    {

      v86 = v247;
    }

    if (v86 == 0x636F44656C746974 && v65 == 0xED0000746E656D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      *(&v263 + 1) = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      *&v262 = v255;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v34 = v251;
      v87 = v246;
      throwingCast<A>(_:as:failureMessage:)();
      v246 = v87;
      if (v87)
      {
        goto LABEL_182;
      }

      sub_10000607C(&v262);
      v88 = v260;
      sub_10014F5CC(&v264, &v262);
      if (*(&v263 + 1))
      {
        v89 = swift_dynamicCast();
        if (v89)
        {
          v90 = v260;
        }

        else
        {
          v90 = 0;
        }

        if (v89)
        {
          v91 = *(&v260 + 1);
        }

        else
        {
          v91 = 0xF000000000000000;
        }

        goto LABEL_66;
      }

LABEL_65:
      sub_1000050A4(&v262, &qword_100939ED0, &qword_100791B10);
      v90 = 0;
      v91 = 0xF000000000000000;
      goto LABEL_66;
    }

    if (v86 == 0x636F447365746F6ELL && v65 == 0xED0000746E656D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      *(&v263 + 1) = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      *&v262 = v255;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v34 = v251;
      v92 = v246;
      throwingCast<A>(_:as:failureMessage:)();
      v246 = v92;
      if (v92)
      {
        goto LABEL_182;
      }

      sub_10000607C(&v262);
      v88 = v260;
      sub_10014F5CC(&v264, &v262);
      if (!*(&v263 + 1))
      {
        goto LABEL_65;
      }

      v93 = swift_dynamicCast();
      if (v93)
      {
        v90 = v260;
      }

      else
      {
        v90 = 0;
      }

      if (v93)
      {
        v91 = *(&v260 + 1);
      }

      else
      {
        v91 = 0xF000000000000000;
      }

LABEL_66:
      sub_100494C68(v88, v90, v91, v233, v247, v65);
      sub_100031A14(v90, v91);

LABEL_67:
      sub_1000050A4(&v264, &qword_100939ED0, &qword_100791B10);
      v13 = v252;
      goto LABEL_32;
    }

    if ((v86 != 0xD00000000000001CLL || v231 != v65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    *(&v263 + 1) = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    *&v262 = v255;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v34 = v251;
    v94 = v246;
    throwingCast<A>(_:as:failureMessage:)();
    v246 = v94;
    v95 = v238;
    if (v94)
    {
      goto LABEL_184;
    }

    sub_10000607C(&v262);
    v96 = v260;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v245;
    if (*(v245 + 16))
    {
      v100 = v96;
      v101 = sub_100005F4C(v97, v98);
      v103 = v102;

      if (v103)
      {
        sub_100005EF0(*(v99 + 56) + 32 * v101, &v262);
      }

      else
      {
        v262 = 0u;
        v263 = 0u;
      }

      v96 = v100;
      v95 = v238;
    }

    else
    {

      v262 = 0u;
      v263 = 0u;
    }

    sub_10014F5CC(&v262, &v260);
    v110 = v250;
    if (*(&v261 + 1))
    {
      v111 = swift_dynamicCast();
      if (v111)
      {
        v112 = v258;
      }

      else
      {
        v112 = 0;
      }

      if (v111)
      {
        v113 = v259;
      }

      else
      {
        v113 = 0xF000000000000000;
      }
    }

    else
    {
      sub_1000050A4(&v260, &qword_100939ED0, &qword_100791B10);
      v112 = 0;
      v113 = 0xF000000000000000;
    }

    v114 = v246;
    sub_100495408(v96, v112, v113, v233, v247, v65);
    v246 = v114;
    if (v114)
    {
      sub_100031A14(v112, v113);

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v227 = v115;
        v118 = v116;
        v119 = v117;
        *&v260 = swift_slowAlloc();
        *v119 = v239.n128_u32[0];
        v120 = sub_10000668C(v247, v65, &v260);
        v247 = v96;
        v121 = v120;

        *(v119 + 4) = v121;
        *(v119 + 12) = 2080;
        v122 = sub_10000668C(v95, v110, &v260);

        *(v119 + 14) = v122;
        v123 = v227;
        _os_log_impl(&_mh_execute_header, v227, v118, "RDMergePolicy: Error occured while trying to merge ordered set for: {key: %s, remObjectID: %s}", v119, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_1000050A4(&v262, &qword_100939ED0, &qword_100791B10);
      sub_1000050A4(&v264, &qword_100939ED0, &qword_100791B10);
      v246 = 0;
    }

    else
    {
      sub_100031A14(v112, v113);

      sub_1000050A4(&v262, &qword_100939ED0, &qword_100791B10);
      sub_1000050A4(&v264, &qword_100939ED0, &qword_100791B10);
    }

LABEL_32:
    v63 = v256;
    v34 = v243;
    v35 = v248 + 1;
    v254 += 2;
    v15 = v253;
    if (v244 == v248 + 1)
    {
      goto LABEL_158;
    }
  }

  v104 = v238;
  if (v86 == 0xD000000000000018 && v229 == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    *(&v263 + 1) = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    *&v262 = v255;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v34 = v251;
    v105 = v246;
    throwingCast<A>(_:as:failureMessage:)();
    v246 = v105;
    if (v105)
    {
      goto LABEL_182;
    }

    sub_10000607C(&v262);
    v106 = v260;
    v107 = v245;
    if (*(v245 + 16))
    {
      v108 = sub_100005F4C(0xD00000000000001BLL, v228 | 0x8000000000000000);
      if (v109)
      {
        sub_100005EF0(*(v107 + 56) + 32 * v108, &v260);
      }

      else
      {
        v260 = 0u;
        v261 = 0u;
      }
    }

    else
    {
      v260 = 0u;
      v261 = 0u;
    }

    sub_10014F5CC(&v260, &v262);
    if (*(&v263 + 1))
    {
      sub_1000060C8(0, &qword_1009489E0, NSNull_ptr);
      if (swift_dynamicCast())
      {
        sub_1000050A4(&v260, &qword_100939ED0, &qword_100791B10);

        v262 = 0u;
        v263 = 0u;
        goto LABEL_127;
      }
    }

    else
    {
      sub_1000050A4(&v262, &qword_100939ED0, &qword_100791B10);
    }

    v262 = v260;
    v263 = v261;
    if (*(&v261 + 1))
    {
      v133 = swift_dynamicCast();
      if (v133)
      {
        v134 = v260;
      }

      else
      {
        v134 = 0;
      }

      if (v133)
      {
        v135 = *(&v260 + 1);
      }

      else
      {
        v135 = 0xF000000000000000;
      }
    }

    else
    {
LABEL_127:
      sub_1000050A4(&v262, &qword_100939ED0, &qword_100791B10);
      v134 = 0;
      v135 = 0xF000000000000000;
    }

    sub_100495F54(v106, v134, v135, v233, v247, v65);
    sub_100031A14(v134, v135);

    goto LABEL_67;
  }

  v124 = String._bridgeToObjectiveC()();
  v125 = [v225 mergeWithMap:v233 forKey:v124];

  v126 = v250;

  v127 = Logger.logObject.getter();
  if (!v125)
  {
    v136 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v127, v136))
    {
      v137 = swift_slowAlloc();
      v227 = v127;
      v138 = v137;
      *&v262 = swift_slowAlloc();
      *v138 = v239.n128_u32[0];
      v139 = sub_10000668C(v247, v65, &v262);

      *(v138 + 4) = v139;
      *(v138 + 12) = 2080;
      v140 = sub_10000668C(v238, v126, &v262);

      *(v138 + 14) = v140;
      v141 = v227;
      _os_log_impl(&_mh_execute_header, v227, v136, "RDMergePolicy: Resolution token map says we shouldn't merge key: {key: %s, remObjectID: %s}", v138, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_1000050A4(&v264, &qword_100939ED0, &qword_100791B10);
    goto LABEL_32;
  }

  v128 = v127;
  v129 = static os_log_type_t.default.getter();

  v227 = v128;
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *&v262 = swift_slowAlloc();
    *v130 = v239.n128_u32[0];
    *(v130 + 4) = sub_10000668C(v247, v65, &v262);
    *(v130 + 12) = 2080;
    *(v130 + 14) = sub_10000668C(v104, v250, &v262);
    v131 = v129;
    v132 = v227;
    _os_log_impl(&_mh_execute_header, v227, v131, "RDMergePolicy: Going to merge key: {key: %s, remObjectID: %s}", v130, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10014F5CC(&v264, &v260);
  if (!*(&v261 + 1))
  {

    sub_1000050A4(&v260, &qword_100939ED0, &qword_100791B10);
LABEL_141:
    sub_10014F5CC(&v264, &v262);
LABEL_142:
    sub_10014F5CC(&v262, &v260);
    v150 = *(&v261 + 1);
    if (*(&v261 + 1))
    {
      v151 = sub_10000F61C(&v260, *(&v261 + 1));
      v152 = *(v150 - 8);
      v153 = *(v152 + 64);
      v154 = __chkstk_darwin(v151);
      v156 = &v224 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v152 + 16))(v156, v154);
      v157 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v152 + 8))(v156, v150);
      v13 = v252;
      sub_10000607C(&v260);
    }

    else
    {
      v157 = 0;
    }

    v158 = String._bridgeToObjectiveC()();

    [v255 setValue:v157 forKey:v158];
    swift_unknownObjectRelease();

    sub_1000050A4(&v262, &qword_100939ED0, &qword_100791B10);
    sub_1000050A4(&v264, &qword_100939ED0, &qword_100791B10);
    goto LABEL_32;
  }

  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_141;
  }

  v142 = v258;
  v143 = [v255 managedObjectContext];
  if (v143)
  {
    v144 = v143;

    *&v260 = 0;
    v145 = [v144 existingObjectWithID:v142 error:&v260];
    v146 = v260;
    if (!v145)
    {
      v220 = v260;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_190;
    }

    v147 = v145;
    v148 = sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
    v149 = v146;

    *&v262 = v147;
    *(&v263 + 1) = v148;
    v13 = v252;
    goto LABEL_142;
  }

  v215 = Logger.logObject.getter();
  v216 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v215, v216))
  {
    v217 = swift_slowAlloc();
    *&v260 = swift_slowAlloc();
    *v217 = v239.n128_u32[0];
    v218 = sub_10000668C(v247, v65, &v260);

    *(v217 + 4) = v218;
    *(v217 + 12) = 2080;
    v219 = sub_10000668C(v238, v250, &v260);

    *(v217 + 14) = v219;
    _os_log_impl(&_mh_execute_header, v215, v216, "RDMergePolicy: Missing managed object context for resolving merge conflict {key: %s, remObjectID: %s}", v217, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v221 = objc_opt_self();
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v223 = String._bridgeToObjectiveC()();
  [v221 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v223];

  swift_willThrow();
LABEL_190:
  sub_10001BBA0(v226, *(&v226 + 1));

  sub_1000050A4(&v264, &qword_100939ED0, &qword_100791B10);
  return sub_10000607C(&v266);
}