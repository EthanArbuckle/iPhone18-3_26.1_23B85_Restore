uint64_t sub_1001425D8()
{
  sub_100142684();
  v0 = sub_1001426B0();
  AnyHashable.init<A>(_:)();
  v1 = sub_1006937A4(v3, v0);

  sub_1000279C8(v3);
  return v1 & 1;
}

uint64_t sub_100142684()
{
  result = *(v0 + 64);
  if (result == 4)
  {
    result = sub_100142770(*(v0 + 56));
    *(v0 + 64) = result;
  }

  return result;
}

uint64_t sub_1001426B0()
{
  if (v0[9])
  {
    v1 = v0[9];
  }

  else
  {
    v2 = v0;
    v3 = v0[5];
    v4 = v0[6];
    sub_10000BA08(v0 + 2, v3);
    v1 = (*(v4 + 16))(1004, v3, v4);
    v5 = v2[9];
    v2[9] = v1;
  }

  return v1;
}

uint64_t sub_100142770(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = v1[5];
  v6 = v1[6];
  sub_10000BA08(v1 + 2, v5);
  v7 = (*(v6 + 24))(a1, 3, v5, v6);
  if (*(v7 + 16))
  {
    AnyHashable.init<A>(_:)();
    v8 = sub_1006937A4(v12, v7);
    sub_1000279C8(v12);
    if (v8)
    {

      return 0;
    }

    else
    {
      AnyHashable.init<A>(_:)();
      v10 = sub_1006937A4(v12, v7);
      sub_1000279C8(v12);
      if (v10)
      {

        return 1;
      }

      else
      {
        AnyHashable.init<A>(_:)();
        v11 = sub_1006937A4(v12, v7);

        sub_1000279C8(v12);
        if (v11)
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  else
  {

    return 3;
  }
}

uint64_t sub_100142AA0()
{
  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_100142B20()
{
  result = qword_10083BA40;
  if (!qword_10083BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083BA40);
  }

  return result;
}

unint64_t sub_100142B74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 64) = 4;
  *(v4 + 72) = 0;
  v5 = [objc_allocWithZone(LAContext) init];
  result = sub_100037320();
  *(v4 + 40) = result;
  *(v4 + 48) = &off_100817910;
  *(v4 + 16) = v5;
  *(v4 + 56) = a1;
  *a2 = v4;
  return result;
}

uint64_t sub_100142C10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100142CE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ValidatedDigitalPresentmentRequest()
{
  result = qword_10083BAA0;
  if (!qword_10083BAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100142DDC()
{
  sub_100142E94();
  if (v0 <= 0x3F)
  {
    sub_1000BD2F0();
    if (v1 <= 0x3F)
    {
      sub_10002A514();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100142E94()
{
  if (!qword_10083BAB0)
  {
    type metadata accessor for ISO18013KnownDocTypes();
    sub_10000B870(&qword_10083B240, &qword_1006D9668);
    sub_10014A184(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10083BAB0);
    }
  }
}

uint64_t sub_100142F4C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale.Region();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for DigitalPresentmentDocumentType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v33 - v19;
  v34 = v1;
  IdentityDocumentDescriptor.documentType.getter();
  v21 = (*(v14 + 88))(v20, v13);
  if (v21 != enum case for DigitalPresentmentDocumentType.nationalIDCard(_:))
  {
    if (v21 == enum case for DigitalPresentmentDocumentType.driversLicense(_:))
    {
      v27 = &enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:);
    }

    else
    {
      if (v21 != enum case for DigitalPresentmentDocumentType.photoID(_:))
      {
        v39 = 0;
        v40 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        v39 = 0xD000000000000019;
        v40 = 0x80000001006FFEF0;
        IdentityDocumentDescriptor.documentType.getter();
        sub_10014A184(&qword_10083BAF0, &type metadata accessor for DigitalPresentmentDocumentType);
        v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v31);

        v32 = *(v14 + 8);
        v32(v18, v13);
        v41 = v40;
        (*(v35 + 104))(v37, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v36);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        return (v32)(v20, v13);
      }

      v27 = &enum case for ISO18013KnownDocTypes.photoID(_:);
    }

    v29 = *v27;
    v30 = type metadata accessor for ISO18013KnownDocTypes();
    return (*(*(v30 - 8) + 104))(v38, v29, v30);
  }

  (*(v14 + 96))(v20, v13);
  (*(v6 + 16))(v12, v20, v5);
  Locale.Region.init(stringLiteral:)();
  sub_10014A184(&qword_100834780, &type metadata accessor for Locale.Region);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v6 + 8);
  v23(v10, v5);
  v23(v12, v5);
  if (v22)
  {
    v24 = enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:);
    v25 = type metadata accessor for ISO18013KnownDocTypes();
    (*(*(v25 - 8) + 104))(v38, v24, v25);
    return (v23)(v20, v5);
  }

  else
  {
    (*(v6 + 32))(v10, v20, v5);
    v39 = 0;
    v40 = 0xE000000000000000;
    v41 = v23;
    _StringGuts.grow(_:)(39);

    v39 = 0xD000000000000025;
    v40 = 0x8000000100701CB0;
    v28._countAndFlagsBits = Locale.Region.identifier.getter();
    String.append(_:)(v28);

    (*(v35 + 104))(v37, enum case for DIPError.Code.digitalPresentmentRegionNotSupported(_:), v36);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v41(v10, v5);
  }
}

uint64_t sub_1001436AC@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  __chkstk_darwin(v1);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale.Region();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  __chkstk_darwin(v4);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DigitalPresentmentDocumentType();
  v65 = *(v66 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v66);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v54 = &v53 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v53 - v18;
  v20 = __chkstk_darwin(v17);
  v59 = &v53 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v53 - v23;
  __chkstk_darwin(v22);
  v26 = &v53 - v25;
  defaultLogger()();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "DigitalPresentmentRequest: get region for descriptor", v29, 2u);
  }

  v30 = v11 + 8;
  v31 = *(v11 + 8);
  v31(v26, v10);
  IdentityDocumentDescriptor.documentType.getter();
  v32 = v65;
  v33 = v66;
  v34 = (*(v65 + 88))(v9, v66);
  if (v34 == enum case for DigitalPresentmentDocumentType.nationalIDCard(_:))
  {
    v63 = v30;
    (*(v32 + 96))(v9, v33);
    v35 = *(v60 + 32);
    v36 = v9;
    v37 = v61;
    v35(v64, v36, v61);
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "DigitalPresentmentRequest: In NationalIDCardDescriptor", v40, 2u);
    }

    v31(v19, v10);
    return (v35)(v62, v64, v37);
  }

  else
  {
    if (v34 == enum case for DigitalPresentmentDocumentType.driversLicense(_:))
    {
      defaultLogger()();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "DigitalPresentmentRequest: In DriversLicenseDescriptor", v44, 2u);
      }

      v31(v24, v10);
      v45 = v59;
    }

    else
    {
      if (v34 != enum case for DigitalPresentmentDocumentType.photoID(_:))
      {
        (*(v55 + 104))(v58, enum case for DIPError.Code.missingEntitlement(_:), v56);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        return (*(v32 + 8))(v9, v33);
      }

      v46 = v54;
      defaultLogger()();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "DigitalPresentmentRequest: In photoIDDescriptor", v49, 2u);
      }

      v31(v46, v10);
      v45 = v57;
    }

    defaultLogger()();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "DigitalPresentmentRequest: region hardcoded to US", v52, 2u);
    }

    v31(v45, v10);
    return Locale.Region.init(stringLiteral:)();
  }
}

uint64_t sub_100146DC8()
{
  v157 = type metadata accessor for IdentityIntentToStore();
  v154 = *(v157 - 8);
  v2 = *(v154 + 64);
  v3 = __chkstk_darwin(v157);
  v141 = (&v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v153 = &v128 - v5;
  v6 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v138 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v137 = &v128 - v11;
  v12 = __chkstk_darwin(v10);
  v140 = &v128 - v13;
  __chkstk_darwin(v12);
  v150 = &v128 - v14;
  v131 = type metadata accessor for DIPError.Code();
  v130 = *(v131 - 8);
  v15 = *(v130 + 64);
  __chkstk_darwin(v131);
  v132 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IdentityElement();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v147 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v142 = &v128 - v23;
  v24 = __chkstk_darwin(v22);
  v152 = &v128 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v128 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v128 - v30;
  __chkstk_darwin(v29);
  v148 = (&v128 - v32);
  v133 = v1;
  v33 = IdentityDocumentDescriptor.elementsToIntentToStore.getter();
  v34 = 0;
  v35 = *(v33 + 64);
  v143 = (v33 + 64);
  v159 = v33;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v139 = (v36 + 63) >> 6;
  v156 = v18 + 16;
  v161 = (v18 + 32);
  v146 = (v18 + 88);
  v145 = enum case for IdentityElement.ageIsOver(_:);
  v155 = v18;
  v136 = (v18 + 96);
  v149 = (v18 + 8);
  v160 = v17;
  v158 = v31;
  v151 = v28;
  if ((v37 & v35) != 0)
  {
    while (1)
    {
      v39 = v34;
LABEL_8:
      v40 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v41 = *(v159 + 48);
      v42 = v155;
      v144 = *(v155 + 72);
      v43 = *(v155 + 16);
      v44 = v148;
      v43(v148, v41 + v144 * (v40 | (v39 << 6)), v17);
      v0 = *(v42 + 32);
      v31 = v158;
      (v0)(v158, v44, v17);
      v45 = v151;
      v43(v151, v31, v17);
      v46 = *(v42 + 88);
      v47 = v46(v45, v17);
      if (v47 == v145)
      {
        break;
      }

      v48 = *v149;
      (*v149)(v31, v17);
      v48(v45, v17);
      v34 = v39;
      if (!v38)
      {
        goto LABEL_5;
      }
    }

    v134 = v0;
    v129 = v43;
    v49 = *v136;
    (*v136)(v45, v17);
    if ((*v45 - 126) < 0xFFFFFFFFFFFFFF83)
    {
      v50._countAndFlagsBits = 0x3864333035396233;
      v51._countAndFlagsBits = 0xD000000000000039;
      v51._object = 0x8000000100701A90;
      v50._object = 0xE800000000000000;
      logMilestone(tag:description:)(v50, v51);
      v162 = 0;
      v163 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v162 = 0x20746E656D656C65;
      v163 = 0xE800000000000000;
      sub_10014A184(&qword_10083A998, &type metadata accessor for IdentityElement);
      v52 = v158;
      v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v53);

      v54._countAndFlagsBits = 0xD00000000000001BLL;
      v54._object = 0x8000000100701AD0;
      String.append(_:)(v54);
      (*(v130 + 104))(v132, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v131);
      v55 = v149;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return (*v55)(v52, v160);
    }

    v128 = v49;
    v135 = *v149;
    v57 = v158;
    v58 = v158;
    while (1)
    {
      v135(v57, v17);
      v0 = v134;
      if (!v38)
      {
        break;
      }

      v59 = v39;
      v60 = v144;
LABEL_20:
      v61 = v148;
      v62 = v129;
      v129(v148, *(v159 + 48) + v60 * (__clz(__rbit64(v38)) | (v59 << 6)), v17);
      (v0)(v58, v61, v17);
      v31 = v151;
      v0 = v58;
      v62(v151, v58, v17);
      v63 = v46(v31, v17);
      if (v63 == v145)
      {
        goto LABEL_71;
      }

      v38 &= v38 - 1;
      v135(v58, v17);
      v57 = v31;
      v39 = v59;
    }

    v60 = v144;
    while (1)
    {
      v59 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_70;
      }

      if (v59 >= v139)
      {
        break;
      }

      v38 = v143[v59];
      ++v39;
      if (v38)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v39 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_70;
      }

      if (v39 >= v139)
      {
        break;
      }

      v38 = v143[v39];
      ++v34;
      if (v38)
      {
        goto LABEL_8;
      }
    }
  }

  v64 = IdentityDocumentDescriptor.elementsToIntentToStore.getter();
  v65 = 0;
  v66 = *(v64 + 64);
  v135 = (v64 + 64);
  v139 = v64;
  v67 = 1 << *(v64 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v66;
  v134 = (v67 + 63) >> 6;
  v151 = (v154 + 16);
  v159 = v154 + 32;
  v144 = (v154 + 88);
  LODWORD(v143) = enum case for IdentityIntentToStore.mayStoreForDays(_:);
  v148 = (v154 + 8);
  v136 = (v154 + 96);
  v70 = v157;
  v71 = v142;
  v72 = v141;
  v73 = v140;
  v31 = v150;
  if ((v68 & v66) == 0)
  {
LABEL_26:
    if (v134 <= v65 + 1)
    {
      v74 = v65 + 1;
    }

    else
    {
      v74 = v134;
    }

    while (1)
    {
      v0 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v0 >= v134)
      {
        v158 = (v74 - 1);
        v88 = v71;
        v93 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
        (*(*(v93 - 8) + 56))(v73, 1, 1, v93);
        v69 = 0;
        goto LABEL_33;
      }

      v69 = *(v135 + v0);
      ++v65;
      if (v69)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

  while (1)
  {
    v0 = v65;
LABEL_32:
    v75 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v76 = v75 | (v0 << 6);
    v77 = v139;
    v78 = v155;
    v79 = v152;
    (*(v155 + 16))(v152, *(v139 + 48) + *(v155 + 72) * v76, v17);
    v80 = v153;
    v81 = v154;
    (*(v154 + 16))(v153, *(v77 + 56) + *(v154 + 72) * v76, v70);
    v82 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v83 = v70;
    v84 = *(v82 + 48);
    v85 = *(v78 + 32);
    v86 = v140;
    v85(v140, v79, v160);
    v87 = *(v81 + 32);
    v73 = v86;
    v87(&v86[v84], v80, v83);
    (*(*(v82 - 8) + 56))(v86, 0, 1, v82);
    v158 = v0;
    v88 = v142;
    v72 = v141;
    v31 = v150;
LABEL_33:
    sub_1000B1FC8(v73, v31, &qword_10083AD08, &qword_1006D8FD0);
    v17 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v89 = *(v17 - 8);
    v90 = *(v89 + 48);
    if (v90(v31, 1, v17) == 1)
    {
      break;
    }

    v91 = *(v17 + 48);
    v17 = v160;
    v71 = v88;
    (*v161)(v88, v31, v160);
    v70 = v157;
    (*v159)(v72, &v31[v91], v157);
    v92 = (*v144)(v72, v70);
    if (v92 == v143)
    {
      (*v136)(v72, v70);
      v94 = *v72;
      if (*v72 <= 0)
      {
        v121._countAndFlagsBits = 0x3662313537656335;
        v122._countAndFlagsBits = 0xD000000000000043;
        v122._object = 0x8000000100701C30;
        v121._object = 0xE800000000000000;
        logMilestone(tag:description:)(v121, v122);
        v162 = 0;
        v163 = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        v162 = 0x20746E656D656C65;
        v163 = 0xE800000000000000;
        sub_10014A184(&qword_10083A998, &type metadata accessor for IdentityElement);
        v123._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v123);

        v124._countAndFlagsBits = 0xD000000000000024;
        v124._object = 0x8000000100701C80;
        String.append(_:)(v124);
        v164 = v94;
        v125._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v125);

        (*(v130 + 104))(v132, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v131);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return (*v149)(v71, v17);
      }

      (*v149)(v71, v17);
      v65 = v158;
      v31 = v150;
      if (!v69)
      {
        goto LABEL_26;
      }
    }

    else
    {
      (*v149)(v71, v17);
      (*v148)(v72, v70);
      v65 = v158;
      if (!v69)
      {
        goto LABEL_26;
      }
    }
  }

  v144 = (v89 + 48);

  v95 = IdentityDocumentDescriptor.elementsToIntentToStore.getter();
  LODWORD(v136) = 0;
  LODWORD(v134) = 0;
  v31 = 0;
  v97 = v95 + 64;
  v96 = *(v95 + 64);
  v141 = v95;
  v98 = 1 << *(v95 + 32);
  v99 = -1;
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  v100 = v99 & v96;
  v101 = (v98 + 63) >> 6;
  v143 = (v89 + 56);
  LODWORD(v135) = enum case for IdentityElement.age(_:);
  v102 = v157;
  v0 = v138;
  v103 = v137;
  v158 = v17;
  v140 = v90;
  v139 = v95 + 64;
  v142 = v101;
  while (v100)
  {
    v105 = v31;
LABEL_57:
    v108 = __clz(__rbit64(v100));
    v100 &= v100 - 1;
    v109 = v108 | (v105 << 6);
    v110 = v141;
    v111 = v155;
    (*(v155 + 16))(v152, v141[6] + *(v155 + 72) * v109, v160);
    v112 = *(v110 + 7);
    v114 = v153;
    v113 = v154;
    v102 = v157;
    (*(v154 + 16))(v153, v112 + *(v154 + 72) * v109, v157);
    v17 = v158;
    v150 = *(v158 + 12);
    v0 = v138;
    (*(v111 + 32))(v138);
    (*(v113 + 32))(&v150[v0], v114, v102);
    v115 = 0;
    v103 = v137;
    v90 = v140;
    v97 = v139;
LABEL_58:
    (*v143)(v0, v115, 1, v17);
    sub_1000B1FC8(v0, v103, &qword_10083AD08, &qword_1006D8FD0);
    if (v90(v103, 1, v17) == 1)
    {

      if (v134 & v136)
      {
        v119._countAndFlagsBits = 0x3037383930653165;
        v120._countAndFlagsBits = 0xD00000000000003FLL;
        v120._object = 0x8000000100701BB0;
        v119._object = 0xE800000000000000;
        logMilestone(tag:description:)(v119, v120);
        (*(v130 + 104))(v132, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v131);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        return swift_willThrow();
      }

      return result;
    }

    v116 = v160;
    v117 = v147;
    (*v161)(v147, v103, v160);
    v118 = (*v146)(v117, v116);
    if (v118 == v145)
    {
      v104 = &v165;
LABEL_45:
      *(v104 - 64) = 1;
      goto LABEL_46;
    }

    if (v118 == v135)
    {
      v104 = &v164;
      goto LABEL_45;
    }

    (*v149)(v147, v116);
LABEL_46:
    v17 = v158;
    (*v148)((v103 + *(v158 + 12)), v102);
    v101 = v142;
  }

  if (v101 <= (v31 + 1))
  {
    v106 = v31 + 1;
  }

  else
  {
    v106 = v101;
  }

  v107 = v106 - 1;
  while (1)
  {
    v105 = (v31 + 1);
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v105 >= v101)
    {
      v100 = 0;
      v115 = 1;
      v31 = v107;
      goto LABEL_58;
    }

    v100 = *(v97 + 8 * v105);
    ++v31;
    if (v100)
    {
      v31 = v105;
      goto LABEL_57;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  v128(v31, v17);
  v126._countAndFlagsBits = 0x6334346461363462;
  v127._countAndFlagsBits = 0xD000000000000048;
  v127._object = 0x8000000100701B10;
  v126._object = 0xE800000000000000;
  logMilestone(tag:description:)(v126, v127);
  (*(v130 + 104))(v132, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v131);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return (v135)(v0, v17);
}

uint64_t sub_100148358(uint64_t a1)
{
  v49 = a1;
  v51 = type metadata accessor for DIPError.Code();
  v48 = *(v51 - 8);
  v1 = *(v48 + 64);
  __chkstk_darwin(v51);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for ISO18013KnownDocTypes();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v50;
  result = sub_100142F4C(v18);
  if (!v19)
  {
    v21 = v49;
    v42 = v8;
    v43 = v11;
    v45 = v13;
    v46 = v4;
    v50 = 0;
    v22 = (*(v15 + 88))(v18, v14);
    if (v22 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
    {
      v44 = v3;
      v23 = *(v21 + 16);
      v24 = (v21 + 32);
      while (1)
      {
        if (!v23)
        {
          (*(v48 + 104))(v44, enum case for DIPError.Code.missingEntitlement(_:), v51);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          goto LABEL_28;
        }

        if (!*v24)
        {
          break;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v24;
        --v23;
        if (v25)
        {
          goto LABEL_25;
        }
      }

LABEL_25:
      v34 = v45;
      defaultLogger()();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_36;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "DigitalPresentmentRequest Caller is entitled for US driver's license";
    }

    else
    {
      v26 = v51;
      if (v22 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
      {
        v44 = v3;
        v27 = *(v21 + 16);
        v28 = (v21 + 32);
        while (1)
        {
          if (!v27)
          {
            (*(v48 + 104))(v44, enum case for DIPError.Code.missingEntitlement(_:), v26);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
            goto LABEL_28;
          }

          if (*v28 <= 1u && *v28)
          {
            break;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v28;
          --v27;
          v26 = v51;
          if (v29)
          {
            goto LABEL_30;
          }
        }

LABEL_30:
        v34 = v43;
        defaultLogger()();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v35, v36))
        {
          goto LABEL_36;
        }

        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "DigitalPresentmentRequest Caller is entitled for JP national ID Card";
      }

      else
      {
        if (v22 != enum case for ISO18013KnownDocTypes.photoID(_:))
        {
          v50 = "onal ID card region: ";
          (*(v48 + 104))(v3, enum case for DIPError.Code.missingEntitlement(_:), v51);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          return (*(v15 + 8))(v18, v14);
        }

        v44 = v3;
        v30 = *(v21 + 16);
        v31 = (v21 + 32);
        v32 = v48;
        while (1)
        {
          if (!v30)
          {
            (*(v32 + 104))(v44, enum case for DIPError.Code.missingEntitlement(_:), v26);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
            swift_allocError();
LABEL_28:
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            return swift_willThrow();
          }

          if (*v31 > 1u && *v31 != 3)
          {
            break;
          }

          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v31;
          --v30;
          v26 = v51;
          if (v33)
          {
            goto LABEL_33;
          }
        }

LABEL_33:
        v34 = v42;
        defaultLogger()();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v35, v36))
        {
          goto LABEL_36;
        }

        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "DigitalPresentmentRequest Caller is entitled for photo ID";
      }
    }

    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);

LABEL_36:
    v39 = v46;
    v40 = v47;

    return (*(v40 + 8))(v34, v39);
  }

  return result;
}

void sub_100148D3C(uint64_t a1)
{
  v97 = a1;
  v78 = type metadata accessor for DIPError.Code();
  v77 = *(v78 - 8);
  v2 = *(v77 + 64);
  __chkstk_darwin(v78);
  v79 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for IdentityIntentToStore();
  v4 = *(v105 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v105);
  v91 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentityElement();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v100 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v89 = &v59 - v15;
  v16 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v103 = &v59 - v21;
  v64 = v1;
  v22 = IdentityDocumentDescriptor.elementsToIntentToStore.getter();
  v23 = 0;
  v24 = *(v22 + 64);
  v85 = v22 + 64;
  v96 = v22;
  v25 = 1 << *(v22 + 32);
  v99 = enum case for IdentityElement.ageIsOver(_:);
  v26 = -1;
  v86 = enum case for IdentityElement.givenName(_:);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v83 = enum case for IdentityElement.familyName(_:);
  v84 = (v25 + 63) >> 6;
  v104 = (v8 + 16);
  v88 = v4 + 16;
  v82 = enum case for IdentityElement.sex(_:);
  v28 = (v8 + 32);
  v87 = v4 + 32;
  v98 = (v8 + 88);
  v81 = enum case for IdentityElement.portrait(_:);
  v76 = enum case for IdentityElement.address(_:);
  v75 = enum case for IdentityElement.height(_:);
  v74 = enum case for IdentityElement.weight(_:);
  v73 = enum case for IdentityElement.eyeColor(_:);
  v72 = enum case for IdentityElement.hairColor(_:);
  v71 = enum case for IdentityElement.organDonorStatus(_:);
  v70 = enum case for IdentityElement.veteranStatus(_:);
  v69 = enum case for IdentityElement.issuingAuthority(_:);
  v68 = enum case for IdentityElement.documentDHSComplianceStatus(_:);
  v67 = enum case for IdentityElement.documentIssueDate(_:);
  v66 = enum case for IdentityElement.documentExpirationDate(_:);
  v65 = enum case for IdentityElement.documentNumber(_:);
  v63 = enum case for IdentityElement.drivingPrivileges(_:);
  v90 = v8;
  v101 = (v8 + 8);
  v62 = enum case for IdentityElement.age(_:);
  v61 = enum case for IdentityElement.dateOfBirth(_:);
  v92 = v4;
  v93 = v20;
  v102 = (v4 + 8);
  v108 = v7;
  v94 = (v8 + 32);
  v95 = v14;
  if ((v26 & v24) == 0)
  {
LABEL_5:
    if (v84 <= v23 + 1)
    {
      v30 = v23 + 1;
    }

    else
    {
      v30 = v84;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v29 >= v84)
      {
        v51 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
        (*(*(v51 - 8) + 56))(v20, 1, 1, v51);
        v27 = 0;
        goto LABEL_13;
      }

      v27 = *(v85 + 8 * v29);
      ++v23;
      if (v27)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_65:
    v60 = v8;
    (*v101)(v14, v7);

    goto LABEL_63;
  }

  while (1)
  {
    v29 = v23;
LABEL_12:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v96;
    v35 = v89;
    v36 = v90;
    (*(v90 + 16))(v89, *(v96 + 48) + *(v90 + 72) * v33, v7);
    v37 = v91;
    v38 = v92;
    v39 = v105;
    (*(v92 + 16))(v91, *(v34 + 56) + *(v92 + 72) * v33, v105);
    v40 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v41 = *(v40 + 48);
    v42 = *(v36 + 32);
    v43 = v93;
    v44 = v35;
    v28 = v94;
    v42(v93, v44, v108);
    v45 = *(v38 + 32);
    v20 = v43;
    v45(&v43[v41], v37, v39);
    (*(*(v40 - 8) + 56))(v43, 0, 1, v40);
    v31 = v29;
    v14 = v95;
LABEL_13:
    v46 = v103;
    sub_1000B1FC8(v20, v103, &qword_10083AD08, &qword_1006D8FD0);
    v47 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {

      v53._countAndFlagsBits = 0xD000000000000022;
      v54._countAndFlagsBits = 0x3333626532323131;
      v53._object = 0x8000000100701D20;
      v54._object = 0xE800000000000000;
      logMilestone(tag:description:)(v54, v53);
      return;
    }

    v8 = *(v47 + 48);
    v7 = v108;
    (*v28)(v14, v46, v108);
    v48 = v100;
    (*v104)(v100, v14, v7);
    v49 = (*v98)(v48, v7);
    if (v49 == v99)
    {
      v50 = 17;
      goto LABEL_58;
    }

    if (v49 == v86)
    {
      v50 = 0;
      goto LABEL_58;
    }

    if (v49 == v83)
    {
      v50 = 1;
      goto LABEL_58;
    }

    if (v49 == v82)
    {
      v50 = 2;
      goto LABEL_58;
    }

    if (v49 == v81)
    {
      v50 = 3;
      goto LABEL_58;
    }

    if (v49 == v76)
    {
      v50 = 4;
      goto LABEL_58;
    }

    if (v49 == v75)
    {
      v50 = 5;
      goto LABEL_58;
    }

    if (v49 == v74)
    {
      v50 = 6;
      goto LABEL_58;
    }

    if (v49 == v73)
    {
      v50 = 7;
      goto LABEL_58;
    }

    if (v49 == v72)
    {
      v50 = 8;
      goto LABEL_58;
    }

    if (v49 == v71)
    {
      v50 = 9;
      goto LABEL_58;
    }

    if (v49 == v70)
    {
      v50 = 10;
      goto LABEL_58;
    }

    if (v49 == v69)
    {
      v50 = 11;
      goto LABEL_58;
    }

    if (v49 == v68)
    {
      v50 = 12;
      goto LABEL_58;
    }

    if (v49 == v67)
    {
      v50 = 15;
      goto LABEL_58;
    }

    if (v49 == v66)
    {
      v50 = 13;
      goto LABEL_58;
    }

    if (v49 == v65)
    {
      v52 = v80;
      v50 = sub_100149B44();
      v80 = v52;
      if (v52)
      {
        goto LABEL_65;
      }

      goto LABEL_57;
    }

    if (v49 == v63)
    {
      v50 = 16;
      goto LABEL_58;
    }

    v60 = v8;
    if (v49 != v62)
    {
      break;
    }

    v50 = 17;
LABEL_56:
    v7 = v108;
    v14 = v95;
    v46 = v103;
    v8 = v60;
    v20 = v93;
LABEL_57:
    v28 = v94;
LABEL_58:
    if (!sub_10032D364(v50, v97))
    {
      v60 = v8;
      v106 = 0;
      v107 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v106 = 0xD000000000000024;
      v107 = 0x8000000100701DA0;
      sub_10014A184(&qword_10083A998, &type metadata accessor for IdentityElement);
      v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v55);

      (*(v77 + 104))(v79, enum case for DIPError.Code.missingEntitlement(_:), v78);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*v101)(v95, v7);
      goto LABEL_63;
    }

    (*v101)(v14, v7);
    (*v102)(v46 + v8, v105);
    v23 = v31;
    if (!v27)
    {
      goto LABEL_5;
    }
  }

  if (v49 == v61)
  {
    v50 = 18;
    goto LABEL_56;
  }

  v106 = 0;
  v107 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v106 = 0xD000000000000010;
  v107 = 0x8000000100701D50;
  sub_10014A184(&qword_10083A998, &type metadata accessor for IdentityElement);
  v56 = v108;
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  (*(v77 + 104))(v79, enum case for DIPError.Code.badLogic(_:), v78);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v58 = *v101;
  (*v101)(v95, v56);
  v58(v100, v56);
LABEL_63:
  (*v102)(v103 + v60, v105);
}

uint64_t sub_100149B44()
{
  v2 = type metadata accessor for DIPError.Code();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DigitalPresentmentDocumentType();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ISO18013KnownDocTypes();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100142F4C(v14);
  if (!v1)
  {
    v20 = v0;
    v16 = (*(v11 + 88))(v14, v10);
    if (v16 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
    {
      return 14;
    }

    else if (v16 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
    {
      return 19;
    }

    else if (v16 == enum case for ISO18013KnownDocTypes.photoID(_:))
    {
      return 14;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      v19 = v10;
      _StringGuts.grow(_:)(27);

      v22 = 0xD000000000000019;
      v23 = 0x80000001006FFEF0;
      IdentityDocumentDescriptor.documentType.getter();
      sub_10014A184(&qword_10083BAF0, &type metadata accessor for DigitalPresentmentDocumentType);
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      (*(v21 + 8))(v9, v6);
      v21 = v23;
      (*(v24 + 104))(v5, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (*(v11 + 8))(v14, v19);
    }
  }

  return result;
}

void sub_100149FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() standardUserDefaults];
  v10._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableElementsEntitlementChecks.getter();
  v11 = NSUserDefaults.internalBool(forKey:)(v10);

  if (v11)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "DigitalPresentmentRequest Not checking elements entitlement due to user defaults settings", v14, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = v16[1];
    sub_100148358(a1);
    if (!v15)
    {
      sub_100148D3C(a2);
    }
  }
}

uint64_t sub_10014A184(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014A1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_10014A310, 0, 0);
}

uint64_t sub_10014A310()
{
  v1 = v0[17];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentResponseBuilder buildResponse invoked.", v4, 2u);
  }

  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[11];

  (*(v6 + 8))(v5, v7);
  v9 = v8[5];
  v10 = v8[6];
  sub_10000BA08(v8 + 2, v9);
  v11 = *(v10 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_10014A4D8;

  return v15(v9, v10);
}

uint64_t sub_10014A4D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v5 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v6 = v3[17];
    v7 = v3[14];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10014A634, 0, 0);
  }
}

uint64_t sub_10014A634()
{
  v1 = v0[19];
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = v0[19];
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];

    (*(v11 + 104))(v10, enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_8:
    v13 = v0[17];
    v14 = v0[14];

    v15 = v0[1];

    return v15();
  }

  if (v1 < 0)
  {
    v34 = v0[19];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v35 = v0[19];
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v0[19] + 32);
  }

  v5 = v4;
  v6 = SecCertificateRef.publicKeySHA256()();
  v8 = v7;

  v0[21] = v6;
  v0[22] = v8;
  if (v8 >> 60 == 15)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v16 = *(v0[19] + 32);
  }

  v17 = v16;
  v18 = SecCertificateRef.organizationalUnit()();

  if (!v18.value._object)
  {
    v23 = v0[19];
    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[12];

    (*(v25 + 104))(v24, enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:), v26);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v6, v8);
    goto LABEL_8;
  }

  v19 = v0[20];
  v20 = v0[11] + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_isoBuilder;
  v0[23] = sub_1001416A8(v18.value._countAndFlagsBits, v18.value._object, v6, v8);
  v0[24] = v21;
  if (v19)
  {
    v22 = v0[19];

    sub_10000BD94(v6, v8);

    goto LABEL_8;
  }

  v27 = v0[10];

  v28 = (v27 + *(type metadata accessor for DigitalPresentmentEligibleProposalData() + 24));
  v29 = v28[3];
  v30 = v28[4];
  sub_10000BA08(v28, v29);
  v31 = *(v30 + 8);
  v36 = (v31 + *v31);
  v32 = v31[1];
  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = sub_10014AAC0;

  return v36(v29, v30);
}

uint64_t sub_10014AAC0(char a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10014ABC0, 0, 0);
}

uint64_t sub_10014ABC0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  if (*(v0 + 232) == 1)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    type metadata accessor for SecCertificate(0);
    Array<A>.derRepresentation.getter();

    v9 = *v4;
    v8 = v4[1];
    v10 = objc_opt_self();

    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v10 appleHPKEWithSessionTranscript:isa certificateChain:v12];

    *(v0 + 16) = v9;
    *(v0 + 24) = v8;
    *(v0 + 32) = v7;
    *(v0 + 40) = v6;
    *(v0 + 48) = v13;
    *(v0 + 56) = 0;
    v14 = *sub_10000BA08((v5 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_presentmentSessionManager), *(v5 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_presentmentSessionManager + 24));
    sub_10000B8B8(v7, v6);
    v15 = swift_task_alloc();
    *(v0 + 208) = v15;
    *v15 = v0;
    v15[1] = sub_10014AEAC;

    return sub_10015F8B0(v0 + 16);
  }

  else
  {
    v17 = *(v0 + 168);
    v25 = *(v0 + 176);
    v18 = *(v0 + 152);
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v21 = *(v0 + 96);

    (*(v20 + 104))(v19, enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v1, v2);
    sub_10000BD94(v17, v25);
    v22 = *(v0 + 136);
    v23 = *(v0 + 112);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_10014AEAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_10014B118;
  }

  else
  {
    *(v4 + 224) = a1;
    v7 = sub_10014AFD4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10014AFD4()
{
  v1 = v0[28];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v12 = v0[14];
  v13 = v0[17];
  v6._countAndFlagsBits = 0x3666613738363937;
  v7._object = 0x8000000100702090;
  v6._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  logMilestone(tag:description:)(v6, v7);
  type metadata accessor for DigitalPresentmentResponse();
  v8 = [v1 responseData];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = dispatch thunk of DigitalPresentmentResponse.__allocating_init(encryptedData:)();
  sub_10014B4A8((v0 + 2));
  sub_10000B90C(v3, v2);
  sub_10000BD94(v5, v4);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_10014B118()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  sub_10014B4A8((v0 + 2));
  sub_10000B90C(v1, v2);
  sub_10000BD94(v4, v3);
  v5 = v0[27];
  v6 = v0[17];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10014B1B8()
{
  sub_10000BB78(v0 + 2);
  sub_100141F88(v0 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_isoBuilder);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_presentmentSessionManager));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DigitalPresentmentResponseBuilder()
{
  result = qword_10083BBC8;
  if (!qword_10083BBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014B288()
{
  result = type metadata accessor for ValidatedDigitalPresentmentRequest();
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

uint64_t sub_10014B324(uint64_t a1)
{
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 48);
  sub_10000BA08((*v1 + 16), v4);
  (*(v5 + 8))(v4, v5);
  v6 = (a1 + *(type metadata accessor for DigitalPresentmentEligibleProposalData() + 24));
  v7 = v6[3];
  v8 = v6[4];
  sub_10000BA08(v6, v7);
  (*(v8 + 24))(v7, v8);
  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_10014B3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10013898C;

  return sub_10014A1F0(a1, a2, a3);
}

uint64_t sub_10014B4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_1008336D8, qword_1006BF6F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_10000BE18(a1, &qword_1008336D8, qword_1006BF6F0);
    sub_10014EE50(a2, a3, v10);

    return sub_10000BE18(v10, &qword_1008336D8, qword_1006BF6F0);
  }

  else
  {
    sub_10000BA4C(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10016C33C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_10014B6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10016C328(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10003ADCC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_10016EDF4();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_100150370(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10014B7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10016C67C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10003ADCC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_10016F088();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_100150370(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t sub_10014B8AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_10016C818(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_10003B078(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_10016F1FC();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_10014F818(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_10014B96C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10001F358(a1, v17);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    v6 = v18;
    v7 = v19;
    v8 = sub_10001F370(v17, v18);
    v9 = *(*(v6 - 8) + 64);
    __chkstk_darwin(v8);
    v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11);
    sub_10015B6E4(v11, a2, isUniquelyReferenced_nonNull_native, &v16, v6, v7);
    sub_10000BB78(v17);
    v13 = type metadata accessor for DIPError.PropertyKey();
    result = (*(*(v13 - 8) + 8))(a2, v13);
    *v2 = v16;
  }

  else
  {
    sub_10000BE18(a1, &qword_10083BD10, &qword_1006DA228);
    sub_10014F108(a2, v17);
    v15 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_10000BE18(v17, &qword_10083BD10, &qword_1006DA228);
  }

  return result;
}

uint64_t sub_10014BB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10001F358(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10016C964(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000BE18(a1, &qword_100834378, &unk_1006BFF50);
    sub_10014F1EC(a2, a3, v10);

    return sub_10000BE18(v10, &qword_100834378, &unk_1006BFF50);
  }

  return result;
}

uint64_t sub_10014BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_10016CAB8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_10003ADCC(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_10016F53C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_10015000C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_10014BD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10001F348(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10016CC40(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000BE18(a1, &unk_100845ED0, &qword_1006DA1D0);
    sub_10014F348(a2, a3, v10);

    return sub_10000BE18(v10, &unk_100845ED0, &qword_1006DA1D0);
  }

  return result;
}

uint64_t sub_10014BDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_10083BD28, &qword_1006DA240);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for IdentityProofingDisplayMessage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_10000BE18(a1, &qword_10083BD28, &qword_1006DA240);
    sub_10014F42C(a2, a3, &type metadata accessor for IdentityProofingDisplayMessage, &type metadata accessor for IdentityProofingDisplayMessage, sub_10016F858, v10);

    return sub_10000BE18(v10, &qword_10083BD28, &qword_1006DA240);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10016CD90(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

void sub_10014C004(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v5 = *v3;
  if (a2)
  {
    v6 = sub_10003B1D8(a3);
    if (v7)
    {
      v8 = v6;
      v9 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10016F880();
        v11 = v15;
      }

      sub_10014F68C(v8, v11);
      *v4 = v11;
    }

    else
    {
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_10016CF6C(a1, a3, v13);

    *v4 = v16;
  }
}

uint64_t sub_10014C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RecipientEncryptionCertificate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_10000BE18(a1, &qword_1008399F0, &unk_1006DA210);
    sub_10014F42C(a2, a3, &type metadata accessor for RecipientEncryptionCertificate, &type metadata accessor for RecipientEncryptionCertificate, sub_1001705A4, v10);

    return sub_10000BE18(v10, &qword_1008399F0, &unk_1006DA210);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10016D3F0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_10014C310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10016D5CC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10003ADCC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1001705CC();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_100150370(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t sub_10014C408(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_10016DB40(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_10003B6E4(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1001713B8();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_100150D08(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10014C4DC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100007224(&qword_10083BD38, &qword_1006DA250);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_10000BE18(a1, &qword_10083BD38, &qword_1006DA250);
    v15 = *v3;
    v16 = sub_10003B6E4(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100171048();
        v21 = v26;
      }

      sub_1000B1FC8(*(v21 + 56) + *(v11 + 72) * v18, v9, &qword_1008335C0, &qword_1006DA7B0);
      sub_100150A70(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_10000BE18(v9, &qword_10083BD38, &qword_1006DA250);
  }

  else
  {
    sub_1000B1FC8(a1, v14, &qword_1008335C0, &qword_1006DA7B0);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_10016D8C0(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_10014C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v14 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v6;
    sub_10016DE58(a1, a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *v6 = v27;
  }

  else
  {
    v17 = *v6;
    v18 = sub_10003ADCC(a5, a6);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v28 = *v7;
      if (!v21)
      {
        sub_100171830();
        v22 = v28;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      v24 = *(v22 + 56) + 32 * v18;
      v25 = *(v24 + 8);
      v26 = *(v24 + 24);

      result = sub_1001501BC(v18, v22);
      *v7 = v22;
    }
  }

  return result;
}

uint64_t sub_10014C858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityIntentToStore();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v80 = &v62 - v9;
  v81 = type metadata accessor for IdentityElement();
  v72 = *(v81 - 8);
  v10 = *(v72 + 64);
  v11 = __chkstk_darwin(v81);
  v73 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v62 - v13;
  v14 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  result = __chkstk_darwin(v16);
  v75 = &v62 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v74 = v18;
  v69 = v8;
  v70 = a2;
  v20 = 0;
  v66 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v63 = (v24 + 63) >> 6;
  v64 = v22;
  v65 = v72 + 16;
  v79 = (v72 + 32);
  v77 = v82 + 16;
  v78 = (v82 + 32);
  v67 = (v72 + 8);
  v68 = (v82 + 8);
  while (v26)
  {
    v76 = (v26 - 1) & v26;
    v27 = __clz(__rbit64(v26)) | (v20 << 6);
LABEL_16:
    v34 = v66;
    v36 = v71;
    v35 = v72;
    v37 = v81;
    (*(v72 + 16))(v71, *(v66 + 48) + *(v72 + 72) * v27, v81);
    v38 = *(v34 + 56);
    v39 = v82;
    v40 = v80;
    (*(v82 + 16))(v80, v38 + *(v82 + 72) * v27, v4);
    v41 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v42 = *(v41 + 48);
    v43 = *(v35 + 32);
    v31 = v74;
    v43(v74, v36, v37);
    (*(v39 + 32))(v31 + v42, v40, v4);
    (*(*(v41 - 8) + 56))(v31, 0, 1, v41);
    v30 = v75;
    v26 = v76;
LABEL_17:
    sub_1000B1FC8(v31, v30, &qword_10083AD08, &qword_1006D8FD0);
    v44 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v45 = (*(*(v44 - 8) + 48))(v30, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    v47 = *(v44 + 48);
    v48 = v4;
    v49 = v73;
    v50 = v81;
    (*v79)(v73, v30, v81);
    v51 = v69;
    (*v78)(v69, v30 + v47, v48);
    v52 = v70;
    v53 = sub_10003AC24(v49);
    v55 = v54;
    (*v67)(v49, v50);
    if ((v55 & 1) == 0)
    {
      (*v68)(v51, v48);
      return 0;
    }

    v56 = v82;
    v57 = *(v52 + 56) + *(v82 + 72) * v53;
    v58 = v80;
    (*(v82 + 16))(v80, v57, v48);
    sub_10015D610(&qword_10083BD00, &type metadata accessor for IdentityIntentToStore);
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    v60 = *(v56 + 8);
    v60(v58, v48);
    result = (v60)(v51, v48);
    v4 = v48;
    if ((v59 & 1) == 0)
    {
      return v46;
    }
  }

  if (v63 <= v20 + 1)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v63;
  }

  v29 = v28 - 1;
  v31 = v74;
  v30 = v75;
  while (1)
  {
    v32 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v32 >= v63)
    {
      v61 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      (*(*(v61 - 8) + 56))(v31, 1, 1, v61);
      v26 = 0;
      v20 = v29;
      goto LABEL_17;
    }

    v33 = *(v64 + 8 * v32);
    ++v20;
    if (v33)
    {
      v76 = (v33 - 1) & v33;
      v27 = __clz(__rbit64(v33)) | (v32 << 6);
      v20 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014CE9C(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for Locale();
  v56 = *(v61 - 8);
  v4 = *(v56 + 64);
  v5 = __chkstk_darwin(v61);
  v57 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = v51 - v7;
  v8 = sub_100007224(&qword_10083BDE8, &qword_1006DA2B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  result = __chkstk_darwin(v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = v51 - v12;
  v14 = 0;
  v52 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v51[0] = v16;
  v51[1] = v56 + 16;
  v58 = v13;
  v59 = (v56 + 32);
  v53 = (v56 + 8);
  while (v20)
  {
    v60 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_17:
    v28 = v52;
    v29 = v56;
    (*(v56 + 16))(v54, *(v52 + 48) + *(v56 + 72) * v22, v61);
    v30 = (*(v28 + 56) + 16 * v22);
    v32 = *v30;
    v31 = v30[1];
    v33 = sub_100007224(&qword_10083BDF0, &qword_1006DA2C0);
    v34 = (v58 + *(v33 + 48));
    v25 = v58;
    (*(v29 + 32))();
    *v34 = v32;
    v34[1] = v31;
    (*(*(v33 - 8) + 56))(v25, 0, 1, v33);

LABEL_18:
    v35 = v55;
    sub_1000B1FC8(v25, v55, &qword_10083BDE8, &qword_1006DA2B8);
    v36 = sub_100007224(&qword_10083BDF0, &qword_1006DA2C0);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = (v35 + *(v36 + 48));
    v40 = v57;
    v41 = v61;
    (*v59)(v57, v35, v61);
    v42 = *v39;
    v43 = v39[1];
    v44 = sub_10003ACF8(v40);
    v46 = v45;
    (*v53)(v40, v41);
    if ((v46 & 1) == 0)
    {

      return 0;
    }

    v47 = (*(a2 + 56) + 16 * v44);
    if (*v47 == v42 && v47[1] == v43)
    {

      v20 = v60;
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = v60;
      if ((v49 & 1) == 0)
      {
        return v38;
      }
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  v25 = v58;
  while (1)
  {
    v26 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v50 = sub_100007224(&qword_10083BDF0, &qword_1006DA2C0);
      (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
      v60 = 0;
      v14 = v24;
      goto LABEL_18;
    }

    v27 = *(v51[0] + 8 * v26);
    ++v14;
    if (v27)
    {
      v60 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v14 = v26;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014D35C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v33 = result;
  while (v8)
  {
    v12 = __clz(__rbit64(v8));
    v35 = (v8 - 1) & v8;
LABEL_14:
    v15 = 16 * (v12 | (v4 << 6));
    v16 = (*(v3 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(v3 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_10003ADCC(v17, v18);
    v24 = v23;

    if ((v24 & 1) == 0 || (v25 = (*(v2 + 56) + 16 * v22), v26 = *v25, v27 = *(*v25 + 16), v27 != *(v20 + 16)))
    {
LABEL_28:

      return 0;
    }

    v28 = v25[1];
    if (v27)
    {
      v29 = v26 == v20;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      v30 = (v26 + 40);
      v31 = (v20 + 40);
      while (v27)
      {
        result = *(v30 - 1);
        if (result != *(v31 - 1) || *v30 != *v31)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v30 += 2;
        v31 += 2;
        if (!--v27)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    v11 = sub_10014D57C(v10, v21);

    result = 0;
    v3 = v33;
    v2 = a2;
    v8 = v35;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v35 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10014D57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Region();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v59 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = v52 - v9;
  v10 = sub_100007224(&qword_10083BDF8, &qword_1006DA2C8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  result = __chkstk_darwin(v12);
  v16 = v52 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v57 = v15;
  v17 = 0;
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v52[1] = v5 + 16;
  v53 = v5;
  v61 = v52 - v14;
  v62 = (v5 + 32);
  v55 = (v5 + 8);
  v56 = a2;
  v54 = a1;
  while (v21)
  {
    v60 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_17:
    v28 = v58;
    (*(v5 + 16))(v58, *(a1 + 48) + *(v5 + 72) * v23, v4);
    v29 = *(*(a1 + 56) + 8 * v23);
    v30 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
    v31 = *(v30 + 48);
    v32 = v57;
    (*(v5 + 32))(v57, v28, v4);
    *(v32 + v31) = v29;
    (*(*(v30 - 8) + 56))(v32, 0, 1, v30);

    v16 = v61;
LABEL_18:
    sub_1000B1FC8(v32, v16, &qword_10083BDF8, &qword_1006DA2C8);
    v33 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
    v34 = 1;
    if ((*(*(v33 - 8) + 48))(v16, 1, v33) == 1)
    {
      return v34;
    }

    v35 = *(v33 + 48);
    v36 = v59;
    (*v62)(v59, v16, v4);
    v37 = *&v16[v35];
    v38 = v56;
    v39 = sub_10003ADF8(v36);
    LOBYTE(v35) = v40;
    result = (*v55)(v36, v4);
    if ((v35 & 1) == 0 || (v41 = *(*(v38 + 56) + 8 * v39), v42 = *(v41 + 16), v42 != *(v37 + 16)))
    {
LABEL_36:

      return 0;
    }

    v43 = v4;
    v44 = v53;
    v45 = v54;
    if (v42)
    {
      v46 = v41 == v37;
    }

    else
    {
      v46 = 1;
    }

    if (!v46)
    {
      v47 = (v41 + 40);
      v48 = (v37 + 40);
      while (v42)
      {
        result = *(v47 - 1);
        if (result != *(v48 - 1) || *v47 != *v48)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v47 += 2;
        v48 += 2;
        if (!--v42)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_6:

    a1 = v45;
    v4 = v43;
    v5 = v44;
    v21 = v60;
    v16 = v61;
  }

  if (v22 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v50 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
      v51 = v57;
      (*(*(v50 - 8) + 56))(v57, 1, 1, v50);
      v60 = 0;
      v17 = v25;
      v32 = v51;
      goto LABEL_18;
    }

    v27 = *(v18 + 8 * v26);
    ++v17;
    if (v27)
    {
      v60 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v17 = v26;
      goto LABEL_17;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10014DA5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_10003ADCC(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);

    v22 = sub_10014DBC4(v21, v16);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014DBC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_10003ADCC(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014DCF8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014DEB0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10014DF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v9 = *(i - 3);
      v8 = *(i - 2);
      v11 = *(i - 1);
      v10 = *i;
      v12 = *(v4 - 2);
      v13 = *v4;
      v68 = *(v4 - 1);
      v69 = *(v4 - 3);
      v14 = v8 >> 62;
      v15 = v12 >> 62;
      if (v8 >> 62 == 3)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v26 = *(v9 + 16);
          v25 = *(v9 + 24);
          v23 = __OFSUB__(v25, v26);
          v17 = v25 - v26;
          if (v23)
          {
            goto LABEL_120;
          }

          goto LABEL_30;
        }

        v17 = 0;
        if (v15 <= 1)
        {
          goto LABEL_31;
        }
      }

      else if (v14)
      {
        LODWORD(v17) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_119;
        }

        v17 = v17;
        if (v15 <= 1)
        {
LABEL_31:
          if (v15)
          {
            LODWORD(v24) = HIDWORD(v69) - v69;
            if (__OFSUB__(HIDWORD(v69), v69))
            {
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
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
            }

            v24 = v24;
          }

          else
          {
            v24 = BYTE6(v12);
          }

          goto LABEL_37;
        }
      }

      else
      {
        v17 = BYTE6(v8);
        if (v15 <= 1)
        {
          goto LABEL_31;
        }
      }

LABEL_24:
      if (v15 != 2)
      {
        if (v17)
        {
          return 0;
        }

LABEL_42:
        sub_10000B8B8(v9, v8);
        sub_10000B8B8(v11, v10);
        v19 = v69;
        v20 = v12;
LABEL_43:
        sub_10000B8B8(v19, v20);
        sub_10000B8B8(v68, v13);
        goto LABEL_64;
      }

      v22 = *(v69 + 16);
      v21 = *(v69 + 24);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (v23)
      {
        goto LABEL_116;
      }

LABEL_37:
      if (v17 != v24)
      {
        return 0;
      }

      if (v17 < 1)
      {
        goto LABEL_42;
      }

      if (v14 > 1)
      {
        v64 = v3;
        if (v14 == 2)
        {
          v28 = *(v4 - 2);
          v29 = *v4;
          v30 = *(v9 + 16);
          v57 = *(v9 + 24);
          v58 = *(i - 3);
          sub_10000B8B8(v9, v8);
          v61 = v11;
          sub_10000B8B8(v11, v10);
          v31 = v28;
          sub_10000B8B8(v69, v28);
          v66 = v29;
          sub_10000B8B8(v68, v29);
          v32 = __DataStorage._bytes.getter();
          if (v32)
          {
            v33 = __DataStorage._offset.getter();
            if (__OFSUB__(v30, v33))
            {
              goto LABEL_127;
            }

            v32 += v30 - v33;
          }

          v3 = v64;
          if (__OFSUB__(v57, v30))
          {
            goto LABEL_124;
          }

          __DataStorage._length.getter();
          v12 = v31;
          sub_1000C2B5C(v32, v69, v31, v71);
          v34 = v71[0];
          v9 = v58;
          v11 = v61;
          goto LABEL_60;
        }

        memset(v71, 0, 14);
        sub_10000B8B8(v9, v8);
        sub_10000B8B8(v11, v10);
        sub_10000B8B8(v69, v12);
        sub_10000B8B8(v68, v13);
        v27 = v69;
      }

      else
      {
        if (v14)
        {
          v66 = *v4;
          v35 = *(i - 3);
          if (v35 >> 32 < v9)
          {
            goto LABEL_123;
          }

          v59 = *(i - 3);
          sub_10000B8B8(v35, v8);
          v62 = v11;
          sub_10000B8B8(v11, v10);
          sub_10000B8B8(v69, v12);
          sub_10000B8B8(v68, v66);
          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v37 = __DataStorage._offset.getter();
            if (__OFSUB__(v9, v37))
            {
              goto LABEL_128;
            }

            v36 += v9 - v37;
          }

          v9 = v59;
          __DataStorage._length.getter();
          sub_1000C2B5C(v36, v69, v12, v71);
          v34 = v71[0];
          v11 = v62;
LABEL_60:
          v13 = v66;
          if ((v34 & 1) == 0)
          {
            goto LABEL_113;
          }

          goto LABEL_64;
        }

        v71[0] = *(i - 3);
        LOWORD(v71[1]) = v8;
        BYTE2(v71[1]) = BYTE2(v8);
        BYTE3(v71[1]) = BYTE3(v8);
        BYTE4(v71[1]) = BYTE4(v8);
        BYTE5(v71[1]) = BYTE5(v8);
        v64 = v3;
        sub_10000B8B8(v9, v8);
        sub_10000B8B8(v11, v10);
        sub_10000B8B8(v69, v12);
        sub_10000B8B8(v68, v13);
        v27 = v69;
      }

      v3 = v64;
      sub_1000C2B5C(v71, v27, v12, &v70);
      if (!v70)
      {
        goto LABEL_113;
      }

LABEL_64:
      v38 = v10 >> 62;
      v39 = v13 >> 62;
      if (v10 >> 62 == 3)
      {
        v40 = 0;
        if (!v11 && v10 == 0xC000000000000000 && v13 >> 62 == 3)
        {
          v40 = 0;
          if (!v68 && v13 == 0xC000000000000000)
          {
            sub_10000B90C(v69, v12);
            sub_10000B90C(0, 0xC000000000000000);
            sub_10000B90C(v9, v8);
            v6 = 0;
            v7 = 0xC000000000000000;
            goto LABEL_7;
          }
        }

LABEL_80:
        if (v39 <= 1)
        {
          goto LABEL_81;
        }

        goto LABEL_74;
      }

      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v45 = *(v11 + 16);
          v44 = *(v11 + 24);
          v23 = __OFSUB__(v44, v45);
          v40 = v44 - v45;
          if (v23)
          {
            goto LABEL_122;
          }

          goto LABEL_80;
        }

        v40 = 0;
        if (v39 <= 1)
        {
          goto LABEL_81;
        }
      }

      else if (v38)
      {
        LODWORD(v40) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_121;
        }

        v40 = v40;
        if (v39 <= 1)
        {
LABEL_81:
          if (v39)
          {
            LODWORD(v43) = HIDWORD(v68) - v68;
            if (__OFSUB__(HIDWORD(v68), v68))
            {
              goto LABEL_118;
            }

            v43 = v43;
          }

          else
          {
            v43 = BYTE6(v13);
          }

          goto LABEL_85;
        }
      }

      else
      {
        v40 = BYTE6(v10);
        if (v39 <= 1)
        {
          goto LABEL_81;
        }
      }

LABEL_74:
      if (v39 != 2)
      {
        if (v40)
        {
          goto LABEL_113;
        }

LABEL_6:
        sub_10000B90C(v69, v12);
        sub_10000B90C(v68, v13);
        sub_10000B90C(v9, v8);
        v6 = v11;
        v7 = v10;
LABEL_7:
        sub_10000B90C(v6, v7);
        goto LABEL_8;
      }

      v42 = *(v68 + 16);
      v41 = *(v68 + 24);
      v23 = __OFSUB__(v41, v42);
      v43 = v41 - v42;
      if (v23)
      {
        goto LABEL_117;
      }

LABEL_85:
      if (v40 != v43)
      {
LABEL_113:
        sub_10000B90C(v69, v12);
        sub_10000B90C(v68, v13);
        sub_10000B90C(v9, v8);
        sub_10000B90C(v11, v10);
        return 0;
      }

      if (v40 < 1)
      {
        goto LABEL_6;
      }

      if (v38 > 1)
      {
        if (v38 != 2)
        {
          memset(v71, 0, 14);
LABEL_106:
          sub_1000C2B5C(v71, v68, v13, &v70);
          sub_10000B90C(v69, v12);
          sub_10000B90C(v68, v13);
          sub_10000B90C(v9, v8);
          sub_10000B90C(v11, v10);
          if (!v70)
          {
            return 0;
          }

          goto LABEL_8;
        }

        v67 = v13;
        v60 = v9;
        v63 = v11;
        v46 = *(v11 + 16);
        v47 = *(v11 + 24);
        v48 = __DataStorage._bytes.getter();
        if (v48)
        {
          v49 = __DataStorage._offset.getter();
          if (__OFSUB__(v46, v49))
          {
            goto LABEL_129;
          }

          v48 += v46 - v49;
        }

        if (__OFSUB__(v47, v46))
        {
          goto LABEL_126;
        }

        __DataStorage._length.getter();
        sub_1000C2B5C(v48, v68, v67, v71);
        sub_10000B90C(v69, v12);
        sub_10000B90C(v68, v67);
        v50 = v60;
        v51 = v8;
      }

      else
      {
        if (!v38)
        {
          v71[0] = v11;
          LOWORD(v71[1]) = v10;
          BYTE2(v71[1]) = BYTE2(v10);
          BYTE3(v71[1]) = BYTE3(v10);
          BYTE4(v71[1]) = BYTE4(v10);
          BYTE5(v71[1]) = BYTE5(v10);
          goto LABEL_106;
        }

        v65 = v3;
        v63 = v11;
        if (v11 >> 32 < v11)
        {
          goto LABEL_125;
        }

        v52 = __DataStorage._bytes.getter();
        if (v52)
        {
          v53 = v52;
          v54 = __DataStorage._offset.getter();
          if (__OFSUB__(v11, v54))
          {
            goto LABEL_130;
          }

          v55 = v11 - v54 + v53;
        }

        else
        {
          v55 = 0;
        }

        __DataStorage._length.getter();
        v3 = v65;
        sub_1000C2B5C(v55, v68, v13, v71);
        sub_10000B90C(v69, v12);
        sub_10000B90C(v68, v13);
        v50 = v9;
        v51 = v8;
      }

      sub_10000B90C(v50, v51);
      sub_10000B90C(v63, v10);
      if ((v71[0] & 1) == 0)
      {
        return 0;
      }

LABEL_8:
      v4 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v9)
    {
      v16 = 0;
    }

    else
    {
      v16 = v8 == 0xC000000000000000;
    }

    v17 = 0;
    v18 = v16 && v12 >> 62 == 3;
    if (v18 && !v69 && v12 == 0xC000000000000000)
    {
      sub_10000B8B8(0, 0xC000000000000000);
      sub_10000B8B8(v11, v10);
      v19 = 0;
      v20 = 0xC000000000000000;
      goto LABEL_43;
    }

LABEL_30:
    if (v15 <= 1)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_10014E830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_10015D610(&qword_10083BCB0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10014EA44(uint64_t a1, uint64_t a2)
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
          sub_10000B8B8(v7, v6);
          sub_10000B8B8(v9, v8);
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
        sub_10000B8B8(v7, v6);
        sub_10000B8B8(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_10000B8B8(v7, v6);
          sub_10000B8B8(v9, v8);
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
          sub_1000C2B5C(v24, v25, v26, v33);
          sub_10000B90C(v9, v8);
          sub_10000B90C(v7, v6);
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
        sub_10000B8B8(v7, v6);
        sub_10000B8B8(v9, v8);
      }

      sub_1000C2B5C(v33, v9, v8, &v32);
      sub_10000B90C(v9, v8);
      sub_10000B90C(v7, v6);
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

uint64_t sub_10014EE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10003ADCC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10016EE08();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo();
    v22 = *(v15 - 8);
    sub_10000BA4C(v14 + *(v22 + 72) * v9, a3);
    sub_100150538(v9, v12, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_10014EFBC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_10003B028(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10014F68C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10016F09C();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10001F000(v4, v7);

  v9 = sub_10003B028(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10014F68C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

double sub_10014F108@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10003AF10(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10016F358();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_10001F358((*(v11 + 56) + 40 * v8), a2);
    sub_10014FB2C(v8, v11);
    *v3 = v11;
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

double sub_10014F1EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10003ADCC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10016F394();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_10001F358((*(v12 + 56) + 40 * v9), a3);
    sub_10014FE50(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10014F298(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10003ADCC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10016F53C();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_10015000C(v7, v10);
  *v3 = v10;
  return v13;
}

double sub_10014F348@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10003ADCC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10016F6B4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_10001F348((*(v12 + 56) + 32 * v9), a3);
    sub_1001501BC(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10014F42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_10003ADCC(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    sub_100150538(v15, v18, a4);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

double sub_10014F5C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10003ADCC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001725F4();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 96 * v9);
    v15 = v14[3];
    a3[2] = v14[2];
    a3[3] = v15;
    a3[4] = v14[4];
    *(a3 + 73) = *(v14 + 73);
    v16 = v14[1];
    *a3 = *v14;
    a3[1] = v16;
    sub_100150F58(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *(a3 + 73) = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_10014F68C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

Swift::Int sub_10014F818(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10014FB2C(int64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for DIPError.PropertyKey();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10015D610(&qword_1008346E8, &type metadata accessor for DIPError.PropertyKey);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_10014FE50(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10015000C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001501BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100150370(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100150538(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10015072C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPSignpost.Config();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_10015D610(&qword_100834878, &type metadata accessor for DIPSignpost.Config);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for DIPSignpost() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100150A70(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_100007224(&qword_1008335C0, &qword_1006DA7B0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100150D08(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_100150F58(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 96 * v3);
        v19 = (v18 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v19 + 96 || v3 != v6)
        {
          result = memmove(result, v19, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100151120(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100155918(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100151270(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_100224E74(a2);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v33 = ~v7;
    v9 = 0x4F495349564F5250;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8);
      v35 = v8;
      if (v10 > 4)
      {
        if (*(*(v4 + 48) + v8) <= 6u)
        {
          if (v10 == 5)
          {
            v15 = 0x544154535F544553;
            v16 = 0xE900000000000045;
          }

          else
          {
            v15 = 0xD000000000000014;
            v16 = 0x80000001006F89F0;
          }
        }

        else if (v10 == 7)
        {
          v15 = 0x5F4F545F444E4553;
          v16 = 0xED0000454D4F4942;
        }

        else if (v10 == 8)
        {
          v15 = 0xD000000000000011;
          v16 = 0x80000001006F8A20;
        }

        else
        {
          v15 = 0x49505F45524F5453;
          v16 = 0xEF4E454B4F545F49;
        }
      }

      else
      {
        v11 = 0xE90000000000004CLL;
        if (v10 == 3)
        {
          v12 = 0x4145485F464C4553;
        }

        else
        {
          v12 = 0x5F59414C50534944;
        }

        if (v10 != 3)
        {
          v11 = 0xEF4547415353454DLL;
        }

        if (v10 == 2)
        {
          v12 = 0x5F45545543455845;
          v11 = 0xEA00000000004657;
        }

        v13 = *(*(v4 + 48) + v8) ? v9 : 0x524F465F54494157;
        v14 = *(*(v4 + 48) + v8) ? 0xEF4D49414C435F4ELL : 0xEF4554414450555FLL;
        v15 = *(*(v4 + 48) + v8) <= 1u ? v13 : v12;
        v16 = *(*(v4 + 48) + v8) <= 1u ? v14 : v11;
      }

      v17 = 0x49505F45524F5453;
      if (a2 == 8)
      {
        v17 = 0xD000000000000011;
      }

      v18 = 0xEF4E454B4F545F49;
      if (a2 == 8)
      {
        v18 = 0x80000001006F8A20;
      }

      if (a2 == 7)
      {
        v17 = 0x5F4F545F444E4553;
        v18 = 0xED0000454D4F4942;
      }

      v19 = 0xD000000000000014;
      if (a2 == 5)
      {
        v19 = 0x544154535F544553;
      }

      v20 = 0x80000001006F89F0;
      if (a2 == 5)
      {
        v20 = 0xE900000000000045;
      }

      if (a2 <= 6u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = 0xE90000000000004CLL;
      if (a2 == 3)
      {
        v22 = 0x4145485F464C4553;
      }

      else
      {
        v22 = 0x5F59414C50534944;
      }

      if (a2 != 3)
      {
        v21 = 0xEF4547415353454DLL;
      }

      if (a2 == 2)
      {
        v22 = 0x5F45545543455845;
        v21 = 0xEA00000000004657;
      }

      if (a2)
      {
        v23 = v9;
      }

      else
      {
        v23 = 0x524F465F54494157;
      }

      if (a2)
      {
        v24 = 0xEF4D49414C435F4ELL;
      }

      else
      {
        v24 = 0xEF4554414450555FLL;
      }

      if (a2 <= 1u)
      {
        v22 = v23;
        v21 = v24;
      }

      v25 = a2 <= 4u ? v22 : v17;
      v26 = a2 <= 4u ? v21 : v18;
      if (v15 == v25 && v16 == v26)
      {
        break;
      }

      v27 = v9;
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_72;
      }

      v8 = (v35 + 1) & v33;
      v9 = v27;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

LABEL_72:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v35);
  }

  else
  {
LABEL_70:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v31;
    sub_100155A98(a2, v8, isUniquelyReferenced_nonNull_native);
    *v31 = v36;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001516C4(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_1002828E4(a2);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v30 = ~v7;
    while (1)
    {
      v9 = *(*(v4 + 48) + v8);
      if (v9 > 4)
      {
        if (*(*(v4 + 48) + v8) <= 6u)
        {
          if (v9 == 5)
          {
            v13 = 0xD000000000000010;
            v14 = 0x80000001006FA460;
          }

          else
          {
            v13 = 0xD000000000000012;
            v14 = 0x80000001006FA480;
          }
        }

        else if (v9 == 7)
        {
          v14 = 0xE700000000000000;
          v13 = 0x7972746E756F63;
        }

        else if (v9 == 8)
        {
          v13 = 0x6E69747465537861;
          v14 = 0xEA00000000007367;
        }

        else
        {
          v14 = 0xE400000000000000;
          v13 = 1701736302;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 1701011826;
        }

        else
        {
          v10 = 0x656E6F546E696B73;
        }

        if (v9 == 3)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE800000000000000;
        }

        if (v9 == 2)
        {
          v10 = 0x6574617473;
          v11 = 0xE500000000000000;
        }

        v12 = *(*(v4 + 48) + v8) ? 7890291 : 6645601;
        v13 = *(*(v4 + 48) + v8) <= 1u ? v12 : v10;
        v14 = *(*(v4 + 48) + v8) <= 1u ? 0xE300000000000000 : v11;
      }

      v15 = 0x6E69747465537861;
      if (a2 != 8)
      {
        v15 = 1701736302;
      }

      v16 = 0xEA00000000007367;
      if (a2 != 8)
      {
        v16 = 0xE400000000000000;
      }

      if (a2 == 7)
      {
        v15 = 0x7972746E756F63;
        v16 = 0xE700000000000000;
      }

      v17 = 0xD000000000000012;
      if (a2 == 5)
      {
        v17 = 0xD000000000000010;
      }

      v18 = 0x80000001006FA480;
      if (a2 == 5)
      {
        v18 = 0x80000001006FA460;
      }

      if (a2 <= 6u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a2 == 3)
      {
        v19 = 1701011826;
      }

      else
      {
        v19 = 0x656E6F546E696B73;
      }

      if (a2 == 3)
      {
        v20 = 0xE400000000000000;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      if (a2 == 2)
      {
        v19 = 0x6574617473;
        v20 = 0xE500000000000000;
      }

      if (a2)
      {
        v21 = 7890291;
      }

      else
      {
        v21 = 6645601;
      }

      if (a2 <= 1u)
      {
        v19 = v21;
        v20 = 0xE300000000000000;
      }

      v22 = a2 <= 4u ? v19 : v15;
      v23 = a2 <= 4u ? v20 : v16;
      if (v13 == v22 && v14 == v23)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_68;
      }

      v8 = (v8 + 1) & v30;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_68:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_66:
    v25 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    sub_100155F20(a2, v8, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100151A58(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  sub_1003D4B28(v58, a4);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v56 = ~v11;
    if (a2)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3 == 0xC000000000000000;
    }

    v14 = !v13;
    v55 = v14;
    v15 = a3 >> 62;
    v16 = __OFSUB__(HIDWORD(a2), a2);
    v53 = v16;
    v51 = a2;
    v52 = HIDWORD(a2) - a2;
    v54 = BYTE6(a3);
    v48 = a3;
    v49 = a4;
    while (1)
    {
      v17 = (*(v8 + 48) + 24 * v12);
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[2];
      v21 = v18 >> 62;
      if (v18 >> 62 == 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_36;
        }

        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_70;
        }

        if (v15 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v21)
      {
        LODWORD(v27) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_69;
        }

        v27 = v27;
        if (v15 <= 1)
        {
LABEL_33:
          v31 = v54;
          if (v15)
          {
            v31 = v52;
            if (v53)
            {
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v27 = BYTE6(v18);
        if (v15 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v15 != 2)
      {
        if (v27)
        {
          goto LABEL_13;
        }

LABEL_45:
        v25 = v19;
        v26 = v18;
LABEL_46:
        sub_10000B8B8(v25, v26);

        goto LABEL_47;
      }

      v33 = *(a2 + 16);
      v32 = *(a2 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_68;
      }

LABEL_39:
      if (v27 != v31)
      {
        goto LABEL_13;
      }

      if (v27 < 1)
      {
        goto LABEL_45;
      }

      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v36 = *(v19 + 16);
          v35 = *(v19 + 24);
          sub_10000B8B8(v19, v18);

          v37 = __DataStorage._bytes.getter();
          if (v37)
          {
            v38 = __DataStorage._offset.getter();
            if (__OFSUB__(v36, v38))
            {
              goto LABEL_73;
            }

            v37 += v36 - v38;
          }

          if (__OFSUB__(v35, v36))
          {
            goto LABEL_72;
          }

LABEL_62:
          __DataStorage._length.getter();
          a3 = v48;
          sub_1000C2B5C(v37, v51, v48, v58);
          a2 = v51;
          a4 = v49;
          if ((v58[0] & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_47;
        }

        *(v58 + 6) = 0;
        *&v58[0] = 0;
        sub_10000B8B8(v19, v18);
      }

      else
      {
        if (v21)
        {
          if (v19 >> 32 < v19)
          {
            goto LABEL_71;
          }

          sub_10000B8B8(v19, v18);

          v37 = __DataStorage._bytes.getter();
          if (v37)
          {
            v39 = __DataStorage._offset.getter();
            if (__OFSUB__(v19, v39))
            {
              goto LABEL_74;
            }

            v37 += v19 - v39;
          }

          goto LABEL_62;
        }

        *&v58[0] = v19;
        WORD4(v58[0]) = v18;
        BYTE10(v58[0]) = BYTE2(v18);
        BYTE11(v58[0]) = BYTE3(v18);
        BYTE12(v58[0]) = BYTE4(v18);
        BYTE13(v58[0]) = BYTE5(v18);
        sub_10000B8B8(v19, v18);
      }

      sub_1000C2B5C(v58, a2, a3, &v57);
      a2 = v51;
      if (!v57)
      {
LABEL_12:
        sub_10000B90C(v19, v18);

        goto LABEL_13;
      }

LABEL_47:
      v34 = sub_10014DCF8(v20, a4);
      sub_10000B90C(v19, v18);

      if (v34)
      {
        sub_10000B90C(a2, a3);

        v42 = (*(v8 + 48) + 24 * v12);
        v43 = *v42;
        v44 = v42[1];
        v45 = v42[2];
        *a1 = *v42;
        a1[1] = v44;
        a1[2] = v45;
        sub_10000B8B8(v43, v44);

        return 0;
      }

LABEL_13:
      v12 = (v12 + 1) & v56;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = v18 == 0xC000000000000000;
    }

    v24 = !v22 || v15 < 3;
    if (((v24 | v55) & 1) == 0)
    {
      v25 = 0;
      v26 = 0xC000000000000000;
      goto LABEL_46;
    }

LABEL_36:
    v27 = 0;
    if (v15 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_67:
  v40 = *v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v58[0] = *v47;
  sub_10000B8B8(a2, a3);

  sub_100156300(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
  *v47 = *&v58[0];
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  return 1;
}

uint64_t sub_100151FC4(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_100153508(v15, result + 1, a4, a5, a6);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_1001542DC(v29 + 1, a4, a5);
        }

        v30 = v16;
        sub_100155894(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v27 = a2;
      sub_100156868(v27, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v37;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100152228(_OWORD *a1, uint64_t *a2)
{
  v58 = a1;
  v4 = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v70 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v11 = *a2;
  v78 = *a2;
  v77 = *(a2 + 1);
  v12 = a2[4];
  v60 = a2[3];
  v59 = v12;
  v56 = v2;
  v13 = *v2;
  v14 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v57 = a2;
  sub_1003CF3B8(v76);
  v15 = Hasher._finalize()();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  v18 = v15 & ~v17;
  if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_24:
    v42 = v56;
    v43 = *v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *v42;
    sub_10000BBC4(&v78, v76, &qword_10083BCA8, &qword_1006DA1E8);
    sub_10004D7A0(&v77, v76);

    v45 = v57;
    sub_1001569EC(v57, v18, isUniquelyReferenced_nonNull_native);
    *v42 = v75;
    v46 = *(v45 + 1);
    v47 = v58;
    *v58 = *v45;
    v47[1] = v46;
    *(v47 + 4) = v45[4];
    return 1;
  }

  v19 = ~v17;
  v20 = *(v11 + 16);
  v72 = v11;
  v73 = v20;
  v69 = v5 + 16;
  v71 = v5;
  v21 = (v5 + 8);
  v63 = v13;
  v62 = v13 + 56;
  v61 = v19;
  while (1)
  {
    v23 = (*(v13 + 48) + 40 * v18);
    v74 = *v23;
    if (*(v74 + 16) != v73)
    {
      goto LABEL_4;
    }

    v24 = v23[2];
    v64 = v23[1];
    v25 = v23[3];
    v26 = v23[4];
    v67 = v24;
    v68 = v18;
    v66 = v25;
    v65 = v26;
    if (v73)
    {
      break;
    }

LABEL_15:
    v18 = v68;
    v41 = v64 == v77 && v67 == *(&v77 + 1);
    v13 = v63;
    if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10014EA44(v66, v60))
    {
      v22 = sub_10014DA5C(v65, v59);

      v16 = v62;
      v19 = v61;
      if (v22)
      {
        sub_10000BE18(&v78, &qword_10083BCA8, &qword_1006DA1E8);
        sub_10004D860(&v77);

        v48 = (*(v13 + 48) + 40 * v18);
        v49 = *v48;
        v50 = v48[1];
        v51 = v48[2];
        v52 = v48[3];
        v53 = v48[4];
        v54 = v58;
        *v58 = v49;
        v54[1] = v50;
        v54[2] = v51;
        v54[3] = v52;
        v54[4] = v53;

        return 0;
      }
    }

    else
    {

LABEL_23:
      v16 = v62;
      v19 = v61;
    }

LABEL_4:
    v18 = (v18 + 1) & v19;
    if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v27 = *(v71 + 80);
  v28 = v74;

  if (v28 == v72)
  {
    goto LABEL_15;
  }

  v30 = 0;
  v31 = (v27 + 32) & ~v27;
  v32 = v74 + v31;
  v33 = v72 + v31;
  while (v30 < *(v74 + 16))
  {
    v34 = *(v71 + 72) * v30;
    v35 = *(v71 + 16);
    result = v35(v10, v32 + v34, v4);
    if (v30 >= *(v72 + 16))
    {
      goto LABEL_27;
    }

    v36 = v10;
    v37 = v70;
    v35(v70, v33 + v34, v4);
    sub_10015D610(&qword_10083BCB0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *v21;
    v40 = v37;
    v10 = v36;
    (*v21)(v40, v4);
    result = (v39)(v36, v4);
    if ((v38 & 1) == 0)
    {

      v18 = v68;
      v13 = v63;
      goto LABEL_23;
    }

    if (v73 == ++v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100152808(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MobileDocumentElement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10015D610(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10015D610(&qword_10083BCD0, &type metadata accessor for MobileDocumentElement);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100156F44(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100152AE8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MobileDocumentType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10015D610(&qword_100834750, &type metadata accessor for MobileDocumentType);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10015D610(&qword_100834758, &type metadata accessor for MobileDocumentType);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10015720C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100152DC8(uint64_t a1, uint64_t a2)
{
  v52 = *v2;
  v4 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v12 = *(a2 + 64);
  v11 = *(a2 + 72);
  v56 = *(a2 + 80);
  v55 = *(a2 + 88);
  v66 = *(a2 + 8);
  v67 = *a2;
  String.hash(into:)();
  v63 = v5;
  Hasher._combine(_:)(v5);
  v61 = v7;
  v62 = v6;
  String.hash(into:)();
  v59 = v9;
  v60 = v8;
  String.hash(into:)();
  v57 = v12;
  v58 = v10;
  String.hash(into:)();
  v54 = v11;
  String.hash(into:)();
  v50 = a2;
  v13 = *(a2 + 96);
  Hasher._combine(_:)(v55 & 1);
  v53 = v13;
  Hasher._combine(_:)(v13);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v52 + 32);
  v16 = v14 & ~v15;
  if ((*(v52 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v64 = ~v15;
    v65 = *(v52 + 48);
    while (1)
    {
      v17 = v65 + 104 * v16;
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *(v17 + 40);
      v23 = *(v17 + 48);
      v22 = *(v17 + 56);
      v25 = *(v17 + 64);
      v24 = *(v17 + 72);
      v26 = *(v17 + 80);
      v69 = *(v17 + 88);
      v68 = *(v17 + 96);
      v27 = *v17 == v67 && *(v17 + 8) == v66;
      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v19 == v63)
      {
        v28 = v18 == v62 && v20 == v61;
        if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v29 = v21 == v60 && v23 == v59;
          if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v30 = v22 == v58 && v25 == v57;
            if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v31 = v24 == v54 && v26 == v56;
              if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v69 ^ v55) & 1) == 0 && v68 == v53)
              {
                break;
              }
            }
          }
        }
      }

      v16 = (v16 + 1) & v64;
      if (((*(v52 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    sub_10015D1D4(v50);
    v32 = *(v52 + 48) + 104 * v16;
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);
    v35 = *(v32 + 80);
    v72 = *(v32 + 96);
    v71[4] = v34;
    v71[5] = v35;
    v71[3] = v33;
    v36 = *v32;
    v37 = *(v32 + 16);
    v71[2] = *(v32 + 32);
    v71[0] = v36;
    v71[1] = v37;
    v38 = *(v32 + 16);
    *a1 = *v32;
    *(a1 + 16) = v38;
    v39 = *(v32 + 32);
    v40 = *(v32 + 48);
    v41 = *(v32 + 64);
    v42 = *(v32 + 80);
    *(a1 + 96) = *(v32 + 96);
    *(a1 + 64) = v41;
    *(a1 + 80) = v42;
    *(a1 + 32) = v39;
    *(a1 + 48) = v40;
    sub_10015D178(v71, v70);
    return 0;
  }

  else
  {
LABEL_33:
    v44 = *v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = *v49;
    sub_10015D178(v50, v71);
    sub_1001574D4(v50, v16, isUniquelyReferenced_nonNull_native);
    *v49 = v70[0];
    v46 = *(v50 + 80);
    *(a1 + 64) = *(v50 + 64);
    *(a1 + 80) = v46;
    *(a1 + 96) = *(v50 + 96);
    v47 = *(v50 + 16);
    *a1 = *v50;
    *(a1 + 16) = v47;
    v48 = *(v50 + 48);
    result = 1;
    *(a1 + 32) = *(v50 + 32);
    *(a1 + 48) = v48;
  }

  return result;
}

uint64_t sub_100153148(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:_:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100157828(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100153228(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CocoaError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10015D610(&qword_10083BC88, &type metadata accessor for CocoaError.Code);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10015D610(&qword_10083BC90, &type metadata accessor for CocoaError.Code);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100157948(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

Swift::Int sub_100153508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    sub_100007224(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_1001542DC(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

uint64_t sub_100153700(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BC70, &unk_1006E0140);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100153960(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BD30, &qword_1006DA248);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100153D4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BD20, &qword_1006DA238);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1001540C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BCE0, &qword_1006DA200);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v24 = v2;
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
    for (i = result + 56; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = (*(v3 + 48) + 24 * (v13 | (v7 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = *(v6 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      sub_1003D4B28(v26, v19);
      Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v22 = (*(v6 + 48) + 24 * result);
      *v22 = v17;
      v22[1] = v18;
      v22[2] = v19;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v23 = 1 << *(v3 + 32);
    if (v23 >= 64)
    {
      bzero((v3 + 56), ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v23;
    }

    v2 = v24;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1001542DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_100007224(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1001544FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BCB8, &qword_1006DA1F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v39 = v2;
    v40 = result;
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
    v41 = v3;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v42 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[3];
      v45 = v19[2];
      v46 = v19[1];
      v43 = v19[4];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      v44 = v20;
      v23 = *(v20 + 16);
      Hasher._combine(_:)(v23);
      if (v23)
      {
        v24 = *(type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet() - 8);
        v25 = v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v26 = *(v24 + 72);
        sub_10015D610(&qword_10083BCC0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet);
        do
        {
          dispatch thunk of Hashable.hash(into:)();
          v25 += v26;
          --v23;
        }

        while (v23);
      }

      String.hash(into:)();
      v27 = *(v21 + 16);
      Hasher._combine(_:)(v27);
      if (v27)
      {
        v28 = (v21 + 40);
        do
        {
          v29 = *(v28 - 1);
          v30 = *v28;
          sub_10000B8B8(v29, *v28);
          Data.hash(into:)();
          sub_10000B90C(v29, v30);
          v28 += 2;
          --v27;
        }

        while (v27);
      }

      sub_10015B46C(v47, v43);
      result = Hasher._finalize()();
      v6 = v40;
      v31 = -1 << *(v40 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v3 = v41;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v13 + 8 * v33);
          if (v37 != -1)
          {
            v14 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v3 = v41;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v40 + 48) + 40 * v14);
      *v15 = v44;
      v15[1] = v46;
      v15[2] = v45;
      v15[3] = v21;
      v15[4] = v43;
      ++*(v40 + 16);
      v11 = v42;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v38 = 1 << *(v3 + 32);
    if (v38 >= 64)
    {
      bzero(v8, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v38;
    }

    v2 = v39;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1001548CC(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for MobileDocumentElement();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100007224(&qword_10083BCD8, &qword_1006DA1F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10015D610(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100154C28(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for MobileDocumentType();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100007224(&qword_10083BCA0, &qword_1006DA1E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10015D610(&qword_100834750, &type metadata accessor for MobileDocumentType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

Swift::Int sub_100154F84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BD18, &qword_1006DA230);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v40 = (v3 + 56);
    v41 = v3;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v38 = v1;
    v39 = (v8 + 63) >> 6;
    v11 = v5 + 56;
    v42 = v5;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v43 = (v10 - 1) & v10;
LABEL_17:
      v18 = *(v3 + 48) + 104 * (v14 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v23 = *(v18 + 32);
      v22 = *(v18 + 40);
      v25 = *(v18 + 48);
      v24 = *(v18 + 56);
      v26 = *(v18 + 64);
      v44 = *(v18 + 80);
      v45 = *(v18 + 72);
      v46 = *(v18 + 88);
      *v49 = *(v18 + 89);
      *&v49[3] = *(v18 + 92);
      v47 = *(v18 + 96);
      v48 = *(v18 + 24);
      v27 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v21);
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v46 & 1);
      Hasher._combine(_:)(v47);
      result = Hasher._finalize()();
      v6 = v42;
      v28 = -1 << *(v42 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v11 + 8 * v30);
          if (v34 != -1)
          {
            v12 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v42 + 48) + 104 * v12;
      *v13 = v19;
      *(v13 + 8) = v20;
      *(v13 + 16) = v21;
      *(v13 + 24) = v48;
      *(v13 + 32) = v23;
      *(v13 + 40) = v22;
      *(v13 + 48) = v25;
      *(v13 + 56) = v24;
      *(v13 + 64) = v26;
      *(v13 + 72) = v45;
      *(v13 + 80) = v44;
      *(v13 + 88) = v46;
      *(v13 + 89) = *v49;
      *(v13 + 92) = *&v49[3];
      *(v13 + 96) = v47;
      ++*(v42 + 16);
      v3 = v41;
      v10 = v43;
    }

    v15 = v7;
    result = v40;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v39)
      {
        break;
      }

      v17 = v40[v7];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      v36 = v6;
      bzero(v40, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v36;
    }

    else
    {
      *v40 = -1 << v35;
    }

    v2 = v38;
    *(v3 + 16) = 0;
  }

  v37 = v6;

  *v2 = v37;
  return result;
}

uint64_t sub_100155314(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BD08, &qword_1006DA220);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100155538(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for CocoaError.Code();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100007224(&qword_10083BC98, &qword_1006DA1D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10015D610(&qword_10083BC88, &type metadata accessor for CocoaError.Code);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_100155894(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100155918(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100153700(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100157C10();
      goto LABEL_16;
    }

    sub_1001587F8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100155A98(Swift::Int result, unint64_t a2, char a3)
{
  v35 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_76;
  }

  if (a3)
  {
    sub_100153960(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_100157D6C(&qword_10083BD30, &qword_1006DA248);
      goto LABEL_76;
    }

    sub_100158A30(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  sub_100224E74(v35);
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v9;
    v10 = 0xEF4D49414C435F4ELL;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v11 == 5)
          {
            v16 = 0x544154535F544553;
            v17 = 0xE900000000000045;
          }

          else
          {
            v16 = 0xD000000000000014;
            v17 = 0x80000001006F89F0;
          }
        }

        else if (v11 == 7)
        {
          v16 = 0x5F4F545F444E4553;
          v17 = 0xED0000454D4F4942;
        }

        else if (v11 == 8)
        {
          v16 = 0xD000000000000011;
          v17 = 0x80000001006F8A20;
        }

        else
        {
          v16 = 0x49505F45524F5453;
          v17 = 0xEF4E454B4F545F49;
        }
      }

      else
      {
        v12 = 0xE90000000000004CLL;
        if (v11 == 3)
        {
          v13 = 0x4145485F464C4553;
        }

        else
        {
          v13 = 0x5F59414C50534944;
        }

        if (v11 != 3)
        {
          v12 = 0xEF4547415353454DLL;
        }

        if (v11 == 2)
        {
          v13 = 0x5F45545543455845;
          v12 = 0xEA00000000004657;
        }

        v14 = *(*(v7 + 48) + a2) ? 0x4F495349564F5250 : 0x524F465F54494157;
        v15 = *(*(v7 + 48) + a2) ? v10 : 0xEF4554414450555FLL;
        v16 = *(*(v7 + 48) + a2) <= 1u ? v14 : v13;
        v17 = *(*(v7 + 48) + a2) <= 1u ? v15 : v12;
      }

      v18 = 0x49505F45524F5453;
      if (v35 == 8)
      {
        v18 = 0xD000000000000011;
      }

      v19 = 0xEF4E454B4F545F49;
      if (v35 == 8)
      {
        v19 = 0x80000001006F8A20;
      }

      if (v35 == 7)
      {
        v18 = 0x5F4F545F444E4553;
        v19 = 0xED0000454D4F4942;
      }

      v20 = 0xD000000000000014;
      if (v35 == 5)
      {
        v20 = 0x544154535F544553;
      }

      v21 = 0x80000001006F89F0;
      if (v35 == 5)
      {
        v21 = 0xE900000000000045;
      }

      if (v35 <= 6u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = 0xE90000000000004CLL;
      if (v35 == 3)
      {
        v23 = 0x4145485F464C4553;
      }

      else
      {
        v23 = 0x5F59414C50534944;
      }

      if (v35 != 3)
      {
        v22 = 0xEF4547415353454DLL;
      }

      if (v35 == 2)
      {
        v23 = 0x5F45545543455845;
        v22 = 0xEA00000000004657;
      }

      if (v35)
      {
        v24 = 0x4F495349564F5250;
      }

      else
      {
        v24 = 0x524F465F54494157;
      }

      v25 = v10;
      if (!v35)
      {
        v10 = 0xEF4554414450555FLL;
      }

      if (v35 <= 1u)
      {
        v23 = v24;
        v22 = v10;
      }

      v26 = v35 <= 4u ? v23 : v18;
      v27 = v35 <= 4u ? v22 : v19;
      if (v16 == v26 && v17 == v27)
      {
        goto LABEL_79;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_80;
      }

      a2 = (a2 + 1) & v34;
      v10 = v25;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_76:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = v35;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_79:

LABEL_80:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100155F20(Swift::Int result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    sub_100153D4C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_100157D6C(&qword_10083BD20, &qword_1006DA238);
      goto LABEL_72;
    }

    sub_100158DEC(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  sub_1002828E4(v36);
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v9;
    v10 = 0x656E6F546E696B73;
    v11 = 0x6574617473;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v12 == 5)
          {
            v16 = 0xD000000000000010;
            v17 = 0x80000001006FA460;
          }

          else
          {
            v16 = 0xD000000000000012;
            v17 = 0x80000001006FA480;
          }
        }

        else if (v12 == 7)
        {
          v17 = 0xE700000000000000;
          v16 = 0x7972746E756F63;
        }

        else if (v12 == 8)
        {
          v16 = 0x6E69747465537861;
          v17 = 0xEA00000000007367;
        }

        else
        {
          v17 = 0xE400000000000000;
          v16 = 1701736302;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = 1701011826;
        }

        else
        {
          v13 = v10;
        }

        if (v12 == 3)
        {
          v14 = 0xE400000000000000;
        }

        else
        {
          v14 = 0xE800000000000000;
        }

        if (v12 == 2)
        {
          v13 = v11;
          v14 = 0xE500000000000000;
        }

        v15 = *(*(v7 + 48) + a2) ? 7890291 : 6645601;
        v16 = *(*(v7 + 48) + a2) <= 1u ? v15 : v13;
        v17 = *(*(v7 + 48) + a2) <= 1u ? 0xE300000000000000 : v14;
      }

      v18 = 0x6E69747465537861;
      if (v36 != 8)
      {
        v18 = 1701736302;
      }

      v19 = 0xEA00000000007367;
      if (v36 != 8)
      {
        v19 = 0xE400000000000000;
      }

      if (v36 == 7)
      {
        v18 = 0x7972746E756F63;
        v19 = 0xE700000000000000;
      }

      v20 = 0xD000000000000012;
      if (v36 == 5)
      {
        v20 = 0xD000000000000010;
        v21 = 0x80000001006FA460;
      }

      else
      {
        v21 = 0x80000001006FA480;
      }

      if (v36 <= 6u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = v10;
      if (v36 == 3)
      {
        v23 = 1701011826;
      }

      else
      {
        v23 = v10;
      }

      if (v36 == 3)
      {
        v24 = 0xE400000000000000;
      }

      else
      {
        v24 = 0xE800000000000000;
      }

      v25 = v11;
      if (v36 == 2)
      {
        v23 = v11;
        v24 = 0xE500000000000000;
      }

      if (v36)
      {
        v26 = 7890291;
      }

      else
      {
        v26 = 6645601;
      }

      if (v36 <= 1u)
      {
        v23 = v26;
        v24 = 0xE300000000000000;
      }

      v27 = v36 <= 4u ? v23 : v18;
      v28 = v36 <= 4u ? v24 : v19;
      if (v16 == v27 && v17 == v28)
      {
        goto LABEL_75;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_76;
      }

      a2 = (a2 + 1) & v35;
      v10 = v22;
      v11 = v25;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_72:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v36;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_75:

LABEL_76:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100156300(Swift::Int result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_73;
  }

  if (a5)
  {
    sub_1001540C8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_100157E9C();
      goto LABEL_73;
    }

    sub_100159138(v10 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  sub_1003D4B28(v57, a3);
  result = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v55 = ~v14;
    if (v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2 == 0xC000000000000000;
    }

    v16 = !v15;
    v54 = v16;
    v17 = a2 >> 62;
    v18 = __OFSUB__(HIDWORD(v9), v9);
    v50 = v18;
    v48 = a3;
    v49 = HIDWORD(v9) - v9;
    v53 = BYTE6(a2);
    v47 = a2;
    v51 = v9;
    while (1)
    {
      v22 = (*(v12 + 48) + 24 * a4);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v24 >> 62;
      if (v24 >> 62 == 3)
      {
        break;
      }

      if (v26 > 1)
      {
        if (v26 != 2)
        {
          goto LABEL_45;
        }

        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        v33 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (v33)
        {
          goto LABEL_79;
        }

        if (v17 <= 1)
        {
          goto LABEL_42;
        }
      }

      else if (v26)
      {
        LODWORD(v30) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_78;
        }

        v30 = v30;
        if (v17 <= 1)
        {
LABEL_42:
          v34 = v53;
          if (v17)
          {
            v34 = v49;
            if (v50)
            {
              goto LABEL_76;
            }
          }

          goto LABEL_48;
        }
      }

      else
      {
        v30 = BYTE6(v24);
        if (v17 <= 1)
        {
          goto LABEL_42;
        }
      }

LABEL_46:
      if (v17 != 2)
      {
        if (v30)
        {
          goto LABEL_22;
        }

LABEL_54:
        v19 = v23;
        v20 = v24;
LABEL_20:
        sub_10000B8B8(v19, v20);

        goto LABEL_21;
      }

      v36 = *(v9 + 16);
      v35 = *(v9 + 24);
      v33 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v33)
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_48:
      if (v30 != v34)
      {
        goto LABEL_22;
      }

      if (v30 < 1)
      {
        goto LABEL_54;
      }

      if (v26 > 1)
      {
        if (v26 != 2)
        {
          *(v57 + 6) = 0;
          *&v57[0] = 0;
          sub_10000B8B8(v23, v24);

LABEL_71:
          sub_1000C2B5C(v57, v9, a2, &v56);
          v9 = v51;
          if (!v56)
          {
LABEL_72:
            sub_10000B90C(v23, v24);

            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v37 = *(v23 + 16);
        v38 = *(v23 + 24);
        sub_10000B8B8(v23, v24);

        v39 = __DataStorage._bytes.getter();
        if (v39)
        {
          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v37, v40))
          {
            goto LABEL_82;
          }

          v39 += v37 - v40;
        }

        if (__OFSUB__(v38, v37))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (!v26)
        {
          *&v57[0] = v23;
          WORD4(v57[0]) = v24;
          BYTE10(v57[0]) = BYTE2(v24);
          BYTE11(v57[0]) = BYTE3(v24);
          BYTE12(v57[0]) = BYTE4(v24);
          BYTE13(v57[0]) = BYTE5(v24);
          sub_10000B8B8(v23, v24);

          goto LABEL_71;
        }

        if (v23 >> 32 < v23)
        {
          goto LABEL_80;
        }

        sub_10000B8B8(v23, v24);

        v39 = __DataStorage._bytes.getter();
        if (v39)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v23, v41))
          {
            goto LABEL_83;
          }

          v39 += v23 - v41;
        }
      }

      __DataStorage._length.getter();
      v42 = v39;
      a2 = v47;
      sub_1000C2B5C(v42, v51, v47, v57);
      v9 = v51;
      a3 = v48;
      if ((v57[0] & 1) == 0)
      {
        goto LABEL_72;
      }

LABEL_21:
      v21 = sub_10014DCF8(v25, a3);
      sub_10000B90C(v23, v24);

      if (v21)
      {
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_22:
      a4 = (a4 + 1) & v55;
      if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    if (v23)
    {
      v27 = 0;
    }

    else
    {
      v27 = v24 == 0xC000000000000000;
    }

    v29 = !v27 || v17 < 3;
    if (((v29 | v54) & 1) == 0)
    {
      v19 = 0;
      v20 = 0xC000000000000000;
      goto LABEL_20;
    }

LABEL_45:
    v30 = 0;
    if (v17 <= 1)
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

LABEL_73:
  v43 = *v52;
  *(*v52 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v44 = (*(v43 + 48) + 24 * a4);
  *v44 = v9;
  v44[1] = a2;
  v44[2] = a3;
  v45 = *(v43 + 16);
  v33 = __OFADD__(v45, 1);
  v46 = v45 + 1;
  if (v33)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  *(v43 + 16) = v46;
  return result;
}

void sub_100156868(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1001542DC(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10015800C(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_100159320(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}