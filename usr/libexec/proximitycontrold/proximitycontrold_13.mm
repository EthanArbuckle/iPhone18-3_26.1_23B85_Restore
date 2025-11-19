uint64_t sub_10012E908(void *a1)
{
  v2 = sub_100035D04(&qword_1003465B0, &qword_10027D378);
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  __chkstk_darwin(v2);
  v54 = &v43 - v4;
  v52 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  v5 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v53 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100035D04(&qword_1003465B8, &qword_10027D380);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v49 = &v43 - v9;
  v47 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  v10 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100035D04(&qword_1003465C0, &qword_10027D388);
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = sub_100035D04(&qword_1003465C8, &qword_10027D390);
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v20 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_100035D04(&qword_1003465D0, &qword_10027D398);
  v58 = *(v24 - 8);
  v59 = v24;
  v25 = *(v58 + 64);
  __chkstk_darwin(v24);
  v27 = &v43 - v26;
  v28 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100130B30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100130CD4(v57, v23, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v31 = *v23;
      v30 = v23[1];
      v61 = 1;
      sub_100130C2C();
      v32 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v33 = v46;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v45 + 8))(v15, v33);
      return (*(v58 + 8))(v27, v32);
    }

    v35 = v48;
    sub_100130D3C(v23, v48, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v62 = 2;
    sub_100130BD8();
    v40 = v49;
    v37 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100130A88(&qword_1003465E0, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v41 = v51;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v50 + 8))(v40, v41);
    v39 = type metadata accessor for ActivityDisplayContext.CallDisplayContext;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v35 = v53;
    sub_100130D3C(v23, v53, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v63 = 3;
    sub_100130B84();
    v36 = v54;
    v37 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100130A88(&qword_1003465D8, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v38 = v56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v55 + 8))(v36, v38);
    v39 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext;
LABEL_7:
    sub_100130AD0(v35, v39);
    return (*(v58 + 8))(v27, v37);
  }

  v60 = 0;
  sub_100130C80();
  v42 = v59;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v44 + 8))(v19, v16);
  return (*(v58 + 8))(v27, v42);
}

uint64_t sub_10012F034@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v70 = sub_100035D04(&qword_100346550, &qword_10027D348);
  v73 = *(v70 - 8);
  v3 = *(v73 + 64);
  __chkstk_darwin(v70);
  v78 = &v62 - v4;
  v5 = sub_100035D04(&qword_100346558, &qword_10027D350);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  __chkstk_darwin(v5);
  v77 = &v62 - v7;
  v8 = sub_100035D04(&qword_100346560, &qword_10027D358);
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v76 = &v62 - v11;
  v12 = sub_100035D04(&qword_100346568, &qword_10027D360);
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  __chkstk_darwin(v12);
  v74 = &v62 - v14;
  v75 = sub_100035D04(&qword_100346570, &unk_10027D368);
  v80 = *(v75 - 8);
  v15 = *(v80 + 64);
  __chkstk_darwin(v75);
  v17 = &v62 - v16;
  v18 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v62 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = (&v62 - v27);
  __chkstk_darwin(v26);
  v30 = &v62 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v82 = a1;
  sub_10000EBC0(a1, v32);
  sub_100130B30();
  v33 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v33)
  {
    v62 = v28;
    v63 = v25;
    v64 = v22;
    v34 = v76;
    v35 = v77;
    v36 = v78;
    v65 = v30;
    v81 = v18;
    v37 = v79;
    v38 = v75;
    v39 = KeyedDecodingContainer.allKeys.getter();
    v40 = (2 * *(v39 + 16)) | 1;
    v83 = v39;
    v84 = v39 + 32;
    v85 = 0;
    v86 = v40;
    v41 = sub_100218018();
    v42 = v17;
    if (v41 != 4 && v85 == v86 >> 1)
    {
      if (v41 > 1u)
      {
        v50 = v80;
        if (v41 == 2)
        {
          v87 = 2;
          sub_100130BD8();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
          sub_100130A88(&qword_100346598, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
          v51 = v63;
          v52 = v72;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v71 + 8))(v35, v52);
          (*(v50 + 8))(v42, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v51;
        }

        else
        {
          v87 = 3;
          sub_100130B84();
          v53 = v36;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
          sub_100130A88(&qword_100346588, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
          v55 = v64;
          v56 = v70;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v73 + 8))(v53, v56);
          (*(v50 + 8))(v42, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v55;
        }
      }

      else
      {
        if (!v41)
        {
          v87 = 0;
          sub_100130C80();
          v43 = v74;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v66 + 8))(v43, v67);
          (*(v80 + 8))(v42, v38);
          swift_unknownObjectRelease();
          v44 = v65;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          sub_100130D3C(v44, v37, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
          return sub_10000903C(v82);
        }

        v87 = 1;
        sub_100130C2C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v54 = v68;
        v58 = KeyedDecodingContainer.decode(_:forKey:)();
        v60 = v59;
        (*(v69 + 8))(v34, v54);
        (*(v80 + 8))(v17, v38);
        swift_unknownObjectRelease();
        v61 = v62;
        *v62 = v58;
        v61[1] = v60;
        swift_storeEnumTagMultiPayload();
        v57 = v61;
      }

      v44 = v65;
      sub_100130D3C(v57, v65, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
      goto LABEL_14;
    }

    v45 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    v48 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v47 = v81;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v45 - 8) + 104))(v47, enum case for DecodingError.typeMismatch(_:), v45);
    swift_willThrow();
    (*(v80 + 8))(v42, v38);
    swift_unknownObjectRelease();
  }

  return sub_10000903C(v82);
}

uint64_t sub_10012F9F0(uint64_t a1)
{
  v2 = sub_100130BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FA2C(uint64_t a1)
{
  v2 = sub_100130BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FA68()
{
  v1 = 1701736302;
  v2 = 1819042147;
  if (*v0 != 2)
  {
    v2 = 0x72656D6974;
  }

  if (*v0)
  {
    v1 = 0x636974617473;
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

uint64_t sub_10012FACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10013195C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10012FAF4(uint64_t a1)
{
  v2 = sub_100130B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FB30(uint64_t a1)
{
  v2 = sub_100130B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FB6C(uint64_t a1)
{
  v2 = sub_100130C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FBA8(uint64_t a1)
{
  v2 = sub_100130C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FBE4(uint64_t a1)
{
  v2 = sub_100130C2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FC20(uint64_t a1)
{
  v2 = sub_100130C2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FC5C(uint64_t a1)
{
  v2 = sub_100130B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FC98(uint64_t a1)
{
  v2 = sub_100130B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FD04(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_100346620, &qword_10027D3B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100130DF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
    v14 = *(v13 + 20);
    v19[14] = 1;
    type metadata accessor for Date();
    sub_100130A88(&qword_100346608, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v3 + *(v13 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10012FEF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v26 - v6;
  v8 = sub_100035D04(&qword_100346610, &qword_10027D3B0);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = v26 - v10;
  v12 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100130DF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v17 = v29;
  v33 = 0;
  *v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[1] = v18;
  v26[1] = v18;
  v27 = v15;
  type metadata accessor for Date();
  v32 = 1;
  sub_100130A88(&qword_1003465F8, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10006C51C(v7, v27 + *(v12 + 20));
  v31 = 2;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v20;
  (*(v17 + 8))(v11, v30);
  v23 = v27;
  v22 = v28;
  v24 = (v27 + *(v12 + 24));
  *v24 = v19;
  v24[1] = v21;
  sub_100130CD4(v23, v22, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
  sub_10000903C(a1);
  return sub_100130AD0(v23, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
}

uint64_t sub_100130280()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_1001302E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100131AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013030C(uint64_t a1)
{
  v2 = sub_100130DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100130348(uint64_t a1)
{
  v2 = sub_100130DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001303B4(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_100346600, &qword_10027D3A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100130DA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
    v15[14] = 1;
    type metadata accessor for Date();
    sub_100130A88(&qword_100346608, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10013056C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_100035D04(&qword_1003465E8, &qword_10027D3A0);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_100130DA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v22 = v12;
  v17 = v24;
  v27 = 0;
  v18 = v15;
  *v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[1] = v19;
  type metadata accessor for Date();
  v26 = 1;
  sub_100130A88(&qword_1003465F8, &type metadata accessor for Date);
  v20 = v25;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v11, v20);
  sub_10006C51C(v7, v18 + *(v22 + 20));
  sub_100130CD4(v18, v23, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
  sub_10000903C(a1);
  return sub_100130AD0(v18, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
}

uint64_t sub_100130868()
{
  if (*v0)
  {
    result = 0x6574614465726966;
  }

  else
  {
    result = 0x4E79616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_1001308AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574614465726966 && a2 == 0xE800000000000000)
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

uint64_t sub_10013098C(uint64_t a1)
{
  v2 = sub_100130DA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001309C8(uint64_t a1)
{
  v2 = sub_100130DA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100130A34()
{
  result = qword_1003464F8;
  if (!qword_1003464F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003464F8);
  }

  return result;
}

uint64_t sub_100130A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100130AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100130B30()
{
  result = qword_100346578;
  if (!qword_100346578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346578);
  }

  return result;
}

unint64_t sub_100130B84()
{
  result = qword_100346580;
  if (!qword_100346580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346580);
  }

  return result;
}

unint64_t sub_100130BD8()
{
  result = qword_100346590;
  if (!qword_100346590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346590);
  }

  return result;
}

unint64_t sub_100130C2C()
{
  result = qword_1003465A0;
  if (!qword_1003465A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003465A0);
  }

  return result;
}

unint64_t sub_100130C80()
{
  result = qword_1003465A8;
  if (!qword_1003465A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003465A8);
  }

  return result;
}

uint64_t sub_100130CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100130D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100130DA4()
{
  result = qword_1003465F0;
  if (!qword_1003465F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003465F0);
  }

  return result;
}

unint64_t sub_100130DF8()
{
  result = qword_100346618;
  if (!qword_100346618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346618);
  }

  return result;
}

uint64_t sub_100130E4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10012E714(v4, a1);
}

unint64_t sub_100130F50()
{
  result = qword_100346660;
  if (!qword_100346660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346660);
  }

  return result;
}

unint64_t sub_100130FA8()
{
  result = qword_100346668;
  if (!qword_100346668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346668);
  }

  return result;
}

unint64_t sub_100131000()
{
  result = qword_100346670;
  if (!qword_100346670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346670);
  }

  return result;
}

unint64_t sub_100131058()
{
  result = qword_100346678;
  if (!qword_100346678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346678);
  }

  return result;
}

unint64_t sub_1001310B0()
{
  result = qword_100346680;
  if (!qword_100346680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346680);
  }

  return result;
}

unint64_t sub_100131108()
{
  result = qword_100346688;
  if (!qword_100346688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346688);
  }

  return result;
}

unint64_t sub_100131160()
{
  result = qword_100346690;
  if (!qword_100346690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346690);
  }

  return result;
}

unint64_t sub_1001311B8()
{
  result = qword_100346698;
  if (!qword_100346698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346698);
  }

  return result;
}

unint64_t sub_100131210()
{
  result = qword_1003466A0;
  if (!qword_1003466A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466A0);
  }

  return result;
}

unint64_t sub_100131268()
{
  result = qword_1003466A8;
  if (!qword_1003466A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466A8);
  }

  return result;
}

unint64_t sub_1001312C0()
{
  result = qword_1003466B0;
  if (!qword_1003466B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466B0);
  }

  return result;
}

unint64_t sub_100131318()
{
  result = qword_1003466B8;
  if (!qword_1003466B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466B8);
  }

  return result;
}

unint64_t sub_100131370()
{
  result = qword_1003466C0;
  if (!qword_1003466C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466C0);
  }

  return result;
}

unint64_t sub_1001313C8()
{
  result = qword_1003466C8;
  if (!qword_1003466C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466C8);
  }

  return result;
}

unint64_t sub_100131420()
{
  result = qword_1003466D0;
  if (!qword_1003466D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466D0);
  }

  return result;
}

unint64_t sub_100131478()
{
  result = qword_1003466D8;
  if (!qword_1003466D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466D8);
  }

  return result;
}

unint64_t sub_1001314D0()
{
  result = qword_1003466E0;
  if (!qword_1003466E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466E0);
  }

  return result;
}

unint64_t sub_100131528()
{
  result = qword_1003466E8;
  if (!qword_1003466E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466E8);
  }

  return result;
}

unint64_t sub_100131580()
{
  result = qword_1003466F0;
  if (!qword_1003466F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466F0);
  }

  return result;
}

unint64_t sub_1001315D8()
{
  result = qword_1003466F8;
  if (!qword_1003466F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466F8);
  }

  return result;
}

unint64_t sub_100131630()
{
  result = qword_100346700;
  if (!qword_100346700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346700);
  }

  return result;
}

unint64_t sub_100131688()
{
  result = qword_100346708;
  if (!qword_100346708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346708);
  }

  return result;
}

unint64_t sub_1001316E0()
{
  result = qword_100346710;
  if (!qword_100346710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346710);
  }

  return result;
}

uint64_t sub_100131734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6461654864726163 && a2 == 0xEF6567616D497265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002A1410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74786554746E6968 && a2 == 0xEE00656D65686353)
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

uint64_t sub_10013195C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819042147 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000)
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

uint64_t sub_100131AB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
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

uint64_t sub_100131BD8(uint64_t a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 680);
  v3 = sub_10005F048();
  v5 = v4;

  if (v5)
  {
    if (qword_100339068 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100346718);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100017494(v3, v5, &v12);
      _os_log_impl(&_mh_execute_header, v7, v8, "Using overriden systemImageName: %s", v9, 0xCu);
      sub_10000903C(v10);
    }
  }

  else if ((a1 - 7) >= 2)
  {
    return 0x6D646F70656D6F68;
  }

  else
  {
    return 0x646F70656D6F68;
  }

  return v3;
}

uint64_t sub_100131DC0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346718);
  sub_100003078(v0, qword_100346718);
  return Logger.init(subsystem:category:)();
}

uint64_t PCActivityAssetType.description.getter(uint64_t a1)
{
  v1 = sub_1000C06B0(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_100131E9C()
{
  result = qword_100346730;
  if (!qword_100346730)
  {
    sub_100035D4C(&qword_100346738, qword_10027DC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346730);
  }

  return result;
}

uint64_t sub_100131FC0()
{
  v1 = sub_1000C06B0(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_100132010()
{
  result = qword_100346740;
  if (!qword_100346740)
  {
    type metadata accessor for PCActivityAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346740);
  }

  return result;
}

uint64_t sub_100132078(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003790951;
  if (v2 != 1)
  {
    v5 = 0x6D6F6F6C62;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701602409;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 2003790951;
  if (*a2 != 1)
  {
    v8 = 0x6D6F6F6C62;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701602409;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100132158()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001321E8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100132264()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001322F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100132474(*a1);
  *a2 = result;
  return result;
}

void sub_100132320(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003790951;
  if (v2 != 1)
  {
    v5 = 0x6D6F6F6C62;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701602409;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100132420()
{
  result = qword_100346748;
  if (!qword_100346748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346748);
  }

  return result;
}

unint64_t sub_100132474(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300F78, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001324C0()
{
  result = qword_100346750;
  if (!qword_100346750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346750);
  }

  return result;
}

void sub_100132514(id *a1)
{
  v1 = [*a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100132574()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B220);
  sub_100003078(v0, qword_10038B220);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001325F4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346758);
  v1 = sub_100003078(v0, qword_100346758);
  if (qword_100339070 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B220);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1001326BC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for HomeKitProxyState();
  v4 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  v6 = sub_100035D04(&qword_1003468E8, &unk_10027DF40);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_10006BD34(KeyPath, 0);

  *(v4 + 16) = v9;
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v4 + 24) = v10;
  v2[3] = v4;
  v2[4] = 0;
  type metadata accessor for RPIdentitySourceState();
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v11 + 16) = v12;
  type metadata accessor for RPIdentityWrapper();
  sub_10013B49C(&qword_1003468F0, type metadata accessor for RPIdentityWrapper);
  v13 = swift_getKeyPath();
  v14 = sub_100035D04(&qword_1003468F8, &qword_10027DF80);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_10006BF64(v13, 0);

  *(v11 + 24) = v17;
  v2[5] = v11;
  v2[2] = a1;
  return v2;
}

uint64_t sub_100132874()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_100132AC0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy);
  v4 = *(v3 + 24);
  *(v3 + 24) = a1;

  v5 = a1;

  sub_10005E5BC();
  v6 = *(v3 + 24);
  CurrentValueSubject.send(_:)();
}

void *sub_100132B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_interruptionHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_invalidationHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v11 = qword_10038B5B8;
  *&v4[v10] = qword_10038B5B8;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_rpClientProxy] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_homekitProxy] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy] = 0;
  v12 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_telephonyProxy;
  v13 = qword_100339180;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_10038B4E8;
  *&v4[v12] = qword_10038B4E8;
  v16 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy;
  sub_100035D04(&qword_1003468E0, qword_10027DEF8);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *&v4[v16] = v17;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_sharingProxy] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_activationTask] = 0;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_discoveryTasks] = &_swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_tasks] = &_swiftEmptySetSingleton;
  v18 = qword_100339078;
  v19 = v15;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003078(v20, qword_100346758);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Init", v23, 2u);
  }

  v24 = &v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_model];
  *v24 = a1;
  *(v24 + 1) = a2;
  *&v4[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] = a3;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for NearbyAgent();

  v25 = objc_msgSendSuper2(&v33, "init");
  v26 = qword_100338E78;
  v27 = v25;
  if (v26 != -1)
  {
    v32 = v27;
    swift_once();
    v27 = v32;
  }

  v28 = *(*&v27[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 16);
  v29 = v27;
  type metadata accessor for LockscreenControlsFeatureModel();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;

  sub_10005A3E4(v30);

  return v29;
}

id sub_100132E90()
{
  v1 = v0;
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for NearbyAgent();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100133114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v142 = a1;
  v5 = sub_100035D04(&qword_100346900, &qword_10027E138);
  v140 = *(v5 - 8);
  v141 = v5;
  v6 = *(v140 + 64);
  __chkstk_darwin(v5);
  v139 = v121 - v7;
  v8 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v137 = *(v8 - 8);
  v9 = *(v137 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v149 = v11;
  v150 = v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (v121 - v12);
  v14 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v134 = v121 - v16;
  v130 = sub_100035D04(&qword_100346908, &qword_10027E140);
  v129 = *(v130 - 8);
  v17 = *(v129 + 64);
  __chkstk_darwin(v130);
  v19 = v121 - v18;
  v133 = sub_100035D04(&qword_100346910, &qword_10027E148);
  v132 = *(v133 - 1);
  v20 = *(v132 + 64);
  __chkstk_darwin(v133);
  v131 = v121 - v21;
  v138 = sub_100035D04(&qword_100346918, &unk_10027E150);
  v136 = *(v138 - 8);
  v22 = *(v136 + 64);
  __chkstk_darwin(v138);
  v148 = v121 - v23;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v135 = type metadata accessor for Logger();
  v147 = sub_100003078(v135, qword_100346758);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Activate", v31, 2u);
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v32 = qword_10038B5B8;
  *v28 = qword_10038B5B8;
  (*(v25 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v24);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  v35 = *(v25 + 8);
  v34 = (v25 + 8);
  v35(v28, v24);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v127 = v19;
  v128 = a2;
  v146 = v13;
  type metadata accessor for Stopwatch();
  a2 = swift_allocObject();
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 24) = UpTicks()();
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v36 = sub_100035D04(&qword_100339900, &unk_1002703D0);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_10002AA3C(1, 0, 0, 0);
  type metadata accessor for BluetoothProxyModel();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  type metadata accessor for BluetoothProxyState();
  v41 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  v43 = sub_100035D04(&qword_100346920, &unk_10027E188);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_10006D144(KeyPath, 0);

  v41[2] = v46;
  v47 = *(v36 + 48);
  v48 = *(v36 + 52);
  swift_allocObject();
  v41[3] = sub_10002AA3C(0, 0, 0, 0);
  v49 = *(v36 + 48);
  v50 = *(v36 + 52);
  swift_allocObject();
  v41[4] = sub_10002AA3C(0, 0, 0, 0);
  v51 = type metadata accessor for BluetoothProxy();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = sub_1001245FC(v40, v41);
  v55 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy];
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy] = v54;
  v143 = v54;

  v56 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state];
  v57 = v56[3];
  v58 = type metadata accessor for HomeKitProxy();
  v59 = objc_allocWithZone(v58);
  v60 = &v59[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
  *v60 = 0;
  *(v60 + 1) = 0;
  *&v59[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue] = v33;
  *&v59[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager] = 0;
  *&v59[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_tasks] = &_swiftEmptySetSingleton;
  *&v59[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state] = v57;
  v153.receiver = v59;
  v153.super_class = v58;
  v61 = v33;

  v62 = objc_msgSendSuper2(&v153, "init");
  v63 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_homekitProxy];
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_homekitProxy] = v62;
  v145 = v62;

  v64 = [objc_allocWithZone(type metadata accessor for IDSProxy()) init];
  v65 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy];
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy] = v64;
  v144 = v64;

  v66 = objc_allocWithZone(type metadata accessor for RangingProxy());
  v67 = v3;
  v68 = sub_1001A2B38(v67);
  v34 = v68;
  sub_100132AC0(v68);
  v69 = *&v67[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_model];
  v70 = objc_allocWithZone(type metadata accessor for RapportProxy());
  v3 = v67;

  v71 = sub_10013B4E4(v3, v69, v70);

  v72 = v56[4];
  v56[4] = v71;
  v19 = v71;

  v73 = v56[5];
  type metadata accessor for RPClientProxy();
  swift_allocObject();

  v75 = sub_1001AD11C(v74);
  v76 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_rpClientProxy];
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_rpClientProxy] = v75;
  v33 = v75;

  v77 = v56[2];
  type metadata accessor for SharingProxy();
  swift_allocObject();

  v13 = sub_1000F6A1C(v78);
  v79 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_sharingProxy];
  *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_sharingProxy] = v13;

  if (qword_100338F98 != -1)
  {
LABEL_11:
    swift_once();
  }

  *(qword_10038B130 + 56) = &off_100305178;
  swift_unknownObjectWeakAssign();
  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_10027DE20;
  v124 = v13;
  *(v80 + 32) = sub_100124AA8();
  *(v80 + 40) = sub_1001113B8();
  *(v80 + 48) = sub_1001793A4();
  v126 = v19;
  *(v80 + 56) = sub_10018D6E0();
  v123 = v34;
  *(v80 + 64) = sub_1001A3EB8();
  swift_allocObject();
  v125 = v33;
  swift_weakInit();
  v81 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  swift_allocObject();
  *(v80 + 72) = Future.init(_:)();
  v84 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_telephonyProxy];
  v85 = sub_1001C4E90();
  v122 = v3;
  v86 = v85;

  *(v80 + 80) = v86;
  v152 = v80;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002764E0;
  *(inited + 32) = sub_1000F6B6C();
  sub_1000B3618(inited);
  v151 = v152;
  v121[1] = sub_100035D04(&qword_100345FE8, &unk_10027D030);
  sub_10000E244(&qword_100346928, &qword_100345FE8, &unk_10027D030);
  v88 = v127;
  Sequence.publisher.getter();

  v89 = v131;
  v90 = v130;
  Publishers.Sequence.collect()();
  (*(v129 + 8))(v88, v90);
  v91 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_dispatchQueue];
  v151 = v91;
  v92 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v93 = v134;
  (*(*(v92 - 8) + 56))(v134, 1, 1, v92);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_100346930, &qword_100346910, &qword_10027E148);
  sub_1000513CC();
  v94 = v91;
  v95 = v133;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v93, &qword_10034C680, &qword_100270390);

  (*(v132 + 8))(v89, v95);
  v96 = v135;
  v97 = *(v135 - 8);
  v134 = *(v97 + 16);
  v98 = v146;
  (v134)(v146, v147, v135);
  v133 = *(v97 + 56);
  (v133)(v98, 0, 1, v96);
  v99 = v150;
  sub_1000EF05C(v98, v150);
  v100 = *(v137 + 80);
  v101 = swift_allocObject();
  *(v101 + 16) = a2;
  *(v101 + 24) = xmmword_10027DE30;
  sub_10007E4B8(v99, v101 + ((v100 + 40) & ~v100));
  sub_10000E244(&qword_100346938, &qword_100346918, &unk_10027E150);
  swift_retain_n();
  v121[2] = a2;
  v102 = v139;
  v103 = v138;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100346940, &qword_100346900, &qword_10027E138);
  v104 = v141;
  v105 = Publisher.eraseToAnyPublisher()();

  (*(v140 + 8))(v102, v104);
  v106 = v146;
  sub_1000097E8(v146, &unk_10033D8B0, &qword_100275520);
  (*(v136 + 8))(v148, v103);
  v148 = 0x80000001002A1600;
  v107 = swift_allocObject();
  v108 = v122;
  *(v107 + 16) = v122;
  (v134)(v106, v147, v96);
  (v133)(v106, 0, 1, v96);
  v151 = v105;
  v109 = v106;
  v110 = v150;
  sub_1000EF05C(v106, v150);
  v111 = (v100 + 32) & ~v100;
  v112 = (v149 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v113 = swift_allocObject();
  v114 = v128;
  *(v113 + 16) = v142;
  *(v113 + 24) = v114;
  sub_10007E4B8(v110, v113 + v111);
  v115 = (v113 + v112);
  *v115 = 0xD000000000000015;
  v115[1] = v148;
  v116 = (v113 + ((v112 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v116 = sub_10013B7FC;
  v116[1] = v107;
  v117 = v108;

  sub_100035D04(&qword_100346948, &qword_10027E198);
  sub_10000E244(&qword_100346950, &qword_100346948, &qword_10027E198);
  v118 = Publisher.sink(receiveCompletion:receiveValue:)();

  sub_1000097E8(v109, &unk_10033D8B0, &qword_100275520);

  v119 = *&v117[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_activationTask];
  *&v117[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_activationTask] = v118;
}

void sub_100134210()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100134454();
  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.end.getter();
  if (qword_100338F28 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v2 + 8))(v5, v1);
  v6 = *(*(v0 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v6 && *(*&v6[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) != 2)
  {
    v7 = v6;
    if (sub_1000036FC())
    {
      sub_10000B620();
    }
  }
}

void sub_100134454()
{
  v1 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v47 - v3;
  v5 = sub_100035D04(&qword_100346958, &qword_10027E1A0);
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v55 = v47 - v7;
  v8 = sub_100035D04(&qword_100346960, &qword_10027E1A8);
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v56 = v47 - v10;
  v11 = sub_100035D04(&qword_100346968, &qword_10027E1B0);
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  __chkstk_darwin(v11);
  v61 = v47 - v13;
  v14 = sub_100035D04(&qword_100346970, &qword_10027E1B8);
  v65 = *(v14 - 8);
  isa = v65[8].isa;
  __chkstk_darwin(v14);
  v64 = v47 - v16;
  v17 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v52 = *(v17 - 8);
  v53 = v17;
  v18 = *(v52 + 64);
  __chkstk_darwin(v17);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100035D04(&qword_100346978, &qword_10027E1C0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v47 - v24;
  v26 = sub_100035D04(&qword_100346980, &qword_10027E1C8);
  v54 = *(v26 - 8);
  v27 = *(v54 + 64);
  __chkstk_darwin(v26);
  v29 = v47 - v28;
  sub_10013518C();
  v30 = *(v0 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy);
  if (v30)
  {
    v48 = v22;
    v49 = v14;
    v50 = v4;
    v51 = v0;
    v66 = *(*(*(v30 + 24) + 16) + 32);

    sub_100035D04(&qword_10033C370, &qword_10027E1D0);
    sub_10000E244(&qword_100346988, &qword_10033C370, &qword_10027E1D0);
    v66 = Publisher.eraseToAnyPublisher()();
    v67 = *(*(*(v30 + 24) + 16) + 48);
    v67 = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&qword_100346990, &qword_10027E1D8);
    sub_10000E244(&qword_100346998, &qword_100346990, &qword_10027E1D8);
    Publishers.Merge.init(_:_:)();
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v31 = qword_10038B5B8;
    v66 = qword_10038B5B8;
    v47[2] = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_1003469A0, &qword_100346978, &qword_10027E1C0);
    v47[1] = sub_1000513CC();
    v47[0] = v31;
    Publisher.throttle<A>(for:scheduler:latest:)();
    (*(v52 + 8))(v20, v53);
    (*(v48 + 8))(v25, v21);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000E244(&qword_1003469A8, &qword_100346980, &qword_10027E1C8);
    Publisher<>.sink(receiveValue:)();

    (*(v54 + 8))(v29, v26);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    sub_100035D04(&qword_100345FF8, &qword_10027E1E0);
    v32 = v55;
    Published.projectedValue.getter();
    swift_endAccess();
    sub_10000E244(&qword_1003469B0, &qword_100346958, &qword_10027E1A0);
    v33 = v56;
    v34 = v58;
    Publisher.compactMap<A>(_:)();
    (*(v57 + 8))(v32, v34);
    sub_10000E244(&qword_1003469B8, &qword_100346960, &qword_10027E1A8);
    sub_100101370();
    v35 = v60;
    v36 = v61;
    Publisher<>.removeDuplicates()();
    (*(v59 + 8))(v33, v35);
    v37 = v47[0];
    v66 = v47[0];
    v38 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v39 = v50;
    (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
    sub_10000E244(&qword_1003469C0, &qword_100346968, &qword_10027E1B0);
    v41 = v63;
    v40 = v64;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v39, &qword_10034C680, &qword_100270390);

    (*(v62 + 8))(v36, v41);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000E244(&qword_1003469C8, &qword_100346970, &qword_10027E1B8);
    v42 = v49;
    Publisher<>.sink(receiveValue:)();

    (v65[1].isa)(v40, v42);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    if (qword_100339078 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100003078(v43, qword_100346758);
    v65 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v65, v44, "### No bluetoothProxy?", v45, 2u);
    }

    v46 = v65;
  }
}

uint64_t sub_100134F64()
{
  v1 = v0;
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy))
  {
    v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy);

    sub_100124DD0();
  }

  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state);
  v8 = *(v7 + 32);
  if (v8)
  {
    v9 = v8;
    sub_10018EFC8();
  }

  v10 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v10)
  {
    v11 = v10;
    sub_1001A5108();
  }

  v12 = *(v7 + 16);

  sub_1001AC430();

  v13 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_discoveryTasks;
  swift_beginAccess();
  v14 = *(v1 + v13);
  *(v1 + v13) = &_swiftEmptySetSingleton;

  v15 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_tasks);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_tasks) = &_swiftEmptySetSingleton;

  v17 = v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_invalidationHandler;
  v18 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_invalidationHandler);
  if (v18)
  {
    v19 = *(v17 + 8);

    v18(v20);
    return sub_10002689C(v18);
  }

  return result;
}

uint64_t sub_10013518C()
{
  v1 = v0;
  v124 = sub_100035D04(&qword_1003469D0, &qword_10027E1E8);
  v123 = *(v124 - 8);
  v2 = *(v123 + 64);
  __chkstk_darwin(v124);
  v122 = v101 - v3;
  v127 = sub_100035D04(&qword_1003469D8, &qword_10027E1F0);
  v126 = *(v127 - 8);
  v4 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = v101 - v5;
  v120 = sub_100035D04(&qword_1003469E0, &qword_10027E1F8);
  v118 = *(v120 - 8);
  v6 = *(v118 + 64);
  __chkstk_darwin(v120);
  v116 = v101 - v7;
  v121 = sub_100035D04(&qword_1003469E8, &qword_10027E200);
  v119 = *(v121 - 8);
  v8 = *(v119 + 64);
  __chkstk_darwin(v121);
  v117 = v101 - v9;
  v115 = sub_100035D04(&qword_1003469F0, &qword_10027E208);
  v114 = *(v115 - 8);
  v10 = *(v114 + 64);
  __chkstk_darwin(v115);
  v113 = v101 - v11;
  v12 = sub_100035D04(&qword_1003469F8, &qword_10027E210);
  v129 = *(v12 - 8);
  v130 = v12;
  v13 = *(v129 + 64);
  __chkstk_darwin(v12);
  v128 = v101 - v14;
  v15 = sub_100035D04(&qword_100346A00, &qword_10027E218);
  v133 = *(v15 - 8);
  v16 = *(v133 + 64);
  v17 = __chkstk_darwin(v15);
  v111 = v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v112 = v101 - v19;
  v20 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v135 = v101 - v22;
  v131 = sub_100035D04(&qword_100346A08, &unk_10027E220);
  v23 = *(*(v131 - 8) + 64);
  v24 = __chkstk_darwin(v131);
  v110 = v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v101 - v27;
  v136 = *(v0 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state);
  v29 = *(v136 + 32);
  v134 = v15;
  if (v29)
  {
    v132 = v26;
    v30 = *&v29[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 8];
    v142 = *&v29[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject];
    v109 = v29;
    sub_100035D04(&qword_100346A10, &qword_100283B20);
    v31 = sub_10000E244(&qword_100346A18, &qword_100346A10, &qword_100283B20);
    v142 = Publisher.share()();
    sub_100035D04(&qword_100346A20, &qword_10027E230);
    v32 = sub_10000E244(&qword_100346A28, &qword_100346A20, &qword_10027E230);
    v33 = Publisher.eraseToAnyPublisher()();

    v142 = v30;
    v108 = v31;
    v142 = Publisher.share()();
    v105 = v32;
    Publisher.eraseToAnyPublisher()();

    v142 = v33;
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v34 = qword_10038B5B8;
    v143 = qword_10038B5B8;
    v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v36 = *(v35 - 8);
    v37 = v135;
    v109 = *(v36 + 56);
    v107 = v36 + 56;
    (v109)(v135, 1, 1, v35);
    v38 = v34;
    sub_100035D04(&qword_100346A30, &qword_10027E238);
    v39 = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    v40 = sub_10000E244(&qword_100346A38, &qword_100346A30, &qword_10027E238);
    v41 = sub_1000513CC();
    v106 = v39;
    v104 = v40;
    v103 = v41;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v37, &qword_10034C680, &qword_100270390);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_10000E244(&qword_100346A40, &qword_100346A08, &unk_10027E220);
    v43 = v131;
    Publisher<>.sink(receiveValue:)();

    v44 = v132 + 8;
    v45 = *(v132 + 8);
    v45(v28, v43);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v46 = *(v136 + 32);
    v15 = v134;
    if (v46)
    {
      v101[0] = v45;
      v101[1] = v42;
      v102 = v35;
      v132 = v44;
      v47 = *&v46[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject + 8];
      v142 = *&v46[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject];
      v48 = v46;
      sub_100035D04(&qword_100346A10, &qword_100283B20);
      v142 = Publisher.share()();
      sub_100035D04(&qword_100346A20, &qword_10027E230);
      Publisher.eraseToAnyPublisher()();

      v142 = v47;
      v142 = Publisher.share()();
      v49 = Publisher.eraseToAnyPublisher()();

      v142 = v49;
      if (qword_1003391E8 != -1)
      {
        swift_once();
      }

      v50 = qword_10038B5B8;
      v143 = qword_10038B5B8;
      v51 = v135;
      (v109)(v135, 1, 1, v102);
      v52 = v50;
      sub_100035D04(&qword_100346A30, &qword_10027E238);
      v53 = v110;
      Publisher.receive<A>(on:options:)();
      sub_1000097E8(v51, &qword_10034C680, &qword_100270390);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = v131;
      Publisher<>.sink(receiveValue:)();

      (v101[0])(v53, v54);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v15 = v134;
    }
  }

  v55 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy;
  v56 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy);
  if (v56)
  {
    v142 = *(*(*(v56 + 24) + 16) + 32);
    sub_100035D04(&qword_10033C370, &qword_10027E1D0);
    sub_10000E244(&qword_100346988, &qword_10033C370, &qword_10027E1D0);
    v142 = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&qword_100346990, &qword_10027E1D8);
    type metadata accessor for Identity();
    sub_10000E244(&qword_100346998, &qword_100346990, &qword_10027E1D8);
    v57 = v112;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_100346A48, &qword_100346A00, &qword_10027E218);
    v58 = Publisher.eraseToAnyPublisher()();
    (*(v133 + 8))(v57, v15);
  }

  else
  {
    v58 = 0;
  }

  v138 = v58;
  v142 = *(*(*(v136 + 24) + 16) + 32);
  sub_100035D04(&qword_1003452D0, &qword_10027C230);
  sub_10000E244(&qword_1003452D8, &qword_1003452D0, &qword_10027C230);
  v142 = Publisher.eraseToAnyPublisher()();
  sub_100035D04(&qword_1003452E0, &qword_10027C238);
  v59 = type metadata accessor for Identity();
  sub_10000E244(&qword_1003452E8, &qword_1003452E0, &qword_10027C238);
  v60 = v128;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100346A50, &qword_1003469F8, &qword_10027E210);
  v61 = v130;
  v62 = Publisher.eraseToAnyPublisher()();
  (*(v129 + 8))(v60, v61);
  v139 = v62;
  v63 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy);
  if (v63)
  {
    v142 = *(*(v63 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices) + 32);
    sub_100035D04(&unk_100348F50, &qword_100272B30);
    sub_10000E244(&qword_100346A58, &unk_100348F50, &qword_100272B30);
    v142 = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&unk_100348F60, &unk_1002833A0);
    sub_10000E244(&qword_100346A60, &unk_100348F60, &unk_1002833A0);
    v64 = v113;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_100346A68, &qword_1003469F0, &qword_10027E208);
    v65 = v115;
    v66 = Publisher.eraseToAnyPublisher()();
    (*(v114 + 8))(v64, v65);
  }

  else
  {
    v66 = 0;
  }

  v140 = v66;
  v67 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_rpClientProxy);
  if (v67)
  {
    v142 = *(*(*(v67 + 16) + 24) + 32);
    sub_100035D04(&qword_10033C228, &qword_10027E240);
    sub_10000E244(&qword_100346A70, &qword_10033C228, &qword_10027E240);
    v142 = Publisher.eraseToAnyPublisher()();
    swift_getKeyPath();
    sub_100035D04(&qword_100346A78, &qword_10027E268);
    sub_10000E244(&qword_100346A80, &qword_100346A78, &qword_10027E268);
    v68 = v116;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_100346A88, &qword_1003469E0, &qword_10027E1F8);
    v69 = v117;
    v70 = v120;
    Publisher.map<A>(_:)();
    (*(v118 + 8))(v68, v70);
    sub_10000E244(&qword_100346A90, &qword_1003469E8, &qword_10027E200);
    v71 = v121;
    v72 = Publisher.eraseToAnyPublisher()();
    (*(v119 + 8))(v69, v71);
  }

  else
  {
    v72 = 0;
  }

  v73 = 0;
  v141 = v72;
  v74 = _swiftEmptyArrayStorage;
  v142 = _swiftEmptyArrayStorage;
LABEL_18:
  if (v73 <= 4)
  {
    v75 = 4;
  }

  else
  {
    v75 = v73;
  }

  while (v73 != 4)
  {
    if (v75 == v73)
    {
      __break(1u);
      goto LABEL_50;
    }

    v76 = &v137[8 * v73++];
    if (*(v76 + 4))
    {
      v77 = *(v76 + 4);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (v142[2] >= v142[3] >> 1)
      {
        v15 = v142[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v74 = v142;
      goto LABEL_18;
    }
  }

  v132 = v59;
  v15 = v55;
  sub_100035D04(&qword_100346A98, &qword_10027E270);
  swift_arrayDestroy();
  v142 = v74;
  sub_100035D04(&qword_100346AA0, &qword_10027E278);
  sub_100035D04(&qword_100346AA8, &unk_10027E280);
  sub_10000E244(&qword_100346AB0, &qword_100346AA0, &qword_10027E278);
  sub_10000E244(&qword_100346AB8, &qword_100346AA8, &unk_10027E280);
  v55 = v122;
  Publishers.MergeMany.init<A>(_:)();
  if (qword_1003391E8 == -1)
  {
    goto LABEL_28;
  }

LABEL_50:
  swift_once();
LABEL_28:
  v78 = qword_10038B5B8;
  v142 = qword_10038B5B8;
  v79 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v80 = v135;
  (*(*(v79 - 8) + 56))(v135, 1, 1, v79);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_100346AC0, &qword_1003469D0, &qword_10027E1E8);
  sub_1000513CC();
  v81 = v78;
  v82 = v125;
  v83 = v124;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v80, &qword_10034C680, &qword_100270390);

  (*(v123 + 8))(v55, v83);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E244(&qword_100346AC8, &qword_1003469D8, &qword_10027E1F0);
  v84 = v127;
  Publisher<>.sink(receiveValue:)();

  (*(v126 + 8))(v82, v84);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v85 = *(v1 + v15);
  if (v85)
  {
    v142 = *(*(*(v85 + 24) + 16) + 48);
    sub_100035D04(&qword_10033C370, &qword_10027E1D0);
    sub_10000E244(&qword_100346988, &qword_10033C370, &qword_10027E1D0);
    v142 = Publisher.eraseToAnyPublisher()();
    sub_100035D04(&qword_100346990, &qword_10027E1D8);
    sub_10000E244(&qword_100346998, &qword_100346990, &qword_10027E1D8);
    v86 = v111;
    Publisher.map<A>(_:)();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000E244(&qword_100346A48, &qword_100346A00, &qword_10027E218);
    v81 = v134;
    Publisher<>.sink(receiveValue:)();

    (*(v133 + 8))(v86, v81);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v87 = *(v136 + 32);
  if (v87 && (v88 = *&v87[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient]) != 0)
  {
    v89 = v87;
    v90 = [v88 activeDevices];
    sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v91 = _swiftEmptyArrayStorage;
  }

  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  sub_100003078(v92, qword_100346758);

  v93 = Logger.logObject.getter();
  LOBYTE(v94) = static os_log_type_t.default.getter();
  v95 = v91 >> 62;
  if (!os_log_type_enabled(v93, v94))
  {

    goto LABEL_41;
  }

  v81 = swift_slowAlloc();
  *v81 = 134217984;
  if (v95)
  {
    goto LABEL_54;
  }

  for (i = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v81 + 1) = i;

    _os_log_impl(&_mh_execute_header, v93, v94, "After activation FOUND %ld rpCLDevices", v81, 0xCu);

LABEL_41:
    if (v95)
    {
      v94 = _CocoaArrayWrapper.endIndex.getter();
      if (!v94)
      {
      }
    }

    else
    {
      v94 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v94)
      {
      }
    }

    if (v94 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_54:
    ;
  }

  for (j = 0; j != v94; ++j)
  {
    if ((v91 & 0xC000000000000001) != 0)
    {
      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v98 = *(v91 + 8 * j + 32);
    }

    v99 = v98;
    sub_100136BB4(v98);
  }
}

void sub_100136B30(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      sub_1001A4DEC(v1);
    }
  }
}

void sub_100136BB4(void *a1)
{
  v2 = v1;
  if (([a1 statusFlags] & 4) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = ~[a1 statusFlags] & 2;
  }

  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100346758);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v42 = v2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A1620, v43);
    *(v9 + 12) = 2080;
    if (v4 == 2)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v12 = String.init<A>(describing:)();
      v11 = v18;
    }

    v19 = sub_100017494(v12, v11, v43);

    *(v9 + 14) = v19;
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v6;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: type=%s, rpCLDevice=%@", v9, 0x20u);
    sub_1000097E8(v10, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();

    v2 = v42;
    if (v4 == 2)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v4 == 2)
    {
LABEL_14:
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "### rpCLDevice found with neither statusFlag: .infraWiFi, .BLE", v23, 2u);
      }

      return;
    }
  }

  v13 = type metadata accessor for Identity();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v6;
  if (v4)
  {
    v17 = sub_1000BD44C(v6);
  }

  else
  {
    v17 = sub_1000BD430(v6);
  }

  v24 = v17;
  v25 = *(*(v2 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8;

  os_unfair_lock_lock(v25);
  v26 = *(v25 + 8);

  v28 = sub_1001A9BF0(v27, sub_10013B978);

  os_unfair_lock_unlock(v25);

  if (v28)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v43[0])
    {
    }

    else
    {
      v30 = *(v2 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy);
      if (v30)
      {
        v31 = *(*(v30 + 24) + 16) + qword_100346AF8;

        os_unfair_lock_lock(v31);
        v32 = *(v31 + 8);

        sub_10013AC78(v33, v24, sub_1001BD450);
        v35 = v34;

        os_unfair_lock_unlock(v31);

        if (v35)
        {
          v36 = v35;
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            *v39 = 138412290;
            *(v39 + 4) = v36;
            *v40 = v35;
            v41 = v36;
            _os_log_impl(&_mh_execute_header, v37, v38, "Attaching CBDevice: %@", v39, 0xCu);
            sub_1000097E8(v40, &qword_100339940, &unk_100272C50);
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v43[0] = v35;

          static Published.subscript.setter();
        }
      }
    }

    sub_100137D78(v28, v24);
  }

  else
  {
    v29 = sub_100138400(v16, v4 & 1);
    sub_100139364(v29);
  }
}

void sub_1001371CC(void *a1)
{
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100346758);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32[0] = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000012, 0x80000001002A16A0, v32);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: rpCLDevice=%@", v7, 0x16u);
    sub_1000097E8(v8, &qword_100339940, &unk_100272C50);

    sub_10000903C(v9);
  }

  __chkstk_darwin(v11);
  v12 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state);
  v13 = *(v12 + 16) + qword_100346AF8;

  os_unfair_lock_lock(v13);
  v14 = *(v13 + 8);

  v16 = sub_1001A9BF0(v15, sub_10013B9A0);

  os_unfair_lock_unlock(v13);

  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32[0])
    {

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Not marking as lost - rapportBTDevice still present", v20, 2u);
      }

LABEL_14:

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v32[0] = 0;
      static Published.subscript.setter();
LABEL_16:

      return;
    }

    goto LABEL_15;
  }

  __chkstk_darwin(v17);
  v21 = *(v12 + 16) + qword_100346AF8;

  os_unfair_lock_lock(v21);
  v22 = *(v21 + 8);

  v16 = sub_1001A9BF0(v23, sub_10013B9D0);

  os_unfair_lock_unlock(v21);

  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v32[0])
    {

      v18 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v18, v24, "Not marking as lost - wifiDevice still present", v25, 2u);
      }

      goto LABEL_14;
    }

LABEL_15:
    sub_100139AD0(v16);
    goto LABEL_16;
  }

  v26 = v4;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "No existing HandoffDevice for %@", v29, 0xCu);
    sub_1000097E8(v30, &qword_100339940, &unk_100272C50);
  }
}

void sub_1001378A4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for Identity();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v3;
  v8 = sub_1000BFEE8(v3);

  *a2 = v8;
}

void sub_100137908(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for Identity();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v3;
  v8 = sub_1000C02A8(v7);

  *a2 = v8;
}

void sub_100137964()
{
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_100346758);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = sub_100017494(0xD00000000000001DLL, 0x80000001002A1660, &v24);
    *(v4 + 4) = v5;
    *(v4 + 12) = 2080;
    v6 = sub_10000A474(v5);
    v8 = sub_100017494(v6, v7, &v24);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: identity=%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v24;
  if (v24)
  {
    __chkstk_darwin(v9);
    v11 = *(*(v0 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8;

    os_unfair_lock_lock(v11);
    v12 = *(v11 + 8);

    v14 = sub_1001A9BF0(v13, sub_10013B998);

    os_unfair_lock_unlock(v11);

    if (v14)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v24 = 0;
      static Published.subscript.setter();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136315138;

        v20 = sub_1001EE1E4(v19);
        v22 = v21;

        v23 = sub_100017494(v20, v22, &v24);

        *(v17 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "UPDATED %s", v17, 0xCu);
        sub_10000903C(v18);
      }
    }
  }
}

uint64_t sub_100137D78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100015D5C(a2);

  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100346758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_1001EE1E4(v10);
    v13 = sub_100017494(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "UPDATED %s", v9, 0xCu);
    sub_10000903C(v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000DF0C();
  v15 = v14;

  if (v15)
  {

    if (*(v3 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_sharingProxy))
    {
      v17 = *(v3 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_sharingProxy);

      sub_100016F18(a1);
    }
  }

  return result;
}

uint64_t sub_100138400(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Identity();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a1;
  v125 = v2;
  if ((a2 & 1) == 0)
  {
    v10 = sub_1000BD430(a1);
    v16 = *(*&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 32);
    v123 = *&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state];
    if (v16)
    {
      v17 = *&v16[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient];

      if (v17)
      {
        v18 = v16;
        v19 = [v17 activeDevices];
        sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v15 = _swiftEmptyArrayStorage;
      }

      v127 = _swiftEmptyArrayStorage;
      if (v15 >> 62)
      {
LABEL_59:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (v26)
        {
LABEL_27:
          v119 = v10;
          v27 = 0;
          v10 = &off_100333000;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v27 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v28 = *(v15 + 8 * v27 + 32);
            }

            v3 = v28;
            v29 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_39;
            }

            if (([v28 statusFlags] & 4) != 0)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v30 = v127[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v27;
            if (v29 == v26)
            {
              v3 = v125;
              v25 = v127;
              v10 = v119;
              goto LABEL_61;
            }
          }
        }
      }

      else
      {
        v26 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_27;
        }
      }

      v25 = _swiftEmptyArrayStorage;
LABEL_61:

      if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
      {
        v35 = _CocoaArrayWrapper.endIndex.getter();
        if (v35)
        {
LABEL_64:
          v36 = 0;
          while (1)
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v36 >= *(v25 + 16))
              {
                goto LABEL_75;
              }

              v37 = *(v25 + 8 * v36 + 32);
            }

            v33 = v37;
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            if (sub_100007B90(v10))
            {
              goto LABEL_73;
            }

            ++v36;
            if (v38 == v35)
            {
              goto LABEL_80;
            }
          }

          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }
      }

      else
      {
        v35 = *(v25 + 16);
        if (v35)
        {
          goto LABEL_64;
        }
      }

LABEL_80:
    }

    else
    {
    }

    v33 = 0;
    goto LABEL_82;
  }

  v10 = sub_1000BD44C(a1);
  v11 = *(*&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state] + 32);
  v123 = *&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state];
  if (!v11)
  {

LABEL_78:
    v33 = 0;
    goto LABEL_82;
  }

  v12 = *&v11[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient];

  if (v12)
  {
    v13 = v11;
    v14 = [v12 activeDevices];
    sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v127 = _swiftEmptyArrayStorage;
  if (v15 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v118 = v10;
    v21 = 0;
    v10 = &off_100333000;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v22 = *(v15 + 8 * v21 + 32);
      }

      v3 = v22;
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (([v22 statusFlags] & 2) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = v127[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v21;
      if (v23 == i)
      {
        v3 = v125;
        v25 = v127;
        v10 = v118;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_44:

  if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
  {
    v15 = *(v25 + 16);
    if (v15)
    {
      goto LABEL_47;
    }

    goto LABEL_77;
  }

LABEL_76:
  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
LABEL_77:

    goto LABEL_78;
  }

LABEL_47:
  v31 = 0;
  while (1)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v31 >= *(v25 + 16))
      {
        goto LABEL_58;
      }

      v32 = *(v25 + 8 * v31 + 32);
    }

    v33 = v32;
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (sub_100007B90(v10))
    {
      break;
    }

    ++v31;
    if (v34 == v15)
    {
      goto LABEL_77;
    }
  }

LABEL_73:

LABEL_82:
  swift_getKeyPath();
  swift_getKeyPath();
  v127 = v33;
  static Published.subscript.setter();
  v39 = *&v3[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy];
  if (v39)
  {
    v40 = *(*(v39 + 24) + 16) + qword_100346AF8;

    os_unfair_lock_lock(v40);
    v41 = *(v40 + 8);

    sub_10013AC78(v42, v10, sub_1001BD450);
    v44 = v43;

    os_unfair_lock_unlock(v40);
  }

  else
  {
    v44 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v127 = v44;

  static Published.subscript.setter();
  v45 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy;
  v46 = *&v125[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_idsProxy];
  if (v46)
  {
    v47 = *(v46 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices) + qword_100346AF8;

    os_unfair_lock_lock(v47);
    v48 = *(v47 + 8);

    sub_10013AC78(v49, v10, sub_1001BC78C);
    v51 = v50;

    os_unfair_lock_unlock(v47);
  }

  else
  {
    v51 = 0;
  }

  v52 = *(v10 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  *(v10 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = v51;

  v53 = *(*(v123 + 24) + 16) + qword_100346AF8;

  os_unfair_lock_lock(v53);
  v54 = *(v53 + 8);

  sub_10013AC78(v55, v10, sub_1001BCC9C);
  v57 = v56;

  os_unfair_lock_unlock(v53);

  swift_getKeyPath();
  swift_getKeyPath();
  v127 = v57;

  v120 = v10;
  v58 = static Published.subscript.setter();
  v59 = *&v125[v45];
  if (v59)
  {
    v60 = *(v59 + OBJC_IVAR____TtC17proximitycontrold8IDSProxy_devices);
    __chkstk_darwin(v58);
    sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    type metadata accessor for UUID();
    sub_10013B49C(&qword_100339848, &type metadata accessor for UUID);
    swift_getKeyPath();
    v61 = v60 + qword_100346AF8;

    os_unfair_lock_lock(v61);
    v127 = *(v61 + 8);

    swift_getAtKeyPath();

    os_unfair_lock_unlock(v61);

    v62 = *(v129 + 16);
    if (v62)
    {
      v63 = sub_100009194(*(v129 + 16), 0);
      v64 = sub_1001295D4(&v127, v63 + 32, v62, v129);
      result = sub_100004F98();
      if (v64 != v62)
      {
        __break(1u);
        goto LABEL_181;
      }
    }

    else
    {

      v63 = _swiftEmptyArrayStorage;
    }

    v127 = _swiftEmptyArrayStorage;
    if (v63 < 0 || (v63 & 0x4000000000000000) != 0)
    {
      goto LABEL_107;
    }

    for (j = *(v63 + 16); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v68 = 0;
      while (1)
      {
        if ((v63 & 0xC000000000000001) != 0)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v68 >= *(v63 + 16))
          {
            goto LABEL_106;
          }

          v69 = *(v63 + 8 * v68 + 32);
        }

        v70 = v69;
        v71 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        v72 = sub_1000BBD2C();

        sub_1000B3708(v72);
        ++v68;
        if (v71 == j)
        {
          v73 = v127;
          goto LABEL_109;
        }
      }

      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      ;
    }

    v73 = _swiftEmptyArrayStorage;
LABEL_109:

    v66 = sub_100008F34(v73);
  }

  else
  {
    v66 = &_swiftEmptySetSingleton;
  }

  v74 = *&v125[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_rpClientProxy];
  if (!v74)
  {

    v81 = 0;
LABEL_172:
    v116 = *(v10 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
    *(v10 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = v81;

    return v10;
  }

  v75 = *(*(v74 + 16) + 24);
  __chkstk_darwin(v58);
  type metadata accessor for RPIdentityWrapper();
  swift_getKeyPath();
  v76 = v75 + qword_100346AF8;

  os_unfair_lock_lock(v76);
  v127 = *(v76 + 8);

  swift_getAtKeyPath();

  v77 = v129;
  os_unfair_lock_unlock(v76);

  v78 = *(v77 + 16);
  if (v78)
  {
    v79 = sub_100009194(*(v77 + 16), 0);
    v80 = sub_100009A04(&v127, v79 + 32, v78, v77);
    result = sub_100004F98();
    if (v80 == v78)
    {

      if (v79 < 0)
      {
        goto LABEL_126;
      }

      goto LABEL_117;
    }

LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v79 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_117:
  if ((v79 & 0x4000000000000000) == 0)
  {
    v82 = *(v79 + 16);
    if (!v82)
    {
LABEL_127:

      v87 = _swiftEmptyArrayStorage;
      goto LABEL_128;
    }

    goto LABEL_119;
  }

LABEL_126:
  v82 = _CocoaArrayWrapper.endIndex.getter();
  if (!v82)
  {
    goto LABEL_127;
  }

LABEL_119:
  v127 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v82 & 0x8000000000000000) == 0)
  {
    v83 = 0;
    do
    {
      if ((v79 & 0xC000000000000001) != 0)
      {
        v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v84 = *(v79 + 8 * v83 + 32);
      }

      ++v83;
      swift_beginAccess();
      v85 = *(v84 + 32);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v86 = v127[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v82 != v83);

    v87 = v127;
LABEL_128:
    v128 = _swiftEmptyArrayStorage;
    if (v87 >> 62)
    {
      goto LABEL_177;
    }

    v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_130:
    v81 = _swiftEmptyArrayStorage;
    if (v88)
    {
      v89 = 0;
      v90 = v87 & 0xC000000000000001;
      v91 = v87 & 0xFFFFFFFFFFFFFF8;
      v92 = v66;
      v66 = (v87 + 32);
      v124 = v88;
      v126 = v92;
      v93 = &off_100333000;
      v10 = v88;
      v121 = v92 + 7;
      v122 = v87 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v90)
        {
          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v89 >= *(v91 + 16))
          {
            goto LABEL_174;
          }

          v87 = v66[v89];
        }

        v95 = v87;
        v96 = __OFADD__(v89, 1);
        v89 = (v89 + 1);
        if (v96)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          v117 = v87;
          v88 = _CocoaArrayWrapper.endIndex.getter();
          v87 = v117;
          goto LABEL_130;
        }

        if ([v87 v93[399]] == 2)
        {
          v97 = v10;
          v98 = [v95 idsDeviceID];
          if (v98)
          {
            v99 = v98;
            v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v102 = v101;
          }

          else
          {
            v100 = 0;
            v102 = 0xE000000000000000;
          }

          if (!v126[2])
          {

            v93 = &off_100333000;
            v10 = v97;
            goto LABEL_134;
          }

          v103 = v90;
          v104 = v126[5];
          Hasher.init(_seed:)();
          String.hash(into:)();
          v105 = Hasher._finalize()();
          v106 = -1 << *(v126 + 32);
          v107 = v105 & ~v106;
          v93 = &off_100333000;
          if (((*(v121 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
          {
LABEL_152:

            v90 = v103;
            v91 = v122;
            v10 = v124;
            goto LABEL_134;
          }

          v108 = ~v106;
          while (1)
          {
            v109 = v126[6] + 16 * v107;
            v110 = *v109 == v100 && v109[1] == v102;
            if (v110 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v107 = (v107 + 1) & v108;
            if (((*(v121 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
            {
              goto LABEL_152;
            }
          }

          v90 = v103;
          v91 = v122;
          v10 = v124;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v94 = v128[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v87 = specialized ContiguousArray._endMutation()();
LABEL_134:
        if (v89 == v10)
        {
          v111 = v128;
          v10 = v120;
          v81 = _swiftEmptyArrayStorage;
          goto LABEL_157;
        }
      }
    }

    v111 = _swiftEmptyArrayStorage;
LABEL_157:

    v127 = _swiftEmptyArrayStorage;
    if ((v111 & 0x8000000000000000) != 0 || (v111 & 0x4000000000000000) != 0)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
      v66 = v87;
      if (v87)
      {
LABEL_160:
        v112 = 0;
        while (1)
        {
          if ((v111 & 0xC000000000000001) != 0)
          {
            v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v112 >= *(v111 + 16))
            {
              goto LABEL_176;
            }

            v87 = *(v111 + 8 * v112 + 32);
          }

          v113 = v87;
          v114 = (v112 + 1);
          if (__OFADD__(v112, 1))
          {
            goto LABEL_175;
          }

          if (sub_1001BC2D0(v10))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v115 = v127[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v87 = specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v112;
          if (v114 == v66)
          {
            v81 = v127;
            break;
          }
        }
      }
    }

    else
    {
      v66 = *(v111 + 16);
      if (v66)
      {
        goto LABEL_160;
      }
    }

    goto LABEL_172;
  }

LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_100139364(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_100003078(v8, qword_100346758);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_100017494(0xD00000000000001ALL, 0x80000001002A15A0, v60);
    *(v12 + 4) = v13;
    *(v12 + 12) = 2080;
    v14 = sub_10000A474(v13);
    v16 = sub_100017494(v14, v15, v60);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *&v1[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state];
  v18 = *(v17 + 16) + qword_100346AF8;

  os_unfair_lock_lock(v18);
  v19 = *(v18 + 8);

  v21 = sub_1001A9BF0(v20, sub_10013BA78);

  os_unfair_lock_unlock(v18);

  if (v21)
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v58 = v17;
      v25 = v24;
      v26 = swift_slowAlloc();
      v60[0] = v26;
      *v25 = 136315394;
      v27 = sub_10000A474(v26);
      v29 = sub_100017494(v27, v28, v60);
      v57 = v9;
      v30 = v7;
      v31 = v29;

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;

      v33 = sub_1001EE1E4(v32);
      v35 = v34;

      v36 = sub_100017494(v33, v35, v60);
      v7 = v30;

      *(v25 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v22, v23, "### Device found in cache, replacing...\n  Identity: %s\n  HandoffDevice:%s", v25, 0x16u);
      swift_arrayDestroy();

      v17 = v58;
    }

    sub_100139AD0(v21);
  }

  v37 = *&v2[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_model + 8];
  v60[0] = a1;
  v60[1] = v2;
  v60[2] = &off_10030C530;
  v60[3] = v37;
  v61 = 0;
  v38 = type metadata accessor for HandoffDevice();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  v41 = v2;
  v42 = sub_10007639C(v60);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v58 = v17;
    v46 = v45;
    v47 = swift_slowAlloc();
    v57 = v7;
    v48 = v47;
    v59[0] = v47;
    *v46 = 136315138;

    v50 = sub_1001EE1E4(v49);
    v52 = v51;

    v53 = sub_100017494(v50, v52, v59);

    *(v46 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v43, v44, "FOUND %s", v46, 0xCu);
    sub_10000903C(v48);
    v7 = v57;

    v17 = v58;
  }

  v54 = *(v17 + 16);

  sub_100049880(v42);

  *(v42 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncDelegate + 8) = &off_10030C530;
  swift_unknownObjectWeakAssign();
  type metadata accessor for DiscoveryTokenStateMachine(0);
  sub_100005D90(v7);
  swift_beginAccess();
  sub_1001677A8(v7);
  swift_endAccess();

  sub_100010B48(v7);
  return v42;
}

uint64_t sub_100139940(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v13;
  if (v13)
  {
    v4 = [v13 effectiveIdentifier];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = [a2 effectiveIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v3)
  {
    if (v5 == v8 && v3 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_100139AD0(uint64_t a1)
{
  v2 = v1;
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100346758);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = sub_1001EE1E4(v8);
    v11 = sub_100017494(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "LOST %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = 0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = 0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = 0;
  static Published.subscript.setter();
  v12 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v12)
  {
    v13 = v12;
    sub_1001A6328(a1);
  }

  sub_100072F14();
  v14 = *(*(v2 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16);

  sub_1002096F0(a1);
}

uint64_t sub_100139E00(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v14;
  if (v14)
  {
    v4 = [v14 identifier];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v6;
    }

    else
    {
      v5 = 0;
      v3 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = [a2 identifier];
  if (v7 && (v8 = v7, v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v11 = v10, v8, v3) && v11)
  {
    if (v5 == v9 && v3 == v11)
    {

      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_100139FD0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(a2) = sub_10000E2B0(a2);

  return a2 & 1;
}

uint64_t sub_10013A064(uint64_t a1, void *a2)
{
  sub_100139AD0(a1);
  if (a2)
  {
    v3 = [a2 statusFlags];
    if ((v3 & 4) != 0 || ([a2 statusFlags] & 2) != 0)
    {
      v7 = sub_100138400(a2, (v3 & 4) >> 2);
      v8 = sub_100139364(v7);

      return v8;
    }

    v4 = 0x80000001002A1640;
    sub_100035D04(&qword_100346AE0, &qword_10027E298);
    sub_10000E244(&qword_100346AE8, &qword_100346AE0, &qword_10027E298);
    swift_allocError();
    v6 = 0xD000000000000015;
  }

  else
  {
    sub_100035D04(&qword_100346AD0, &qword_10027E290);
    sub_10000E244(&qword_100346AD8, &qword_100346AD0, &qword_10027E290);
    swift_allocError();
    v4 = 0xEE003F6563697665;
    v6 = 0x444C437072206F4ELL;
  }

  *v5 = v6;
  v5[1] = v4;
  return swift_willThrow();
}

uint64_t sub_10013A268(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10013A2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013A2FC()
{
  v1 = v0;
  v2 = 0xD000000000000010;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10026F050;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x80000001002A15C0;
  v4 = v3;
  v85 = 0x3D736B736154;
  v86 = 0xE600000000000000;
  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_tasks);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  v90 = v6;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8 = v85;
  v9 = v86;
  v10 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    *(v10 + 16) = v13;
    v14 = (v10 + 16 * v12);
    *(v14 + 4) = v8;
    *(v14 + 5) = v9;
    v85 = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v85 = 0x7265766F63736944;
    v86 = 0xEF3D736B73615479;
    v15 = OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_discoveryTasks;
    swift_beginAccess();
    v16 = *(v1 + v15);
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v16 < 0)
      {
        v17 = *(v1 + v15);
      }

      v18 = *(v1 + v15);

      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *(v16 + 16);
    }

    v88 = v19;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21 = v85;
    v22 = v86;
    v24 = *(v10 + 16);
    v23 = *(v10 + 24);
    if (v24 >= v23 >> 1)
    {
      v10 = sub_100009088((v23 > 1), v24 + 1, 1, v10);
    }

    *(v10 + 16) = v24 + 1;
    v25 = (v10 + 16 * v24);
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
    v85 = v10;

    v26 = sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    v82[1] = sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
    v82[2] = v26;
    v27 = BidirectionalCollection<>.joined(separator:)();
    v28 = v10;
    v30 = v29;
    v82[0] = v28;

    v31 = v4;
    v33 = *(v4 + 2);
    v32 = *(v4 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_100009088((v32 > 1), v33 + 1, 1, v4);
    }

    *(v31 + 2) = v33 + 1;
    v34 = v31;
    v35 = &v31[16 * v33];
    *(v35 + 4) = v27;
    *(v35 + 5) = v30;
    v85 = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v88 = v2;
    v89 = 0x80000001002A15E0;
    v83 = v1;
    v4 = *(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state);
    v13 = *(v4 + 2);
    __chkstk_darwin(v36);
    v37 = type metadata accessor for HandoffDevice();
    v38 = type metadata accessor for UUID();
    v39 = sub_10013B49C(&qword_100339848, &type metadata accessor for UUID);
    swift_getKeyPath();
    v40 = &qword_100346000;
    v41 = v13 + qword_100346AF8;

    os_unfair_lock_lock(v41);
    v85 = *(v41 + 8);

    swift_getAtKeyPath();

    v42 = v87;
    os_unfair_lock_unlock(v41);

    v9 = *(v42 + 16);
    if (v9)
    {
      v43 = sub_100009194(*(v42 + 16), 0);
      v2 = sub_100009A04(&v85, v43 + 32, v9, v42);
      sub_100004F98();
      if (v2 != v9)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v84 = v39;
      if (v43 < 0)
      {
        goto LABEL_43;
      }
    }

    else
    {

      v43 = _swiftEmptyArrayStorage;
      v84 = v39;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    if ((v43 & 0x4000000000000000) == 0)
    {
      v45 = *(v43 + 16);
      goto LABEL_21;
    }

LABEL_43:
    v45 = _CocoaArrayWrapper.endIndex.getter();
LABEL_21:
    v38 = v37;

    v85 = v45;
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 41;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v49 = v88;
    v50 = v89;
    v51 = v34;
    v12 = *(v34 + 2);
    v52 = *(v51 + 3);
    v53 = v4;
    if (v12 >= v52 >> 1)
    {
      v48 = sub_100009088((v52 > 1), v12 + 1, 1, v51);
      v51 = v48;
    }

    v40 = v82;
    *(v51 + 2) = v12 + 1;
    v4 = v51;
    v54 = &v51[16 * v12];
    *(v54 + 4) = v49;
    *(v54 + 5) = v50;
    v13 = *(v53 + 2);
    __chkstk_darwin(v48);
    swift_getKeyPath();
    v55 = v13 + qword_100346AF8;

    os_unfair_lock_lock(v55);
    v85 = *(v55 + 8);

    swift_getAtKeyPath();

    v2 = v88;
    os_unfair_lock_unlock(v55);

    v9 = *(v2 + 16);
    if (v9)
    {
      v10 = sub_100009194(*(v2 + 16), 0);
      v2 = sub_100009A04(&v85, v10 + 32, v9, v2);
      sub_100004F98();
      if (v2 != v9)
      {
        goto LABEL_55;
      }

      if (v10 < 0)
      {
        goto LABEL_44;
      }
    }

    else
    {

      v10 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }
    }

    if ((v10 & 0x4000000000000000) == 0)
    {
      v8 = *(v10 + 16);
      if (!v8)
      {
        break;
      }

      goto LABEL_30;
    }

LABEL_44:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      break;
    }

LABEL_30:
    v1 = 0;
    v84 = v10 & 0xC000000000000001;
    while (v84)
    {
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v2 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_40;
      }

LABEL_34:
      v85 = 2108704;
      v86 = 0xE300000000000000;
      v58._countAndFlagsBits = sub_1001EE1E4(v57);
      String.append(_:)(v58);

      v9 = v85;
      v12 = v86;
      v59 = v4;
      v61 = *(v4 + 2);
      v60 = *(v4 + 3);
      v13 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        v59 = sub_100009088((v60 > 1), v61 + 1, 1, v4);
      }

      *(v59 + 2) = v13;
      v4 = v59;
      v62 = &v59[16 * v61];
      *(v62 + 4) = v9;
      *(v62 + 5) = v12;

      ++v1;
      if (v2 == v8)
      {
        goto LABEL_45;
      }
    }

    v11 = *(v10 + 16);
    if (v1 >= v11)
    {
      goto LABEL_41;
    }

    v56 = *(v10 + 8 * v1 + 32);

    v2 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_34;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v10 = sub_100009088((v11 > 1), v13, 1, v10);
  }

LABEL_45:

  v40 = v83;
  if (*(v83 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy))
  {
    v85 = 10;
    v86 = 0xE100000000000000;

    v64._countAndFlagsBits = sub_100126480(v63);
    String.append(_:)(v64);

    v38 = v85;
    v9 = v86;
    v2 = *(v4 + 2);
    v44 = *(v4 + 3);
    v13 = v2 + 1;
    if (v2 < v44 >> 1)
    {
LABEL_47:

      v65 = v4;
      *(v4 + 2) = v13;
      v66 = &v4[16 * v2];
      *(v66 + 4) = v38;
      *(v66 + 5) = v9;
      goto LABEL_49;
    }

LABEL_56:
    v4 = sub_100009088((v44 > 1), v13, 1, v4);
    goto LABEL_47;
  }

  v65 = v4;
LABEL_49:
  v67 = *(*(v40 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
  if (v67)
  {
    v85 = 10;
    v86 = 0xE100000000000000;
    v68 = v65;
    v69 = v67;
    v70 = [v69 description];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74._countAndFlagsBits = v71;
    v74._object = v73;
    String.append(_:)(v74);

    v75 = v85;
    v76 = v86;
    v78 = *(v68 + 2);
    v77 = *(v68 + 3);
    if (v78 >= v77 >> 1)
    {
      v68 = sub_100009088((v77 > 1), v78 + 1, 1, v68);
    }

    v65 = v68;
    *(v68 + 2) = v78 + 1;
    v79 = &v68[16 * v78];
    *(v79 + 4) = v75;
    *(v79 + 5) = v76;
  }

  v85 = v65;

  v80 = BidirectionalCollection<>.joined(separator:)();
  swift_bridgeObjectRelease_n();
  return v80;
}

void sub_10013AC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a1 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      if (a3(a2))
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10013AD90(void *a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4, uint64_t a5)
{
  v67 = a4;
  v68 = a5;
  v65 = a2;
  v66 = a3;
  v64 = a1;
  v5 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  __chkstk_darwin(v5);
  v8 = &v60 - v7;
  v9 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v60 - v12;
  v14 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003078(v19, qword_100346758);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v61 = v18;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Guest requested ranging token", v22, 2u);
    v18 = v61;
  }

  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 4 || DeviceClass == 7)
  {
    v24 = type metadata accessor for Identity();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 20) = 256;
    v28 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
    v69 = 0;
    sub_100035D04(&qword_10033D5D0, &unk_100273240);
    Published.init(initialValue:)();
    (*(v15 + 32))(v27 + v28, v18, v14);
    v29 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
    v69 = 0;
    sub_100035D04(&qword_10033F6A8, &qword_100276540);
    Published.init(initialValue:)();
    (*(v10 + 32))(v27 + v29, v13, v9);
    v30 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
    *(v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
    v31 = (v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
    *v31 = 0;
    v31[1] = 0;
    v32 = (v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
    *v32 = 0;
    v32[1] = 0;
    v33 = OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID;
    *(v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
    v34 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
    v69 = 0;
    sub_100035D04(&qword_10033D608, &unk_100273250);
    Published.init(initialValue:)();
    v35 = v63;
    v36 = *(v62 + 32);
    v36(v27 + v34, v8, v63);
    v37 = OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities;
    *(v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
    v38 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
    v69 = 0;
    Published.init(initialValue:)();
    v36(v27 + v38, v8, v35);
    v39 = (v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
    *v39 = 0;
    v39[1] = 0;
    v40 = (v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
    *v40 = 0;
    v40[1] = 0;
    v41 = (v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
    *v41 = 0;
    v41[1] = 0;
    v42 = (v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
    *v42 = 0;
    v42[1] = 0;
    *(v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
    v43 = v27 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
    *v43 = 0;
    *(v43 + 8) = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v69 = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v69 = 0;

    static Published.subscript.setter();
    v44 = *(v27 + v30);
    *(v27 + v30) = 0;

    swift_getKeyPath();
    swift_getKeyPath();
    v69 = 0;

    static Published.subscript.setter();
    v45 = *(v27 + v37);
    *(v27 + v37) = 0;

    swift_getKeyPath();
    swift_getKeyPath();
    v69 = 0;

    static Published.subscript.setter();
    v46 = *(v27 + v33);
    v47 = v64;
    *(v27 + v33) = v64;
    v48 = v47;

    v49 = sub_100139364(v27);
    v50 = sub_100168AF4(v48, v49);
    v52 = v51;
    sub_100123AEC(v50, v51, v66, v67, v68);
    sub_10006DB04(v50, v52);
  }

  else
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Attempt to send guest ranging token on non-communal device", v56, 2u);
    }

    v57 = v66;
    v58 = v67;
    v59 = v68;

    return sub_100123AEC(0, 0xF000000000000000, v57, v58, v59);
  }
}

uint64_t sub_10013B49C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10013B4E4(uint64_t a1, uint64_t a2, char *a3)
{
  v25[3] = type metadata accessor for DeviceActivityServer();
  v25[4] = &off_100316D70;
  v25[0] = a2;
  v5 = &a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_activitySource];
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_registeredRequestHandlers] = _swiftEmptyDictionarySingleton;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_registeredEventHandlers] = _swiftEmptyDictionarySingleton;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient] = 0;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_pushTaskStorage] = &_swiftEmptySetSingleton;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_remoteSubscriptions] = _swiftEmptyDictionarySingleton;
  v6 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_airplayPrefs;
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  *&a3[v6] = v9;
  v10 = &a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLDeviceDiscoverySubject];
  v11 = sub_100035D04(&qword_100346A10, &qword_100283B20);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v15 = *(v11 + 48);
  v16 = *(v11 + 52);
  swift_allocObject();
  v17 = PassthroughSubject.init()();
  *v10 = v14;
  v10[1] = v17;
  v10[2] = 0;
  v18 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v19 = qword_10038B5B8;
  *&a3[v18] = qword_10038B5B8;
  *&a3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_tasks] = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakAssign();
  sub_10007E790(v25, v24);
  swift_beginAccess();
  v20 = v19;
  sub_10013BA00(v24, v5);
  swift_endAccess();
  v23.receiver = a3;
  v23.super_class = type metadata accessor for RapportProxy();
  v21 = objc_msgSendSuper2(&v23, "init");
  sub_10000903C(v25);
  return v21;
}

uint64_t sub_10013B764@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  *a2 = sub_100202368(*a1, v2[2], v2[3], v2[4], v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));
}

uint64_t sub_10013B820(char *a1)
{
  v3 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);
  v14 = *a1;

  return sub_100200498(v14, v7, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t sub_10013BA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100342B68, qword_10027E2A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013BA7C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10013BB4C()
{
  v1 = *v0;
  v2 = v0 + qword_100346AF8;
  os_unfair_lock_lock((v0 + qword_100346AF8));
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = *(v2 + 1);
  v7 = Dictionary.count.getter();
  type metadata accessor for Dictionary();
  os_unfair_lock_unlock(v2);
  return v7;
}

uint64_t sub_10013BC04(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    result = [*(*(v1 + 56) + ((v9 << 9) | (8 * v10))) nearbyActionFlags];
    if ((result & 0x10) != 0)
    {
      v11 = 1;
LABEL_13:

      return v11;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10013BCF8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * v11)));
    if ([v12 supportsR1])
    {
      if (qword_1003391D8 != -1)
      {
        swift_once();
      }

      if (byte_10038B5A8 == 1)
      {
        if (![v12 nearbyActivityLevel] || objc_msgSend(v12, "nearbyActivityLevel") >= 7)
        {
          v30 = v2;
          if (qword_100339240 != -1)
          {
            swift_once();
          }

          v13 = qword_10038B5D0;
          swift_beginAccess();
          v14 = *(v13 + 16);
          v15 = *(v14 + 24);

          CurrentValueSubject.value.getter();
          v16 = v31;
          if (v31 == 3)
          {
            v17 = *(v14 + 16);
            CurrentValueSubject.value.getter();

            v16 = v32;
          }

          else
          {
          }

          v18 = [v12 model];
          if (v16 != 2)
          {
            if (v18)
            {
              v25 = v18;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v26._countAndFlagsBits = 0x656E6F685069;
              v26._object = 0xE600000000000000;
              LOBYTE(v25) = String.hasPrefix(_:)(v26);

              if (v25)
              {
                goto LABEL_33;
              }
            }

            v27 = [v12 model];
            if (!v27)
            {
LABEL_33:
            }

            else
            {
              v28 = v27;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v29._countAndFlagsBits = 0x6863746157;
              v29._object = 0xE500000000000000;
              String.hasPrefix(_:)(v29);
            }

            return 1;
          }

          if (v18)
          {
            v19 = v18;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v20._countAndFlagsBits = 0x656E6F685069;
            v20._object = 0xE600000000000000;
            LOBYTE(v19) = String.hasPrefix(_:)(v20);

            if (v19)
            {
              goto LABEL_36;
            }
          }

          v21 = [v12 model];
          v2 = v30;
          if (v21)
          {
            v22 = v21;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v23._countAndFlagsBits = 0x6863746157;
            v23._object = 0xE500000000000000;
            LOBYTE(v22) = String.hasPrefix(_:)(v23);

            if (v22)
            {
              goto LABEL_33;
            }
          }
        }
      }

      else if (([v12 nearbyActionFlags] & 0x10) != 0)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:

  return 1;
}

uint64_t sub_10013C0AC()
{
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 96);
  swift_getKeyPath();
  v1 = v0 + qword_100346AF8;
  os_unfair_lock_lock(v1);
  v6 = *(v1 + 8);

  swift_getAtKeyPath();

  type metadata accessor for Dictionary();
  type metadata accessor for Dictionary.Values();
  os_unfair_lock_unlock(v1);

  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

char *sub_10013C1F0()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);

  v6 = *(v0 + 8);

  v7 = qword_100346AF0;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = v1[11];
  v10 = v1[10];
  v11 = v1[12];
  type metadata accessor for Dictionary();
  v12 = *(type metadata accessor for _Cell() + 16);
  UnsafeMutablePointer.deinitialize(count:)();
  v13 = *&v0[qword_100346B00];

  return v0;
}

uint64_t sub_10013C304()
{
  sub_10013C1F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10013C374()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10013C3C8()
{
  v1 = *v0;
  v2 = *v0;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10026F050;
  v11 = v0[7];
  v12 = v0[8];

  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  sub_10013BB4C();
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  *(v3 + 32) = v11;
  *(v3 + 40) = v12;
  sub_10013C0AC();
  v9 = *(v2 + 80);
  v10 = *(v1 + 96);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v7 = BidirectionalCollection<>.joined(separator:)();
  swift_bridgeObjectRelease_n();
  return v7;
}

uint64_t sub_10013C5C8(uint64_t a1, uint64_t *a2)
{
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  String.append(_:)(v3);

  v4 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_100009088(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_100009088((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  *(v4 + 16) = v7 + 1;
  v8 = v4 + 16 * v7;
  *(v8 + 32) = 2108704;
  *(v8 + 40) = 0xE300000000000000;
  return result;
}

uint64_t sub_10013C760()
{
  v1 = *v0;
  v2 = *v0;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10026F050;
  v11 = v0[7];
  v12 = v0[8];

  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  sub_10013BB4C();
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  *(v3 + 32) = v11;
  *(v3 + 40) = v12;
  sub_10013C0AC();
  v9 = *(v2 + 80);
  v10 = *(v1 + 96);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v7 = BidirectionalCollection<>.joined(separator:)();
  swift_bridgeObjectRelease_n();
  return v7;
}

uint64_t sub_10013C968(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10013FD60(a3, a5);
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  String.append(_:)(v11);

  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if ((result & 1) == 0)
  {
    result = sub_100009088(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
    *a2 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_100009088((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
    *a2 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 16 * v9;
  *(v10 + 32) = 2108704;
  *(v10 + 40) = 0xE300000000000000;
  return result;
}

uint64_t sub_10013CAD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  return sub_10013C760();
}

uint64_t sub_10013CB00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_10013C5C8(a1, *(v1 + 40));
}

uint64_t sub_10013CB48()
{
  v1 = qword_10033E9C0;
  if (*(v0 + qword_10033E9C0))
  {
    v2 = *(v0 + qword_10033E9C0);
  }

  else
  {
    v6 = *(v0 + qword_10033E9B8);
    sub_100035D04(&qword_10033EAC0, &unk_100274E70);
    sub_10000E244(&qword_100346DC8, &qword_10033EAC0, &unk_100274E70);
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10013CC24()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346C08);
  sub_100003078(v0, qword_100346C08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10013CCA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *(v2 + 24) = a1;

  sub_10005E5D0();
  v5 = *(v2 + 24);

  CurrentValueSubject.send(_:)();
}

uint64_t sub_10013CD3C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);

    v3 = v0;
    sub_10005E5D0();
    sub_100035D04(&qword_10033C350, &unk_10027E560);
    sub_10000E244(&qword_100346DD8, &qword_10033C350, &unk_10027E560);
    Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_10033B560, &qword_100272030);
    sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030);
    v1 = Publisher.eraseToAnyPublisher()();

    v4 = *(v0 + 24);
    *(v3 + 24) = v1;
  }

  return v1;
}

void *sub_10013CE98()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v2);
  v52 = v4;
  v54 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_100346D50, &qword_10027E508);
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v57 = v43 - v7;
  v8 = sub_100035D04(&qword_100346D58, &qword_10027E510);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  __chkstk_darwin(v8);
  v11 = v43 - v10;
  v12 = sub_100035D04(&qword_100346D60, &qword_10027E518);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  __chkstk_darwin(v12);
  v15 = v43 - v14;
  v53 = sub_100035D04(&qword_100346D68, &qword_10027E520);
  v51 = *(v53 - 8);
  v16 = *(v51 + 64);
  __chkstk_darwin(v53);
  v50 = v43 - v17;
  sub_100035D04(&qword_100346D70, &qword_10027E528);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v0[2] = v18;
  v0[3] = 0;
  v19 = objc_allocWithZone(sub_100035D04(&qword_100346D78, &qword_10027E530));
  v20 = sub_10013DF1C(0xD000000000000031, 0x80000001002A17D0, &qword_100346D78, &qword_10027E530);
  v0[5] = &_swiftEmptySetSingleton;
  v21 = v0 + 5;
  v0[4] = v20;
  if (qword_100339080 != -1)
  {
    swift_once();
  }

  v56 = v2;
  v44 = sub_100003078(v2, qword_100346C08);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Init", v24, 2u);
  }

  v25 = v1[4];
  v26 = sub_1002376C0();

  v60 = v26;
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_100346D80, &qword_10027E538);
  v43[1] = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_100346D88, &qword_100346D80, &qword_10027E538);
  Publisher<>.sink(receiveValue:)();

  v45 = v21;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v60 = sub_10013CD3C();
  sub_100035D04(&qword_10033B560, &qword_100272030);
  sub_100035D04(&qword_100343150, &qword_100278FF0);
  sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030);
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100346D90, &unk_10027E540);
  v27 = v47;
  Publishers.CompactMap.map<A>(_:)();
  (*(v46 + 8))(v11, v27);
  sub_10000E244(&qword_100346D98, &qword_100346D60, &qword_10027E518);
  sub_10000E244(&qword_100346DA0, &qword_100346D90, &unk_10027E540);
  v28 = v49;
  v29 = v50;
  Publisher<>.switchToLatest()();
  (*(v48 + 8))(v15, v28);
  LOBYTE(v25) = static os_log_type_t.info.getter();
  v30 = v54;
  v31 = v55;
  v32 = v56;
  (*(v55 + 16))(v54, v44, v56);
  v33 = (*(v31 + 80) + 64) & ~*(v31 + 80);
  v34 = v33 + v52;
  v35 = swift_allocObject();
  *(v35 + 2) = sub_10013DA1C;
  *(v35 + 3) = 0;
  *(v35 + 4) = 0;
  *(v35 + 5) = 0xE000000000000000;
  *(v35 + 6) = 0;
  *(v35 + 7) = 0xE000000000000000;
  (*(v31 + 32))(&v35[v33], v30, v32);
  v35[v34] = v25;
  sub_100035D04(&unk_10034B570, &unk_100289810);
  sub_10000E244(&qword_100346DA8, &qword_100346D68, &qword_10027E520);
  v36 = v57;
  v37 = v53;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100346DB0, &qword_100346D50, &qword_10027E508);
  v38 = v59;
  v39 = Publisher.eraseToAnyPublisher()();
  (*(v58 + 8))(v36, v38);
  (*(v51 + 8))(v29, v37);
  v60 = v39;
  v40 = swift_allocObject();
  swift_weakInit();

  v41 = swift_allocObject();
  *(v41 + 16) = sub_10013E328;
  *(v41 + 24) = v40;
  sub_100035D04(&qword_100346DB8, &unk_10027E550);
  sub_10000E244(&qword_100346DC0, &qword_100346DB8, &unk_10027E550);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_10013D7D0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_10013CCA4(v3);
  }

  return result;
}

uint64_t sub_10013D834(uint64_t *a1)
{
  v1 = *a1;
  sub_10013CB48();

  sub_100035D04(&qword_10033E738, &unk_100274820);
  sub_100035D04(&unk_10034B570, &unk_100289810);
  sub_10000E244(&qword_10033E740, &qword_10033E738, &unk_100274820);
  Publisher.map<A>(_:)();
}

uint64_t sub_10013D930()
{
  _StringGuts.grow(_:)(26);
  v0._countAndFlagsBits = 0x206B6E694CLL;
  v0._object = 0xE500000000000000;
  String.append(_:)(v0);
  sub_100035D04(&qword_100343150, &qword_100278FF0);
  _print_unlocked<A, B>(_:_:)();
  v1._object = 0x80000001002A1810;
  v1._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_10013DA1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10013D930();
}

uint64_t sub_10013DA2C(uint64_t result, unsigned __int8 a2)
{
  if (a2 >= 2u)
  {
    v14[14] = v2;
    v14[15] = v3;
    v4 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = *(*(result + 16) + 24);

      if (v5)
      {

        if (v5 == v4)
        {
          if (qword_100339080 != -1)
          {
            swift_once();
          }

          v6 = type metadata accessor for Logger();
          sub_100003078(v6, qword_100346C08);

          v7 = Logger.logObject.getter();
          v8 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v7, v8))
          {
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            v14[0] = v10;
            *v9 = 136315138;

            sub_100035D04(&qword_100343150, &qword_100278FF0);
            v11 = String.init<A>(describing:)();
            v13 = sub_100017494(v11, v12, v14);

            *(v9 + 4) = v13;
            _os_log_impl(&_mh_execute_header, v7, v8, "Removing link: %s", v9, 0xCu);
            sub_10000903C(v10);
          }

          swift_beginAccess();
          result = swift_weakLoadStrong();
          if (result)
          {
            sub_10013CCA4(0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10013DC40()
{
  v1 = v0;
  if (qword_100339080 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346C08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 16);

  v7 = *(v1 + 24);

  v8 = *(v1 + 40);

  return v1;
}

uint64_t sub_10013DD40()
{
  sub_10013DC40();

  return swift_deallocClassInstance();
}

void sub_10013DD98()
{
  v1 = v0;
  if (qword_100339080 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346C08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29287472617473, 0xE700000000000000, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + 32);
  sub_1002377C4();
}

char *sub_10013DF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v33 = a4;
  v6 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  *&v6[qword_100347AC8] = 0;
  *&v6[qword_100347AD0] = 0;
  *&v6[qword_100347AD8] = &_swiftEmptySetSingleton;
  v18 = &v6[qword_100347AB8];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = objc_allocWithZone(NSXPCListener);

  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithMachServiceName:v20];

  *&v6[qword_100347AB0] = v21;
  v22 = qword_1003391E8;
  v23 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  [v23 _setQueue:{qword_10038B5B8, v33}];

  v35 = ObjectType;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v24 = v17;
  v25 = v10;
  (*(v11 + 32))(&v6[qword_100347AC0], v24, v10);
  v26 = sub_100035D04(a3, v33);
  v34.receiver = v6;
  v34.super_class = v26;
  v27 = objc_msgSendSuper2(&v34, "init");
  (*(v11 + 16))(v15, v27 + qword_100347AC0, v10);
  v28 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Init", v31, 2u);
  }

  (*(v11 + 8))(v15, v25);
  [*&v28[qword_100347AB0] setDelegate:v28];

  return v28;
}

uint64_t sub_10013E260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  *a2 = sub_1001CC3A8(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *(a2 + 8) = v6;
}

uint64_t sub_10013E330(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_10013E364@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = v2;
  *(a2 + 8) = v3;
}

uint64_t sub_10013E378(void *a1, double a2)
{
  v3 = v2;
  v31 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v27 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v25 - v19;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_storage) = &_swiftEmptySetSingleton;
  *(v3 + OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_duration) = a2;
  static DispatchTime.now()();
  + infix(_:_:)();
  v26 = *(v14 + 8);
  v26(v18, v13);
  v21 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10013EDDC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_10030A708;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10013EDE4(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v31;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v30 + 8))(v8, v5);
  (*(v28 + 8))(v12, v29);
  v26(v20, v27);

  return v3;
}

uint64_t sub_10013E75C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10013E7B4();
  }

  return result;
}

uint64_t sub_10013E7B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_storage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_10013EDE4(&qword_10033B5E8, &type metadata accessor for AnyCancellable);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);
    v13 = *(v1 + v2);

    v8 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      result = sub_100051964();
      v19 = *(v1 + 16);
      if (v19)
      {
        v20 = *(v1 + 24);

        v19(v21);
        return sub_10002689C(v19);
      }

      return result;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v8 = v16;
      v9 = v17;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10013E9F4()
{
  v1 = v0[3];
  sub_10002689C(v0[2]);
  v2 = OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_identifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_storage);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimedTaskStorage()
{
  result = qword_100346E18;
  if (!qword_100346E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013EAFC()
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

uint64_t sub_10013EBFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

Swift::Int sub_10013EC18()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10013EDE4(&qword_100339848, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013ECB8()
{
  v1 = *v0;
  type metadata accessor for UUID();
  sub_10013EDE4(&qword_100339848, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10013ED40()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  type metadata accessor for UUID();
  sub_10013EDE4(&qword_100339848, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013EDE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10013EE30(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2073756F69726553;
    v6 = 1802723668;
    if (a1 != 8)
    {
      v6 = 0x69626173552F4955;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x754220726568744FLL;
    if (a1 != 5)
    {
      v7 = 0x7265776F50;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D65636E61686E45;
    v2 = 0x2065727574616546;
    v3 = 0x7974697275636553;
    if (a1 != 3)
    {
      v3 = 0x616D726F66726550;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_10013EF94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10013EE30(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013EFF8()
{
  sub_10013EE30(*v0);
  String.hash(into:)();
}

Swift::Int sub_10013F04C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10013EE30(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10013F0AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013FC28(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10013F0DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10013EE30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10013F108(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10013EE30(*a1);
  v5 = v4;
  if (v3 == sub_10013EE30(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10013F1BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013F23C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10013F2A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013F324@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100301168, *a1);

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

void sub_10013F384(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "Prox Handoff Feedback";
  }

  else
  {
    v3 = "Task";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_10013F3C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v3)
  {
    v5 = "Task";
  }

  else
  {
    v5 = "Prox Handoff Feedback";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (*a2)
  {
    v8 = "Prox Handoff Feedback";
  }

  else
  {
    v8 = "Task";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

unint64_t sub_10013F480()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

unint64_t sub_10013F4BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(25);

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x3D6469202CLL;
  v6._object = 0xE500000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v1;
  v7._object = v2;
  String.append(_:)(v7);
  return 0xD000000000000010;
}

__n128 sub_10013F58C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10013F5A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10013F5E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BugComponents.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BugComponents.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10013F7D8()
{
  result = qword_100346F10;
  if (!qword_100346F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346F10);
  }

  return result;
}

unint64_t sub_10013F860()
{
  result = qword_100346F28;
  if (!qword_100346F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346F28);
  }

  return result;
}

uint64_t sub_10013F8BC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10013F9C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013FC74(*a1);
  *a2 = result;
  return result;
}

void sub_10013F9F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x796C65726152;
  v7 = 0xE900000000000073;
  v8 = 0x656D6974656D6F53;
  if (v2 != 4)
  {
    v8 = 0x656C62616E55;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000079725420;
  v10 = 0x74276E6469442049;
  if (v2 != 1)
  {
    v10 = 0x6C70704120746F4ELL;
    v9 = 0xEE00656C62616369;
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

uint64_t sub_10013FAD8()
{
  v1 = *v0;
  v2 = 0x737961776C41;
  v3 = 0x796C65726152;
  v4 = 0x656D6974656D6F53;
  if (v1 != 4)
  {
    v4 = 0x656C62616E55;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74276E6469442049;
  if (v1 != 1)
  {
    v5 = 0x6C70704120746F4ELL;
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

unint64_t sub_10013FBD4()
{
  result = qword_100346F40;
  if (!qword_100346F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346F40);
  }

  return result;
}

unint64_t sub_10013FC28(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100301028, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10013FC74(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003011E0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t BSInterfaceOrientation.description.getter()
{
  v0 = BSInterfaceOrientationDescription();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_10013FD10()
{
  v1 = *v0;
  v2 = BSInterfaceOrientationDescription();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10013FD74(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(describing:)();
}

unint64_t sub_10013FE2C(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return static String._fromUTF8Repairing(_:)();
    }

LABEL_9:
    __break(1u);
    return static String._fromUTF8Repairing(_:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_10013FF24()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v3;
}

uint64_t sub_10013FFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12);
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    return (*(v14 + 32))(a4, v10, v13);
  }

  _s11UnwrapErrorVMa();
  swift_getWitnessTable();
  swift_allocError();
  *v15 = a1;
  v15[1] = a2;
  swift_willThrow();
}

uint64_t sub_100140158(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  return v8;
}

uint64_t sub_1001402BC(uint64_t a1)
{
  v2 = sub_10024CF38(_swiftEmptyArrayStorage);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v32 = a1;

  v8 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v12 = __clz(__rbit64(v6)) | (v11 << 6);
    v13 = *(*(v32 + 48) + 8 * v12);
    v14 = (*(v32 + 56) + 16 * v12);
    v15 = v14[1];
    v33 = *v14;
    v16 = objc_allocWithZone(NSNumber);

    v17 = [v16 initWithInteger:v13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1000850CC(v17);
    v21 = v2[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v2[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v19;
        sub_100089A10();
        v19 = v30;
      }
    }

    else
    {
      sub_10008599C(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1000850CC(v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v6 &= v6 - 1;
    if (v25)
    {
      v9 = (v2[7] + 16 * v19);
      v10 = v9[1];
      *v9 = v33;
      v9[1] = v15;

      v8 = v11;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v2[(v19 >> 6) + 8] |= 1 << v19;
      *(v2[6] + 8 * v19) = v17;
      v27 = (v2[7] + 16 * v19);
      *v27 = v33;
      v27[1] = v15;

      v28 = v2[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v2[2] = v29;
      v8 = v11;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v8;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_10008CCE8();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100140528(uint64_t a1)
{
  v2 = sub_10024E154(_swiftEmptyArrayStorage);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v32 = a1;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v10 = v8;
LABEL_14:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(v32 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_10001766C(*(v32 + 56) + 32 * v14, v33);
    *&v34 = v16;
    *(&v34 + 1) = v17;
    sub_1000516B4(v33, &v35);

    v12 = v10;
LABEL_15:
    v37 = v34;
    v38[0] = v35;
    v38[1] = v36;
    if (!*(&v34 + 1))
    {

      return v2;
    }

    sub_1000516B4(v38, &v34);
    v18 = String._bridgeToObjectiveC()();
    sub_10001766C(&v34, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v2;
    v20 = sub_10008CE90(v18);
    v22 = v2[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v2[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v30 = v20;
      sub_10008A964();
      v20 = v30;
      v2 = v39;
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v9 = (v2[7] + 32 * v20);
      sub_10000903C(v9);
      sub_1000516B4(v33, v9);

      sub_10000903C(&v34);

      v8 = v12;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_100087CD8(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_10008CE90(v18);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_32;
      }

LABEL_21:
      v2 = v39;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_22:
      v2[(v20 >> 6) + 8] |= 1 << v20;
      *(v2[6] + 8 * v20) = v18;
      sub_1000516B4(v33, (v2[7] + 32 * v20));
      sub_10000903C(&v34);

      v28 = v2[2];
      v24 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v24)
      {
        goto LABEL_31;
      }

      v2[2] = v29;
      v8 = v12;
      if (!v6)
      {
LABEL_7:
        if (v7 <= v8 + 1)
        {
          v11 = v8 + 1;
        }

        else
        {
          v11 = v7;
        }

        v12 = v11 - 1;
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= v7)
          {
            v6 = 0;
            v35 = 0u;
            v36 = 0u;
            v34 = 0u;
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v10);
          ++v8;
          if (v6)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  type metadata accessor for Key(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100140808()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static Optional<A>.allCases.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v18[-v7];
  v9 = type metadata accessor for Optional();
  type metadata accessor for _ContiguousArrayStorage();
  v10 = *(*(v9 - 8) + 72);
  v11 = *(*(v9 - 8) + 80);
  swift_allocObject();
  v12 = static Array._adoptStorage(_:count:)();
  (*(*(a1 - 8) + 56))(v13, 1, 1, a1);
  sub_100042610(v12);
  dispatch thunk of static CaseIterable.allCases.getter();
  v19 = a1;
  v20 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10007F168(sub_100140BE0, v18, AssociatedTypeWitness, v9, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v15);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v16 = static Array.+ infix(_:_:)();

  return v16;
}

void sub_100140A90()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_10038B240 = v2;
}

void sub_100140B00()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_10038B248 = v2;
}

void sub_100140B70()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_10038B250 = v2;
}

uint64_t sub_100140BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

unint64_t sub_100140C98()
{
  result = qword_100346F48;
  if (!qword_100346F48)
  {
    sub_100035D4C(qword_100346F50, qword_10027EAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346F48);
  }

  return result;
}

uint64_t sub_100140D14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100140D50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100140DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100140E18()
{
  v1 = sub_100035D04(&qword_100347300, &unk_10027EDB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  }

  else
  {
    v8 = v0;
    sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager, type metadata accessor for HandoffSessionManager, sub_1000B9DD4);
    swift_beginAccess();
    sub_100035D04(&qword_10033F5A0, &qword_100276200);
    Published.projectedValue.getter();
    swift_endAccess();

    sub_10000E244(&qword_100347308, &qword_100347300, &unk_10027EDB8);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100140FF4()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceUXRegionPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceUXRegionPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceUXRegionPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceUXRegionSubject);
    sub_100035D04(&qword_100347310, &unk_10027EDC8);
    sub_10000E244(&qword_100347318, &qword_100347310, &unk_10027EDC8);
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001410D0()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___experienceEventSessionIDReasonPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___experienceEventSessionIDReasonPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___experienceEventSessionIDReasonPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    sub_100035D04(&qword_1003472F0, &qword_10027EDB0);
    sub_10000E244(&qword_1003472F8, &qword_1003472F0, &qword_10027EDB0);
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_1001411E4()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxy;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxy);
  }

  else
  {
    v3 = v0;
    v4 = sub_100142978();
    type metadata accessor for ActivityProxy();
    swift_allocObject();
    v2 = sub_1000A41CC(v4);
    v5 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100141270()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkPublisher);
  }

  else
  {
    v3 = v0;
    sub_1001434D0();
    v2 = sub_10013CD3C();

    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001412EC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___screenOnPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___screenOnPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___screenOnPublisher);
  }

  else
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor) + 16);

    v4 = v0;
    sub_10005E50C();
    sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
    v2 = Publisher.eraseToAnyPublisher()();

    v5 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001413FC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___isEnabledPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___isEnabledPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___isEnabledPublisher);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled);

    v4 = v0;
    sub_10005E50C();
    sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
    v2 = Publisher.eraseToAnyPublisher()();

    v5 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100141508()
{
  v0 = sub_100035D04(&qword_100347320, &qword_10027EDD8);
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - v3;
  v5 = sub_100035D04(&qword_100347328, &qword_10027EDE0);
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v32 = sub_100035D04(&qword_100347330, &qword_10027EDE8);
  v34 = *(v32 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v32);
  v12 = &v26 - v11;
  v31 = sub_100035D04(&qword_100347338, &unk_10027EDF0);
  v33 = *(v31 - 8);
  v13 = *(v33 + 64);
  __chkstk_darwin(v31);
  v15 = &v26 - v14;
  v16 = sub_100142EBC();
  v17 = *&v16[OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy];

  v35 = sub_10005E5BC();
  sub_100035D04(&qword_10033C290, &qword_100272A88);
  sub_10000E244(&qword_100347340, &qword_10033C290, &qword_100272A88);
  v18 = Publisher.eraseToAnyPublisher()();

  v35 = v18;
  sub_100035D04(&qword_100347348, &qword_10027EE00);
  sub_100035D04(&qword_100347350, &qword_10027EE08);
  sub_10000E244(&qword_100347358, &qword_100347348, &qword_10027EE00);
  Publisher.map<A>(_:)();

  sub_100035D04(&qword_100347360, &qword_10027EE10);
  sub_10000E244(&qword_100347368, &qword_100347328, &qword_10027EDE0);
  v19 = v27;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_100347370, &qword_100347320, &qword_10027EDD8);
  v20 = v29;
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v30 + 8))(v4, v20);
  (*(v28 + 8))(v9, v19);
  v35 = v21;
  sub_100035D04(&qword_100347378, &qword_10027EE18);
  sub_10000E244(&qword_100347380, &qword_100347378, &qword_10027EE18);
  sub_10000E244(&qword_100347388, &qword_100347360, &qword_10027EE10);
  Publisher<>.switchToLatest()();

  sub_10000E244(&qword_100347390, &qword_100347330, &qword_10027EDE8);
  v22 = v32;
  Publisher.compactMap<A>(_:)();
  (*(v34 + 8))(v12, v22);
  sub_10000E244(&qword_100347398, &qword_100347338, &unk_10027EDF0);
  v23 = v31;
  v24 = Publisher.eraseToAnyPublisher()();
  (*(v33 + 8))(v15, v23);
  return v24;
}

uint64_t sub_100141ADC(uint64_t a1)
{
  v2 = sub_100035D04(&qword_1003473A0, &qword_10027EE20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_100035D04(&qword_1003473A8, &qword_10027EE28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_100035D04(&qword_1003473B0, &qword_10027EE30);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  if (a1)
  {
    v19 = a1;

    sub_100035D04(&qword_100342B20, &qword_100278AA0);
    sub_100035D04(&qword_1003473B8, &unk_10027EE38);
    sub_10000E244(&qword_100342B28, &qword_100342B20, &qword_100278AA0);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_1003473C8, &qword_1003473B0, &qword_10027EE30);
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v19 = 0;
    v20 = -1;
    sub_100035D04(&qword_1003473B8, &unk_10027EE38);
    Just.init(_:)();
    Just.setFailureType<A>(to:)();
    (*(v3 + 8))(v6, v2);
    sub_10000E244(&qword_1003473C0, &qword_1003473A8, &qword_10027EE28);
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v8 + 8))(v11, v7);
  }

  return v17;
}

uint64_t sub_100141E74(uint64_t a1)
{
  v2 = sub_100035D04(&qword_1003473D0, &qword_10027EE48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_100035D04(&qword_1003473D8, &qword_10027EE50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_100035D04(&qword_1003473E0, &qword_10027EE58);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  if (a1)
  {
    *&v19 = a1;

    sub_100035D04(&qword_100343058, &qword_100278EE8);
    sub_100035D04(&qword_1003473E8, &unk_10027EE60);
    sub_10000E244(&qword_100343060, &qword_100343058, &qword_100278EE8);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_1003473F8, &qword_1003473E0, &qword_10027EE58);
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v19 = xmmword_10026F060;
    sub_100035D04(&qword_1003473E8, &unk_10027EE60);
    Just.init(_:)();
    Just.setFailureType<A>(to:)();
    (*(v3 + 8))(v6, v2);
    sub_10000E244(&qword_1003473F0, &qword_1003473D8, &qword_10027EE50);
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v8 + 8))(v11, v7);
  }

  return v17;
}

uint64_t sub_10014220C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_1000EF05C(a4, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_1000097E8(v11, &unk_10033D8B0, &qword_100275520);
    }

    else
    {
      (*(v13 + 32))(v17, v11, v12);
      if (a1)
      {

        swift_errorRetain();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v31 = v29;
          *v20 = 136315394;
          *(v20 + 4) = sub_100017494(a2, a3, &v31);
          *(v20 + 12) = 2112;
          v30 = a1;
          swift_errorRetain();
          sub_100035D04(&unk_100346020, &qword_100271A00);
          if (_getErrorEmbeddedNSError<A>(_:)())
          {
          }

          else
          {
            swift_allocError();
            *v26 = a1;
          }

          v27 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 14) = v27;
          *v21 = v27;
          _os_log_impl(&_mh_execute_header, v18, v19, "### %s: %@", v20, 0x16u);
          sub_1000097E8(v21, &qword_100339940, &unk_100272C50);

          sub_10000903C(v29);
        }
      }

      else
      {

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v31 = v25;
          *v24 = 136315138;
          *(v24 + 4) = sub_100017494(a2, a3, &v31);
          _os_log_impl(&_mh_execute_header, v22, v23, "%s", v24, 0xCu);
          sub_10000903C(v25);
        }
      }

      return (*(v13 + 8))(v17, v12);
    }
  }

  return result;
}

uint64_t sub_100142608()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346FD8);
  sub_100003078(v0, qword_100346FD8);
  return Logger.init(subsystem:category:)();
}

void *sub_100142978()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxyModel;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxyModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxyModel);
  }

  else
  {
    v3 = sub_100142AE4();
    v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy);
    v8 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityProxyModel();
    v2 = swift_allocObject();
    v2[2] = v3;
    v2[3] = v4;
    v2[4] = sub_100147A68;
    v2[5] = v5;
    v2[6] = sub_100147A70;
    v2[7] = v6;
    v2[8] = v7;
    v2[9] = sub_100147A78;
    v2[10] = v8;
    v9 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_100142AE4()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceActivityServer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceActivityServer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceActivityServer);
  }

  else
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_shareableContentResolver) + 112);
    v4 = qword_100339180;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = *(qword_10038B4E8 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_state);
    type metadata accessor for DeviceActivityServer();
    v2 = swift_allocObject();
    v2[3] = v3;
    v2[4] = 0;
    v2[2] = v5;
    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100142BD4()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_4;
  }

  sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager, type metadata accessor for HandoffSessionManager, sub_1000B9DD4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    v0 = *(v3 + 24);

    v1 = static UUID.== infix(_:_:)();
  }

  else
  {
LABEL_4:
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100142D0C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(*(*(Strong + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor) + 16) + 24);

  return v1;
}

double sub_100142D78@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (v2 = sub_100142E20(), , v3 = v2[4], v4 = v3, , v3))
  {
    *(a1 + 24) = type metadata accessor for RapportProxy();
    *(a1 + 32) = &off_100306AC8;
    *a1 = v4;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void *sub_100142E20()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
    type metadata accessor for NearbyAgentState();
    swift_allocObject();

    v5 = v0;
    v2 = sub_1001326BC(v4);
    v6 = *(v0 + v1);
    *(v5 + v1) = v2;
  }

  return v2;
}

id sub_100142EBC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgent;
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgent);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgent);
  }

  else
  {
    v4 = v0;
    v5 = sub_100142F5C();
    v7 = v6;
    v8 = sub_100142E20();
    v9 = objc_allocWithZone(type metadata accessor for NearbyAgent());
    v10 = sub_100132B54(v5, v7, v8);
    v11 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void *sub_100142F5C()
{
  v1 = (v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel);
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel);
  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel);
    v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel + 8);
  }

  else
  {
    v4 = sub_100142AE4();
    v6 = *(sub_1001411E4() + 24);

    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;

    sub_1001479E8(v7);
  }

  sub_100147A28(v2);
  return v4;
}

uint64_t sub_100143040()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___debugHandoffDeviceServiceServer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___debugHandoffDeviceServiceServer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___debugHandoffDeviceServiceServer);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);

    v4 = v0;
    v5 = sub_1001411E4()[3];

    type metadata accessor for MockHandoffDeviceServiceServer();
    swift_allocObject();
    v2 = sub_1000FE260(v3, v5);
    v6 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

id sub_100143100()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___classicBannerPresenter;
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___classicBannerPresenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___classicBannerPresenter);
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for ClassicBannerPresenter());

    v6 = v0;
    sub_1001E4AF8(v5);
    v7 = *(v0 + v1);
    *(v6 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1001431EC(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    v9 = a2();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();

    v6 = a3(v12);

    v13 = *(v8 + v4);
    *(v8 + v4) = v6;
  }

  return v6;
}

uint64_t sub_100143284()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___devicePrewarmer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___devicePrewarmer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___devicePrewarmer);
  }

  else
  {
    type metadata accessor for HandoffDevicePrewarmer();
    swift_allocObject();

    v4 = v0;
    v2 = sub_100028040(v3);
    v5 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

void *sub_10014337C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServer);
  }

  else
  {
    v3 = v0;
    v4 = sub_100143408();
    type metadata accessor for NanoPreferencesSyncServer();
    swift_allocObject();
    v2 = sub_100052D88(v4);
    v5 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_100143408()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServerModel;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServerModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServerModel);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
    type metadata accessor for NanoPreferencesSyncServerModel();
    v2 = swift_allocObject();
    sub_100035D04(&qword_100347428, &qword_10027EEC0);
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v2[2] = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    v2[3] = v5;
    v2[4] = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_1001434D0()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkProducer;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkProducer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkProducer);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ViewServiceLinkProducer();
    swift_allocObject();
    v2 = sub_10013CE98();
    v4 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10014354C()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100347400, &unk_10027EE70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v60 - v5;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v7 = qword_10038B5B8;
  *(v0 + 16) = qword_10038B5B8;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = _swiftEmptyDictionarySingleton;
  *(v0 + 72) = &_swiftEmptySetSingleton;
  v8 = v7;
  UUID.init()();
  v9 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled;
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___isEnabledPublisher) = 0;
  v11 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage;
  __chkstk_darwin(v10);
  v60[-4] = type metadata accessor for HandoffDevice();
  v60[-3] = type metadata accessor for UUID();
  v60[-2] = sub_100147A80(&qword_100344208, type metadata accessor for HandoffDevice);
  KeyPath = swift_getKeyPath();
  v13 = sub_100035D04(&qword_100344210, &unk_10027EEB0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_10006CF14(KeyPath, 1);

  *(v1 + v11) = v16;
  v17 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_assetManager;
  type metadata accessor for AssetManager();
  v18 = swift_allocObject();
  *(v1 + v17) = v18;
  *(v18 + 16) = _swiftEmptyDictionarySingleton;
  *(v18 + 24) = &_swiftEmptySetSingleton;
  v19 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy;
  if (qword_100338F98 != -1)
  {
    swift_once();
  }

  *(v1 + v19) = qword_10038B130;
  v20 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_orientationPublisher;
  v21 = qword_100338F70;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = *(qword_10038B100 + 32);
  swift_beginAccess();

  sub_100035D04(&qword_100343498, qword_100279210);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_10000E244(&qword_100347408, &qword_100347400, &unk_10027EE70);
  v23 = Publisher.eraseToAnyPublisher()();
  (*(v3 + 8))(v6, v2);
  *(v1 + v20) = v23;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___screenOnPublisher) = 0;
  v24 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_batteryStateMonitor;
  type metadata accessor for BatteryStateMonitor();
  swift_allocObject();
  *(v1 + v24) = sub_1000F3AE8();
  v25 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor;
  if (qword_100339268 != -1)
  {
    swift_once();
  }

  *(v1 + v25) = qword_10038B5D8;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxy) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxyModel) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceActivityServer) = 0;
  v26 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_shareableContentResolver;
  type metadata accessor for ShareableContentResolver();
  swift_allocObject();

  *(v1 + v26) = sub_100246E98();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgent) = 0;
  v27 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel);
  *v27 = 0;
  v27[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher) = 0;
  v28 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceUXRegionSubject;
  v29 = sub_100035D04(&qword_100347310, &unk_10027EDC8);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v1 + v28) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceUXRegionPublisher) = 0;
  v32 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject;
  v33 = sub_100035D04(&qword_1003472F0, &qword_10027EDB0);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  *(v1 + v32) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___experienceEventSessionIDReasonPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___debugHandoffDeviceServiceServer) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___classicBannerPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___hapticPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___remoteFollowerPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServicePresenter) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___devicePrewarmer) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___systemEventManager) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___transferManager) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___telemetryManager) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServer) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServerModel) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkProducer) = 0;
  v36 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v37 = static OS_dispatch_queue.main.getter();
  v38 = objc_allocWithZone(type metadata accessor for HapticPlayer());
  v39 = sub_100218838(v37);
  v40 = sub_100147A80(&qword_100347410, type metadata accessor for HapticPlayer);
  *v36 = v39;
  v36[1] = v40;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v41 = qword_10038B0B8;
  v42 = *(qword_10038B0B8 + 960);
  v43 = sub_100061FA4();

  v44 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorSoft);
  v45 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:qword_10027EFA0[v43]];
  v46 = sub_100003118(0, &qword_100347418, UIImpactFeedbackGenerator_ptr);
  v44[3] = v46;
  v44[4] = &off_10030AB88;
  *v44 = v45;
  v47 = *(v41 + 976);
  LOBYTE(v41) = sub_100061FA4();

  v48 = qword_10027EFA0[v41];
  v49 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorHard);
  v50 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:v48];
  v49[3] = v46;
  v49[4] = &off_10030AB88;
  *v49 = v50;
  v51 = (v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_notificationGenerator);
  v52 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v51[3] = sub_100003118(0, &qword_100347420, UINotificationFeedbackGenerator_ptr);
  v51[4] = &off_10030ABA0;
  *v51 = v52;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___proxControlDemoLinkServerManager) = 0;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100003078(v53, qword_100346FD8);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Init", v56, 2u);
  }

  sub_1001434D0();
  sub_10013DD98();

  sub_1001440AC();
  v63 = sub_1001411E4();
  v62 = sub_100143040();
  v61 = sub_100143100();
  v60[3] = sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServicePresenter, type metadata accessor for ViewServicePresenter, 72, sub_1000E274C);
  v60[2] = sub_100143284();
  v60[1] = sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___hapticPresenter, type metadata accessor for HapticPresenter, 80, sub_10014A5C0);
  if (qword_100338F58 != -1)
  {
    swift_once();
  }

  sub_10014337C();
  v57 = sub_100142EBC();
  sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___remoteFollowerPresenter, type metadata accessor for RemoteFollowerPresenter, sub_100182800);
  sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager, type metadata accessor for HandoffSessionManager, sub_1000B9DD4);
  if (qword_100339290 != -1)
  {
    swift_once();
  }

  v58 = qword_100338FD0;

  if (v58 != -1)
  {
    swift_once();
  }

  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___telemetryManager, type metadata accessor for HandoffTelemetryManager, 64, sub_10004E50C);
  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___transferManager, type metadata accessor for HandoffTransferManager, 72, sub_100212AE8);

  return v1;
}

uint64_t sub_1001440AC()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033E6F0, &qword_10027A060);
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  __chkstk_darwin(v2);
  v5 = v21 - v4;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100346FD8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100017494(0xD00000000000001ELL, 0x80000001002A1FF0, v25);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000903C(v10);
  }

  v11 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
  v25[0] = *(v11 + 32);
  v12 = sub_100035D04(&qword_100339828, &unk_100270300);
  v13 = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
  v21[1] = v12;
  v26 = Publisher.eraseToAnyPublisher()();
  __chkstk_darwin(v26);
  v21[-4] = type metadata accessor for HandoffDevice();
  v21[-3] = type metadata accessor for UUID();
  v21[-2] = sub_100147A80(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v22 = v11;
  v14 = v11 + qword_100346AF8;
  os_unfair_lock_lock((v11 + qword_100346AF8));
  v25[0] = *(v14 + 8);

  swift_getAtKeyPath();

  v15 = v25[5];
  os_unfair_lock_unlock(v14);

  v16 = *(v15 + 16);
  v21[0] = v13;
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = sub_100009194(v16, 0);
  v18 = sub_100009A04(v25, v17 + 4, v16);
  sub_100004F98();
  if (v18 != v16)
  {
    __break(1u);
LABEL_8:

    v17 = _swiftEmptyArrayStorage;
  }

  v25[0] = v17;
  sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_100035D04(&qword_10033BAA0, &unk_100274880);
  sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
  sub_10000E244(&qword_10033E750, &qword_10033BAA0, &unk_100274880);
  Publisher.prepend<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E758, &qword_10033E6F0, &qword_10027A060);
  v19 = v24;
  Publisher<>.sink(receiveValue:)();

  (*(v23 + 8))(v5, v19);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v25[0] = *(v22 + 48);
  v25[0] = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100144680()
{
  v1 = v0;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346FD8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 32);
  sub_10002689C(*(v1 + 24));
  v7 = *(v1 + 48);
  sub_10002689C(*(v1 + 40));
  v8 = *(v1 + 56);

  v9 = *(v1 + 64);

  v10 = *(v1 + 72);

  v11 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_id;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v13 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled);

  v14 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___isEnabledPublisher);

  v15 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);

  v16 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_assetManager);

  v17 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy);

  v18 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_orientationPublisher);

  v19 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___screenOnPublisher);

  v20 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_batteryStateMonitor);

  v21 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor);

  v22 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxy);

  v23 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___activityProxyModel);

  v24 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceActivityServer);

  v25 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_shareableContentResolver);

  v26 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel + 8);
  sub_1001479E8(*(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentModel));
  v27 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState);

  v28 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);

  v29 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceUXRegionSubject);

  v30 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___deviceUXRegionPublisher);

  v31 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);

  v32 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___experienceEventSessionIDReasonPublisher);

  v33 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager);

  v34 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___debugHandoffDeviceServiceServer);

  v35 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___hapticPresenter);

  v36 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___remoteFollowerPresenter);

  v37 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServicePresenter);

  v38 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___devicePrewarmer);

  v39 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___systemEventManager);

  v40 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___transferManager);

  v41 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___telemetryManager);

  v42 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServer);

  v43 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nanoPreferencesSyncServerModel);

  v44 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkPublisher);

  v45 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServiceLinkProducer);

  v46 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_hapticPlayer);
  swift_unknownObjectRelease();
  sub_10000903C((v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorSoft));
  sub_10000903C((v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_impactGeneratorHard));
  sub_10000903C((v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_notificationGenerator));
  v47 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___proxControlDemoLinkServerManager);

  return v1;
}

uint64_t sub_100144A54()
{
  sub_100144680();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffEnvironment()
{
  result = qword_1003470F8;
  if (!qword_1003470F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100144B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_100346FD8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a1;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v14 = 136315138;
    *(v14 + 4) = sub_100017494(0xD000000000000015, 0x80000001002A2010, &v33);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000903C(v16);
    a1 = v15;
  }

  sub_1001411E4();
  sub_1000A4544();

  sub_10014337C();
  sub_100053058();

  v17 = sub_100142EBC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = Future.init(_:)();

  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = v32;
  v23[4] = v22;
  v33 = v21;
  sub_1000EF05C(v10, v8);
  v24 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_10007E4B8(v8, v25 + v24);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100147B30;
  *(v26 + 24) = v23;
  sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0);

  v27 = Publisher.sink(receiveCompletion:receiveValue:)();

  sub_1000097E8(v10, &unk_10033D8B0, &qword_100275520);

  v28 = *(v3 + 56);
  *(v3 + 56) = v27;

  sub_100145048();
  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___proxControlDemoLinkServerManager, type metadata accessor for ProxControlDemoLinkServerManager, 48, sub_100238530);
  sub_100237AE8();

  sub_100143040();
  sub_1000FEA10();
}

uint64_t sub_100144FDC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 56);
    *(result + 56) = 0;
  }

  return result;
}

uint64_t sub_100145048()
{
  v1 = v0;
  v58 = sub_100035D04(&qword_100347450, &qword_10027EF28);
  v2 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v56[5] = v56 - v3;
  v61 = sub_100035D04(&qword_100347458, &qword_10027EF30);
  v59 = *(v61 - 8);
  v4 = *(v59 + 64);
  __chkstk_darwin(v61);
  v57 = v56 - v5;
  v6 = sub_100035D04(&qword_100347460, &qword_10027EF38);
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  __chkstk_darwin(v6);
  v60 = v56 - v8;
  v67 = sub_100035D04(&qword_100347468, &qword_10027EF40);
  v9 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v10 = sub_100035D04(&qword_100347470, &qword_10027EF48);
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = *(v68 + 64);
  __chkstk_darwin(v10);
  v13 = v56 - v12;
  v14 = sub_100035D04(&qword_100347478, &unk_10027EF50);
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  __chkstk_darwin(v14);
  v66 = v56 - v16;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_100346FD8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v72 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A2030, &v72);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s", v20, 0xCu);
    sub_10000903C(v21);
  }

  v22 = sub_100142E20()[3];

  v23 = *(v22 + 16);

  v72 = *(v23 + 40);
  sub_100035D04(&qword_10033C238, &qword_100272A30);
  sub_10000E244(&qword_100347480, &qword_10033C238, &qword_100272A30);
  v74 = Publisher.eraseToAnyPublisher()();
  sub_100035D04(&qword_100347488, &qword_10027EF60);
  v24 = swift_allocObject();
  v65 = xmmword_10026F050;
  *(v24 + 16) = xmmword_10026F050;
  __chkstk_darwin(v24);
  v56[-4] = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
  v56[-3] = type metadata accessor for UUID();
  v56[-2] = sub_100147A80(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v56[4] = v23;
  v25 = v23 + qword_100346AF8;
  os_unfair_lock_lock(v25);
  v72 = *(v25 + 8);

  swift_getAtKeyPath();

  v26 = v73;
  os_unfair_lock_unlock(v25);

  v27 = *(v26 + 16);
  v64 = v13;
  if (v27)
  {
    v28 = sub_100009194(v27, 0);
    v29 = sub_1001295D4(&v72, v28 + 4, v27, v26);
    sub_100004F98();
    if (v29 == v27)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_9:
  *(v24 + 32) = v28;
  sub_100035D04(&qword_100347490, &unk_10027EF68);
  sub_10000E244(&qword_100347498, &qword_100347490, &unk_10027EF68);
  Publisher.prepend(_:)();

  v30 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState;
  v31 = *(*(*(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___nearbyAgentState) + 24) + 24);

  v72 = sub_10005E50C();
  v32 = sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  v33 = sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
  v56[3] = v32;
  v34 = v30;
  v56[2] = v33;
  v35 = Publisher.eraseToAnyPublisher()();

  v72 = v35;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_1003474A0, &qword_100347468, &qword_10027EF40);
  v36 = sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
  v37 = v64;
  v56[1] = v36;
  Publishers.CombineLatest.init(_:_:)();
  v38 = sub_100035D04(&qword_1003474A8, &unk_10027EF78);
  sub_10000E244(&qword_1003474B0, &qword_100347470, &qword_10027EF48);
  v39 = v66;
  v40 = v69;
  Publisher.map<A>(_:)();
  (*(v68 + 8))(v37, v40);
  sub_10000E244(&qword_1003474B8, &qword_100347478, &unk_10027EF50);

  v41 = v71;
  Publisher<>.sink(receiveValue:)();

  (*(v70 + 8))(v39, v41);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v42 = *(*(*(v1 + v34) + 40) + 24);
  v72 = *(v42 + 40);

  sub_100035D04(&qword_10033C230, &unk_100272A20);
  sub_10000E244(&qword_1003474C0, &qword_10033C230, &unk_100272A20);
  v74 = Publisher.eraseToAnyPublisher()();
  sub_100035D04(&qword_1003474C8, &qword_10027EF88);
  v43 = swift_allocObject();
  *(v43 + 16) = v65;
  __chkstk_darwin(v43);
  v56[-4] = type metadata accessor for RPIdentityWrapper();
  v56[-3] = &type metadata for String;
  v56[-2] = &protocol witness table for String;
  swift_getKeyPath();
  v44 = v42 + qword_100346AF8;
  os_unfair_lock_lock((v42 + qword_100346AF8));
  v72 = *(v44 + 8);

  swift_getAtKeyPath();

  v45 = v73;
  os_unfair_lock_unlock(v44);

  v46 = *(v45 + 16);
  v67 = v38;
  if (!v46)
  {

    v47 = _swiftEmptyArrayStorage;
LABEL_13:
    *(v43 + 32) = v47;
    sub_100035D04(&qword_1003474D0, &unk_10027EF90);
    sub_10000E244(&qword_1003474D8, &qword_1003474D0, &unk_10027EF90);
    Publisher.prepend(_:)();

    v50 = *(*(*(v1 + v34) + 40) + 16);

    v72 = sub_10005E50C();
    v51 = Publisher.eraseToAnyPublisher()();

    v72 = v51;
    sub_10000E244(&qword_1003474E0, &qword_100347450, &qword_10027EF28);
    v52 = v57;
    Publishers.CombineLatest.init(_:_:)();
    sub_10000E244(&qword_1003474E8, &qword_100347458, &qword_10027EF30);
    v54 = v60;
    v53 = v61;
    Publisher.map<A>(_:)();
    (*(v59 + 8))(v52, v53);
    sub_10000E244(&qword_1003474F0, &qword_100347460, &qword_10027EF38);

    v55 = v63;
    Publisher<>.sink(receiveValue:)();

    (*(v62 + 8))(v54, v55);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v47 = sub_100009194(v46, 0);
  v48 = sub_100009A04(&v72, v47 + 4, v46, v45);
  result = sub_100004F98();
  if (v48 == v46)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100145E7C()
{
  v1 = v0;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346FD8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  sub_1001411E4();
  sub_1000A6024();

  sub_10014337C();
  sub_100054538();

  v7 = sub_100142EBC();
  [v7 invalidate];

  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___proxControlDemoLinkServerManager, type metadata accessor for ProxControlDemoLinkServerManager, 48, sub_100238530);
  sub_10023818C();

  sub_100143040();
  sub_100100A18();

  swift_beginAccess();
  v8 = *(v1 + 72);
  *(v1 + 72) = &_swiftEmptySetSingleton;
}

uint64_t sub_1001460D8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100146254(uint64_t a1)
{
  v2 = v1;
  v24 = sub_100035D04(&qword_100347430, &unk_10027EF10);
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24);
  v7 = &v23 - v6;
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100346FD8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0x3A5F28646E756F66, 0xE900000000000029, v26);
    *(v11 + 12) = 2080;
    v12 = sub_1000092A0();
    v14 = sub_100017494(v12, v13, v26);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: device=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy);
  sub_1000F2E3C(a1);
  v16 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v26[0] = sub_100070F78();

  sub_100035D04(&qword_10033D680, &qword_100273290);
  sub_100035D04(&qword_100347438, &qword_10027EF20);
  sub_10000E244(&qword_10033D688, &qword_10033D680, &qword_100273290);
  Publisher.map<A>(_:)();

  v17 = *(v2 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceUXRegionSubject);
  sub_100035D04(&qword_100347310, &unk_10027EDC8);
  sub_10000E244(&qword_100347440, &qword_100347430, &unk_10027EF10);
  sub_10000E244(&qword_100347448, &qword_100347310, &unk_10027EDC8);
  v18 = v24;
  v19 = Publisher.subscribe<A>(_:)();
  (*(v4 + 8))(v7, v18);
  swift_beginAccess();
  v20 = *(v2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  sub_10004CE14(v19, a1 + v16, isUniquelyReferenced_nonNull_native);
  *(v2 + 64) = v25;
  return swift_endAccess();
}

uint64_t sub_100146664(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_1001466D8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003390A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100346FD8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = v3;
    v12 = v11;
    v19[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0x293A5F2874736F6CLL, 0xE800000000000000, v19);
    *(v12 + 12) = 2080;
    v13 = sub_1000092A0();
    v15 = sub_100017494(v13, v14, v19);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: device=%s", v12, 0x16u);
    swift_arrayDestroy();

    v3 = v18;
  }

  v16 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_mediaRemoteProxy);
  sub_1000F2FCC(a1);
  (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v3);
  swift_beginAccess();
  sub_1001CF58C(0, v7);
  return swift_endAccess();
}

char *sub_100146960(unint64_t a1, char a2)
{
  v27 = type metadata accessor for UUID();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a2)
  {
    if (a1 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = _swiftEmptyArrayStorage;
    if (v9)
    {
      v28 = _swiftEmptyArrayStorage;
      result = sub_1000CDF40(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = 0;
      v10 = v28;
      v12 = a1;
      v25 = a1 & 0xC000000000000001;
      v26 = a1;
      v13 = (v4 + 8);
      v14 = v9;
      do
      {
        if (v25)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v12 + 8 * v11 + 32);
        }

        v16 = v15;
        v17 = [v15 uniqueIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = UUID.uuidString.getter();
        v20 = v19;

        (*v13)(v7, v27);
        v28 = v10;
        v22 = v10[2];
        v21 = v10[3];
        if (v22 >= v21 >> 1)
        {
          sub_1000CDF40((v21 > 1), v22 + 1, 1);
          v10 = v28;
        }

        ++v11;
        v10[2] = v22 + 1;
        v23 = &v10[2 * v22];
        v23[4] = v18;
        v23[5] = v20;
        v12 = v26;
      }

      while (v14 != v11);
    }

    v24 = sub_100008F34(v10);

    return v24;
  }

  return result;
}

char *sub_100146B80@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_100146960(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100146BB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_100143408()[2];
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;

  sub_10005E744();
  v5 = *(v2 + 24);

  CurrentValueSubject.send(_:)();
}

uint64_t sub_100146C58(unint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
      v2 = _swiftEmptyArrayStorage;
      goto LABEL_15;
    }

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_beginAccess();
        v8 = *(v7 + 32);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (i != v6);
    }

    else
    {
      v10 = (v2 + 32);
      do
      {
        v11 = *v10++;
        swift_beginAccess();
        v12 = *(v11 + 32);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --i;
      }

      while (i);
    }

    v2 = _swiftEmptyArrayStorage;
LABEL_15:
    if (_swiftEmptyArrayStorage >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
LABEL_32:

        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
        {
LABEL_54:
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (v20)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v20 = _swiftEmptyArrayStorage[2];
          if (v20)
          {
LABEL_35:
            v21 = 0;
            v22 = _swiftEmptyArrayStorage;
            do
            {
              v23 = v21;
              while (1)
              {
                if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
                {
                  v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v21 = v23 + 1;
                  if (__OFADD__(v23, 1))
                  {
                    goto LABEL_52;
                  }
                }

                else
                {
                  if (v23 >= _swiftEmptyArrayStorage[2])
                  {
                    goto LABEL_53;
                  }

                  v24 = _swiftEmptyArrayStorage[v23 + 4];
                  v21 = v23 + 1;
                  if (__OFADD__(v23, 1))
                  {
LABEL_52:
                    __break(1u);
LABEL_53:
                    __break(1u);
                    goto LABEL_54;
                  }
                }

                v25 = v24;
                v26 = [v25 identifier];
                if (v26)
                {
                  break;
                }

                ++v23;
                if (v21 == v20)
                {
                  goto LABEL_56;
                }
              }

              v27 = v26;
              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v29;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_100009088(0, *(v22 + 2) + 1, 1, v22);
              }

              v32 = *(v22 + 2);
              v31 = *(v22 + 3);
              if (v32 >= v31 >> 1)
              {
                v22 = sub_100009088((v31 > 1), v32 + 1, 1, v22);
              }

              *(v22 + 2) = v32 + 1;
              v33 = &v22[16 * v32];
              *(v33 + 4) = v28;
              *(v33 + 5) = v30;
            }

            while (v21 != v20);
            goto LABEL_56;
          }
        }

        v22 = _swiftEmptyArrayStorage;
LABEL_56:

        v34 = sub_100008F34(v22);

        return v34;
      }
    }

    else
    {
      v14 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_32;
      }
    }

    v15 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v16 = _swiftEmptyArrayStorage[v15 + 4];
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ([v16 type] == 4)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v19 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_100147050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100146C58(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100147084(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_100143408()[3];
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;

  sub_10005E744();
  v5 = *(v2 + 24);

  CurrentValueSubject.send(_:)();
}

uint64_t sub_100147128()
{
  v1 = v0;
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(90);
  v48 = 0;
  v49 = 0xE000000000000000;
  v2._object = 0x80000001002A1FB0;
  v2._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v2);
  sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager, type metadata accessor for HandoffSessionManager, sub_1000B9DD4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3._countAndFlagsBits = 7104878;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager;
  v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___handoffSessionManager);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 2570;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = *(v1 + v5);

  v11._countAndFlagsBits = sub_1000B8FE0(v10);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 2570;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13 = sub_100143100();
  v14 = [v13 description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 2570;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___hapticPresenter, type metadata accessor for HapticPresenter, 80, sub_10014A5C0);
  v20._countAndFlagsBits = sub_10014A1FC();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 2570;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  sub_1001431EC(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___remoteFollowerPresenter, type metadata accessor for RemoteFollowerPresenter, sub_100182800);
  v22._countAndFlagsBits = sub_100182298();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 2570;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v47[0] = sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___viewServicePresenter, type metadata accessor for ViewServicePresenter, 72, sub_1000E274C);
  type metadata accessor for ViewServicePresenter();
  _print_unlocked<A, B>(_:_:)();

  v24._countAndFlagsBits = 2570;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  sub_10001B43C(&OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___telemetryManager, type metadata accessor for HandoffTelemetryManager, 64, sub_10004E50C);
  v25._countAndFlagsBits = sub_100048F24();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 2570;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  if (qword_100339180 != -1)
  {
    swift_once();
  }

  v27 = qword_10038B4E8;
  v28 = [v27 description];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 2570;
  v33._object = 0xE200000000000000;
  String.append(_:)(v33);
  v34 = sub_1001411E4();
  v47[3] = type metadata accessor for ActivityProxy();
  v47[0] = v34;

  v35 = sub_100057FC8(v47);
  v37 = v36;
  sub_10000903C(v47);
  v38._countAndFlagsBits = v35;
  v38._object = v37;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 2570;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  v40 = sub_100142EBC();
  v41 = [v40 description];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45._countAndFlagsBits = v42;
  v45._object = v44;
  String.append(_:)(v45);

  return v48;
}